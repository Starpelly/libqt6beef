#pragma once
#ifndef SRC_QTC_LIBQSTRINGCONVERTER_H
#define SRC_QTC_LIBQSTRINGCONVERTER_H

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
typedef struct QByteArrayView QByteArrayView;
typedef struct QChar QChar;
typedef struct QStringConverter QStringConverter;
typedef struct QStringConverterBase QStringConverterBase;
typedef struct QStringDecoder QStringDecoder;
typedef struct QStringEncoder QStringEncoder;
#endif

QTLIBC_API QStringEncoder* QStringEncoder_new();
QTLIBC_API QStringEncoder* QStringEncoder_new2(int encoding);
QTLIBC_API QStringEncoder* QStringEncoder_new3(const char* name);
QTLIBC_API QStringEncoder* QStringEncoder_new4(int encoding, int flags);
QTLIBC_API QStringEncoder* QStringEncoder_new5(const char* name, int flags);
QTLIBC_API ptrdiff_t QStringEncoder_RequiredSpace(const QStringEncoder* self, ptrdiff_t inputLength);
QTLIBC_API void QStringEncoder_Delete(QStringEncoder* self);

QTLIBC_API QStringDecoder* QStringDecoder_new(int encoding);
QTLIBC_API QStringDecoder* QStringDecoder_new2();
QTLIBC_API QStringDecoder* QStringDecoder_new3(const char* name);
QTLIBC_API QStringDecoder* QStringDecoder_new4(int encoding, int flags);
QTLIBC_API QStringDecoder* QStringDecoder_new5(const char* name, int f);
QTLIBC_API ptrdiff_t QStringDecoder_RequiredSpace(const QStringDecoder* self, ptrdiff_t inputLength);
QTLIBC_API QChar* QStringDecoder_AppendToBuffer(QStringDecoder* self, QChar* out, QByteArrayView* ba);
QTLIBC_API QStringDecoder* QStringDecoder_DecoderForHtml(QByteArrayView* data);
QTLIBC_API void QStringDecoder_Delete(QStringDecoder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
