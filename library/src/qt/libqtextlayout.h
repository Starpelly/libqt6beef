#pragma once
#ifndef SRC_QTC_LIBQTEXTLAYOUT_H
#define SRC_QTC_LIBQTEXTLAYOUT_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTextLayout__FormatRange)
typedef QTextLayout::FormatRange QTextLayout__FormatRange;
#endif
#else
typedef struct QFont QFont;
typedef struct QGlyphRun QGlyphRun;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPainter QPainter;
typedef struct QPointF QPointF;
typedef struct QRawFont QRawFont;
typedef struct QRectF QRectF;
typedef struct QTextBlock QTextBlock;
typedef struct QTextFormat QTextFormat;
typedef struct QTextInlineObject QTextInlineObject;
typedef struct QTextLayout QTextLayout;
typedef struct QTextLayout__FormatRange QTextLayout__FormatRange;
typedef struct QTextLine QTextLine;
typedef struct QTextOption QTextOption;
#endif

#ifdef __cplusplus
typedef QTextLayout::CursorMode CursorMode;       // C++ enum
typedef QTextLine::CursorPosition CursorPosition; // C++ enum
typedef QTextLine::Edge Edge;                     // C++ enum
#else
typedef int CursorMode;     // C ABI enum
typedef int CursorPosition; // C ABI enum
typedef int Edge;           // C ABI enum
#endif

QTLIBC_API QTextInlineObject* QTextInlineObject_new(QTextInlineObject* other);
QTLIBC_API QTextInlineObject* QTextInlineObject_new2(QTextInlineObject* other);
QTLIBC_API QTextInlineObject* QTextInlineObject_new3();
QTLIBC_API void QTextInlineObject_CopyAssign(QTextInlineObject* self, QTextInlineObject* other);
QTLIBC_API void QTextInlineObject_MoveAssign(QTextInlineObject* self, QTextInlineObject* other);
QTLIBC_API bool QTextInlineObject_IsValid(const QTextInlineObject* self);
QTLIBC_API QRectF* QTextInlineObject_Rect(const QTextInlineObject* self);
QTLIBC_API double QTextInlineObject_Width(const QTextInlineObject* self);
QTLIBC_API double QTextInlineObject_Ascent(const QTextInlineObject* self);
QTLIBC_API double QTextInlineObject_Descent(const QTextInlineObject* self);
QTLIBC_API double QTextInlineObject_Height(const QTextInlineObject* self);
QTLIBC_API int QTextInlineObject_TextDirection(const QTextInlineObject* self);
QTLIBC_API void QTextInlineObject_SetWidth(QTextInlineObject* self, double w);
QTLIBC_API void QTextInlineObject_SetAscent(QTextInlineObject* self, double a);
QTLIBC_API void QTextInlineObject_SetDescent(QTextInlineObject* self, double d);
QTLIBC_API int QTextInlineObject_TextPosition(const QTextInlineObject* self);
QTLIBC_API int QTextInlineObject_FormatIndex(const QTextInlineObject* self);
QTLIBC_API QTextFormat* QTextInlineObject_Format(const QTextInlineObject* self);
QTLIBC_API void QTextInlineObject_Delete(QTextInlineObject* self);

