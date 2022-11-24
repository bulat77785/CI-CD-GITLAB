C_FLags=-Wall -Werror -Wextra -std=c11

all: build

build: s21_cat

s21_cat: s21_cat.c
	gcc $(C_FLags) s21_cat.c -o s21_cat

test: s21_cat
	bash test_cat.sh

check: s21_cat.c
	python3 ../../materials/linters/cpplint.py --extensions=c *.c
	cppcheck --enable=all --suppress=missingIncludeSystem  *.c *.h

#clean:
	rm -rf s21_cat
leaks:
	make test
	leaks -atExit -- ./s21_cat:
#	make clean
