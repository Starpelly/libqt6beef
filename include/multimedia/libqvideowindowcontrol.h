#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQVIDEOWINDOWCONTROL_H
#define SRC_MULTIMEDIAC_LIBQVIDEOWINDOWCONTROL_H

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
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVideoWindowControl QVideoWindowControl;
#endif

QMetaObject* QVideoWindowControl_MetaObject(const QVideoWindowControl* self);
void* QVideoWindowControl_Metacast(QVideoWindowControl* self, const char* param1);
int QVideoWindowControl_Metacall(QVideoWindowControl* self, int param1, int param2, void** param3);
libqt_string QVideoWindowControl_Tr(const char* s);
libqt_string QVideoWindowControl_TrUtf8(const char* s);
uintptr_t QVideoWindowControl_WinId(const QVideoWindowControl* self);
void QVideoWindowControl_SetWinId(QVideoWindowControl* self, uintptr_t id);
QRect* QVideoWindowControl_DisplayRect(const QVideoWindowControl* self);
void QVideoWindowControl_SetDisplayRect(QVideoWindowControl* self, QRect* rect);
bool QVideoWindowControl_IsFullScreen(const QVideoWindowControl* self);
void QVideoWindowControl_SetFullScreen(QVideoWindowControl* self, bool fullScreen);
void QVideoWindowControl_Repaint(QVideoWindowControl* self);
QSize* QVideoWindowControl_NativeSize(const QVideoWindowControl* self);
int QVideoWindowControl_AspectRatioMode(const QVideoWindowControl* self);
void QVideoWindowControl_SetAspectRatioMode(QVideoWindowControl* self, int mode);
int QVideoWindowControl_Brightness(const QVideoWindowControl* self);
void QVideoWindowControl_SetBrightness(QVideoWindowControl* self, int brightness);
int QVideoWindowControl_Contrast(const QVideoWindowControl* self);
void QVideoWindowControl_SetContrast(QVideoWindowControl* self, int contrast);
int QVideoWindowControl_Hue(const QVideoWindowControl* self);
void QVideoWindowControl_SetHue(QVideoWindowControl* self, int hue);
int QVideoWindowControl_Saturation(const QVideoWindowControl* self);
void QVideoWindowControl_SetSaturation(QVideoWindowControl* self, int saturation);
void QVideoWindowControl_FullScreenChanged(QVideoWindowControl* self, bool fullScreen);
void QVideoWindowControl_Connect_FullScreenChanged(QVideoWindowControl* self, intptr_t slot);
void QVideoWindowControl_BrightnessChanged(QVideoWindowControl* self, int brightness);
void QVideoWindowControl_Connect_BrightnessChanged(QVideoWindowControl* self, intptr_t slot);
void QVideoWindowControl_ContrastChanged(QVideoWindowControl* self, int contrast);
void QVideoWindowControl_Connect_ContrastChanged(QVideoWindowControl* self, intptr_t slot);
void QVideoWindowControl_HueChanged(QVideoWindowControl* self, int hue);
void QVideoWindowControl_Connect_HueChanged(QVideoWindowControl* self, intptr_t slot);
void QVideoWindowControl_SaturationChanged(QVideoWindowControl* self, int saturation);
void QVideoWindowControl_Connect_SaturationChanged(QVideoWindowControl* self, intptr_t slot);
void QVideoWindowControl_NativeSizeChanged(QVideoWindowControl* self);
void QVideoWindowControl_Connect_NativeSizeChanged(QVideoWindowControl* self, intptr_t slot);
libqt_string QVideoWindowControl_Tr2(const char* s, const char* c);
libqt_string QVideoWindowControl_Tr3(const char* s, const char* c, int n);
libqt_string QVideoWindowControl_TrUtf82(const char* s, const char* c);
libqt_string QVideoWindowControl_TrUtf83(const char* s, const char* c, int n);
bool QVideoWindowControl_Event(QVideoWindowControl* self, QEvent* event);
bool QVideoWindowControl_EventFilter(QVideoWindowControl* self, QObject* watched, QEvent* event);
void QVideoWindowControl_Delete(QVideoWindowControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
