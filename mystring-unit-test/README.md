This directory contains resources for our MyString module unit testing assignment.

Below are the instructions, courtesy of Derrell Lipman:

Hello, all! Please read the following carefully, as it describes your deliverables and method of submission for this week.

This week in lab, in all sections except possibly Wenjing's which got snowed out last week, we'll be testing everyone's mystring.c file against everyone's unit tests (tests.c). I am attaching here, for your perusal, the entire testing framework that we'll be using. You should be able to extract this zip file, copy your own mystring.c and tests.c into the directory it creates, run "make", and then run "valgrind tester". You should see SUCCESS for all of the tests, and valgrind should show you, under "HEAP SUMMARY", that there are 0 bytes in 0 blocks remaining in use at exit; it should say, "All heap blocks are freed". 

Your goal is to make your mystring.c code bullet-proof! No student (or any of us TAs) should be able to write a valid test, that causes your functions to fail other than in the documented ways, or that causes a memory leak in your functions. (The tests must be valid, though. A test that calls mystring_init_default and never calls mystring_destroy on that handle is not a valid test!) We may even have prizes for students whose valid tests can find the most bugs in other students code, or something of the sort. :-)

I am providing the complete framework for your tests, including a small tests.c file which you can expand on. As described above, you must then just copy your expanded tests.c on top of the provided one, copy in your mystring.c, run make, and then run the tester (with valgrind). 

The script called runtests.sh is the script that will run everyone's tests against everyone's mystring.c implementation. It is included to entice you to learn about shell scripting. That script is just a series of Linux shell commands, with some nested loops, to do all of the testing.

For my lab's students, once you have your mystring and tests completed, you will submit them to me as described below. Curran's and Wenjing's students will probably use a similar method, but should await notification from them as to the details.

  1. Log in to the CS cluster (cs.uml.edu) and run your tests on your mystring.c, using the Makefile, mystring.h, and tester.c that I provide in the attachment to this message, to ensure that your code compiles and works properly on that machine. Don't forget to test it under valgrind, too.
  2. Change into the directory containing your mystring.c and tests.c
  3. Issue the following command to submit those two files to me: `submit dlipman mystring-ut mystring.c tests.c`

(Wenjing's students, you haven't had your discussion about unit tests yet, since your lab got snowed out last week, so I'm not sure yet what's going to be done to get you caught up. Wenjing will let you know.)

Cheers,

Derrell
