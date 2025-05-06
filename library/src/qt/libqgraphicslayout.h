#pragma once
#ifndef SRC_QTC_LIBQGRAPHICSLAYOUT_H
#define SRC_QTC_LIBQGRAPHICSLAYOUT_H

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
typedef struct QEvent QEvent;
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsLayout QGraphicsLayout;
typedef struct QGraphicsLayoutItem QGraphicsLayoutItem;
typedef struct QRectF QRectF;
typedef struct QSizeF QSizeF;
typedef struct QSizePolicy QSizePolicy;
#endif

QTLIBC_API QGraphicsLayout* QGraphicsLayout_new();
QTLIBC_API QGraphicsLayout* QGraphicsLayout_new2(QGraphicsLayoutItem* parent);
QTLIBC_API void QGraphicsLayout_SetContentsMargins(QGraphicsLayout* self, double left, double top, double right, double bottom);
QTLIBC_API void QGraphicsLayout_GetContentsMargins(const QGraphicsLayout* self, double* left, double* top, double* right, double* bottom);
QTLIBC_API void QGraphicsLayout_OnGetContentsMargins(const QGraphicsLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLayout_QBaseGetContentsMargins(const QGraphicsLayout* self, double* left, double* top, double* right, double* bottom);
QTLIBC_API void QGraphicsLayout_Activate(QGraphicsLayout* self);
QTLIBC_API bool QGraphicsLayout_IsActivated(const QGraphicsLayout* self);
QTLIBC_API void QGraphicsLayout_Invalidate(QGraphicsLayout* self);
QTLIBC_API void QGraphicsLayout_OnInvalidate(QGraphicsLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLayout_QBaseInvalidate(QGraphicsLayout* self);
QTLIBC_API void QGraphicsLayout_UpdateGeometry(QGraphicsLayout* self);
QTLIBC_API void QGraphicsLayout_OnUpdateGeometry(QGraphicsLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLayout_QBaseUpdateGeometry(QGraphicsLayout* self);
QTLIBC_API void QGraphicsLayout_WidgetEvent(QGraphicsLayout* self, QEvent* e);
QTLIBC_API void QGraphicsLayout_OnWidgetEvent(QGraphicsLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLayout_QBaseWidgetEvent(QGraphicsLayout* self, QEvent* e);
QTLIBC_API int QGraphicsLayout_Count(const QGraphicsLayout* self);
QTLIBC_API void QGraphicsLayout_OnCount(const QGraphicsLayout* self, intptr_t slot);
QTLIBC_API int QGraphicsLayout_QBaseCount(const QGraphicsLayout* self);
QTLIBC_API QGraphicsLayoutItem* QGraphicsLayout_ItemAt(const QGraphicsLayout* self, int i);
QTLIBC_API void QGraphicsLayout_OnItemAt(const QGraphicsLayout* self, intptr_t slot);
QTLIBC_API QGraphicsLayoutItem* QGraphicsLayout_QBaseItemAt(const QGraphicsLayout* self, int i);
QTLIBC_API void QGraphicsLayout_RemoveAt(QGraphicsLayout* self, int index);
QTLIBC_API void QGraphicsLayout_OnRemoveAt(QGraphicsLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLayout_QBaseRemoveAt(QGraphicsLayout* self, int index);
QTLIBC_API void QGraphicsLayout_SetInstantInvalidatePropagation(bool enable);
QTLIBC_API bool QGraphicsLayout_InstantInvalidatePropagation();
QTLIBC_API void QGraphicsLayout_SetGeometry(QGraphicsLayout* self, QRectF* rect);
QTLIBC_API void QGraphicsLayout_OnSetGeometry(QGraphicsLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLayout_QBaseSetGeometry(QGraphicsLayout* self, QRectF* rect);
QTLIBC_API bool QGraphicsLayout_IsEmpty(const QGraphicsLayout* self);
QTLIBC_API void QGraphicsLayout_OnIsEmpty(const QGraphicsLayout* self, intptr_t slot);
QTLIBC_API bool QGraphicsLayout_QBaseIsEmpty(const QGraphicsLayout* self);
QTLIBC_API QSizeF* QGraphicsLayout_SizeHint(const QGraphicsLayout* self, int which, QSizeF* constraint);
QTLIBC_API void QGraphicsLayout_OnSizeHint(const QGraphicsLayout* self, intptr_t slot);
QTLIBC_API QSizeF* QGraphicsLayout_QBaseSizeHint(const QGraphicsLayout* self, int which, QSizeF* constraint);
QTLIBC_API void QGraphicsLayout_AddChildLayoutItem(QGraphicsLayout* self, QGraphicsLayoutItem* layoutItem);
QTLIBC_API void QGraphicsLayout_OnAddChildLayoutItem(QGraphicsLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLayout_QBaseAddChildLayoutItem(QGraphicsLayout* self, QGraphicsLayoutItem* layoutItem);
QTLIBC_API void QGraphicsLayout_SetGraphicsItem(QGraphicsLayout* self, QGraphicsItem* item);
QTLIBC_API void QGraphicsLayout_OnSetGraphicsItem(QGraphicsLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLayout_QBaseSetGraphicsItem(QGraphicsLayout* self, QGraphicsItem* item);
QTLIBC_API void QGraphicsLayout_SetOwnedByLayout(QGraphicsLayout* self, bool ownedByLayout);
QTLIBC_API void QGraphicsLayout_OnSetOwnedByLayout(QGraphicsLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLayout_QBaseSetOwnedByLayout(QGraphicsLayout* self, bool ownedByLayout);
QTLIBC_API void QGraphicsLayout_Delete(QGraphicsLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
