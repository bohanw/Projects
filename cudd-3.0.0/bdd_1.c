#include <stdio.h>

/* Files included from CUDD package */
#include "util.h"
#include "cudd.h"


int main(int argv, char ** argc) {

  DdManager *manager;
  DdNode * f;
  DdNode * x[4];
  DdNode * y[4];
  int i;
  DdNode * tmp1;
  DdNode * tmp2;
  FILE * fp;
  char * names[8] = { "x1", "x2", "x3", "x4", "y1", "y2", "y3", "y4" };
  int order[8];    

  /* Initialize the bdd manager with default options */
  manager = Cudd_Init(0,0,CUDD_UNIQUE_SLOTS,CUDD_CACHE_SLOTS,0);

  
  /* each new variable is put at the new of the current order */
  for(i=0;i<4;i++) {
    x[i] = Cudd_bddNewVar(manager);
  }

  for(i=0;i<4;i++) {
    y[i] = Cudd_bddNewVar(manager);
  }


  /* ordering = x1 < x2 < x3 < x4 < y1 < y2 < y3 < y4 */

  f = Cudd_ReadOne(manager);
  Cudd_Ref(f);                      /* Explicit Reference */

  for(i=0;i<4;i++) {
    
    tmp1 = Cudd_bddXnor(manager,x[i],y[i]);        /* x[i] <=> y[i] */
    Cudd_Ref(tmp1);

    tmp2 = Cudd_bddAnd(manager,f,tmp1);
    Cudd_Ref(tmp2);

    Cudd_RecursiveDeref(manager,f);                 /* Explicit Dereference */
    Cudd_RecursiveDeref(manager,tmp1);

    f = tmp2;
  }

  /* dumping bdd in dot format */
  fp = fopen("bdddump","w");
  Cudd_DumpDot(manager,1,&f,(char **)names,NULL,fp);
  fclose(fp);
  
  printf("Number of Nodes = %d\n",Cudd_DagSize(f));

  
  /* xi and yi are put together in order */
  for(i=0;i<4;i= i++) {
    order[2* i] = i;
    order[2* i + 1] = i + 4;
  }
  
  /* shuffle to new order */
  Cudd_ShuffleHeap(manager,order);
  
  
  /* dumping bdd in dot format */
  fp = fopen("bdddump1","w");
  Cudd_DumpDot(manager,1,&f,(char **)names,NULL,fp);
  fclose(fp);
  
  
  printf("Number of Nodes After Shuffling = %d\n",Cudd_DagSize(f));

  Cudd_RecursiveDeref(manager,f);
  Cudd_Quit(manager);    /* Release Manager */

}


/* 
   CUDD package location: http://vlsi.colorado.edu/~fabio/CUDD/
   Extensive Documentation
   
   Dot Package for viewing bdds: http://www.graphviz.org/

*/


/* Compiling this program

Filename: bdd.c
Cudd Location: ../cudd-2.4.0

Command:
gcc bdd.c -o bdd -I ../cudd-2.4.0/include/ -L ../cudd-2.4.0/cudd/ -L
../cudd-2.4.0/util/ -L ../cudd-2.4.0/mtr/ -L ../cudd-2.4.0/st/ -L
../cudd-2.4.0/epd/ -lcudd -lutil -lepd -lmtr -lst -lm

*/

