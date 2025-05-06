#pragma once
#ifndef SRCC_LIBQFACTORYINTERFACE_H
#define SRCC_LIBQFACTORYINTERFACE_H

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
typedef struct QFactoryInterface QFactoryInterface;
#endif

QTLIBC_API libqt_list /* of libqt_string */ QFactoryInterface_Keys(const QFactoryInterface* self);
QTLIBC_API void QFactoryInterface_Delete(QFactoryInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
