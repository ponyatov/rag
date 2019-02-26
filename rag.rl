%% machine cli;

%% write data;

%% integer := [\+\-]? @{printf("\nsign:%c\n",p[0]);} [0-9]+;

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main() {

char test[] = "this is a number 123 test -01";
char *p=test, *pe=test+sizeof(test)-1, cs=cli_start;

// %% write init

%% write exec;

}
