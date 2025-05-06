#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQAUDIOSYSTEMPLUGIN_H
#define SRC_MULTIMEDIAC_LIBQAUDIOSYSTEMPLUGIN_H

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
typedef struct QAbstractAudioDeviceInfo QAbstractAudioDeviceInfo;
typedef struct QAbstractAudioInput QAbstractAudioInput;
typedef struct QAbstractAudioOutput QAbstractAudioOutput;
typedef struct QAudioSystemFactoryInterface QAudioSystemFactoryInterface;
typedef struct QAudioSystemPlugin QAudioSystemPlugin;
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
#endif

libqt_list /* of libqt_string */ QAudioSystemFactoryInterface_AvailableDevices(const QAudioSystemFactoryInterface* self, int param1);
QAbstractAudioInput* QAudioSystemFactoryInterface_CreateInput(QAudioSystemFactoryInterface* self, libqt_string device);
QAbstractAudioOutput* QAudioSystemFactoryInterface_CreateOutput(QAudioSystemFactoryInterface* self, libqt_string device);
QAbstractAudioDeviceInfo* QAudioSystemFactoryInterface_CreateDeviceInfo(QAudioSystemFactoryInterface* self, libqt_string device, int mode);
void QAudioSystemFactoryInterface_OperatorAssign(QAudioSystemFactoryInterface* self, QAudioSystemFactoryInterface* param1);
void QAudioSystemFactoryInterface_Delete(QAudioSystemFactoryInterface* self);

