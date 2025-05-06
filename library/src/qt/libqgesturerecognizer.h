#pragma once
#ifndef SRC_QTC_LIBQGESTURERECOGNIZER_H
#define SRC_QTC_LIBQGESTURERECOGNIZER_H

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
typedef struct QEvent QEvent;
typedef struct QGesture QGesture;
typedef struct QGestureRecognizer QGestureRecognizer;
typedef struct QObject QObject;
#endif

#ifdef __cplusplus
typedef QGestureRecognizer::Result Result;         // C++ QFlags
typedef QGestureRecognizer::ResultFlag ResultFlag; // C++ enum
#else
typedef int Result;     // C ABI QFlags
typedef int ResultFlag; // C ABI enum
#endif

QTLIBC_API QGestureRecognizer* QGestureRecognizer_new();
QTLIBC_API QGesture* QGestureRecognizer_Create(QGestureRecognizer* self, QObject* target);
QTLIBC_API void QGestureRecognizer_OnCreate(QGestureRecognizer* self, intptr_t slot);
QTLIBC_API QGesture* QGestureRecognizer_QBaseCreate(QGestureRecognizer* self, QObject* target);
QTLIBC_API int QGestureRecognizer_Recognize(QGestureRecognizer* self, QGesture* state, QObject* watched, QEvent* event);
QTLIBC_API void QGestureRecognizer_OnRecognize(QGestureRecognizer* self, intptr_t slot);
QTLIBC_API int QGestureRecognizer_QBaseRecognize(QGestureRecognizer* self, QGesture* state, QObject* watched, QEvent* event);
QTLIBC_API void QGestureRecognizer_Reset(QGestureRecognizer* self, QGesture* state);
QTLIBC_API void QGestureRecognizer_OnReset(QGestureRecognizer* self, intptr_t slot);
QTLIBC_API void QGestureRecognizer_QBaseReset(QGestureRecognizer* self, QGesture* state);
QTLIBC_API int QGestureRecognizer_RegisterRecognizer(QGestureRecognizer* recognizer);
QTLIBC_API void QGestureRecognizer_UnregisterRecognizer(int typeVal);
QTLIBC_API void QGestureRecognizer_OperatorAssign(QGestureRecognizer* self, QGestureRecognizer* param1);
QTLIBC_API void QGestureRecognizer_Delete(QGestureRecognizer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
