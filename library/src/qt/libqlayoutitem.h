#pragma once
#ifndef SRC_QTC_LIBQLAYOUTITEM_H
#define SRC_QTC_LIBQLAYOUTITEM_H

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
typedef struct QLayout QLayout;
typedef struct QLayoutItem QLayoutItem;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QSizePolicy QSizePolicy;
typedef struct QSpacerItem QSpacerItem;
typedef struct QWidget QWidget;
typedef struct QWidgetItem QWidgetItem;
typedef struct QWidgetItemV2 QWidgetItemV2;
#endif

QTLIBC_API QLayoutItem* QLayoutItem_new();
QTLIBC_API QLayoutItem* QLayoutItem_new2(QLayoutItem* param1);
QTLIBC_API QLayoutItem* QLayoutItem_new3(int alignment);
QTLIBC_API QSize* QLayoutItem_SizeHint(const QLayoutItem* self);
QTLIBC_API void QLayoutItem_OnSizeHint(const QLayoutItem* self, intptr_t slot);
QTLIBC_API QSize* QLayoutItem_QBaseSizeHint(const QLayoutItem* self);
QTLIBC_API QSize* QLayoutItem_MinimumSize(const QLayoutItem* self);
QTLIBC_API void QLayoutItem_OnMinimumSize(const QLayoutItem* self, intptr_t slot);
QTLIBC_API QSize* QLayoutItem_QBaseMinimumSize(const QLayoutItem* self);
QTLIBC_API QSize* QLayoutItem_MaximumSize(const QLayoutItem* self);
QTLIBC_API void QLayoutItem_OnMaximumSize(const QLayoutItem* self, intptr_t slot);
QTLIBC_API QSize* QLayoutItem_QBaseMaximumSize(const QLayoutItem* self);
QTLIBC_API int QLayoutItem_ExpandingDirections(const QLayoutItem* self);
QTLIBC_API void QLayoutItem_OnExpandingDirections(const QLayoutItem* self, intptr_t slot);
QTLIBC_API int QLayoutItem_QBaseExpandingDirections(const QLayoutItem* self);
QTLIBC_API void QLayoutItem_SetGeometry(QLayoutItem* self, QRect* geometry);
QTLIBC_API void QLayoutItem_OnSetGeometry(QLayoutItem* self, intptr_t slot);
QTLIBC_API void QLayoutItem_QBaseSetGeometry(QLayoutItem* self, QRect* geometry);
QTLIBC_API QRect* QLayoutItem_Geometry(const QLayoutItem* self);
QTLIBC_API void QLayoutItem_OnGeometry(const QLayoutItem* self, intptr_t slot);
QTLIBC_API QRect* QLayoutItem_QBaseGeometry(const QLayoutItem* self);
QTLIBC_API bool QLayoutItem_IsEmpty(const QLayoutItem* self);
QTLIBC_API void QLayoutItem_OnIsEmpty(const QLayoutItem* self, intptr_t slot);
QTLIBC_API bool QLayoutItem_QBaseIsEmpty(const QLayoutItem* self);
QTLIBC_API bool QLayoutItem_HasHeightForWidth(const QLayoutItem* self);
QTLIBC_API void QLayoutItem_OnHasHeightForWidth(const QLayoutItem* self, intptr_t slot);
QTLIBC_API bool QLayoutItem_QBaseHasHeightForWidth(const QLayoutItem* self);
QTLIBC_API int QLayoutItem_HeightForWidth(const QLayoutItem* self, int param1);
QTLIBC_API void QLayoutItem_OnHeightForWidth(const QLayoutItem* self, intptr_t slot);
QTLIBC_API int QLayoutItem_QBaseHeightForWidth(const QLayoutItem* self, int param1);
QTLIBC_API int QLayoutItem_MinimumHeightForWidth(const QLayoutItem* self, int param1);
QTLIBC_API void QLayoutItem_OnMinimumHeightForWidth(const QLayoutItem* self, intptr_t slot);
QTLIBC_API int QLayoutItem_QBaseMinimumHeightForWidth(const QLayoutItem* self, int param1);
QTLIBC_API void QLayoutItem_Invalidate(QLayoutItem* self);
QTLIBC_API void QLayoutItem_OnInvalidate(QLayoutItem* self, intptr_t slot);
QTLIBC_API void QLayoutItem_QBaseInvalidate(QLayoutItem* self);
QTLIBC_API QWidget* QLayoutItem_Widget(const QLayoutItem* self);
QTLIBC_API void QLayoutItem_OnWidget(const QLayoutItem* self, intptr_t slot);
QTLIBC_API QWidget* QLayoutItem_QBaseWidget(const QLayoutItem* self);
QTLIBC_API QLayout* QLayoutItem_Layout(QLayoutItem* self);
QTLIBC_API void QLayoutItem_OnLayout(QLayoutItem* self, intptr_t slot);
QTLIBC_API QLayout* QLayoutItem_QBaseLayout(QLayoutItem* self);
QTLIBC_API QSpacerItem* QLayoutItem_SpacerItem(QLayoutItem* self);
QTLIBC_API void QLayoutItem_OnSpacerItem(QLayoutItem* self, intptr_t slot);
QTLIBC_API QSpacerItem* QLayoutItem_QBaseSpacerItem(QLayoutItem* self);
QTLIBC_API int QLayoutItem_Alignment(const QLayoutItem* self);
QTLIBC_API void QLayoutItem_SetAlignment(QLayoutItem* self, int a);
QTLIBC_API int QLayoutItem_ControlTypes(const QLayoutItem* self);
QTLIBC_API void QLayoutItem_OnControlTypes(const QLayoutItem* self, intptr_t slot);
QTLIBC_API int QLayoutItem_QBaseControlTypes(const QLayoutItem* self);
QTLIBC_API void QLayoutItem_OperatorAssign(QLayoutItem* self, QLayoutItem* param1);
QTLIBC_API void QLayoutItem_OnOperatorAssign(QLayoutItem* self, intptr_t slot);
QTLIBC_API void QLayoutItem_QBaseOperatorAssign(QLayoutItem* self, QLayoutItem* param1);
QTLIBC_API void QLayoutItem_Delete(QLayoutItem* self);

