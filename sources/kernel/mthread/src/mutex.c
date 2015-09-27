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
                PORT_ENABLE_IRQ();
                return;
            }
            pMmutex->Inquiry = NULL;
            PORT_ENABLE_IRQ();
            sTask_Schedule();
            continue;
        }

        // Занят нами ?
        if(pMmutex->lock == sTask_Status.pTask_Descriptor) {
            PORT_ENABLE_IRQ();
            return;
        }

        pMmutex->Inquiry = 1;
        PORT_ENABLE_IRQ();
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
    PORT_DISABLE_IRQ();
    // Свободный ?
    if(pMmutex->lock == NULL) {
        // Проверка, кто-то ожидает мьютекс ?
        if(pMmutex->Inquiry == NULL) {
            // Блокируем мьютекс
            // Ресурс успешно занят
            pMmutex->lock = sTask_Status.pTask_Descriptor;
            PORT_ENABLE_IRQ();
            return 0;
        }
        pMmutex->Inquiry = NULL;
        PORT_ENABLE_IRQ();
        sTask_Schedule();
        return -1;
    }

    // Занят нами ?
    if(pMmutex->lock == sTask_Status.pTask_Descriptor) {
        PORT_ENABLE_IRQ();
        return 0;
    }

    PORT_ENABLE_IRQ();
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
