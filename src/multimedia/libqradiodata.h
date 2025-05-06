#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQRADIODATA_H
#define SRC_MULTIMEDIAC_LIBQRADIODATA_H

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
typedef struct QMediaBindableInterface QMediaBindableInterface;
typedef struct QMediaObject QMediaObject;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QRadioData QRadioData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QRadioData::Error Error;             // C++ enum
typedef QRadioData::ProgramType ProgramType; // C++ enum
#else
typedef int Error;       // C ABI enum
typedef int ProgramType; // C ABI enum
#endif

QRadioData* QRadioData_new(QMediaObject* mediaObject);
QRadioData* QRadioData_new2(QMediaObject* mediaObject, QObject* parent);
QMetaObject* QRadioData_MetaObject(const QRadioData* self);
void* QRadioData_Metacast(QRadioData* self, const char* param1);
int QRadioData_Metacall(QRadioData* self, int param1, int param2, void** param3);
void QRadioData_OnMetacall(QRadioData* self, intptr_t slot);
int QRadioData_QBaseMetacall(QRadioData* self, int param1, int param2, void** param3);
libqt_string QRadioData_Tr(const char* s);
libqt_string QRadioData_TrUtf8(const char* s);
int QRadioData_Availability(const QRadioData* self);
QMediaObject* QRadioData_MediaObject(const QRadioData* self);
void QRadioData_OnMediaObject(const QRadioData* self, intptr_t slot);
QMediaObject* QRadioData_QBaseMediaObject(const QRadioData* self);
libqt_string QRadioData_StationId(const QRadioData* self);
int QRadioData_ProgramType(const QRadioData* self);
libqt_string QRadioData_ProgramTypeName(const QRadioData* self);
libqt_string QRadioData_StationName(const QRadioData* self);
libqt_string QRadioData_RadioText(const QRadioData* self);
bool QRadioData_IsAlternativeFrequenciesEnabled(const QRadioData* self);
int QRadioData_Error(const QRadioData* self);
libqt_string QRadioData_ErrorString(const QRadioData* self);
void QRadioData_SetAlternativeFrequenciesEnabled(QRadioData* self, bool enabled);
void QRadioData_StationIdChanged(QRadioData* self, libqt_string stationId);
void QRadioData_Connect_StationIdChanged(QRadioData* self, intptr_t slot);
void QRadioData_ProgramTypeChanged(QRadioData* self, int programType);
void QRadioData_Connect_ProgramTypeChanged(QRadioData* self, intptr_t slot);
void QRadioData_ProgramTypeNameChanged(QRadioData* self, libqt_string programTypeName);
void QRadioData_Connect_ProgramTypeNameChanged(QRadioData* self, intptr_t slot);
void QRadioData_StationNameChanged(QRadioData* self, libqt_string stationName);
void QRadioData_Connect_StationNameChanged(QRadioData* self, intptr_t slot);
void QRadioData_RadioTextChanged(QRadioData* self, libqt_string radioText);
void QRadioData_Connect_RadioTextChanged(QRadioData* self, intptr_t slot);
void QRadioData_AlternativeFrequenciesEnabledChanged(QRadioData* self, bool enabled);
void QRadioData_Connect_AlternativeFrequenciesEnabledChanged(QRadioData* self, intptr_t slot);
void QRadioData_ErrorWithErrorVal(QRadioData* self, int errorVal);
void QRadioData_Connect_ErrorWithErrorVal(QRadioData* self, intptr_t slot);
bool QRadioData_SetMediaObject(QRadioData* self, QMediaObject* mediaObject);
void QRadioData_OnSetMediaObject(QRadioData* self, intptr_t slot);
bool QRadioData_QBaseSetMediaObject(QRadioData* self, QMediaObject* mediaObject);
libqt_string QRadioData_Tr2(const char* s, const char* c);
libqt_string QRadioData_Tr3(const char* s, const char* c, int n);
libqt_string QRadioData_TrUtf82(const char* s, const char* c);
libqt_string QRadioData_TrUtf83(const char* s, const char* c, int n);
bool QRadioData_Event(QRadioData* self, QEvent* event);
void QRadioData_OnEvent(QRadioData* self, intptr_t slot);
bool QRadioData_QBaseEvent(QRadioData* self, QEvent* event);
bool QRadioData_EventFilter(QRadioData* self, QObject* watched, QEvent* event);
void QRadioData_OnEventFilter(QRadioData* self, intptr_t slot);
bool QRadioData_QBaseEventFilter(QRadioData* self, QObject* watched, QEvent* event);
void QRadioData_TimerEvent(QRadioData* self, QTimerEvent* event);
void QRadioData_OnTimerEvent(QRadioData* self, intptr_t slot);
void QRadioData_QBaseTimerEvent(QRadioData* self, QTimerEvent* event);
void QRadioData_ChildEvent(QRadioData* self, QChildEvent* event);
void QRadioData_OnChildEvent(QRadioData* self, intptr_t slot);
void QRadioData_QBaseChildEvent(QRadioData* self, QChildEvent* event);
void QRadioData_CustomEvent(QRadioData* self, QEvent* event);
void QRadioData_OnCustomEvent(QRadioData* self, intptr_t slot);
void QRadioData_QBaseCustomEvent(QRadioData* self, QEvent* event);
void QRadioData_ConnectNotify(QRadioData* self, QMetaMethod* signal);
void QRadioData_OnConnectNotify(QRadioData* self, intptr_t slot);
void QRadioData_QBaseConnectNotify(QRadioData* self, QMetaMethod* signal);
void QRadioData_DisconnectNotify(QRadioData* self, QMetaMethod* signal);
void QRadioData_OnDisconnectNotify(QRadioData* self, intptr_t slot);
void QRadioData_QBaseDisconnectNotify(QRadioData* self, QMetaMethod* signal);
QObject* QRadioData_Sender(const QRadioData* self);
void QRadioData_OnSender(const QRadioData* self, intptr_t slot);
QObject* QRadioData_QBaseSender(const QRadioData* self);
int QRadioData_SenderSignalIndex(const QRadioData* self);
void QRadioData_OnSenderSignalIndex(const QRadioData* self, intptr_t slot);
int QRadioData_QBaseSenderSignalIndex(const QRadioData* self);
int QRadioData_Receivers(const QRadioData* self, const char* signal);
void QRadioData_OnReceivers(const QRadioData* self, intptr_t slot);
int QRadioData_QBaseReceivers(const QRadioData* self, const char* signal);
bool QRadioData_IsSignalConnected(const QRadioData* self, QMetaMethod* signal);
void QRadioData_OnIsSignalConnected(const QRadioData* self, intptr_t slot);
bool QRadioData_QBaseIsSignalConnected(const QRadioData* self, QMetaMethod* signal);
void QRadioData_Delete(QRadioData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
