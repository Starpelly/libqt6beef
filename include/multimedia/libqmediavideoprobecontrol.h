#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIAVIDEOPROBECONTROL_H
#define SRC_MULTIMEDIAC_LIBQMEDIAVIDEOPROBECONTROL_H

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
typedef struct QMediaControl QMediaControl;
typedef struct QMediaVideoProbeControl QMediaVideoProbeControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVideoFrame QVideoFrame;
#endif

QMetaObject* QMediaVideoProbeControl_MetaObject(const QMediaVideoProbeControl* self);
void* QMediaVideoProbeControl_Metacast(QMediaVideoProbeControl* self, const char* param1);
int QMediaVideoProbeControl_Metacall(QMediaVideoProbeControl* self, int param1, int param2, void** param3);
libqt_string QMediaVideoProbeControl_Tr(const char* s);
libqt_string QMediaVideoProbeControl_TrUtf8(const char* s);
void QMediaVideoProbeControl_VideoFrameProbed(QMediaVideoProbeControl* self, QVideoFrame* frame);
void QMediaVideoProbeControl_Connect_VideoFrameProbed(QMediaVideoProbeControl* self, intptr_t slot);
void QMediaVideoProbeControl_Flush(QMediaVideoProbeControl* self);
void QMediaVideoProbeControl_Connect_Flush(QMediaVideoProbeControl* self, intptr_t slot);
libqt_string QMediaVideoProbeControl_Tr2(const char* s, const char* c);
libqt_string QMediaVideoProbeControl_Tr3(const char* s, const char* c, int n);
libqt_string QMediaVideoProbeControl_TrUtf82(const char* s, const char* c);
libqt_string QMediaVideoProbeControl_TrUtf83(const char* s, const char* c, int n);
bool QMediaVideoProbeControl_Event(QMediaVideoProbeControl* self, QEvent* event);
bool QMediaVideoProbeControl_EventFilter(QMediaVideoProbeControl* self, QObject* watched, QEvent* event);
void QMediaVideoProbeControl_Delete(QMediaVideoProbeControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
