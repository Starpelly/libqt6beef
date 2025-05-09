#pragma once
#ifndef SRC_QTC_LIBQACCESSIBLEOBJECT_H
#define SRC_QTC_LIBQACCESSIBLEOBJECT_H

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
typedef struct QAccessibleApplication QAccessibleApplication;
typedef struct QAccessibleEditableTextInterface QAccessibleEditableTextInterface;
typedef struct QAccessibleHyperlinkInterface QAccessibleHyperlinkInterface;
typedef struct QAccessibleImageInterface QAccessibleImageInterface;
typedef struct QAccessibleInterface QAccessibleInterface;
typedef struct QAccessibleObject QAccessibleObject;
typedef struct QAccessibleTableCellInterface QAccessibleTableCellInterface;
typedef struct QAccessibleTableInterface QAccessibleTableInterface;
typedef struct QAccessibleTextInterface QAccessibleTextInterface;
typedef struct QAccessibleValueInterface QAccessibleValueInterface;
typedef struct QAccessible__State QAccessible__State;
typedef struct QColor QColor;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QWindow QWindow;
#endif

QTLIBC_API bool QAccessibleObject_IsValid(const QAccessibleObject* self);
QTLIBC_API QObject* QAccessibleObject_Object(const QAccessibleObject* self);
QTLIBC_API QRect* QAccessibleObject_Rect(const QAccessibleObject* self);
QTLIBC_API void QAccessibleObject_SetText(QAccessibleObject* self, int t, libqt_string text);
QTLIBC_API QAccessibleInterface* QAccessibleObject_ChildAt(const QAccessibleObject* self, int x, int y);
QTLIBC_API QWindow* QAccessibleObject_Window(const QAccessibleObject* self);
QTLIBC_API libqt_list /* of libqt_pair  tuple of QAccessibleInterface* and int  */ QAccessibleObject_Relations(const QAccessibleObject* self, int match);
QTLIBC_API QAccessibleInterface* QAccessibleObject_FocusChild(const QAccessibleObject* self);
QTLIBC_API QAccessibleInterface* QAccessibleObject_Parent(const QAccessibleObject* self);
QTLIBC_API QAccessibleInterface* QAccessibleObject_Child(const QAccessibleObject* self, int index);
QTLIBC_API int QAccessibleObject_ChildCount(const QAccessibleObject* self);
QTLIBC_API int QAccessibleObject_IndexOfChild(const QAccessibleObject* self, QAccessibleInterface* param1);
QTLIBC_API libqt_string QAccessibleObject_Text(const QAccessibleObject* self, int t);
QTLIBC_API int QAccessibleObject_Role(const QAccessibleObject* self);
QTLIBC_API QAccessible__State* QAccessibleObject_State(const QAccessibleObject* self);
QTLIBC_API QColor* QAccessibleObject_ForegroundColor(const QAccessibleObject* self);
QTLIBC_API QColor* QAccessibleObject_BackgroundColor(const QAccessibleObject* self);
QTLIBC_API void QAccessibleObject_VirtualHook(QAccessibleObject* self, int id, void* data);
QTLIBC_API void* QAccessibleObject_InterfaceCast(QAccessibleObject* self, int param1);

