#pragma once
#ifndef SRCC_LIBQBINDINGSTORAGE_H
#define SRCC_LIBQBINDINGSTORAGE_H

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
typedef struct QBindingStatus QBindingStatus;
typedef struct QBindingStorage QBindingStorage;
typedef struct QUntypedPropertyData QUntypedPropertyData;
#endif

QTLIBC_API QBindingStatus* QBindingStatus_new(QBindingStatus* other);
QTLIBC_API QBindingStatus* QBindingStatus_new2(QBindingStatus* other);
QTLIBC_API void QBindingStatus_CopyAssign(QBindingStatus* self, QBindingStatus* other);
QTLIBC_API void QBindingStatus_MoveAssign(QBindingStatus* self, QBindingStatus* other);
QTLIBC_API void QBindingStatus_Delete(QBindingStatus* self);

QTLIBC_API QBindingStorage* QBindingStorage_new();
QTLIBC_API bool QBindingStorage_IsEmpty(QBindingStorage* self);
QTLIBC_API bool QBindingStorage_IsValid(const QBindingStorage* self);
QTLIBC_API void QBindingStorage_RegisterDependency(const QBindingStorage* self, QUntypedPropertyData* data);
QTLIBC_API void QBindingStorage_Delete(QBindingStorage* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
