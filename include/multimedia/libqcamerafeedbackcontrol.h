#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERAFEEDBACKCONTROL_H
#define SRC_MULTIMEDIAC_LIBQCAMERAFEEDBACKCONTROL_H

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
typedef struct QCameraFeedbackControl QCameraFeedbackControl;
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
typedef QCameraFeedbackControl::EventType EventType; // C++ enum
#else
typedef int EventType; // C ABI enum
#endif

QMetaObject* QCameraFeedbackControl_MetaObject(const QCameraFeedbackControl* self);
void* QCameraFeedbackControl_Metacast(QCameraFeedbackControl* self, const char* param1);
int QCameraFeedbackControl_Metacall(QCameraFeedbackControl* self, int param1, int param2, void** param3);
libqt_string QCameraFeedbackControl_Tr(const char* s);
libqt_string QCameraFeedbackControl_TrUtf8(const char* s);
bool QCameraFeedbackControl_IsEventFeedbackLocked(const QCameraFeedbackControl* self, int param1);
bool QCameraFeedbackControl_IsEventFeedbackEnabled(const QCameraFeedbackControl* self, int param1);
bool QCameraFeedbackControl_SetEventFeedbackEnabled(QCameraFeedbackControl* self, int param1, bool param2);
void QCameraFeedbackControl_ResetEventFeedback(QCameraFeedbackControl* self, int param1);
bool QCameraFeedbackControl_SetEventFeedbackSound(QCameraFeedbackControl* self, int param1, libqt_string filePath);
libqt_string QCameraFeedbackControl_Tr2(const char* s, const char* c);
libqt_string QCameraFeedbackControl_Tr3(const char* s, const char* c, int n);
libqt_string QCameraFeedbackControl_TrUtf82(const char* s, const char* c);
libqt_string QCameraFeedbackControl_TrUtf83(const char* s, const char* c, int n);
bool QCameraFeedbackControl_Event(QCameraFeedbackControl* self, QEvent* event);
bool QCameraFeedbackControl_EventFilter(QCameraFeedbackControl* self, QObject* watched, QEvent* event);
void QCameraFeedbackControl_Delete(QCameraFeedbackControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
