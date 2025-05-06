#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERAFOCUS_H
#define SRC_MULTIMEDIAC_LIBQCAMERAFOCUS_H

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
typedef struct QCameraFocus QCameraFocus;
typedef struct QCameraFocusZone QCameraFocusZone;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QPointF QPointF;
typedef struct QRectF QRectF;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QCameraFocus::FocusMode FocusMode;                 // C++ enum
typedef QCameraFocus::FocusModes FocusModes;               // C++ QFlags
typedef QCameraFocus::FocusPointMode FocusPointMode;       // C++ enum
typedef QCameraFocusZone::FocusZoneStatus FocusZoneStatus; // C++ enum
#else
typedef int FocusMode;       // C ABI enum
typedef int FocusModes;      // C ABI QFlags
typedef int FocusPointMode;  // C ABI enum
typedef int FocusZoneStatus; // C ABI enum
#endif

QCameraFocusZone* QCameraFocusZone_new();
QCameraFocusZone* QCameraFocusZone_new2(QRectF* area);
QCameraFocusZone* QCameraFocusZone_new3(QCameraFocusZone* other);
QCameraFocusZone* QCameraFocusZone_new4(QRectF* area, int status);
void QCameraFocusZone_OperatorAssign(QCameraFocusZone* self, QCameraFocusZone* other);
bool QCameraFocusZone_OperatorEqual(const QCameraFocusZone* self, QCameraFocusZone* other);
bool QCameraFocusZone_OperatorNotEqual(const QCameraFocusZone* self, QCameraFocusZone* other);
bool QCameraFocusZone_IsValid(const QCameraFocusZone* self);
QRectF* QCameraFocusZone_Area(const QCameraFocusZone* self);
int QCameraFocusZone_Status(const QCameraFocusZone* self);
void QCameraFocusZone_SetStatus(QCameraFocusZone* self, int status);
void QCameraFocusZone_Delete(QCameraFocusZone* self);

QMetaObject* QCameraFocus_MetaObject(const QCameraFocus* self);
void* QCameraFocus_Metacast(QCameraFocus* self, const char* param1);
int QCameraFocus_Metacall(QCameraFocus* self, int param1, int param2, void** param3);
libqt_string QCameraFocus_Tr(const char* s);
libqt_string QCameraFocus_TrUtf8(const char* s);
bool QCameraFocus_IsAvailable(const QCameraFocus* self);
int QCameraFocus_FocusMode(const QCameraFocus* self);
void QCameraFocus_SetFocusMode(QCameraFocus* self, int mode);
bool QCameraFocus_IsFocusModeSupported(const QCameraFocus* self, int mode);
int QCameraFocus_FocusPointMode(const QCameraFocus* self);
void QCameraFocus_SetFocusPointMode(QCameraFocus* self, int mode);
bool QCameraFocus_IsFocusPointModeSupported(const QCameraFocus* self, int param1);
QPointF* QCameraFocus_CustomFocusPoint(const QCameraFocus* self);
void QCameraFocus_SetCustomFocusPoint(QCameraFocus* self, QPointF* point);
libqt_list /* of QCameraFocusZone* */ QCameraFocus_FocusZones(const QCameraFocus* self);
double QCameraFocus_MaximumOpticalZoom(const QCameraFocus* self);
double QCameraFocus_MaximumDigitalZoom(const QCameraFocus* self);
double QCameraFocus_OpticalZoom(const QCameraFocus* self);
double QCameraFocus_DigitalZoom(const QCameraFocus* self);
void QCameraFocus_ZoomTo(QCameraFocus* self, double opticalZoom, double digitalZoom);
void QCameraFocus_OpticalZoomChanged(QCameraFocus* self, double param1);
void QCameraFocus_Connect_OpticalZoomChanged(QCameraFocus* self, intptr_t slot);
void QCameraFocus_DigitalZoomChanged(QCameraFocus* self, double param1);
void QCameraFocus_Connect_DigitalZoomChanged(QCameraFocus* self, intptr_t slot);
void QCameraFocus_FocusZonesChanged(QCameraFocus* self);
void QCameraFocus_Connect_FocusZonesChanged(QCameraFocus* self, intptr_t slot);
void QCameraFocus_MaximumOpticalZoomChanged(QCameraFocus* self, double param1);
void QCameraFocus_Connect_MaximumOpticalZoomChanged(QCameraFocus* self, intptr_t slot);
void QCameraFocus_MaximumDigitalZoomChanged(QCameraFocus* self, double param1);
void QCameraFocus_Connect_MaximumDigitalZoomChanged(QCameraFocus* self, intptr_t slot);
libqt_string QCameraFocus_Tr2(const char* s, const char* c);
libqt_string QCameraFocus_Tr3(const char* s, const char* c, int n);
libqt_string QCameraFocus_TrUtf82(const char* s, const char* c);
libqt_string QCameraFocus_TrUtf83(const char* s, const char* c, int n);
bool QCameraFocus_Event(QCameraFocus* self, QEvent* event);
bool QCameraFocus_EventFilter(QCameraFocus* self, QObject* watched, QEvent* event);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
