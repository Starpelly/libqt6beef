#pragma once
#ifndef SRCC_LIBQACCESSIBLEWIDGET_H
#define SRCC_LIBQACCESSIBLEWIDGET_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QAccessible__State)
typedef QAccessible::State QAccessible__State;
#endif
#else
typedef struct QAccessibleActionInterface QAccessibleActionInterface;
typedef struct QAccessibleEditableTextInterface QAccessibleEditableTextInterface;
typedef struct QAccessibleHyperlinkInterface QAccessibleHyperlinkInterface;
typedef struct QAccessibleImageInterface QAccessibleImageInterface;
typedef struct QAccessibleInterface QAccessibleInterface;
typedef struct QAccessibleObject QAccessibleObject;
typedef struct QAccessibleTableCellInterface QAccessibleTableCellInterface;
typedef struct QAccessibleTableInterface QAccessibleTableInterface;
typedef struct QAccessibleTextInterface QAccessibleTextInterface;
typedef struct QAccessibleValueInterface QAccessibleValueInterface;
typedef struct QAccessibleWidget QAccessibleWidget;
typedef struct QAccessible__State QAccessible__State;
typedef struct QColor QColor;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QAccessibleWidget* QAccessibleWidget_new(QWidget* o);
QTLIBC_API QAccessibleWidget* QAccessibleWidget_new2(QWidget* o, int r);
QTLIBC_API QAccessibleWidget* QAccessibleWidget_new3(QWidget* o, int r, libqt_string name);
QTLIBC_API bool QAccessibleWidget_IsValid(const QAccessibleWidget* self);
QTLIBC_API QWindow* QAccessibleWidget_Window(const QAccessibleWidget* self);
QTLIBC_API int QAccessibleWidget_ChildCount(const QAccessibleWidget* self);
QTLIBC_API int QAccessibleWidget_IndexOfChild(const QAccessibleWidget* self, QAccessibleInterface* child);
QTLIBC_API libqt_list /* of libqt_pair  tuple of QAccessibleInterface* and int  */ QAccessibleWidget_Relations(const QAccessibleWidget* self, int match);
QTLIBC_API QAccessibleInterface* QAccessibleWidget_FocusChild(const QAccessibleWidget* self);
QTLIBC_API QRect* QAccessibleWidget_Rect(const QAccessibleWidget* self);
QTLIBC_API QAccessibleInterface* QAccessibleWidget_Parent(const QAccessibleWidget* self);
QTLIBC_API QAccessibleInterface* QAccessibleWidget_Child(const QAccessibleWidget* self, int index);
QTLIBC_API libqt_string QAccessibleWidget_Text(const QAccessibleWidget* self, int t);
QTLIBC_API int QAccessibleWidget_Role(const QAccessibleWidget* self);
QTLIBC_API QAccessible__State* QAccessibleWidget_State(const QAccessibleWidget* self);
QTLIBC_API QColor* QAccessibleWidget_ForegroundColor(const QAccessibleWidget* self);
QTLIBC_API QColor* QAccessibleWidget_BackgroundColor(const QAccessibleWidget* self);
QTLIBC_API void* QAccessibleWidget_InterfaceCast(QAccessibleWidget* self, int t);
QTLIBC_API libqt_list /* of libqt_string */ QAccessibleWidget_ActionNames(const QAccessibleWidget* self);
QTLIBC_API void QAccessibleWidget_DoAction(QAccessibleWidget* self, libqt_string actionName);
QTLIBC_API libqt_list /* of libqt_string */ QAccessibleWidget_KeyBindingsForAction(const QAccessibleWidget* self, libqt_string actionName);
QTLIBC_API QObject* QAccessibleWidget_Object(const QAccessibleWidget* self);
QTLIBC_API void QAccessibleWidget_SetText(QAccessibleWidget* self, int t, libqt_string text);
QTLIBC_API QAccessibleInterface* QAccessibleWidget_ChildAt(const QAccessibleWidget* self, int x, int y);
QTLIBC_API void QAccessibleWidget_VirtualHook(QAccessibleWidget* self, int id, void* data);
QTLIBC_API libqt_string QAccessibleWidget_LocalizedActionName(const QAccessibleWidget* self, libqt_string name);
QTLIBC_API libqt_string QAccessibleWidget_LocalizedActionDescription(const QAccessibleWidget* self, libqt_string name);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