QAudioSystemPlugin* QAudioSystemPlugin_new();
QAudioSystemPlugin* QAudioSystemPlugin_new2(QObject* parent);
QMetaObject* QAudioSystemPlugin_MetaObject(const QAudioSystemPlugin* self);
void* QAudioSystemPlugin_Metacast(QAudioSystemPlugin* self, const char* param1);
int QAudioSystemPlugin_Metacall(QAudioSystemPlugin* self, int param1, int param2, void** param3);
void QAudioSystemPlugin_OnMetacall(QAudioSystemPlugin* self, intptr_t slot);
int QAudioSystemPlugin_QBaseMetacall(QAudioSystemPlugin* self, int param1, int param2, void** param3);
libqt_string QAudioSystemPlugin_Tr(const char* s);
libqt_string QAudioSystemPlugin_TrUtf8(const char* s);
libqt_list /* of libqt_string */ QAudioSystemPlugin_AvailableDevices(const QAudioSystemPlugin* self, int param1);
void QAudioSystemPlugin_OnAvailableDevices(const QAudioSystemPlugin* self, intptr_t slot);
libqt_list /* of libqt_string */ QAudioSystemPlugin_QBaseAvailableDevices(const QAudioSystemPlugin* self, int param1);
QAbstractAudioInput* QAudioSystemPlugin_CreateInput(QAudioSystemPlugin* self, libqt_string device);
void QAudioSystemPlugin_OnCreateInput(QAudioSystemPlugin* self, intptr_t slot);
QAbstractAudioInput* QAudioSystemPlugin_QBaseCreateInput(QAudioSystemPlugin* self, libqt_string device);
QAbstractAudioOutput* QAudioSystemPlugin_CreateOutput(QAudioSystemPlugin* self, libqt_string device);
void QAudioSystemPlugin_OnCreateOutput(QAudioSystemPlugin* self, intptr_t slot);
QAbstractAudioOutput* QAudioSystemPlugin_QBaseCreateOutput(QAudioSystemPlugin* self, libqt_string device);
QAbstractAudioDeviceInfo* QAudioSystemPlugin_CreateDeviceInfo(QAudioSystemPlugin* self, libqt_string device, int mode);
void QAudioSystemPlugin_OnCreateDeviceInfo(QAudioSystemPlugin* self, intptr_t slot);
QAbstractAudioDeviceInfo* QAudioSystemPlugin_QBaseCreateDeviceInfo(QAudioSystemPlugin* self, libqt_string device, int mode);
libqt_string QAudioSystemPlugin_Tr2(const char* s, const char* c);
libqt_string QAudioSystemPlugin_Tr3(const char* s, const char* c, int n);
libqt_string QAudioSystemPlugin_TrUtf82(const char* s, const char* c);
libqt_string QAudioSystemPlugin_TrUtf83(const char* s, const char* c, int n);
bool QAudioSystemPlugin_Event(QAudioSystemPlugin* self, QEvent* event);
void QAudioSystemPlugin_OnEvent(QAudioSystemPlugin* self, intptr_t slot);
bool QAudioSystemPlugin_QBaseEvent(QAudioSystemPlugin* self, QEvent* event);
bool QAudioSystemPlugin_EventFilter(QAudioSystemPlugin* self, QObject* watched, QEvent* event);
void QAudioSystemPlugin_OnEventFilter(QAudioSystemPlugin* self, intptr_t slot);
bool QAudioSystemPlugin_QBaseEventFilter(QAudioSystemPlugin* self, QObject* watched, QEvent* event);
void QAudioSystemPlugin_TimerEvent(QAudioSystemPlugin* self, QTimerEvent* event);
void QAudioSystemPlugin_OnTimerEvent(QAudioSystemPlugin* self, intptr_t slot);
void QAudioSystemPlugin_QBaseTimerEvent(QAudioSystemPlugin* self, QTimerEvent* event);
void QAudioSystemPlugin_ChildEvent(QAudioSystemPlugin* self, QChildEvent* event);
void QAudioSystemPlugin_OnChildEvent(QAudioSystemPlugin* self, intptr_t slot);
void QAudioSystemPlugin_QBaseChildEvent(QAudioSystemPlugin* self, QChildEvent* event);
void QAudioSystemPlugin_CustomEvent(QAudioSystemPlugin* self, QEvent* event);
void QAudioSystemPlugin_OnCustomEvent(QAudioSystemPlugin* self, intptr_t slot);
void QAudioSystemPlugin_QBaseCustomEvent(QAudioSystemPlugin* self, QEvent* event);
void QAudioSystemPlugin_ConnectNotify(QAudioSystemPlugin* self, QMetaMethod* signal);
void QAudioSystemPlugin_OnConnectNotify(QAudioSystemPlugin* self, intptr_t slot);
void QAudioSystemPlugin_QBaseConnectNotify(QAudioSystemPlugin* self, QMetaMethod* signal);
void QAudioSystemPlugin_DisconnectNotify(QAudioSystemPlugin* self, QMetaMethod* signal);
void QAudioSystemPlugin_OnDisconnectNotify(QAudioSystemPlugin* self, intptr_t slot);
void QAudioSystemPlugin_QBaseDisconnectNotify(QAudioSystemPlugin* self, QMetaMethod* signal);
QObject* QAudioSystemPlugin_Sender(const QAudioSystemPlugin* self);
void QAudioSystemPlugin_OnSender(const QAudioSystemPlugin* self, intptr_t slot);
QObject* QAudioSystemPlugin_QBaseSender(const QAudioSystemPlugin* self);
int QAudioSystemPlugin_SenderSignalIndex(const QAudioSystemPlugin* self);
void QAudioSystemPlugin_OnSenderSignalIndex(const QAudioSystemPlugin* self, intptr_t slot);
int QAudioSystemPlugin_QBaseSenderSignalIndex(const QAudioSystemPlugin* self);
int QAudioSystemPlugin_Receivers(const QAudioSystemPlugin* self, const char* signal);
void QAudioSystemPlugin_OnReceivers(const QAudioSystemPlugin* self, intptr_t slot);
int QAudioSystemPlugin_QBaseReceivers(const QAudioSystemPlugin* self, const char* signal);
bool QAudioSystemPlugin_IsSignalConnected(const QAudioSystemPlugin* self, QMetaMethod* signal);
void QAudioSystemPlugin_OnIsSignalConnected(const QAudioSystemPlugin* self, intptr_t slot);
bool QAudioSystemPlugin_QBaseIsSignalConnected(const QAudioSystemPlugin* self, QMetaMethod* signal);
void QAudioSystemPlugin_Delete(QAudioSystemPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
