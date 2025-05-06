#pragma once
#ifndef SRCC_LIBQCOMMANDLINEOPTION_H
#define SRCC_LIBQCOMMANDLINEOPTION_H

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
typedef struct QCommandLineOption QCommandLineOption;
#endif

#ifdef __cplusplus
typedef QCommandLineOption::Flag Flag;   // C++ enum
typedef QCommandLineOption::Flags Flags; // C++ QFlags
#else
typedef int Flag;  // C ABI enum
typedef int Flags; // C ABI QFlags
#endif

QTLIBC_API QCommandLineOption* QCommandLineOption_new(libqt_string name);
QTLIBC_API QCommandLineOption* QCommandLineOption_new2(libqt_list /* of libqt_string */ names);
QTLIBC_API QCommandLineOption* QCommandLineOption_new3(libqt_string name, libqt_string description);
QTLIBC_API QCommandLineOption* QCommandLineOption_new4(libqt_list /* of libqt_string */ names, libqt_string description);
QTLIBC_API QCommandLineOption* QCommandLineOption_new5(QCommandLineOption* other);
QTLIBC_API QCommandLineOption* QCommandLineOption_new6(libqt_string name, libqt_string description, libqt_string valueName);
QTLIBC_API QCommandLineOption* QCommandLineOption_new7(libqt_string name, libqt_string description, libqt_string valueName, libqt_string defaultValue);
QTLIBC_API QCommandLineOption* QCommandLineOption_new8(libqt_list /* of libqt_string */ names, libqt_string description, libqt_string valueName);
QTLIBC_API QCommandLineOption* QCommandLineOption_new9(libqt_list /* of libqt_string */ names, libqt_string description, libqt_string valueName, libqt_string defaultValue);
QTLIBC_API void QCommandLineOption_OperatorAssign(QCommandLineOption* self, QCommandLineOption* other);
QTLIBC_API void QCommandLineOption_Swap(QCommandLineOption* self, QCommandLineOption* other);
QTLIBC_API libqt_list /* of libqt_string */ QCommandLineOption_Names(const QCommandLineOption* self);
QTLIBC_API void QCommandLineOption_SetValueName(QCommandLineOption* self, libqt_string name);
QTLIBC_API libqt_string QCommandLineOption_ValueName(const QCommandLineOption* self);
QTLIBC_API void QCommandLineOption_SetDescription(QCommandLineOption* self, libqt_string description);
QTLIBC_API libqt_string QCommandLineOption_Description(const QCommandLineOption* self);
QTLIBC_API void QCommandLineOption_SetDefaultValue(QCommandLineOption* self, libqt_string defaultValue);
QTLIBC_API void QCommandLineOption_SetDefaultValues(QCommandLineOption* self, libqt_list /* of libqt_string */ defaultValues);
QTLIBC_API libqt_list /* of libqt_string */ QCommandLineOption_DefaultValues(const QCommandLineOption* self);
QTLIBC_API int QCommandLineOption_Flags(const QCommandLineOption* self);
QTLIBC_API void QCommandLineOption_SetFlags(QCommandLineOption* self, int aflags);
QTLIBC_API void QCommandLineOption_Delete(QCommandLineOption* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
