#include <stdio.h>
int main() {
  int dd, dr, qt, rr; scanf("%d", &dd); scanf("%d", &dr);
  qt = dd / dr;
  rr = dd % dr;
  printf("quotient: %d\nremainder: %d", qt, rr);
  return 0;
}
