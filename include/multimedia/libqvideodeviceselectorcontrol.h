#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQVIDEODEVICESELECTORCONTROL_H
#define SRC_MULTIMEDIAC_LIBQVIDEODEVICESELECTORCONTROL_H

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
typedef struct QVideoDeviceSelectorControl QVideoDeviceSelectorControl;
#endif

QMetaObject* QVideoDeviceSelectorControl_MetaObject(const QVideoDeviceSelectorControl* self);
void* QVideoDeviceSelectorControl_Metacast(QVideoDeviceSelectorControl* self, const char* param1);
int QVideoDeviceSelectorControl_Metacall(QVideoDeviceSelectorControl* self, int param1, int param2, void** param3);
libqt_string QVideoDeviceSelectorControl_Tr(const char* s);
libqt_string QVideoDeviceSelectorControl_TrUtf8(const char* s);
int QVideoDeviceSelectorControl_DeviceCount(const QVideoDeviceSelectorControl* self);
libqt_string QVideoDeviceSelectorControl_DeviceName(const QVideoDeviceSelectorControl* self, int index);
libqt_string QVideoDeviceSelectorControl_DeviceDescription(const QVideoDeviceSelectorControl* self, int index);
int QVideoDeviceSelectorControl_DefaultDevice(const QVideoDeviceSelectorControl* self);
int QVideoDeviceSelectorControl_SelectedDevice(const QVideoDeviceSelectorControl* self);
void QVideoDeviceSelectorControl_SetSelectedDevice(QVideoDeviceSelectorControl* self, int index);
void QVideoDeviceSelectorControl_SelectedDeviceChanged(QVideoDeviceSelectorControl* self, int index);
void QVideoDeviceSelectorControl_Connect_SelectedDeviceChanged(QVideoDeviceSelectorControl* self, intptr_t slot);
void QVideoDeviceSelectorControl_SelectedDeviceChangedWithName(QVideoDeviceSelectorControl* self, libqt_string name);
void QVideoDeviceSelectorControl_Connect_SelectedDeviceChangedWithName(QVideoDeviceSelectorControl* self, intptr_t slot);
void QVideoDeviceSelectorControl_DevicesChanged(QVideoDeviceSelectorControl* self);
void QVideoDeviceSelectorControl_Connect_DevicesChanged(QVideoDeviceSelectorControl* self, intptr_t slot);
libqt_string QVideoDeviceSelectorControl_Tr2(const char* s, const char* c);
libqt_string QVideoDeviceSelectorControl_Tr3(const char* s, const char* c, int n);
libqt_string QVideoDeviceSelectorControl_TrUtf82(const char* s, const char* c);
libqt_string QVideoDeviceSelectorControl_TrUtf83(const char* s, const char* c, int n);
bool QVideoDeviceSelectorControl_Event(QVideoDeviceSelectorControl* self, QEvent* event);
bool QVideoDeviceSelectorControl_EventFilter(QVideoDeviceSelectorControl* self, QObject* watched, QEvent* event);
void QVideoDeviceSelectorControl_Delete(QVideoDeviceSelectorControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
