#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQVIDEORENDERERCONTROL_H
#define SRC_MULTIMEDIAC_LIBQVIDEORENDERERCONTROL_H

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
typedef struct QAbstractVideoSurface QAbstractVideoSurface;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVideoRendererControl QVideoRendererControl;
#endif

QMetaObject* QVideoRendererControl_MetaObject(const QVideoRendererControl* self);
void* QVideoRendererControl_Metacast(QVideoRendererControl* self, const char* param1);
int QVideoRendererControl_Metacall(QVideoRendererControl* self, int param1, int param2, void** param3);
libqt_string QVideoRendererControl_Tr(const char* s);
libqt_string QVideoRendererControl_TrUtf8(const char* s);
QAbstractVideoSurface* QVideoRendererControl_Surface(const QVideoRendererControl* self);
void QVideoRendererControl_SetSurface(QVideoRendererControl* self, QAbstractVideoSurface* surface);
libqt_string QVideoRendererControl_Tr2(const char* s, const char* c);
libqt_string QVideoRendererControl_Tr3(const char* s, const char* c, int n);
libqt_string QVideoRendererControl_TrUtf82(const char* s, const char* c);
libqt_string QVideoRendererControl_TrUtf83(const char* s, const char* c, int n);
bool QVideoRendererControl_Event(QVideoRendererControl* self, QEvent* event);
bool QVideoRendererControl_EventFilter(QVideoRendererControl* self, QObject* watched, QEvent* event);
void QVideoRendererControl_Delete(QVideoRendererControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
