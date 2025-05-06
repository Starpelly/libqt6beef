#pragma once
#ifndef SRC_QTC_LIBQSCREEN_H
#define SRC_QTC_LIBQSCREEN_H

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
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QScreen QScreen;
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QMetaObject* QScreen_MetaObject(const QScreen* self);
QTLIBC_API void* QScreen_Metacast(QScreen* self, const char* param1);
QTLIBC_API int QScreen_Metacall(QScreen* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QScreen_Tr(const char* s);
QTLIBC_API libqt_string QScreen_Name(const QScreen* self);
QTLIBC_API libqt_string QScreen_Manufacturer(const QScreen* self);
QTLIBC_API libqt_string QScreen_Model(const QScreen* self);
QTLIBC_API libqt_string QScreen_SerialNumber(const QScreen* self);
QTLIBC_API int QScreen_Depth(const QScreen* self);
QTLIBC_API QSize* QScreen_Size(const QScreen* self);
QTLIBC_API QRect* QScreen_Geometry(const QScreen* self);
QTLIBC_API QSizeF* QScreen_PhysicalSize(const QScreen* self);
QTLIBC_API double QScreen_PhysicalDotsPerInchX(const QScreen* self);
QTLIBC_API double QScreen_PhysicalDotsPerInchY(const QScreen* self);
QTLIBC_API double QScreen_PhysicalDotsPerInch(const QScreen* self);
QTLIBC_API double QScreen_LogicalDotsPerInchX(const QScreen* self);
QTLIBC_API double QScreen_LogicalDotsPerInchY(const QScreen* self);
QTLIBC_API double QScreen_LogicalDotsPerInch(const QScreen* self);
QTLIBC_API double QScreen_DevicePixelRatio(const QScreen* self);
QTLIBC_API QSize* QScreen_AvailableSize(const QScreen* self);
QTLIBC_API QRect* QScreen_AvailableGeometry(const QScreen* self);
QTLIBC_API libqt_list /* of QScreen* */ QScreen_VirtualSiblings(const QScreen* self);
QTLIBC_API QScreen* QScreen_VirtualSiblingAt(QScreen* self, QPoint* point);
QTLIBC_API QSize* QScreen_VirtualSize(const QScreen* self);
QTLIBC_API QRect* QScreen_VirtualGeometry(const QScreen* self);
QTLIBC_API QSize* QScreen_AvailableVirtualSize(const QScreen* self);
QTLIBC_API QRect* QScreen_AvailableVirtualGeometry(const QScreen* self);
QTLIBC_API int QScreen_PrimaryOrientation(const QScreen* self);
QTLIBC_API int QScreen_Orientation(const QScreen* self);
QTLIBC_API int QScreen_NativeOrientation(const QScreen* self);
QTLIBC_API int QScreen_AngleBetween(const QScreen* self, int a, int b);
QTLIBC_API QTransform* QScreen_TransformBetween(const QScreen* self, int a, int b, QRect* target);
QTLIBC_API QRect* QScreen_MapBetween(const QScreen* self, int a, int b, QRect* rect);
QTLIBC_API bool QScreen_IsPortrait(const QScreen* self, int orientation);
QTLIBC_API bool QScreen_IsLandscape(const QScreen* self, int orientation);
QTLIBC_API QPixmap* QScreen_GrabWindow(QScreen* self);
QTLIBC_API double QScreen_RefreshRate(const QScreen* self);
QTLIBC_API void QScreen_GeometryChanged(QScreen* self, QRect* geometry);
QTLIBC_API void QScreen_Connect_GeometryChanged(QScreen* self, intptr_t slot);
QTLIBC_API void QScreen_AvailableGeometryChanged(QScreen* self, QRect* geometry);
QTLIBC_API void QScreen_Connect_AvailableGeometryChanged(QScreen* self, intptr_t slot);
QTLIBC_API void QScreen_PhysicalSizeChanged(QScreen* self, QSizeF* size);
QTLIBC_API void QScreen_Connect_PhysicalSizeChanged(QScreen* self, intptr_t slot);
QTLIBC_API void QScreen_PhysicalDotsPerInchChanged(QScreen* self, double dpi);
QTLIBC_API void QScreen_Connect_PhysicalDotsPerInchChanged(QScreen* self, intptr_t slot);
QTLIBC_API void QScreen_LogicalDotsPerInchChanged(QScreen* self, double dpi);
QTLIBC_API void QScreen_Connect_LogicalDotsPerInchChanged(QScreen* self, intptr_t slot);
QTLIBC_API void QScreen_VirtualGeometryChanged(QScreen* self, QRect* rect);
QTLIBC_API void QScreen_Connect_VirtualGeometryChanged(QScreen* self, intptr_t slot);
QTLIBC_API void QScreen_PrimaryOrientationChanged(QScreen* self, int orientation);
QTLIBC_API void QScreen_Connect_PrimaryOrientationChanged(QScreen* self, intptr_t slot);
QTLIBC_API void QScreen_OrientationChanged(QScreen* self, int orientation);
QTLIBC_API void QScreen_Connect_OrientationChanged(QScreen* self, intptr_t slot);
QTLIBC_API void QScreen_RefreshRateChanged(QScreen* self, double refreshRate);
QTLIBC_API void QScreen_Connect_RefreshRateChanged(QScreen* self, intptr_t slot);
QTLIBC_API libqt_string QScreen_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QScreen_Tr3(const char* s, const char* c, int n);
QTLIBC_API QPixmap* QScreen_GrabWindow1(QScreen* self, uintptr_t window);
QTLIBC_API QPixmap* QScreen_GrabWindow2(QScreen* self, uintptr_t window, int x);
QTLIBC_API QPixmap* QScreen_GrabWindow3(QScreen* self, uintptr_t window, int x, int y);
QTLIBC_API QPixmap* QScreen_GrabWindow4(QScreen* self, uintptr_t window, int x, int y, int w);
QTLIBC_API QPixmap* QScreen_GrabWindow5(QScreen* self, uintptr_t window, int x, int y, int w, int h);
QTLIBC_API bool QScreen_Event(QScreen* self, QEvent* event);
QTLIBC_API bool QScreen_EventFilter(QScreen* self, QObject* watched, QEvent* event);
QTLIBC_API void QScreen_Delete(QScreen* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
