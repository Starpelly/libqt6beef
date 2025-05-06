#pragma once
#ifndef SRC_QTC_LIBQPROPERTYPRIVATE_H
#define SRC_QTC_LIBQPROPERTYPRIVATE_H

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
typedef struct QPropertyProxyBindingData QPropertyProxyBindingData;
typedef struct QUntypedPropertyData QUntypedPropertyData;
#endif

QTLIBC_API QUntypedPropertyData* QUntypedPropertyData_new(QUntypedPropertyData* other);
QTLIBC_API QUntypedPropertyData* QUntypedPropertyData_new2(QUntypedPropertyData* other);
QTLIBC_API void QUntypedPropertyData_CopyAssign(QUntypedPropertyData* self, QUntypedPropertyData* other);
QTLIBC_API void QUntypedPropertyData_MoveAssign(QUntypedPropertyData* self, QUntypedPropertyData* other);
QTLIBC_API void QUntypedPropertyData_Delete(QUntypedPropertyData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
