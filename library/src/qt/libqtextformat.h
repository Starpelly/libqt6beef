#pragma once
#ifndef SRC_QTC_LIBQTEXTFORMAT_H
#define SRC_QTC_LIBQTEXTFORMAT_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTextOption__Tab)
typedef QTextOption::Tab QTextOption__Tab;
#endif
#else
typedef struct QBrush QBrush;
typedef struct QColor QColor;
typedef struct QFont QFont;
typedef struct QPen QPen;
typedef struct QTextBlockFormat QTextBlockFormat;
typedef struct QTextCharFormat QTextCharFormat;
typedef struct QTextFormat QTextFormat;
typedef struct QTextFrameFormat QTextFrameFormat;
typedef struct QTextImageFormat QTextImageFormat;
typedef struct QTextLength QTextLength;
typedef struct QTextListFormat QTextListFormat;
typedef struct QTextOption__Tab QTextOption__Tab;
typedef struct QTextTableCellFormat QTextTableCellFormat;
typedef struct QTextTableFormat QTextTableFormat;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QTextBlockFormat::LineHeightTypes LineHeightTypes;                                    // C++ enum
typedef QTextBlockFormat::MarkerType MarkerType;                                              // C++ enum
typedef QTextCharFormat::FontPropertiesInheritanceBehavior FontPropertiesInheritanceBehavior; // C++ enum
typedef QTextCharFormat::UnderlineStyle UnderlineStyle;                                       // C++ enum
typedef QTextCharFormat::VerticalAlignment VerticalAlignment;                                 // C++ enum
typedef QTextFormat::FormatType FormatType;                                                   // C++ enum
typedef QTextFormat::ObjectTypes ObjectTypes;                                                 // C++ enum
typedef QTextFormat::PageBreakFlag PageBreakFlag;                                             // C++ enum
typedef QTextFormat::PageBreakFlags PageBreakFlags;                                           // C++ QFlags
typedef QTextFormat::Property Property;                                                       // C++ enum
typedef QTextFormat::QtGadgetHelper QtGadgetHelper;                                           // C++ QFlags
typedef QTextFrameFormat::BorderStyle BorderStyle;                                            // C++ enum
typedef QTextFrameFormat::Position Position;                                                  // C++ enum
typedef QTextLength::Type Type;                                                               // C++ enum
typedef QTextListFormat::Style Style;                                                         // C++ enum
#else
typedef int BorderStyle;                       // C ABI enum
typedef int FontPropertiesInheritanceBehavior; // C ABI enum
typedef int FormatType;                        // C ABI enum
typedef int LineHeightTypes;                   // C ABI enum
typedef int MarkerType;                        // C ABI enum
typedef int ObjectTypes;                       // C ABI enum
typedef int PageBreakFlag;                     // C ABI enum
typedef int PageBreakFlags;                    // C ABI QFlags
typedef int Position;                          // C ABI enum
typedef int Property;                          // C ABI enum
typedef int Style;                             // C ABI enum
typedef int UnderlineStyle;                    // C ABI enum
typedef int VerticalAlignment;                 // C ABI enum
typedef unsigned char Type;                    // C ABI enum
typedef void QtGadgetHelper;                   // C ABI QFlags
#endif

QTLIBC_API QTextLength* QTextLength_new(QTextLength* other);
QTLIBC_API QTextLength* QTextLength_new2(QTextLength* other);
QTLIBC_API QTextLength* QTextLength_new3();
QTLIBC_API QTextLength* QTextLength_new4(int typeVal, double value);
QTLIBC_API QTextLength* QTextLength_new5(QTextLength* param1);
QTLIBC_API void QTextLength_CopyAssign(QTextLength* self, QTextLength* other);
QTLIBC_API void QTextLength_MoveAssign(QTextLength* self, QTextLength* other);
QTLIBC_API int QTextLength_Type(const QTextLength* self);
QTLIBC_API double QTextLength_Value(const QTextLength* self, double maximumLength);
QTLIBC_API double QTextLength_RawValue(const QTextLength* self);
QTLIBC_API bool QTextLength_OperatorEqual(const QTextLength* self, QTextLength* other);
QTLIBC_API bool QTextLength_OperatorNotEqual(const QTextLength* self, QTextLength* other);
QTLIBC_API QVariant* QTextLength_ToQVariant(const QTextLength* self);
QTLIBC_API void QTextLength_Delete(QTextLength* self);