QTLIBC_API QTextLayout* QTextLayout_new();
QTLIBC_API QTextLayout* QTextLayout_new2(libqt_string text);
QTLIBC_API QTextLayout* QTextLayout_new3(libqt_string text, QFont* font);
QTLIBC_API QTextLayout* QTextLayout_new4(QTextBlock* b);
QTLIBC_API QTextLayout* QTextLayout_new5(libqt_string text, QFont* font, QPaintDevice* paintdevice);
QTLIBC_API void QTextLayout_SetFont(QTextLayout* self, QFont* f);
QTLIBC_API QFont* QTextLayout_Font(const QTextLayout* self);
QTLIBC_API void QTextLayout_SetRawFont(QTextLayout* self, QRawFont* rawFont);
QTLIBC_API void QTextLayout_SetText(QTextLayout* self, libqt_string stringVal);
QTLIBC_API libqt_string QTextLayout_Text(const QTextLayout* self);
QTLIBC_API void QTextLayout_SetTextOption(QTextLayout* self, QTextOption* option);
QTLIBC_API QTextOption* QTextLayout_TextOption(const QTextLayout* self);
QTLIBC_API void QTextLayout_SetPreeditArea(QTextLayout* self, int position, libqt_string text);
QTLIBC_API int QTextLayout_PreeditAreaPosition(const QTextLayout* self);
QTLIBC_API libqt_string QTextLayout_PreeditAreaText(const QTextLayout* self);
QTLIBC_API void QTextLayout_SetFormats(QTextLayout* self, libqt_list /* of QTextLayout__FormatRange* */ overrides);
QTLIBC_API libqt_list /* of QTextLayout__FormatRange* */ QTextLayout_Formats(const QTextLayout* self);
QTLIBC_API void QTextLayout_ClearFormats(QTextLayout* self);
QTLIBC_API void QTextLayout_SetCacheEnabled(QTextLayout* self, bool enable);
QTLIBC_API bool QTextLayout_CacheEnabled(const QTextLayout* self);
QTLIBC_API void QTextLayout_SetCursorMoveStyle(QTextLayout* self, int style);
QTLIBC_API int QTextLayout_CursorMoveStyle(const QTextLayout* self);
QTLIBC_API void QTextLayout_BeginLayout(QTextLayout* self);
QTLIBC_API void QTextLayout_EndLayout(QTextLayout* self);
QTLIBC_API void QTextLayout_ClearLayout(QTextLayout* self);
QTLIBC_API QTextLine* QTextLayout_CreateLine(QTextLayout* self);
QTLIBC_API int QTextLayout_LineCount(const QTextLayout* self);
QTLIBC_API QTextLine* QTextLayout_LineAt(const QTextLayout* self, int i);
QTLIBC_API QTextLine* QTextLayout_LineForTextPosition(const QTextLayout* self, int pos);
QTLIBC_API bool QTextLayout_IsValidCursorPosition(const QTextLayout* self, int pos);
QTLIBC_API int QTextLayout_NextCursorPosition(const QTextLayout* self, int oldPos);
QTLIBC_API int QTextLayout_PreviousCursorPosition(const QTextLayout* self, int oldPos);
QTLIBC_API int QTextLayout_LeftCursorPosition(const QTextLayout* self, int oldPos);
QTLIBC_API int QTextLayout_RightCursorPosition(const QTextLayout* self, int oldPos);
QTLIBC_API void QTextLayout_Draw(const QTextLayout* self, QPainter* p, QPointF* pos);
QTLIBC_API void QTextLayout_DrawCursor(const QTextLayout* self, QPainter* p, QPointF* pos, int cursorPosition);
QTLIBC_API void QTextLayout_DrawCursor2(const QTextLayout* self, QPainter* p, QPointF* pos, int cursorPosition, int width);
QTLIBC_API QPointF* QTextLayout_Position(const QTextLayout* self);
QTLIBC_API void QTextLayout_SetPosition(QTextLayout* self, QPointF* p);
QTLIBC_API QRectF* QTextLayout_BoundingRect(const QTextLayout* self);
QTLIBC_API double QTextLayout_MinimumWidth(const QTextLayout* self);
QTLIBC_API double QTextLayout_MaximumWidth(const QTextLayout* self);
QTLIBC_API libqt_list /* of QGlyphRun* */ QTextLayout_GlyphRuns(const QTextLayout* self);
QTLIBC_API void QTextLayout_SetFlags(QTextLayout* self, int flags);
QTLIBC_API int QTextLayout_NextCursorPosition2(const QTextLayout* self, int oldPos, int mode);
QTLIBC_API int QTextLayout_PreviousCursorPosition2(const QTextLayout* self, int oldPos, int mode);
QTLIBC_API void QTextLayout_Draw3(const QTextLayout* self, QPainter* p, QPointF* pos, libqt_list /* of QTextLayout__FormatRange* */ selections);
QTLIBC_API void QTextLayout_Draw4(const QTextLayout* self, QPainter* p, QPointF* pos, libqt_list /* of QTextLayout__FormatRange* */ selections, QRectF* clip);
QTLIBC_API libqt_list /* of QGlyphRun* */ QTextLayout_GlyphRuns1(const QTextLayout* self, int from);
QTLIBC_API libqt_list /* of QGlyphRun* */ QTextLayout_GlyphRuns2(const QTextLayout* self, int from, int length);
QTLIBC_API void QTextLayout_Delete(QTextLayout* self);

