#include "main.h"

uint8_t debounce(uint8_t sample)
{
    static uint8_t state = 0xff;
    static uint8_t cnt0, cnt1;
    uint8_t delta;

    delta = sample ^ state;
    cnt1 = (cnt1 ^ cnt0) & (delta & sample);
    cnt0 = ~cnt0 & (delta & sample);
    state ^= (delta & ~(cnt0 | cnt1));
    return state;
}