QTLIBC_API QTextFormat* QTextFormat_new();
QTLIBC_API QTextFormat* QTextFormat_new2(int typeVal);
QTLIBC_API QTextFormat* QTextFormat_new3(QTextFormat* rhs);
QTLIBC_API void QTextFormat_OperatorAssign(QTextFormat* self, QTextFormat* rhs);
QTLIBC_API void QTextFormat_Swap(QTextFormat* self, QTextFormat* other);
QTLIBC_API void QTextFormat_Merge(QTextFormat* self, QTextFormat* other);
QTLIBC_API bool QTextFormat_IsValid(const QTextFormat* self);
QTLIBC_API bool QTextFormat_IsEmpty(const QTextFormat* self);
QTLIBC_API int QTextFormat_Type(const QTextFormat* self);
QTLIBC_API int QTextFormat_ObjectIndex(const QTextFormat* self);
QTLIBC_API void QTextFormat_SetObjectIndex(QTextFormat* self, int object);
QTLIBC_API QVariant* QTextFormat_Property(const QTextFormat* self, int propertyId);
QTLIBC_API void QTextFormat_SetProperty(QTextFormat* self, int propertyId, QVariant* value);
QTLIBC_API void QTextFormat_ClearProperty(QTextFormat* self, int propertyId);
QTLIBC_API bool QTextFormat_HasProperty(const QTextFormat* self, int propertyId);
QTLIBC_API bool QTextFormat_BoolProperty(const QTextFormat* self, int propertyId);
QTLIBC_API int QTextFormat_IntProperty(const QTextFormat* self, int propertyId);
QTLIBC_API double QTextFormat_DoubleProperty(const QTextFormat* self, int propertyId);
QTLIBC_API libqt_string QTextFormat_StringProperty(const QTextFormat* self, int propertyId);
QTLIBC_API QColor* QTextFormat_ColorProperty(const QTextFormat* self, int propertyId);
QTLIBC_API QPen* QTextFormat_PenProperty(const QTextFormat* self, int propertyId);
QTLIBC_API QBrush* QTextFormat_BrushProperty(const QTextFormat* self, int propertyId);
QTLIBC_API QTextLength* QTextFormat_LengthProperty(const QTextFormat* self, int propertyId);
QTLIBC_API libqt_list /* of QTextLength* */ QTextFormat_LengthVectorProperty(const QTextFormat* self, int propertyId);
QTLIBC_API void QTextFormat_SetProperty2(QTextFormat* self, int propertyId, libqt_list /* of QTextLength* */ lengths);
QTLIBC_API libqt_map /* of int to QVariant* */ QTextFormat_Properties(const QTextFormat* self);
QTLIBC_API int QTextFormat_PropertyCount(const QTextFormat* self);
QTLIBC_API void QTextFormat_SetObjectType(QTextFormat* self, int typeVal);
QTLIBC_API int QTextFormat_ObjectType(const QTextFormat* self);
QTLIBC_API bool QTextFormat_IsCharFormat(const QTextFormat* self);
QTLIBC_API bool QTextFormat_IsBlockFormat(const QTextFormat* self);
QTLIBC_API bool QTextFormat_IsListFormat(const QTextFormat* self);
QTLIBC_API bool QTextFormat_IsFrameFormat(const QTextFormat* self);
QTLIBC_API bool QTextFormat_IsImageFormat(const QTextFormat* self);
QTLIBC_API bool QTextFormat_IsTableFormat(const QTextFormat* self);
QTLIBC_API bool QTextFormat_IsTableCellFormat(const QTextFormat* self);
QTLIBC_API QTextBlockFormat* QTextFormat_ToBlockFormat(const QTextFormat* self);
QTLIBC_API QTextCharFormat* QTextFormat_ToCharFormat(const QTextFormat* self);
QTLIBC_API QTextListFormat* QTextFormat_ToListFormat(const QTextFormat* self);
QTLIBC_API QTextTableFormat* QTextFormat_ToTableFormat(const QTextFormat* self);
QTLIBC_API QTextFrameFormat* QTextFormat_ToFrameFormat(const QTextFormat* self);
QTLIBC_API QTextImageFormat* QTextFormat_ToImageFormat(const QTextFormat* self);
QTLIBC_API QTextTableCellFormat* QTextFormat_ToTableCellFormat(const QTextFormat* self);
QTLIBC_API bool QTextFormat_OperatorEqual(const QTextFormat* self, QTextFormat* rhs);
QTLIBC_API bool QTextFormat_OperatorNotEqual(const QTextFormat* self, QTextFormat* rhs);
QTLIBC_API QVariant* QTextFormat_ToQVariant(const QTextFormat* self);
QTLIBC_API void QTextFormat_SetLayoutDirection(QTextFormat* self, int direction);
QTLIBC_API int QTextFormat_LayoutDirection(const QTextFormat* self);
QTLIBC_API void QTextFormat_SetBackground(QTextFormat* self, QBrush* brush);
QTLIBC_API QBrush* QTextFormat_Background(const QTextFormat* self);
QTLIBC_API void QTextFormat_ClearBackground(QTextFormat* self);
QTLIBC_API void QTextFormat_SetForeground(QTextFormat* self, QBrush* brush);
QTLIBC_API QBrush* QTextFormat_Foreground(const QTextFormat* self);
QTLIBC_API void QTextFormat_ClearForeground(QTextFormat* self);
QTLIBC_API void QTextFormat_Delete(QTextFormat* self);

