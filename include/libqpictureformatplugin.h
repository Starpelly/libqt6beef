#pragma once
#ifndef SRCC_LIBQPICTUREFORMATPLUGIN_H
#define SRCC_LIBQPICTUREFORMATPLUGIN_H

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
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QPicture QPicture;
typedef struct QPictureFormatPlugin QPictureFormatPlugin;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QPictureFormatPlugin* QPictureFormatPlugin_new();
QPictureFormatPlugin* QPictureFormatPlugin_new2(QObject* parent);
QMetaObject* QPictureFormatPlugin_MetaObject(const QPictureFormatPlugin* self);
void* QPictureFormatPlugin_Metacast(QPictureFormatPlugin* self, const char* param1);
int QPictureFormatPlugin_Metacall(QPictureFormatPlugin* self, int param1, int param2, void** param3);
void QPictureFormatPlugin_OnMetacall(QPictureFormatPlugin* self, intptr_t slot);
int QPictureFormatPlugin_QBaseMetacall(QPictureFormatPlugin* self, int param1, int param2, void** param3);
libqt_string QPictureFormatPlugin_Tr(const char* s);
libqt_string QPictureFormatPlugin_TrUtf8(const char* s);
bool QPictureFormatPlugin_LoadPicture(QPictureFormatPlugin* self, libqt_string format, libqt_string filename, QPicture* pic);
void QPictureFormatPlugin_OnLoadPicture(QPictureFormatPlugin* self, intptr_t slot);
bool QPictureFormatPlugin_QBaseLoadPicture(QPictureFormatPlugin* self, libqt_string format, libqt_string filename, QPicture* pic);
bool QPictureFormatPlugin_SavePicture(QPictureFormatPlugin* self, libqt_string format, libqt_string filename, QPicture* pic);
void QPictureFormatPlugin_OnSavePicture(QPictureFormatPlugin* self, intptr_t slot);
bool QPictureFormatPlugin_QBaseSavePicture(QPictureFormatPlugin* self, libqt_string format, libqt_string filename, QPicture* pic);
bool QPictureFormatPlugin_InstallIOHandler(QPictureFormatPlugin* self, libqt_string format);
void QPictureFormatPlugin_OnInstallIOHandler(QPictureFormatPlugin* self, intptr_t slot);
bool QPictureFormatPlugin_QBaseInstallIOHandler(QPictureFormatPlugin* self, libqt_string format);
libqt_string QPictureFormatPlugin_Tr2(const char* s, const char* c);
libqt_string QPictureFormatPlugin_Tr3(const char* s, const char* c, int n);
libqt_string QPictureFormatPlugin_TrUtf82(const char* s, const char* c);
libqt_string QPictureFormatPlugin_TrUtf83(const char* s, const char* c, int n);
bool QPictureFormatPlugin_Event(QPictureFormatPlugin* self, QEvent* event);
void QPictureFormatPlugin_OnEvent(QPictureFormatPlugin* self, intptr_t slot);
bool QPictureFormatPlugin_QBaseEvent(QPictureFormatPlugin* self, QEvent* event);
bool QPictureFormatPlugin_EventFilter(QPictureFormatPlugin* self, QObject* watched, QEvent* event);
void QPictureFormatPlugin_OnEventFilter(QPictureFormatPlugin* self, intptr_t slot);
bool QPictureFormatPlugin_QBaseEventFilter(QPictureFormatPlugin* self, QObject* watched, QEvent* event);
void QPictureFormatPlugin_TimerEvent(QPictureFormatPlugin* self, QTimerEvent* event);
void QPictureFormatPlugin_OnTimerEvent(QPictureFormatPlugin* self, intptr_t slot);
void QPictureFormatPlugin_QBaseTimerEvent(QPictureFormatPlugin* self, QTimerEvent* event);
void QPictureFormatPlugin_ChildEvent(QPictureFormatPlugin* self, QChildEvent* event);
void QPictureFormatPlugin_OnChildEvent(QPictureFormatPlugin* self, intptr_t slot);
void QPictureFormatPlugin_QBaseChildEvent(QPictureFormatPlugin* self, QChildEvent* event);
void QPictureFormatPlugin_CustomEvent(QPictureFormatPlugin* self, QEvent* event);
void QPictureFormatPlugin_OnCustomEvent(QPictureFormatPlugin* self, intptr_t slot);
void QPictureFormatPlugin_QBaseCustomEvent(QPictureFormatPlugin* self, QEvent* event);
void QPictureFormatPlugin_ConnectNotify(QPictureFormatPlugin* self, QMetaMethod* signal);
void QPictureFormatPlugin_OnConnectNotify(QPictureFormatPlugin* self, intptr_t slot);
void QPictureFormatPlugin_QBaseConnectNotify(QPictureFormatPlugin* self, QMetaMethod* signal);
void QPictureFormatPlugin_DisconnectNotify(QPictureFormatPlugin* self, QMetaMethod* signal);
void QPictureFormatPlugin_OnDisconnectNotify(QPictureFormatPlugin* self, intptr_t slot);
void QPictureFormatPlugin_QBaseDisconnectNotify(QPictureFormatPlugin* self, QMetaMethod* signal);
QObject* QPictureFormatPlugin_Sender(const QPictureFormatPlugin* self);
void QPictureFormatPlugin_OnSender(const QPictureFormatPlugin* self, intptr_t slot);
QObject* QPictureFormatPlugin_QBaseSender(const QPictureFormatPlugin* self);
int QPictureFormatPlugin_SenderSignalIndex(const QPictureFormatPlugin* self);
void QPictureFormatPlugin_OnSenderSignalIndex(const QPictureFormatPlugin* self, intptr_t slot);
int QPictureFormatPlugin_QBaseSenderSignalIndex(const QPictureFormatPlugin* self);
int QPictureFormatPlugin_Receivers(const QPictureFormatPlugin* self, const char* signal);
void QPictureFormatPlugin_OnReceivers(const QPictureFormatPlugin* self, intptr_t slot);
int QPictureFormatPlugin_QBaseReceivers(const QPictureFormatPlugin* self, const char* signal);
bool QPictureFormatPlugin_IsSignalConnected(const QPictureFormatPlugin* self, QMetaMethod* signal);
void QPictureFormatPlugin_OnIsSignalConnected(const QPictureFormatPlugin* self, intptr_t slot);
bool QPictureFormatPlugin_QBaseIsSignalConnected(const QPictureFormatPlugin* self, QMetaMethod* signal);
void QPictureFormatPlugin_Delete(QPictureFormatPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
