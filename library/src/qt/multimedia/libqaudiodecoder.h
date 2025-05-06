#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQAUDIODECODER_H
#define SRC_QT_MULTIMEDIAC_LIBQAUDIODECODER_H

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
typedef struct QAudioBuffer QAudioBuffer;
typedef struct QAudioDecoder QAudioDecoder;
typedef struct QAudioFormat QAudioFormat;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QAudioDecoder::Error Error; // C++ enum
#else
typedef int Error; // C ABI enum
#endif

QTLIBC_API QAudioDecoder* QAudioDecoder_new();
QTLIBC_API QAudioDecoder* QAudioDecoder_new2(QObject* parent);
QTLIBC_API QMetaObject* QAudioDecoder_MetaObject(const QAudioDecoder* self);
QTLIBC_API void* QAudioDecoder_Metacast(QAudioDecoder* self, const char* param1);
QTLIBC_API int QAudioDecoder_Metacall(QAudioDecoder* self, int param1, int param2, void** param3);
QTLIBC_API void QAudioDecoder_OnMetacall(QAudioDecoder* self, intptr_t slot);
QTLIBC_API int QAudioDecoder_QBaseMetacall(QAudioDecoder* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QAudioDecoder_Tr(const char* s);
QTLIBC_API bool QAudioDecoder_IsSupported(const QAudioDecoder* self);
QTLIBC_API bool QAudioDecoder_IsDecoding(const QAudioDecoder* self);
QTLIBC_API QUrl* QAudioDecoder_Source(const QAudioDecoder* self);
QTLIBC_API void QAudioDecoder_SetSource(QAudioDecoder* self, QUrl* fileName);
QTLIBC_API QIODevice* QAudioDecoder_SourceDevice(const QAudioDecoder* self);
QTLIBC_API void QAudioDecoder_SetSourceDevice(QAudioDecoder* self, QIODevice* device);
QTLIBC_API QAudioFormat* QAudioDecoder_AudioFormat(const QAudioDecoder* self);
QTLIBC_API void QAudioDecoder_SetAudioFormat(QAudioDecoder* self, QAudioFormat* format);
QTLIBC_API int QAudioDecoder_Error(const QAudioDecoder* self);
QTLIBC_API libqt_string QAudioDecoder_ErrorString(const QAudioDecoder* self);
QTLIBC_API QAudioBuffer* QAudioDecoder_Read(const QAudioDecoder* self);
QTLIBC_API bool QAudioDecoder_BufferAvailable(const QAudioDecoder* self);
QTLIBC_API long long QAudioDecoder_Position(const QAudioDecoder* self);
QTLIBC_API long long QAudioDecoder_Duration(const QAudioDecoder* self);
QTLIBC_API void QAudioDecoder_Start(QAudioDecoder* self);
QTLIBC_API void QAudioDecoder_Stop(QAudioDecoder* self);
QTLIBC_API void QAudioDecoder_BufferAvailableChanged(QAudioDecoder* self, bool param1);
QTLIBC_API void QAudioDecoder_BufferReady(QAudioDecoder* self);
QTLIBC_API void QAudioDecoder_Finished(QAudioDecoder* self);
QTLIBC_API void QAudioDecoder_IsDecodingChanged(QAudioDecoder* self, bool param1);
QTLIBC_API void QAudioDecoder_FormatChanged(QAudioDecoder* self, QAudioFormat* format);
QTLIBC_API void QAudioDecoder_ErrorWithErrorVal(QAudioDecoder* self, int errorVal);
QTLIBC_API void QAudioDecoder_SourceChanged(QAudioDecoder* self);
QTLIBC_API void QAudioDecoder_PositionChanged(QAudioDecoder* self, long long position);
QTLIBC_API void QAudioDecoder_DurationChanged(QAudioDecoder* self, long long duration);
QTLIBC_API libqt_string QAudioDecoder_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QAudioDecoder_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QAudioDecoder_Event(QAudioDecoder* self, QEvent* event);
QTLIBC_API void QAudioDecoder_OnEvent(QAudioDecoder* self, intptr_t slot);
QTLIBC_API bool QAudioDecoder_QBaseEvent(QAudioDecoder* self, QEvent* event);
QTLIBC_API bool QAudioDecoder_EventFilter(QAudioDecoder* self, QObject* watched, QEvent* event);
QTLIBC_API void QAudioDecoder_OnEventFilter(QAudioDecoder* self, intptr_t slot);
QTLIBC_API bool QAudioDecoder_QBaseEventFilter(QAudioDecoder* self, QObject* watched, QEvent* event);
QTLIBC_API void QAudioDecoder_TimerEvent(QAudioDecoder* self, QTimerEvent* event);
QTLIBC_API void QAudioDecoder_OnTimerEvent(QAudioDecoder* self, intptr_t slot);
QTLIBC_API void QAudioDecoder_QBaseTimerEvent(QAudioDecoder* self, QTimerEvent* event);
QTLIBC_API void QAudioDecoder_ChildEvent(QAudioDecoder* self, QChildEvent* event);
QTLIBC_API void QAudioDecoder_OnChildEvent(QAudioDecoder* self, intptr_t slot);
QTLIBC_API void QAudioDecoder_QBaseChildEvent(QAudioDecoder* self, QChildEvent* event);
QTLIBC_API void QAudioDecoder_CustomEvent(QAudioDecoder* self, QEvent* event);
QTLIBC_API void QAudioDecoder_OnCustomEvent(QAudioDecoder* self, intptr_t slot);
QTLIBC_API void QAudioDecoder_QBaseCustomEvent(QAudioDecoder* self, QEvent* event);
QTLIBC_API void QAudioDecoder_ConnectNotify(QAudioDecoder* self, QMetaMethod* signal);
QTLIBC_API void QAudioDecoder_OnConnectNotify(QAudioDecoder* self, intptr_t slot);
QTLIBC_API void QAudioDecoder_QBaseConnectNotify(QAudioDecoder* self, QMetaMethod* signal);
QTLIBC_API void QAudioDecoder_DisconnectNotify(QAudioDecoder* self, QMetaMethod* signal);
QTLIBC_API void QAudioDecoder_OnDisconnectNotify(QAudioDecoder* self, intptr_t slot);
QTLIBC_API void QAudioDecoder_QBaseDisconnectNotify(QAudioDecoder* self, QMetaMethod* signal);
QTLIBC_API QObject* QAudioDecoder_Sender(const QAudioDecoder* self);
QTLIBC_API void QAudioDecoder_OnSender(const QAudioDecoder* self, intptr_t slot);
QTLIBC_API QObject* QAudioDecoder_QBaseSender(const QAudioDecoder* self);
QTLIBC_API int QAudioDecoder_SenderSignalIndex(const QAudioDecoder* self);
QTLIBC_API void QAudioDecoder_OnSenderSignalIndex(const QAudioDecoder* self, intptr_t slot);
QTLIBC_API int QAudioDecoder_QBaseSenderSignalIndex(const QAudioDecoder* self);
QTLIBC_API int QAudioDecoder_Receivers(const QAudioDecoder* self, const char* signal);
QTLIBC_API void QAudioDecoder_OnReceivers(const QAudioDecoder* self, intptr_t slot);
QTLIBC_API int QAudioDecoder_QBaseReceivers(const QAudioDecoder* self, const char* signal);
QTLIBC_API bool QAudioDecoder_IsSignalConnected(const QAudioDecoder* self, QMetaMethod* signal);
QTLIBC_API void QAudioDecoder_OnIsSignalConnected(const QAudioDecoder* self, intptr_t slot);
QTLIBC_API bool QAudioDecoder_QBaseIsSignalConnected(const QAudioDecoder* self, QMetaMethod* signal);
QTLIBC_API void QAudioDecoder_Delete(QAudioDecoder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
