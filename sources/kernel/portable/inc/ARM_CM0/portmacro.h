#ifndef MTHREAD_PORT
#define MTHREAD_PORT

#include "globalincludefile.h"

#define PORT_DISABLE_IRQ()  {   __disable_irq();    }
#define PORT_ENABLE_IRQ()   {   __enable_irq();     }
#define PORT_ASM_NOP()      {  __ASM("nop");        }


// Прерывание системного таймера
//------------------------------------------------------
#define PORT_SYS_TICK_HANDLER   SysTick_Handler

// Прерывание сохранение/восстановление контекста
//------------------------------------------------------
#define PORT_SCHEDULE_HANDLER   PendSV_Handler



// Инициализация стека задачи
//------------------------------------------------------
uint32_t* port_Initialise_Stack(void (*pTack)(void *pVoid), uint32_t *pStack, uint32_t Size_Stack, void *pParameters);
// Запустить шедулер
//------------------------------------------------------
void port_Start_Schedule(uint32_t* pStack);


// Прерывание системного таймера
//------------------------------------------------------
void PORT_SYS_TICK_HANDLER(void);
// Прерывание сохранение/восстановление контекста
//------------------------------------------------------
void PORT_SCHEDULE_HANDLER(void);



#endif // MTHREAD_PORT

