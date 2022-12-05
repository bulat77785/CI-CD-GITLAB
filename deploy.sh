#!/bin/bash

scp src/cat/s21_cat src/grep/s21_grep ws1_navigato@10.10.0.1:~/

ssh ws1_navigato@10.10.0.1 sudo mv s21_cat s21_grep /usr/local/bin
