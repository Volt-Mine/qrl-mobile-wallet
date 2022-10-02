#include <stdio.h>
#include <math.h>
#include <stdint.h>
#include "../wots.h"
#include "../randombytes.h"
#include "../params.h"

static void hexdump(unsigned char *a, size_t len)
{
  size_t i;
  for (i = 0; i < len; i++)
    printf("%02x", a[i]);
}

int main()
{
  unsigned char seed[XMSS_N];
  unsigned char pub_seed[XMSS_N];

  int sig_len = XMSS_WOTS_LEN*XMSS_N;

  unsigned char pk1[sig_len];
  unsigned char pk2[sig_len];
  unsigned char sig[sig_len];
  uint32_t addr[8] = {1,2,3,4};

  unsigned char msg[XMSS_N];
  int i;

  randombytes(seed, XMSS_N);
  randombytes(pub_seed, XMSS_N);
  randombytes(msg, XMSS_N);
  //randombytes(addr, 16);

  wots_pkgen(pk1, seed, pub_seed, addr);
  wots_sign(sig, msg, seed, pub_seed, addr);
  wots_pk_from_sig(pk2, sig, msg, pub_seed, addr);

  for (i = 0; i < sig_len; i++)
    if (pk1[i] != pk2[i]) {
      printf("pk1 != pk2 %d\n",i);
      return -1;
    }
  printf("worked great!\npk1: ");
  hexdump(pk1, sig_len);
  printf("\npk2: ");
  hexdump(pk2, sig_len);
  printf("\nsig: ");
  hexdump(sig, sig_len);
  printf("\n");

  return 0;
}
