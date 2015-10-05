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

uint8_t get_index(int priority)
{

    static int last_index[4] = {0, 0, 0, 0};
    int i;

    printf(" pr == %d  ", priority);


    for(i = last_index[priority]; i < COUNT_ELEMENTS(tasks); i++)
    {
        if(tasks[i].current_pr == priority)
        {
            last_index[priority] = i + 1;
            return i;
        }
    }


    last_index[priority] = 0;

    return -1; //not finde
}
