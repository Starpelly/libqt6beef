#pragma once
#ifndef SRC_QTC_LIBQGRAPHICSANCHORLAYOUT_H
#define SRC_QTC_LIBQGRAPHICSANCHORLAYOUT_H

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
typedef struct QGraphicsAnchor QGraphicsAnchor;
typedef struct QGraphicsAnchorLayout QGraphicsAnchorLayout;
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsLayout QGraphicsLayout;
typedef struct QGraphicsLayoutItem QGraphicsLayoutItem;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QRectF QRectF;
typedef struct QSizeF QSizeF;
typedef struct QSizePolicy QSizePolicy;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QMetaObject* QGraphicsAnchor_MetaObject(const QGraphicsAnchor* self);
QTLIBC_API void* QGraphicsAnchor_Metacast(QGraphicsAnchor* self, const char* param1);
QTLIBC_API int QGraphicsAnchor_Metacall(QGraphicsAnchor* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QGraphicsAnchor_Tr(const char* s);
QTLIBC_API void QGraphicsAnchor_SetSpacing(QGraphicsAnchor* self, double spacing);
QTLIBC_API void QGraphicsAnchor_UnsetSpacing(QGraphicsAnchor* self);
QTLIBC_API double QGraphicsAnchor_Spacing(const QGraphicsAnchor* self);
QTLIBC_API void QGraphicsAnchor_SetSizePolicy(QGraphicsAnchor* self, int policy);
QTLIBC_API int QGraphicsAnchor_SizePolicy(const QGraphicsAnchor* self);
QTLIBC_API libqt_string QGraphicsAnchor_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QGraphicsAnchor_Tr3(const char* s, const char* c, int n);
QTLIBC_API bool QGraphicsAnchor_Event(QGraphicsAnchor* self, QEvent* event);
QTLIBC_API bool QGraphicsAnchor_EventFilter(QGraphicsAnchor* self, QObject* watched, QEvent* event);
QTLIBC_API void QGraphicsAnchor_Delete(QGraphicsAnchor* self);

QTLIBC_API QGraphicsAnchorLayout* QGraphicsAnchorLayout_new();
QTLIBC_API QGraphicsAnchorLayout* QGraphicsAnchorLayout_new2(QGraphicsLayoutItem* parent);
QTLIBC_API QGraphicsAnchor* QGraphicsAnchorLayout_AddAnchor(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* firstItem, int firstEdge, QGraphicsLayoutItem* secondItem, int secondEdge);
QTLIBC_API QGraphicsAnchor* QGraphicsAnchorLayout_Anchor(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* firstItem, int firstEdge, QGraphicsLayoutItem* secondItem, int secondEdge);
QTLIBC_API void QGraphicsAnchorLayout_AddCornerAnchors(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* firstItem, int firstCorner, QGraphicsLayoutItem* secondItem, int secondCorner);
QTLIBC_API void QGraphicsAnchorLayout_AddAnchors(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* firstItem, QGraphicsLayoutItem* secondItem);
QTLIBC_API void QGraphicsAnchorLayout_SetHorizontalSpacing(QGraphicsAnchorLayout* self, double spacing);
QTLIBC_API void QGraphicsAnchorLayout_SetVerticalSpacing(QGraphicsAnchorLayout* self, double spacing);
QTLIBC_API void QGraphicsAnchorLayout_SetSpacing(QGraphicsAnchorLayout* self, double spacing);
QTLIBC_API double QGraphicsAnchorLayout_HorizontalSpacing(const QGraphicsAnchorLayout* self);
QTLIBC_API double QGraphicsAnchorLayout_VerticalSpacing(const QGraphicsAnchorLayout* self);
QTLIBC_API void QGraphicsAnchorLayout_RemoveAt(QGraphicsAnchorLayout* self, int index);
QTLIBC_API void QGraphicsAnchorLayout_OnRemoveAt(QGraphicsAnchorLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsAnchorLayout_QBaseRemoveAt(QGraphicsAnchorLayout* self, int index);
QTLIBC_API void QGraphicsAnchorLayout_SetGeometry(QGraphicsAnchorLayout* self, QRectF* rect);
QTLIBC_API void QGraphicsAnchorLayout_OnSetGeometry(QGraphicsAnchorLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsAnchorLayout_QBaseSetGeometry(QGraphicsAnchorLayout* self, QRectF* rect);
QTLIBC_API int QGraphicsAnchorLayout_Count(const QGraphicsAnchorLayout* self);
QTLIBC_API void QGraphicsAnchorLayout_OnCount(const QGraphicsAnchorLayout* self, intptr_t slot);
QTLIBC_API int QGraphicsAnchorLayout_QBaseCount(const QGraphicsAnchorLayout* self);
QTLIBC_API QGraphicsLayoutItem* QGraphicsAnchorLayout_ItemAt(const QGraphicsAnchorLayout* self, int index);
QTLIBC_API void QGraphicsAnchorLayout_OnItemAt(const QGraphicsAnchorLayout* self, intptr_t slot);
QTLIBC_API QGraphicsLayoutItem* QGraphicsAnchorLayout_QBaseItemAt(const QGraphicsAnchorLayout* self, int index);
QTLIBC_API void QGraphicsAnchorLayout_Invalidate(QGraphicsAnchorLayout* self);
QTLIBC_API void QGraphicsAnchorLayout_OnInvalidate(QGraphicsAnchorLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsAnchorLayout_QBaseInvalidate(QGraphicsAnchorLayout* self);
QTLIBC_API QSizeF* QGraphicsAnchorLayout_SizeHint(const QGraphicsAnchorLayout* self, int which, QSizeF* constraint);
QTLIBC_API void QGraphicsAnchorLayout_OnSizeHint(const QGraphicsAnchorLayout* self, intptr_t slot);
QTLIBC_API QSizeF* QGraphicsAnchorLayout_QBaseSizeHint(const QGraphicsAnchorLayout* self, int which, QSizeF* constraint);
QTLIBC_API void QGraphicsAnchorLayout_AddAnchors3(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* firstItem, QGraphicsLayoutItem* secondItem, int orientations);
QTLIBC_API void QGraphicsAnchorLayout_GetContentsMargins(const QGraphicsAnchorLayout* self, double* left, double* top, double* right, double* bottom);
QTLIBC_API void QGraphicsAnchorLayout_OnGetContentsMargins(const QGraphicsAnchorLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsAnchorLayout_QBaseGetContentsMargins(const QGraphicsAnchorLayout* self, double* left, double* top, double* right, double* bottom);
QTLIBC_API void QGraphicsAnchorLayout_UpdateGeometry(QGraphicsAnchorLayout* self);
QTLIBC_API void QGraphicsAnchorLayout_OnUpdateGeometry(QGraphicsAnchorLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsAnchorLayout_QBaseUpdateGeometry(QGraphicsAnchorLayout* self);
QTLIBC_API void QGraphicsAnchorLayout_WidgetEvent(QGraphicsAnchorLayout* self, QEvent* e);
QTLIBC_API void QGraphicsAnchorLayout_OnWidgetEvent(QGraphicsAnchorLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsAnchorLayout_QBaseWidgetEvent(QGraphicsAnchorLayout* self, QEvent* e);
QTLIBC_API bool QGraphicsAnchorLayout_IsEmpty(const QGraphicsAnchorLayout* self);
QTLIBC_API void QGraphicsAnchorLayout_OnIsEmpty(const QGraphicsAnchorLayout* self, intptr_t slot);
QTLIBC_API bool QGraphicsAnchorLayout_QBaseIsEmpty(const QGraphicsAnchorLayout* self);
QTLIBC_API void QGraphicsAnchorLayout_AddChildLayoutItem(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* layoutItem);
QTLIBC_API void QGraphicsAnchorLayout_OnAddChildLayoutItem(QGraphicsAnchorLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsAnchorLayout_QBaseAddChildLayoutItem(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* layoutItem);
QTLIBC_API void QGraphicsAnchorLayout_SetGraphicsItem(QGraphicsAnchorLayout* self, QGraphicsItem* item);
QTLIBC_API void QGraphicsAnchorLayout_OnSetGraphicsItem(QGraphicsAnchorLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsAnchorLayout_QBaseSetGraphicsItem(QGraphicsAnchorLayout* self, QGraphicsItem* item);
QTLIBC_API void QGraphicsAnchorLayout_SetOwnedByLayout(QGraphicsAnchorLayout* self, bool ownedByLayout);
QTLIBC_API void QGraphicsAnchorLayout_OnSetOwnedByLayout(QGraphicsAnchorLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsAnchorLayout_QBaseSetOwnedByLayout(QGraphicsAnchorLayout* self, bool ownedByLayout);
QTLIBC_API void QGraphicsAnchorLayout_Delete(QGraphicsAnchorLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
