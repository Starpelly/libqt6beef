#pragma once
#ifndef SRC_NETWORKC_LIBQNETWORKCONFIGMANAGER_H
#define SRC_NETWORKC_LIBQNETWORKCONFIGMANAGER_H

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
typedef struct QNetworkConfigurationManager QNetworkConfigurationManager;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QNetworkConfigurationManager::Capabilities Capabilities; // C++ QFlags
typedef QNetworkConfigurationManager::Capability Capability;     // C++ enum
#else
typedef int Capabilities; // C ABI QFlags
typedef int Capability;   // C ABI enum
#endif

QNetworkConfigurationManager* QNetworkConfigurationManager_new();
QNetworkConfigurationManager* QNetworkConfigurationManager_new2(QObject* parent);
QMetaObject* QNetworkConfigurationManager_MetaObject(const QNetworkConfigurationManager* self);
void* QNetworkConfigurationManager_Metacast(QNetworkConfigurationManager* self, const char* param1);
int QNetworkConfigurationManager_Metacall(QNetworkConfigurationManager* self, int param1, int param2, void** param3);
void QNetworkConfigurationManager_OnMetacall(QNetworkConfigurationManager* self, intptr_t slot);
int QNetworkConfigurationManager_QBaseMetacall(QNetworkConfigurationManager* self, int param1, int param2, void** param3);
libqt_string QNetworkConfigurationManager_Tr(const char* s);
libqt_string QNetworkConfigurationManager_TrUtf8(const char* s);
int QNetworkConfigurationManager_Capabilities(const QNetworkConfigurationManager* self);
QNetworkConfiguration* QNetworkConfigurationManager_DefaultConfiguration(const QNetworkConfigurationManager* self);
libqt_list /* of QNetworkConfiguration* */ QNetworkConfigurationManager_AllConfigurations(const QNetworkConfigurationManager* self);
QNetworkConfiguration* QNetworkConfigurationManager_ConfigurationFromIdentifier(const QNetworkConfigurationManager* self, libqt_string identifier);
bool QNetworkConfigurationManager_IsOnline(const QNetworkConfigurationManager* self);
void QNetworkConfigurationManager_UpdateConfigurations(QNetworkConfigurationManager* self);
void QNetworkConfigurationManager_ConfigurationAdded(QNetworkConfigurationManager* self, QNetworkConfiguration* config);
void QNetworkConfigurationManager_Connect_ConfigurationAdded(QNetworkConfigurationManager* self, intptr_t slot);
void QNetworkConfigurationManager_ConfigurationRemoved(QNetworkConfigurationManager* self, QNetworkConfiguration* config);
void QNetworkConfigurationManager_Connect_ConfigurationRemoved(QNetworkConfigurationManager* self, intptr_t slot);
void QNetworkConfigurationManager_ConfigurationChanged(QNetworkConfigurationManager* self, QNetworkConfiguration* config);
void QNetworkConfigurationManager_Connect_ConfigurationChanged(QNetworkConfigurationManager* self, intptr_t slot);
void QNetworkConfigurationManager_OnlineStateChanged(QNetworkConfigurationManager* self, bool isOnline);
void QNetworkConfigurationManager_Connect_OnlineStateChanged(QNetworkConfigurationManager* self, intptr_t slot);
void QNetworkConfigurationManager_UpdateCompleted(QNetworkConfigurationManager* self);
void QNetworkConfigurationManager_Connect_UpdateCompleted(QNetworkConfigurationManager* self, intptr_t slot);
libqt_string QNetworkConfigurationManager_Tr2(const char* s, const char* c);
libqt_string QNetworkConfigurationManager_Tr3(const char* s, const char* c, int n);
libqt_string QNetworkConfigurationManager_TrUtf82(const char* s, const char* c);
libqt_string QNetworkConfigurationManager_TrUtf83(const char* s, const char* c, int n);
libqt_list /* of QNetworkConfiguration* */ QNetworkConfigurationManager_AllConfigurations1(const QNetworkConfigurationManager* self, int flags);
bool QNetworkConfigurationManager_Event(QNetworkConfigurationManager* self, QEvent* event);
void QNetworkConfigurationManager_OnEvent(QNetworkConfigurationManager* self, intptr_t slot);
bool QNetworkConfigurationManager_QBaseEvent(QNetworkConfigurationManager* self, QEvent* event);
bool QNetworkConfigurationManager_EventFilter(QNetworkConfigurationManager* self, QObject* watched, QEvent* event);
void QNetworkConfigurationManager_OnEventFilter(QNetworkConfigurationManager* self, intptr_t slot);
bool QNetworkConfigurationManager_QBaseEventFilter(QNetworkConfigurationManager* self, QObject* watched, QEvent* event);
void QNetworkConfigurationManager_TimerEvent(QNetworkConfigurationManager* self, QTimerEvent* event);
void QNetworkConfigurationManager_OnTimerEvent(QNetworkConfigurationManager* self, intptr_t slot);
void QNetworkConfigurationManager_QBaseTimerEvent(QNetworkConfigurationManager* self, QTimerEvent* event);
void QNetworkConfigurationManager_ChildEvent(QNetworkConfigurationManager* self, QChildEvent* event);
void QNetworkConfigurationManager_OnChildEvent(QNetworkConfigurationManager* self, intptr_t slot);
void QNetworkConfigurationManager_QBaseChildEvent(QNetworkConfigurationManager* self, QChildEvent* event);
void QNetworkConfigurationManager_CustomEvent(QNetworkConfigurationManager* self, QEvent* event);
void QNetworkConfigurationManager_OnCustomEvent(QNetworkConfigurationManager* self, intptr_t slot);
void QNetworkConfigurationManager_QBaseCustomEvent(QNetworkConfigurationManager* self, QEvent* event);
void QNetworkConfigurationManager_ConnectNotify(QNetworkConfigurationManager* self, QMetaMethod* signal);
void QNetworkConfigurationManager_OnConnectNotify(QNetworkConfigurationManager* self, intptr_t slot);
void QNetworkConfigurationManager_QBaseConnectNotify(QNetworkConfigurationManager* self, QMetaMethod* signal);
void QNetworkConfigurationManager_DisconnectNotify(QNetworkConfigurationManager* self, QMetaMethod* signal);
void QNetworkConfigurationManager_OnDisconnectNotify(QNetworkConfigurationManager* self, intptr_t slot);
void QNetworkConfigurationManager_QBaseDisconnectNotify(QNetworkConfigurationManager* self, QMetaMethod* signal);
QObject* QNetworkConfigurationManager_Sender(const QNetworkConfigurationManager* self);
void QNetworkConfigurationManager_OnSender(const QNetworkConfigurationManager* self, intptr_t slot);
QObject* QNetworkConfigurationManager_QBaseSender(const QNetworkConfigurationManager* self);
int QNetworkConfigurationManager_SenderSignalIndex(const QNetworkConfigurationManager* self);
void QNetworkConfigurationManager_OnSenderSignalIndex(const QNetworkConfigurationManager* self, intptr_t slot);
int QNetworkConfigurationManager_QBaseSenderSignalIndex(const QNetworkConfigurationManager* self);
int QNetworkConfigurationManager_Receivers(const QNetworkConfigurationManager* self, const char* signal);
void QNetworkConfigurationManager_OnReceivers(const QNetworkConfigurationManager* self, intptr_t slot);
int QNetworkConfigurationManager_QBaseReceivers(const QNetworkConfigurationManager* self, const char* signal);
bool QNetworkConfigurationManager_IsSignalConnected(const QNetworkConfigurationManager* self, QMetaMethod* signal);
void QNetworkConfigurationManager_OnIsSignalConnected(const QNetworkConfigurationManager* self, intptr_t slot);
bool QNetworkConfigurationManager_QBaseIsSignalConnected(const QNetworkConfigurationManager* self, QMetaMethod* signal);
void QNetworkConfigurationManager_Delete(QNetworkConfigurationManager* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
