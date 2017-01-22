
#include <sys/types.h>
#include <sys/time.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <math.h>
#include <stdlib.h>
#include "../cudd/cudd.h"

/**
 * Print a dd summary
 * pr = 0 : prints nothing
 * pr = 1 : prints counts of nodes and minterms
 * pr = 2 : prints counts + disjoint sum of product
 * pr = 3 : prints counts + list of nodes
 * pr > 3 : prints counts + disjoint sum of product + list of nodes
 * @param the dd node
 */
void print_dd (DdManager *gbm, DdNode *dd, int n, int pr )
{
    printf("DdManager nodes: %ld | ", Cudd_ReadNodeCount(gbm));             /*Reports the number of live nodes in BDDs and ADDs*/
    printf("DdManager vars: %d | ", Cudd_ReadSize(gbm) );                   /*Returns the number of BDD variables in existence*/
    printf("DdManager reorderings: %d | ", Cudd_ReadReorderings(gbm) );     /*Returns the number of times reordering has occurred*/
    printf("DdManager memory: %ld \n", Cudd_ReadMemoryInUse(gbm) );         /*Returns the memory in use by the manager measured in bytes*/
    Cudd_PrintDebug(gbm, dd, n, pr);                                        /*Prints to the standard output a DD and its statistics: number of nodes, number of leaves, number of minterms*/
}


/**
 * Writes a dot file representing the argument DDs
 * @param the node object
 */
void write_dd (DdManager *gbm, DdNode *dd, char** inames, char** onames, char* filename)
{
    FILE *outfile;                               // output file pointer for .dot file
    outfile = fopen(filename,"w");
    DdNode **ddnodearray = (DdNode**)malloc(sizeof(DdNode*)); // initialize the function array
    ddnodearray[0] = dd;
    Cudd_DumpDot(gbm, 1, ddnodearray, (const char * const*)inames, (const char * const*)onames, outfile); // dump the function to .dot file
    free(ddnodearray);
    fclose (outfile);                       // close the file 
}




int main (int argc, char *argv[])
{
    DdManager *gbm;         /* Global BDD manager. */
    char filename[30];      /* File name for output file */
    DdNode *f,*tmp,*var, *f1, *f2;
    DdNode *x[3];
    char * inames[3] = { "x0", "x1","x2" };     /* Names for input variables */
    char * onames[1] = { "f" };          /* Name for output variable */
    /* Initialize the bdd manager with default options */
    gbm = Cudd_Init(0,0,CUDD_UNIQUE_SLOTS,CUDD_CACHE_SLOTS,0);
    
    /*Create a new BDD variable*/
    /* each new variable is put at the new of the current order */
   // for (int i=0;i<3;i++) {
    //    x[i] = Cudd_bddNewVar(gbm);
    //}
    
    //x[0] = Cudd_bddNewVar(gbm);
    //x[2] = Cudd_bddNewVar(gbm);
    //x[1] = Cudd_bddNewVar(gbm);

    var = Cudd_bddIthVar(gbm,0);
    x[0] = var;
    var = Cudd_bddIthVar(gbm,1);
    x[2] = var;
    var = Cudd_bddIthVar(gbm,2);
    x[1] = var;


    f = Cudd_ReadOne(gbm); 
    Cudd_Ref(f);
    /* f1 = x0x1*/
    
    tmp = Cudd_bddAnd(gbm, x[0],Cudd_Not(x[1]));
    f1 = tmp;
    Cudd_Ref(f1);
    Cudd_RecursiveDeref(gbm,tmp);
 
    
    tmp = Cudd_bddAnd(gbm, f1, x[2]);
     f1 = tmp;
    Cudd_Ref(f1);
    Cudd_RecursiveDeref(gbm,tmp);


    tmp = Cudd_bddAnd(gbm, Cudd_Not(x[0]), Cudd_Not(x[1]));
    f2 = tmp;
    Cudd_Ref(f2);
    Cudd_RecursiveDeref(gbm,tmp);

    tmp = Cudd_bddAnd(gbm, f2, Cudd_Not(x[2]));
    f2 = tmp;
    Cudd_Ref(f2);
    Cudd_RecursiveDeref(gbm,tmp);


    tmp = Cudd_bddOr(gbm, f1, f2);
    f = tmp;
    Cudd_Ref(f);
    Cudd_RecursiveDeref(gbm, tmp);

    /*
     *Attempt to define perm array and reorder using ShuffleHeap

     */
/*
    int perm[3];
    
    perm[0] = 0;
    perm[1] = 2;
    perm[2] = 1;
   
    
    
    &(perm) = 0;
    &(perm+1) = 2;
    &(perm+2) = 1;
    */
    int isShuffle;
   // isShuffle = Cudd_ShuffleHeap(gbm, perm);
    //Cudd_Ref(f);
    
    f = Cudd_BddToAdd(gbm, f);                          /*Convert BDD to ADD for display purpose*/
    print_dd (gbm, f, 3,8);                    /*Print the DD to standard output*/
    sprintf(filename, "./dot/bdd5.dot");                /*Write .dot filename to a string*/
    write_dd(gbm, f, (char **)inames, (char **)onames, filename);   /*Write the resulting cascade DD to a file*/
    printf("Number of Nodes = %d\n",Cudd_DagSize(f));

    //Cudd_RecursiveDeref(gbm,f);        /* Explicit Dereference */
    Cudd_Quit(gbm);
    return 0;
}
