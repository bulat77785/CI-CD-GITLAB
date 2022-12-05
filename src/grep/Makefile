C_FLags=-Wall -Werror -Wextra -std=c11

all: build test

build: s21_grep

s21_grep: s21_grep.c
	gcc $(C_FLags) s21_grep.c -o s21_grep

test: s21_grep
	bash test_grep.sh

check: s21_grep.c
	clang-format -n ../grep/*.c
#	clang-format -i ../grep/*.c
