#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERAEXPOSURECONTROL_H
#define SRC_MULTIMEDIAC_LIBQCAMERAEXPOSURECONTROL_H

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
typedef struct QCameraExposureControl QCameraExposureControl;
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
typedef QCameraExposureControl::ExposureParameter ExposureParameter; // C++ enum
#else
typedef int ExposureParameter; // C ABI enum
#endif

QMetaObject* QCameraExposureControl_MetaObject(const QCameraExposureControl* self);
void* QCameraExposureControl_Metacast(QCameraExposureControl* self, const char* param1);
int QCameraExposureControl_Metacall(QCameraExposureControl* self, int param1, int param2, void** param3);
libqt_string QCameraExposureControl_Tr(const char* s);
libqt_string QCameraExposureControl_TrUtf8(const char* s);
bool QCameraExposureControl_IsParameterSupported(const QCameraExposureControl* self, int parameter);
QVariant* QCameraExposureControl_RequestedValue(const QCameraExposureControl* self, int parameter);
QVariant* QCameraExposureControl_ActualValue(const QCameraExposureControl* self, int parameter);
bool QCameraExposureControl_SetValue(QCameraExposureControl* self, int parameter, QVariant* value);
void QCameraExposureControl_RequestedValueChanged(QCameraExposureControl* self, int parameter);
void QCameraExposureControl_Connect_RequestedValueChanged(QCameraExposureControl* self, intptr_t slot);
void QCameraExposureControl_ActualValueChanged(QCameraExposureControl* self, int parameter);
void QCameraExposureControl_Connect_ActualValueChanged(QCameraExposureControl* self, intptr_t slot);
void QCameraExposureControl_ParameterRangeChanged(QCameraExposureControl* self, int parameter);
void QCameraExposureControl_Connect_ParameterRangeChanged(QCameraExposureControl* self, intptr_t slot);
libqt_string QCameraExposureControl_Tr2(const char* s, const char* c);
libqt_string QCameraExposureControl_Tr3(const char* s, const char* c, int n);
libqt_string QCameraExposureControl_TrUtf82(const char* s, const char* c);
libqt_string QCameraExposureControl_TrUtf83(const char* s, const char* c, int n);
bool QCameraExposureControl_Event(QCameraExposureControl* self, QEvent* event);
bool QCameraExposureControl_EventFilter(QCameraExposureControl* self, QObject* watched, QEvent* event);
void QCameraExposureControl_Delete(QCameraExposureControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
