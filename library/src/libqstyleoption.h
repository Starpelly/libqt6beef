#pragma once
#ifndef SRCC_LIBQSTYLEOPTION_H
#define SRCC_LIBQSTYLEOPTION_H

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
typedef struct QStyleHintReturn QStyleHintReturn;
typedef struct QStyleHintReturnMask QStyleHintReturnMask;
typedef struct QStyleHintReturnVariant QStyleHintReturnVariant;
typedef struct QStyleOption QStyleOption;
typedef struct QStyleOptionButton QStyleOptionButton;
typedef struct QStyleOptionComboBox QStyleOptionComboBox;
typedef struct QStyleOptionComplex QStyleOptionComplex;
typedef struct QStyleOptionDockWidget QStyleOptionDockWidget;
typedef struct QStyleOptionFocusRect QStyleOptionFocusRect;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QStyleOptionGraphicsItem QStyleOptionGraphicsItem;
typedef struct QStyleOptionGroupBox QStyleOptionGroupBox;
typedef struct QStyleOptionHeader QStyleOptionHeader;
typedef struct QStyleOptionHeaderV2 QStyleOptionHeaderV2;
typedef struct QStyleOptionMenuItem QStyleOptionMenuItem;
typedef struct QStyleOptionProgressBar QStyleOptionProgressBar;
typedef struct QStyleOptionRubberBand QStyleOptionRubberBand;
typedef struct QStyleOptionSizeGrip QStyleOptionSizeGrip;
typedef struct QStyleOptionSlider QStyleOptionSlider;
typedef struct QStyleOptionSpinBox QStyleOptionSpinBox;
typedef struct QStyleOptionTab QStyleOptionTab;
typedef struct QStyleOptionTabBarBase QStyleOptionTabBarBase;
typedef struct QStyleOptionTabWidgetFrame QStyleOptionTabWidgetFrame;
typedef struct QStyleOptionTitleBar QStyleOptionTitleBar;
typedef struct QStyleOptionToolBar QStyleOptionToolBar;
typedef struct QStyleOptionToolBox QStyleOptionToolBox;
typedef struct QStyleOptionToolButton QStyleOptionToolButton;
typedef struct QStyleOptionViewItem QStyleOptionViewItem;
typedef struct QTransform QTransform;
typedef struct QWidget QWidget;
#endif

