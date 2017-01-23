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

/*
 * Build subfunction to AND four variables based on input value
 * and merge with BDD
 */
DdNode*  bddAndFour(DdManager *gbm, DdNode *arr[], int val0, int val1, int val2, int val3) 
{
    DdNode *res;
    DdNode *var, *tmp;
    int i,j;
    res = Cudd_ReadOne(gbm);
    Cudd_Ref(res);
	
    int val[4];
    val[0] = val0;
    val[1] = val1;
    val[2] = val2;
    val[3] = val3;

    for(i = 3; i>=0;i--) 
    {
	if (val[i]) {
	    tmp = Cudd_bddAnd(gbm,arr[i],res);
	} else {
	    //var = Cudd_Not(arr[i]);
	    tmp = Cudd_bddAnd(gbm,Cudd_Not(arr[i]),res);
	}
	Cudd_Ref(tmp);
	Cudd_RecursiveDeref(gbm,res);
	res = tmp;
    }
    return res;
}


int main (int argc, char *argv[])
{
    DdManager *gbm;         /* Global BDD manager. */
    char filename[30];      /* File name for output file */
    DdNode *bdd,*tmp,*var;
    DdNode *x[3];
    DdNode *f0, *f1, *f2, *f3, *f4, *f5,*f6, *f7, *f8, *f9, *f10, *f11, *f12, *f13, *f14;


    DdNode *C, *I;
    DdNode *E, *N;
    DdNode *src;

    char * inames[4] = { "s1", "s0","t1","t0" };     /* Names for input variables */
    char * onames[1] = { "bdd" };          /* Name for output variable */

    /* Initialize the bdd manager with default options */
    gbm = Cudd_Init(0,0,CUDD_UNIQUE_SLOTS,CUDD_CACHE_SLOTS,0);
    
    /*Create a new BDD variable*/
    /* each new variable is put at the new of the current order */
    for (int i=0;i<4;i++) {
        x[i] = Cudd_bddNewVar(gbm);
    }
    //f = Cudd_bddNewVar(gbm);
    
    //f1 = Cudd_bddNewVar(gbm);
    //f2 = Cudd_bddNewVar(gbm);
    /* ordering = x < y */
  


    f0 = bddAndFour(gbm,x,0,0,0,1);
    f1 = bddAndFour(gbm,x,1,0,0,1); 
    f2 = bddAndFour(gbm,x,1,0,0,1);
    f3 = bddAndFour(gbm,x,1,1,0,1);
    f10 = bddAndFour(gbm,x,0,0,1,0);
    f11 = bddAndFour(gbm,x,0,1,1,0);
    f12 = bddAndFour(gbm,x,1,0,0,1);
    f13 = bddAndFour(gbm,x,1,0,1,1);

    
    /*
    tmp = Cudd_bddOr(gbm, f1, f2);
    f = tmp;
    Cudd_Ref(tmp);
    Cudd_RecursiveDeref(gbm, f);*/
    tmp = Cudd_bddOr(gbm, f0,f1);
    bdd = tmp;
    //bdd = Cudd_ReadOne(gbm);
    Cudd_Ref(bdd);
    Cudd_RecursiveDeref(gbm,bdd);

    tmp = Cudd_bddOr(gbm, bdd,f2);
    bdd = tmp;
    //bdd = Cudd_ReadOne(gbm);
    Cudd_Ref(bdd);
    Cudd_RecursiveDeref(gbm,bdd);

    tmp = Cudd_bddOr(gbm, bdd,f3);
    bdd = tmp;
    //bdd = Cudd_ReadOne(gbm);
    Cudd_Ref(bdd);
    Cudd_RecursiveDeref(gbm,bdd);

    //bdd = Cudd_ReadOne(gbm);
    Cudd_Ref(bdd);
    Cudd_RecursiveDeref(gbm,bdd);
    tmp = Cudd_bddOr(gbm, bdd,f10);
    bdd = tmp;
    //bdd = Cudd_ReadOne(gbm);
    Cudd_Ref(bdd);
    Cudd_RecursiveDeref(gbm,bdd);
    tmp = Cudd_bddOr(gbm, bdd,f11);
    bdd = tmp;
    //bdd = Cudd_ReadOne(gbm);
    Cudd_Ref(bdd);
    Cudd_RecursiveDeref(gbm,bdd);
    tmp = Cudd_bddOr(gbm, bdd,f12);
    bdd = tmp;
    //bdd = Cudd_ReadOne(gbm);
    Cudd_Ref(bdd);
    Cudd_RecursiveDeref(gbm,bdd);

    tmp = Cudd_bddOr(gbm, bdd,f13);
    bdd = tmp;
    //bdd = Cudd_ReadOne(gbm);
    Cudd_Ref(bdd);
    Cudd_RecursiveDeref(gbm,bdd);


/*
    for(int k = 0;k<=2;k++) {
	tmp = Cudd_bddOr(gbm,f[k], bdd);
	Cudd_Ref(tmp);
	Cudd_RecursiveDeref(gbm,bdd);
	bdd = tmp;

    }*/

    src = Cudd_bddAnd(gbm, x[0], x[1]);
    C = Cudd_bddAnd(gbm, Cudd_Not(x[0]), Cudd_Not(x[1]));
    Cudd_Ref(C);
    Cudd_RecursiveDeref(gbm,C);
    
    //tmp = Cudd_bddAnd(gbm, C, bdd);
   // I = Cudd_Cofactor(gbm,tmp,src);//Cudd_bddAndAbstract(gbm, C, E, src);
   I = Cudd_bddAndAbstract(gbm, C, bdd,src);

  
    //I = Cudd_bddAnd(gbm, C,bdd);
    Cudd_Ref(I);
    Cudd_RecursiveDeref(gbm, I);

    
    //I = Cudd_BddToAdd(gbm, I);                          /*Convert BDD to ADD for display purpose*/
    print_dd (gbm, I, 4,4);                    /*Print the DD to standard output*/
    //sprintf(filename, "./dot/bdd3_sra_res.dot");                /*Write .dot filename to a string*/
    //write_dd(gbm, I, (char **)inames, (char **)onames, filename);   /*Write the resulting cascade DD to a file*/
    printf("Number of Nodes = %d\n",Cudd_DagSize(I));
    Cudd_RecursiveDeref(gbm,I);


    bdd = Cudd_BddToAdd(gbm, bdd);                          /*Convert BDD to ADD for display purpose*/
    print_dd (gbm, bdd, 4,4);                    /*Print the DD to standard output*/
    sprintf(filename, "./dot/bdd3_sra.dot");                /*Write .dot filename to a string*/
    write_dd(gbm, bdd, (char **)inames, (char **)onames, filename);   /*Write the resulting cascade DD to a file*/
    printf("Number of Nodes = %d\n",Cudd_DagSize(bdd));

    Cudd_RecursiveDeref(gbm,bdd);        /* Explicit Dereference */
    Cudd_Quit(gbm);
    return 0;
}
