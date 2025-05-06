#pragma once
#ifndef SRC_QTC_LIBQSCOPEDPOINTER_H
#define SRC_QTC_LIBQSCOPEDPOINTER_H

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
typedef struct QScopedPointerPodDeleter QScopedPointerPodDeleter;
#endif

QTLIBC_API QScopedPointerPodDeleter* QScopedPointerPodDeleter_new(QScopedPointerPodDeleter* other);
QTLIBC_API QScopedPointerPodDeleter* QScopedPointerPodDeleter_new2(QScopedPointerPodDeleter* other);
QTLIBC_API void QScopedPointerPodDeleter_CopyAssign(QScopedPointerPodDeleter* self, QScopedPointerPodDeleter* other);
QTLIBC_API void QScopedPointerPodDeleter_MoveAssign(QScopedPointerPodDeleter* self, QScopedPointerPodDeleter* other);
QTLIBC_API void QScopedPointerPodDeleter_Cleanup(void* pointer);
QTLIBC_API void QScopedPointerPodDeleter_OperatorCall(const QScopedPointerPodDeleter* self, void* pointer);
QTLIBC_API void QScopedPointerPodDeleter_Delete(QScopedPointerPodDeleter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
