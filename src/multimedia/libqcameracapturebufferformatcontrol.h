#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERACAPTUREBUFFERFORMATCONTROL_H
#define SRC_MULTIMEDIAC_LIBQCAMERACAPTUREBUFFERFORMATCONTROL_H

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
typedef struct QCameraCaptureBufferFormatControl QCameraCaptureBufferFormatControl;
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

QMetaObject* QCameraCaptureBufferFormatControl_MetaObject(const QCameraCaptureBufferFormatControl* self);
void* QCameraCaptureBufferFormatControl_Metacast(QCameraCaptureBufferFormatControl* self, const char* param1);
int QCameraCaptureBufferFormatControl_Metacall(QCameraCaptureBufferFormatControl* self, int param1, int param2, void** param3);
libqt_string QCameraCaptureBufferFormatControl_Tr(const char* s);
libqt_string QCameraCaptureBufferFormatControl_TrUtf8(const char* s);
libqt_list /* of int */ QCameraCaptureBufferFormatControl_SupportedBufferFormats(const QCameraCaptureBufferFormatControl* self);
int QCameraCaptureBufferFormatControl_BufferFormat(const QCameraCaptureBufferFormatControl* self);
void QCameraCaptureBufferFormatControl_SetBufferFormat(QCameraCaptureBufferFormatControl* self, int format);
void QCameraCaptureBufferFormatControl_BufferFormatChanged(QCameraCaptureBufferFormatControl* self, int format);
void QCameraCaptureBufferFormatControl_Connect_BufferFormatChanged(QCameraCaptureBufferFormatControl* self, intptr_t slot);
libqt_string QCameraCaptureBufferFormatControl_Tr2(const char* s, const char* c);
libqt_string QCameraCaptureBufferFormatControl_Tr3(const char* s, const char* c, int n);
libqt_string QCameraCaptureBufferFormatControl_TrUtf82(const char* s, const char* c);
libqt_string QCameraCaptureBufferFormatControl_TrUtf83(const char* s, const char* c, int n);
bool QCameraCaptureBufferFormatControl_Event(QCameraCaptureBufferFormatControl* self, QEvent* event);
bool QCameraCaptureBufferFormatControl_EventFilter(QCameraCaptureBufferFormatControl* self, QObject* watched, QEvent* event);
void QCameraCaptureBufferFormatControl_Delete(QCameraCaptureBufferFormatControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
