#!bin/bash

COUNTER_SUCCESS=0
COUNTER_FAIL=0
DIFF_RES=""

echo "Test 1"
    ./s21_cat -b  test.txt > s21_cat_res
    cat -b  test.txt > cat_res
    DIFF_RES="$(diff -s s21_cat_res cat_res)"
        if [ "$DIFF_RES" == "Files s21_cat_res and cat_res are identical" ]
            then
              (( COUNTER_SUCCESS++ ))
            else
              (( COUNTER_FAIL++ ))
        fi

echo "Test 2"
    ./s21_cat -e  test.txt > s21_cat_res
    cat -e  test.txt > cat_res
    DIFF_RES="$(diff -s s21_cat_res cat_res)"
        if [ "$DIFF_RES" == "Files s21_cat_res and cat_res are identical" ]
            then
              (( COUNTER_SUCCESS++ ))
            else
              (( COUNTER_FAIL++ ))
        fi

echo "Test 3"
    ./s21_cat -n  test.txt > s21_cat_res
    cat -n  test.txt > cat_res
    DIFF_RES="$(diff -s s21_cat_res cat_res)"
        if [ "$DIFF_RES" == "Files s21_cat_res and cat_res are identical" ]
            then
              (( COUNTER_SUCCESS++ ))
            else
              (( COUNTER_FAIL++ ))
        fi

echo "Test 4"
    ./s21_cat -s  test.txt > s21_cat_res
    cat -s  test.txt > cat_res
    DIFF_RES="$(diff -s s21_cat_res cat_res)"
        if [ "$DIFF_RES" == "Files s21_cat_res and cat_res are identical" ]
            then
              (( COUNTER_SUCCESS++ ))
            else
              (( COUNTER_FAIL++ ))
        fi

echo "Test 5"
    ./s21_cat -t  test.txt > s21_cat_res
    cat -t  test.txt > cat_res
    DIFF_RES="$(diff -s s21_cat_res cat_res)"
        if [ "$DIFF_RES" == "Files s21_cat_res and cat_res are identical" ]
            then
              (( COUNTER_SUCCESS++ ))
            else
              (( COUNTER_FAIL++ ))
        fi

echo "Test 6"
    ./s21_cat -be  test.txt > s21_cat_res
    cat -be  test.txt > cat_res
    DIFF_RES="$(diff -s s21_cat_res cat_res)"
        if [ "$DIFF_RES" == "Files s21_cat_res and cat_res are identical" ]
            then
              (( COUNTER_SUCCESS++ ))
            else
              (( COUNTER_FAIL++ ))
        fi

echo "Test 7"
    ./s21_cat -bn  test.txt > s21_cat_res
    cat -bn  test.txt > cat_res
    DIFF_RES="$(diff -s s21_cat_res cat_res)"
        if [ "$DIFF_RES" == "Files s21_cat_res and cat_res are identical" ]
            then
              (( COUNTER_SUCCESS++ ))
            else
              (( COUNTER_FAIL++ ))
        fi

echo "Test 8"
    ./s21_cat -bs  test.txt > s21_cat_res
    cat -bs  test.txt > cat_res
    DIFF_RES="$(diff -s s21_cat_res cat_res)"
        if [ "$DIFF_RES" == "Files s21_cat_res and cat_res are identical" ]
            then
              (( COUNTER_SUCCESS++ ))
            else
              (( COUNTER_FAIL++ ))
        fi

echo "Test 9"
    ./s21_cat -bt  test.txt > s21_cat_res
    cat -bt  test.txt > cat_res
    DIFF_RES="$(diff -s s21_cat_res cat_res)"
        if [ "$DIFF_RES" == "Files s21_cat_res and cat_res are identical" ]
            then
              (( COUNTER_SUCCESS++ ))
            else
              (( COUNTER_FAIL++ ))
        fi

echo "Test 10"
    ./s21_cat -en  test.txt > s21_cat_res
    cat -en  test.txt > cat_res
    DIFF_RES="$(diff -s s21_cat_res cat_res)"
        if [ "$DIFF_RES" == "Files s21_cat_res and cat_res are identical" ]
            then
              (( COUNTER_SUCCESS++ ))
            else
              (( COUNTER_FAIL++ ))
        fi

echo "Test 11"
    ./s21_cat -es  test.txt > s21_cat_res
    cat -es  test.txt > cat_res
    DIFF_RES="$(diff -s s21_cat_res cat_res)"
        if [ "$DIFF_RES" == "Files s21_cat_res and cat_res are identical" ]
            then
              (( COUNTER_SUCCESS++ ))
            else
              (( COUNTER_FAIL++ ))
        fi

echo "Test 12"
    ./s21_cat -et  test.txt > s21_cat_res
    cat -et  test.txt > cat_res
    DIFF_RES="$(diff -s s21_cat_res cat_res)"
        if [ "$DIFF_RES" == "Files s21_cat_res and cat_res are identical" ]
            then
              (( COUNTER_SUCCESS++ ))
            else
              (( COUNTER_FAIL++ ))
        fi

echo "Test 13"
    ./s21_cat -ns  test.txt > s21_cat_res
    cat -ns  test.txt > cat_res
    DIFF_RES="$(diff -s s21_cat_res cat_res)"
        if [ "$DIFF_RES" == "Files s21_cat_res and cat_res are identical" ]
            then
              (( COUNTER_SUCCESS++ ))
            else
              (( COUNTER_FAIL++ ))
        fi

echo "Test 14"
    ./s21_cat -nt  test.txt > s21_cat_res
    cat -nt  test.txt > cat_res
    DIFF_RES="$(diff -s s21_cat_res cat_res)"
        if [ "$DIFF_RES" == "Files s21_cat_res and cat_res are identical" ]
            then
              (( COUNTER_SUCCESS++ ))
            else
              (( COUNTER_FAIL++ ))
        fi

echo "Test 15"
    ./s21_cat -st  test.txt > s21_cat_res
    cat -st  test.txt > cat_res
    DIFF_RES="$(diff -s s21_cat_res cat_res)"
        if [ "$DIFF_RES" == "Files s21_cat_res and cat_res are identical" ]
            then
              (( COUNTER_SUCCESS++ ))
            else
              (( COUNTER_FAIL++ ))
        fi

echo "Test 16"
    ./s21_cat -b  test.txt > s21_cat_res
    cat -b  test.txt > cat_res
    DIFF_RES="$(diff -s s21_cat_res cat_res)"
        if [ "$DIFF_RES" == "Files s21_cat_res and cat_res are identical" ]
            then
              (( COUNTER_SUCCESS++ ))
            else
              (( COUNTER_FAIL++ ))
        fi

rm -rf cat_res s21_cat_res

echo "SUCCESS: $COUNTER_SUCCESS"
echo "FAIL: $COUNTER_FAIL"
