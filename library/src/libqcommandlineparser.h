#pragma once
#ifndef SRCC_LIBQCOMMANDLINEPARSER_H
#define SRCC_LIBQCOMMANDLINEPARSER_H

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
typedef struct QCommandLineParser QCommandLineParser;
typedef struct QCoreApplication QCoreApplication;
#endif

#ifdef __cplusplus
typedef QCommandLineParser::OptionsAfterPositionalArgumentsMode OptionsAfterPositionalArgumentsMode; // C++ enum
typedef QCommandLineParser::SingleDashWordOptionMode SingleDashWordOptionMode;                       // C++ enum
#else
typedef int OptionsAfterPositionalArgumentsMode; // C ABI enum
typedef int SingleDashWordOptionMode;            // C ABI enum
#endif

QTLIBC_API QCommandLineParser* QCommandLineParser_new();
QTLIBC_API libqt_string QCommandLineParser_Tr(const char* sourceText);
QTLIBC_API void QCommandLineParser_SetSingleDashWordOptionMode(QCommandLineParser* self, int parsingMode);
QTLIBC_API void QCommandLineParser_SetOptionsAfterPositionalArgumentsMode(QCommandLineParser* self, int mode);
QTLIBC_API bool QCommandLineParser_AddOption(QCommandLineParser* self, QCommandLineOption* commandLineOption);
QTLIBC_API bool QCommandLineParser_AddOptions(QCommandLineParser* self, libqt_list /* of QCommandLineOption* */ options);
QTLIBC_API QCommandLineOption* QCommandLineParser_AddVersionOption(QCommandLineParser* self);
QTLIBC_API QCommandLineOption* QCommandLineParser_AddHelpOption(QCommandLineParser* self);
QTLIBC_API void QCommandLineParser_SetApplicationDescription(QCommandLineParser* self, libqt_string description);
QTLIBC_API libqt_string QCommandLineParser_ApplicationDescription(const QCommandLineParser* self);
QTLIBC_API void QCommandLineParser_AddPositionalArgument(QCommandLineParser* self, libqt_string name, libqt_string description);
QTLIBC_API void QCommandLineParser_ClearPositionalArguments(QCommandLineParser* self);
QTLIBC_API void QCommandLineParser_Process(QCommandLineParser* self, libqt_list /* of libqt_string */ arguments);
QTLIBC_API void QCommandLineParser_ProcessWithApp(QCommandLineParser* self, QCoreApplication* app);
QTLIBC_API bool QCommandLineParser_Parse(QCommandLineParser* self, libqt_list /* of libqt_string */ arguments);
QTLIBC_API libqt_string QCommandLineParser_ErrorText(const QCommandLineParser* self);
QTLIBC_API bool QCommandLineParser_IsSet(const QCommandLineParser* self, libqt_string name);
QTLIBC_API libqt_string QCommandLineParser_Value(const QCommandLineParser* self, libqt_string name);
QTLIBC_API libqt_list /* of libqt_string */ QCommandLineParser_Values(const QCommandLineParser* self, libqt_string name);
QTLIBC_API bool QCommandLineParser_IsSetWithOption(const QCommandLineParser* self, QCommandLineOption* option);
QTLIBC_API libqt_string QCommandLineParser_ValueWithOption(const QCommandLineParser* self, QCommandLineOption* option);
QTLIBC_API libqt_list /* of libqt_string */ QCommandLineParser_ValuesWithOption(const QCommandLineParser* self, QCommandLineOption* option);
QTLIBC_API libqt_list /* of libqt_string */ QCommandLineParser_PositionalArguments(const QCommandLineParser* self);
QTLIBC_API libqt_list /* of libqt_string */ QCommandLineParser_OptionNames(const QCommandLineParser* self);
QTLIBC_API libqt_list /* of libqt_string */ QCommandLineParser_UnknownOptionNames(const QCommandLineParser* self);
QTLIBC_API void QCommandLineParser_ShowVersion(QCommandLineParser* self);
QTLIBC_API void QCommandLineParser_ShowHelp(QCommandLineParser* self);
QTLIBC_API libqt_string QCommandLineParser_HelpText(const QCommandLineParser* self);
QTLIBC_API libqt_string QCommandLineParser_Tr2(const char* sourceText, const char* disambiguation);
QTLIBC_API libqt_string QCommandLineParser_Tr3(const char* sourceText, const char* disambiguation, int n);
QTLIBC_API void QCommandLineParser_AddPositionalArgument3(QCommandLineParser* self, libqt_string name, libqt_string description, libqt_string syntax);
QTLIBC_API void QCommandLineParser_ShowHelp1(QCommandLineParser* self, int exitCode);
QTLIBC_API void QCommandLineParser_Delete(QCommandLineParser* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
