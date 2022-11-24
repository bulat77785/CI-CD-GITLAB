// Copyright 2022 by navigato
#include <stdio.h>
#include <getopt.h>

struct flags {
    int b;
    int e;
    int n;
    int s;
    int t;
    int v;
};

void cat_flags(int argc, char** argv, struct flags* flag);
void open_file(int argc, char** argv, struct flags flag);

int main(int argc, char **argv) {
    struct flags flag = {0};

    if (argc > 1) {
        cat_flags(argc, argv, &flag);
        open_file(argc, argv, flag);
    }

    return 0;
}

void cat_flags(int argc, char** argv, struct flags* flag) {
    const struct option long_options[] = {
        {"number-nonblank", 0, &flag->b, 1},
        {"number", 0, &flag->n, 1},
        {"squeeze-blank", 0, &flag->s, 1},
        {NULL, 0, NULL, 0}
    };

    int option = 0;

    while ((option = getopt_long(argc, argv, "benstvET", long_options, NULL)) != -1) {
        switch (option) {
            case 'b':
                flag->b = 1;
                break;
            case 'e':
                flag->v = 1;
                flag->e = 1;
                break;
            case 'E':
                flag->e = 1;
                break;
            case 'n':
                flag->n = 1;
                break;
            case 's':
                flag->s = 1;
                break;
            case 't':
                flag->t = 1;
                flag->v = 1;
                break;
            case 'T':
                flag->t = 1;
                break;
            case 'v':
                flag->v = 1;
                break;
            default:
                break;
        }
    }
    if (flag->b) {
        flag->n = 0;
    }
}

void open_file(int argc, char** argv, struct flags flag) {
    FILE* fp = NULL;
    int count = 0;
    int new_string = 1;
    char check_ch = 0;
    char ch = 0;

    for (int i = 1; i < argc; ++i) {
        if (argv[i][0] != '-') {
            if ((fp = fopen(argv[i], "r")) != NULL) {
                fseek(fp, 0, SEEK_SET);
                while ((ch = fgetc(fp)) != EOF) {
                    if (flag.s) {
                        if (check_ch == '\n' && ch == '\n') {
                            ch = fgetc(fp);
                            if (ch != '\n') {
                                if (flag.n) printf("%6d\t", ++count);
                                flag.e ? printf("$\n") : printf("\n");
                            } else {
                                continue;
                            }
                        }
                        check_ch = ch;
                    }
                    if (flag.n) {
                        if (new_string) {
                            printf("%6d\t", ++count);
                            new_string = 0;
                        }
                        if (ch == '\n') {
                            new_string = 1;
                        }
                    }
                    if (flag.b) {
                        if (new_string && ch != '\n') {
                            printf("%6d\t", ++count);
                            new_string = 0;
                        }
                        if (ch == '\n') new_string = 1;
                    }
                    if (flag.e && ch == '\n') {
                        printf("$");
                    }
                    if (flag.t && ch == '\t') {
                        printf("^I");
                        continue;
                    }
                    if (flag.v) {
                        if (ch <= 31 && ch != 10 && ch != 9) {
                            printf("^");
                            ch += 64;
                        }
                        if (ch == 127) {
                            printf("^");
                            ch -= 64;
                        }
                    }
                    printf("%c", ch);
                }
                fclose(fp);
            } else {
                printf("s21_cat: %s: No such file or directory\n", argv[i]);
            }
        }
    }
}
