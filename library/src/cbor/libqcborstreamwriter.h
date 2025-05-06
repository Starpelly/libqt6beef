#pragma once
#ifndef SRC_CBORC_LIBQCBORSTREAMWRITER_H
#define SRC_CBORC_LIBQCBORSTREAMWRITER_H

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
typedef struct QCborStreamWriter QCborStreamWriter;
typedef struct QIODevice QIODevice;
#endif

QTLIBC_API QCborStreamWriter* QCborStreamWriter_new(QIODevice* device);
QTLIBC_API void QCborStreamWriter_SetDevice(QCborStreamWriter* self, QIODevice* device);
QTLIBC_API QIODevice* QCborStreamWriter_Device(const QCborStreamWriter* self);
QTLIBC_API void QCborStreamWriter_Append(QCborStreamWriter* self, unsigned long long u);
QTLIBC_API void QCborStreamWriter_AppendWithQint64(QCborStreamWriter* self, long long i);
QTLIBC_API void QCborStreamWriter_AppendWithQCborNegativeInteger(QCborStreamWriter* self, uint64_t n);
QTLIBC_API void QCborStreamWriter_AppendWithBa(QCborStreamWriter* self, libqt_string ba);
QTLIBC_API void QCborStreamWriter_AppendWithTag(QCborStreamWriter* self, uint64_t tag);
QTLIBC_API void QCborStreamWriter_Append3(QCborStreamWriter* self, int tag);
QTLIBC_API void QCborStreamWriter_AppendWithSt(QCborStreamWriter* self, uint8_t st);
QTLIBC_API void QCborStreamWriter_AppendWithFloat(QCborStreamWriter* self, float f);
QTLIBC_API void QCborStreamWriter_AppendWithDouble(QCborStreamWriter* self, double d);
QTLIBC_API void QCborStreamWriter_AppendByteString(QCborStreamWriter* self, const char* data, ptrdiff_t lenVal);
QTLIBC_API void QCborStreamWriter_AppendTextString(QCborStreamWriter* self, const char* utf8, ptrdiff_t lenVal);
QTLIBC_API void QCborStreamWriter_AppendWithBool(QCborStreamWriter* self, bool b);
QTLIBC_API void QCborStreamWriter_AppendNull(QCborStreamWriter* self);
QTLIBC_API void QCborStreamWriter_AppendUndefined(QCborStreamWriter* self);
QTLIBC_API void QCborStreamWriter_AppendWithInt(QCborStreamWriter* self, int i);
QTLIBC_API void QCborStreamWriter_AppendWithUint(QCborStreamWriter* self, unsigned int u);
QTLIBC_API void QCborStreamWriter_Append4(QCborStreamWriter* self, const char* str);
QTLIBC_API void QCborStreamWriter_StartArray(QCborStreamWriter* self);
QTLIBC_API void QCborStreamWriter_StartArrayWithCount(QCborStreamWriter* self, unsigned long long count);
QTLIBC_API bool QCborStreamWriter_EndArray(QCborStreamWriter* self);
QTLIBC_API void QCborStreamWriter_StartMap(QCborStreamWriter* self);
QTLIBC_API void QCborStreamWriter_StartMapWithCount(QCborStreamWriter* self, unsigned long long count);
QTLIBC_API bool QCborStreamWriter_EndMap(QCborStreamWriter* self);
QTLIBC_API void QCborStreamWriter_Append22(QCborStreamWriter* self, const char* str, ptrdiff_t size);
QTLIBC_API void QCborStreamWriter_Delete(QCborStreamWriter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
