#include <portmacro.h>
#include <task_switch.h>

//------------------------------------------------------
// Возвращает индекс текущей задачу
//------------------------------------------------------
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

//------------------------------------------------------
// Возвращает следующую задачу
//------------------------------------------------------
uint8_t sTask_Switch(void)
{
    static uint8_t c = 0;
    c ^= BIT0;
    return c;


    int i,j, index;

    int current_pr = 1;

    while(1)
    {
        for(i=0; i < COUNT_ELEMENTS(tasks); i++)
        {

            if(tasks[i].current_pr == 0)
            {
                return tasks[i].ID;
            }
        }

        printf(" --- ");

        for(i=1; i <= current_pr; ++i)
        {

            index = get_index(i);

            if(index != -1)
            {
                printf("0x%.2x ", tasks[index].ID);
                break;
            }


            if( i == current_pr)
                current_pr++;
            if(current_pr >= 4)
                current_pr = 1;
        }


//        if( 0 == current_pr)
//            current_pr++;


//            index = get_index(current_pr);

//            if(index != -1)
//            {
//                printf("0x%.2x ", tasks[index].ID);
//            }
//            else
//            {
//                current_pr++;
        //                if(current_pr >= 3)
        //                    current_pr = 1;
//            }

        printf("\n");


    }




}


