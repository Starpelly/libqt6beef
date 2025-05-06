#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERAFOCUSCONTROL_H
#define SRC_MULTIMEDIAC_LIBQCAMERAFOCUSCONTROL_H

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
typedef struct QCameraFocusControl QCameraFocusControl;
typedef struct QCameraFocusZone QCameraFocusZone;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QPointF QPointF;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QMetaObject* QCameraFocusControl_MetaObject(const QCameraFocusControl* self);
void* QCameraFocusControl_Metacast(QCameraFocusControl* self, const char* param1);
int QCameraFocusControl_Metacall(QCameraFocusControl* self, int param1, int param2, void** param3);
libqt_string QCameraFocusControl_Tr(const char* s);
libqt_string QCameraFocusControl_TrUtf8(const char* s);
int QCameraFocusControl_FocusMode(const QCameraFocusControl* self);
void QCameraFocusControl_SetFocusMode(QCameraFocusControl* self, int mode);
bool QCameraFocusControl_IsFocusModeSupported(const QCameraFocusControl* self, int mode);
int QCameraFocusControl_FocusPointMode(const QCameraFocusControl* self);
void QCameraFocusControl_SetFocusPointMode(QCameraFocusControl* self, int mode);
bool QCameraFocusControl_IsFocusPointModeSupported(const QCameraFocusControl* self, int mode);
QPointF* QCameraFocusControl_CustomFocusPoint(const QCameraFocusControl* self);
void QCameraFocusControl_SetCustomFocusPoint(QCameraFocusControl* self, QPointF* point);
libqt_list /* of QCameraFocusZone* */ QCameraFocusControl_FocusZones(const QCameraFocusControl* self);
void QCameraFocusControl_FocusModeChanged(QCameraFocusControl* self, int mode);
void QCameraFocusControl_Connect_FocusModeChanged(QCameraFocusControl* self, intptr_t slot);
void QCameraFocusControl_FocusPointModeChanged(QCameraFocusControl* self, int mode);
void QCameraFocusControl_Connect_FocusPointModeChanged(QCameraFocusControl* self, intptr_t slot);
void QCameraFocusControl_CustomFocusPointChanged(QCameraFocusControl* self, QPointF* point);
void QCameraFocusControl_Connect_CustomFocusPointChanged(QCameraFocusControl* self, intptr_t slot);
void QCameraFocusControl_FocusZonesChanged(QCameraFocusControl* self);
void QCameraFocusControl_Connect_FocusZonesChanged(QCameraFocusControl* self, intptr_t slot);
libqt_string QCameraFocusControl_Tr2(const char* s, const char* c);
libqt_string QCameraFocusControl_Tr3(const char* s, const char* c, int n);
libqt_string QCameraFocusControl_TrUtf82(const char* s, const char* c);
libqt_string QCameraFocusControl_TrUtf83(const char* s, const char* c, int n);
bool QCameraFocusControl_Event(QCameraFocusControl* self, QEvent* event);
bool QCameraFocusControl_EventFilter(QCameraFocusControl* self, QObject* watched, QEvent* event);
void QCameraFocusControl_Delete(QCameraFocusControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
