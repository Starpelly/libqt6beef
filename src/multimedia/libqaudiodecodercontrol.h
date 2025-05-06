#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQAUDIODECODERCONTROL_H
#define SRC_MULTIMEDIAC_LIBQAUDIODECODERCONTROL_H

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
typedef struct QAudioDecoderControl QAudioDecoderControl;
typedef struct QAudioFormat QAudioFormat;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QMetaObject* QAudioDecoderControl_MetaObject(const QAudioDecoderControl* self);
void* QAudioDecoderControl_Metacast(QAudioDecoderControl* self, const char* param1);
int QAudioDecoderControl_Metacall(QAudioDecoderControl* self, int param1, int param2, void** param3);
libqt_string QAudioDecoderControl_Tr(const char* s);
libqt_string QAudioDecoderControl_TrUtf8(const char* s);
int QAudioDecoderControl_State(const QAudioDecoderControl* self);
libqt_string QAudioDecoderControl_SourceFilename(const QAudioDecoderControl* self);
void QAudioDecoderControl_SetSourceFilename(QAudioDecoderControl* self, libqt_string fileName);
QIODevice* QAudioDecoderControl_SourceDevice(const QAudioDecoderControl* self);
void QAudioDecoderControl_SetSourceDevice(QAudioDecoderControl* self, QIODevice* device);
void QAudioDecoderControl_Start(QAudioDecoderControl* self);
void QAudioDecoderControl_Stop(QAudioDecoderControl* self);
QAudioFormat* QAudioDecoderControl_AudioFormat(const QAudioDecoderControl* self);
void QAudioDecoderControl_SetAudioFormat(QAudioDecoderControl* self, QAudioFormat* format);
QAudioBuffer* QAudioDecoderControl_Read(QAudioDecoderControl* self);
bool QAudioDecoderControl_BufferAvailable(const QAudioDecoderControl* self);
long long QAudioDecoderControl_Position(const QAudioDecoderControl* self);
long long QAudioDecoderControl_Duration(const QAudioDecoderControl* self);
void QAudioDecoderControl_StateChanged(QAudioDecoderControl* self, int newState);
void QAudioDecoderControl_Connect_StateChanged(QAudioDecoderControl* self, intptr_t slot);
void QAudioDecoderControl_FormatChanged(QAudioDecoderControl* self, QAudioFormat* format);
void QAudioDecoderControl_Connect_FormatChanged(QAudioDecoderControl* self, intptr_t slot);
void QAudioDecoderControl_SourceChanged(QAudioDecoderControl* self);
void QAudioDecoderControl_Connect_SourceChanged(QAudioDecoderControl* self, intptr_t slot);
void QAudioDecoderControl_Error(QAudioDecoderControl* self, int errorVal, libqt_string errorString);
void QAudioDecoderControl_Connect_Error(QAudioDecoderControl* self, intptr_t slot);
void QAudioDecoderControl_BufferReady(QAudioDecoderControl* self);
void QAudioDecoderControl_Connect_BufferReady(QAudioDecoderControl* self, intptr_t slot);
void QAudioDecoderControl_BufferAvailableChanged(QAudioDecoderControl* self, bool available);
void QAudioDecoderControl_Connect_BufferAvailableChanged(QAudioDecoderControl* self, intptr_t slot);
void QAudioDecoderControl_Finished(QAudioDecoderControl* self);
void QAudioDecoderControl_Connect_Finished(QAudioDecoderControl* self, intptr_t slot);
void QAudioDecoderControl_PositionChanged(QAudioDecoderControl* self, long long position);
void QAudioDecoderControl_Connect_PositionChanged(QAudioDecoderControl* self, intptr_t slot);
void QAudioDecoderControl_DurationChanged(QAudioDecoderControl* self, long long duration);
void QAudioDecoderControl_Connect_DurationChanged(QAudioDecoderControl* self, intptr_t slot);
libqt_string QAudioDecoderControl_Tr2(const char* s, const char* c);
libqt_string QAudioDecoderControl_Tr3(const char* s, const char* c, int n);
libqt_string QAudioDecoderControl_TrUtf82(const char* s, const char* c);
libqt_string QAudioDecoderControl_TrUtf83(const char* s, const char* c, int n);
bool QAudioDecoderControl_Event(QAudioDecoderControl* self, QEvent* event);
bool QAudioDecoderControl_EventFilter(QAudioDecoderControl* self, QObject* watched, QEvent* event);
void QAudioDecoderControl_Delete(QAudioDecoderControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
