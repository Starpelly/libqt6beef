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

QEvent* QEvent_new(int typeVal);
QEvent* QEvent_new2(QEvent* other);
void QEvent_OperatorAssign(QEvent* self, QEvent* other);
int QEvent_Type(const QEvent* self);
bool QEvent_Spontaneous(const QEvent* self);
void QEvent_SetAccepted(QEvent* self, bool accepted);
bool QEvent_IsAccepted(const QEvent* self);
void QEvent_Accept(QEvent* self);
void QEvent_Ignore(QEvent* self);
int QEvent_RegisterEventType();
int QEvent_RegisterEventType1(int hint);
void QEvent_Delete(QEvent* self);

QTimerEvent* QTimerEvent_new(int timerId);
QTimerEvent* QTimerEvent_new2(QTimerEvent* param1);
int QTimerEvent_TimerId(const QTimerEvent* self);
void QTimerEvent_Delete(QTimerEvent* self);

QChildEvent* QChildEvent_new(int typeVal, QObject* child);
QChildEvent* QChildEvent_new2(QChildEvent* param1);
QObject* QChildEvent_Child(const QChildEvent* self);
bool QChildEvent_Added(const QChildEvent* self);
bool QChildEvent_Polished(const QChildEvent* self);
bool QChildEvent_Removed(const QChildEvent* self);
void QChildEvent_Delete(QChildEvent* self);

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_new(libqt_string name);
QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_new2(QDynamicPropertyChangeEvent* param1);
libqt_string QDynamicPropertyChangeEvent_PropertyName(const QDynamicPropertyChangeEvent* self);
void QDynamicPropertyChangeEvent_Delete(QDynamicPropertyChangeEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
