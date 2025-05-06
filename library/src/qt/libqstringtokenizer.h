#pragma once
#ifndef SRC_QTC_LIBQSTRINGTOKENIZER_H
#define SRC_QTC_LIBQSTRINGTOKENIZER_H

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
typedef struct QStringTokenizerBaseBase QStringTokenizerBaseBase;
#endif

QTLIBC_API QStringTokenizerBaseBase* QStringTokenizerBaseBase_new(QStringTokenizerBaseBase* other);
QTLIBC_API QStringTokenizerBaseBase* QStringTokenizerBaseBase_new2(QStringTokenizerBaseBase* param1);
QTLIBC_API void QStringTokenizerBaseBase_CopyAssign(QStringTokenizerBaseBase* self, QStringTokenizerBaseBase* other);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
