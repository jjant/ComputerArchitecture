#include <ctype.h>
#define DELTA 'a' - 'A'

char * upcase(char *);

char * upcase(char * str){
	char * new_str = str;

	while (str != '\0'){
		if (isalpha(*str))
			*str -=  DELTA;
		str++;
	}

	return new_str;
}