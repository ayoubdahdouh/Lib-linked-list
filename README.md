# Library: linked list

Linked list is a linear data structure. Unlike arrays, linked list elements are not stored at a contiguous location; the elements are linked using pointers.

## A brief description of what this library does and who it's for

```bash
    LINKLIST
┏━━━━━━━━━━━━━━━━━┓
┃    COUNTER      ┃
┃ ╭> FIRST NODE   ┃
┃ │  LAST NODE <──┼────────────────────────────────────╮
┗━┼━━━━━━━━━━━━━━━┛                                    │
  │                                                    │
  │     NODE                NODE                       │    NODE
┌─┴───────┬──────┐    ┌─────────┬──────┐             ┌─┴───────┬──────┐
│   DATA  │ NEXT ├──> │   DATA  │ NEXT ├──> ... ──>  │   DATA  │ NEXT ├──> NULL
└─────────┴──────┘    └─────────┴──────┘             └─────────┴──────┘ 
```
#### Structures of the list
As their names indicate, the "node" structure is for the nodes of the list and the "linklist" structure is for holding the variables of the list (number of nodes, first node of the list and last node of the list).
```c
typedef struct node
{
    void *data;
    struct node *next;
} * node, *iterator;

typedef struct linklist
{
    int count;
    node first;
    node last;
} * linklist;

```
#### First and last item in the list
These two macros are used to indicate the beginning and end of the list.
```c
#define LLAST -1
#define LFIRST -2
```
#### Create a new list and delete it
`lopen` is used to create and return a new empty list.
And `lclose` to destroy the list.
```c
linklist lopen();
void lclose(linklist l);
```
#### Add and remove data from the list
`ladd` is used to get the data at position "at" in the list .
And `ldel` to remove the data at position "at", please note that the function does not free the memory pointed to by "data", it only frees the memory of the node.
```c
void ladd(linklist l, long int at, void *data);
void ldel(linklist l, long int at);
```
#### Get and modify data
`ladd` is used to get data at position "at" in the list.
And `lset` to modify the data at position "at" with "data", please note that the function does not free the memory pointed to by "data".

```c
void *lget(linklist l, long int at);
void *lset(linklist l, long int at, void *data);
```
#### Check if list is empty and clear it
`lempty` checks if the list is empty.
And `lreset` used to clear the list (i.e remove all nodes from the list), please note that the function does not free the memory pointed to by "data", it only frees the memory of the node. 
```c
int lempty(linklist l);
void lreset(linklist l);
```
#### Sort the list
Sort the list using the QuickSort algorithm.
```c
void lsort(linklist l, long int from, long int to, int selector(void *, void *));
```
#### print the list
Simple function to display a list/
```c
void lprint(linklist l);
```

#### Iterator
Iterator used to parcourir the list, is a pointer to node at the position "at".
`lat` create an iterator return it.
`linc` increment the iterator "i" to the next node.
```c
iterator lat(linklist l, int at);
void linc(iterator *i);
```

## Running Tests

To run tests, change the file "test.c" and run the following command

```bash
  make test
```

  
## License

the source code is distributed under the [MIT  licence](https://choosealicense.com/licenses/mit/), feel free to use, modify and share it.

  
## Authors

- [@ayoubdahdouh](https://github.com/ayoubdahdouh)

  
## Feedback

If you have any feedback, please reach out to us at [https://ayoub-dahdouh-etu.pedaweb.univ-amu.fr/contact.php](https://ayoub-dahdouh-etu.pedaweb.univ-amu.fr/contact.php)

  