QTLIBC_API QAccessibleApplication* QAccessibleApplication_new();
QTLIBC_API QWindow* QAccessibleApplication_Window(const QAccessibleApplication* self);
QTLIBC_API void QAccessibleApplication_OnWindow(const QAccessibleApplication* self, intptr_t slot);
QTLIBC_API QWindow* QAccessibleApplication_QBaseWindow(const QAccessibleApplication* self);
QTLIBC_API int QAccessibleApplication_ChildCount(const QAccessibleApplication* self);
QTLIBC_API void QAccessibleApplication_OnChildCount(const QAccessibleApplication* self, intptr_t slot);
QTLIBC_API int QAccessibleApplication_QBaseChildCount(const QAccessibleApplication* self);
QTLIBC_API int QAccessibleApplication_IndexOfChild(const QAccessibleApplication* self, QAccessibleInterface* param1);
QTLIBC_API void QAccessibleApplication_OnIndexOfChild(const QAccessibleApplication* self, intptr_t slot);
QTLIBC_API int QAccessibleApplication_QBaseIndexOfChild(const QAccessibleApplication* self, QAccessibleInterface* param1);
QTLIBC_API QAccessibleInterface* QAccessibleApplication_FocusChild(const QAccessibleApplication* self);
QTLIBC_API void QAccessibleApplication_OnFocusChild(const QAccessibleApplication* self, intptr_t slot);
QTLIBC_API QAccessibleInterface* QAccessibleApplication_QBaseFocusChild(const QAccessibleApplication* self);
QTLIBC_API QAccessibleInterface* QAccessibleApplication_Parent(const QAccessibleApplication* self);
QTLIBC_API void QAccessibleApplication_OnParent(const QAccessibleApplication* self, intptr_t slot);
QTLIBC_API QAccessibleInterface* QAccessibleApplication_QBaseParent(const QAccessibleApplication* self);
QTLIBC_API QAccessibleInterface* QAccessibleApplication_Child(const QAccessibleApplication* self, int index);
QTLIBC_API void QAccessibleApplication_OnChild(const QAccessibleApplication* self, intptr_t slot);
QTLIBC_API QAccessibleInterface* QAccessibleApplication_QBaseChild(const QAccessibleApplication* self, int index);
QTLIBC_API libqt_string QAccessibleApplication_Text(const QAccessibleApplication* self, int t);
QTLIBC_API void QAccessibleApplication_OnText(const QAccessibleApplication* self, intptr_t slot);
QTLIBC_API libqt_string QAccessibleApplication_QBaseText(const QAccessibleApplication* self, int t);
QTLIBC_API int QAccessibleApplication_Role(const QAccessibleApplication* self);
QTLIBC_API void QAccessibleApplication_OnRole(const QAccessibleApplication* self, intptr_t slot);
QTLIBC_API int QAccessibleApplication_QBaseRole(const QAccessibleApplication* self);
QTLIBC_API QAccessible__State* QAccessibleApplication_State(const QAccessibleApplication* self);
QTLIBC_API void QAccessibleApplication_OnState(const QAccessibleApplication* self, intptr_t slot);
QTLIBC_API QAccessible__State* QAccessibleApplication_QBaseState(const QAccessibleApplication* self);
QTLIBC_API bool QAccessibleApplication_IsValid(const QAccessibleApplication* self);
QTLIBC_API void QAccessibleApplication_OnIsValid(const QAccessibleApplication* self, intptr_t slot);
QTLIBC_API bool QAccessibleApplication_QBaseIsValid(const QAccessibleApplication* self);
QTLIBC_API QObject* QAccessibleApplication_Object(const QAccessibleApplication* self);
QTLIBC_API void QAccessibleApplication_OnObject(const QAccessibleApplication* self, intptr_t slot);
QTLIBC_API QObject* QAccessibleApplication_QBaseObject(const QAccessibleApplication* self);
QTLIBC_API QRect* QAccessibleApplication_Rect(const QAccessibleApplication* self);
QTLIBC_API void QAccessibleApplication_OnRect(const QAccessibleApplication* self, intptr_t slot);
QTLIBC_API QRect* QAccessibleApplication_QBaseRect(const QAccessibleApplication* self);
QTLIBC_API void QAccessibleApplication_SetText(QAccessibleApplication* self, int t, libqt_string text);
QTLIBC_API void QAccessibleApplication_OnSetText(QAccessibleApplication* self, intptr_t slot);
QTLIBC_API void QAccessibleApplication_QBaseSetText(QAccessibleApplication* self, int t, libqt_string text);
QTLIBC_API QAccessibleInterface* QAccessibleApplication_ChildAt(const QAccessibleApplication* self, int x, int y);
QTLIBC_API void QAccessibleApplication_OnChildAt(const QAccessibleApplication* self, intptr_t slot);
QTLIBC_API QAccessibleInterface* QAccessibleApplication_QBaseChildAt(const QAccessibleApplication* self, int x, int y);
QTLIBC_API libqt_list /* of libqt_pair  tuple of QAccessibleInterface* and int  */ QAccessibleApplication_Relations(const QAccessibleApplication* self, int match);
QTLIBC_API void QAccessibleApplication_OnRelations(const QAccessibleApplication* self, intptr_t slot);
QTLIBC_API libqt_list /* of libqt_pair  tuple of QAccessibleInterface* and int  */ QAccessibleApplication_QBaseRelations(const QAccessibleApplication* self, int match);
QTLIBC_API QColor* QAccessibleApplication_ForegroundColor(const QAccessibleApplication* self);
QTLIBC_API void QAccessibleApplication_OnForegroundColor(const QAccessibleApplication* self, intptr_t slot);
QTLIBC_API QColor* QAccessibleApplication_QBaseForegroundColor(const QAccessibleApplication* self);
QTLIBC_API QColor* QAccessibleApplication_BackgroundColor(const QAccessibleApplication* self);
QTLIBC_API void QAccessibleApplication_OnBackgroundColor(const QAccessibleApplication* self, intptr_t slot);
QTLIBC_API QColor* QAccessibleApplication_QBaseBackgroundColor(const QAccessibleApplication* self);
QTLIBC_API void QAccessibleApplication_VirtualHook(QAccessibleApplication* self, int id, void* data);
QTLIBC_API void QAccessibleApplication_OnVirtualHook(QAccessibleApplication* self, intptr_t slot);
QTLIBC_API void QAccessibleApplication_QBaseVirtualHook(QAccessibleApplication* self, int id, void* data);
QTLIBC_API void* QAccessibleApplication_InterfaceCast(QAccessibleApplication* self, int param1);
QTLIBC_API void QAccessibleApplication_OnInterfaceCast(QAccessibleApplication* self, intptr_t slot);
QTLIBC_API void* QAccessibleApplication_QBaseInterfaceCast(QAccessibleApplication* self, int param1);
QTLIBC_API void QAccessibleApplication_Delete(QAccessibleApplication* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
