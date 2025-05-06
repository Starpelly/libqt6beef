#pragma once
#ifndef SRC_QTC_LIBQSYSTEMSEMAPHORE_H
#define SRC_QTC_LIBQSYSTEMSEMAPHORE_H

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
typedef struct QSystemSemaphore QSystemSemaphore;
#endif

#ifdef __cplusplus
typedef QSystemSemaphore::AccessMode AccessMode;                     // C++ enum
typedef QSystemSemaphore::SystemSemaphoreError SystemSemaphoreError; // C++ enum
#else
typedef int AccessMode;           // C ABI enum
typedef int SystemSemaphoreError; // C ABI enum
#endif

QTLIBC_API QSystemSemaphore* QSystemSemaphore_new(libqt_string key);
QTLIBC_API QSystemSemaphore* QSystemSemaphore_new2(libqt_string key, int initialValue);
QTLIBC_API QSystemSemaphore* QSystemSemaphore_new3(libqt_string key, int initialValue, int mode);
QTLIBC_API libqt_string QSystemSemaphore_Tr(const char* sourceText);
QTLIBC_API void QSystemSemaphore_SetKey(QSystemSemaphore* self, libqt_string key);
QTLIBC_API libqt_string QSystemSemaphore_Key(const QSystemSemaphore* self);
QTLIBC_API bool QSystemSemaphore_Acquire(QSystemSemaphore* self);
QTLIBC_API bool QSystemSemaphore_Release(QSystemSemaphore* self);
QTLIBC_API int QSystemSemaphore_Error(const QSystemSemaphore* self);
QTLIBC_API libqt_string QSystemSemaphore_ErrorString(const QSystemSemaphore* self);
QTLIBC_API libqt_string QSystemSemaphore_Tr2(const char* sourceText, const char* disambiguation);
QTLIBC_API libqt_string QSystemSemaphore_Tr3(const char* sourceText, const char* disambiguation, int n);
QTLIBC_API void QSystemSemaphore_SetKey2(QSystemSemaphore* self, libqt_string key, int initialValue);
QTLIBC_API void QSystemSemaphore_SetKey3(QSystemSemaphore* self, libqt_string key, int initialValue, int mode);
QTLIBC_API bool QSystemSemaphore_Release1(QSystemSemaphore* self, int n);
QTLIBC_API void QSystemSemaphore_Delete(QSystemSemaphore* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
