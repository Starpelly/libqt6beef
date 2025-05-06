#pragma once
#ifndef SRCC_LIBQTEXTCODEC_H
#define SRCC_LIBQTEXTCODEC_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTextCodec__ConverterState)
typedef QTextCodec::ConverterState QTextCodec__ConverterState;
#endif
#else
typedef struct QChar QChar;
typedef struct QTextCodec QTextCodec;
typedef struct QTextCodec__ConverterState QTextCodec__ConverterState;
typedef struct QTextDecoder QTextDecoder;
typedef struct QTextEncoder QTextEncoder;
#endif

#ifdef __cplusplus
typedef QTextCodec::ConversionFlag ConversionFlag;   // C++ enum
typedef QTextCodec::ConversionFlags ConversionFlags; // C++ QFlags
#else
typedef int ConversionFlag;  // C ABI enum
typedef int ConversionFlags; // C ABI QFlags
#endif

QTextCodec* QTextCodec_CodecForName(libqt_string name);
QTextCodec* QTextCodec_CodecForNameWithName(const char* name);
QTextCodec* QTextCodec_CodecForMib(int mib);
libqt_list /* of libqt_string */ QTextCodec_AvailableCodecs();
libqt_list /* of int */ QTextCodec_AvailableMibs();
QTextCodec* QTextCodec_CodecForLocale();
void QTextCodec_SetCodecForLocale(QTextCodec* c);
QTextCodec* QTextCodec_CodecForHtml(libqt_string ba);
QTextCodec* QTextCodec_CodecForHtml2(libqt_string ba, QTextCodec* defaultCodec);
QTextCodec* QTextCodec_CodecForUtfText(libqt_string ba);
QTextCodec* QTextCodec_CodecForUtfText2(libqt_string ba, QTextCodec* defaultCodec);
bool QTextCodec_CanEncode(const QTextCodec* self, QChar* param1);
bool QTextCodec_CanEncodeWithQString(const QTextCodec* self, libqt_string param1);
libqt_string QTextCodec_ToUnicode(const QTextCodec* self, libqt_string param1);
libqt_string QTextCodec_ToUnicodeWithChars(const QTextCodec* self, const char* chars);
libqt_string QTextCodec_FromUnicode(const QTextCodec* self, libqt_string uc);
libqt_string QTextCodec_ToUnicode2(const QTextCodec* self, const char* in, int length);
libqt_string QTextCodec_FromUnicode2(const QTextCodec* self, QChar* in, int length);
QTextDecoder* QTextCodec_MakeDecoder(const QTextCodec* self);
QTextEncoder* QTextCodec_MakeEncoder(const QTextCodec* self);
libqt_string QTextCodec_Name(const QTextCodec* self);
void QTextCodec_OnName(const QTextCodec* self, intptr_t slot);
libqt_string QTextCodec_QBaseName(const QTextCodec* self);
libqt_list /* of libqt_string */ QTextCodec_Aliases(const QTextCodec* self);
void QTextCodec_OnAliases(const QTextCodec* self, intptr_t slot);
libqt_list /* of libqt_string */ QTextCodec_QBaseAliases(const QTextCodec* self);
int QTextCodec_MibEnum(const QTextCodec* self);
void QTextCodec_OnMibEnum(const QTextCodec* self, intptr_t slot);
int QTextCodec_QBaseMibEnum(const QTextCodec* self);
libqt_string QTextCodec_ConvertToUnicode(const QTextCodec* self, const char* in, int length, QTextCodec__ConverterState* state);
void QTextCodec_OnConvertToUnicode(const QTextCodec* self, intptr_t slot);
libqt_string QTextCodec_QBaseConvertToUnicode(const QTextCodec* self, const char* in, int length, QTextCodec__ConverterState* state);
libqt_string QTextCodec_ConvertFromUnicode(const QTextCodec* self, QChar* in, int length, QTextCodec__ConverterState* state);
void QTextCodec_OnConvertFromUnicode(const QTextCodec* self, intptr_t slot);
libqt_string QTextCodec_QBaseConvertFromUnicode(const QTextCodec* self, QChar* in, int length, QTextCodec__ConverterState* state);
libqt_string QTextCodec_ToUnicode3(const QTextCodec* self, const char* in, int length, QTextCodec__ConverterState* state);
libqt_string QTextCodec_FromUnicode3(const QTextCodec* self, QChar* in, int length, QTextCodec__ConverterState* state);
QTextDecoder* QTextCodec_MakeDecoder1(const QTextCodec* self, int flags);
QTextEncoder* QTextCodec_MakeEncoder1(const QTextCodec* self, int flags);

QTextEncoder* QTextEncoder_new(QTextCodec* codec);
QTextEncoder* QTextEncoder_new2(QTextCodec* codec, int flags);
libqt_string QTextEncoder_FromUnicode(QTextEncoder* self, libqt_string str);
libqt_string QTextEncoder_FromUnicode2(QTextEncoder* self, QChar* uc, int lenVal);
bool QTextEncoder_HasFailure(const QTextEncoder* self);
void QTextEncoder_Delete(QTextEncoder* self);

QTextDecoder* QTextDecoder_new(QTextCodec* codec);
QTextDecoder* QTextDecoder_new2(QTextCodec* codec, int flags);
libqt_string QTextDecoder_ToUnicode(QTextDecoder* self, const char* chars, int lenVal);
libqt_string QTextDecoder_ToUnicodeWithBa(QTextDecoder* self, libqt_string ba);
bool QTextDecoder_HasFailure(const QTextDecoder* self);
bool QTextDecoder_NeedsMoreData(const QTextDecoder* self);
void QTextDecoder_Delete(QTextDecoder* self);

QTextCodec__ConverterState* QTextCodec__ConverterState_new();
QTextCodec__ConverterState* QTextCodec__ConverterState_new2(int f);
void QTextCodec__ConverterState_Delete(QTextCodec__ConverterState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
