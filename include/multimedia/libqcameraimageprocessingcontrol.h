#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERAIMAGEPROCESSINGCONTROL_H
#define SRC_MULTIMEDIAC_LIBQCAMERAIMAGEPROCESSINGCONTROL_H

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
typedef struct QCameraImageProcessingControl QCameraImageProcessingControl;
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
typedef QCameraImageProcessingControl::ProcessingParameter ProcessingParameter; // C++ enum
#else
typedef int ProcessingParameter; // C ABI enum
#endif

QMetaObject* QCameraImageProcessingControl_MetaObject(const QCameraImageProcessingControl* self);
void* QCameraImageProcessingControl_Metacast(QCameraImageProcessingControl* self, const char* param1);
int QCameraImageProcessingControl_Metacall(QCameraImageProcessingControl* self, int param1, int param2, void** param3);
libqt_string QCameraImageProcessingControl_Tr(const char* s);
libqt_string QCameraImageProcessingControl_TrUtf8(const char* s);
bool QCameraImageProcessingControl_IsParameterSupported(const QCameraImageProcessingControl* self, int param1);
bool QCameraImageProcessingControl_IsParameterValueSupported(const QCameraImageProcessingControl* self, int parameter, QVariant* value);
QVariant* QCameraImageProcessingControl_Parameter(const QCameraImageProcessingControl* self, int parameter);
void QCameraImageProcessingControl_SetParameter(QCameraImageProcessingControl* self, int parameter, QVariant* value);
libqt_string QCameraImageProcessingControl_Tr2(const char* s, const char* c);
libqt_string QCameraImageProcessingControl_Tr3(const char* s, const char* c, int n);
libqt_string QCameraImageProcessingControl_TrUtf82(const char* s, const char* c);
libqt_string QCameraImageProcessingControl_TrUtf83(const char* s, const char* c, int n);
bool QCameraImageProcessingControl_Event(QCameraImageProcessingControl* self, QEvent* event);
bool QCameraImageProcessingControl_EventFilter(QCameraImageProcessingControl* self, QObject* watched, QEvent* event);
void QCameraImageProcessingControl_Delete(QCameraImageProcessingControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
