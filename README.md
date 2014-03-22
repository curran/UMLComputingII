UMLComputingII
==============

Resources for the course Computing II at UMass Lowell (Spring 2014).

## For Students

# MyString Module Submission Due 3/28:

 * Complete MyString implementation based on [mystring.h](https://github.com/curran/UMLComputingII/blob/master/mystring.h)
 * Running unit tests based on [Derrell's framework](https://github.com/curran/UMLComputingII/tree/master/mystring-unit-test)

You should submit the following files:

 * mystring.c - your implementation of the mystring module.
 * tests.c - your implementation of unit tests for the mystring module.

Submit from your CS account using this command:

`submit ckellehe mystring mystring.c tests.c`

Grading criteria:

 * -20 points for each day late (better to just submit whatever you have on 3/28)
 * 15 points - the code compiles and the tests run (show me in person during 3/28 lab)
 * 5 points for each of the following (3 points for implementation, 2 points for unit test)
   * mystring_init_default
   * mystring_init_c_string
   * mystring_destroy
   * mystring_size
   * mystring_capacity
   * mystring_output
   * mystring_concatenate_c_string
   * mystring_concatenate_mystring
   * mystring_truncate
   * mystring_push
   * mystring_pop
   * mystring_peek
   * mystring_get
   * mystring_put
   * mystring_init_substring
   * mystring_to_c_string
   * mystring_input

## C Reference

To compile and run your code, say `main.c`, use the following commands:

```
gcc main.c
./a.out
```

To compile and link multiple files, like you need to do in your assignment, use a command like this:

```
gcc main.c mystring.c
```

These standard compiler flags are recommended:

```
gcc main.c -Wall -std=c99
```
