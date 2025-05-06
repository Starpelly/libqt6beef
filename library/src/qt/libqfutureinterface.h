#pragma once
#ifndef SRC_QTC_LIBQFUTUREINTERFACE_H
#define SRC_QTC_LIBQFUTUREINTERFACE_H

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
typedef struct QFutureInterfaceBase QFutureInterfaceBase;
typedef struct QMutex QMutex;
typedef struct QRunnable QRunnable;
typedef struct QThreadPool QThreadPool;
#endif

#ifdef __cplusplus
typedef QFutureInterfaceBase::State State; // C++ enum
#else
typedef int CancelMode; // C ABI enum
typedef int State;      // C ABI enum
#endif

QTLIBC_API QFutureInterfaceBase* QFutureInterfaceBase_new();
QTLIBC_API QFutureInterfaceBase* QFutureInterfaceBase_new2(QFutureInterfaceBase* other);
QTLIBC_API QFutureInterfaceBase* QFutureInterfaceBase_new3(int initialState);
QTLIBC_API void QFutureInterfaceBase_OperatorAssign(QFutureInterfaceBase* self, QFutureInterfaceBase* other);
QTLIBC_API void QFutureInterfaceBase_ReportStarted(QFutureInterfaceBase* self);
QTLIBC_API void QFutureInterfaceBase_ReportFinished(QFutureInterfaceBase* self);
QTLIBC_API void QFutureInterfaceBase_ReportCanceled(QFutureInterfaceBase* self);
QTLIBC_API void QFutureInterfaceBase_ReportResultsReady(QFutureInterfaceBase* self, int beginIndex, int endIndex);
QTLIBC_API void QFutureInterfaceBase_SetRunnable(QFutureInterfaceBase* self, QRunnable* runnable);
QTLIBC_API void QFutureInterfaceBase_SetThreadPool(QFutureInterfaceBase* self, QThreadPool* pool);
QTLIBC_API QThreadPool* QFutureInterfaceBase_ThreadPool(const QFutureInterfaceBase* self);
QTLIBC_API void QFutureInterfaceBase_SetFilterMode(QFutureInterfaceBase* self, bool enable);
QTLIBC_API void QFutureInterfaceBase_SetProgressRange(QFutureInterfaceBase* self, int minimum, int maximum);
QTLIBC_API int QFutureInterfaceBase_ProgressMinimum(const QFutureInterfaceBase* self);
QTLIBC_API int QFutureInterfaceBase_ProgressMaximum(const QFutureInterfaceBase* self);
QTLIBC_API bool QFutureInterfaceBase_IsProgressUpdateNeeded(const QFutureInterfaceBase* self);
QTLIBC_API void QFutureInterfaceBase_SetProgressValue(QFutureInterfaceBase* self, int progressValue);
QTLIBC_API int QFutureInterfaceBase_ProgressValue(const QFutureInterfaceBase* self);
QTLIBC_API void QFutureInterfaceBase_SetProgressValueAndText(QFutureInterfaceBase* self, int progressValue, libqt_string progressText);
QTLIBC_API libqt_string QFutureInterfaceBase_ProgressText(const QFutureInterfaceBase* self);
QTLIBC_API void QFutureInterfaceBase_SetExpectedResultCount(QFutureInterfaceBase* self, int resultCount);
QTLIBC_API int QFutureInterfaceBase_ExpectedResultCount(QFutureInterfaceBase* self);
QTLIBC_API int QFutureInterfaceBase_ResultCount(const QFutureInterfaceBase* self);
QTLIBC_API bool QFutureInterfaceBase_QueryState(const QFutureInterfaceBase* self, int state);
QTLIBC_API bool QFutureInterfaceBase_IsRunning(const QFutureInterfaceBase* self);
QTLIBC_API bool QFutureInterfaceBase_IsStarted(const QFutureInterfaceBase* self);
QTLIBC_API bool QFutureInterfaceBase_IsCanceled(const QFutureInterfaceBase* self);
QTLIBC_API bool QFutureInterfaceBase_IsFinished(const QFutureInterfaceBase* self);
QTLIBC_API bool QFutureInterfaceBase_IsPaused(const QFutureInterfaceBase* self);
QTLIBC_API void QFutureInterfaceBase_SetPaused(QFutureInterfaceBase* self, bool paused);
QTLIBC_API void QFutureInterfaceBase_TogglePaused(QFutureInterfaceBase* self);
QTLIBC_API bool QFutureInterfaceBase_IsSuspending(const QFutureInterfaceBase* self);
QTLIBC_API bool QFutureInterfaceBase_IsSuspended(const QFutureInterfaceBase* self);
QTLIBC_API bool QFutureInterfaceBase_IsThrottled(const QFutureInterfaceBase* self);
QTLIBC_API bool QFutureInterfaceBase_IsResultReadyAt(const QFutureInterfaceBase* self, int index);
QTLIBC_API bool QFutureInterfaceBase_IsValid(const QFutureInterfaceBase* self);
QTLIBC_API int QFutureInterfaceBase_LoadState(const QFutureInterfaceBase* self);
QTLIBC_API void QFutureInterfaceBase_Cancel(QFutureInterfaceBase* self);
QTLIBC_API void QFutureInterfaceBase_CancelAndFinish(QFutureInterfaceBase* self);
QTLIBC_API void QFutureInterfaceBase_SetSuspended(QFutureInterfaceBase* self, bool suspendVal);
QTLIBC_API void QFutureInterfaceBase_ToggleSuspended(QFutureInterfaceBase* self);
QTLIBC_API void QFutureInterfaceBase_ReportSuspended(const QFutureInterfaceBase* self);
QTLIBC_API void QFutureInterfaceBase_SetThrottled(QFutureInterfaceBase* self, bool enable);
QTLIBC_API void QFutureInterfaceBase_WaitForFinished(QFutureInterfaceBase* self);
QTLIBC_API bool QFutureInterfaceBase_WaitForNextResult(QFutureInterfaceBase* self);
QTLIBC_API void QFutureInterfaceBase_WaitForResult(QFutureInterfaceBase* self, int resultIndex);
QTLIBC_API void QFutureInterfaceBase_WaitForResume(QFutureInterfaceBase* self);
QTLIBC_API void QFutureInterfaceBase_SuspendIfRequested(QFutureInterfaceBase* self);
QTLIBC_API QMutex* QFutureInterfaceBase_Mutex(const QFutureInterfaceBase* self);
QTLIBC_API bool QFutureInterfaceBase_HasException(const QFutureInterfaceBase* self);
QTLIBC_API bool QFutureInterfaceBase_OperatorEqual(const QFutureInterfaceBase* self, QFutureInterfaceBase* other);
QTLIBC_API bool QFutureInterfaceBase_OperatorNotEqual(const QFutureInterfaceBase* self, QFutureInterfaceBase* other);
QTLIBC_API void QFutureInterfaceBase_Swap(QFutureInterfaceBase* self, QFutureInterfaceBase* other);
QTLIBC_API bool QFutureInterfaceBase_IsChainCanceled(const QFutureInterfaceBase* self);
QTLIBC_API void QFutureInterfaceBase_Delete(QFutureInterfaceBase* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
