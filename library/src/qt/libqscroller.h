#pragma once
#ifndef SRC_QTC_LIBQSCROLLER_H
#define SRC_QTC_LIBQSCROLLER_H

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
typedef struct QPointF QPointF;
typedef struct QRectF QRectF;
typedef struct QScroller QScroller;
typedef struct QScrollerProperties QScrollerProperties;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QScroller::Input Input;                             // C++ enum
typedef QScroller::ScrollerGestureType ScrollerGestureType; // C++ enum
typedef QScroller::State State;                             // C++ enum
#else
typedef int Input;               // C ABI enum
typedef int ScrollerGestureType; // C ABI enum
typedef int State;               // C ABI enum
#endif

QTLIBC_API QMetaObject* QScroller_MetaObject(const QScroller* self);
QTLIBC_API void* QScroller_Metacast(QScroller* self, const char* param1);
QTLIBC_API int QScroller_Metacall(QScroller* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QScroller_Tr(const char* s);
QTLIBC_API bool QScroller_HasScroller(QObject* target);
QTLIBC_API QScroller* QScroller_Scroller(QObject* target);
QTLIBC_API QScroller* QScroller_ScrollerWithTarget(QObject* target);
QTLIBC_API int QScroller_GrabGesture(QObject* target);
QTLIBC_API int QScroller_GrabbedGesture(QObject* target);
QTLIBC_API void QScroller_UngrabGesture(QObject* target);
QTLIBC_API libqt_list /* of QScroller* */ QScroller_ActiveScrollers();
QTLIBC_API QObject* QScroller_Target(const QScroller* self);
QTLIBC_API int QScroller_State(const QScroller* self);
QTLIBC_API bool QScroller_HandleInput(QScroller* self, int input, QPointF* position);
QTLIBC_API void QScroller_Stop(QScroller* self);
QTLIBC_API QPointF* QScroller_Velocity(const QScroller* self);
QTLIBC_API QPointF* QScroller_FinalPosition(const QScroller* self);
QTLIBC_API QPointF* QScroller_PixelPerMeter(const QScroller* self);
QTLIBC_API QScrollerProperties* QScroller_ScrollerProperties(const QScroller* self);
QTLIBC_API void QScroller_SetSnapPositionsX(QScroller* self, libqt_list /* of double */ positions);
QTLIBC_API void QScroller_SetSnapPositionsX2(QScroller* self, double first, double interval);
QTLIBC_API void QScroller_SetSnapPositionsY(QScroller* self, libqt_list /* of double */ positions);
QTLIBC_API void QScroller_SetSnapPositionsY2(QScroller* self, double first, double interval);
QTLIBC_API void QScroller_SetScrollerProperties(QScroller* self, QScrollerProperties* prop);
QTLIBC_API void QScroller_ScrollTo(QScroller* self, QPointF* pos);
QTLIBC_API void QScroller_ScrollTo2(QScroller* self, QPointF* pos, int scrollTime);
QTLIBC_API void QScroller_EnsureVisible(QScroller* self, QRectF* rect, double xmargin, double ymargin);
QTLIBC_API void QScroller_EnsureVisible2(QScroller* self, QRectF* rect, double xmargin, double ymargin, int scrollTime);
QTLIBC_API void QScroller_ResendPrepareEvent(QScroller* self);
QTLIBC_API void QScroller_StateChanged(QScroller* self, int newstate);
void QScroller_Connect_StateChanged(QScroller* self, intptr_t slot);
QTLIBC_API void QScroller_ScrollerPropertiesChanged(QScroller* self, QScrollerProperties* param1);
void QScroller_Connect_ScrollerPropertiesChanged(QScroller* self, intptr_t slot);
QTLIBC_API libqt_string QScroller_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QScroller_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QScroller_GrabGesture2(QObject* target, int gestureType);
QTLIBC_API bool QScroller_HandleInput3(QScroller* self, int input, QPointF* position, long long timestamp);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
