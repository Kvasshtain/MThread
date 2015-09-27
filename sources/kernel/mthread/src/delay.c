#include <portmacro.h>



//------------------------------------------------------
// Delay
//------------------------------------------------------
void Delay(uint32_t value)
{
    while(value--) PORT_ASM_NOP();
}
