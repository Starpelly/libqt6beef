#pragma once
#ifndef SRCC_LIBQREGULAREXPRESSION_H
#define SRCC_LIBQREGULAREXPRESSION_H

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
typedef struct QRegularExpression QRegularExpression;
typedef struct QRegularExpressionMatch QRegularExpressionMatch;
typedef struct QRegularExpressionMatchIterator QRegularExpressionMatchIterator;
#endif

#ifdef __cplusplus
typedef QRegularExpression::MatchOption MatchOption;                             // C++ enum
typedef QRegularExpression::MatchOptions MatchOptions;                           // C++ QFlags
typedef QRegularExpression::MatchType MatchType;                                 // C++ enum
typedef QRegularExpression::PatternOption PatternOption;                         // C++ enum
typedef QRegularExpression::PatternOptions PatternOptions;                       // C++ QFlags
typedef QRegularExpression::WildcardConversionOption WildcardConversionOption;   // C++ enum
typedef QRegularExpression::WildcardConversionOptions WildcardConversionOptions; // C++ QFlags
#else
typedef int MatchOption;               // C ABI enum
typedef int MatchOptions;              // C ABI QFlags
typedef int MatchType;                 // C ABI enum
typedef int PatternOption;             // C ABI enum
typedef int PatternOptions;            // C ABI QFlags
typedef int WildcardConversionOption;  // C ABI enum
typedef int WildcardConversionOptions; // C ABI QFlags
#endif

QTLIBC_API QRegularExpression* QRegularExpression_new();
QTLIBC_API QRegularExpression* QRegularExpression_new2(libqt_string pattern);
QTLIBC_API QRegularExpression* QRegularExpression_new3(QRegularExpression* re);
QTLIBC_API QRegularExpression* QRegularExpression_new4(libqt_string pattern, int options);
QTLIBC_API int QRegularExpression_PatternOptions(const QRegularExpression* self);
QTLIBC_API void QRegularExpression_SetPatternOptions(QRegularExpression* self, int options);
QTLIBC_API void QRegularExpression_OperatorAssign(QRegularExpression* self, QRegularExpression* re);
QTLIBC_API void QRegularExpression_Swap(QRegularExpression* self, QRegularExpression* other);
QTLIBC_API libqt_string QRegularExpression_Pattern(const QRegularExpression* self);
QTLIBC_API void QRegularExpression_SetPattern(QRegularExpression* self, libqt_string pattern);
QTLIBC_API bool QRegularExpression_IsValid(const QRegularExpression* self);
QTLIBC_API ptrdiff_t QRegularExpression_PatternErrorOffset(const QRegularExpression* self);
QTLIBC_API libqt_string QRegularExpression_ErrorString(const QRegularExpression* self);
QTLIBC_API int QRegularExpression_CaptureCount(const QRegularExpression* self);
QTLIBC_API libqt_list /* of libqt_string */ QRegularExpression_NamedCaptureGroups(const QRegularExpression* self);
QTLIBC_API QRegularExpressionMatch* QRegularExpression_Match(const QRegularExpression* self, libqt_string subject);
QTLIBC_API QRegularExpressionMatchIterator* QRegularExpression_GlobalMatch(const QRegularExpression* self, libqt_string subject);
QTLIBC_API void QRegularExpression_Optimize(const QRegularExpression* self);
QTLIBC_API libqt_string QRegularExpression_Escape(libqt_string str);
QTLIBC_API libqt_string QRegularExpression_WildcardToRegularExpression(libqt_string str);
QTLIBC_API libqt_string QRegularExpression_AnchoredPattern(libqt_string expression);
QTLIBC_API bool QRegularExpression_OperatorEqual(const QRegularExpression* self, QRegularExpression* re);
QTLIBC_API bool QRegularExpression_OperatorNotEqual(const QRegularExpression* self, QRegularExpression* re);
QTLIBC_API QRegularExpressionMatch* QRegularExpression_Match2(const QRegularExpression* self, libqt_string subject, ptrdiff_t offset);
QTLIBC_API QRegularExpressionMatch* QRegularExpression_Match3(const QRegularExpression* self, libqt_string subject, ptrdiff_t offset, int matchType);
QTLIBC_API QRegularExpressionMatch* QRegularExpression_Match4(const QRegularExpression* self, libqt_string subject, ptrdiff_t offset, int matchType, int matchOptions);
QTLIBC_API QRegularExpressionMatchIterator* QRegularExpression_GlobalMatch2(const QRegularExpression* self, libqt_string subject, ptrdiff_t offset);
QTLIBC_API QRegularExpressionMatchIterator* QRegularExpression_GlobalMatch3(const QRegularExpression* self, libqt_string subject, ptrdiff_t offset, int matchType);
QTLIBC_API QRegularExpressionMatchIterator* QRegularExpression_GlobalMatch4(const QRegularExpression* self, libqt_string subject, ptrdiff_t offset, int matchType, int matchOptions);
QTLIBC_API libqt_string QRegularExpression_WildcardToRegularExpression2(libqt_string str, int options);
QTLIBC_API void QRegularExpression_Delete(QRegularExpression* self);