QTLIBC_API QSpacerItem* QSpacerItem_new(int w, int h);
QTLIBC_API QSpacerItem* QSpacerItem_new2(QSpacerItem* param1);
QTLIBC_API QSpacerItem* QSpacerItem_new3(int w, int h, int hData);
QTLIBC_API QSpacerItem* QSpacerItem_new4(int w, int h, int hData, int vData);
QTLIBC_API void QSpacerItem_ChangeSize(QSpacerItem* self, int w, int h);
QTLIBC_API QSize* QSpacerItem_SizeHint(const QSpacerItem* self);
QTLIBC_API void QSpacerItem_OnSizeHint(const QSpacerItem* self, intptr_t slot);
QTLIBC_API QSize* QSpacerItem_QBaseSizeHint(const QSpacerItem* self);
QTLIBC_API QSize* QSpacerItem_MinimumSize(const QSpacerItem* self);
QTLIBC_API void QSpacerItem_OnMinimumSize(const QSpacerItem* self, intptr_t slot);
QTLIBC_API QSize* QSpacerItem_QBaseMinimumSize(const QSpacerItem* self);
QTLIBC_API QSize* QSpacerItem_MaximumSize(const QSpacerItem* self);
QTLIBC_API void QSpacerItem_OnMaximumSize(const QSpacerItem* self, intptr_t slot);
QTLIBC_API QSize* QSpacerItem_QBaseMaximumSize(const QSpacerItem* self);
QTLIBC_API int QSpacerItem_ExpandingDirections(const QSpacerItem* self);
QTLIBC_API void QSpacerItem_OnExpandingDirections(const QSpacerItem* self, intptr_t slot);
QTLIBC_API int QSpacerItem_QBaseExpandingDirections(const QSpacerItem* self);
QTLIBC_API bool QSpacerItem_IsEmpty(const QSpacerItem* self);
QTLIBC_API void QSpacerItem_OnIsEmpty(const QSpacerItem* self, intptr_t slot);
QTLIBC_API bool QSpacerItem_QBaseIsEmpty(const QSpacerItem* self);
QTLIBC_API void QSpacerItem_SetGeometry(QSpacerItem* self, QRect* geometry);
QTLIBC_API void QSpacerItem_OnSetGeometry(QSpacerItem* self, intptr_t slot);
QTLIBC_API void QSpacerItem_QBaseSetGeometry(QSpacerItem* self, QRect* geometry);
QTLIBC_API QRect* QSpacerItem_Geometry(const QSpacerItem* self);
QTLIBC_API void QSpacerItem_OnGeometry(const QSpacerItem* self, intptr_t slot);
QTLIBC_API QRect* QSpacerItem_QBaseGeometry(const QSpacerItem* self);
QTLIBC_API QSpacerItem* QSpacerItem_SpacerItem(QSpacerItem* self);
QTLIBC_API void QSpacerItem_OnSpacerItem(QSpacerItem* self, intptr_t slot);
QTLIBC_API QSpacerItem* QSpacerItem_QBaseSpacerItem(QSpacerItem* self);
QTLIBC_API QSizePolicy* QSpacerItem_SizePolicy(const QSpacerItem* self);
QTLIBC_API void QSpacerItem_ChangeSize3(QSpacerItem* self, int w, int h, int hData);
QTLIBC_API void QSpacerItem_ChangeSize4(QSpacerItem* self, int w, int h, int hData, int vData);
QTLIBC_API bool QSpacerItem_HasHeightForWidth(const QSpacerItem* self);
QTLIBC_API void QSpacerItem_OnHasHeightForWidth(const QSpacerItem* self, intptr_t slot);
QTLIBC_API bool QSpacerItem_QBaseHasHeightForWidth(const QSpacerItem* self);
QTLIBC_API int QSpacerItem_HeightForWidth(const QSpacerItem* self, int param1);
QTLIBC_API void QSpacerItem_OnHeightForWidth(const QSpacerItem* self, intptr_t slot);
QTLIBC_API int QSpacerItem_QBaseHeightForWidth(const QSpacerItem* self, int param1);
QTLIBC_API int QSpacerItem_MinimumHeightForWidth(const QSpacerItem* self, int param1);
QTLIBC_API void QSpacerItem_OnMinimumHeightForWidth(const QSpacerItem* self, intptr_t slot);
QTLIBC_API int QSpacerItem_QBaseMinimumHeightForWidth(const QSpacerItem* self, int param1);
QTLIBC_API void QSpacerItem_Invalidate(QSpacerItem* self);
QTLIBC_API void QSpacerItem_OnInvalidate(QSpacerItem* self, intptr_t slot);
QTLIBC_API void QSpacerItem_QBaseInvalidate(QSpacerItem* self);
QTLIBC_API QWidget* QSpacerItem_Widget(const QSpacerItem* self);
QTLIBC_API void QSpacerItem_OnWidget(const QSpacerItem* self, intptr_t slot);
QTLIBC_API QWidget* QSpacerItem_QBaseWidget(const QSpacerItem* self);
QTLIBC_API QLayout* QSpacerItem_Layout(QSpacerItem* self);
QTLIBC_API void QSpacerItem_OnLayout(QSpacerItem* self, intptr_t slot);
QTLIBC_API QLayout* QSpacerItem_QBaseLayout(QSpacerItem* self);
QTLIBC_API int QSpacerItem_ControlTypes(const QSpacerItem* self);
QTLIBC_API void QSpacerItem_OnControlTypes(const QSpacerItem* self, intptr_t slot);
QTLIBC_API int QSpacerItem_QBaseControlTypes(const QSpacerItem* self);
QTLIBC_API void QSpacerItem_Delete(QSpacerItem* self);

