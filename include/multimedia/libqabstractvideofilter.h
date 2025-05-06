#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQABSTRACTVIDEOFILTER_H
#define SRC_MULTIMEDIAC_LIBQABSTRACTVIDEOFILTER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAbstractVideoFilter QAbstractVideoFilter;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVideoFilterRunnable QVideoFilterRunnable;
typedef struct QVideoFrame QVideoFrame;
typedef struct QVideoSurfaceFormat QVideoSurfaceFormat;
#endif

#ifdef __cplusplus
typedef QVideoFilterRunnable::RunFlag RunFlag;   // C++ enum
typedef QVideoFilterRunnable::RunFlags RunFlags; // C++ QFlags
#else
typedef int RunFlag;  // C ABI enum
typedef int RunFlags; // C ABI QFlags
#endif

QVideoFrame* QVideoFilterRunnable_Run(QVideoFilterRunnable* self, QVideoFrame* input, QVideoSurfaceFormat* surfaceFormat, int flags);
void QVideoFilterRunnable_OperatorAssign(QVideoFilterRunnable* self, QVideoFilterRunnable* param1);
void QVideoFilterRunnable_Delete(QVideoFilterRunnable* self);

QAbstractVideoFilter* QAbstractVideoFilter_new();
QAbstractVideoFilter* QAbstractVideoFilter_new2(QObject* parent);
QMetaObject* QAbstractVideoFilter_MetaObject(const QAbstractVideoFilter* self);
void* QAbstractVideoFilter_Metacast(QAbstractVideoFilter* self, const char* param1);
int QAbstractVideoFilter_Metacall(QAbstractVideoFilter* self, int param1, int param2, void** param3);
void QAbstractVideoFilter_OnMetacall(QAbstractVideoFilter* self, intptr_t slot);
int QAbstractVideoFilter_QBaseMetacall(QAbstractVideoFilter* self, int param1, int param2, void** param3);
libqt_string QAbstractVideoFilter_Tr(const char* s);
libqt_string QAbstractVideoFilter_TrUtf8(const char* s);
bool QAbstractVideoFilter_IsActive(const QAbstractVideoFilter* self);
void QAbstractVideoFilter_SetActive(QAbstractVideoFilter* self, bool v);
QVideoFilterRunnable* QAbstractVideoFilter_CreateFilterRunnable(QAbstractVideoFilter* self);
void QAbstractVideoFilter_OnCreateFilterRunnable(QAbstractVideoFilter* self, intptr_t slot);
QVideoFilterRunnable* QAbstractVideoFilter_QBaseCreateFilterRunnable(QAbstractVideoFilter* self);
void QAbstractVideoFilter_ActiveChanged(QAbstractVideoFilter* self);
void QAbstractVideoFilter_Connect_ActiveChanged(QAbstractVideoFilter* self, intptr_t slot);
libqt_string QAbstractVideoFilter_Tr2(const char* s, const char* c);
libqt_string QAbstractVideoFilter_Tr3(const char* s, const char* c, int n);
libqt_string QAbstractVideoFilter_TrUtf82(const char* s, const char* c);
libqt_string QAbstractVideoFilter_TrUtf83(const char* s, const char* c, int n);
bool QAbstractVideoFilter_Event(QAbstractVideoFilter* self, QEvent* event);
void QAbstractVideoFilter_OnEvent(QAbstractVideoFilter* self, intptr_t slot);
bool QAbstractVideoFilter_QBaseEvent(QAbstractVideoFilter* self, QEvent* event);
bool QAbstractVideoFilter_EventFilter(QAbstractVideoFilter* self, QObject* watched, QEvent* event);
void QAbstractVideoFilter_OnEventFilter(QAbstractVideoFilter* self, intptr_t slot);
bool QAbstractVideoFilter_QBaseEventFilter(QAbstractVideoFilter* self, QObject* watched, QEvent* event);
void QAbstractVideoFilter_TimerEvent(QAbstractVideoFilter* self, QTimerEvent* event);
void QAbstractVideoFilter_OnTimerEvent(QAbstractVideoFilter* self, intptr_t slot);
void QAbstractVideoFilter_QBaseTimerEvent(QAbstractVideoFilter* self, QTimerEvent* event);
void QAbstractVideoFilter_ChildEvent(QAbstractVideoFilter* self, QChildEvent* event);
void QAbstractVideoFilter_OnChildEvent(QAbstractVideoFilter* self, intptr_t slot);
void QAbstractVideoFilter_QBaseChildEvent(QAbstractVideoFilter* self, QChildEvent* event);
void QAbstractVideoFilter_CustomEvent(QAbstractVideoFilter* self, QEvent* event);
void QAbstractVideoFilter_OnCustomEvent(QAbstractVideoFilter* self, intptr_t slot);
void QAbstractVideoFilter_QBaseCustomEvent(QAbstractVideoFilter* self, QEvent* event);
void QAbstractVideoFilter_ConnectNotify(QAbstractVideoFilter* self, QMetaMethod* signal);
void QAbstractVideoFilter_OnConnectNotify(QAbstractVideoFilter* self, intptr_t slot);
void QAbstractVideoFilter_QBaseConnectNotify(QAbstractVideoFilter* self, QMetaMethod* signal);
void QAbstractVideoFilter_DisconnectNotify(QAbstractVideoFilter* self, QMetaMethod* signal);
void QAbstractVideoFilter_OnDisconnectNotify(QAbstractVideoFilter* self, intptr_t slot);
void QAbstractVideoFilter_QBaseDisconnectNotify(QAbstractVideoFilter* self, QMetaMethod* signal);
QObject* QAbstractVideoFilter_Sender(const QAbstractVideoFilter* self);
void QAbstractVideoFilter_OnSender(const QAbstractVideoFilter* self, intptr_t slot);
QObject* QAbstractVideoFilter_QBaseSender(const QAbstractVideoFilter* self);
int QAbstractVideoFilter_SenderSignalIndex(const QAbstractVideoFilter* self);
void QAbstractVideoFilter_OnSenderSignalIndex(const QAbstractVideoFilter* self, intptr_t slot);
int QAbstractVideoFilter_QBaseSenderSignalIndex(const QAbstractVideoFilter* self);
int QAbstractVideoFilter_Receivers(const QAbstractVideoFilter* self, const char* signal);
void QAbstractVideoFilter_OnReceivers(const QAbstractVideoFilter* self, intptr_t slot);
int QAbstractVideoFilter_QBaseReceivers(const QAbstractVideoFilter* self, const char* signal);
bool QAbstractVideoFilter_IsSignalConnected(const QAbstractVideoFilter* self, QMetaMethod* signal);
void QAbstractVideoFilter_OnIsSignalConnected(const QAbstractVideoFilter* self, intptr_t slot);
bool QAbstractVideoFilter_QBaseIsSignalConnected(const QAbstractVideoFilter* self, QMetaMethod* signal);
void QAbstractVideoFilter_Delete(QAbstractVideoFilter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