#ifdef __cplusplus
typedef QStyleHintReturn::HintReturnType HintReturnType;               // C++ enum
typedef QStyleOption::OptionType OptionType;                           // C++ enum
typedef QStyleOption::StyleOptionType StyleOptionType;                 // C++ enum
typedef QStyleOption::StyleOptionVersion StyleOptionVersion;           // C++ enum
typedef QStyleOptionButton::ButtonFeature ButtonFeature;               // C++ enum
typedef QStyleOptionButton::ButtonFeatures ButtonFeatures;             // C++ QFlags
typedef QStyleOptionFrame::FrameFeature FrameFeature;                  // C++ enum
typedef QStyleOptionFrame::FrameFeatures FrameFeatures;                // C++ QFlags
typedef QStyleOptionHeader::SectionPosition SectionPosition;           // C++ enum
typedef QStyleOptionHeader::SelectedPosition SelectedPosition;         // C++ enum
typedef QStyleOptionHeader::SortIndicator SortIndicator;               // C++ enum
typedef QStyleOptionMenuItem::CheckType CheckType;                     // C++ enum
typedef QStyleOptionMenuItem::MenuItemType MenuItemType;               // C++ enum
typedef QStyleOptionTab::CornerWidget CornerWidget;                    // C++ enum
typedef QStyleOptionTab::CornerWidgets CornerWidgets;                  // C++ QFlags
typedef QStyleOptionTab::TabFeature TabFeature;                        // C++ enum
typedef QStyleOptionTab::TabFeatures TabFeatures;                      // C++ QFlags
typedef QStyleOptionTab::TabPosition TabPosition;                      // C++ enum
typedef QStyleOptionToolBar::ToolBarFeature ToolBarFeature;            // C++ enum
typedef QStyleOptionToolBar::ToolBarFeatures ToolBarFeatures;          // C++ QFlags
typedef QStyleOptionToolBar::ToolBarPosition ToolBarPosition;          // C++ enum
typedef QStyleOptionToolButton::ToolButtonFeature ToolButtonFeature;   // C++ enum
typedef QStyleOptionToolButton::ToolButtonFeatures ToolButtonFeatures; // C++ QFlags
typedef QStyleOptionViewItem::Position Position;                       // C++ enum
typedef QStyleOptionViewItem::ViewItemFeature ViewItemFeature;         // C++ enum
typedef QStyleOptionViewItem::ViewItemFeatures ViewItemFeatures;       // C++ QFlags
typedef QStyleOptionViewItem::ViewItemPosition ViewItemPosition;       // C++ enum
#else
typedef int ButtonFeature;      // C ABI enum
typedef int ButtonFeatures;     // C ABI QFlags
typedef int CheckType;          // C ABI enum
typedef int CornerWidget;       // C ABI enum
typedef int CornerWidgets;      // C ABI QFlags
typedef int FrameFeature;       // C ABI enum
typedef int FrameFeatures;      // C ABI QFlags
typedef int HintReturnType;     // C ABI enum
typedef int MenuItemType;       // C ABI enum
typedef int OptionType;         // C ABI enum
typedef int Position;           // C ABI enum
typedef int SectionPosition;    // C ABI enum
typedef int SelectedPosition;   // C ABI enum
typedef int SortIndicator;      // C ABI enum
typedef int StyleOptionType;    // C ABI enum
typedef int StyleOptionVersion; // C ABI enum
typedef int TabFeature;         // C ABI enum
typedef int TabFeatures;        // C ABI QFlags
typedef int TabPosition;        // C ABI enum
typedef int ToolBarFeature;     // C ABI enum
typedef int ToolBarFeatures;    // C ABI QFlags
typedef int ToolBarPosition;    // C ABI enum
typedef int ToolButtonFeature;  // C ABI enum
typedef int ToolButtonFeatures; // C ABI QFlags
typedef int ViewItemFeature;    // C ABI enum
typedef int ViewItemFeatures;   // C ABI QFlags
typedef int ViewItemPosition;   // C ABI enum
#endif

QTLIBC_API QStyleOption* QStyleOption_new();
QTLIBC_API QStyleOption* QStyleOption_new2(QStyleOption* other);
QTLIBC_API QStyleOption* QStyleOption_new3(int version);
QTLIBC_API QStyleOption* QStyleOption_new4(int version, int typeVal);
QTLIBC_API void QStyleOption_InitFrom(QStyleOption* self, QWidget* w);
QTLIBC_API void QStyleOption_OperatorAssign(QStyleOption* self, QStyleOption* other);
QTLIBC_API void QStyleOption_Delete(QStyleOption* self);

QTLIBC_API QStyleOptionFocusRect* QStyleOptionFocusRect_new();
QTLIBC_API QStyleOptionFocusRect* QStyleOptionFocusRect_new2(QStyleOptionFocusRect* other);
QTLIBC_API void QStyleOptionFocusRect_Delete(QStyleOptionFocusRect* self);

QTLIBC_API QStyleOptionFrame* QStyleOptionFrame_new();
QTLIBC_API QStyleOptionFrame* QStyleOptionFrame_new2(QStyleOptionFrame* other);
QTLIBC_API void QStyleOptionFrame_Delete(QStyleOptionFrame* self);

QTLIBC_API QStyleOptionTabWidgetFrame* QStyleOptionTabWidgetFrame_new();
QTLIBC_API QStyleOptionTabWidgetFrame* QStyleOptionTabWidgetFrame_new2(QStyleOptionTabWidgetFrame* other);
QTLIBC_API void QStyleOptionTabWidgetFrame_Delete(QStyleOptionTabWidgetFrame* self);

QTLIBC_API QStyleOptionTabBarBase* QStyleOptionTabBarBase_new();
QTLIBC_API QStyleOptionTabBarBase* QStyleOptionTabBarBase_new2(QStyleOptionTabBarBase* other);
QTLIBC_API void QStyleOptionTabBarBase_Delete(QStyleOptionTabBarBase* self);

