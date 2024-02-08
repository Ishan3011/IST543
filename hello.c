#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LEN 50

void greetings(char * name) {

  char buf[MAX_LEN];
  strcpy(buf, name);

  printf("Hello %s, welcome to IST 543\n", buf);

}

int main(int argc, char * argv[]) {

  if (argc >= 2) greetings(argv[1]);

  return 0;
}
