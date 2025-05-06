#pragma once
#ifndef SRC_QTC_LIBQTEXTBOUNDARYFINDER_H
#define SRC_QTC_LIBQTEXTBOUNDARYFINDER_H

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
typedef struct QChar QChar;
typedef struct QTextBoundaryFinder QTextBoundaryFinder;
#endif

#ifdef __cplusplus
typedef QTextBoundaryFinder::BoundaryReason BoundaryReason;   // C++ enum
typedef QTextBoundaryFinder::BoundaryReasons BoundaryReasons; // C++ QFlags
typedef QTextBoundaryFinder::BoundaryType BoundaryType;       // C++ enum
#else
typedef int BoundaryReason;  // C ABI enum
typedef int BoundaryReasons; // C ABI QFlags
typedef int BoundaryType;    // C ABI enum
#endif

QTLIBC_API QTextBoundaryFinder* QTextBoundaryFinder_new();
QTLIBC_API QTextBoundaryFinder* QTextBoundaryFinder_new2(QTextBoundaryFinder* other);
QTLIBC_API QTextBoundaryFinder* QTextBoundaryFinder_new3(int typeVal, libqt_string stringVal);
QTLIBC_API QTextBoundaryFinder* QTextBoundaryFinder_new4(int typeVal, QChar* chars, ptrdiff_t length);
QTLIBC_API QTextBoundaryFinder* QTextBoundaryFinder_new5(int typeVal, QChar* chars, ptrdiff_t length, unsigned char* buffer);
QTLIBC_API QTextBoundaryFinder* QTextBoundaryFinder_new6(int typeVal, QChar* chars, ptrdiff_t length, unsigned char* buffer, ptrdiff_t bufferSize);
QTLIBC_API void QTextBoundaryFinder_OperatorAssign(QTextBoundaryFinder* self, QTextBoundaryFinder* other);
QTLIBC_API bool QTextBoundaryFinder_IsValid(const QTextBoundaryFinder* self);
QTLIBC_API int QTextBoundaryFinder_Type(const QTextBoundaryFinder* self);
QTLIBC_API libqt_string QTextBoundaryFinder_String(const QTextBoundaryFinder* self);
QTLIBC_API void QTextBoundaryFinder_ToStart(QTextBoundaryFinder* self);
QTLIBC_API void QTextBoundaryFinder_ToEnd(QTextBoundaryFinder* self);
QTLIBC_API ptrdiff_t QTextBoundaryFinder_Position(const QTextBoundaryFinder* self);
QTLIBC_API void QTextBoundaryFinder_SetPosition(QTextBoundaryFinder* self, ptrdiff_t position);
QTLIBC_API ptrdiff_t QTextBoundaryFinder_ToNextBoundary(QTextBoundaryFinder* self);
QTLIBC_API ptrdiff_t QTextBoundaryFinder_ToPreviousBoundary(QTextBoundaryFinder* self);
QTLIBC_API bool QTextBoundaryFinder_IsAtBoundary(const QTextBoundaryFinder* self);
QTLIBC_API int QTextBoundaryFinder_BoundaryReasons(const QTextBoundaryFinder* self);
QTLIBC_API void QTextBoundaryFinder_Delete(QTextBoundaryFinder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
