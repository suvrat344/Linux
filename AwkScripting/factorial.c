factorial.c
#include <stdio.h>
int main() {
  int n; int i; long fact = 1; scanf("%d", &n);
  for (i = 1; i <= n; ++i) { fact *= i; } printf("%ld", fact);
  for (i = 1; i <= n; ++i) { fact *= i; } printf("%ld", fact);
  return 0;
}