QTLIBC_API QStyleOptionHeader* QStyleOptionHeader_new();
QTLIBC_API QStyleOptionHeader* QStyleOptionHeader_new2(QStyleOptionHeader* other);
QTLIBC_API void QStyleOptionHeader_Delete(QStyleOptionHeader* self);

QTLIBC_API QStyleOptionHeaderV2* QStyleOptionHeaderV2_new();
QTLIBC_API QStyleOptionHeaderV2* QStyleOptionHeaderV2_new2(QStyleOptionHeaderV2* other);
QTLIBC_API void QStyleOptionHeaderV2_Delete(QStyleOptionHeaderV2* self);

QTLIBC_API QStyleOptionButton* QStyleOptionButton_new();
QTLIBC_API QStyleOptionButton* QStyleOptionButton_new2(QStyleOptionButton* other);
QTLIBC_API void QStyleOptionButton_Delete(QStyleOptionButton* self);

QTLIBC_API QStyleOptionTab* QStyleOptionTab_new();
QTLIBC_API QStyleOptionTab* QStyleOptionTab_new2(QStyleOptionTab* other);
QTLIBC_API void QStyleOptionTab_Delete(QStyleOptionTab* self);

QTLIBC_API QStyleOptionToolBar* QStyleOptionToolBar_new();
QTLIBC_API QStyleOptionToolBar* QStyleOptionToolBar_new2(QStyleOptionToolBar* other);
QTLIBC_API void QStyleOptionToolBar_Delete(QStyleOptionToolBar* self);

QTLIBC_API QStyleOptionProgressBar* QStyleOptionProgressBar_new();
QTLIBC_API QStyleOptionProgressBar* QStyleOptionProgressBar_new2(QStyleOptionProgressBar* other);
QTLIBC_API void QStyleOptionProgressBar_Delete(QStyleOptionProgressBar* self);

QTLIBC_API QStyleOptionMenuItem* QStyleOptionMenuItem_new();
QTLIBC_API QStyleOptionMenuItem* QStyleOptionMenuItem_new2(QStyleOptionMenuItem* other);
QTLIBC_API void QStyleOptionMenuItem_Delete(QStyleOptionMenuItem* self);

QTLIBC_API QStyleOptionDockWidget* QStyleOptionDockWidget_new();
QTLIBC_API QStyleOptionDockWidget* QStyleOptionDockWidget_new2(QStyleOptionDockWidget* other);
QTLIBC_API void QStyleOptionDockWidget_Delete(QStyleOptionDockWidget* self);

QTLIBC_API QStyleOptionViewItem* QStyleOptionViewItem_new();
QTLIBC_API QStyleOptionViewItem* QStyleOptionViewItem_new2(QStyleOptionViewItem* other);
QTLIBC_API void QStyleOptionViewItem_Delete(QStyleOptionViewItem* self);

QTLIBC_API QStyleOptionToolBox* QStyleOptionToolBox_new();
QTLIBC_API QStyleOptionToolBox* QStyleOptionToolBox_new2(QStyleOptionToolBox* other);
QTLIBC_API void QStyleOptionToolBox_Delete(QStyleOptionToolBox* self);

QTLIBC_API QStyleOptionRubberBand* QStyleOptionRubberBand_new();
QTLIBC_API QStyleOptionRubberBand* QStyleOptionRubberBand_new2(QStyleOptionRubberBand* other);
QTLIBC_API void QStyleOptionRubberBand_Delete(QStyleOptionRubberBand* self);

QTLIBC_API QStyleOptionComplex* QStyleOptionComplex_new();
QTLIBC_API QStyleOptionComplex* QStyleOptionComplex_new2(QStyleOptionComplex* other);
QTLIBC_API QStyleOptionComplex* QStyleOptionComplex_new3(int version);
QTLIBC_API QStyleOptionComplex* QStyleOptionComplex_new4(int version, int typeVal);
QTLIBC_API void QStyleOptionComplex_Delete(QStyleOptionComplex* self);

QTLIBC_API QStyleOptionSlider* QStyleOptionSlider_new();
QTLIBC_API QStyleOptionSlider* QStyleOptionSlider_new2(QStyleOptionSlider* other);
QTLIBC_API void QStyleOptionSlider_Delete(QStyleOptionSlider* self);

