C_FLags=-Wall -Werror -Wextra -std=c11

all: build test

build: s21_cat

s21_cat: s21_cat.c
	gcc $(C_FLags) s21_cat.c -o s21_cat

test: s21_cat
	bash test_cat.sh

check: s21_cat.c
	clang-format -n ../cat/*.c
#	clang-format -i ../cat/*.c
