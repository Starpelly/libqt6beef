#pragma once
#ifndef SRC_QTC_LIBQGRAPHICSLAYOUTITEM_H
#define SRC_QTC_LIBQGRAPHICSLAYOUTITEM_H

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
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsLayoutItem QGraphicsLayoutItem;
typedef struct QRectF QRectF;
typedef struct QSizeF QSizeF;
typedef struct QSizePolicy QSizePolicy;
#endif

QTLIBC_API QGraphicsLayoutItem* QGraphicsLayoutItem_new();
QTLIBC_API QGraphicsLayoutItem* QGraphicsLayoutItem_new2(QGraphicsLayoutItem* parent);
QTLIBC_API QGraphicsLayoutItem* QGraphicsLayoutItem_new3(QGraphicsLayoutItem* parent, bool isLayout);
QTLIBC_API void QGraphicsLayoutItem_SetSizePolicy(QGraphicsLayoutItem* self, QSizePolicy* policy);
QTLIBC_API void QGraphicsLayoutItem_SetSizePolicy2(QGraphicsLayoutItem* self, int hPolicy, int vPolicy);
QTLIBC_API QSizePolicy* QGraphicsLayoutItem_SizePolicy(const QGraphicsLayoutItem* self);
QTLIBC_API void QGraphicsLayoutItem_SetMinimumSize(QGraphicsLayoutItem* self, QSizeF* size);
QTLIBC_API void QGraphicsLayoutItem_SetMinimumSize2(QGraphicsLayoutItem* self, double w, double h);
QTLIBC_API QSizeF* QGraphicsLayoutItem_MinimumSize(const QGraphicsLayoutItem* self);
QTLIBC_API void QGraphicsLayoutItem_SetMinimumWidth(QGraphicsLayoutItem* self, double width);
QTLIBC_API double QGraphicsLayoutItem_MinimumWidth(const QGraphicsLayoutItem* self);
QTLIBC_API void QGraphicsLayoutItem_SetMinimumHeight(QGraphicsLayoutItem* self, double height);
QTLIBC_API double QGraphicsLayoutItem_MinimumHeight(const QGraphicsLayoutItem* self);
QTLIBC_API void QGraphicsLayoutItem_SetPreferredSize(QGraphicsLayoutItem* self, QSizeF* size);
QTLIBC_API void QGraphicsLayoutItem_SetPreferredSize2(QGraphicsLayoutItem* self, double w, double h);
QTLIBC_API QSizeF* QGraphicsLayoutItem_PreferredSize(const QGraphicsLayoutItem* self);
QTLIBC_API void QGraphicsLayoutItem_SetPreferredWidth(QGraphicsLayoutItem* self, double width);
QTLIBC_API double QGraphicsLayoutItem_PreferredWidth(const QGraphicsLayoutItem* self);
QTLIBC_API void QGraphicsLayoutItem_SetPreferredHeight(QGraphicsLayoutItem* self, double height);
QTLIBC_API double QGraphicsLayoutItem_PreferredHeight(const QGraphicsLayoutItem* self);
QTLIBC_API void QGraphicsLayoutItem_SetMaximumSize(QGraphicsLayoutItem* self, QSizeF* size);
QTLIBC_API void QGraphicsLayoutItem_SetMaximumSize2(QGraphicsLayoutItem* self, double w, double h);
QTLIBC_API QSizeF* QGraphicsLayoutItem_MaximumSize(const QGraphicsLayoutItem* self);
QTLIBC_API void QGraphicsLayoutItem_SetMaximumWidth(QGraphicsLayoutItem* self, double width);
QTLIBC_API double QGraphicsLayoutItem_MaximumWidth(const QGraphicsLayoutItem* self);
QTLIBC_API void QGraphicsLayoutItem_SetMaximumHeight(QGraphicsLayoutItem* self, double height);
QTLIBC_API double QGraphicsLayoutItem_MaximumHeight(const QGraphicsLayoutItem* self);
QTLIBC_API void QGraphicsLayoutItem_SetGeometry(QGraphicsLayoutItem* self, QRectF* rect);
QTLIBC_API void QGraphicsLayoutItem_OnSetGeometry(QGraphicsLayoutItem* self, intptr_t slot);
QTLIBC_API void QGraphicsLayoutItem_QBaseSetGeometry(QGraphicsLayoutItem* self, QRectF* rect);
QTLIBC_API QRectF* QGraphicsLayoutItem_Geometry(const QGraphicsLayoutItem* self);
QTLIBC_API void QGraphicsLayoutItem_GetContentsMargins(const QGraphicsLayoutItem* self, double* left, double* top, double* right, double* bottom);
QTLIBC_API void QGraphicsLayoutItem_OnGetContentsMargins(const QGraphicsLayoutItem* self, intptr_t slot);
QTLIBC_API void QGraphicsLayoutItem_QBaseGetContentsMargins(const QGraphicsLayoutItem* self, double* left, double* top, double* right, double* bottom);
QTLIBC_API QRectF* QGraphicsLayoutItem_ContentsRect(const QGraphicsLayoutItem* self);
QTLIBC_API QSizeF* QGraphicsLayoutItem_EffectiveSizeHint(const QGraphicsLayoutItem* self, int which);
QTLIBC_API void QGraphicsLayoutItem_UpdateGeometry(QGraphicsLayoutItem* self);
QTLIBC_API void QGraphicsLayoutItem_OnUpdateGeometry(QGraphicsLayoutItem* self, intptr_t slot);
QTLIBC_API void QGraphicsLayoutItem_QBaseUpdateGeometry(QGraphicsLayoutItem* self);
QTLIBC_API bool QGraphicsLayoutItem_IsEmpty(const QGraphicsLayoutItem* self);
QTLIBC_API void QGraphicsLayoutItem_OnIsEmpty(const QGraphicsLayoutItem* self, intptr_t slot);
QTLIBC_API bool QGraphicsLayoutItem_QBaseIsEmpty(const QGraphicsLayoutItem* self);
QTLIBC_API QGraphicsLayoutItem* QGraphicsLayoutItem_ParentLayoutItem(const QGraphicsLayoutItem* self);
QTLIBC_API void QGraphicsLayoutItem_SetParentLayoutItem(QGraphicsLayoutItem* self, QGraphicsLayoutItem* parent);
QTLIBC_API bool QGraphicsLayoutItem_IsLayout(const QGraphicsLayoutItem* self);
QTLIBC_API QGraphicsItem* QGraphicsLayoutItem_GraphicsItem(const QGraphicsLayoutItem* self);
QTLIBC_API bool QGraphicsLayoutItem_OwnedByLayout(const QGraphicsLayoutItem* self);
QTLIBC_API QSizeF* QGraphicsLayoutItem_SizeHint(const QGraphicsLayoutItem* self, int which, QSizeF* constraint);
QTLIBC_API void QGraphicsLayoutItem_OnSizeHint(const QGraphicsLayoutItem* self, intptr_t slot);
QTLIBC_API QSizeF* QGraphicsLayoutItem_QBaseSizeHint(const QGraphicsLayoutItem* self, int which, QSizeF* constraint);
QTLIBC_API void QGraphicsLayoutItem_SetSizePolicy3(QGraphicsLayoutItem* self, int hPolicy, int vPolicy, int controlType);
QTLIBC_API QSizeF* QGraphicsLayoutItem_EffectiveSizeHint2(const QGraphicsLayoutItem* self, int which, QSizeF* constraint);
QTLIBC_API void QGraphicsLayoutItem_SetGraphicsItem(QGraphicsLayoutItem* self, QGraphicsItem* item);
QTLIBC_API void QGraphicsLayoutItem_OnSetGraphicsItem(QGraphicsLayoutItem* self, intptr_t slot);
QTLIBC_API void QGraphicsLayoutItem_QBaseSetGraphicsItem(QGraphicsLayoutItem* self, QGraphicsItem* item);
QTLIBC_API void QGraphicsLayoutItem_SetOwnedByLayout(QGraphicsLayoutItem* self, bool ownedByLayout);
QTLIBC_API void QGraphicsLayoutItem_OnSetOwnedByLayout(QGraphicsLayoutItem* self, intptr_t slot);
QTLIBC_API void QGraphicsLayoutItem_QBaseSetOwnedByLayout(QGraphicsLayoutItem* self, bool ownedByLayout);
QTLIBC_API void QGraphicsLayoutItem_Delete(QGraphicsLayoutItem* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