QTLIBC_API QTextCharFormat* QTextCharFormat_new();
QTLIBC_API QTextCharFormat* QTextCharFormat_new2(QTextCharFormat* param1);
QTLIBC_API bool QTextCharFormat_IsValid(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFont(QTextCharFormat* self, QFont* font);
QTLIBC_API QFont* QTextCharFormat_Font(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontFamily(QTextCharFormat* self, libqt_string family);
QTLIBC_API libqt_string QTextCharFormat_FontFamily(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontFamilies(QTextCharFormat* self, libqt_list /* of libqt_string */ families);
QTLIBC_API QVariant* QTextCharFormat_FontFamilies(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontStyleName(QTextCharFormat* self, libqt_string styleName);
QTLIBC_API QVariant* QTextCharFormat_FontStyleName(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontPointSize(QTextCharFormat* self, double size);
QTLIBC_API double QTextCharFormat_FontPointSize(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontWeight(QTextCharFormat* self, int weight);
QTLIBC_API int QTextCharFormat_FontWeight(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontItalic(QTextCharFormat* self, bool italic);
QTLIBC_API bool QTextCharFormat_FontItalic(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontCapitalization(QTextCharFormat* self, int capitalization);
QTLIBC_API int QTextCharFormat_FontCapitalization(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontLetterSpacingType(QTextCharFormat* self, int letterSpacingType);
QTLIBC_API int QTextCharFormat_FontLetterSpacingType(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontLetterSpacing(QTextCharFormat* self, double spacing);
QTLIBC_API double QTextCharFormat_FontLetterSpacing(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontWordSpacing(QTextCharFormat* self, double spacing);
QTLIBC_API double QTextCharFormat_FontWordSpacing(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontUnderline(QTextCharFormat* self, bool underline);
QTLIBC_API bool QTextCharFormat_FontUnderline(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontOverline(QTextCharFormat* self, bool overline);
QTLIBC_API bool QTextCharFormat_FontOverline(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontStrikeOut(QTextCharFormat* self, bool strikeOut);
QTLIBC_API bool QTextCharFormat_FontStrikeOut(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetUnderlineColor(QTextCharFormat* self, QColor* color);
QTLIBC_API QColor* QTextCharFormat_UnderlineColor(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontFixedPitch(QTextCharFormat* self, bool fixedPitch);
QTLIBC_API bool QTextCharFormat_FontFixedPitch(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontStretch(QTextCharFormat* self, int factor);
QTLIBC_API int QTextCharFormat_FontStretch(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontStyleHint(QTextCharFormat* self, int hint);
QTLIBC_API void QTextCharFormat_SetFontStyleStrategy(QTextCharFormat* self, int strategy);
QTLIBC_API int QTextCharFormat_FontStyleHint(const QTextCharFormat* self);
QTLIBC_API int QTextCharFormat_FontStyleStrategy(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontHintingPreference(QTextCharFormat* self, int hintingPreference);
QTLIBC_API int QTextCharFormat_FontHintingPreference(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFontKerning(QTextCharFormat* self, bool enable);
QTLIBC_API bool QTextCharFormat_FontKerning(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetUnderlineStyle(QTextCharFormat* self, int style);
QTLIBC_API int QTextCharFormat_UnderlineStyle(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetVerticalAlignment(QTextCharFormat* self, int alignment);
QTLIBC_API int QTextCharFormat_VerticalAlignment(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetTextOutline(QTextCharFormat* self, QPen* pen);
QTLIBC_API QPen* QTextCharFormat_TextOutline(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetToolTip(QTextCharFormat* self, libqt_string tip);
QTLIBC_API libqt_string QTextCharFormat_ToolTip(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetSuperScriptBaseline(QTextCharFormat* self, double baseline);
QTLIBC_API double QTextCharFormat_SuperScriptBaseline(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetSubScriptBaseline(QTextCharFormat* self, double baseline);
QTLIBC_API double QTextCharFormat_SubScriptBaseline(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetBaselineOffset(QTextCharFormat* self, double baseline);
QTLIBC_API double QTextCharFormat_BaselineOffset(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetAnchor(QTextCharFormat* self, bool anchor);
QTLIBC_API bool QTextCharFormat_IsAnchor(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetAnchorHref(QTextCharFormat* self, libqt_string value);
QTLIBC_API libqt_string QTextCharFormat_AnchorHref(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetAnchorNames(QTextCharFormat* self, libqt_list /* of libqt_string */ names);
QTLIBC_API libqt_list /* of libqt_string */ QTextCharFormat_AnchorNames(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetTableCellRowSpan(QTextCharFormat* self, int tableCellRowSpan);
QTLIBC_API int QTextCharFormat_TableCellRowSpan(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetTableCellColumnSpan(QTextCharFormat* self, int tableCellColumnSpan);
QTLIBC_API int QTextCharFormat_TableCellColumnSpan(const QTextCharFormat* self);
QTLIBC_API void QTextCharFormat_SetFont2(QTextCharFormat* self, QFont* font, int behavior);
QTLIBC_API void QTextCharFormat_SetFontStyleHint2(QTextCharFormat* self, int hint, int strategy);
QTLIBC_API void QTextCharFormat_Delete(QTextCharFormat* self);

QTLIBC_API QTextBlockFormat* QTextBlockFormat_new();
QTLIBC_API QTextBlockFormat* QTextBlockFormat_new2(QTextBlockFormat* param1);
QTLIBC_API bool QTextBlockFormat_IsValid(const QTextBlockFormat* self);
QTLIBC_API void QTextBlockFormat_SetAlignment(QTextBlockFormat* self, int alignment);
QTLIBC_API int QTextBlockFormat_Alignment(const QTextBlockFormat* self);
QTLIBC_API void QTextBlockFormat_SetTopMargin(QTextBlockFormat* self, double margin);
QTLIBC_API double QTextBlockFormat_TopMargin(const QTextBlockFormat* self);
QTLIBC_API void QTextBlockFormat_SetBottomMargin(QTextBlockFormat* self, double margin);
QTLIBC_API double QTextBlockFormat_BottomMargin(const QTextBlockFormat* self);
QTLIBC_API void QTextBlockFormat_SetLeftMargin(QTextBlockFormat* self, double margin);
QTLIBC_API double QTextBlockFormat_LeftMargin(const QTextBlockFormat* self);
QTLIBC_API void QTextBlockFormat_SetRightMargin(QTextBlockFormat* self, double margin);
QTLIBC_API double QTextBlockFormat_RightMargin(const QTextBlockFormat* self);
QTLIBC_API void QTextBlockFormat_SetTextIndent(QTextBlockFormat* self, double aindent);
QTLIBC_API double QTextBlockFormat_TextIndent(const QTextBlockFormat* self);
QTLIBC_API void QTextBlockFormat_SetIndent(QTextBlockFormat* self, int indent);
QTLIBC_API int QTextBlockFormat_Indent(const QTextBlockFormat* self);
QTLIBC_API void QTextBlockFormat_SetHeadingLevel(QTextBlockFormat* self, int alevel);
QTLIBC_API int QTextBlockFormat_HeadingLevel(const QTextBlockFormat* self);
QTLIBC_API void QTextBlockFormat_SetLineHeight(QTextBlockFormat* self, double height, int heightType);
QTLIBC_API double QTextBlockFormat_LineHeight(const QTextBlockFormat* self, double scriptLineHeight, double scaling);
QTLIBC_API double QTextBlockFormat_LineHeight2(const QTextBlockFormat* self);
QTLIBC_API int QTextBlockFormat_LineHeightType(const QTextBlockFormat* self);
QTLIBC_API void QTextBlockFormat_SetNonBreakableLines(QTextBlockFormat* self, bool b);
QTLIBC_API bool QTextBlockFormat_NonBreakableLines(const QTextBlockFormat* self);
QTLIBC_API void QTextBlockFormat_SetPageBreakPolicy(QTextBlockFormat* self, int flags);
QTLIBC_API int QTextBlockFormat_PageBreakPolicy(const QTextBlockFormat* self);
QTLIBC_API void QTextBlockFormat_SetTabPositions(QTextBlockFormat* self, libqt_list /* of QTextOption__Tab* */ tabs);
QTLIBC_API libqt_list /* of QTextOption__Tab* */ QTextBlockFormat_TabPositions(const QTextBlockFormat* self);
QTLIBC_API void QTextBlockFormat_SetMarker(QTextBlockFormat* self, int marker);
QTLIBC_API int QTextBlockFormat_Marker(const QTextBlockFormat* self);
QTLIBC_API void QTextBlockFormat_Delete(QTextBlockFormat* self);

QTLIBC_API QTextListFormat* QTextListFormat_new();
QTLIBC_API QTextListFormat* QTextListFormat_new2(QTextListFormat* param1);
QTLIBC_API bool QTextListFormat_IsValid(const QTextListFormat* self);
QTLIBC_API void QTextListFormat_SetStyle(QTextListFormat* self, int style);
QTLIBC_API int QTextListFormat_Style(const QTextListFormat* self);
QTLIBC_API void QTextListFormat_SetIndent(QTextListFormat* self, int indent);
QTLIBC_API int QTextListFormat_Indent(const QTextListFormat* self);
QTLIBC_API void QTextListFormat_SetNumberPrefix(QTextListFormat* self, libqt_string numberPrefix);
QTLIBC_API libqt_string QTextListFormat_NumberPrefix(const QTextListFormat* self);
QTLIBC_API void QTextListFormat_SetNumberSuffix(QTextListFormat* self, libqt_string numberSuffix);
QTLIBC_API libqt_string QTextListFormat_NumberSuffix(const QTextListFormat* self);
QTLIBC_API void QTextListFormat_Delete(QTextListFormat* self);

QTLIBC_API QTextImageFormat* QTextImageFormat_new();
QTLIBC_API bool QTextImageFormat_IsValid(const QTextImageFormat* self);
QTLIBC_API void QTextImageFormat_SetName(QTextImageFormat* self, libqt_string name);
QTLIBC_API libqt_string QTextImageFormat_Name(const QTextImageFormat* self);
QTLIBC_API void QTextImageFormat_SetWidth(QTextImageFormat* self, double width);
QTLIBC_API double QTextImageFormat_Width(const QTextImageFormat* self);
QTLIBC_API void QTextImageFormat_SetHeight(QTextImageFormat* self, double height);
QTLIBC_API double QTextImageFormat_Height(const QTextImageFormat* self);
QTLIBC_API void QTextImageFormat_SetQuality(QTextImageFormat* self, int quality);
QTLIBC_API void QTextImageFormat_SetQuality2(QTextImageFormat* self);
QTLIBC_API int QTextImageFormat_Quality(const QTextImageFormat* self);
QTLIBC_API void QTextImageFormat_Delete(QTextImageFormat* self);

QTLIBC_API QTextFrameFormat* QTextFrameFormat_new();
QTLIBC_API QTextFrameFormat* QTextFrameFormat_new2(QTextFrameFormat* param1);
QTLIBC_API bool QTextFrameFormat_IsValid(const QTextFrameFormat* self);
QTLIBC_API void QTextFrameFormat_SetPosition(QTextFrameFormat* self, int f);
QTLIBC_API int QTextFrameFormat_Position(const QTextFrameFormat* self);
QTLIBC_API void QTextFrameFormat_SetBorder(QTextFrameFormat* self, double border);
QTLIBC_API double QTextFrameFormat_Border(const QTextFrameFormat* self);
QTLIBC_API void QTextFrameFormat_SetBorderBrush(QTextFrameFormat* self, QBrush* brush);
QTLIBC_API QBrush* QTextFrameFormat_BorderBrush(const QTextFrameFormat* self);
QTLIBC_API void QTextFrameFormat_SetBorderStyle(QTextFrameFormat* self, int style);
QTLIBC_API int QTextFrameFormat_BorderStyle(const QTextFrameFormat* self);
QTLIBC_API void QTextFrameFormat_SetMargin(QTextFrameFormat* self, double margin);
QTLIBC_API double QTextFrameFormat_Margin(const QTextFrameFormat* self);
QTLIBC_API void QTextFrameFormat_SetTopMargin(QTextFrameFormat* self, double margin);
QTLIBC_API double QTextFrameFormat_TopMargin(const QTextFrameFormat* self);
QTLIBC_API void QTextFrameFormat_SetBottomMargin(QTextFrameFormat* self, double margin);
QTLIBC_API double QTextFrameFormat_BottomMargin(const QTextFrameFormat* self);
QTLIBC_API void QTextFrameFormat_SetLeftMargin(QTextFrameFormat* self, double margin);
QTLIBC_API double QTextFrameFormat_LeftMargin(const QTextFrameFormat* self);
QTLIBC_API void QTextFrameFormat_SetRightMargin(QTextFrameFormat* self, double margin);
QTLIBC_API double QTextFrameFormat_RightMargin(const QTextFrameFormat* self);
QTLIBC_API void QTextFrameFormat_SetPadding(QTextFrameFormat* self, double padding);
QTLIBC_API double QTextFrameFormat_Padding(const QTextFrameFormat* self);
QTLIBC_API void QTextFrameFormat_SetWidth(QTextFrameFormat* self, double width);
QTLIBC_API void QTextFrameFormat_SetWidthWithLength(QTextFrameFormat* self, QTextLength* length);
QTLIBC_API QTextLength* QTextFrameFormat_Width(const QTextFrameFormat* self);
QTLIBC_API void QTextFrameFormat_SetHeight(QTextFrameFormat* self, double height);
QTLIBC_API void QTextFrameFormat_SetHeightWithHeight(QTextFrameFormat* self, QTextLength* height);
QTLIBC_API QTextLength* QTextFrameFormat_Height(const QTextFrameFormat* self);
QTLIBC_API void QTextFrameFormat_SetPageBreakPolicy(QTextFrameFormat* self, int flags);
QTLIBC_API int QTextFrameFormat_PageBreakPolicy(const QTextFrameFormat* self);
QTLIBC_API void QTextFrameFormat_Delete(QTextFrameFormat* self);

QTLIBC_API QTextTableFormat* QTextTableFormat_new();
QTLIBC_API bool QTextTableFormat_IsValid(const QTextTableFormat* self);
QTLIBC_API int QTextTableFormat_Columns(const QTextTableFormat* self);
QTLIBC_API void QTextTableFormat_SetColumns(QTextTableFormat* self, int columns);
QTLIBC_API void QTextTableFormat_SetColumnWidthConstraints(QTextTableFormat* self, libqt_list /* of QTextLength* */ constraints);
QTLIBC_API libqt_list /* of QTextLength* */ QTextTableFormat_ColumnWidthConstraints(const QTextTableFormat* self);
QTLIBC_API void QTextTableFormat_ClearColumnWidthConstraints(QTextTableFormat* self);
QTLIBC_API double QTextTableFormat_CellSpacing(const QTextTableFormat* self);
QTLIBC_API void QTextTableFormat_SetCellSpacing(QTextTableFormat* self, double spacing);
QTLIBC_API double QTextTableFormat_CellPadding(const QTextTableFormat* self);
QTLIBC_API void QTextTableFormat_SetCellPadding(QTextTableFormat* self, double padding);
QTLIBC_API void QTextTableFormat_SetAlignment(QTextTableFormat* self, int alignment);
QTLIBC_API int QTextTableFormat_Alignment(const QTextTableFormat* self);
QTLIBC_API void QTextTableFormat_SetHeaderRowCount(QTextTableFormat* self, int count);
QTLIBC_API int QTextTableFormat_HeaderRowCount(const QTextTableFormat* self);
QTLIBC_API void QTextTableFormat_SetBorderCollapse(QTextTableFormat* self, bool borderCollapse);
QTLIBC_API bool QTextTableFormat_BorderCollapse(const QTextTableFormat* self);
QTLIBC_API void QTextTableFormat_Delete(QTextTableFormat* self);

QTLIBC_API QTextTableCellFormat* QTextTableCellFormat_new();
QTLIBC_API bool QTextTableCellFormat_IsValid(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetTopPadding(QTextTableCellFormat* self, double padding);
QTLIBC_API double QTextTableCellFormat_TopPadding(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetBottomPadding(QTextTableCellFormat* self, double padding);
QTLIBC_API double QTextTableCellFormat_BottomPadding(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetLeftPadding(QTextTableCellFormat* self, double padding);
QTLIBC_API double QTextTableCellFormat_LeftPadding(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetRightPadding(QTextTableCellFormat* self, double padding);
QTLIBC_API double QTextTableCellFormat_RightPadding(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetPadding(QTextTableCellFormat* self, double padding);
QTLIBC_API void QTextTableCellFormat_SetTopBorder(QTextTableCellFormat* self, double width);
QTLIBC_API double QTextTableCellFormat_TopBorder(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetBottomBorder(QTextTableCellFormat* self, double width);
QTLIBC_API double QTextTableCellFormat_BottomBorder(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetLeftBorder(QTextTableCellFormat* self, double width);
QTLIBC_API double QTextTableCellFormat_LeftBorder(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetRightBorder(QTextTableCellFormat* self, double width);
QTLIBC_API double QTextTableCellFormat_RightBorder(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetBorder(QTextTableCellFormat* self, double width);
QTLIBC_API void QTextTableCellFormat_SetTopBorderStyle(QTextTableCellFormat* self, int style);
QTLIBC_API int QTextTableCellFormat_TopBorderStyle(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetBottomBorderStyle(QTextTableCellFormat* self, int style);
QTLIBC_API int QTextTableCellFormat_BottomBorderStyle(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetLeftBorderStyle(QTextTableCellFormat* self, int style);
QTLIBC_API int QTextTableCellFormat_LeftBorderStyle(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetRightBorderStyle(QTextTableCellFormat* self, int style);
QTLIBC_API int QTextTableCellFormat_RightBorderStyle(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetBorderStyle(QTextTableCellFormat* self, int style);
QTLIBC_API void QTextTableCellFormat_SetTopBorderBrush(QTextTableCellFormat* self, QBrush* brush);
QTLIBC_API QBrush* QTextTableCellFormat_TopBorderBrush(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetBottomBorderBrush(QTextTableCellFormat* self, QBrush* brush);
QTLIBC_API QBrush* QTextTableCellFormat_BottomBorderBrush(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetLeftBorderBrush(QTextTableCellFormat* self, QBrush* brush);
QTLIBC_API QBrush* QTextTableCellFormat_LeftBorderBrush(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetRightBorderBrush(QTextTableCellFormat* self, QBrush* brush);
QTLIBC_API QBrush* QTextTableCellFormat_RightBorderBrush(const QTextTableCellFormat* self);
QTLIBC_API void QTextTableCellFormat_SetBorderBrush(QTextTableCellFormat* self, QBrush* brush);
QTLIBC_API void QTextTableCellFormat_Delete(QTextTableCellFormat* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
