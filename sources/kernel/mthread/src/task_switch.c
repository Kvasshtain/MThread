#include <portmacro.h>
#include <task_switch.h>



//------------------------------------------------------
// Возвращает следующую задачу
//------------------------------------------------------
uint8_t sTask_Switch(void)
{
    static uint8_t c = 0;
    c ^= BIT0;
    return c;
}
