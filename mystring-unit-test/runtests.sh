#!/bin/bash

# Extract every student's files into an own directory
for f in ~/submit/submissions/mystring-unit-tests/*.tar; do
    # Calculate this student's name by stripping .tar from the end, and then
    # running the "basename" program which removes the path from the file
    # name.
    student="$(basename ${f%%.tar})"

    # Retrieve this student's files
    rm -rf tmp/* && tar -C tmp -xf ${f}

    # Ensure mystring.c exists
    if [ ! -e tmp/mystring.c ]; then
        echo "${student}: mystring.c is missing"
        continue
    fi

    # Ensure tests.c exists
    if [ ! -e tmp/tests.c ]; then
        echo "${student}: tests.c is missing"
        continue
    fi

    # Create a directory for this student's files
    mkdir -p "students/${student}"

    # Copy those two files (only!) to this student's files directory
    cp "tmp/mystring.c" "tmp/tests.c" "students/${student}/"
done

# Test each student's mystring.c against each student's tests.c
for studentMyString in students/*; do
    echo ""
    echo ""
    echo "============================================================"
    echo "MyString from ${student}"
    echo "============================================================"

    # Copy ${studentMyString}'s mystring.c file
    cp  "${studentMyString}/mystring.c" .

    for studentTest in students/*; do
        echo ""
        echo ""
        echo -n "*** Testing mystring from $(basename ${studentMyString})"
        echo " against tests from $(basename ${studentTest}) ***"
        echo ""

        # Copy ${studentTest}'s tests.c file
        cp "${studentTest}/tests.c" .

        # Build the tester using ${studentTest}'s tests.c and
        # ${studentMyString}'s mystring.c file, and our own tester.c, and
        # mystring.h files. (The student isn't allowed to alter those.)
        if (! make clean tester > /dev/null 2>&1); then
            echo "FAIL: compile errors"
            continue
        fi

        # Run the tester
        ./tester

        # Run the tester under valgrind, looking for memory leaks
        valgrind ./tester |& grep -q "All heap blocks were freed" || \
            echo "FAIL: memory leak"
    done
done