QTLIBC_API QTextLine* QTextLine_new(QTextLine* other);
QTLIBC_API QTextLine* QTextLine_new2(QTextLine* other);
QTLIBC_API QTextLine* QTextLine_new3();
QTLIBC_API void QTextLine_CopyAssign(QTextLine* self, QTextLine* other);
QTLIBC_API void QTextLine_MoveAssign(QTextLine* self, QTextLine* other);
QTLIBC_API bool QTextLine_IsValid(const QTextLine* self);
QTLIBC_API QRectF* QTextLine_Rect(const QTextLine* self);
QTLIBC_API double QTextLine_X(const QTextLine* self);
QTLIBC_API double QTextLine_Y(const QTextLine* self);
QTLIBC_API double QTextLine_Width(const QTextLine* self);
QTLIBC_API double QTextLine_Ascent(const QTextLine* self);
QTLIBC_API double QTextLine_Descent(const QTextLine* self);
QTLIBC_API double QTextLine_Height(const QTextLine* self);
QTLIBC_API double QTextLine_Leading(const QTextLine* self);
QTLIBC_API void QTextLine_SetLeadingIncluded(QTextLine* self, bool included);
QTLIBC_API bool QTextLine_LeadingIncluded(const QTextLine* self);
QTLIBC_API double QTextLine_NaturalTextWidth(const QTextLine* self);
QTLIBC_API double QTextLine_HorizontalAdvance(const QTextLine* self);
QTLIBC_API QRectF* QTextLine_NaturalTextRect(const QTextLine* self);
QTLIBC_API double QTextLine_CursorToX(const QTextLine* self, int* cursorPos);
QTLIBC_API double QTextLine_CursorToXWithCursorPos(const QTextLine* self, int cursorPos);
QTLIBC_API int QTextLine_XToCursor(const QTextLine* self, double x);
QTLIBC_API void QTextLine_SetLineWidth(QTextLine* self, double width);
QTLIBC_API void QTextLine_SetNumColumns(QTextLine* self, int columns);
QTLIBC_API void QTextLine_SetNumColumns2(QTextLine* self, int columns, double alignmentWidth);
QTLIBC_API void QTextLine_SetPosition(QTextLine* self, QPointF* pos);
QTLIBC_API QPointF* QTextLine_Position(const QTextLine* self);
QTLIBC_API int QTextLine_TextStart(const QTextLine* self);
QTLIBC_API int QTextLine_TextLength(const QTextLine* self);
QTLIBC_API int QTextLine_LineNumber(const QTextLine* self);
QTLIBC_API void QTextLine_Draw(const QTextLine* self, QPainter* painter, QPointF* position);
QTLIBC_API libqt_list /* of QGlyphRun* */ QTextLine_GlyphRuns(const QTextLine* self);
QTLIBC_API double QTextLine_CursorToX2(const QTextLine* self, int* cursorPos, int edge);
QTLIBC_API double QTextLine_CursorToX22(const QTextLine* self, int cursorPos, int edge);
QTLIBC_API int QTextLine_XToCursor2(const QTextLine* self, double x, int param2);
QTLIBC_API libqt_list /* of QGlyphRun* */ QTextLine_GlyphRuns1(const QTextLine* self, int from);
QTLIBC_API libqt_list /* of QGlyphRun* */ QTextLine_GlyphRuns2(const QTextLine* self, int from, int length);
QTLIBC_API void QTextLine_Delete(QTextLine* self);

QTLIBC_API QTextLayout__FormatRange* QTextLayout__FormatRange_new(QTextLayout__FormatRange* param1);
QTLIBC_API void QTextLayout__FormatRange_OperatorAssign(QTextLayout__FormatRange* self, QTextLayout__FormatRange* param1);
QTLIBC_API void QTextLayout__FormatRange_Delete(QTextLayout__FormatRange* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
