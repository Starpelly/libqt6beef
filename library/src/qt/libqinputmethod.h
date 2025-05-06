#pragma once
#ifndef SRC_QTC_LIBQINPUTMETHOD_H
#define SRC_QTC_LIBQINPUTMETHOD_H

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
typedef struct QInputMethod QInputMethod;
typedef struct QLocale QLocale;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QRectF QRectF;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QInputMethod::Action Action; // C++ enum
#else
typedef int Action; // C ABI enum
#endif

QTLIBC_API QMetaObject* QInputMethod_MetaObject(const QInputMethod* self);
QTLIBC_API void* QInputMethod_Metacast(QInputMethod* self, const char* param1);
QTLIBC_API int QInputMethod_Metacall(QInputMethod* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QInputMethod_Tr(const char* s);
QTLIBC_API QTransform* QInputMethod_InputItemTransform(const QInputMethod* self);
QTLIBC_API void QInputMethod_SetInputItemTransform(QInputMethod* self, QTransform* transform);
QTLIBC_API QRectF* QInputMethod_InputItemRectangle(const QInputMethod* self);
QTLIBC_API void QInputMethod_SetInputItemRectangle(QInputMethod* self, QRectF* rect);
QTLIBC_API QRectF* QInputMethod_CursorRectangle(const QInputMethod* self);
QTLIBC_API QRectF* QInputMethod_AnchorRectangle(const QInputMethod* self);
QTLIBC_API QRectF* QInputMethod_KeyboardRectangle(const QInputMethod* self);
QTLIBC_API QRectF* QInputMethod_InputItemClipRectangle(const QInputMethod* self);
QTLIBC_API bool QInputMethod_IsVisible(const QInputMethod* self);
QTLIBC_API void QInputMethod_SetVisible(QInputMethod* self, bool visible);
QTLIBC_API bool QInputMethod_IsAnimating(const QInputMethod* self);
QTLIBC_API QLocale* QInputMethod_Locale(const QInputMethod* self);
QTLIBC_API int QInputMethod_InputDirection(const QInputMethod* self);
QTLIBC_API QVariant* QInputMethod_QueryFocusObject(int query, QVariant* argument);
QTLIBC_API void QInputMethod_Show(QInputMethod* self);
QTLIBC_API void QInputMethod_Hide(QInputMethod* self);
QTLIBC_API void QInputMethod_Update(QInputMethod* self, int queries);
QTLIBC_API void QInputMethod_Reset(QInputMethod* self);
QTLIBC_API void QInputMethod_Commit(QInputMethod* self);
QTLIBC_API void QInputMethod_InvokeAction(QInputMethod* self, int a, int cursorPosition);
QTLIBC_API void QInputMethod_CursorRectangleChanged(QInputMethod* self);
QTLIBC_API void QInputMethod_Connect_CursorRectangleChanged(QInputMethod* self, intptr_t slot);
QTLIBC_API void QInputMethod_AnchorRectangleChanged(QInputMethod* self);
QTLIBC_API void QInputMethod_Connect_AnchorRectangleChanged(QInputMethod* self, intptr_t slot);
QTLIBC_API void QInputMethod_KeyboardRectangleChanged(QInputMethod* self);
QTLIBC_API void QInputMethod_Connect_KeyboardRectangleChanged(QInputMethod* self, intptr_t slot);
QTLIBC_API void QInputMethod_InputItemClipRectangleChanged(QInputMethod* self);
QTLIBC_API void QInputMethod_Connect_InputItemClipRectangleChanged(QInputMethod* self, intptr_t slot);
QTLIBC_API void QInputMethod_VisibleChanged(QInputMethod* self);
QTLIBC_API void QInputMethod_Connect_VisibleChanged(QInputMethod* self, intptr_t slot);
QTLIBC_API void QInputMethod_AnimatingChanged(QInputMethod* self);
QTLIBC_API void QInputMethod_Connect_AnimatingChanged(QInputMethod* self, intptr_t slot);
QTLIBC_API void QInputMethod_LocaleChanged(QInputMethod* self);
QTLIBC_API void QInputMethod_Connect_LocaleChanged(QInputMethod* self, intptr_t slot);
QTLIBC_API void QInputMethod_InputDirectionChanged(QInputMethod* self, int newDirection);
QTLIBC_API void QInputMethod_Connect_InputDirectionChanged(QInputMethod* self, intptr_t slot);
QTLIBC_API libqt_string QInputMethod_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QInputMethod_Tr3(const char* s, const char* c, int n);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
