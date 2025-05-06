#pragma once
#ifndef SRCC_LIBQFORMLAYOUT_H
#define SRCC_LIBQFORMLAYOUT_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QFormLayout__TakeRowResult)
typedef QFormLayout::TakeRowResult QFormLayout__TakeRowResult;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFormLayout QFormLayout;
typedef struct QFormLayout__TakeRowResult QFormLayout__TakeRowResult;
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
typedef QFormLayout::FieldGrowthPolicy FieldGrowthPolicy; // C++ enum
typedef QFormLayout::ItemRole ItemRole;                   // C++ enum
typedef QFormLayout::RowWrapPolicy RowWrapPolicy;         // C++ enum
#else
typedef int FieldGrowthPolicy; // C ABI enum
typedef int ItemRole;          // C ABI enum
typedef int RowWrapPolicy;     // C ABI enum
#endif

QTLIBC_API QFormLayout* QFormLayout_new(QWidget* parent);
QTLIBC_API QFormLayout* QFormLayout_new2();
QTLIBC_API QMetaObject* QFormLayout_MetaObject(const QFormLayout* self);
QTLIBC_API void* QFormLayout_Metacast(QFormLayout* self, const char* param1);
QTLIBC_API int QFormLayout_Metacall(QFormLayout* self, int param1, int param2, void** param3);
QTLIBC_API void QFormLayout_OnMetacall(QFormLayout* self, intptr_t slot);
QTLIBC_API int QFormLayout_QBaseMetacall(QFormLayout* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QFormLayout_Tr(const char* s);
QTLIBC_API void QFormLayout_SetFieldGrowthPolicy(QFormLayout* self, int policy);
QTLIBC_API int QFormLayout_FieldGrowthPolicy(const QFormLayout* self);
QTLIBC_API void QFormLayout_SetRowWrapPolicy(QFormLayout* self, int policy);
QTLIBC_API int QFormLayout_RowWrapPolicy(const QFormLayout* self);
QTLIBC_API void QFormLayout_SetLabelAlignment(QFormLayout* self, int alignment);
QTLIBC_API int QFormLayout_LabelAlignment(const QFormLayout* self);
QTLIBC_API void QFormLayout_SetFormAlignment(QFormLayout* self, int alignment);
QTLIBC_API int QFormLayout_FormAlignment(const QFormLayout* self);
QTLIBC_API void QFormLayout_SetHorizontalSpacing(QFormLayout* self, int spacing);
QTLIBC_API int QFormLayout_HorizontalSpacing(const QFormLayout* self);
QTLIBC_API void QFormLayout_SetVerticalSpacing(QFormLayout* self, int spacing);
QTLIBC_API int QFormLayout_VerticalSpacing(const QFormLayout* self);
QTLIBC_API int QFormLayout_Spacing(const QFormLayout* self);
QTLIBC_API void QFormLayout_OnSpacing(const QFormLayout* self, intptr_t slot);
QTLIBC_API int QFormLayout_QBaseSpacing(const QFormLayout* self);
QTLIBC_API void QFormLayout_SetSpacing(QFormLayout* self, int spacing);
QTLIBC_API void QFormLayout_OnSetSpacing(QFormLayout* self, intptr_t slot);
QTLIBC_API void QFormLayout_QBaseSetSpacing(QFormLayout* self, int spacing);
QTLIBC_API void QFormLayout_AddRow(QFormLayout* self, QWidget* label, QWidget* field);
QTLIBC_API void QFormLayout_AddRow2(QFormLayout* self, QWidget* label, QLayout* field);
QTLIBC_API void QFormLayout_AddRow3(QFormLayout* self, libqt_string labelText, QWidget* field);
QTLIBC_API void QFormLayout_AddRow4(QFormLayout* self, libqt_string labelText, QLayout* field);
QTLIBC_API void QFormLayout_AddRowWithWidget(QFormLayout* self, QWidget* widget);
QTLIBC_API void QFormLayout_AddRowWithLayout(QFormLayout* self, QLayout* layout);
QTLIBC_API void QFormLayout_InsertRow(QFormLayout* self, int row, QWidget* label, QWidget* field);
QTLIBC_API void QFormLayout_InsertRow2(QFormLayout* self, int row, QWidget* label, QLayout* field);
QTLIBC_API void QFormLayout_InsertRow3(QFormLayout* self, int row, libqt_string labelText, QWidget* field);
QTLIBC_API void QFormLayout_InsertRow4(QFormLayout* self, int row, libqt_string labelText, QLayout* field);
QTLIBC_API void QFormLayout_InsertRow5(QFormLayout* self, int row, QWidget* widget);
QTLIBC_API void QFormLayout_InsertRow6(QFormLayout* self, int row, QLayout* layout);
QTLIBC_API void QFormLayout_RemoveRow(QFormLayout* self, int row);
QTLIBC_API void QFormLayout_RemoveRowWithWidget(QFormLayout* self, QWidget* widget);
QTLIBC_API void QFormLayout_RemoveRowWithLayout(QFormLayout* self, QLayout* layout);
QTLIBC_API QFormLayout__TakeRowResult* QFormLayout_TakeRow(QFormLayout* self, int row);
QTLIBC_API QFormLayout__TakeRowResult* QFormLayout_TakeRowWithWidget(QFormLayout* self, QWidget* widget);
QTLIBC_API QFormLayout__TakeRowResult* QFormLayout_TakeRowWithLayout(QFormLayout* self, QLayout* layout);
QTLIBC_API void QFormLayout_SetItem(QFormLayout* self, int row, int role, QLayoutItem* item);
QTLIBC_API void QFormLayout_SetWidget(QFormLayout* self, int row, int role, QWidget* widget);
QTLIBC_API void QFormLayout_SetLayout(QFormLayout* self, int row, int role, QLayout* layout);
QTLIBC_API void QFormLayout_SetRowVisible(QFormLayout* self, int row, bool on);
QTLIBC_API void QFormLayout_SetRowVisible2(QFormLayout* self, QWidget* widget, bool on);
QTLIBC_API void QFormLayout_SetRowVisible3(QFormLayout* self, QLayout* layout, bool on);
QTLIBC_API bool QFormLayout_IsRowVisible(const QFormLayout* self, int row);
QTLIBC_API bool QFormLayout_IsRowVisibleWithWidget(const QFormLayout* self, QWidget* widget);
QTLIBC_API bool QFormLayout_IsRowVisibleWithLayout(const QFormLayout* self, QLayout* layout);
QTLIBC_API QLayoutItem* QFormLayout_ItemAt(const QFormLayout* self, int row, int role);
QTLIBC_API QWidget* QFormLayout_LabelForField(const QFormLayout* self, QWidget* field);
QTLIBC_API QWidget* QFormLayout_LabelForFieldWithField(const QFormLayout* self, QLayout* field);
QTLIBC_API void QFormLayout_AddItem(QFormLayout* self, QLayoutItem* item);
QTLIBC_API void QFormLayout_OnAddItem(QFormLayout* self, intptr_t slot);
QTLIBC_API void QFormLayout_QBaseAddItem(QFormLayout* self, QLayoutItem* item);
QTLIBC_API QLayoutItem* QFormLayout_ItemAtWithIndex(const QFormLayout* self, int index);
QTLIBC_API void QFormLayout_OnItemAtWithIndex(const QFormLayout* self, intptr_t slot);
QTLIBC_API QLayoutItem* QFormLayout_QBaseItemAtWithIndex(const QFormLayout* self, int index);
QTLIBC_API QLayoutItem* QFormLayout_TakeAt(QFormLayout* self, int index);
QTLIBC_API void QFormLayout_OnTakeAt(QFormLayout* self, intptr_t slot);
QTLIBC_API QLayoutItem* QFormLayout_QBaseTakeAt(QFormLayout* self, int index);
QTLIBC_API void QFormLayout_SetGeometry(QFormLayout* self, QRect* rect);
QTLIBC_API void QFormLayout_OnSetGeometry(QFormLayout* self, intptr_t slot);
QTLIBC_API void QFormLayout_QBaseSetGeometry(QFormLayout* self, QRect* rect);
QTLIBC_API QSize* QFormLayout_MinimumSize(const QFormLayout* self);
QTLIBC_API void QFormLayout_OnMinimumSize(const QFormLayout* self, intptr_t slot);
QTLIBC_API QSize* QFormLayout_QBaseMinimumSize(const QFormLayout* self);
QTLIBC_API QSize* QFormLayout_SizeHint(const QFormLayout* self);
QTLIBC_API void QFormLayout_OnSizeHint(const QFormLayout* self, intptr_t slot);
QTLIBC_API QSize* QFormLayout_QBaseSizeHint(const QFormLayout* self);
QTLIBC_API void QFormLayout_Invalidate(QFormLayout* self);
QTLIBC_API void QFormLayout_OnInvalidate(QFormLayout* self, intptr_t slot);
QTLIBC_API void QFormLayout_QBaseInvalidate(QFormLayout* self);
QTLIBC_API bool QFormLayout_HasHeightForWidth(const QFormLayout* self);
QTLIBC_API void QFormLayout_OnHasHeightForWidth(const QFormLayout* self, intptr_t slot);
QTLIBC_API bool QFormLayout_QBaseHasHeightForWidth(const QFormLayout* self);
QTLIBC_API int QFormLayout_HeightForWidth(const QFormLayout* self, int width);
QTLIBC_API void QFormLayout_OnHeightForWidth(const QFormLayout* self, intptr_t slot);
QTLIBC_API int QFormLayout_QBaseHeightForWidth(const QFormLayout* self, int width);
QTLIBC_API int QFormLayout_ExpandingDirections(const QFormLayout* self);
QTLIBC_API void QFormLayout_OnExpandingDirections(const QFormLayout* self, intptr_t slot);
QTLIBC_API int QFormLayout_QBaseExpandingDirections(const QFormLayout* self);
QTLIBC_API int QFormLayout_Count(const QFormLayout* self);
QTLIBC_API void QFormLayout_OnCount(const QFormLayout* self, intptr_t slot);
QTLIBC_API int QFormLayout_QBaseCount(const QFormLayout* self);
QTLIBC_API int QFormLayout_RowCount(const QFormLayout* self);
QTLIBC_API libqt_string QFormLayout_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QFormLayout_Tr3(const char* s, const char* c, int n);
QTLIBC_API QRect* QFormLayout_Geometry(const QFormLayout* self);
QTLIBC_API void QFormLayout_OnGeometry(const QFormLayout* self, intptr_t slot);
QTLIBC_API QRect* QFormLayout_QBaseGeometry(const QFormLayout* self);
QTLIBC_API QSize* QFormLayout_MaximumSize(const QFormLayout* self);
QTLIBC_API void QFormLayout_OnMaximumSize(const QFormLayout* self, intptr_t slot);
QTLIBC_API QSize* QFormLayout_QBaseMaximumSize(const QFormLayout* self);
QTLIBC_API int QFormLayout_IndexOf(const QFormLayout* self, QWidget* param1);
QTLIBC_API void QFormLayout_OnIndexOf(const QFormLayout* self, intptr_t slot);
QTLIBC_API int QFormLayout_QBaseIndexOf(const QFormLayout* self, QWidget* param1);
QTLIBC_API int QFormLayout_IndexOfWithQLayoutItem(const QFormLayout* self, QLayoutItem* param1);
QTLIBC_API bool QFormLayout_IsEmpty(const QFormLayout* self);
QTLIBC_API void QFormLayout_OnIsEmpty(const QFormLayout* self, intptr_t slot);
QTLIBC_API bool QFormLayout_QBaseIsEmpty(const QFormLayout* self);
QTLIBC_API int QFormLayout_ControlTypes(const QFormLayout* self);
QTLIBC_API void QFormLayout_OnControlTypes(const QFormLayout* self, intptr_t slot);
QTLIBC_API int QFormLayout_QBaseControlTypes(const QFormLayout* self);
QTLIBC_API QLayoutItem* QFormLayout_ReplaceWidget(QFormLayout* self, QWidget* from, QWidget* to, int options);
QTLIBC_API void QFormLayout_OnReplaceWidget(QFormLayout* self, intptr_t slot);
QTLIBC_API QLayoutItem* QFormLayout_QBaseReplaceWidget(QFormLayout* self, QWidget* from, QWidget* to, int options);
QTLIBC_API QLayout* QFormLayout_Layout(QFormLayout* self);
QTLIBC_API void QFormLayout_OnLayout(QFormLayout* self, intptr_t slot);
QTLIBC_API QLayout* QFormLayout_QBaseLayout(QFormLayout* self);
QTLIBC_API void QFormLayout_ChildEvent(QFormLayout* self, QChildEvent* e);
QTLIBC_API void QFormLayout_OnChildEvent(QFormLayout* self, intptr_t slot);
QTLIBC_API void QFormLayout_QBaseChildEvent(QFormLayout* self, QChildEvent* e);
QTLIBC_API bool QFormLayout_Event(QFormLayout* self, QEvent* event);
QTLIBC_API void QFormLayout_OnEvent(QFormLayout* self, intptr_t slot);
QTLIBC_API bool QFormLayout_QBaseEvent(QFormLayout* self, QEvent* event);
QTLIBC_API bool QFormLayout_EventFilter(QFormLayout* self, QObject* watched, QEvent* event);
QTLIBC_API void QFormLayout_OnEventFilter(QFormLayout* self, intptr_t slot);
QTLIBC_API bool QFormLayout_QBaseEventFilter(QFormLayout* self, QObject* watched, QEvent* event);
QTLIBC_API void QFormLayout_TimerEvent(QFormLayout* self, QTimerEvent* event);
QTLIBC_API void QFormLayout_OnTimerEvent(QFormLayout* self, intptr_t slot);
QTLIBC_API void QFormLayout_QBaseTimerEvent(QFormLayout* self, QTimerEvent* event);
QTLIBC_API void QFormLayout_CustomEvent(QFormLayout* self, QEvent* event);
QTLIBC_API void QFormLayout_OnCustomEvent(QFormLayout* self, intptr_t slot);
QTLIBC_API void QFormLayout_QBaseCustomEvent(QFormLayout* self, QEvent* event);
QTLIBC_API void QFormLayout_ConnectNotify(QFormLayout* self, QMetaMethod* signal);
QTLIBC_API void QFormLayout_OnConnectNotify(QFormLayout* self, intptr_t slot);
QTLIBC_API void QFormLayout_QBaseConnectNotify(QFormLayout* self, QMetaMethod* signal);
QTLIBC_API void QFormLayout_DisconnectNotify(QFormLayout* self, QMetaMethod* signal);
QTLIBC_API void QFormLayout_OnDisconnectNotify(QFormLayout* self, intptr_t slot);
QTLIBC_API void QFormLayout_QBaseDisconnectNotify(QFormLayout* self, QMetaMethod* signal);
QTLIBC_API int QFormLayout_MinimumHeightForWidth(const QFormLayout* self, int param1);
QTLIBC_API void QFormLayout_OnMinimumHeightForWidth(const QFormLayout* self, intptr_t slot);
QTLIBC_API int QFormLayout_QBaseMinimumHeightForWidth(const QFormLayout* self, int param1);
QTLIBC_API QWidget* QFormLayout_Widget(const QFormLayout* self);
QTLIBC_API void QFormLayout_OnWidget(const QFormLayout* self, intptr_t slot);
QTLIBC_API QWidget* QFormLayout_QBaseWidget(const QFormLayout* self);
QTLIBC_API QSpacerItem* QFormLayout_SpacerItem(QFormLayout* self);
QTLIBC_API void QFormLayout_OnSpacerItem(QFormLayout* self, intptr_t slot);
QTLIBC_API QSpacerItem* QFormLayout_QBaseSpacerItem(QFormLayout* self);
QTLIBC_API void QFormLayout_WidgetEvent(QFormLayout* self, QEvent* param1);
QTLIBC_API void QFormLayout_OnWidgetEvent(QFormLayout* self, intptr_t slot);
QTLIBC_API void QFormLayout_QBaseWidgetEvent(QFormLayout* self, QEvent* param1);
QTLIBC_API void QFormLayout_AddChildLayout(QFormLayout* self, QLayout* l);
QTLIBC_API void QFormLayout_OnAddChildLayout(QFormLayout* self, intptr_t slot);
QTLIBC_API void QFormLayout_QBaseAddChildLayout(QFormLayout* self, QLayout* l);
QTLIBC_API void QFormLayout_AddChildWidget(QFormLayout* self, QWidget* w);
QTLIBC_API void QFormLayout_OnAddChildWidget(QFormLayout* self, intptr_t slot);
QTLIBC_API void QFormLayout_QBaseAddChildWidget(QFormLayout* self, QWidget* w);
QTLIBC_API bool QFormLayout_AdoptLayout(QFormLayout* self, QLayout* layout);
QTLIBC_API void QFormLayout_OnAdoptLayout(QFormLayout* self, intptr_t slot);
QTLIBC_API bool QFormLayout_QBaseAdoptLayout(QFormLayout* self, QLayout* layout);
QTLIBC_API QRect* QFormLayout_AlignmentRect(const QFormLayout* self, QRect* param1);
QTLIBC_API void QFormLayout_OnAlignmentRect(const QFormLayout* self, intptr_t slot);
QTLIBC_API QRect* QFormLayout_QBaseAlignmentRect(const QFormLayout* self, QRect* param1);
QTLIBC_API QObject* QFormLayout_Sender(const QFormLayout* self);
QTLIBC_API void QFormLayout_OnSender(const QFormLayout* self, intptr_t slot);
QTLIBC_API QObject* QFormLayout_QBaseSender(const QFormLayout* self);
QTLIBC_API int QFormLayout_SenderSignalIndex(const QFormLayout* self);
QTLIBC_API void QFormLayout_OnSenderSignalIndex(const QFormLayout* self, intptr_t slot);
QTLIBC_API int QFormLayout_QBaseSenderSignalIndex(const QFormLayout* self);
QTLIBC_API int QFormLayout_Receivers(const QFormLayout* self, const char* signal);
QTLIBC_API void QFormLayout_OnReceivers(const QFormLayout* self, intptr_t slot);
QTLIBC_API int QFormLayout_QBaseReceivers(const QFormLayout* self, const char* signal);
QTLIBC_API bool QFormLayout_IsSignalConnected(const QFormLayout* self, QMetaMethod* signal);
QTLIBC_API void QFormLayout_OnIsSignalConnected(const QFormLayout* self, intptr_t slot);
QTLIBC_API bool QFormLayout_QBaseIsSignalConnected(const QFormLayout* self, QMetaMethod* signal);
QTLIBC_API void QFormLayout_Delete(QFormLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
