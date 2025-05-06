#pragma once
#ifndef SRCC_LIBQPAINTDEVICEWINDOW_H
#define SRCC_LIBQPAINTDEVICEWINDOW_H

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
typedef struct QAccessibleInterface QAccessibleInterface;
typedef struct QChildEvent QChildEvent;
typedef struct QCursor QCursor;
typedef struct QEvent QEvent;
typedef struct QExposeEvent QExposeEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMargins QMargins;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintDeviceWindow QPaintDeviceWindow;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QResizeEvent QResizeEvent;
typedef struct QScreen QScreen;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSurface QSurface;
typedef struct QSurfaceFormat QSurfaceFormat;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTouchEvent QTouchEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWindow QWindow;
#endif

QMetaObject* QPaintDeviceWindow_MetaObject(const QPaintDeviceWindow* self);
void* QPaintDeviceWindow_Metacast(QPaintDeviceWindow* self, const char* param1);
int QPaintDeviceWindow_Metacall(QPaintDeviceWindow* self, int param1, int param2, void** param3);
libqt_string QPaintDeviceWindow_Tr(const char* s);
libqt_string QPaintDeviceWindow_TrUtf8(const char* s);
void QPaintDeviceWindow_Update(QPaintDeviceWindow* self, QRect* rect);
void QPaintDeviceWindow_UpdateWithRegion(QPaintDeviceWindow* self, QRegion* region);
void QPaintDeviceWindow_Update2(QPaintDeviceWindow* self);
libqt_string QPaintDeviceWindow_Tr2(const char* s, const char* c);
libqt_string QPaintDeviceWindow_Tr3(const char* s, const char* c, int n);
libqt_string QPaintDeviceWindow_TrUtf82(const char* s, const char* c);
libqt_string QPaintDeviceWindow_TrUtf83(const char* s, const char* c, int n);
int QPaintDeviceWindow_SurfaceType(const QPaintDeviceWindow* self);
QSurfaceFormat* QPaintDeviceWindow_Format(const QPaintDeviceWindow* self);
QSize* QPaintDeviceWindow_Size(const QPaintDeviceWindow* self);
QAccessibleInterface* QPaintDeviceWindow_AccessibleRoot(const QPaintDeviceWindow* self);
QObject* QPaintDeviceWindow_FocusObject(const QPaintDeviceWindow* self);
bool QPaintDeviceWindow_EventFilter(QPaintDeviceWindow* self, QObject* watched, QEvent* event);
int QPaintDeviceWindow_DevType(const QPaintDeviceWindow* self);
void QPaintDeviceWindow_Delete(QPaintDeviceWindow* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
