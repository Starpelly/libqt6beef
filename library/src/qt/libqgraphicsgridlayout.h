#pragma once
#ifndef SRC_QTC_LIBQGRAPHICSGRIDLAYOUT_H
#define SRC_QTC_LIBQGRAPHICSGRIDLAYOUT_H

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
typedef struct QGraphicsGridLayout QGraphicsGridLayout;
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsLayout QGraphicsLayout;
typedef struct QGraphicsLayoutItem QGraphicsLayoutItem;
typedef struct QRectF QRectF;
typedef struct QSizeF QSizeF;
typedef struct QSizePolicy QSizePolicy;
#endif

QTLIBC_API QGraphicsGridLayout* QGraphicsGridLayout_new();
QTLIBC_API QGraphicsGridLayout* QGraphicsGridLayout_new2(QGraphicsLayoutItem* parent);
QTLIBC_API void QGraphicsGridLayout_AddItem(QGraphicsGridLayout* self, QGraphicsLayoutItem* item, int row, int column, int rowSpan, int columnSpan);
QTLIBC_API void QGraphicsGridLayout_AddItem2(QGraphicsGridLayout* self, QGraphicsLayoutItem* item, int row, int column);
QTLIBC_API void QGraphicsGridLayout_SetHorizontalSpacing(QGraphicsGridLayout* self, double spacing);
QTLIBC_API double QGraphicsGridLayout_HorizontalSpacing(const QGraphicsGridLayout* self);
QTLIBC_API void QGraphicsGridLayout_SetVerticalSpacing(QGraphicsGridLayout* self, double spacing);
QTLIBC_API double QGraphicsGridLayout_VerticalSpacing(const QGraphicsGridLayout* self);
QTLIBC_API void QGraphicsGridLayout_SetSpacing(QGraphicsGridLayout* self, double spacing);
QTLIBC_API void QGraphicsGridLayout_SetRowSpacing(QGraphicsGridLayout* self, int row, double spacing);
QTLIBC_API double QGraphicsGridLayout_RowSpacing(const QGraphicsGridLayout* self, int row);
QTLIBC_API void QGraphicsGridLayout_SetColumnSpacing(QGraphicsGridLayout* self, int column, double spacing);
QTLIBC_API double QGraphicsGridLayout_ColumnSpacing(const QGraphicsGridLayout* self, int column);
QTLIBC_API void QGraphicsGridLayout_SetRowStretchFactor(QGraphicsGridLayout* self, int row, int stretch);
QTLIBC_API int QGraphicsGridLayout_RowStretchFactor(const QGraphicsGridLayout* self, int row);
QTLIBC_API void QGraphicsGridLayout_SetColumnStretchFactor(QGraphicsGridLayout* self, int column, int stretch);
QTLIBC_API int QGraphicsGridLayout_ColumnStretchFactor(const QGraphicsGridLayout* self, int column);
QTLIBC_API void QGraphicsGridLayout_SetRowMinimumHeight(QGraphicsGridLayout* self, int row, double height);
QTLIBC_API double QGraphicsGridLayout_RowMinimumHeight(const QGraphicsGridLayout* self, int row);
QTLIBC_API void QGraphicsGridLayout_SetRowPreferredHeight(QGraphicsGridLayout* self, int row, double height);
QTLIBC_API double QGraphicsGridLayout_RowPreferredHeight(const QGraphicsGridLayout* self, int row);
QTLIBC_API void QGraphicsGridLayout_SetRowMaximumHeight(QGraphicsGridLayout* self, int row, double height);
QTLIBC_API double QGraphicsGridLayout_RowMaximumHeight(const QGraphicsGridLayout* self, int row);
QTLIBC_API void QGraphicsGridLayout_SetRowFixedHeight(QGraphicsGridLayout* self, int row, double height);
QTLIBC_API void QGraphicsGridLayout_SetColumnMinimumWidth(QGraphicsGridLayout* self, int column, double width);
QTLIBC_API double QGraphicsGridLayout_ColumnMinimumWidth(const QGraphicsGridLayout* self, int column);
QTLIBC_API void QGraphicsGridLayout_SetColumnPreferredWidth(QGraphicsGridLayout* self, int column, double width);
QTLIBC_API double QGraphicsGridLayout_ColumnPreferredWidth(const QGraphicsGridLayout* self, int column);
QTLIBC_API void QGraphicsGridLayout_SetColumnMaximumWidth(QGraphicsGridLayout* self, int column, double width);
QTLIBC_API double QGraphicsGridLayout_ColumnMaximumWidth(const QGraphicsGridLayout* self, int column);
QTLIBC_API void QGraphicsGridLayout_SetColumnFixedWidth(QGraphicsGridLayout* self, int column, double width);
QTLIBC_API void QGraphicsGridLayout_SetRowAlignment(QGraphicsGridLayout* self, int row, int alignment);
QTLIBC_API int QGraphicsGridLayout_RowAlignment(const QGraphicsGridLayout* self, int row);
QTLIBC_API void QGraphicsGridLayout_SetColumnAlignment(QGraphicsGridLayout* self, int column, int alignment);
QTLIBC_API int QGraphicsGridLayout_ColumnAlignment(const QGraphicsGridLayout* self, int column);
QTLIBC_API void QGraphicsGridLayout_SetAlignment(QGraphicsGridLayout* self, QGraphicsLayoutItem* item, int alignment);
QTLIBC_API int QGraphicsGridLayout_Alignment(const QGraphicsGridLayout* self, QGraphicsLayoutItem* item);
QTLIBC_API int QGraphicsGridLayout_RowCount(const QGraphicsGridLayout* self);
QTLIBC_API int QGraphicsGridLayout_ColumnCount(const QGraphicsGridLayout* self);
QTLIBC_API QGraphicsLayoutItem* QGraphicsGridLayout_ItemAt(const QGraphicsGridLayout* self, int row, int column);
QTLIBC_API int QGraphicsGridLayout_Count(const QGraphicsGridLayout* self);
QTLIBC_API void QGraphicsGridLayout_OnCount(const QGraphicsGridLayout* self, intptr_t slot);
QTLIBC_API int QGraphicsGridLayout_QBaseCount(const QGraphicsGridLayout* self);
QTLIBC_API QGraphicsLayoutItem* QGraphicsGridLayout_ItemAtWithIndex(const QGraphicsGridLayout* self, int index);
QTLIBC_API void QGraphicsGridLayout_OnItemAtWithIndex(const QGraphicsGridLayout* self, intptr_t slot);
QTLIBC_API QGraphicsLayoutItem* QGraphicsGridLayout_QBaseItemAtWithIndex(const QGraphicsGridLayout* self, int index);
QTLIBC_API void QGraphicsGridLayout_RemoveAt(QGraphicsGridLayout* self, int index);
QTLIBC_API void QGraphicsGridLayout_OnRemoveAt(QGraphicsGridLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsGridLayout_QBaseRemoveAt(QGraphicsGridLayout* self, int index);
QTLIBC_API void QGraphicsGridLayout_RemoveItem(QGraphicsGridLayout* self, QGraphicsLayoutItem* item);
QTLIBC_API void QGraphicsGridLayout_Invalidate(QGraphicsGridLayout* self);
QTLIBC_API void QGraphicsGridLayout_OnInvalidate(QGraphicsGridLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsGridLayout_QBaseInvalidate(QGraphicsGridLayout* self);
QTLIBC_API void QGraphicsGridLayout_SetGeometry(QGraphicsGridLayout* self, QRectF* rect);
QTLIBC_API void QGraphicsGridLayout_OnSetGeometry(QGraphicsGridLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsGridLayout_QBaseSetGeometry(QGraphicsGridLayout* self, QRectF* rect);
QTLIBC_API QSizeF* QGraphicsGridLayout_SizeHint(const QGraphicsGridLayout* self, int which, QSizeF* constraint);
QTLIBC_API void QGraphicsGridLayout_OnSizeHint(const QGraphicsGridLayout* self, intptr_t slot);
QTLIBC_API QSizeF* QGraphicsGridLayout_QBaseSizeHint(const QGraphicsGridLayout* self, int which, QSizeF* constraint);
QTLIBC_API void QGraphicsGridLayout_AddItem6(QGraphicsGridLayout* self, QGraphicsLayoutItem* item, int row, int column, int rowSpan, int columnSpan, int alignment);
QTLIBC_API void QGraphicsGridLayout_AddItem4(QGraphicsGridLayout* self, QGraphicsLayoutItem* item, int row, int column, int alignment);
QTLIBC_API void QGraphicsGridLayout_GetContentsMargins(const QGraphicsGridLayout* self, double* left, double* top, double* right, double* bottom);
QTLIBC_API void QGraphicsGridLayout_OnGetContentsMargins(const QGraphicsGridLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsGridLayout_QBaseGetContentsMargins(const QGraphicsGridLayout* self, double* left, double* top, double* right, double* bottom);
QTLIBC_API void QGraphicsGridLayout_UpdateGeometry(QGraphicsGridLayout* self);
QTLIBC_API void QGraphicsGridLayout_OnUpdateGeometry(QGraphicsGridLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsGridLayout_QBaseUpdateGeometry(QGraphicsGridLayout* self);
QTLIBC_API void QGraphicsGridLayout_WidgetEvent(QGraphicsGridLayout* self, QEvent* e);
QTLIBC_API void QGraphicsGridLayout_OnWidgetEvent(QGraphicsGridLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsGridLayout_QBaseWidgetEvent(QGraphicsGridLayout* self, QEvent* e);
QTLIBC_API bool QGraphicsGridLayout_IsEmpty(const QGraphicsGridLayout* self);
QTLIBC_API void QGraphicsGridLayout_OnIsEmpty(const QGraphicsGridLayout* self, intptr_t slot);
QTLIBC_API bool QGraphicsGridLayout_QBaseIsEmpty(const QGraphicsGridLayout* self);
QTLIBC_API void QGraphicsGridLayout_AddChildLayoutItem(QGraphicsGridLayout* self, QGraphicsLayoutItem* layoutItem);
QTLIBC_API void QGraphicsGridLayout_OnAddChildLayoutItem(QGraphicsGridLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsGridLayout_QBaseAddChildLayoutItem(QGraphicsGridLayout* self, QGraphicsLayoutItem* layoutItem);
QTLIBC_API void QGraphicsGridLayout_SetGraphicsItem(QGraphicsGridLayout* self, QGraphicsItem* item);
QTLIBC_API void QGraphicsGridLayout_OnSetGraphicsItem(QGraphicsGridLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsGridLayout_QBaseSetGraphicsItem(QGraphicsGridLayout* self, QGraphicsItem* item);
QTLIBC_API void QGraphicsGridLayout_SetOwnedByLayout(QGraphicsGridLayout* self, bool ownedByLayout);
QTLIBC_API void QGraphicsGridLayout_OnSetOwnedByLayout(QGraphicsGridLayout* self, intptr_t slot);
QTLIBC_API void QGraphicsGridLayout_QBaseSetOwnedByLayout(QGraphicsGridLayout* self, bool ownedByLayout);
QTLIBC_API void QGraphicsGridLayout_Delete(QGraphicsGridLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
