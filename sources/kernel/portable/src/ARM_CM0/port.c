#include <portmacro.h>
#include <task.h>



//------------------------------------------------------
// Прерывание системного таймера
//------------------------------------------------------
void PORT_SYS_TICK_HANDLER(void)
{
    sTask_Schedule();
}

//------------------------------------------------------
// Инициализация стека задачи
//------------------------------------------------------
uint32_t* port_Initialise_Stack(void (*pTack)(void *pVoid), uint32_t *pStack, uint32_t Size_Stack, void *pParameters)
{
    // Инициализация стека задачи
    pStack[-7] = (uint32_t)pParameters;
    // Инициализация регистра -> LR
    pStack[-2] = (uint32_t)pTack;
    // Инициализация регистра -> PC
    pStack[-1] = (uint32_t)pTack;
    // Инициализация регистра -> PSR
    pStack[0] = 0x01000000;

    // Текущий указатель на стек
    return (uint32_t *)(pStack - 15);
}

//------------------------------------------------------
// Запустить шедулер
//------------------------------------------------------
void port_Start_Schedule(uint32_t* pStack)
{
    // Указатель на стек
    __set_PSP((uint32_t)pStack);

    SysTick_Config(8000);
    NVIC_SetPriority(PendSV_IRQn, 0xff);
    NVIC_SetPriority(SysTick_IRQn, 0xff);
}

//------------------------------------------------------
// Программное прерывание Schedule
//------------------------------------------------------
inline void port_Inquiry_Interruption(void)
{
    // Start interrapt
    SCB->ICSR |= BIT28;
}

//------------------------------------------------------
// Начало критической секции обеспечивающая атомарность
//------------------------------------------------------
inline void port_Start_Critical_Section_Mutex(void)
{
    // Запретить прерывания
    __disable_irq();
}

//------------------------------------------------------
// Конец критической секции обеспечивающая атомарность
//------------------------------------------------------
inline void port_End_Critical_Section_Mutex(void)
{
    // Разрешить прерывания
    __enable_irq();
}
