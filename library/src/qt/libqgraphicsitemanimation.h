#pragma once
#ifndef SRC_QTC_LIBQGRAPHICSITEMANIMATION_H
#define SRC_QTC_LIBQGRAPHICSITEMANIMATION_H

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
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsItemAnimation QGraphicsItemAnimation;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QPointF QPointF;
typedef struct QThread QThread;
typedef struct QTimeLine QTimeLine;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QGraphicsItemAnimation* QGraphicsItemAnimation_new();
QTLIBC_API QGraphicsItemAnimation* QGraphicsItemAnimation_new2(QObject* parent);
QTLIBC_API QMetaObject* QGraphicsItemAnimation_MetaObject(const QGraphicsItemAnimation* self);
QTLIBC_API void* QGraphicsItemAnimation_Metacast(QGraphicsItemAnimation* self, const char* param1);
QTLIBC_API int QGraphicsItemAnimation_Metacall(QGraphicsItemAnimation* self, int param1, int param2, void** param3);
QTLIBC_API void QGraphicsItemAnimation_OnMetacall(QGraphicsItemAnimation* self, intptr_t slot);
QTLIBC_API int QGraphicsItemAnimation_QBaseMetacall(QGraphicsItemAnimation* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QGraphicsItemAnimation_Tr(const char* s);
QTLIBC_API QGraphicsItem* QGraphicsItemAnimation_Item(const QGraphicsItemAnimation* self);
QTLIBC_API void QGraphicsItemAnimation_SetItem(QGraphicsItemAnimation* self, QGraphicsItem* item);
QTLIBC_API QTimeLine* QGraphicsItemAnimation_TimeLine(const QGraphicsItemAnimation* self);
QTLIBC_API void QGraphicsItemAnimation_SetTimeLine(QGraphicsItemAnimation* self, QTimeLine* timeLine);
QTLIBC_API QPointF* QGraphicsItemAnimation_PosAt(const QGraphicsItemAnimation* self, double step);
QTLIBC_API libqt_list /* of libqt_pair  tuple of double and QPointF*  */ QGraphicsItemAnimation_PosList(const QGraphicsItemAnimation* self);
QTLIBC_API void QGraphicsItemAnimation_SetPosAt(QGraphicsItemAnimation* self, double step, QPointF* pos);
QTLIBC_API QTransform* QGraphicsItemAnimation_TransformAt(const QGraphicsItemAnimation* self, double step);
QTLIBC_API double QGraphicsItemAnimation_RotationAt(const QGraphicsItemAnimation* self, double step);
QTLIBC_API libqt_list /* of libqt_pair  tuple of double and double  */ QGraphicsItemAnimation_RotationList(const QGraphicsItemAnimation* self);
QTLIBC_API void QGraphicsItemAnimation_SetRotationAt(QGraphicsItemAnimation* self, double step, double angle);
QTLIBC_API double QGraphicsItemAnimation_XTranslationAt(const QGraphicsItemAnimation* self, double step);
QTLIBC_API double QGraphicsItemAnimation_YTranslationAt(const QGraphicsItemAnimation* self, double step);
QTLIBC_API libqt_list /* of libqt_pair  tuple of double and QPointF*  */ QGraphicsItemAnimation_TranslationList(const QGraphicsItemAnimation* self);
QTLIBC_API void QGraphicsItemAnimation_SetTranslationAt(QGraphicsItemAnimation* self, double step, double dx, double dy);
QTLIBC_API double QGraphicsItemAnimation_VerticalScaleAt(const QGraphicsItemAnimation* self, double step);
QTLIBC_API double QGraphicsItemAnimation_HorizontalScaleAt(const QGraphicsItemAnimation* self, double step);
QTLIBC_API libqt_list /* of libqt_pair  tuple of double and QPointF*  */ QGraphicsItemAnimation_ScaleList(const QGraphicsItemAnimation* self);
QTLIBC_API void QGraphicsItemAnimation_SetScaleAt(QGraphicsItemAnimation* self, double step, double sx, double sy);
QTLIBC_API double QGraphicsItemAnimation_VerticalShearAt(const QGraphicsItemAnimation* self, double step);
QTLIBC_API double QGraphicsItemAnimation_HorizontalShearAt(const QGraphicsItemAnimation* self, double step);
QTLIBC_API libqt_list /* of libqt_pair  tuple of double and QPointF*  */ QGraphicsItemAnimation_ShearList(const QGraphicsItemAnimation* self);
QTLIBC_API void QGraphicsItemAnimation_SetShearAt(QGraphicsItemAnimation* self, double step, double sh, double sv);
QTLIBC_API void QGraphicsItemAnimation_Clear(QGraphicsItemAnimation* self);
QTLIBC_API void QGraphicsItemAnimation_SetStep(QGraphicsItemAnimation* self, double x);
QTLIBC_API void QGraphicsItemAnimation_BeforeAnimationStep(QGraphicsItemAnimation* self, double step);
QTLIBC_API void QGraphicsItemAnimation_OnBeforeAnimationStep(QGraphicsItemAnimation* self, intptr_t slot);
QTLIBC_API void QGraphicsItemAnimation_QBaseBeforeAnimationStep(QGraphicsItemAnimation* self, double step);
QTLIBC_API void QGraphicsItemAnimation_AfterAnimationStep(QGraphicsItemAnimation* self, double step);
QTLIBC_API void QGraphicsItemAnimation_OnAfterAnimationStep(QGraphicsItemAnimation* self, intptr_t slot);
QTLIBC_API void QGraphicsItemAnimation_QBaseAfterAnimationStep(QGraphicsItemAnimation* self, double step);
QTLIBC_API libqt_string QGraphicsItemAnimation_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QGraphicsItemAnimation_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QGraphicsItemAnimation_Event(QGraphicsItemAnimation* self, QEvent* event);
QTLIBC_API void QGraphicsItemAnimation_OnEvent(QGraphicsItemAnimation* self, intptr_t slot);
QTLIBC_API bool QGraphicsItemAnimation_QBaseEvent(QGraphicsItemAnimation* self, QEvent* event);
QTLIBC_API bool QGraphicsItemAnimation_EventFilter(QGraphicsItemAnimation* self, QObject* watched, QEvent* event);
QTLIBC_API void QGraphicsItemAnimation_OnEventFilter(QGraphicsItemAnimation* self, intptr_t slot);
QTLIBC_API bool QGraphicsItemAnimation_QBaseEventFilter(QGraphicsItemAnimation* self, QObject* watched, QEvent* event);
QTLIBC_API void QGraphicsItemAnimation_TimerEvent(QGraphicsItemAnimation* self, QTimerEvent* event);
QTLIBC_API void QGraphicsItemAnimation_OnTimerEvent(QGraphicsItemAnimation* self, intptr_t slot);
QTLIBC_API void QGraphicsItemAnimation_QBaseTimerEvent(QGraphicsItemAnimation* self, QTimerEvent* event);
QTLIBC_API void QGraphicsItemAnimation_ChildEvent(QGraphicsItemAnimation* self, QChildEvent* event);
QTLIBC_API void QGraphicsItemAnimation_OnChildEvent(QGraphicsItemAnimation* self, intptr_t slot);
QTLIBC_API void QGraphicsItemAnimation_QBaseChildEvent(QGraphicsItemAnimation* self, QChildEvent* event);
QTLIBC_API void QGraphicsItemAnimation_CustomEvent(QGraphicsItemAnimation* self, QEvent* event);
QTLIBC_API void QGraphicsItemAnimation_OnCustomEvent(QGraphicsItemAnimation* self, intptr_t slot);
QTLIBC_API void QGraphicsItemAnimation_QBaseCustomEvent(QGraphicsItemAnimation* self, QEvent* event);
QTLIBC_API void QGraphicsItemAnimation_ConnectNotify(QGraphicsItemAnimation* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsItemAnimation_OnConnectNotify(QGraphicsItemAnimation* self, intptr_t slot);
QTLIBC_API void QGraphicsItemAnimation_QBaseConnectNotify(QGraphicsItemAnimation* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsItemAnimation_DisconnectNotify(QGraphicsItemAnimation* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsItemAnimation_OnDisconnectNotify(QGraphicsItemAnimation* self, intptr_t slot);
QTLIBC_API void QGraphicsItemAnimation_QBaseDisconnectNotify(QGraphicsItemAnimation* self, QMetaMethod* signal);
QTLIBC_API QObject* QGraphicsItemAnimation_Sender(const QGraphicsItemAnimation* self);
QTLIBC_API void QGraphicsItemAnimation_OnSender(const QGraphicsItemAnimation* self, intptr_t slot);
QTLIBC_API QObject* QGraphicsItemAnimation_QBaseSender(const QGraphicsItemAnimation* self);
QTLIBC_API int QGraphicsItemAnimation_SenderSignalIndex(const QGraphicsItemAnimation* self);
QTLIBC_API void QGraphicsItemAnimation_OnSenderSignalIndex(const QGraphicsItemAnimation* self, intptr_t slot);
QTLIBC_API int QGraphicsItemAnimation_QBaseSenderSignalIndex(const QGraphicsItemAnimation* self);
QTLIBC_API int QGraphicsItemAnimation_Receivers(const QGraphicsItemAnimation* self, const char* signal);
QTLIBC_API void QGraphicsItemAnimation_OnReceivers(const QGraphicsItemAnimation* self, intptr_t slot);
QTLIBC_API int QGraphicsItemAnimation_QBaseReceivers(const QGraphicsItemAnimation* self, const char* signal);
QTLIBC_API bool QGraphicsItemAnimation_IsSignalConnected(const QGraphicsItemAnimation* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsItemAnimation_OnIsSignalConnected(const QGraphicsItemAnimation* self, intptr_t slot);
QTLIBC_API bool QGraphicsItemAnimation_QBaseIsSignalConnected(const QGraphicsItemAnimation* self, QMetaMethod* signal);
QTLIBC_API void QGraphicsItemAnimation_Delete(QGraphicsItemAnimation* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
