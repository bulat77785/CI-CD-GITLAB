C_FLags=-Wall -Werror -Wextra -std=c11

all: build

build: s21_grep

s21_grep: s21_grep.c
	gcc $(C_FLags) s21_grep.c -o s21_grep

test: s21_grep
	bash test_grep.sh

check: s21_grep.c
	python3 ../../materials/linters/cpplint.py --extensions=c *.c
	cppcheck --enable=all --suppress=missingIncludeSystem  *.c *.h

#clean:
	rm -rf s21_grep
leaks:
	make test
	leaks -atExit -- ./s21_cat:
#	make clean
