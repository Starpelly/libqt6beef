#pragma once
#ifndef SRC_NETWORKC_LIBQNETWORKSESSION_H
#define SRC_NETWORKC_LIBQNETWORKSESSION_H

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
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QNetworkConfiguration QNetworkConfiguration;
typedef struct QNetworkInterface QNetworkInterface;
typedef struct QNetworkSession QNetworkSession;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QNetworkSession::SessionError SessionError;   // C++ enum
typedef QNetworkSession::State State;                 // C++ enum
typedef QNetworkSession::UsagePolicies UsagePolicies; // C++ QFlags
typedef QNetworkSession::UsagePolicy UsagePolicy;     // C++ enum
#else
typedef int SessionError;  // C ABI enum
typedef int State;         // C ABI enum
typedef int UsagePolicies; // C ABI QFlags
typedef int UsagePolicy;   // C ABI enum
#endif

QNetworkSession* QNetworkSession_new(QNetworkConfiguration* connConfig);
QNetworkSession* QNetworkSession_new2(QNetworkConfiguration* connConfig, QObject* parent);
QMetaObject* QNetworkSession_MetaObject(const QNetworkSession* self);
void* QNetworkSession_Metacast(QNetworkSession* self, const char* param1);
int QNetworkSession_Metacall(QNetworkSession* self, int param1, int param2, void** param3);
void QNetworkSession_OnMetacall(QNetworkSession* self, intptr_t slot);
int QNetworkSession_QBaseMetacall(QNetworkSession* self, int param1, int param2, void** param3);
libqt_string QNetworkSession_Tr(const char* s);
libqt_string QNetworkSession_TrUtf8(const char* s);
bool QNetworkSession_IsOpen(const QNetworkSession* self);
QNetworkConfiguration* QNetworkSession_Configuration(const QNetworkSession* self);
QNetworkInterface* QNetworkSession_Interface(const QNetworkSession* self);
int QNetworkSession_State(const QNetworkSession* self);
int QNetworkSession_Error(const QNetworkSession* self);
libqt_string QNetworkSession_ErrorString(const QNetworkSession* self);
QVariant* QNetworkSession_SessionProperty(const QNetworkSession* self, libqt_string key);
void QNetworkSession_SetSessionProperty(QNetworkSession* self, libqt_string key, QVariant* value);
unsigned long long QNetworkSession_BytesWritten(const QNetworkSession* self);
unsigned long long QNetworkSession_BytesReceived(const QNetworkSession* self);
unsigned long long QNetworkSession_ActiveTime(const QNetworkSession* self);
int QNetworkSession_UsagePolicies(const QNetworkSession* self);
bool QNetworkSession_WaitForOpened(QNetworkSession* self);
void QNetworkSession_Open(QNetworkSession* self);
void QNetworkSession_Close(QNetworkSession* self);
void QNetworkSession_Stop(QNetworkSession* self);
void QNetworkSession_Migrate(QNetworkSession* self);
void QNetworkSession_Ignore(QNetworkSession* self);
void QNetworkSession_Accept(QNetworkSession* self);
void QNetworkSession_Reject(QNetworkSession* self);
void QNetworkSession_StateChanged(QNetworkSession* self, int param1);
void QNetworkSession_Connect_StateChanged(QNetworkSession* self, intptr_t slot);
void QNetworkSession_Opened(QNetworkSession* self);
void QNetworkSession_Connect_Opened(QNetworkSession* self, intptr_t slot);
void QNetworkSession_Closed(QNetworkSession* self);
void QNetworkSession_Connect_Closed(QNetworkSession* self, intptr_t slot);
void QNetworkSession_ErrorWithQNetworkSessionSessionError(QNetworkSession* self, int param1);
void QNetworkSession_Connect_ErrorWithQNetworkSessionSessionError(QNetworkSession* self, intptr_t slot);
void QNetworkSession_PreferredConfigurationChanged(QNetworkSession* self, QNetworkConfiguration* config, bool isSeamless);
void QNetworkSession_Connect_PreferredConfigurationChanged(QNetworkSession* self, intptr_t slot);
void QNetworkSession_NewConfigurationActivated(QNetworkSession* self);
void QNetworkSession_Connect_NewConfigurationActivated(QNetworkSession* self, intptr_t slot);
void QNetworkSession_UsagePoliciesChanged(QNetworkSession* self, int usagePolicies);
void QNetworkSession_Connect_UsagePoliciesChanged(QNetworkSession* self, intptr_t slot);
void QNetworkSession_ConnectNotify(QNetworkSession* self, QMetaMethod* signal);
void QNetworkSession_OnConnectNotify(QNetworkSession* self, intptr_t slot);
void QNetworkSession_QBaseConnectNotify(QNetworkSession* self, QMetaMethod* signal);
void QNetworkSession_DisconnectNotify(QNetworkSession* self, QMetaMethod* signal);
void QNetworkSession_OnDisconnectNotify(QNetworkSession* self, intptr_t slot);
void QNetworkSession_QBaseDisconnectNotify(QNetworkSession* self, QMetaMethod* signal);
libqt_string QNetworkSession_Tr2(const char* s, const char* c);
libqt_string QNetworkSession_Tr3(const char* s, const char* c, int n);
libqt_string QNetworkSession_TrUtf82(const char* s, const char* c);
libqt_string QNetworkSession_TrUtf83(const char* s, const char* c, int n);
bool QNetworkSession_WaitForOpened1(QNetworkSession* self, int msecs);
bool QNetworkSession_Event(QNetworkSession* self, QEvent* event);
void QNetworkSession_OnEvent(QNetworkSession* self, intptr_t slot);
bool QNetworkSession_QBaseEvent(QNetworkSession* self, QEvent* event);
bool QNetworkSession_EventFilter(QNetworkSession* self, QObject* watched, QEvent* event);
void QNetworkSession_OnEventFilter(QNetworkSession* self, intptr_t slot);
bool QNetworkSession_QBaseEventFilter(QNetworkSession* self, QObject* watched, QEvent* event);
void QNetworkSession_TimerEvent(QNetworkSession* self, QTimerEvent* event);
void QNetworkSession_OnTimerEvent(QNetworkSession* self, intptr_t slot);
void QNetworkSession_QBaseTimerEvent(QNetworkSession* self, QTimerEvent* event);
void QNetworkSession_ChildEvent(QNetworkSession* self, QChildEvent* event);
void QNetworkSession_OnChildEvent(QNetworkSession* self, intptr_t slot);
void QNetworkSession_QBaseChildEvent(QNetworkSession* self, QChildEvent* event);
void QNetworkSession_CustomEvent(QNetworkSession* self, QEvent* event);
void QNetworkSession_OnCustomEvent(QNetworkSession* self, intptr_t slot);
void QNetworkSession_QBaseCustomEvent(QNetworkSession* self, QEvent* event);
QObject* QNetworkSession_Sender(const QNetworkSession* self);
void QNetworkSession_OnSender(const QNetworkSession* self, intptr_t slot);
QObject* QNetworkSession_QBaseSender(const QNetworkSession* self);
int QNetworkSession_SenderSignalIndex(const QNetworkSession* self);
void QNetworkSession_OnSenderSignalIndex(const QNetworkSession* self, intptr_t slot);
int QNetworkSession_QBaseSenderSignalIndex(const QNetworkSession* self);
int QNetworkSession_Receivers(const QNetworkSession* self, const char* signal);
void QNetworkSession_OnReceivers(const QNetworkSession* self, intptr_t slot);
int QNetworkSession_QBaseReceivers(const QNetworkSession* self, const char* signal);
bool QNetworkSession_IsSignalConnected(const QNetworkSession* self, QMetaMethod* signal);
void QNetworkSession_OnIsSignalConnected(const QNetworkSession* self, intptr_t slot);
bool QNetworkSession_QBaseIsSignalConnected(const QNetworkSession* self, QMetaMethod* signal);
void QNetworkSession_Delete(QNetworkSession* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
