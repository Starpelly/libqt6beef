#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIAAUDIOPROBECONTROL_H
#define SRC_MULTIMEDIAC_LIBQMEDIAAUDIOPROBECONTROL_H

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
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaAudioProbeControl QMediaAudioProbeControl;
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

QMetaObject* QMediaAudioProbeControl_MetaObject(const QMediaAudioProbeControl* self);
void* QMediaAudioProbeControl_Metacast(QMediaAudioProbeControl* self, const char* param1);
int QMediaAudioProbeControl_Metacall(QMediaAudioProbeControl* self, int param1, int param2, void** param3);
libqt_string QMediaAudioProbeControl_Tr(const char* s);
libqt_string QMediaAudioProbeControl_TrUtf8(const char* s);
void QMediaAudioProbeControl_AudioBufferProbed(QMediaAudioProbeControl* self, QAudioBuffer* buffer);
void QMediaAudioProbeControl_Connect_AudioBufferProbed(QMediaAudioProbeControl* self, intptr_t slot);
void QMediaAudioProbeControl_Flush(QMediaAudioProbeControl* self);
void QMediaAudioProbeControl_Connect_Flush(QMediaAudioProbeControl* self, intptr_t slot);
libqt_string QMediaAudioProbeControl_Tr2(const char* s, const char* c);
libqt_string QMediaAudioProbeControl_Tr3(const char* s, const char* c, int n);
libqt_string QMediaAudioProbeControl_TrUtf82(const char* s, const char* c);
libqt_string QMediaAudioProbeControl_TrUtf83(const char* s, const char* c, int n);
bool QMediaAudioProbeControl_Event(QMediaAudioProbeControl* self, QEvent* event);
bool QMediaAudioProbeControl_EventFilter(QMediaAudioProbeControl* self, QObject* watched, QEvent* event);
void QMediaAudioProbeControl_Delete(QMediaAudioProbeControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
