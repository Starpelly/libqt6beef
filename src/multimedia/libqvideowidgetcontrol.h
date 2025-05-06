#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQVIDEOWIDGETCONTROL_H
#define SRC_MULTIMEDIAC_LIBQVIDEOWIDGETCONTROL_H

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
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVideoWidgetControl QVideoWidgetControl;
typedef struct QWidget QWidget;
#endif

QMetaObject* QVideoWidgetControl_MetaObject(const QVideoWidgetControl* self);
void* QVideoWidgetControl_Metacast(QVideoWidgetControl* self, const char* param1);
int QVideoWidgetControl_Metacall(QVideoWidgetControl* self, int param1, int param2, void** param3);
libqt_string QVideoWidgetControl_Tr(const char* s);
libqt_string QVideoWidgetControl_TrUtf8(const char* s);
QWidget* QVideoWidgetControl_VideoWidget(QVideoWidgetControl* self);
int QVideoWidgetControl_AspectRatioMode(const QVideoWidgetControl* self);
void QVideoWidgetControl_SetAspectRatioMode(QVideoWidgetControl* self, int mode);
bool QVideoWidgetControl_IsFullScreen(const QVideoWidgetControl* self);
void QVideoWidgetControl_SetFullScreen(QVideoWidgetControl* self, bool fullScreen);
int QVideoWidgetControl_Brightness(const QVideoWidgetControl* self);
void QVideoWidgetControl_SetBrightness(QVideoWidgetControl* self, int brightness);
int QVideoWidgetControl_Contrast(const QVideoWidgetControl* self);
void QVideoWidgetControl_SetContrast(QVideoWidgetControl* self, int contrast);
int QVideoWidgetControl_Hue(const QVideoWidgetControl* self);
void QVideoWidgetControl_SetHue(QVideoWidgetControl* self, int hue);
int QVideoWidgetControl_Saturation(const QVideoWidgetControl* self);
void QVideoWidgetControl_SetSaturation(QVideoWidgetControl* self, int saturation);
void QVideoWidgetControl_FullScreenChanged(QVideoWidgetControl* self, bool fullScreen);
void QVideoWidgetControl_Connect_FullScreenChanged(QVideoWidgetControl* self, intptr_t slot);
void QVideoWidgetControl_BrightnessChanged(QVideoWidgetControl* self, int brightness);
void QVideoWidgetControl_Connect_BrightnessChanged(QVideoWidgetControl* self, intptr_t slot);
void QVideoWidgetControl_ContrastChanged(QVideoWidgetControl* self, int contrast);
void QVideoWidgetControl_Connect_ContrastChanged(QVideoWidgetControl* self, intptr_t slot);
void QVideoWidgetControl_HueChanged(QVideoWidgetControl* self, int hue);
void QVideoWidgetControl_Connect_HueChanged(QVideoWidgetControl* self, intptr_t slot);
void QVideoWidgetControl_SaturationChanged(QVideoWidgetControl* self, int saturation);
void QVideoWidgetControl_Connect_SaturationChanged(QVideoWidgetControl* self, intptr_t slot);
libqt_string QVideoWidgetControl_Tr2(const char* s, const char* c);
libqt_string QVideoWidgetControl_Tr3(const char* s, const char* c, int n);
libqt_string QVideoWidgetControl_TrUtf82(const char* s, const char* c);
libqt_string QVideoWidgetControl_TrUtf83(const char* s, const char* c, int n);
bool QVideoWidgetControl_Event(QVideoWidgetControl* self, QEvent* event);
bool QVideoWidgetControl_EventFilter(QVideoWidgetControl* self, QObject* watched, QEvent* event);
void QVideoWidgetControl_Delete(QVideoWidgetControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
