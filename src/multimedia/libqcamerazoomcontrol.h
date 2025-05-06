#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERAZOOMCONTROL_H
#define SRC_MULTIMEDIAC_LIBQCAMERAZOOMCONTROL_H

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
typedef struct QCameraZoomControl QCameraZoomControl;
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
#endif

QMetaObject* QCameraZoomControl_MetaObject(const QCameraZoomControl* self);
void* QCameraZoomControl_Metacast(QCameraZoomControl* self, const char* param1);
int QCameraZoomControl_Metacall(QCameraZoomControl* self, int param1, int param2, void** param3);
libqt_string QCameraZoomControl_Tr(const char* s);
libqt_string QCameraZoomControl_TrUtf8(const char* s);
double QCameraZoomControl_MaximumOpticalZoom(const QCameraZoomControl* self);
double QCameraZoomControl_MaximumDigitalZoom(const QCameraZoomControl* self);
double QCameraZoomControl_RequestedOpticalZoom(const QCameraZoomControl* self);
double QCameraZoomControl_RequestedDigitalZoom(const QCameraZoomControl* self);
double QCameraZoomControl_CurrentOpticalZoom(const QCameraZoomControl* self);
double QCameraZoomControl_CurrentDigitalZoom(const QCameraZoomControl* self);
void QCameraZoomControl_ZoomTo(QCameraZoomControl* self, double optical, double digital);
void QCameraZoomControl_MaximumOpticalZoomChanged(QCameraZoomControl* self, double param1);
void QCameraZoomControl_Connect_MaximumOpticalZoomChanged(QCameraZoomControl* self, intptr_t slot);
void QCameraZoomControl_MaximumDigitalZoomChanged(QCameraZoomControl* self, double param1);
void QCameraZoomControl_Connect_MaximumDigitalZoomChanged(QCameraZoomControl* self, intptr_t slot);
void QCameraZoomControl_RequestedOpticalZoomChanged(QCameraZoomControl* self, double opticalZoom);
void QCameraZoomControl_Connect_RequestedOpticalZoomChanged(QCameraZoomControl* self, intptr_t slot);
void QCameraZoomControl_RequestedDigitalZoomChanged(QCameraZoomControl* self, double digitalZoom);
void QCameraZoomControl_Connect_RequestedDigitalZoomChanged(QCameraZoomControl* self, intptr_t slot);
void QCameraZoomControl_CurrentOpticalZoomChanged(QCameraZoomControl* self, double opticalZoom);
void QCameraZoomControl_Connect_CurrentOpticalZoomChanged(QCameraZoomControl* self, intptr_t slot);
void QCameraZoomControl_CurrentDigitalZoomChanged(QCameraZoomControl* self, double digitalZoom);
void QCameraZoomControl_Connect_CurrentDigitalZoomChanged(QCameraZoomControl* self, intptr_t slot);
libqt_string QCameraZoomControl_Tr2(const char* s, const char* c);
libqt_string QCameraZoomControl_Tr3(const char* s, const char* c, int n);
libqt_string QCameraZoomControl_TrUtf82(const char* s, const char* c);
libqt_string QCameraZoomControl_TrUtf83(const char* s, const char* c, int n);
bool QCameraZoomControl_Event(QCameraZoomControl* self, QEvent* event);
bool QCameraZoomControl_EventFilter(QCameraZoomControl* self, QObject* watched, QEvent* event);
void QCameraZoomControl_Delete(QCameraZoomControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
