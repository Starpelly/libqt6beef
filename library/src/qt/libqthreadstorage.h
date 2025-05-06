#pragma once
#ifndef SRC_QTC_LIBQTHREADSTORAGE_H
#define SRC_QTC_LIBQTHREADSTORAGE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QThreadStorageData QThreadStorageData;
#endif

QTLIBC_API QThreadStorageData* QThreadStorageData_new(QThreadStorageData* param1);
QTLIBC_API void** QThreadStorageData_Get(const QThreadStorageData* self);
QTLIBC_API void** QThreadStorageData_Set(QThreadStorageData* self, void* p);
QTLIBC_API void QThreadStorageData_Finish(void** param1);
QTLIBC_API void QThreadStorageData_Delete(QThreadStorageData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
