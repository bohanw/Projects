
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
DdNode*  bddAndSix(DdManager *gbm, DdNode *arr[], int val0, int val1, int val2, int val3,int val4, int val5) 
{
    DdNode *res;
    DdNode *var, *tmp;
    int i,j;
    res = Cudd_ReadOne(gbm);
    Cudd_Ref(res);
	
    int val[5];
    val[0] = val0;
    val[1] = val1;
    val[2] = val2;
    val[3] = val3;
    val[4] = val4;
    val[5] =val5;
    for(i = 5; i>=0;i--) 
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

/*
 * Perform reachability analysis on the given C(source vertices) and edge
 * relation, find all reachable states
 */
DdNode* performReachabilibty(DdManager *gbm, DdNode *edgeRelation, DdNode * srcVertex,  DdNode *vars[])
{
    DdNode * R, *N, *proj, *C, *I;
    DdNode *s[3], *t[3];
		
	DdNode *tmp;
	//Assign s and t from variable arrays
	//x[6] -> [s2,s1,s0,t2,t1,t0]]
	for(int i = 0; i< 3;i++)
	{
		s[i] = vars[i];
		t[i] = vars[i+3];

	}

	proj = Cudd_ReadOne(gbm);
	Cudd_Ref(proj);
        R = Cudd_ReadOne(gbm);
	Cudd_Ref(R);
	
	//Construct projection function
	for (int i = 2;i>=0;i--)
	{
		tmp = Cudd_bddAnd(gbm, proj, s[i]);
		Cudd_Ref(tmp);
		Cudd_RecursiveDeref(gbm, proj);
		proj = tmp;

	}
    C = srcVertex;
    Cudd_Ref(C);
    Cudd_RecursiveDeref(gbm,C); 

    N = C;
    R = N;

    tmp = Cudd_bddSwapVariables(gbm, R,s,t,3);
    R = tmp;
    Cudd_Ref(tmp);
    Cudd_RecursiveDeref(gbm,R);

	while(1) {
	   I = Cudd_bddAndAbstract(gbm, C, edgeRelation,proj);

	    //update N and swap vars
	   tmp =  Cudd_bddSwapVariables(gbm, N, s,t,3);
	   N = tmp;
	   Cudd_Ref(tmp);
	   Cudd_RecursiveDeref(gbm,N);

	   //Update unreached node
	   N = Cudd_bddAnd(gbm, I, Cudd_Not(R));
	   Cudd_Ref(N);

	   //Update reachable set
	   tmp = Cudd_bddOr(gbm, R,I);
	   R = tmp;
	   Cudd_Ref(tmp);
	   Cudd_RecursiveDeref(gbm,R);
	
	 // Check if there are nodes not reached yet
	 // break the loop if unreached set is empty
	 if(Cudd_CountPathsToNonZero(N) == 0.0) {

		printf("EXIT LOOP\n");
		break;
	 } 
	 else {
		 tmp = Cudd_bddSwapVariables(gbm, N, t,s,3);
		 N = tmp;
		 Cudd_Ref(tmp);
		 Cudd_RecursiveDeref(gbm,N);
		 C = N;
	
	 }
	}

	return R;

}		



int checkProp(DdManager *gbm, DdNode * reachable, DdNode* prop)
{
    DdNode * tmp = Cudd_bddAnd(gbm, reachable, Cudd_Not(prop));
    Cudd_Ref(tmp);
	if(Cudd_CountPathsToNonZero(tmp) == 0.0){
		printf("prop violated\n");
		return 0;
	} else {
		printf("prop not violated\n");
		return 0;
	}
	
}
int main (int argc, char *argv[])
{
    DdManager *gbm;         /* Global BDD manager. */
    char filename[30];      /* File name for output file */
    DdNode *bdd,*tmp,*var;
    DdNode *x[6];

    DdNode *s[3], *t[3];
    DdNode *f[14];

    //Source set
    DdNode *C1, *R1,*C2, *R2, *p;
    
    char * inames[6] = { "s2", "s1","s0","t2","t1","t0" };     /* Names for input variables */
    char * onames[1] = { "bdd" };          /* Name for output variable */

    /* Initialize the bdd manager with default options */
    gbm = Cudd_Init(0,0,CUDD_UNIQUE_SLOTS,CUDD_CACHE_SLOTS,0);
    
    /*Create a new BDD variable*/
    /* each new variable is put at the new of the current order */
    for (int i=0;i<=5;i++) {
        x[i] = Cudd_bddNewVar(gbm);
    }
   

    /*
    * Construct edge relationship
    */

    f[0] = bddAndSix(gbm,x,0,0,0,0,0,1);
    f[1] = bddAndSix(gbm,x,0,0,0,0,1,1); 
    f[2] = bddAndSix(gbm,x,0,0,1,0,0,0);
    f[3] = bddAndSix(gbm,x,0,0,1,0,0,1);
    f[4] = bddAndSix(gbm,x,0,0,1,0,1,0);
    f[5] = bddAndSix(gbm,x,0,0,1,0,1,1);
    f[6] = bddAndSix(gbm,x,0,1,0,0,1,1);
    f[7] = bddAndSix(gbm,x,0,1,0,1,1,1);
    f[8] = bddAndSix(gbm,x,1,1,0,0,1,1);
    f[9] = bddAndSix(gbm,x,1,1,0,1,1,1);
    f[10] = bddAndSix(gbm,x,1,0,0,0,1,1);
    f[11] = bddAndSix(gbm,x,1,0,1,0,1,1);
    f[12] = bddAndSix(gbm,x,1,0,1,1,1,0);
    f[13] = bddAndSix(gbm,x,1,1,1,1,0,1);
    
   tmp = Cudd_bddOr(gbm, f[0], f[1]);
   bdd = tmp;
   Cudd_Ref(tmp);
   Cudd_RecursiveDeref(gbm, bdd);

   for(int k = 2; k < 14; k++){
	 tmp = Cudd_bddOr(gbm, bdd, f[k]);
	 bdd = tmp;
	 Cudd_Ref(tmp);
	 Cudd_RecursiveDeref(gbm, bdd);

   }

 
  //plot C1(s)
  /*
   * BDD for vertex set C1
   */
   C1 = Cudd_Not(x[0]);
   Cudd_Ref(C1);
   Cudd_RecursiveDeref(gbm, C1);

   /*
    * BDD for vertex set C2
    */
   C2 = Cudd_bddOr(gbm, x[0],x[1]);
   Cudd_Ref(C2);

   tmp = Cudd_bddAnd(gbm, x[2], C2);
   C2 = tmp;
   Cudd_Ref(tmp);
   Cudd_RecursiveDeref(gbm, C2);

   /* 
    * property test for Quesiton 3
    */ 
   tmp = Cudd_bddAnd(gbm, x[0], Cudd_Not(x[1]));
   p = tmp;
   Cudd_Ref(tmp);
   Cudd_RecursiveDeref(gbm, p);

   tmp  = Cudd_bddAnd(gbm, p,Cudd_Not(x[2]));
   p = tmp;
   Cudd_Ref(tmp);
   Cudd_RecursiveDeref(gbm, p);

  /*
   * Run reachability test
   */
   R1 = performReachabilibty(gbm, bdd, C1,x);
   R2 =  performReachabilibty(gbm, bdd, C2, x);


  
   int n = checkProp(gbm, R1, Cudd_Not(p));
   int m = checkProp(gbm, R2, Cudd_Not(p));


   /*
    * Print reachable set to terminal 
    * and to PDF for display purpose
    *
    */

    R1 = Cudd_BddToAdd(gbm, R1);

    print_dd(gbm, R1, 6,4);
    printf("Number of Nodes = %d\n",Cudd_DagSize(R1));
    Cudd_RecursiveDeref(gbm,R1);

    print_dd(gbm, R2, 6,4);
    printf("Number of Nodes = %d\n",Cudd_DagSize(R2));
    Cudd_RecursiveDeref(gbm,R2);


    bdd = Cudd_BddToAdd(gbm, bdd);                          /*Convert BDD to ADD for display purpose*/
    print_dd (gbm, bdd, 6,4);                    /*Print the DD to standard output*/
    sprintf(filename, "./dot/hw1_2b_2.dot");                /*Write .dot filename to a string*/
    write_dd(gbm, bdd, (char **)inames, (char **)onames, filename);   /*Write the resulting cascade DD to a file*/
    printf("Number of Nodes = %d\n",Cudd_DagSize(bdd));
    Cudd_RecursiveDeref(gbm,bdd);        /* Explicit Dereference */

    Cudd_Quit(gbm);
    return 0;
}
