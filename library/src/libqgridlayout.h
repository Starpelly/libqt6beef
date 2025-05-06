#pragma once
#ifndef SRCC_LIBQGRIDLAYOUT_H
#define SRCC_LIBQGRIDLAYOUT_H

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
typedef struct QGridLayout QGridLayout;
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

QTLIBC_API QGridLayout* QGridLayout_new(QWidget* parent);
QTLIBC_API QGridLayout* QGridLayout_new2();
QTLIBC_API QMetaObject* QGridLayout_MetaObject(const QGridLayout* self);
QTLIBC_API void* QGridLayout_Metacast(QGridLayout* self, const char* param1);
QTLIBC_API int QGridLayout_Metacall(QGridLayout* self, int param1, int param2, void** param3);
QTLIBC_API void QGridLayout_OnMetacall(QGridLayout* self, intptr_t slot);
QTLIBC_API int QGridLayout_QBaseMetacall(QGridLayout* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QGridLayout_Tr(const char* s);
QTLIBC_API QSize* QGridLayout_SizeHint(const QGridLayout* self);
QTLIBC_API void QGridLayout_OnSizeHint(const QGridLayout* self, intptr_t slot);
QTLIBC_API QSize* QGridLayout_QBaseSizeHint(const QGridLayout* self);
QTLIBC_API QSize* QGridLayout_MinimumSize(const QGridLayout* self);
QTLIBC_API void QGridLayout_OnMinimumSize(const QGridLayout* self, intptr_t slot);
QTLIBC_API QSize* QGridLayout_QBaseMinimumSize(const QGridLayout* self);
QTLIBC_API QSize* QGridLayout_MaximumSize(const QGridLayout* self);
QTLIBC_API void QGridLayout_OnMaximumSize(const QGridLayout* self, intptr_t slot);
QTLIBC_API QSize* QGridLayout_QBaseMaximumSize(const QGridLayout* self);
QTLIBC_API void QGridLayout_SetHorizontalSpacing(QGridLayout* self, int spacing);
QTLIBC_API int QGridLayout_HorizontalSpacing(const QGridLayout* self);
QTLIBC_API void QGridLayout_SetVerticalSpacing(QGridLayout* self, int spacing);
QTLIBC_API int QGridLayout_VerticalSpacing(const QGridLayout* self);
QTLIBC_API void QGridLayout_SetSpacing(QGridLayout* self, int spacing);
QTLIBC_API void QGridLayout_OnSetSpacing(QGridLayout* self, intptr_t slot);
QTLIBC_API void QGridLayout_QBaseSetSpacing(QGridLayout* self, int spacing);
QTLIBC_API int QGridLayout_Spacing(const QGridLayout* self);
QTLIBC_API void QGridLayout_OnSpacing(const QGridLayout* self, intptr_t slot);
QTLIBC_API int QGridLayout_QBaseSpacing(const QGridLayout* self);
QTLIBC_API void QGridLayout_SetRowStretch(QGridLayout* self, int row, int stretch);
QTLIBC_API void QGridLayout_SetColumnStretch(QGridLayout* self, int column, int stretch);
QTLIBC_API int QGridLayout_RowStretch(const QGridLayout* self, int row);
QTLIBC_API int QGridLayout_ColumnStretch(const QGridLayout* self, int column);
QTLIBC_API void QGridLayout_SetRowMinimumHeight(QGridLayout* self, int row, int minSize);
QTLIBC_API void QGridLayout_SetColumnMinimumWidth(QGridLayout* self, int column, int minSize);
QTLIBC_API int QGridLayout_RowMinimumHeight(const QGridLayout* self, int row);
QTLIBC_API int QGridLayout_ColumnMinimumWidth(const QGridLayout* self, int column);
QTLIBC_API int QGridLayout_ColumnCount(const QGridLayout* self);
QTLIBC_API int QGridLayout_RowCount(const QGridLayout* self);
QTLIBC_API QRect* QGridLayout_CellRect(const QGridLayout* self, int row, int column);
QTLIBC_API bool QGridLayout_HasHeightForWidth(const QGridLayout* self);
QTLIBC_API void QGridLayout_OnHasHeightForWidth(const QGridLayout* self, intptr_t slot);
QTLIBC_API bool QGridLayout_QBaseHasHeightForWidth(const QGridLayout* self);
QTLIBC_API int QGridLayout_HeightForWidth(const QGridLayout* self, int param1);
QTLIBC_API void QGridLayout_OnHeightForWidth(const QGridLayout* self, intptr_t slot);
QTLIBC_API int QGridLayout_QBaseHeightForWidth(const QGridLayout* self, int param1);
QTLIBC_API int QGridLayout_MinimumHeightForWidth(const QGridLayout* self, int param1);
QTLIBC_API void QGridLayout_OnMinimumHeightForWidth(const QGridLayout* self, intptr_t slot);
QTLIBC_API int QGridLayout_QBaseMinimumHeightForWidth(const QGridLayout* self, int param1);
QTLIBC_API int QGridLayout_ExpandingDirections(const QGridLayout* self);
QTLIBC_API void QGridLayout_OnExpandingDirections(const QGridLayout* self, intptr_t slot);
QTLIBC_API int QGridLayout_QBaseExpandingDirections(const QGridLayout* self);
QTLIBC_API void QGridLayout_Invalidate(QGridLayout* self);
QTLIBC_API void QGridLayout_OnInvalidate(QGridLayout* self, intptr_t slot);
QTLIBC_API void QGridLayout_QBaseInvalidate(QGridLayout* self);
QTLIBC_API void QGridLayout_AddWidget(QGridLayout* self, QWidget* w);
QTLIBC_API void QGridLayout_AddWidget2(QGridLayout* self, QWidget* param1, int row, int column);
QTLIBC_API void QGridLayout_AddWidget3(QGridLayout* self, QWidget* param1, int row, int column, int rowSpan, int columnSpan);
QTLIBC_API void QGridLayout_AddLayout(QGridLayout* self, QLayout* param1, int row, int column);
QTLIBC_API void QGridLayout_AddLayout2(QGridLayout* self, QLayout* param1, int row, int column, int rowSpan, int columnSpan);
QTLIBC_API void QGridLayout_SetOriginCorner(QGridLayout* self, int originCorner);
QTLIBC_API int QGridLayout_OriginCorner(const QGridLayout* self);
QTLIBC_API QLayoutItem* QGridLayout_ItemAt(const QGridLayout* self, int index);
QTLIBC_API void QGridLayout_OnItemAt(const QGridLayout* self, intptr_t slot);
QTLIBC_API QLayoutItem* QGridLayout_QBaseItemAt(const QGridLayout* self, int index);
QTLIBC_API QLayoutItem* QGridLayout_ItemAtPosition(const QGridLayout* self, int row, int column);
QTLIBC_API QLayoutItem* QGridLayout_TakeAt(QGridLayout* self, int index);
QTLIBC_API void QGridLayout_OnTakeAt(QGridLayout* self, intptr_t slot);
QTLIBC_API QLayoutItem* QGridLayout_QBaseTakeAt(QGridLayout* self, int index);
QTLIBC_API int QGridLayout_Count(const QGridLayout* self);
QTLIBC_API void QGridLayout_OnCount(const QGridLayout* self, intptr_t slot);
QTLIBC_API int QGridLayout_QBaseCount(const QGridLayout* self);
QTLIBC_API void QGridLayout_SetGeometry(QGridLayout* self, QRect* geometry);
QTLIBC_API void QGridLayout_OnSetGeometry(QGridLayout* self, intptr_t slot);
QTLIBC_API void QGridLayout_QBaseSetGeometry(QGridLayout* self, QRect* geometry);
QTLIBC_API void QGridLayout_AddItem(QGridLayout* self, QLayoutItem* item, int row, int column);
QTLIBC_API void QGridLayout_SetDefaultPositioning(QGridLayout* self, int n, int orient);
QTLIBC_API void QGridLayout_GetItemPosition(const QGridLayout* self, int idx, int* row, int* column, int* rowSpan, int* columnSpan);
QTLIBC_API void QGridLayout_AddItemWithQLayoutItem(QGridLayout* self, QLayoutItem* param1);
QTLIBC_API void QGridLayout_OnAddItemWithQLayoutItem(QGridLayout* self, intptr_t slot);
QTLIBC_API void QGridLayout_QBaseAddItemWithQLayoutItem(QGridLayout* self, QLayoutItem* param1);
QTLIBC_API libqt_string QGridLayout_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QGridLayout_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QGridLayout_AddWidget4(QGridLayout* self, QWidget* param1, int row, int column, int param4);
QTLIBC_API void QGridLayout_AddWidget6(QGridLayout* self, QWidget* param1, int row, int column, int rowSpan, int columnSpan, int param6);
QTLIBC_API void QGridLayout_AddLayout4(QGridLayout* self, QLayout* param1, int row, int column, int param4);
QTLIBC_API void QGridLayout_AddLayout6(QGridLayout* self, QLayout* param1, int row, int column, int rowSpan, int columnSpan, int param6);
QTLIBC_API void QGridLayout_AddItem4(QGridLayout* self, QLayoutItem* item, int row, int column, int rowSpan);
QTLIBC_API void QGridLayout_AddItem5(QGridLayout* self, QLayoutItem* item, int row, int column, int rowSpan, int columnSpan);
QTLIBC_API void QGridLayout_AddItem6(QGridLayout* self, QLayoutItem* item, int row, int column, int rowSpan, int columnSpan, int param6);
QTLIBC_API QRect* QGridLayout_Geometry(const QGridLayout* self);
QTLIBC_API void QGridLayout_OnGeometry(const QGridLayout* self, intptr_t slot);
QTLIBC_API QRect* QGridLayout_QBaseGeometry(const QGridLayout* self);
QTLIBC_API int QGridLayout_IndexOf(const QGridLayout* self, QWidget* param1);
QTLIBC_API void QGridLayout_OnIndexOf(const QGridLayout* self, intptr_t slot);
QTLIBC_API int QGridLayout_QBaseIndexOf(const QGridLayout* self, QWidget* param1);
QTLIBC_API int QGridLayout_IndexOfWithQLayoutItem(const QGridLayout* self, QLayoutItem* param1);
QTLIBC_API bool QGridLayout_IsEmpty(const QGridLayout* self);
QTLIBC_API void QGridLayout_OnIsEmpty(const QGridLayout* self, intptr_t slot);
QTLIBC_API bool QGridLayout_QBaseIsEmpty(const QGridLayout* self);
QTLIBC_API int QGridLayout_ControlTypes(const QGridLayout* self);
QTLIBC_API void QGridLayout_OnControlTypes(const QGridLayout* self, intptr_t slot);
QTLIBC_API int QGridLayout_QBaseControlTypes(const QGridLayout* self);
QTLIBC_API QLayoutItem* QGridLayout_ReplaceWidget(QGridLayout* self, QWidget* from, QWidget* to, int options);
QTLIBC_API void QGridLayout_OnReplaceWidget(QGridLayout* self, intptr_t slot);
QTLIBC_API QLayoutItem* QGridLayout_QBaseReplaceWidget(QGridLayout* self, QWidget* from, QWidget* to, int options);
QTLIBC_API QLayout* QGridLayout_Layout(QGridLayout* self);
QTLIBC_API void QGridLayout_OnLayout(QGridLayout* self, intptr_t slot);
QTLIBC_API QLayout* QGridLayout_QBaseLayout(QGridLayout* self);
QTLIBC_API void QGridLayout_ChildEvent(QGridLayout* self, QChildEvent* e);
QTLIBC_API void QGridLayout_OnChildEvent(QGridLayout* self, intptr_t slot);
QTLIBC_API void QGridLayout_QBaseChildEvent(QGridLayout* self, QChildEvent* e);
QTLIBC_API bool QGridLayout_Event(QGridLayout* self, QEvent* event);
QTLIBC_API void QGridLayout_OnEvent(QGridLayout* self, intptr_t slot);
QTLIBC_API bool QGridLayout_QBaseEvent(QGridLayout* self, QEvent* event);
QTLIBC_API bool QGridLayout_EventFilter(QGridLayout* self, QObject* watched, QEvent* event);
QTLIBC_API void QGridLayout_OnEventFilter(QGridLayout* self, intptr_t slot);
QTLIBC_API bool QGridLayout_QBaseEventFilter(QGridLayout* self, QObject* watched, QEvent* event);
QTLIBC_API void QGridLayout_TimerEvent(QGridLayout* self, QTimerEvent* event);
QTLIBC_API void QGridLayout_OnTimerEvent(QGridLayout* self, intptr_t slot);
QTLIBC_API void QGridLayout_QBaseTimerEvent(QGridLayout* self, QTimerEvent* event);
QTLIBC_API void QGridLayout_CustomEvent(QGridLayout* self, QEvent* event);
QTLIBC_API void QGridLayout_OnCustomEvent(QGridLayout* self, intptr_t slot);
QTLIBC_API void QGridLayout_QBaseCustomEvent(QGridLayout* self, QEvent* event);
QTLIBC_API void QGridLayout_ConnectNotify(QGridLayout* self, QMetaMethod* signal);
QTLIBC_API void QGridLayout_OnConnectNotify(QGridLayout* self, intptr_t slot);
QTLIBC_API void QGridLayout_QBaseConnectNotify(QGridLayout* self, QMetaMethod* signal);
QTLIBC_API void QGridLayout_DisconnectNotify(QGridLayout* self, QMetaMethod* signal);
QTLIBC_API void QGridLayout_OnDisconnectNotify(QGridLayout* self, intptr_t slot);
QTLIBC_API void QGridLayout_QBaseDisconnectNotify(QGridLayout* self, QMetaMethod* signal);
QTLIBC_API QWidget* QGridLayout_Widget(const QGridLayout* self);
QTLIBC_API void QGridLayout_OnWidget(const QGridLayout* self, intptr_t slot);
QTLIBC_API QWidget* QGridLayout_QBaseWidget(const QGridLayout* self);
QTLIBC_API QSpacerItem* QGridLayout_SpacerItem(QGridLayout* self);
QTLIBC_API void QGridLayout_OnSpacerItem(QGridLayout* self, intptr_t slot);
QTLIBC_API QSpacerItem* QGridLayout_QBaseSpacerItem(QGridLayout* self);
QTLIBC_API void QGridLayout_WidgetEvent(QGridLayout* self, QEvent* param1);
QTLIBC_API void QGridLayout_OnWidgetEvent(QGridLayout* self, intptr_t slot);
QTLIBC_API void QGridLayout_QBaseWidgetEvent(QGridLayout* self, QEvent* param1);
QTLIBC_API void QGridLayout_AddChildLayout(QGridLayout* self, QLayout* l);
QTLIBC_API void QGridLayout_OnAddChildLayout(QGridLayout* self, intptr_t slot);
QTLIBC_API void QGridLayout_QBaseAddChildLayout(QGridLayout* self, QLayout* l);
QTLIBC_API void QGridLayout_AddChildWidget(QGridLayout* self, QWidget* w);
QTLIBC_API void QGridLayout_OnAddChildWidget(QGridLayout* self, intptr_t slot);
QTLIBC_API void QGridLayout_QBaseAddChildWidget(QGridLayout* self, QWidget* w);
QTLIBC_API bool QGridLayout_AdoptLayout(QGridLayout* self, QLayout* layout);
QTLIBC_API void QGridLayout_OnAdoptLayout(QGridLayout* self, intptr_t slot);
QTLIBC_API bool QGridLayout_QBaseAdoptLayout(QGridLayout* self, QLayout* layout);
QTLIBC_API QRect* QGridLayout_AlignmentRect(const QGridLayout* self, QRect* param1);
QTLIBC_API void QGridLayout_OnAlignmentRect(const QGridLayout* self, intptr_t slot);
QTLIBC_API QRect* QGridLayout_QBaseAlignmentRect(const QGridLayout* self, QRect* param1);
QTLIBC_API QObject* QGridLayout_Sender(const QGridLayout* self);
QTLIBC_API void QGridLayout_OnSender(const QGridLayout* self, intptr_t slot);
QTLIBC_API QObject* QGridLayout_QBaseSender(const QGridLayout* self);
QTLIBC_API int QGridLayout_SenderSignalIndex(const QGridLayout* self);
QTLIBC_API void QGridLayout_OnSenderSignalIndex(const QGridLayout* self, intptr_t slot);
QTLIBC_API int QGridLayout_QBaseSenderSignalIndex(const QGridLayout* self);
QTLIBC_API int QGridLayout_Receivers(const QGridLayout* self, const char* signal);
QTLIBC_API void QGridLayout_OnReceivers(const QGridLayout* self, intptr_t slot);
QTLIBC_API int QGridLayout_QBaseReceivers(const QGridLayout* self, const char* signal);
QTLIBC_API bool QGridLayout_IsSignalConnected(const QGridLayout* self, QMetaMethod* signal);
QTLIBC_API void QGridLayout_OnIsSignalConnected(const QGridLayout* self, intptr_t slot);
QTLIBC_API bool QGridLayout_QBaseIsSignalConnected(const QGridLayout* self, QMetaMethod* signal);
QTLIBC_API void QGridLayout_Delete(QGridLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
