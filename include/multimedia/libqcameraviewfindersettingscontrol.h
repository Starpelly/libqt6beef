#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERAVIEWFINDERSETTINGSCONTROL_H
#define SRC_MULTIMEDIAC_LIBQCAMERAVIEWFINDERSETTINGSCONTROL_H

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
typedef struct QCameraViewfinderSettings QCameraViewfinderSettings;
typedef struct QCameraViewfinderSettingsControl QCameraViewfinderSettingsControl;
typedef struct QCameraViewfinderSettingsControl2 QCameraViewfinderSettingsControl2;
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

#ifdef __cplusplus
typedef QCameraViewfinderSettingsControl::ViewfinderParameter ViewfinderParameter; // C++ enum
#else
typedef int ViewfinderParameter; // C ABI enum
#endif

QMetaObject* QCameraViewfinderSettingsControl_MetaObject(const QCameraViewfinderSettingsControl* self);
void* QCameraViewfinderSettingsControl_Metacast(QCameraViewfinderSettingsControl* self, const char* param1);
int QCameraViewfinderSettingsControl_Metacall(QCameraViewfinderSettingsControl* self, int param1, int param2, void** param3);
libqt_string QCameraViewfinderSettingsControl_Tr(const char* s);
libqt_string QCameraViewfinderSettingsControl_TrUtf8(const char* s);
bool QCameraViewfinderSettingsControl_IsViewfinderParameterSupported(const QCameraViewfinderSettingsControl* self, int parameter);
QVariant* QCameraViewfinderSettingsControl_ViewfinderParameter(const QCameraViewfinderSettingsControl* self, int parameter);
void QCameraViewfinderSettingsControl_SetViewfinderParameter(QCameraViewfinderSettingsControl* self, int parameter, QVariant* value);
libqt_string QCameraViewfinderSettingsControl_Tr2(const char* s, const char* c);
libqt_string QCameraViewfinderSettingsControl_Tr3(const char* s, const char* c, int n);
libqt_string QCameraViewfinderSettingsControl_TrUtf82(const char* s, const char* c);
libqt_string QCameraViewfinderSettingsControl_TrUtf83(const char* s, const char* c, int n);
bool QCameraViewfinderSettingsControl_Event(QCameraViewfinderSettingsControl* self, QEvent* event);
bool QCameraViewfinderSettingsControl_EventFilter(QCameraViewfinderSettingsControl* self, QObject* watched, QEvent* event);
void QCameraViewfinderSettingsControl_Delete(QCameraViewfinderSettingsControl* self);

QMetaObject* QCameraViewfinderSettingsControl2_MetaObject(const QCameraViewfinderSettingsControl2* self);
void* QCameraViewfinderSettingsControl2_Metacast(QCameraViewfinderSettingsControl2* self, const char* param1);
int QCameraViewfinderSettingsControl2_Metacall(QCameraViewfinderSettingsControl2* self, int param1, int param2, void** param3);
libqt_string QCameraViewfinderSettingsControl2_Tr(const char* s);
libqt_string QCameraViewfinderSettingsControl2_TrUtf8(const char* s);
libqt_list /* of QCameraViewfinderSettings* */ QCameraViewfinderSettingsControl2_SupportedViewfinderSettings(const QCameraViewfinderSettingsControl2* self);
QCameraViewfinderSettings* QCameraViewfinderSettingsControl2_ViewfinderSettings(const QCameraViewfinderSettingsControl2* self);
void QCameraViewfinderSettingsControl2_SetViewfinderSettings(QCameraViewfinderSettingsControl2* self, QCameraViewfinderSettings* settings);
libqt_string QCameraViewfinderSettingsControl2_Tr2(const char* s, const char* c);
libqt_string QCameraViewfinderSettingsControl2_Tr3(const char* s, const char* c, int n);
libqt_string QCameraViewfinderSettingsControl2_TrUtf82(const char* s, const char* c);
libqt_string QCameraViewfinderSettingsControl2_TrUtf83(const char* s, const char* c, int n);
bool QCameraViewfinderSettingsControl2_Event(QCameraViewfinderSettingsControl2* self, QEvent* event);
bool QCameraViewfinderSettingsControl2_EventFilter(QCameraViewfinderSettingsControl2* self, QObject* watched, QEvent* event);
void QCameraViewfinderSettingsControl2_Delete(QCameraViewfinderSettingsControl2* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
