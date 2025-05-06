#pragma once
#ifndef SRCC_LIBQREGEXP_H
#define SRCC_LIBQREGEXP_H

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
typedef struct QRegExp QRegExp;
#endif

#ifdef __cplusplus
typedef QRegExp::CaretMode CaretMode;         // C++ enum
typedef QRegExp::PatternSyntax PatternSyntax; // C++ enum
#else
typedef int CaretMode;     // C ABI enum
typedef int PatternSyntax; // C ABI enum
#endif

QRegExp* QRegExp_new();
QRegExp* QRegExp_new2(libqt_string pattern);
QRegExp* QRegExp_new3(QRegExp* rx);
QRegExp* QRegExp_new4(libqt_string pattern, int cs);
QRegExp* QRegExp_new5(libqt_string pattern, int cs, int syntax);
void QRegExp_OperatorAssign(QRegExp* self, QRegExp* rx);
void QRegExp_Swap(QRegExp* self, QRegExp* other);
bool QRegExp_OperatorEqual(const QRegExp* self, QRegExp* rx);
bool QRegExp_OperatorNotEqual(const QRegExp* self, QRegExp* rx);
bool QRegExp_IsEmpty(const QRegExp* self);
bool QRegExp_IsValid(const QRegExp* self);
libqt_string QRegExp_Pattern(const QRegExp* self);
void QRegExp_SetPattern(QRegExp* self, libqt_string pattern);
int QRegExp_CaseSensitivity(const QRegExp* self);
void QRegExp_SetCaseSensitivity(QRegExp* self, int cs);
int QRegExp_PatternSyntax(const QRegExp* self);
void QRegExp_SetPatternSyntax(QRegExp* self, int syntax);
bool QRegExp_IsMinimal(const QRegExp* self);
void QRegExp_SetMinimal(QRegExp* self, bool minimal);
bool QRegExp_ExactMatch(const QRegExp* self, libqt_string str);
int QRegExp_IndexIn(const QRegExp* self, libqt_string str);
int QRegExp_LastIndexIn(const QRegExp* self, libqt_string str);
int QRegExp_MatchedLength(const QRegExp* self);
int QRegExp_CaptureCount(const QRegExp* self);
libqt_list /* of libqt_string */ QRegExp_CapturedTexts(const QRegExp* self);
libqt_list /* of libqt_string */ QRegExp_CapturedTexts2(QRegExp* self);
libqt_string QRegExp_Cap(const QRegExp* self);
libqt_string QRegExp_Cap2(QRegExp* self);
int QRegExp_Pos(const QRegExp* self);
int QRegExp_Pos2(QRegExp* self);
libqt_string QRegExp_ErrorString(const QRegExp* self);
libqt_string QRegExp_ErrorString2(QRegExp* self);
libqt_string QRegExp_Escape(libqt_string str);
int QRegExp_IndexIn2(const QRegExp* self, libqt_string str, int offset);
int QRegExp_IndexIn3(const QRegExp* self, libqt_string str, int offset, int caretMode);
int QRegExp_LastIndexIn2(const QRegExp* self, libqt_string str, int offset);
int QRegExp_LastIndexIn3(const QRegExp* self, libqt_string str, int offset, int caretMode);
libqt_string QRegExp_Cap1(const QRegExp* self, int nth);
libqt_string QRegExp_Cap1WithNth(QRegExp* self, int nth);
int QRegExp_Pos1(const QRegExp* self, int nth);
int QRegExp_Pos1WithNth(QRegExp* self, int nth);
void QRegExp_Delete(QRegExp* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
