#include <stdio.h>
#include <stdlib.h>
#include "linklist.h"


int main()
{
    setbuf(stdout, NULL);
    linklist l = lopen(); // initialise lsit

    ladd(l, LFIRST, "xaaa");
    ladd(l, LLAST, "abc");
    ladd(l, 2, "cba");
    ladd(l, 3, "jbA");
    ladd(l, LLAST, "ba");
    ladd(l, LLAST, "acba");
    lprint(l);
    lclose(l);
}
