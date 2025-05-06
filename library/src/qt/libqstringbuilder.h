#pragma once
#ifndef SRC_QTC_LIBQSTRINGBUILDER_H
#define SRC_QTC_LIBQSTRINGBUILDER_H

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
typedef struct QAbstractConcatenable QAbstractConcatenable;
#endif

QTLIBC_API QAbstractConcatenable* QAbstractConcatenable_new(QAbstractConcatenable* other);
QTLIBC_API QAbstractConcatenable* QAbstractConcatenable_new2(QAbstractConcatenable* other);
QTLIBC_API void QAbstractConcatenable_CopyAssign(QAbstractConcatenable* self, QAbstractConcatenable* other);
QTLIBC_API void QAbstractConcatenable_MoveAssign(QAbstractConcatenable* self, QAbstractConcatenable* other);
QTLIBC_API void QAbstractConcatenable_Delete(QAbstractConcatenable* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
