#include <portmacro.h>
#include <task.h>
#include <mutex.h>



//------------------------------------------------------
// Создать Mutex
//------------------------------------------------------
void eMutex_Create(struct Mmutex *pMmutex)
{
    pMmutex->Inquiry = NULL;
    pMmutex->lock = NULL;
}

//------------------------------------------------------
// Блокируем мьютекс
// В случаи если мьютекс занят вызывается eTask_Schedule,
// дальнейшие выполнение программы блокируется
//------------------------------------------------------
void eMutex_lock(struct Mmutex *pMmutex)
{
    while(1) {
        PORT_DISABLE_IRQ();
        // Свободный ?
        if(pMmutex->lock == NULL) {
            // Проверка, кто-то ожидает мьютекс ?
            if(pMmutex->Inquiry == NULL) {
                // Блокируем мьютекс
                // Ресурс успешно занят
                pMmutex->lock = sTask_Status.pTask_Descriptor;
                __enable_irq();
                return;
            }
            pMmutex->Inquiry = NULL;
            __enable_irq();
            sTask_Schedule();
            continue;
        }

        // Занят нами ?
        if(pMmutex->lock == sTask_Status.pTask_Descriptor) {
            __enable_irq();
            return;
        }

        pMmutex->Inquiry = 1;
        __enable_irq();
        // Блокируем поток до тех пор пока не захватим мьютекс
        sTask_Schedule();
    }
}

//------------------------------------------------------
// Блокируем мьютекс
// В случаи если мьютекс занят не нами возвращает -1, если занят нами 0
// eTask_Schedule не вызывается
//------------------------------------------------------
uint8_t eMutex_try_lock(struct Mmutex *pMmutex)
{
    __disable_irq();
    // Свободный ?
    if(pMmutex->lock == NULL) {
        // Проверка, кто-то ожидает мьютекс ?
        if(pMmutex->Inquiry == NULL) {
            // Блокируем мьютекс
            // Ресурс успешно занят
            pMmutex->lock = sTask_Status.pTask_Descriptor;
            __enable_irq();
            return 0;
        }
        pMmutex->Inquiry = NULL;
        __enable_irq();
        sTask_Schedule();
        return -1;
    }

    // Занят нами ?
    if(pMmutex->lock == sTask_Status.pTask_Descriptor) {
        __enable_irq();
        return 0;
    }

    __enable_irq();
    return -1;
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
    }
}
