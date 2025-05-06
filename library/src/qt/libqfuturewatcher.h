#pragma once
#ifndef SRC_QTC_LIBQFUTUREWATCHER_H
#define SRC_QTC_LIBQFUTUREWATCHER_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFutureWatcherBase QFutureWatcherBase;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QMetaObject* QFutureWatcherBase_MetaObject(const QFutureWatcherBase* self);
QTLIBC_API void* QFutureWatcherBase_Metacast(QFutureWatcherBase* self, const char* param1);
QTLIBC_API int QFutureWatcherBase_Metacall(QFutureWatcherBase* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QFutureWatcherBase_Tr(const char* s);
QTLIBC_API int QFutureWatcherBase_ProgressValue(const QFutureWatcherBase* self);
QTLIBC_API int QFutureWatcherBase_ProgressMinimum(const QFutureWatcherBase* self);
QTLIBC_API int QFutureWatcherBase_ProgressMaximum(const QFutureWatcherBase* self);
QTLIBC_API libqt_string QFutureWatcherBase_ProgressText(const QFutureWatcherBase* self);
QTLIBC_API bool QFutureWatcherBase_IsStarted(const QFutureWatcherBase* self);
QTLIBC_API bool QFutureWatcherBase_IsFinished(const QFutureWatcherBase* self);
QTLIBC_API bool QFutureWatcherBase_IsRunning(const QFutureWatcherBase* self);
QTLIBC_API bool QFutureWatcherBase_IsCanceled(const QFutureWatcherBase* self);
QTLIBC_API bool QFutureWatcherBase_IsPaused(const QFutureWatcherBase* self);
QTLIBC_API bool QFutureWatcherBase_IsSuspending(const QFutureWatcherBase* self);
QTLIBC_API bool QFutureWatcherBase_IsSuspended(const QFutureWatcherBase* self);
QTLIBC_API void QFutureWatcherBase_WaitForFinished(QFutureWatcherBase* self);
QTLIBC_API void QFutureWatcherBase_SetPendingResultsLimit(QFutureWatcherBase* self, int limit);
QTLIBC_API bool QFutureWatcherBase_Event(QFutureWatcherBase* self, QEvent* event);
QTLIBC_API void QFutureWatcherBase_Started(QFutureWatcherBase* self);
QTLIBC_API void QFutureWatcherBase_Connect_Started(QFutureWatcherBase* self, intptr_t slot);
QTLIBC_API void QFutureWatcherBase_Finished(QFutureWatcherBase* self);
QTLIBC_API void QFutureWatcherBase_Connect_Finished(QFutureWatcherBase* self, intptr_t slot);
QTLIBC_API void QFutureWatcherBase_Canceled(QFutureWatcherBase* self);
QTLIBC_API void QFutureWatcherBase_Connect_Canceled(QFutureWatcherBase* self, intptr_t slot);
QTLIBC_API void QFutureWatcherBase_Paused(QFutureWatcherBase* self);
QTLIBC_API void QFutureWatcherBase_Connect_Paused(QFutureWatcherBase* self, intptr_t slot);
QTLIBC_API void QFutureWatcherBase_Suspending(QFutureWatcherBase* self);
QTLIBC_API void QFutureWatcherBase_Connect_Suspending(QFutureWatcherBase* self, intptr_t slot);
QTLIBC_API void QFutureWatcherBase_Suspended(QFutureWatcherBase* self);
QTLIBC_API void QFutureWatcherBase_Connect_Suspended(QFutureWatcherBase* self, intptr_t slot);
QTLIBC_API void QFutureWatcherBase_Resumed(QFutureWatcherBase* self);
QTLIBC_API void QFutureWatcherBase_Connect_Resumed(QFutureWatcherBase* self, intptr_t slot);
QTLIBC_API void QFutureWatcherBase_ResultReadyAt(QFutureWatcherBase* self, int resultIndex);
QTLIBC_API void QFutureWatcherBase_Connect_ResultReadyAt(QFutureWatcherBase* self, intptr_t slot);
QTLIBC_API void QFutureWatcherBase_ResultsReadyAt(QFutureWatcherBase* self, int beginIndex, int endIndex);
QTLIBC_API void QFutureWatcherBase_Connect_ResultsReadyAt(QFutureWatcherBase* self, intptr_t slot);
QTLIBC_API void QFutureWatcherBase_ProgressRangeChanged(QFutureWatcherBase* self, int minimum, int maximum);
QTLIBC_API void QFutureWatcherBase_Connect_ProgressRangeChanged(QFutureWatcherBase* self, intptr_t slot);
QTLIBC_API void QFutureWatcherBase_ProgressValueChanged(QFutureWatcherBase* self, int progressValue);
QTLIBC_API void QFutureWatcherBase_Connect_ProgressValueChanged(QFutureWatcherBase* self, intptr_t slot);
QTLIBC_API void QFutureWatcherBase_ProgressTextChanged(QFutureWatcherBase* self, libqt_string progressText);
QTLIBC_API void QFutureWatcherBase_Connect_ProgressTextChanged(QFutureWatcherBase* self, intptr_t slot);
QTLIBC_API void QFutureWatcherBase_Cancel(QFutureWatcherBase* self);
QTLIBC_API void QFutureWatcherBase_SetSuspended(QFutureWatcherBase* self, bool suspendVal);
QTLIBC_API void QFutureWatcherBase_Suspend(QFutureWatcherBase* self);
QTLIBC_API void QFutureWatcherBase_Resume(QFutureWatcherBase* self);
QTLIBC_API void QFutureWatcherBase_ToggleSuspended(QFutureWatcherBase* self);
QTLIBC_API void QFutureWatcherBase_SetPaused(QFutureWatcherBase* self, bool paused);
QTLIBC_API void QFutureWatcherBase_Pause(QFutureWatcherBase* self);
QTLIBC_API void QFutureWatcherBase_TogglePaused(QFutureWatcherBase* self);
QTLIBC_API libqt_string QFutureWatcherBase_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QFutureWatcherBase_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QFutureWatcherBase_EventFilter(QFutureWatcherBase* self, QObject* watched, QEvent* event);
QTLIBC_API void QFutureWatcherBase_Delete(QFutureWatcherBase* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