QTLIBC_API QRegularExpressionMatch* QRegularExpressionMatch_new();
QTLIBC_API QRegularExpressionMatch* QRegularExpressionMatch_new2(QRegularExpressionMatch* match);
QTLIBC_API void QRegularExpressionMatch_OperatorAssign(QRegularExpressionMatch* self, QRegularExpressionMatch* match);
QTLIBC_API void QRegularExpressionMatch_Swap(QRegularExpressionMatch* self, QRegularExpressionMatch* other);
QTLIBC_API QRegularExpression* QRegularExpressionMatch_RegularExpression(const QRegularExpressionMatch* self);
QTLIBC_API int QRegularExpressionMatch_MatchType(const QRegularExpressionMatch* self);
QTLIBC_API int QRegularExpressionMatch_MatchOptions(const QRegularExpressionMatch* self);
QTLIBC_API bool QRegularExpressionMatch_HasMatch(const QRegularExpressionMatch* self);
QTLIBC_API bool QRegularExpressionMatch_HasPartialMatch(const QRegularExpressionMatch* self);
QTLIBC_API bool QRegularExpressionMatch_IsValid(const QRegularExpressionMatch* self);
QTLIBC_API int QRegularExpressionMatch_LastCapturedIndex(const QRegularExpressionMatch* self);
QTLIBC_API bool QRegularExpressionMatch_HasCaptured(const QRegularExpressionMatch* self, libqt_string name);
QTLIBC_API bool QRegularExpressionMatch_HasCapturedWithNth(const QRegularExpressionMatch* self, int nth);
QTLIBC_API libqt_string QRegularExpressionMatch_Captured(const QRegularExpressionMatch* self);
QTLIBC_API libqt_string QRegularExpressionMatch_CapturedWithName(const QRegularExpressionMatch* self, libqt_string name);
QTLIBC_API libqt_list /* of libqt_string */ QRegularExpressionMatch_CapturedTexts(const QRegularExpressionMatch* self);
QTLIBC_API ptrdiff_t QRegularExpressionMatch_CapturedStart(const QRegularExpressionMatch* self);
QTLIBC_API ptrdiff_t QRegularExpressionMatch_CapturedLength(const QRegularExpressionMatch* self);
QTLIBC_API ptrdiff_t QRegularExpressionMatch_CapturedEnd(const QRegularExpressionMatch* self);
QTLIBC_API ptrdiff_t QRegularExpressionMatch_CapturedStartWithName(const QRegularExpressionMatch* self, libqt_string name);
QTLIBC_API ptrdiff_t QRegularExpressionMatch_CapturedLengthWithName(const QRegularExpressionMatch* self, libqt_string name);
QTLIBC_API ptrdiff_t QRegularExpressionMatch_CapturedEndWithName(const QRegularExpressionMatch* self, libqt_string name);
QTLIBC_API libqt_string QRegularExpressionMatch_Captured1(const QRegularExpressionMatch* self, int nth);
QTLIBC_API ptrdiff_t QRegularExpressionMatch_CapturedStart1(const QRegularExpressionMatch* self, int nth);
QTLIBC_API ptrdiff_t QRegularExpressionMatch_CapturedLength1(const QRegularExpressionMatch* self, int nth);
QTLIBC_API ptrdiff_t QRegularExpressionMatch_CapturedEnd1(const QRegularExpressionMatch* self, int nth);
QTLIBC_API void QRegularExpressionMatch_Delete(QRegularExpressionMatch* self);

QTLIBC_API QRegularExpressionMatchIterator* QRegularExpressionMatchIterator_new();
QTLIBC_API QRegularExpressionMatchIterator* QRegularExpressionMatchIterator_new2(QRegularExpressionMatchIterator* iterator);
QTLIBC_API void QRegularExpressionMatchIterator_OperatorAssign(QRegularExpressionMatchIterator* self, QRegularExpressionMatchIterator* iterator);
QTLIBC_API void QRegularExpressionMatchIterator_Swap(QRegularExpressionMatchIterator* self, QRegularExpressionMatchIterator* other);
QTLIBC_API bool QRegularExpressionMatchIterator_IsValid(const QRegularExpressionMatchIterator* self);
QTLIBC_API bool QRegularExpressionMatchIterator_HasNext(const QRegularExpressionMatchIterator* self);
QTLIBC_API QRegularExpressionMatch* QRegularExpressionMatchIterator_Next(QRegularExpressionMatchIterator* self);
QTLIBC_API QRegularExpressionMatch* QRegularExpressionMatchIterator_PeekNext(const QRegularExpressionMatchIterator* self);
QTLIBC_API QRegularExpression* QRegularExpressionMatchIterator_RegularExpression(const QRegularExpressionMatchIterator* self);
QTLIBC_API int QRegularExpressionMatchIterator_MatchType(const QRegularExpressionMatchIterator* self);
QTLIBC_API int QRegularExpressionMatchIterator_MatchOptions(const QRegularExpressionMatchIterator* self);
QTLIBC_API void QRegularExpressionMatchIterator_Delete(QRegularExpressionMatchIterator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