QTLIBC_API QWidgetItem* QWidgetItem_new(QWidget* w);
QTLIBC_API QSize* QWidgetItem_SizeHint(const QWidgetItem* self);
QTLIBC_API void QWidgetItem_OnSizeHint(const QWidgetItem* self, intptr_t slot);
QTLIBC_API QSize* QWidgetItem_QBaseSizeHint(const QWidgetItem* self);
QTLIBC_API QSize* QWidgetItem_MinimumSize(const QWidgetItem* self);
QTLIBC_API void QWidgetItem_OnMinimumSize(const QWidgetItem* self, intptr_t slot);
QTLIBC_API QSize* QWidgetItem_QBaseMinimumSize(const QWidgetItem* self);
QTLIBC_API QSize* QWidgetItem_MaximumSize(const QWidgetItem* self);
QTLIBC_API void QWidgetItem_OnMaximumSize(const QWidgetItem* self, intptr_t slot);
QTLIBC_API QSize* QWidgetItem_QBaseMaximumSize(const QWidgetItem* self);
QTLIBC_API int QWidgetItem_ExpandingDirections(const QWidgetItem* self);
QTLIBC_API void QWidgetItem_OnExpandingDirections(const QWidgetItem* self, intptr_t slot);
QTLIBC_API int QWidgetItem_QBaseExpandingDirections(const QWidgetItem* self);
QTLIBC_API bool QWidgetItem_IsEmpty(const QWidgetItem* self);
QTLIBC_API void QWidgetItem_OnIsEmpty(const QWidgetItem* self, intptr_t slot);
QTLIBC_API bool QWidgetItem_QBaseIsEmpty(const QWidgetItem* self);
QTLIBC_API void QWidgetItem_SetGeometry(QWidgetItem* self, QRect* geometry);
QTLIBC_API void QWidgetItem_OnSetGeometry(QWidgetItem* self, intptr_t slot);
QTLIBC_API void QWidgetItem_QBaseSetGeometry(QWidgetItem* self, QRect* geometry);
QTLIBC_API QRect* QWidgetItem_Geometry(const QWidgetItem* self);
QTLIBC_API void QWidgetItem_OnGeometry(const QWidgetItem* self, intptr_t slot);
QTLIBC_API QRect* QWidgetItem_QBaseGeometry(const QWidgetItem* self);
QTLIBC_API QWidget* QWidgetItem_Widget(const QWidgetItem* self);
QTLIBC_API void QWidgetItem_OnWidget(const QWidgetItem* self, intptr_t slot);
QTLIBC_API QWidget* QWidgetItem_QBaseWidget(const QWidgetItem* self);
QTLIBC_API bool QWidgetItem_HasHeightForWidth(const QWidgetItem* self);
QTLIBC_API void QWidgetItem_OnHasHeightForWidth(const QWidgetItem* self, intptr_t slot);
QTLIBC_API bool QWidgetItem_QBaseHasHeightForWidth(const QWidgetItem* self);
QTLIBC_API int QWidgetItem_HeightForWidth(const QWidgetItem* self, int param1);
QTLIBC_API void QWidgetItem_OnHeightForWidth(const QWidgetItem* self, intptr_t slot);
QTLIBC_API int QWidgetItem_QBaseHeightForWidth(const QWidgetItem* self, int param1);
QTLIBC_API int QWidgetItem_MinimumHeightForWidth(const QWidgetItem* self, int param1);
QTLIBC_API void QWidgetItem_OnMinimumHeightForWidth(const QWidgetItem* self, intptr_t slot);
QTLIBC_API int QWidgetItem_QBaseMinimumHeightForWidth(const QWidgetItem* self, int param1);
QTLIBC_API int QWidgetItem_ControlTypes(const QWidgetItem* self);
QTLIBC_API void QWidgetItem_OnControlTypes(const QWidgetItem* self, intptr_t slot);
QTLIBC_API int QWidgetItem_QBaseControlTypes(const QWidgetItem* self);
QTLIBC_API void QWidgetItem_Invalidate(QWidgetItem* self);
QTLIBC_API void QWidgetItem_OnInvalidate(QWidgetItem* self, intptr_t slot);
QTLIBC_API void QWidgetItem_QBaseInvalidate(QWidgetItem* self);
QTLIBC_API QLayout* QWidgetItem_Layout(QWidgetItem* self);
QTLIBC_API void QWidgetItem_OnLayout(QWidgetItem* self, intptr_t slot);
QTLIBC_API QLayout* QWidgetItem_QBaseLayout(QWidgetItem* self);
QTLIBC_API QSpacerItem* QWidgetItem_SpacerItem(QWidgetItem* self);
QTLIBC_API void QWidgetItem_OnSpacerItem(QWidgetItem* self, intptr_t slot);
QTLIBC_API QSpacerItem* QWidgetItem_QBaseSpacerItem(QWidgetItem* self);
QTLIBC_API void QWidgetItem_Delete(QWidgetItem* self);

