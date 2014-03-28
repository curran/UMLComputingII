# Reading a Dictionary

Your assignment: write a program that reads the file [dictionary.txt](~dlipman/public/dictionary.txt) and stores it in a data structure.

The data structure will be a vector of vectors of MyString objects. The outer vector is a listing of word lists by word length (e.g. the first vector contains words of length 1, and the second vector contains words of length 2, ... , the 23rd vector contains words of length 23, which is the maximum word length.

For each word in dictionary.txt, your program should make a new MyString object, determine the length of the word, and add that MyString object to the appropriate (as determined by the word length) Vector of MyStrings.

1. Each word is stored in a MyString object.

2. Each of the 23 lists of words is a Vector of the MyString objects from #1.

3. The list of the 23 lists is a Vector of those Vectors from #2.

It looks something like this ASCII art

    Vector
    of
    Vectors
    +---+
    |   | (vector of words of length 1)
    +---+
    |   | (vector of words of length 2)
    +---+
    |   | (etc.)
    +---+
    |   |         Vector of MyStrings
    +---+        +----+----+----+----+
    | --+------> |    |      |  |    |
    +---+        +----+----+-+--+----+     MyString
    |   |                    |             +----+
    +---+                    +-----------> |    |
    |   |                                  +----+
    +---+

This will be due in a few weeks.

Instructions originally by Derrell Lipman 3/26/2014, modified by Curran Kelleher 3/28/2014.
