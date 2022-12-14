#include <stdio.h>
#include <string.h>
#include <stdint.h>

#include "../xmss.h"
#include "../params.h"
#include "../randombytes.h"

#define MLEN 3491
#define SIGNATURES 5

unsigned char mi[MLEN];
unsigned long long smlen;
unsigned long long mlen;

int main()
{
  // TODO test more different OIDs
  uint32_t oid = 0x01000001;
  xmss_parse_oid(oid); // Parse it to make sure the sizes are set

  int r;
  unsigned long long i, j;
  unsigned long errors = 0;

  unsigned char sk[XMSS_OID_LEN + XMSS_PRIVATEKEY_BYTES];
  unsigned char pk[XMSS_OID_LEN + XMSS_PUBLICKEY_BYTES];

  unsigned char mo[MLEN+XMSS_BYTES];
  unsigned char sm[MLEN+XMSS_BYTES];

  printf("keypair\n");
  xmss_keypair(pk, sk, oid);
  // check pub_seed in SK
  for (i = 0; i < XMSS_N; i++) {
    if (pk[XMSS_OID_LEN+XMSS_N+i] != sk[XMSS_OID_LEN+XMSS_INDEX_LEN+2*XMSS_N+i]) printf("pk.pub_seed != sk.pub_seed %llu",i);
    if (pk[XMSS_OID_LEN+i] != sk[XMSS_OID_LEN+XMSS_INDEX_LEN+3*XMSS_N+i]) printf("pk.root != sk.root %llu",i);
  }

  // check index
  unsigned long idx = ((unsigned long)sk[4] << 24) | ((unsigned long)sk[5] << 16) | ((unsigned long)sk[6] << 8) | sk[7];
  if (idx) printf("\nidx != 0 %lu\n",idx);

  for (i = 0; i < SIGNATURES; i++) {
    randombytes(mi, MLEN);

    printf("sign\n");
    xmss_sign(sk, sm, &smlen, mi, MLEN);
    idx = ((unsigned long)sm[0] << 24) | ((unsigned long)sm[1] << 16) | ((unsigned long)sm[2] << 8) | sm[3];
    printf("\nidx = %lu\n",idx);

    for (j = 0; j < smlen; j++) {
      printf("%02X", sm[j]);
    }
    printf("\n");

    r = memcmp(mi, sm+XMSS_BYTES,MLEN);
    printf("%d\n", r);

    /* Test valid signature */
    printf("verify\n");
    r = xmss_sign_open(mo, &mlen, sm, smlen, pk);
    printf("%d\n", r);
    if (r != 0) errors++;
    r = memcmp(mi,mo,MLEN);
    printf("%d\n", r);
    printf("%llu\n", MLEN-mlen);

    /* Test with modified message */
    sm[XMSS_BYTES+10] ^= 1;
    r = xmss_sign_open(mo, &mlen, sm, smlen, pk);
    printf("%d\n", r+1);
    if (r == 0) errors++;
    r = memcmp(mi,mo,MLEN);
    printf("%d\n", (r!=0) - 1);
    printf("%llu\n", mlen+1);

    /* Test with modified signature */
    /* Modified index */
    sm[XMSS_BYTES+10] ^= 1;
    sm[2] ^= 1;
    r = xmss_sign_open(mo, &mlen, sm, smlen, pk);
    printf("%d\n", r+1);
    if (r == 0) errors++;
    r = memcmp(mi,mo,MLEN);
    printf("%d\n", (r!=0) - 1);
    printf("%llu\n", mlen+1);

    /* Modified R */
    sm[2] ^= 1;
    sm[5] ^= 1;
    r = xmss_sign_open(mo, &mlen, sm, smlen, pk);
    printf("%d\n", r+1);
    if (r == 0) errors++;
    r = memcmp(mi,mo,MLEN);
    printf("%d\n", (r!=0) - 1);
    printf("%llu\n", mlen+1);

    /* Modified OTS sig */
    sm[5] ^= 1;
    sm[240] ^= 1;
    r = xmss_sign_open(mo, &mlen, sm, smlen, pk);
    printf("%d\n", r+1);
    if (r == 0) errors++;
    r = memcmp(mi,mo,MLEN);
    printf("%d\n", (r!=0) - 1);
    printf("%llu\n", mlen+1);

    /* Modified AUTH */
    sm[240] ^= 1;
    sm[XMSS_BYTES - 10] ^= 1;
    r = xmss_sign_open(mo, &mlen, sm, smlen, pk);
    printf("%d\n", r+1);
    if (r == 0) errors++;
    r = memcmp(mi,mo,MLEN);
    printf("%d\n", (r!=0) - 1);
    printf("%llu\n", mlen+1);
  }

  printf("#errors = %lu\n", errors);
  return 0;
}


