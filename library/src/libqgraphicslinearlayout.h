#pragma once
#ifndef SRCC_LIBQGRAPHICSLINEARLAYOUT_H
#define SRCC_LIBQGRAPHICSLINEARLAYOUT_H

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
typedef struct QGraphicsLinearLayout QGraphicsLinearLayout;
typedef struct QRectF QRectF;
typedef struct QSizeF QSizeF;
typedef struct QSizePolicy QSizePolicy;
#endif

QTLIBC_API QGraphicsLinearLayout* QGraphicsLinearLayout_new();
QTLIBC_API QGraphicsLinearLayout* QGraphicsLinearLayout_new2(int orientation);
QTLIBC_API QGraphicsLinearLayout* QGraphicsLinearLayout_new3(QGraphicsLayoutItem* parent);
QTLIBC_API QGraphicsLinearLayout* QGraphicsLinearLayout_new4(int orientation, QGraphicsLayoutItem* parent);
QTLIBC_API void QGraphicsLinearLayout_SetOrientation(QGraphicsLinearLayout* self, int orientation);
QTLIBC_API int QGraphicsLinearLayout_Orientation(const QGraphicsLinearLayout* self);
QTLIBC_API void QGraphicsLinearLayout_AddItem(QGraphicsLinearLayout* self, QGraphicsLayoutItem* item);
QTLIBC_API void QGraphicsLinearLayout_AddStretch(QGraphicsLinearLayout* self);
QTLIBC_API void QGraphicsLinearLayout_InsertItem(QGraphicsLinearLayout* self, int index, QGraphicsLayoutItem* item);
QTLIBC_API void QGraphicsLinearLayout_InsertStretch(QGraphicsLinearLayout* self, int index);
QTLIBC_API void QGraphicsLinearLayout_RemoveItem(QGraphicsLinearLayout* self, QGraphicsLayoutItem* item);
QTLIBC_API void QGraphicsLinearLayout_RemoveAt(QGraphicsLinearLayout* self, int index);
QTLIBC_API void QGraphicsLinearLayout_OnRemoveAt(QGraphicsLinearLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLinearLayout_QBaseRemoveAt(QGraphicsLinearLayout* self, int index);
QTLIBC_API void QGraphicsLinearLayout_SetSpacing(QGraphicsLinearLayout* self, double spacing);
QTLIBC_API double QGraphicsLinearLayout_Spacing(const QGraphicsLinearLayout* self);
QTLIBC_API void QGraphicsLinearLayout_SetItemSpacing(QGraphicsLinearLayout* self, int index, double spacing);
QTLIBC_API double QGraphicsLinearLayout_ItemSpacing(const QGraphicsLinearLayout* self, int index);
QTLIBC_API void QGraphicsLinearLayout_SetStretchFactor(QGraphicsLinearLayout* self, QGraphicsLayoutItem* item, int stretch);
QTLIBC_API int QGraphicsLinearLayout_StretchFactor(const QGraphicsLinearLayout* self, QGraphicsLayoutItem* item);
QTLIBC_API void QGraphicsLinearLayout_SetAlignment(QGraphicsLinearLayout* self, QGraphicsLayoutItem* item, int alignment);
QTLIBC_API int QGraphicsLinearLayout_Alignment(const QGraphicsLinearLayout* self, QGraphicsLayoutItem* item);
QTLIBC_API void QGraphicsLinearLayout_SetGeometry(QGraphicsLinearLayout* self, QRectF* rect);
QTLIBC_API void QGraphicsLinearLayout_OnSetGeometry(QGraphicsLinearLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLinearLayout_QBaseSetGeometry(QGraphicsLinearLayout* self, QRectF* rect);
QTLIBC_API int QGraphicsLinearLayout_Count(const QGraphicsLinearLayout* self);
QTLIBC_API void QGraphicsLinearLayout_OnCount(const QGraphicsLinearLayout* self, intptr_t slot);
QTLIBC_API int QGraphicsLinearLayout_QBaseCount(const QGraphicsLinearLayout* self);
QTLIBC_API QGraphicsLayoutItem* QGraphicsLinearLayout_ItemAt(const QGraphicsLinearLayout* self, int index);
QTLIBC_API void QGraphicsLinearLayout_OnItemAt(const QGraphicsLinearLayout* self, intptr_t slot);
QTLIBC_API QGraphicsLayoutItem* QGraphicsLinearLayout_QBaseItemAt(const QGraphicsLinearLayout* self, int index);
QTLIBC_API void QGraphicsLinearLayout_Invalidate(QGraphicsLinearLayout* self);
QTLIBC_API void QGraphicsLinearLayout_OnInvalidate(QGraphicsLinearLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLinearLayout_QBaseInvalidate(QGraphicsLinearLayout* self);
QTLIBC_API QSizeF* QGraphicsLinearLayout_SizeHint(const QGraphicsLinearLayout* self, int which, QSizeF* constraint);
QTLIBC_API void QGraphicsLinearLayout_OnSizeHint(const QGraphicsLinearLayout* self, intptr_t slot);
QTLIBC_API QSizeF* QGraphicsLinearLayout_QBaseSizeHint(const QGraphicsLinearLayout* self, int which, QSizeF* constraint);
QTLIBC_API void QGraphicsLinearLayout_Dump(const QGraphicsLinearLayout* self);
QTLIBC_API void QGraphicsLinearLayout_AddStretch1(QGraphicsLinearLayout* self, int stretch);
QTLIBC_API void QGraphicsLinearLayout_InsertStretch2(QGraphicsLinearLayout* self, int index, int stretch);
QTLIBC_API void QGraphicsLinearLayout_Dump1(const QGraphicsLinearLayout* self, int indent);
QTLIBC_API void QGraphicsLinearLayout_GetContentsMargins(const QGraphicsLinearLayout* self, double* left, double* top, double* right, double* bottom);
QTLIBC_API void QGraphicsLinearLayout_OnGetContentsMargins(const QGraphicsLinearLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLinearLayout_QBaseGetContentsMargins(const QGraphicsLinearLayout* self, double* left, double* top, double* right, double* bottom);
QTLIBC_API void QGraphicsLinearLayout_UpdateGeometry(QGraphicsLinearLayout* self);
QTLIBC_API void QGraphicsLinearLayout_OnUpdateGeometry(QGraphicsLinearLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLinearLayout_QBaseUpdateGeometry(QGraphicsLinearLayout* self);
QTLIBC_API void QGraphicsLinearLayout_WidgetEvent(QGraphicsLinearLayout* self, QEvent* e);
QTLIBC_API void QGraphicsLinearLayout_OnWidgetEvent(QGraphicsLinearLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLinearLayout_QBaseWidgetEvent(QGraphicsLinearLayout* self, QEvent* e);
QTLIBC_API bool QGraphicsLinearLayout_IsEmpty(const QGraphicsLinearLayout* self);
QTLIBC_API void QGraphicsLinearLayout_OnIsEmpty(const QGraphicsLinearLayout* self, intptr_t slot);
QTLIBC_API bool QGraphicsLinearLayout_QBaseIsEmpty(const QGraphicsLinearLayout* self);
QTLIBC_API void QGraphicsLinearLayout_AddChildLayoutItem(QGraphicsLinearLayout* self, QGraphicsLayoutItem* layoutItem);
QTLIBC_API void QGraphicsLinearLayout_OnAddChildLayoutItem(QGraphicsLinearLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLinearLayout_QBaseAddChildLayoutItem(QGraphicsLinearLayout* self, QGraphicsLayoutItem* layoutItem);
QTLIBC_API void QGraphicsLinearLayout_SetGraphicsItem(QGraphicsLinearLayout* self, QGraphicsItem* item);
QTLIBC_API void QGraphicsLinearLayout_OnSetGraphicsItem(QGraphicsLinearLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLinearLayout_QBaseSetGraphicsItem(QGraphicsLinearLayout* self, QGraphicsItem* item);
QTLIBC_API void QGraphicsLinearLayout_SetOwnedByLayout(QGraphicsLinearLayout* self, bool ownedByLayout);
QTLIBC_API void QGraphicsLinearLayout_OnSetOwnedByLayout(QGraphicsLinearLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsLinearLayout_QBaseSetOwnedByLayout(QGraphicsLinearLayout* self, bool ownedByLayout);
QTLIBC_API void QGraphicsLinearLayout_Delete(QGraphicsLinearLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
