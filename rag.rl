%%{
	machine cli;

	integer := [\+\-]? [0-9]+ ${printf("<%c>",fc);} ;
	
}%%

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>

%% write data;

int main() {

char test[] = "this is a number 123 test -01";
char *p=test, *pe=test+sizeof(test)-1;
static uint8_t cs=cli_start;

%% write exec;

}

void ICBCOM08(char *str) {
%%{
	machine icbcom08;
	
	STS = '\x02';
	STE = '\x03';
	icbcom08 := STS STE;
	
	write data;
	write init;
	write exec;
	
}%%
}
