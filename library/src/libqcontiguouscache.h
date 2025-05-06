#pragma once
#ifndef SRCC_LIBQCONTIGUOUSCACHE_H
#define SRCC_LIBQCONTIGUOUSCACHE_H

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
typedef struct QContiguousCacheData QContiguousCacheData;
#endif

QTLIBC_API QContiguousCacheData* QContiguousCacheData_AllocateData(ptrdiff_t size, ptrdiff_t alignment);
QTLIBC_API void QContiguousCacheData_FreeData(QContiguousCacheData* data);
QTLIBC_API void QContiguousCacheData_Delete(QContiguousCacheData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
