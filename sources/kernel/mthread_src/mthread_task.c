#include "inc/GlobalIncludeFile.h"
#include "inc/MThread_inc/mthread_task.h"

/// Указатель на переменную в которую нужно сохранить текущие положение стека
uint32_t **pPointer_Save_Context_Stask;
/// Указатель на переменную которая ссылается на указатель стека для загрузки
uint32_t **pPointer_Load_Context_Stask;

/// Массив структур для каждой задачи
struct Task_Element eTask_Element[VALUE_TASKS];
/// Статусная структура всех задач
struct Task_Status sTask_Status;

//------------------------------------------------------
// Создание новой задачи
// pTask_Element    Указатель на элемент задачи
// pTack            Указатель на функцию задачи type -> pFunction *
// pStack           Указатель на вершину стека  type -> uint32_t *
// Size_Stack       Размера стека в словах      type -> uint32_t
// pParameters      Аргумент потока             type -> void *
//------------------------------------------------------
void eTask_Create(struct Task_Element *pTask_Element, void (*pTack)(void *pVoid), uint32_t *pStack, uint32_t Size_Stack, void *pParameters)
{
    // Проверка указателей и минимального размера стека
    if(!pTask_Element && !pTack && !pStack && (Size_Stack >= MINIMUM_SIZE_STACK_WORD)) return;

    // Инициализация задачи
    pTask_Element->Size_Stack = Size_Stack;
    pTask_Element->pParameters = pParameters;
    pTask_Element->pTask_Descriptor = (descriptorTask)pTack;

    // Инициализация стека задачи
    pStack[-7] = (uint32_t)pParameters;
    // Инициализация регистра -> LR
    pStack[-2] = (uint32_t)pTack;
    // Инициализация регистра -> PC
    pStack[-1] = (uint32_t)pTack;
    // Инициализация регистра -> PSR
    pStack[0] = 0x01000000;

    // Текущий указатель на стек
    pTask_Element->pStack_pointer = (pStack - 15);
}

//------------------------------------------------------
// Возвращает следующую задачу
//------------------------------------------------------
uint8_t sTask_Switch(void)
{
    static uint8_t c = 0;
    c ^= BIT0;
    return c;
}

uint32_t counter = 0;

//------------------------------------------------------
// Выбирает задачу, затем вызывает переключение контекста
//------------------------------------------------------
void sTask_Schedule(void)
{
    SysTick->VAL   = 0;
    // Выбираем текущий поток
    sTask_Status.Task_Current = sTask_Status.Task_Next;
    // Выбираем задачу
    sTask_Status.Task_Next = sTask_Switch();

    // Указатель на переменную в которую нужно сохранить текущие положение стека
    pPointer_Save_Context_Stask = &eTask_Element[sTask_Status.Task_Current].pStack_pointer;
    // Указатель на стек откуда нужно начать восстановление контекста
    pPointer_Load_Context_Stask = &eTask_Element[sTask_Status.Task_Next].pStack_pointer;

    // Копируем дескриптор потока
    sTask_Status.pTask_Descriptor = eTask_Element[sTask_Status.Task_Next].pTask_Descriptor;

    // Start interrapt
    SCB->ICSR |= BIT28;
}

//------------------------------------------------------
// Запустить шедулер
//------------------------------------------------------
void eStart_Schedule(void)
{
    sTask_Status.Task_Current = 0;
    sTask_Status.Task_Next = 0;

    sTask_Switch();
    //
    sTask_Status.Task_Current = sTask_Status.Task_Next;
    // Указатель на переменную в которую нужно сохранить текущие положение стека
    pPointer_Save_Context_Stask = &eTask_Element[sTask_Status.Task_Current].pStack_pointer;
    // Указатель на стек откуда нужно начать восстановление контекста
    pPointer_Load_Context_Stask = &eTask_Element[sTask_Status.Task_Next].pStack_pointer;
     __set_PSP((uint32_t)(eTask_Element[sTask_Status.Task_Current].pStack_pointer + 8));

    // Копируем дескриптор потока
    sTask_Status.pTask_Descriptor = eTask_Element[sTask_Status.Task_Next].pTask_Descriptor;

    SysTick_Config(8000);
    NVIC_SetPriority(PendSV_IRQn, 0xff);
    NVIC_SetPriority(SysTick_IRQn, 0xff);
}

//------------------------------------------------------
// Прерывание системного таймера
//------------------------------------------------------
void SysTick_Handler(void)
{
    sTask_Schedule();
}

//------------------------------------------------------
// Delay
//------------------------------------------------------
void Delay(uint32_t value)
{
    while(value--) {
        __ASM("nop");
        __ASM("nop");
        __ASM("nop");
    }
}
