#pragma once
#ifndef SRC_QTC_LIBQLAYOUT_H
#define SRC_QTC_LIBQLAYOUT_H

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
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

#ifdef __cplusplus
typedef QLayout::SizeConstraint SizeConstraint; // C++ enum
#else
typedef int SizeConstraint; // C ABI enum
#endif

QTLIBC_API QLayout* QLayout_new(QWidget* parent);
QTLIBC_API QLayout* QLayout_new2();
QTLIBC_API QMetaObject* QLayout_MetaObject(const QLayout* self);
QTLIBC_API void* QLayout_Metacast(QLayout* self, const char* param1);
QTLIBC_API int QLayout_Metacall(QLayout* self, int param1, int param2, void** param3);
QTLIBC_API void QLayout_OnMetacall(QLayout* self, intptr_t slot);
QTLIBC_API int QLayout_QBaseMetacall(QLayout* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QLayout_Tr(const char* s);
QTLIBC_API int QLayout_Spacing(const QLayout* self);
QTLIBC_API void QLayout_OnSpacing(const QLayout* self, intptr_t slot);
QTLIBC_API int QLayout_QBaseSpacing(const QLayout* self);
QTLIBC_API void QLayout_SetSpacing(QLayout* self, int spacing);
QTLIBC_API void QLayout_OnSetSpacing(QLayout* self, intptr_t slot);
QTLIBC_API void QLayout_QBaseSetSpacing(QLayout* self, int spacing);
QTLIBC_API void QLayout_SetContentsMargins(QLayout* self, int left, int top, int right, int bottom);
QTLIBC_API void QLayout_SetContentsMarginsWithMargins(QLayout* self, QMargins* margins);
QTLIBC_API void QLayout_UnsetContentsMargins(QLayout* self);
QTLIBC_API void QLayout_GetContentsMargins(const QLayout* self, int* left, int* top, int* right, int* bottom);
QTLIBC_API QMargins* QLayout_ContentsMargins(const QLayout* self);
QTLIBC_API QRect* QLayout_ContentsRect(const QLayout* self);
QTLIBC_API bool QLayout_SetAlignment(QLayout* self, QWidget* w, int alignment);
QTLIBC_API bool QLayout_SetAlignment2(QLayout* self, QLayout* l, int alignment);
QTLIBC_API void QLayout_SetSizeConstraint(QLayout* self, int sizeConstraint);
QTLIBC_API int QLayout_SizeConstraint(const QLayout* self);
QTLIBC_API void QLayout_SetMenuBar(QLayout* self, QWidget* w);
QTLIBC_API QWidget* QLayout_MenuBar(const QLayout* self);
QTLIBC_API QWidget* QLayout_ParentWidget(const QLayout* self);
QTLIBC_API void QLayout_Invalidate(QLayout* self);
QTLIBC_API void QLayout_OnInvalidate(QLayout* self, intptr_t slot);
QTLIBC_API void QLayout_QBaseInvalidate(QLayout* self);
QTLIBC_API QRect* QLayout_Geometry(const QLayout* self);
QTLIBC_API void QLayout_OnGeometry(const QLayout* self, intptr_t slot);
QTLIBC_API QRect* QLayout_QBaseGeometry(const QLayout* self);
QTLIBC_API bool QLayout_Activate(QLayout* self);
QTLIBC_API void QLayout_Update(QLayout* self);
QTLIBC_API void QLayout_AddWidget(QLayout* self, QWidget* w);
QTLIBC_API void QLayout_AddItem(QLayout* self, QLayoutItem* param1);
QTLIBC_API void QLayout_OnAddItem(QLayout* self, intptr_t slot);
QTLIBC_API void QLayout_QBaseAddItem(QLayout* self, QLayoutItem* param1);
QTLIBC_API void QLayout_RemoveWidget(QLayout* self, QWidget* w);
QTLIBC_API void QLayout_RemoveItem(QLayout* self, QLayoutItem* param1);
QTLIBC_API int QLayout_ExpandingDirections(const QLayout* self);
QTLIBC_API void QLayout_OnExpandingDirections(const QLayout* self, intptr_t slot);
QTLIBC_API int QLayout_QBaseExpandingDirections(const QLayout* self);
QTLIBC_API QSize* QLayout_MinimumSize(const QLayout* self);
QTLIBC_API void QLayout_OnMinimumSize(const QLayout* self, intptr_t slot);
QTLIBC_API QSize* QLayout_QBaseMinimumSize(const QLayout* self);
QTLIBC_API QSize* QLayout_MaximumSize(const QLayout* self);
QTLIBC_API void QLayout_OnMaximumSize(const QLayout* self, intptr_t slot);
QTLIBC_API QSize* QLayout_QBaseMaximumSize(const QLayout* self);
QTLIBC_API void QLayout_SetGeometry(QLayout* self, QRect* geometry);
QTLIBC_API void QLayout_OnSetGeometry(QLayout* self, intptr_t slot);
QTLIBC_API void QLayout_QBaseSetGeometry(QLayout* self, QRect* geometry);
QTLIBC_API QLayoutItem* QLayout_ItemAt(const QLayout* self, int index);
QTLIBC_API void QLayout_OnItemAt(const QLayout* self, intptr_t slot);
QTLIBC_API QLayoutItem* QLayout_QBaseItemAt(const QLayout* self, int index);
QTLIBC_API QLayoutItem* QLayout_TakeAt(QLayout* self, int index);
QTLIBC_API void QLayout_OnTakeAt(QLayout* self, intptr_t slot);
QTLIBC_API QLayoutItem* QLayout_QBaseTakeAt(QLayout* self, int index);
QTLIBC_API int QLayout_IndexOf(const QLayout* self, QWidget* param1);
QTLIBC_API void QLayout_OnIndexOf(const QLayout* self, intptr_t slot);
QTLIBC_API int QLayout_QBaseIndexOf(const QLayout* self, QWidget* param1);
QTLIBC_API int QLayout_IndexOfWithQLayoutItem(const QLayout* self, QLayoutItem* param1);
QTLIBC_API void QLayout_OnIndexOfWithQLayoutItem(const QLayout* self, intptr_t slot);
QTLIBC_API int QLayout_QBaseIndexOfWithQLayoutItem(const QLayout* self, QLayoutItem* param1);
QTLIBC_API int QLayout_Count(const QLayout* self);
QTLIBC_API void QLayout_OnCount(const QLayout* self, intptr_t slot);
QTLIBC_API int QLayout_QBaseCount(const QLayout* self);
QTLIBC_API bool QLayout_IsEmpty(const QLayout* self);
QTLIBC_API void QLayout_OnIsEmpty(const QLayout* self, intptr_t slot);
QTLIBC_API bool QLayout_QBaseIsEmpty(const QLayout* self);
QTLIBC_API int QLayout_ControlTypes(const QLayout* self);
QTLIBC_API void QLayout_OnControlTypes(const QLayout* self, intptr_t slot);
QTLIBC_API int QLayout_QBaseControlTypes(const QLayout* self);
QTLIBC_API QLayoutItem* QLayout_ReplaceWidget(QLayout* self, QWidget* from, QWidget* to, int options);
QTLIBC_API void QLayout_OnReplaceWidget(QLayout* self, intptr_t slot);
QTLIBC_API QLayoutItem* QLayout_QBaseReplaceWidget(QLayout* self, QWidget* from, QWidget* to, int options);
QTLIBC_API int QLayout_TotalMinimumHeightForWidth(const QLayout* self, int w);
QTLIBC_API int QLayout_TotalHeightForWidth(const QLayout* self, int w);
QTLIBC_API QSize* QLayout_TotalMinimumSize(const QLayout* self);
QTLIBC_API QSize* QLayout_TotalMaximumSize(const QLayout* self);
QTLIBC_API QSize* QLayout_TotalSizeHint(const QLayout* self);
QTLIBC_API QLayout* QLayout_Layout(QLayout* self);
QTLIBC_API void QLayout_OnLayout(QLayout* self, intptr_t slot);
QTLIBC_API QLayout* QLayout_QBaseLayout(QLayout* self);
QTLIBC_API void QLayout_SetEnabled(QLayout* self, bool enabled);
QTLIBC_API bool QLayout_IsEnabled(const QLayout* self);
QTLIBC_API QSize* QLayout_ClosestAcceptableSize(QWidget* w, QSize* s);
QTLIBC_API void QLayout_ChildEvent(QLayout* self, QChildEvent* e);
QTLIBC_API void QLayout_OnChildEvent(QLayout* self, intptr_t slot);
QTLIBC_API void QLayout_QBaseChildEvent(QLayout* self, QChildEvent* e);
QTLIBC_API libqt_string QLayout_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QLayout_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QLayout_Event(QLayout* self, QEvent* event);
QTLIBC_API void QLayout_OnEvent(QLayout* self, intptr_t slot);
QTLIBC_API bool QLayout_QBaseEvent(QLayout* self, QEvent* event);
QTLIBC_API bool QLayout_EventFilter(QLayout* self, QObject* watched, QEvent* event);
QTLIBC_API void QLayout_OnEventFilter(QLayout* self, intptr_t slot);
QTLIBC_API bool QLayout_QBaseEventFilter(QLayout* self, QObject* watched, QEvent* event);
QTLIBC_API void QLayout_TimerEvent(QLayout* self, QTimerEvent* event);
QTLIBC_API void QLayout_OnTimerEvent(QLayout* self, intptr_t slot);
QTLIBC_API void QLayout_QBaseTimerEvent(QLayout* self, QTimerEvent* event);
QTLIBC_API void QLayout_CustomEvent(QLayout* self, QEvent* event);
QTLIBC_API void QLayout_OnCustomEvent(QLayout* self, intptr_t slot);
QTLIBC_API void QLayout_QBaseCustomEvent(QLayout* self, QEvent* event);
QTLIBC_API void QLayout_ConnectNotify(QLayout* self, QMetaMethod* signal);
QTLIBC_API void QLayout_OnConnectNotify(QLayout* self, intptr_t slot);
QTLIBC_API void QLayout_QBaseConnectNotify(QLayout* self, QMetaMethod* signal);
QTLIBC_API void QLayout_DisconnectNotify(QLayout* self, QMetaMethod* signal);
QTLIBC_API void QLayout_OnDisconnectNotify(QLayout* self, intptr_t slot);
QTLIBC_API void QLayout_QBaseDisconnectNotify(QLayout* self, QMetaMethod* signal);
QTLIBC_API QSize* QLayout_SizeHint(const QLayout* self);
QTLIBC_API void QLayout_OnSizeHint(const QLayout* self, intptr_t slot);
QTLIBC_API QSize* QLayout_QBaseSizeHint(const QLayout* self);
QTLIBC_API bool QLayout_HasHeightForWidth(const QLayout* self);
QTLIBC_API void QLayout_OnHasHeightForWidth(const QLayout* self, intptr_t slot);
QTLIBC_API bool QLayout_QBaseHasHeightForWidth(const QLayout* self);
QTLIBC_API int QLayout_HeightForWidth(const QLayout* self, int param1);
QTLIBC_API void QLayout_OnHeightForWidth(const QLayout* self, intptr_t slot);
QTLIBC_API int QLayout_QBaseHeightForWidth(const QLayout* self, int param1);
QTLIBC_API int QLayout_MinimumHeightForWidth(const QLayout* self, int param1);
QTLIBC_API void QLayout_OnMinimumHeightForWidth(const QLayout* self, intptr_t slot);
QTLIBC_API int QLayout_QBaseMinimumHeightForWidth(const QLayout* self, int param1);
QTLIBC_API QWidget* QLayout_Widget(const QLayout* self);
QTLIBC_API void QLayout_OnWidget(const QLayout* self, intptr_t slot);
QTLIBC_API QWidget* QLayout_QBaseWidget(const QLayout* self);
QTLIBC_API QSpacerItem* QLayout_SpacerItem(QLayout* self);
QTLIBC_API void QLayout_OnSpacerItem(QLayout* self, intptr_t slot);
QTLIBC_API QSpacerItem* QLayout_QBaseSpacerItem(QLayout* self);
QTLIBC_API void QLayout_WidgetEvent(QLayout* self, QEvent* param1);
QTLIBC_API void QLayout_OnWidgetEvent(QLayout* self, intptr_t slot);
QTLIBC_API void QLayout_QBaseWidgetEvent(QLayout* self, QEvent* param1);
QTLIBC_API void QLayout_AddChildLayout(QLayout* self, QLayout* l);
QTLIBC_API void QLayout_OnAddChildLayout(QLayout* self, intptr_t slot);
QTLIBC_API void QLayout_QBaseAddChildLayout(QLayout* self, QLayout* l);
QTLIBC_API void QLayout_AddChildWidget(QLayout* self, QWidget* w);
QTLIBC_API void QLayout_OnAddChildWidget(QLayout* self, intptr_t slot);
QTLIBC_API void QLayout_QBaseAddChildWidget(QLayout* self, QWidget* w);
QTLIBC_API bool QLayout_AdoptLayout(QLayout* self, QLayout* layout);
QTLIBC_API void QLayout_OnAdoptLayout(QLayout* self, intptr_t slot);
QTLIBC_API bool QLayout_QBaseAdoptLayout(QLayout* self, QLayout* layout);
QTLIBC_API QRect* QLayout_AlignmentRect(const QLayout* self, QRect* param1);
QTLIBC_API void QLayout_OnAlignmentRect(const QLayout* self, intptr_t slot);
QTLIBC_API QRect* QLayout_QBaseAlignmentRect(const QLayout* self, QRect* param1);
QTLIBC_API QObject* QLayout_Sender(const QLayout* self);
QTLIBC_API void QLayout_OnSender(const QLayout* self, intptr_t slot);
QTLIBC_API QObject* QLayout_QBaseSender(const QLayout* self);
QTLIBC_API int QLayout_SenderSignalIndex(const QLayout* self);
QTLIBC_API void QLayout_OnSenderSignalIndex(const QLayout* self, intptr_t slot);
QTLIBC_API int QLayout_QBaseSenderSignalIndex(const QLayout* self);
QTLIBC_API int QLayout_Receivers(const QLayout* self, const char* signal);
QTLIBC_API void QLayout_OnReceivers(const QLayout* self, intptr_t slot);
QTLIBC_API int QLayout_QBaseReceivers(const QLayout* self, const char* signal);
QTLIBC_API bool QLayout_IsSignalConnected(const QLayout* self, QMetaMethod* signal);
QTLIBC_API void QLayout_OnIsSignalConnected(const QLayout* self, intptr_t slot);
QTLIBC_API bool QLayout_QBaseIsSignalConnected(const QLayout* self, QMetaMethod* signal);
QTLIBC_API void QLayout_Delete(QLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