QTLIBC_API QStyleOptionSpinBox* QStyleOptionSpinBox_new();
QTLIBC_API QStyleOptionSpinBox* QStyleOptionSpinBox_new2(QStyleOptionSpinBox* other);
QTLIBC_API void QStyleOptionSpinBox_Delete(QStyleOptionSpinBox* self);

QTLIBC_API QStyleOptionToolButton* QStyleOptionToolButton_new();
QTLIBC_API QStyleOptionToolButton* QStyleOptionToolButton_new2(QStyleOptionToolButton* other);
QTLIBC_API void QStyleOptionToolButton_Delete(QStyleOptionToolButton* self);

QTLIBC_API QStyleOptionComboBox* QStyleOptionComboBox_new();
QTLIBC_API QStyleOptionComboBox* QStyleOptionComboBox_new2(QStyleOptionComboBox* other);
QTLIBC_API void QStyleOptionComboBox_Delete(QStyleOptionComboBox* self);

QTLIBC_API QStyleOptionTitleBar* QStyleOptionTitleBar_new();
QTLIBC_API QStyleOptionTitleBar* QStyleOptionTitleBar_new2(QStyleOptionTitleBar* other);
QTLIBC_API void QStyleOptionTitleBar_Delete(QStyleOptionTitleBar* self);

QTLIBC_API QStyleOptionGroupBox* QStyleOptionGroupBox_new();
QTLIBC_API QStyleOptionGroupBox* QStyleOptionGroupBox_new2(QStyleOptionGroupBox* other);
QTLIBC_API void QStyleOptionGroupBox_Delete(QStyleOptionGroupBox* self);

QTLIBC_API QStyleOptionSizeGrip* QStyleOptionSizeGrip_new();
QTLIBC_API QStyleOptionSizeGrip* QStyleOptionSizeGrip_new2(QStyleOptionSizeGrip* other);
QTLIBC_API void QStyleOptionSizeGrip_Delete(QStyleOptionSizeGrip* self);

QTLIBC_API QStyleOptionGraphicsItem* QStyleOptionGraphicsItem_new();
QTLIBC_API QStyleOptionGraphicsItem* QStyleOptionGraphicsItem_new2(QStyleOptionGraphicsItem* other);
QTLIBC_API double QStyleOptionGraphicsItem_LevelOfDetailFromTransform(QTransform* worldTransform);
QTLIBC_API void QStyleOptionGraphicsItem_Delete(QStyleOptionGraphicsItem* self);

QTLIBC_API QStyleHintReturn* QStyleHintReturn_new();
QTLIBC_API QStyleHintReturn* QStyleHintReturn_new2(QStyleHintReturn* param1);
QTLIBC_API QStyleHintReturn* QStyleHintReturn_new3(int version);
QTLIBC_API QStyleHintReturn* QStyleHintReturn_new4(int version, int typeVal);
QTLIBC_API void QStyleHintReturn_OperatorAssign(QStyleHintReturn* self, QStyleHintReturn* param1);
QTLIBC_API void QStyleHintReturn_Delete(QStyleHintReturn* self);

QTLIBC_API QStyleHintReturnMask* QStyleHintReturnMask_new();
QTLIBC_API QStyleHintReturnMask* QStyleHintReturnMask_new2(QStyleHintReturnMask* param1);
QTLIBC_API void QStyleHintReturnMask_OperatorAssign(QStyleHintReturnMask* self, QStyleHintReturnMask* param1);
QTLIBC_API void QStyleHintReturnMask_Delete(QStyleHintReturnMask* self);

QTLIBC_API QStyleHintReturnVariant* QStyleHintReturnVariant_new();
QTLIBC_API QStyleHintReturnVariant* QStyleHintReturnVariant_new2(QStyleHintReturnVariant* param1);
QTLIBC_API void QStyleHintReturnVariant_OperatorAssign(QStyleHintReturnVariant* self, QStyleHintReturnVariant* param1);
QTLIBC_API void QStyleHintReturnVariant_Delete(QStyleHintReturnVariant* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
