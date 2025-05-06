#pragma once
#ifndef SRCC_LIBQSTACKEDLAYOUT_H
#define SRCC_LIBQSTACKEDLAYOUT_H

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
typedef struct QLayout QLayout;
typedef struct QLayoutItem QLayoutItem;
typedef struct QMargins QMargins;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QSpacerItem QSpacerItem;
typedef struct QStackedLayout QStackedLayout;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

#ifdef __cplusplus
typedef QStackedLayout::StackingMode StackingMode; // C++ enum
#else
typedef int StackingMode; // C ABI enum
#endif

QTLIBC_API QStackedLayout* QStackedLayout_new(QWidget* parent);
QTLIBC_API QStackedLayout* QStackedLayout_new2();
QTLIBC_API QStackedLayout* QStackedLayout_new3(QLayout* parentLayout);
QTLIBC_API QMetaObject* QStackedLayout_MetaObject(const QStackedLayout* self);
QTLIBC_API void* QStackedLayout_Metacast(QStackedLayout* self, const char* param1);
QTLIBC_API int QStackedLayout_Metacall(QStackedLayout* self, int param1, int param2, void** param3);
QTLIBC_API void QStackedLayout_OnMetacall(QStackedLayout* self, intptr_t slot);
QTLIBC_API int QStackedLayout_QBaseMetacall(QStackedLayout* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QStackedLayout_Tr(const char* s);
QTLIBC_API int QStackedLayout_AddWidget(QStackedLayout* self, QWidget* w);
QTLIBC_API int QStackedLayout_InsertWidget(QStackedLayout* self, int index, QWidget* w);
QTLIBC_API QWidget* QStackedLayout_CurrentWidget(const QStackedLayout* self);
QTLIBC_API int QStackedLayout_CurrentIndex(const QStackedLayout* self);
QTLIBC_API QWidget* QStackedLayout_Widget(const QStackedLayout* self, int param1);
QTLIBC_API int QStackedLayout_Count(const QStackedLayout* self);
QTLIBC_API void QStackedLayout_OnCount(const QStackedLayout* self, intptr_t slot);
QTLIBC_API int QStackedLayout_QBaseCount(const QStackedLayout* self);
QTLIBC_API int QStackedLayout_StackingMode(const QStackedLayout* self);
QTLIBC_API void QStackedLayout_SetStackingMode(QStackedLayout* self, int stackingMode);
QTLIBC_API void QStackedLayout_AddItem(QStackedLayout* self, QLayoutItem* item);
QTLIBC_API void QStackedLayout_OnAddItem(QStackedLayout* self, intptr_t slot);
QTLIBC_API void QStackedLayout_QBaseAddItem(QStackedLayout* self, QLayoutItem* item);
QTLIBC_API QSize* QStackedLayout_SizeHint(const QStackedLayout* self);
QTLIBC_API void QStackedLayout_OnSizeHint(const QStackedLayout* self, intptr_t slot);
QTLIBC_API QSize* QStackedLayout_QBaseSizeHint(const QStackedLayout* self);
QTLIBC_API QSize* QStackedLayout_MinimumSize(const QStackedLayout* self);
QTLIBC_API void QStackedLayout_OnMinimumSize(const QStackedLayout* self, intptr_t slot);
QTLIBC_API QSize* QStackedLayout_QBaseMinimumSize(const QStackedLayout* self);
QTLIBC_API QLayoutItem* QStackedLayout_ItemAt(const QStackedLayout* self, int param1);
QTLIBC_API void QStackedLayout_OnItemAt(const QStackedLayout* self, intptr_t slot);
QTLIBC_API QLayoutItem* QStackedLayout_QBaseItemAt(const QStackedLayout* self, int param1);
QTLIBC_API QLayoutItem* QStackedLayout_TakeAt(QStackedLayout* self, int param1);
QTLIBC_API void QStackedLayout_OnTakeAt(QStackedLayout* self, intptr_t slot);
QTLIBC_API QLayoutItem* QStackedLayout_QBaseTakeAt(QStackedLayout* self, int param1);
QTLIBC_API void QStackedLayout_SetGeometry(QStackedLayout* self, QRect* rect);
QTLIBC_API void QStackedLayout_OnSetGeometry(QStackedLayout* self, intptr_t slot);
QTLIBC_API void QStackedLayout_QBaseSetGeometry(QStackedLayout* self, QRect* rect);
QTLIBC_API bool QStackedLayout_HasHeightForWidth(const QStackedLayout* self);
QTLIBC_API void QStackedLayout_OnHasHeightForWidth(const QStackedLayout* self, intptr_t slot);
QTLIBC_API bool QStackedLayout_QBaseHasHeightForWidth(const QStackedLayout* self);
QTLIBC_API int QStackedLayout_HeightForWidth(const QStackedLayout* self, int width);
QTLIBC_API void QStackedLayout_OnHeightForWidth(const QStackedLayout* self, intptr_t slot);
QTLIBC_API int QStackedLayout_QBaseHeightForWidth(const QStackedLayout* self, int width);
QTLIBC_API void QStackedLayout_WidgetRemoved(QStackedLayout* self, int index);
void QStackedLayout_Connect_WidgetRemoved(QStackedLayout* self, intptr_t slot);
QTLIBC_API void QStackedLayout_CurrentChanged(QStackedLayout* self, int index);
void QStackedLayout_Connect_CurrentChanged(QStackedLayout* self, intptr_t slot);
QTLIBC_API void QStackedLayout_SetCurrentIndex(QStackedLayout* self, int index);
QTLIBC_API void QStackedLayout_SetCurrentWidget(QStackedLayout* self, QWidget* w);
QTLIBC_API libqt_string QStackedLayout_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QStackedLayout_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QStackedLayout_Spacing(const QStackedLayout* self);
QTLIBC_API void QStackedLayout_OnSpacing(const QStackedLayout* self, intptr_t slot);
QTLIBC_API int QStackedLayout_QBaseSpacing(const QStackedLayout* self);
QTLIBC_API void QStackedLayout_SetSpacing(QStackedLayout* self, int spacing);
QTLIBC_API void QStackedLayout_OnSetSpacing(QStackedLayout* self, intptr_t slot);
QTLIBC_API void QStackedLayout_QBaseSetSpacing(QStackedLayout* self, int spacing);
QTLIBC_API void QStackedLayout_Invalidate(QStackedLayout* self);
QTLIBC_API void QStackedLayout_OnInvalidate(QStackedLayout* self, intptr_t slot);
QTLIBC_API void QStackedLayout_QBaseInvalidate(QStackedLayout* self);
QTLIBC_API QRect* QStackedLayout_Geometry(const QStackedLayout* self);
QTLIBC_API void QStackedLayout_OnGeometry(const QStackedLayout* self, intptr_t slot);
QTLIBC_API QRect* QStackedLayout_QBaseGeometry(const QStackedLayout* self);
QTLIBC_API int QStackedLayout_ExpandingDirections(const QStackedLayout* self);
QTLIBC_API void QStackedLayout_OnExpandingDirections(const QStackedLayout* self, intptr_t slot);
QTLIBC_API int QStackedLayout_QBaseExpandingDirections(const QStackedLayout* self);
QTLIBC_API QSize* QStackedLayout_MaximumSize(const QStackedLayout* self);
QTLIBC_API void QStackedLayout_OnMaximumSize(const QStackedLayout* self, intptr_t slot);
QTLIBC_API QSize* QStackedLayout_QBaseMaximumSize(const QStackedLayout* self);
QTLIBC_API int QStackedLayout_IndexOf(const QStackedLayout* self, QWidget* param1);
QTLIBC_API void QStackedLayout_OnIndexOf(const QStackedLayout* self, intptr_t slot);
QTLIBC_API int QStackedLayout_QBaseIndexOf(const QStackedLayout* self, QWidget* param1);
QTLIBC_API int QStackedLayout_IndexOfWithQLayoutItem(const QStackedLayout* self, QLayoutItem* param1);
QTLIBC_API bool QStackedLayout_IsEmpty(const QStackedLayout* self);
QTLIBC_API void QStackedLayout_OnIsEmpty(const QStackedLayout* self, intptr_t slot);
QTLIBC_API bool QStackedLayout_QBaseIsEmpty(const QStackedLayout* self);
QTLIBC_API int QStackedLayout_ControlTypes(const QStackedLayout* self);
QTLIBC_API void QStackedLayout_OnControlTypes(const QStackedLayout* self, intptr_t slot);
QTLIBC_API int QStackedLayout_QBaseControlTypes(const QStackedLayout* self);
QTLIBC_API QLayoutItem* QStackedLayout_ReplaceWidget(QStackedLayout* self, QWidget* from, QWidget* to, int options);
QTLIBC_API void QStackedLayout_OnReplaceWidget(QStackedLayout* self, intptr_t slot);
QTLIBC_API QLayoutItem* QStackedLayout_QBaseReplaceWidget(QStackedLayout* self, QWidget* from, QWidget* to, int options);
QTLIBC_API QLayout* QStackedLayout_Layout(QStackedLayout* self);
QTLIBC_API void QStackedLayout_OnLayout(QStackedLayout* self, intptr_t slot);
QTLIBC_API QLayout* QStackedLayout_QBaseLayout(QStackedLayout* self);
QTLIBC_API void QStackedLayout_ChildEvent(QStackedLayout* self, QChildEvent* e);
QTLIBC_API void QStackedLayout_OnChildEvent(QStackedLayout* self, intptr_t slot);
QTLIBC_API void QStackedLayout_QBaseChildEvent(QStackedLayout* self, QChildEvent* e);
QTLIBC_API bool QStackedLayout_Event(QStackedLayout* self, QEvent* event);
QTLIBC_API void QStackedLayout_OnEvent(QStackedLayout* self, intptr_t slot);
QTLIBC_API bool QStackedLayout_QBaseEvent(QStackedLayout* self, QEvent* event);
QTLIBC_API bool QStackedLayout_EventFilter(QStackedLayout* self, QObject* watched, QEvent* event);
QTLIBC_API void QStackedLayout_OnEventFilter(QStackedLayout* self, intptr_t slot);
QTLIBC_API bool QStackedLayout_QBaseEventFilter(QStackedLayout* self, QObject* watched, QEvent* event);
QTLIBC_API void QStackedLayout_TimerEvent(QStackedLayout* self, QTimerEvent* event);
QTLIBC_API void QStackedLayout_OnTimerEvent(QStackedLayout* self, intptr_t slot);
QTLIBC_API void QStackedLayout_QBaseTimerEvent(QStackedLayout* self, QTimerEvent* event);
QTLIBC_API void QStackedLayout_CustomEvent(QStackedLayout* self, QEvent* event);
QTLIBC_API void QStackedLayout_OnCustomEvent(QStackedLayout* self, intptr_t slot);
QTLIBC_API void QStackedLayout_QBaseCustomEvent(QStackedLayout* self, QEvent* event);
QTLIBC_API void QStackedLayout_ConnectNotify(QStackedLayout* self, QMetaMethod* signal);
QTLIBC_API void QStackedLayout_OnConnectNotify(QStackedLayout* self, intptr_t slot);
QTLIBC_API void QStackedLayout_QBaseConnectNotify(QStackedLayout* self, QMetaMethod* signal);
QTLIBC_API void QStackedLayout_DisconnectNotify(QStackedLayout* self, QMetaMethod* signal);
QTLIBC_API void QStackedLayout_OnDisconnectNotify(QStackedLayout* self, intptr_t slot);
QTLIBC_API void QStackedLayout_QBaseDisconnectNotify(QStackedLayout* self, QMetaMethod* signal);
QTLIBC_API int QStackedLayout_MinimumHeightForWidth(const QStackedLayout* self, int param1);
QTLIBC_API void QStackedLayout_OnMinimumHeightForWidth(const QStackedLayout* self, intptr_t slot);
QTLIBC_API int QStackedLayout_QBaseMinimumHeightForWidth(const QStackedLayout* self, int param1);
QTLIBC_API QSpacerItem* QStackedLayout_SpacerItem(QStackedLayout* self);
QTLIBC_API void QStackedLayout_OnSpacerItem(QStackedLayout* self, intptr_t slot);
QTLIBC_API QSpacerItem* QStackedLayout_QBaseSpacerItem(QStackedLayout* self);
QTLIBC_API void QStackedLayout_WidgetEvent(QStackedLayout* self, QEvent* param1);
QTLIBC_API void QStackedLayout_OnWidgetEvent(QStackedLayout* self, intptr_t slot);
QTLIBC_API void QStackedLayout_QBaseWidgetEvent(QStackedLayout* self, QEvent* param1);
QTLIBC_API void QStackedLayout_AddChildLayout(QStackedLayout* self, QLayout* l);
QTLIBC_API void QStackedLayout_OnAddChildLayout(QStackedLayout* self, intptr_t slot);
QTLIBC_API void QStackedLayout_QBaseAddChildLayout(QStackedLayout* self, QLayout* l);
QTLIBC_API void QStackedLayout_AddChildWidget(QStackedLayout* self, QWidget* w);
QTLIBC_API void QStackedLayout_OnAddChildWidget(QStackedLayout* self, intptr_t slot);
QTLIBC_API void QStackedLayout_QBaseAddChildWidget(QStackedLayout* self, QWidget* w);
QTLIBC_API bool QStackedLayout_AdoptLayout(QStackedLayout* self, QLayout* layout);
QTLIBC_API void QStackedLayout_OnAdoptLayout(QStackedLayout* self, intptr_t slot);
QTLIBC_API bool QStackedLayout_QBaseAdoptLayout(QStackedLayout* self, QLayout* layout);
QTLIBC_API QRect* QStackedLayout_AlignmentRect(const QStackedLayout* self, QRect* param1);
QTLIBC_API void QStackedLayout_OnAlignmentRect(const QStackedLayout* self, intptr_t slot);
QTLIBC_API QRect* QStackedLayout_QBaseAlignmentRect(const QStackedLayout* self, QRect* param1);
QTLIBC_API QObject* QStackedLayout_Sender(const QStackedLayout* self);
QTLIBC_API void QStackedLayout_OnSender(const QStackedLayout* self, intptr_t slot);
QTLIBC_API QObject* QStackedLayout_QBaseSender(const QStackedLayout* self);
QTLIBC_API int QStackedLayout_SenderSignalIndex(const QStackedLayout* self);
QTLIBC_API void QStackedLayout_OnSenderSignalIndex(const QStackedLayout* self, intptr_t slot);
QTLIBC_API int QStackedLayout_QBaseSenderSignalIndex(const QStackedLayout* self);
QTLIBC_API int QStackedLayout_Receivers(const QStackedLayout* self, const char* signal);
QTLIBC_API void QStackedLayout_OnReceivers(const QStackedLayout* self, intptr_t slot);
QTLIBC_API int QStackedLayout_QBaseReceivers(const QStackedLayout* self, const char* signal);
QTLIBC_API bool QStackedLayout_IsSignalConnected(const QStackedLayout* self, QMetaMethod* signal);
QTLIBC_API void QStackedLayout_OnIsSignalConnected(const QStackedLayout* self, intptr_t slot);
QTLIBC_API bool QStackedLayout_QBaseIsSignalConnected(const QStackedLayout* self, QMetaMethod* signal);
QTLIBC_API void QStackedLayout_Delete(QStackedLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
