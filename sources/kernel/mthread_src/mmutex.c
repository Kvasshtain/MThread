#include "inc/GlobalIncludeFile.h"
#include "inc/MThread_inc/mthread_task.h"
#include "inc/MThread_inc/mmutex.h"



//------------------------------------------------------
// Блокируем мьютекс
// В случаи если мьютекс занят вызывается eTask_Schedule,
// дальнейшие выполнение программы блокируется
//------------------------------------------------------
void eMutex_lock(struct Mmutex *pMmutex)
{
    __disable_irq();
    _repeat:
    // Можно захватить
    if((pMmutex->lock == NULL) || (pMmutex->lock == sTask_Status.pTask_Descriptor)) {
        // Проверка, кто-то ожидает мьютекс ?
        if(pMmutex->Inquiry == NULL) {
            // Блокируем мьютекс
            // Ресурс успешно занят
            pMmutex->lock = sTask_Status.pTask_Descriptor;
            __enable_irq();
        } else {
            // Сброс
            pMmutex->Inquiry = NULL;
            __enable_irq();
            // Вызываем eTask_Schedule
            // Блокируем поток до тех пор пока не захватим мьютекс
            sTask_Schedule();
            goto _repeat;
        }
        return;
    }
    // Запрос на захват мьютекса
    pMmutex->Inquiry = 1;
    __enable_irq();
    // Вызываем eTask_Schedule
    // Блокируем поток до тех пор пока не захватим мьютекс
    sTask_Schedule();
    goto _repeat;
}

//------------------------------------------------------
// Блокируем мьютекс
// В случаи если мьютекс занят не нами возвращает -1, если занят нами 0
// eTask_Schedule не вызывается
//------------------------------------------------------
uint8_t eMutex_try_lock(struct Mmutex *pMmutex)
{
    __disable_irq();
    // Можно захватить
    if((pMmutex->lock == NULL) || (pMmutex->lock == sTask_Status.pTask_Descriptor)) {
        // Проверка, кто-то ожидает мьютекс ?
        if(pMmutex->Inquiry == NULL) {
            // Блокируем мьютекс
            // Ресурс успешно занят
            pMmutex->lock = sTask_Status.pTask_Descriptor;
            __enable_irq();
            return 0;
        } else {
            // Сброс
            pMmutex->Inquiry = NULL;
            __enable_irq();
            // Вызываем eTask_Schedule
            sTask_Schedule();
            return -1;
        }
    } else {
        __enable_irq();
        return -1;
    }
}

//------------------------------------------------------
// Разблокирует мьютекс
//------------------------------------------------------
void eMutex_unlock(struct Mmutex *pMmutex)
{
    // Можно разблокировать
    if(pMmutex->lock == sTask_Status.pTask_Descriptor) {
        pMmutex->lock = NULL;
        // Ресурс успешно разблокирован
        return;
    }
}
