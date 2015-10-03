#ifndef MTHREAD_PORT
#define MTHREAD_PORT

#include "globalincludefile.h"

#define PORT_ASM_NOP()      {  __ASM("nop");        }


// Прерывание системного таймера
//------------------------------------------------------
#define PORT_SYS_TICK_HANDLER   SysTick_Handler

// Прерывание сохранение/восстановление контекста
//------------------------------------------------------
#define PORT_SCHEDULE_HANDLER   PendSV_Handler

// Прерывание системного таймера
//------------------------------------------------------
void PORT_SYS_TICK_HANDLER(void);
// Прерывание сохранение/восстановление контекста
//------------------------------------------------------
void PORT_SCHEDULE_HANDLER(void);




// Инициализация стека задачи
//------------------------------------------------------
uint32_t* port_Initialise_Stack(void (*pTack)(void *pVoid), uint32_t *pStack, uint32_t Size_Stack, void *pParameters);
// Запустить шедулер
//------------------------------------------------------
void port_Start_Schedule(uint32_t* pStack);
// Программное прерывание Schedule
//------------------------------------------------------
void port_Inquiry_Interruption(void);




// Начало критической секции обеспечивающая атомарность
//------------------------------------------------------
void port_Start_Critical_Section_Mutex(void);
// Конец критической секции обеспечивающая атомарность
//------------------------------------------------------
void port_End_Critical_Section_Mutex(void);



#endif // MTHREAD_PORT

