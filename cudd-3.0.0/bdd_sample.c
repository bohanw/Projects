#include <sys/types.h>
#include <sys/time.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <math.h>
#include <stdlib.h>
#include "cudd/cudd.h"

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

// This program creates a single BDD variable
int main (int argc, char *argv[])
{
    DdManager *gbm; 		/* Global BDD manager. */
    char filename[30];		/* File name for output file */
    DdNode * f;
    DdNode * x;
    DdNode * y;
    char * inames[2] = { "x", "y" };     /* Names for input variables */
    char * onames[1] = { "f" };          /* Name for output variable */

    /* Initialize the bdd manager with default options */
    gbm = Cudd_Init(0,0,CUDD_UNIQUE_SLOTS,CUDD_CACHE_SLOTS,0);
    
    /*Create a new BDD variable*/
    /* each new variable is put at the new of the current order */
    x = Cudd_bddNewVar(gbm);
    y = Cudd_bddNewVar(gbm);
    /* ordering = x < y */

    f = Cudd_bddAnd(gbm,x,Cudd_Not(y));           /* f = x && y */
    Cudd_Ref(f);                        /* Increment reference count of node */
    f = Cudd_BddToAdd(gbm, f);                             /*Convert BDD to ADD for display purpose*/
    print_dd (gbm, f, 2,4);			           /*Print the DD to standard output*/
    sprintf(filename, "bdd_example.dot");                /*Write .dot filename to a string*/
    write_dd(gbm, f, (char **)inames, (char **)onames, filename);   /*Write the resulting cascade DD to a file*/
    printf("Number of Nodes = %d\n",Cudd_DagSize(f));

    Cudd_RecursiveDeref(gbm,f);        /* Explicit Dereference */
    Cudd_Quit(gbm);
    return 0;
}