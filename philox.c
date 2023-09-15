#include <Random123-1.09/include/Random123/philox.h>

// Documentation : https://www.thesalmons.org/john/random123/releases/1.00/docs/index.html
// No indication about how to correctly generate real numbers [0,1] ...

philox4x64_ctr_t c={{}};
philox4x64_key_t k={{}};

k.v[0] = 0; //Seed = Key. Counter can also act as seed, because slight change on Key or Counter will affect the generated suite.
for(...){
    c.v[0] = ???; /* some loop-dependent application variable */
    c.v[1] = ???; /* another loop-dependent application variable */
    philox4x64_ctr_t r = philox4x64(c, k);
}
