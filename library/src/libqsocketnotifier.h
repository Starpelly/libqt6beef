#pragma once
#ifndef SRCC_LIBQSOCKETNOTIFIER_H
#define SRCC_LIBQSOCKETNOTIFIER_H

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
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QSocketDescriptor QSocketDescriptor;
typedef struct QSocketNotifier QSocketNotifier;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QSocketDescriptor::DescriptorType DescriptorType; // C++ QFlags
typedef QSocketNotifier::Type Type;                       // C++ enum
#else
typedef int DescriptorType; // C ABI QFlags
typedef unsigned char Type; // C ABI enum
#endif

QTLIBC_API QSocketNotifier* QSocketNotifier_new(int param1);
QTLIBC_API QSocketNotifier* QSocketNotifier_new2(intptr_t socket, int param2);
QTLIBC_API QSocketNotifier* QSocketNotifier_new3(int param1, QObject* parent);
QTLIBC_API QSocketNotifier* QSocketNotifier_new4(intptr_t socket, int param2, QObject* parent);
QTLIBC_API QMetaObject* QSocketNotifier_MetaObject(const QSocketNotifier* self);
QTLIBC_API void* QSocketNotifier_Metacast(QSocketNotifier* self, const char* param1);
QTLIBC_API int QSocketNotifier_Metacall(QSocketNotifier* self, int param1, int param2, void** param3);
QTLIBC_API void QSocketNotifier_OnMetacall(QSocketNotifier* self, intptr_t slot);
QTLIBC_API int QSocketNotifier_QBaseMetacall(QSocketNotifier* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QSocketNotifier_Tr(const char* s);
QTLIBC_API void QSocketNotifier_SetSocket(QSocketNotifier* self, intptr_t socket);
QTLIBC_API intptr_t QSocketNotifier_Socket(const QSocketNotifier* self);
QTLIBC_API int QSocketNotifier_Type(const QSocketNotifier* self);
QTLIBC_API bool QSocketNotifier_IsValid(const QSocketNotifier* self);
QTLIBC_API bool QSocketNotifier_IsEnabled(const QSocketNotifier* self);
QTLIBC_API void QSocketNotifier_SetEnabled(QSocketNotifier* self, bool enabled);
QTLIBC_API bool QSocketNotifier_Event(QSocketNotifier* self, QEvent* param1);
QTLIBC_API void QSocketNotifier_OnEvent(QSocketNotifier* self, intptr_t slot);
QTLIBC_API bool QSocketNotifier_QBaseEvent(QSocketNotifier* self, QEvent* param1);
QTLIBC_API libqt_string QSocketNotifier_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QSocketNotifier_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QSocketNotifier_EventFilter(QSocketNotifier* self, QObject* watched, QEvent* event);
QTLIBC_API void QSocketNotifier_OnEventFilter(QSocketNotifier* self, intptr_t slot);
QTLIBC_API bool QSocketNotifier_QBaseEventFilter(QSocketNotifier* self, QObject* watched, QEvent* event);
QTLIBC_API void QSocketNotifier_TimerEvent(QSocketNotifier* self, QTimerEvent* event);
QTLIBC_API void QSocketNotifier_OnTimerEvent(QSocketNotifier* self, intptr_t slot);
QTLIBC_API void QSocketNotifier_QBaseTimerEvent(QSocketNotifier* self, QTimerEvent* event);
QTLIBC_API void QSocketNotifier_ChildEvent(QSocketNotifier* self, QChildEvent* event);
QTLIBC_API void QSocketNotifier_OnChildEvent(QSocketNotifier* self, intptr_t slot);
QTLIBC_API void QSocketNotifier_QBaseChildEvent(QSocketNotifier* self, QChildEvent* event);
QTLIBC_API void QSocketNotifier_CustomEvent(QSocketNotifier* self, QEvent* event);
QTLIBC_API void QSocketNotifier_OnCustomEvent(QSocketNotifier* self, intptr_t slot);
QTLIBC_API void QSocketNotifier_QBaseCustomEvent(QSocketNotifier* self, QEvent* event);
QTLIBC_API void QSocketNotifier_ConnectNotify(QSocketNotifier* self, QMetaMethod* signal);
QTLIBC_API void QSocketNotifier_OnConnectNotify(QSocketNotifier* self, intptr_t slot);
QTLIBC_API void QSocketNotifier_QBaseConnectNotify(QSocketNotifier* self, QMetaMethod* signal);
QTLIBC_API void QSocketNotifier_DisconnectNotify(QSocketNotifier* self, QMetaMethod* signal);
QTLIBC_API void QSocketNotifier_OnDisconnectNotify(QSocketNotifier* self, intptr_t slot);
QTLIBC_API void QSocketNotifier_QBaseDisconnectNotify(QSocketNotifier* self, QMetaMethod* signal);
QTLIBC_API QObject* QSocketNotifier_Sender(const QSocketNotifier* self);
QTLIBC_API void QSocketNotifier_OnSender(const QSocketNotifier* self, intptr_t slot);
QTLIBC_API QObject* QSocketNotifier_QBaseSender(const QSocketNotifier* self);
QTLIBC_API int QSocketNotifier_SenderSignalIndex(const QSocketNotifier* self);
QTLIBC_API void QSocketNotifier_OnSenderSignalIndex(const QSocketNotifier* self, intptr_t slot);
QTLIBC_API int QSocketNotifier_QBaseSenderSignalIndex(const QSocketNotifier* self);
QTLIBC_API int QSocketNotifier_Receivers(const QSocketNotifier* self, const char* signal);
QTLIBC_API void QSocketNotifier_OnReceivers(const QSocketNotifier* self, intptr_t slot);
QTLIBC_API int QSocketNotifier_QBaseReceivers(const QSocketNotifier* self, const char* signal);
QTLIBC_API bool QSocketNotifier_IsSignalConnected(const QSocketNotifier* self, QMetaMethod* signal);
QTLIBC_API void QSocketNotifier_OnIsSignalConnected(const QSocketNotifier* self, intptr_t slot);
QTLIBC_API bool QSocketNotifier_QBaseIsSignalConnected(const QSocketNotifier* self, QMetaMethod* signal);
QTLIBC_API void QSocketNotifier_Delete(QSocketNotifier* self);

QTLIBC_API QSocketDescriptor* QSocketDescriptor_new(QSocketDescriptor* other);
QTLIBC_API QSocketDescriptor* QSocketDescriptor_new2(QSocketDescriptor* other);
QTLIBC_API QSocketDescriptor* QSocketDescriptor_new3();
QTLIBC_API QSocketDescriptor* QSocketDescriptor_new4(QSocketDescriptor* param1);
QTLIBC_API QSocketDescriptor* QSocketDescriptor_new5(int descriptor);
QTLIBC_API void QSocketDescriptor_CopyAssign(QSocketDescriptor* self, QSocketDescriptor* other);
QTLIBC_API void QSocketDescriptor_MoveAssign(QSocketDescriptor* self, QSocketDescriptor* other);
QTLIBC_API int QSocketDescriptor_ToInt(const QSocketDescriptor* self);
QTLIBC_API bool QSocketDescriptor_IsValid(const QSocketDescriptor* self);
QTLIBC_API void QSocketDescriptor_Delete(QSocketDescriptor* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
