#pragma once
#ifndef SRC_QTC_LIBQSHAREDDATA_H
#define SRC_QTC_LIBQSHAREDDATA_H

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
typedef struct QAdoptSharedDataTag QAdoptSharedDataTag;
typedef struct QSharedData QSharedData;
#endif

QTLIBC_API QSharedData* QSharedData_new();
QTLIBC_API QSharedData* QSharedData_new2(QSharedData* param1);
QTLIBC_API void QSharedData_Delete(QSharedData* self);

QTLIBC_API QAdoptSharedDataTag* QAdoptSharedDataTag_new(QAdoptSharedDataTag* other);
QTLIBC_API QAdoptSharedDataTag* QAdoptSharedDataTag_new2(QAdoptSharedDataTag* other);
QTLIBC_API QAdoptSharedDataTag* QAdoptSharedDataTag_new3();
QTLIBC_API void QAdoptSharedDataTag_CopyAssign(QAdoptSharedDataTag* self, QAdoptSharedDataTag* other);
QTLIBC_API void QAdoptSharedDataTag_MoveAssign(QAdoptSharedDataTag* self, QAdoptSharedDataTag* other);
QTLIBC_API void QAdoptSharedDataTag_Delete(QAdoptSharedDataTag* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
