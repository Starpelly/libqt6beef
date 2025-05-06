#pragma once
#ifndef SRCC_LIBQCOREEVENT_H
#define SRCC_LIBQCOREEVENT_H

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
#else
typedef struct QChildEvent QChildEvent;
typedef struct QDynamicPropertyChangeEvent QDynamicPropertyChangeEvent;
typedef struct QEvent QEvent;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

#ifdef __cplusplus
typedef QEvent::QtGadgetHelper QtGadgetHelper; // C++ QFlags
typedef QEvent::Type Type;                     // C++ enum
#else
typedef unsigned char Type;  // C ABI enum
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QTLIBC_API QEvent* QEvent_new(int typeVal);
QTLIBC_API int QEvent_Type(const QEvent* self);
QTLIBC_API bool QEvent_Spontaneous(const QEvent* self);
QTLIBC_API void QEvent_SetAccepted(QEvent* self, bool accepted);
QTLIBC_API void QEvent_OnSetAccepted(QEvent* self, intptr_t slot);
QTLIBC_API void QEvent_QBaseSetAccepted(QEvent* self, bool accepted);
QTLIBC_API bool QEvent_IsAccepted(const QEvent* self);
QTLIBC_API void QEvent_Accept(QEvent* self);
QTLIBC_API void QEvent_Ignore(QEvent* self);
QTLIBC_API bool QEvent_IsInputEvent(const QEvent* self);
QTLIBC_API bool QEvent_IsPointerEvent(const QEvent* self);
QTLIBC_API bool QEvent_IsSinglePointEvent(const QEvent* self);
QTLIBC_API int QEvent_RegisterEventType();
QTLIBC_API QEvent* QEvent_Clone(const QEvent* self);
QTLIBC_API void QEvent_OnClone(const QEvent* self, intptr_t slot);
QTLIBC_API QEvent* QEvent_QBaseClone(const QEvent* self);
QTLIBC_API int QEvent_RegisterEventType1(int hint);
QTLIBC_API void QEvent_Delete(QEvent* self);

QTLIBC_API QTimerEvent* QTimerEvent_new(int timerId);
QTLIBC_API QTimerEvent* QTimerEvent_Clone(const QTimerEvent* self);
QTLIBC_API void QTimerEvent_OnClone(const QTimerEvent* self, intptr_t slot);
QTLIBC_API QTimerEvent* QTimerEvent_QBaseClone(const QTimerEvent* self);
QTLIBC_API int QTimerEvent_TimerId(const QTimerEvent* self);
QTLIBC_API void QTimerEvent_SetAccepted(QTimerEvent* self, bool accepted);
QTLIBC_API void QTimerEvent_OnSetAccepted(QTimerEvent* self, intptr_t slot);
QTLIBC_API void QTimerEvent_QBaseSetAccepted(QTimerEvent* self, bool accepted);
QTLIBC_API void QTimerEvent_Delete(QTimerEvent* self);

QTLIBC_API QChildEvent* QChildEvent_new(int typeVal, QObject* child);
QTLIBC_API QChildEvent* QChildEvent_Clone(const QChildEvent* self);
QTLIBC_API void QChildEvent_OnClone(const QChildEvent* self, intptr_t slot);
QTLIBC_API QChildEvent* QChildEvent_QBaseClone(const QChildEvent* self);
QTLIBC_API QObject* QChildEvent_Child(const QChildEvent* self);
QTLIBC_API bool QChildEvent_Added(const QChildEvent* self);
QTLIBC_API bool QChildEvent_Polished(const QChildEvent* self);
QTLIBC_API bool QChildEvent_Removed(const QChildEvent* self);
QTLIBC_API void QChildEvent_SetAccepted(QChildEvent* self, bool accepted);
QTLIBC_API void QChildEvent_OnSetAccepted(QChildEvent* self, intptr_t slot);
QTLIBC_API void QChildEvent_QBaseSetAccepted(QChildEvent* self, bool accepted);
QTLIBC_API void QChildEvent_Delete(QChildEvent* self);

QTLIBC_API QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_new(libqt_string name);
QTLIBC_API QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_Clone(const QDynamicPropertyChangeEvent* self);
QTLIBC_API void QDynamicPropertyChangeEvent_OnClone(const QDynamicPropertyChangeEvent* self, intptr_t slot);
QTLIBC_API QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_QBaseClone(const QDynamicPropertyChangeEvent* self);
QTLIBC_API libqt_string QDynamicPropertyChangeEvent_PropertyName(const QDynamicPropertyChangeEvent* self);
QTLIBC_API void QDynamicPropertyChangeEvent_SetAccepted(QDynamicPropertyChangeEvent* self, bool accepted);
QTLIBC_API void QDynamicPropertyChangeEvent_OnSetAccepted(QDynamicPropertyChangeEvent* self, intptr_t slot);
QTLIBC_API void QDynamicPropertyChangeEvent_QBaseSetAccepted(QDynamicPropertyChangeEvent* self, bool accepted);
QTLIBC_API void QDynamicPropertyChangeEvent_Delete(QDynamicPropertyChangeEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
