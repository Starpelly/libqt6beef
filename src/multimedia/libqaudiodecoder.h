#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQAUDIODECODER_H
#define SRC_MULTIMEDIAC_LIBQAUDIODECODER_H

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
typedef struct QAudioBuffer QAudioBuffer;
typedef struct QAudioDecoder QAudioDecoder;
typedef struct QAudioFormat QAudioFormat;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaService QMediaService;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QAudioDecoder::Error Error; // C++ enum
typedef QAudioDecoder::State State; // C++ enum
#else
typedef int Error; // C ABI enum
typedef int State; // C ABI enum
#endif

QAudioDecoder* QAudioDecoder_new();
QAudioDecoder* QAudioDecoder_new2(QObject* parent);
QMetaObject* QAudioDecoder_MetaObject(const QAudioDecoder* self);
void* QAudioDecoder_Metacast(QAudioDecoder* self, const char* param1);
int QAudioDecoder_Metacall(QAudioDecoder* self, int param1, int param2, void** param3);
void QAudioDecoder_OnMetacall(QAudioDecoder* self, intptr_t slot);
int QAudioDecoder_QBaseMetacall(QAudioDecoder* self, int param1, int param2, void** param3);
libqt_string QAudioDecoder_Tr(const char* s);
libqt_string QAudioDecoder_TrUtf8(const char* s);
int QAudioDecoder_HasSupport(libqt_string mimeType);
int QAudioDecoder_State(const QAudioDecoder* self);
libqt_string QAudioDecoder_SourceFilename(const QAudioDecoder* self);
void QAudioDecoder_SetSourceFilename(QAudioDecoder* self, libqt_string fileName);
QIODevice* QAudioDecoder_SourceDevice(const QAudioDecoder* self);
void QAudioDecoder_SetSourceDevice(QAudioDecoder* self, QIODevice* device);
QAudioFormat* QAudioDecoder_AudioFormat(const QAudioDecoder* self);
void QAudioDecoder_SetAudioFormat(QAudioDecoder* self, QAudioFormat* format);
int QAudioDecoder_Error(const QAudioDecoder* self);
libqt_string QAudioDecoder_ErrorString(const QAudioDecoder* self);
QAudioBuffer* QAudioDecoder_Read(const QAudioDecoder* self);
bool QAudioDecoder_BufferAvailable(const QAudioDecoder* self);
long long QAudioDecoder_Position(const QAudioDecoder* self);
long long QAudioDecoder_Duration(const QAudioDecoder* self);
void QAudioDecoder_Start(QAudioDecoder* self);
void QAudioDecoder_Stop(QAudioDecoder* self);
void QAudioDecoder_BufferAvailableChanged(QAudioDecoder* self, bool param1);
void QAudioDecoder_BufferReady(QAudioDecoder* self);
void QAudioDecoder_Finished(QAudioDecoder* self);
void QAudioDecoder_StateChanged(QAudioDecoder* self, int newState);
void QAudioDecoder_FormatChanged(QAudioDecoder* self, QAudioFormat* format);
void QAudioDecoder_ErrorWithErrorVal(QAudioDecoder* self, int errorVal);
void QAudioDecoder_SourceChanged(QAudioDecoder* self);
void QAudioDecoder_PositionChanged(QAudioDecoder* self, long long position);
void QAudioDecoder_DurationChanged(QAudioDecoder* self, long long duration);
bool QAudioDecoder_Bind(QAudioDecoder* self, QObject* param1);
void QAudioDecoder_OnBind(QAudioDecoder* self, intptr_t slot);
bool QAudioDecoder_QBaseBind(QAudioDecoder* self, QObject* param1);
void QAudioDecoder_Unbind(QAudioDecoder* self, QObject* param1);
void QAudioDecoder_OnUnbind(QAudioDecoder* self, intptr_t slot);
void QAudioDecoder_QBaseUnbind(QAudioDecoder* self, QObject* param1);
libqt_string QAudioDecoder_Tr2(const char* s, const char* c);
libqt_string QAudioDecoder_Tr3(const char* s, const char* c, int n);
libqt_string QAudioDecoder_TrUtf82(const char* s, const char* c);
libqt_string QAudioDecoder_TrUtf83(const char* s, const char* c, int n);
int QAudioDecoder_HasSupport2(libqt_string mimeType, libqt_list /* of libqt_string */ codecs);
bool QAudioDecoder_IsAvailable(const QAudioDecoder* self);
void QAudioDecoder_OnIsAvailable(const QAudioDecoder* self, intptr_t slot);
bool QAudioDecoder_QBaseIsAvailable(const QAudioDecoder* self);
int QAudioDecoder_Availability(const QAudioDecoder* self);
void QAudioDecoder_OnAvailability(const QAudioDecoder* self, intptr_t slot);
int QAudioDecoder_QBaseAvailability(const QAudioDecoder* self);
QMediaService* QAudioDecoder_Service(const QAudioDecoder* self);
void QAudioDecoder_OnService(const QAudioDecoder* self, intptr_t slot);
QMediaService* QAudioDecoder_QBaseService(const QAudioDecoder* self);
bool QAudioDecoder_Event(QAudioDecoder* self, QEvent* event);
void QAudioDecoder_OnEvent(QAudioDecoder* self, intptr_t slot);
bool QAudioDecoder_QBaseEvent(QAudioDecoder* self, QEvent* event);
bool QAudioDecoder_EventFilter(QAudioDecoder* self, QObject* watched, QEvent* event);
void QAudioDecoder_OnEventFilter(QAudioDecoder* self, intptr_t slot);
bool QAudioDecoder_QBaseEventFilter(QAudioDecoder* self, QObject* watched, QEvent* event);
void QAudioDecoder_TimerEvent(QAudioDecoder* self, QTimerEvent* event);
void QAudioDecoder_OnTimerEvent(QAudioDecoder* self, intptr_t slot);
void QAudioDecoder_QBaseTimerEvent(QAudioDecoder* self, QTimerEvent* event);
void QAudioDecoder_ChildEvent(QAudioDecoder* self, QChildEvent* event);
void QAudioDecoder_OnChildEvent(QAudioDecoder* self, intptr_t slot);
void QAudioDecoder_QBaseChildEvent(QAudioDecoder* self, QChildEvent* event);
void QAudioDecoder_CustomEvent(QAudioDecoder* self, QEvent* event);
void QAudioDecoder_OnCustomEvent(QAudioDecoder* self, intptr_t slot);
void QAudioDecoder_QBaseCustomEvent(QAudioDecoder* self, QEvent* event);
void QAudioDecoder_ConnectNotify(QAudioDecoder* self, QMetaMethod* signal);
void QAudioDecoder_OnConnectNotify(QAudioDecoder* self, intptr_t slot);
void QAudioDecoder_QBaseConnectNotify(QAudioDecoder* self, QMetaMethod* signal);
void QAudioDecoder_DisconnectNotify(QAudioDecoder* self, QMetaMethod* signal);
void QAudioDecoder_OnDisconnectNotify(QAudioDecoder* self, intptr_t slot);
void QAudioDecoder_QBaseDisconnectNotify(QAudioDecoder* self, QMetaMethod* signal);
void QAudioDecoder_AddPropertyWatch(QAudioDecoder* self, libqt_string name);
void QAudioDecoder_OnAddPropertyWatch(QAudioDecoder* self, intptr_t slot);
void QAudioDecoder_QBaseAddPropertyWatch(QAudioDecoder* self, libqt_string name);
void QAudioDecoder_RemovePropertyWatch(QAudioDecoder* self, libqt_string name);
void QAudioDecoder_OnRemovePropertyWatch(QAudioDecoder* self, intptr_t slot);
void QAudioDecoder_QBaseRemovePropertyWatch(QAudioDecoder* self, libqt_string name);
QObject* QAudioDecoder_Sender(const QAudioDecoder* self);
void QAudioDecoder_OnSender(const QAudioDecoder* self, intptr_t slot);
QObject* QAudioDecoder_QBaseSender(const QAudioDecoder* self);
int QAudioDecoder_SenderSignalIndex(const QAudioDecoder* self);
void QAudioDecoder_OnSenderSignalIndex(const QAudioDecoder* self, intptr_t slot);
int QAudioDecoder_QBaseSenderSignalIndex(const QAudioDecoder* self);
int QAudioDecoder_Receivers(const QAudioDecoder* self, const char* signal);
void QAudioDecoder_OnReceivers(const QAudioDecoder* self, intptr_t slot);
int QAudioDecoder_QBaseReceivers(const QAudioDecoder* self, const char* signal);
bool QAudioDecoder_IsSignalConnected(const QAudioDecoder* self, QMetaMethod* signal);
void QAudioDecoder_OnIsSignalConnected(const QAudioDecoder* self, intptr_t slot);
bool QAudioDecoder_QBaseIsSignalConnected(const QAudioDecoder* self, QMetaMethod* signal);
void QAudioDecoder_Delete(QAudioDecoder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
