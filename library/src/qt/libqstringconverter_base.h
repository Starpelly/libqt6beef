#pragma once
#ifndef SRC_QTC_LIBQSTRINGCONVERTER_BASE_H
#define SRC_QTC_LIBQSTRINGCONVERTER_BASE_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QStringConverterBase__State)
typedef QStringConverterBase::State QStringConverterBase__State;
#endif
#else
typedef struct QStringConverter QStringConverter;
typedef struct QStringConverterBase QStringConverterBase;
typedef struct QStringConverterBase__State QStringConverterBase__State;
#endif

#ifdef __cplusplus
typedef QStringConverter::Encoding Encoding;                       // C++ enum
typedef QStringConverterBase::Flag Flag;                           // C++ enum
typedef QStringConverterBase::Flags Flags;                         // C++ QFlags
typedef QStringConverterBase::State::ClearDataFn StateClearDataFn; // C++ QFlags
#else
typedef int Encoding; // C ABI enum
typedef int Flag;     // C ABI enum
typedef int Flags;    // C ABI QFlags
#endif

QTLIBC_API bool QStringConverter_IsValid(const QStringConverter* self);
QTLIBC_API void QStringConverter_ResetState(QStringConverter* self);
QTLIBC_API bool QStringConverter_HasError(const QStringConverter* self);
QTLIBC_API const char* QStringConverter_Name(const QStringConverter* self);
QTLIBC_API const char* QStringConverter_NameForEncoding(int e);

QTLIBC_API QStringConverterBase__State* QStringConverterBase__State_new();
QTLIBC_API QStringConverterBase__State* QStringConverterBase__State_new2(int f);
QTLIBC_API void QStringConverterBase__State_Clear(QStringConverterBase__State* self);
QTLIBC_API void QStringConverterBase__State_Reset(QStringConverterBase__State* self);
QTLIBC_API void QStringConverterBase__State_Delete(QStringConverterBase__State* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
