#!/usr/bin/expect -f

spawn scp src/cat/s21_cat src/grep/s21_grep ws1_navigato@10.10.0.1:~/
expect {
        "*password*" {send -- "ws1\r"}
}

spawn ssh ws1_navigato@10.10.0.1 sudo mv s21_cat s21_grep /usr/local/bin
expect {
        "*password*" {send -- "ws1\r"}
}
expect EOF
