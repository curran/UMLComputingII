UMLComputingII
==============

Resources for the course Computing II at UMass Lowell (Spring 2014).

## For Students

Your first real assignment, due 2/20 by midnight, submitted to `curran_kelleher@student.uml.edu`, is a complete implementation of your MyString module, using the API definition found in `mystring.h`. You can use the `IntArray` module and unit tests provided by Derrell Lipman as an example of how to organize your code.

 * Submit a ZIP file containing:
   * mystring.h - unmodified
   * mystring.c
   * demo.c or main.c - tests some of the function
   * tests.c - based on the texts.c from IntArray, modified to test the MyString functions

## C Reference

To compile and run your code, say `main.c`, use the following commands:

    gcc main.c
    ./a.out

To compile and link multiple files, like you need to do in your assignment, use a command like this:

    gcc main.c mystring.c

These standard compiler flags are recommended:

    gcc main.c -Wall -std=c99