QTLIBC_API QWidgetItemV2* QWidgetItemV2_new(QWidget* widget);
QTLIBC_API QSize* QWidgetItemV2_SizeHint(const QWidgetItemV2* self);
QTLIBC_API void QWidgetItemV2_OnSizeHint(const QWidgetItemV2* self, intptr_t slot);
QTLIBC_API QSize* QWidgetItemV2_QBaseSizeHint(const QWidgetItemV2* self);
QTLIBC_API QSize* QWidgetItemV2_MinimumSize(const QWidgetItemV2* self);
QTLIBC_API void QWidgetItemV2_OnMinimumSize(const QWidgetItemV2* self, intptr_t slot);
QTLIBC_API QSize* QWidgetItemV2_QBaseMinimumSize(const QWidgetItemV2* self);
QTLIBC_API QSize* QWidgetItemV2_MaximumSize(const QWidgetItemV2* self);
QTLIBC_API void QWidgetItemV2_OnMaximumSize(const QWidgetItemV2* self, intptr_t slot);
QTLIBC_API QSize* QWidgetItemV2_QBaseMaximumSize(const QWidgetItemV2* self);
QTLIBC_API int QWidgetItemV2_HeightForWidth(const QWidgetItemV2* self, int width);
QTLIBC_API void QWidgetItemV2_OnHeightForWidth(const QWidgetItemV2* self, intptr_t slot);
QTLIBC_API int QWidgetItemV2_QBaseHeightForWidth(const QWidgetItemV2* self, int width);
QTLIBC_API int QWidgetItemV2_ExpandingDirections(const QWidgetItemV2* self);
QTLIBC_API void QWidgetItemV2_OnExpandingDirections(const QWidgetItemV2* self, intptr_t slot);
QTLIBC_API int QWidgetItemV2_QBaseExpandingDirections(const QWidgetItemV2* self);
QTLIBC_API bool QWidgetItemV2_IsEmpty(const QWidgetItemV2* self);
QTLIBC_API void QWidgetItemV2_OnIsEmpty(const QWidgetItemV2* self, intptr_t slot);
QTLIBC_API bool QWidgetItemV2_QBaseIsEmpty(const QWidgetItemV2* self);
QTLIBC_API void QWidgetItemV2_SetGeometry(QWidgetItemV2* self, QRect* geometry);
QTLIBC_API void QWidgetItemV2_OnSetGeometry(QWidgetItemV2* self, intptr_t slot);
QTLIBC_API void QWidgetItemV2_QBaseSetGeometry(QWidgetItemV2* self, QRect* geometry);
QTLIBC_API QRect* QWidgetItemV2_Geometry(const QWidgetItemV2* self);
QTLIBC_API void QWidgetItemV2_OnGeometry(const QWidgetItemV2* self, intptr_t slot);
QTLIBC_API QRect* QWidgetItemV2_QBaseGeometry(const QWidgetItemV2* self);
QTLIBC_API QWidget* QWidgetItemV2_Widget(const QWidgetItemV2* self);
QTLIBC_API void QWidgetItemV2_OnWidget(const QWidgetItemV2* self, intptr_t slot);
QTLIBC_API QWidget* QWidgetItemV2_QBaseWidget(const QWidgetItemV2* self);
QTLIBC_API bool QWidgetItemV2_HasHeightForWidth(const QWidgetItemV2* self);
QTLIBC_API void QWidgetItemV2_OnHasHeightForWidth(const QWidgetItemV2* self, intptr_t slot);
QTLIBC_API bool QWidgetItemV2_QBaseHasHeightForWidth(const QWidgetItemV2* self);
QTLIBC_API int QWidgetItemV2_MinimumHeightForWidth(const QWidgetItemV2* self, int param1);
QTLIBC_API void QWidgetItemV2_OnMinimumHeightForWidth(const QWidgetItemV2* self, intptr_t slot);
QTLIBC_API int QWidgetItemV2_QBaseMinimumHeightForWidth(const QWidgetItemV2* self, int param1);
QTLIBC_API int QWidgetItemV2_ControlTypes(const QWidgetItemV2* self);
QTLIBC_API void QWidgetItemV2_OnControlTypes(const QWidgetItemV2* self, intptr_t slot);
QTLIBC_API int QWidgetItemV2_QBaseControlTypes(const QWidgetItemV2* self);
QTLIBC_API void QWidgetItemV2_Invalidate(QWidgetItemV2* self);
QTLIBC_API void QWidgetItemV2_OnInvalidate(QWidgetItemV2* self, intptr_t slot);
QTLIBC_API void QWidgetItemV2_QBaseInvalidate(QWidgetItemV2* self);
QTLIBC_API QLayout* QWidgetItemV2_Layout(QWidgetItemV2* self);
QTLIBC_API void QWidgetItemV2_OnLayout(QWidgetItemV2* self, intptr_t slot);
QTLIBC_API QLayout* QWidgetItemV2_QBaseLayout(QWidgetItemV2* self);
QTLIBC_API QSpacerItem* QWidgetItemV2_SpacerItem(QWidgetItemV2* self);
QTLIBC_API void QWidgetItemV2_OnSpacerItem(QWidgetItemV2* self, intptr_t slot);
QTLIBC_API QSpacerItem* QWidgetItemV2_QBaseSpacerItem(QWidgetItemV2* self);
QTLIBC_API void QWidgetItemV2_Delete(QWidgetItemV2* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
