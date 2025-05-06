#pragma once
#ifndef SRCC_LIBQSTYLEFACTORY_H
#define SRCC_LIBQSTYLEFACTORY_H

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
typedef struct QStyle QStyle;
typedef struct QStyleFactory QStyleFactory;
#endif

QTLIBC_API QStyleFactory* QStyleFactory_new(QStyleFactory* other);
QTLIBC_API QStyleFactory* QStyleFactory_new2(QStyleFactory* other);
QTLIBC_API void QStyleFactory_CopyAssign(QStyleFactory* self, QStyleFactory* other);
QTLIBC_API void QStyleFactory_MoveAssign(QStyleFactory* self, QStyleFactory* other);
QTLIBC_API libqt_list /* of libqt_string */ QStyleFactory_Keys();
QTLIBC_API QStyle* QStyleFactory_Create(libqt_string param1);
QTLIBC_API void QStyleFactory_Delete(QStyleFactory* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
