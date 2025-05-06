#pragma once
#ifndef SRCC_LIBQPAINTER_H
#define SRCC_LIBQPAINTER_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPainter__PixmapFragment)
typedef QPainter::PixmapFragment QPainter__PixmapFragment;
#endif
#else
typedef struct QBrush QBrush;
typedef struct QColor QColor;
typedef struct QFont QFont;
typedef struct QFontInfo QFontInfo;
typedef struct QFontMetrics QFontMetrics;
typedef struct QGlyphRun QGlyphRun;
typedef struct QImage QImage;
typedef struct QLine QLine;
typedef struct QLineF QLineF;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPainterPath QPainterPath;
typedef struct QPainter__PixmapFragment QPainter__PixmapFragment;
typedef struct QPen QPen;
typedef struct QPicture QPicture;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QRegion QRegion;
typedef struct QStaticText QStaticText;
typedef struct QTextItem QTextItem;
typedef struct QTextOption QTextOption;
typedef struct QTransform QTransform;
#endif

#ifdef __cplusplus
typedef QPainter::CompositionMode CompositionMode;         // C++ enum
typedef QPainter::PixmapFragmentHint PixmapFragmentHint;   // C++ enum
typedef QPainter::PixmapFragmentHints PixmapFragmentHints; // C++ QFlags
typedef QPainter::QtGadgetHelper QtGadgetHelper;           // C++ QFlags
typedef QPainter::RenderHint RenderHint;                   // C++ enum
typedef QPainter::RenderHints RenderHints;                 // C++ QFlags
#else
typedef int CompositionMode;     // C ABI enum
typedef int PixmapFragmentHint;  // C ABI enum
typedef int PixmapFragmentHints; // C ABI QFlags
typedef int RenderHint;          // C ABI enum
typedef int RenderHints;         // C ABI QFlags
typedef void QtGadgetHelper;     // C ABI QFlags
#endif

QTLIBC_API QPainter* QPainter_new();
QTLIBC_API QPainter* QPainter_new2(QPaintDevice* param1);
QTLIBC_API QPaintDevice* QPainter_Device(const QPainter* self);
QTLIBC_API bool QPainter_Begin(QPainter* self, QPaintDevice* param1);
QTLIBC_API bool QPainter_End(QPainter* self);
QTLIBC_API bool QPainter_IsActive(const QPainter* self);
QTLIBC_API void QPainter_SetCompositionMode(QPainter* self, int mode);
QTLIBC_API int QPainter_CompositionMode(const QPainter* self);
QTLIBC_API QFont* QPainter_Font(const QPainter* self);
QTLIBC_API void QPainter_SetFont(QPainter* self, QFont* f);
QTLIBC_API QFontMetrics* QPainter_FontMetrics(const QPainter* self);
QTLIBC_API QFontInfo* QPainter_FontInfo(const QPainter* self);
QTLIBC_API void QPainter_SetPen(QPainter* self, QColor* color);
QTLIBC_API void QPainter_SetPenWithPen(QPainter* self, QPen* pen);
QTLIBC_API void QPainter_SetPenWithStyle(QPainter* self, int style);
QTLIBC_API QPen* QPainter_Pen(const QPainter* self);
QTLIBC_API void QPainter_SetBrush(QPainter* self, QBrush* brush);
QTLIBC_API void QPainter_SetBrushWithStyle(QPainter* self, int style);
QTLIBC_API QBrush* QPainter_Brush(const QPainter* self);
QTLIBC_API void QPainter_SetBackgroundMode(QPainter* self, int mode);
QTLIBC_API int QPainter_BackgroundMode(const QPainter* self);
QTLIBC_API QPoint* QPainter_BrushOrigin(const QPainter* self);
QTLIBC_API void QPainter_SetBrushOrigin(QPainter* self, int x, int y);
QTLIBC_API void QPainter_SetBrushOriginWithBrushOrigin(QPainter* self, QPoint* brushOrigin);
QTLIBC_API void QPainter_SetBrushOrigin2(QPainter* self, QPointF* brushOrigin);
QTLIBC_API void QPainter_SetBackground(QPainter* self, QBrush* bg);
QTLIBC_API QBrush* QPainter_Background(const QPainter* self);
QTLIBC_API double QPainter_Opacity(const QPainter* self);
QTLIBC_API void QPainter_SetOpacity(QPainter* self, double opacity);
QTLIBC_API QRegion* QPainter_ClipRegion(const QPainter* self);
QTLIBC_API QPainterPath* QPainter_ClipPath(const QPainter* self);
QTLIBC_API void QPainter_SetClipRect(QPainter* self, QRectF* param1);
QTLIBC_API void QPainter_SetClipRectWithQRect(QPainter* self, QRect* param1);
QTLIBC_API void QPainter_SetClipRect2(QPainter* self, int x, int y, int w, int h);
QTLIBC_API void QPainter_SetClipRegion(QPainter* self, QRegion* param1);
QTLIBC_API void QPainter_SetClipPath(QPainter* self, QPainterPath* path);
QTLIBC_API void QPainter_SetClipping(QPainter* self, bool enable);
QTLIBC_API bool QPainter_HasClipping(const QPainter* self);
QTLIBC_API QRectF* QPainter_ClipBoundingRect(const QPainter* self);
QTLIBC_API void QPainter_Save(QPainter* self);
QTLIBC_API void QPainter_Restore(QPainter* self);
QTLIBC_API void QPainter_SetTransform(QPainter* self, QTransform* transform);
QTLIBC_API QTransform* QPainter_Transform(const QPainter* self);
QTLIBC_API QTransform* QPainter_DeviceTransform(const QPainter* self);
QTLIBC_API void QPainter_ResetTransform(QPainter* self);
QTLIBC_API void QPainter_SetWorldTransform(QPainter* self, QTransform* matrix);
QTLIBC_API QTransform* QPainter_WorldTransform(const QPainter* self);
QTLIBC_API QTransform* QPainter_CombinedTransform(const QPainter* self);
QTLIBC_API void QPainter_SetWorldMatrixEnabled(QPainter* self, bool enabled);
QTLIBC_API bool QPainter_WorldMatrixEnabled(const QPainter* self);
QTLIBC_API void QPainter_Scale(QPainter* self, double sx, double sy);
QTLIBC_API void QPainter_Shear(QPainter* self, double sh, double sv);
QTLIBC_API void QPainter_Rotate(QPainter* self, double a);
QTLIBC_API void QPainter_Translate(QPainter* self, QPointF* offset);
QTLIBC_API void QPainter_TranslateWithOffset(QPainter* self, QPoint* offset);
QTLIBC_API void QPainter_Translate2(QPainter* self, double dx, double dy);
QTLIBC_API QRect* QPainter_Window(const QPainter* self);
QTLIBC_API void QPainter_SetWindow(QPainter* self, QRect* window);
QTLIBC_API void QPainter_SetWindow2(QPainter* self, int x, int y, int w, int h);
QTLIBC_API QRect* QPainter_Viewport(const QPainter* self);
QTLIBC_API void QPainter_SetViewport(QPainter* self, QRect* viewport);
QTLIBC_API void QPainter_SetViewport2(QPainter* self, int x, int y, int w, int h);
QTLIBC_API void QPainter_SetViewTransformEnabled(QPainter* self, bool enable);
QTLIBC_API bool QPainter_ViewTransformEnabled(const QPainter* self);
QTLIBC_API void QPainter_StrokePath(QPainter* self, QPainterPath* path, QPen* pen);
QTLIBC_API void QPainter_FillPath(QPainter* self, QPainterPath* path, QBrush* brush);
QTLIBC_API void QPainter_DrawPath(QPainter* self, QPainterPath* path);
QTLIBC_API void QPainter_DrawPoint(QPainter* self, QPointF* pt);
QTLIBC_API void QPainter_DrawPointWithQPoint(QPainter* self, QPoint* p);
QTLIBC_API void QPainter_DrawPoint2(QPainter* self, int x, int y);
QTLIBC_API void QPainter_DrawPoints(QPainter* self, QPointF* points, int pointCount);
QTLIBC_API void QPainter_DrawPoints2(QPainter* self, QPoint* points, int pointCount);
QTLIBC_API void QPainter_DrawLine(QPainter* self, QLineF* line);
QTLIBC_API void QPainter_DrawLineWithLine(QPainter* self, QLine* line);
QTLIBC_API void QPainter_DrawLine2(QPainter* self, int x1, int y1, int x2, int y2);
QTLIBC_API void QPainter_DrawLine3(QPainter* self, QPoint* p1, QPoint* p2);
QTLIBC_API void QPainter_DrawLine4(QPainter* self, QPointF* p1, QPointF* p2);
QTLIBC_API void QPainter_DrawLines(QPainter* self, QLineF* lines, int lineCount);
QTLIBC_API void QPainter_DrawLinesWithLines(QPainter* self, libqt_list /* of QLineF* */ lines);
QTLIBC_API void QPainter_DrawLines2(QPainter* self, QPointF* pointPairs, int lineCount);
QTLIBC_API void QPainter_DrawLinesWithPointPairs(QPainter* self, libqt_list /* of QPointF* */ pointPairs);
QTLIBC_API void QPainter_DrawLines3(QPainter* self, QLine* lines, int lineCount);
QTLIBC_API void QPainter_DrawLines4(QPainter* self, libqt_list /* of QLine* */ lines);
QTLIBC_API void QPainter_DrawLines5(QPainter* self, QPoint* pointPairs, int lineCount);
QTLIBC_API void QPainter_DrawLines6(QPainter* self, libqt_list /* of QPoint* */ pointPairs);
QTLIBC_API void QPainter_DrawRect(QPainter* self, QRectF* rect);
QTLIBC_API void QPainter_DrawRect2(QPainter* self, int x1, int y1, int w, int h);
QTLIBC_API void QPainter_DrawRectWithRect(QPainter* self, QRect* rect);
QTLIBC_API void QPainter_DrawRects(QPainter* self, QRectF* rects, int rectCount);
QTLIBC_API void QPainter_DrawRectsWithRectangles(QPainter* self, libqt_list /* of QRectF* */ rectangles);
QTLIBC_API void QPainter_DrawRects2(QPainter* self, QRect* rects, int rectCount);
QTLIBC_API void QPainter_DrawRects3(QPainter* self, libqt_list /* of QRect* */ rectangles);
QTLIBC_API void QPainter_DrawEllipse(QPainter* self, QRectF* r);
QTLIBC_API void QPainter_DrawEllipseWithQRect(QPainter* self, QRect* r);
QTLIBC_API void QPainter_DrawEllipse2(QPainter* self, int x, int y, int w, int h);
QTLIBC_API void QPainter_DrawEllipse3(QPainter* self, QPointF* center, double rx, double ry);
QTLIBC_API void QPainter_DrawEllipse4(QPainter* self, QPoint* center, int rx, int ry);
QTLIBC_API void QPainter_DrawPolyline(QPainter* self, QPointF* points, int pointCount);
QTLIBC_API void QPainter_DrawPolyline2(QPainter* self, QPoint* points, int pointCount);
QTLIBC_API void QPainter_DrawPolygon(QPainter* self, QPointF* points, int pointCount);
QTLIBC_API void QPainter_DrawPolygon2(QPainter* self, QPoint* points, int pointCount);
QTLIBC_API void QPainter_DrawConvexPolygon(QPainter* self, QPointF* points, int pointCount);
QTLIBC_API void QPainter_DrawConvexPolygon2(QPainter* self, QPoint* points, int pointCount);
QTLIBC_API void QPainter_DrawArc(QPainter* self, QRectF* rect, int a, int alen);
QTLIBC_API void QPainter_DrawArc2(QPainter* self, QRect* param1, int a, int alen);
QTLIBC_API void QPainter_DrawArc3(QPainter* self, int x, int y, int w, int h, int a, int alen);
QTLIBC_API void QPainter_DrawPie(QPainter* self, QRectF* rect, int a, int alen);
QTLIBC_API void QPainter_DrawPie2(QPainter* self, int x, int y, int w, int h, int a, int alen);
QTLIBC_API void QPainter_DrawPie3(QPainter* self, QRect* param1, int a, int alen);
QTLIBC_API void QPainter_DrawChord(QPainter* self, QRectF* rect, int a, int alen);
QTLIBC_API void QPainter_DrawChord2(QPainter* self, int x, int y, int w, int h, int a, int alen);
QTLIBC_API void QPainter_DrawChord3(QPainter* self, QRect* param1, int a, int alen);
QTLIBC_API void QPainter_DrawRoundedRect(QPainter* self, QRectF* rect, double xRadius, double yRadius);
QTLIBC_API void QPainter_DrawRoundedRect2(QPainter* self, int x, int y, int w, int h, double xRadius, double yRadius);
QTLIBC_API void QPainter_DrawRoundedRect3(QPainter* self, QRect* rect, double xRadius, double yRadius);
QTLIBC_API void QPainter_DrawTiledPixmap(QPainter* self, QRectF* rect, QPixmap* pm);
QTLIBC_API void QPainter_DrawTiledPixmap2(QPainter* self, int x, int y, int w, int h, QPixmap* param5);
QTLIBC_API void QPainter_DrawTiledPixmap3(QPainter* self, QRect* param1, QPixmap* param2);
QTLIBC_API void QPainter_DrawPicture(QPainter* self, QPointF* p, QPicture* picture);
QTLIBC_API void QPainter_DrawPicture2(QPainter* self, int x, int y, QPicture* picture);
QTLIBC_API void QPainter_DrawPicture3(QPainter* self, QPoint* p, QPicture* picture);
QTLIBC_API void QPainter_DrawPixmap(QPainter* self, QRectF* targetRect, QPixmap* pixmap, QRectF* sourceRect);
QTLIBC_API void QPainter_DrawPixmap2(QPainter* self, QRect* targetRect, QPixmap* pixmap, QRect* sourceRect);
QTLIBC_API void QPainter_DrawPixmap3(QPainter* self, int x, int y, int w, int h, QPixmap* pm, int sx, int sy, int sw, int sh);
QTLIBC_API void QPainter_DrawPixmap4(QPainter* self, int x, int y, QPixmap* pm, int sx, int sy, int sw, int sh);
QTLIBC_API void QPainter_DrawPixmap5(QPainter* self, QPointF* p, QPixmap* pm, QRectF* sr);
QTLIBC_API void QPainter_DrawPixmap6(QPainter* self, QPoint* p, QPixmap* pm, QRect* sr);
QTLIBC_API void QPainter_DrawPixmap7(QPainter* self, QPointF* p, QPixmap* pm);
QTLIBC_API void QPainter_DrawPixmap8(QPainter* self, QPoint* p, QPixmap* pm);
QTLIBC_API void QPainter_DrawPixmap9(QPainter* self, int x, int y, QPixmap* pm);
QTLIBC_API void QPainter_DrawPixmap10(QPainter* self, QRect* r, QPixmap* pm);
QTLIBC_API void QPainter_DrawPixmap11(QPainter* self, int x, int y, int w, int h, QPixmap* pm);
QTLIBC_API void QPainter_DrawPixmapFragments(QPainter* self, QPainter__PixmapFragment* fragments, int fragmentCount, QPixmap* pixmap);
QTLIBC_API void QPainter_DrawImage(QPainter* self, QRectF* targetRect, QImage* image, QRectF* sourceRect);
QTLIBC_API void QPainter_DrawImage2(QPainter* self, QRect* targetRect, QImage* image, QRect* sourceRect);
QTLIBC_API void QPainter_DrawImage3(QPainter* self, QPointF* p, QImage* image, QRectF* sr);
QTLIBC_API void QPainter_DrawImage4(QPainter* self, QPoint* p, QImage* image, QRect* sr);
QTLIBC_API void QPainter_DrawImage5(QPainter* self, QRectF* r, QImage* image);
QTLIBC_API void QPainter_DrawImage6(QPainter* self, QRect* r, QImage* image);
QTLIBC_API void QPainter_DrawImage7(QPainter* self, QPointF* p, QImage* image);
QTLIBC_API void QPainter_DrawImage8(QPainter* self, QPoint* p, QImage* image);
QTLIBC_API void QPainter_DrawImage9(QPainter* self, int x, int y, QImage* image);
QTLIBC_API void QPainter_SetLayoutDirection(QPainter* self, int direction);
QTLIBC_API int QPainter_LayoutDirection(const QPainter* self);
QTLIBC_API void QPainter_DrawGlyphRun(QPainter* self, QPointF* position, QGlyphRun* glyphRun);
QTLIBC_API void QPainter_DrawStaticText(QPainter* self, QPointF* topLeftPosition, QStaticText* staticText);
QTLIBC_API void QPainter_DrawStaticText2(QPainter* self, QPoint* topLeftPosition, QStaticText* staticText);
QTLIBC_API void QPainter_DrawStaticText3(QPainter* self, int left, int top, QStaticText* staticText);
QTLIBC_API void QPainter_DrawText(QPainter* self, QPointF* p, libqt_string s);
QTLIBC_API void QPainter_DrawText2(QPainter* self, QPoint* p, libqt_string s);
QTLIBC_API void QPainter_DrawText3(QPainter* self, int x, int y, libqt_string s);
QTLIBC_API void QPainter_DrawText4(QPainter* self, QPointF* p, libqt_string str, int tf, int justificationPadding);
QTLIBC_API void QPainter_DrawText5(QPainter* self, QRectF* r, int flags, libqt_string text);
QTLIBC_API void QPainter_DrawText6(QPainter* self, QRect* r, int flags, libqt_string text);
QTLIBC_API void QPainter_DrawText7(QPainter* self, int x, int y, int w, int h, int flags, libqt_string text);
QTLIBC_API void QPainter_DrawText8(QPainter* self, QRectF* r, libqt_string text);
QTLIBC_API QRectF* QPainter_BoundingRect(QPainter* self, QRectF* rect, int flags, libqt_string text);
QTLIBC_API QRect* QPainter_BoundingRect2(QPainter* self, QRect* rect, int flags, libqt_string text);
QTLIBC_API QRect* QPainter_BoundingRect3(QPainter* self, int x, int y, int w, int h, int flags, libqt_string text);
QTLIBC_API QRectF* QPainter_BoundingRect4(QPainter* self, QRectF* rect, libqt_string text);
QTLIBC_API void QPainter_DrawTextItem(QPainter* self, QPointF* p, QTextItem* ti);
QTLIBC_API void QPainter_DrawTextItem2(QPainter* self, int x, int y, QTextItem* ti);
QTLIBC_API void QPainter_DrawTextItem3(QPainter* self, QPoint* p, QTextItem* ti);
QTLIBC_API void QPainter_FillRect(QPainter* self, QRectF* param1, QBrush* param2);
QTLIBC_API void QPainter_FillRect2(QPainter* self, int x, int y, int w, int h, QBrush* param5);
QTLIBC_API void QPainter_FillRect3(QPainter* self, QRect* param1, QBrush* param2);
QTLIBC_API void QPainter_FillRect4(QPainter* self, QRectF* param1, QColor* color);
QTLIBC_API void QPainter_FillRect5(QPainter* self, int x, int y, int w, int h, QColor* color);
QTLIBC_API void QPainter_FillRect6(QPainter* self, QRect* param1, QColor* color);
QTLIBC_API void QPainter_FillRect7(QPainter* self, int x, int y, int w, int h, int c);
QTLIBC_API void QPainter_FillRect8(QPainter* self, QRect* r, int c);
QTLIBC_API void QPainter_FillRect9(QPainter* self, QRectF* r, int c);
QTLIBC_API void QPainter_FillRect10(QPainter* self, int x, int y, int w, int h, int style);
QTLIBC_API void QPainter_FillRect11(QPainter* self, QRect* r, int style);
QTLIBC_API void QPainter_FillRect12(QPainter* self, QRectF* r, int style);
QTLIBC_API void QPainter_FillRect13(QPainter* self, int x, int y, int w, int h, int preset);
QTLIBC_API void QPainter_FillRect14(QPainter* self, QRect* r, int preset);
QTLIBC_API void QPainter_FillRect15(QPainter* self, QRectF* r, int preset);
QTLIBC_API void QPainter_EraseRect(QPainter* self, QRectF* param1);
QTLIBC_API void QPainter_EraseRect2(QPainter* self, int x, int y, int w, int h);
QTLIBC_API void QPainter_EraseRectWithQRect(QPainter* self, QRect* param1);
QTLIBC_API void QPainter_SetRenderHint(QPainter* self, int hint);
QTLIBC_API void QPainter_SetRenderHints(QPainter* self, int hints);
QTLIBC_API int QPainter_RenderHints(const QPainter* self);
QTLIBC_API bool QPainter_TestRenderHint(const QPainter* self, int hint);
QTLIBC_API QPaintEngine* QPainter_PaintEngine(const QPainter* self);
QTLIBC_API void QPainter_BeginNativePainting(QPainter* self);
QTLIBC_API void QPainter_EndNativePainting(QPainter* self);
QTLIBC_API void QPainter_SetClipRect22(QPainter* self, QRectF* param1, int op);
QTLIBC_API void QPainter_SetClipRect23(QPainter* self, QRect* param1, int op);
QTLIBC_API void QPainter_SetClipRect5(QPainter* self, int x, int y, int w, int h, int op);
QTLIBC_API void QPainter_SetClipRegion2(QPainter* self, QRegion* param1, int op);
QTLIBC_API void QPainter_SetClipPath2(QPainter* self, QPainterPath* path, int op);
QTLIBC_API void QPainter_SetTransform2(QPainter* self, QTransform* transform, bool combine);
QTLIBC_API void QPainter_SetWorldTransform2(QPainter* self, QTransform* matrix, bool combine);
QTLIBC_API void QPainter_DrawPolygon32(QPainter* self, QPointF* points, int pointCount, int fillRule);
QTLIBC_API void QPainter_DrawPolygon33(QPainter* self, QPoint* points, int pointCount, int fillRule);
QTLIBC_API void QPainter_DrawRoundedRect4(QPainter* self, QRectF* rect, double xRadius, double yRadius, int mode);
QTLIBC_API void QPainter_DrawRoundedRect7(QPainter* self, int x, int y, int w, int h, double xRadius, double yRadius, int mode);
QTLIBC_API void QPainter_DrawRoundedRect42(QPainter* self, QRect* rect, double xRadius, double yRadius, int mode);
QTLIBC_API void QPainter_DrawTiledPixmap32(QPainter* self, QRectF* rect, QPixmap* pm, QPointF* offset);
QTLIBC_API void QPainter_DrawTiledPixmap6(QPainter* self, int x, int y, int w, int h, QPixmap* param5, int sx);
QTLIBC_API void QPainter_DrawTiledPixmap7(QPainter* self, int x, int y, int w, int h, QPixmap* param5, int sx, int sy);
QTLIBC_API void QPainter_DrawTiledPixmap33(QPainter* self, QRect* param1, QPixmap* param2, QPoint* param3);
QTLIBC_API void QPainter_DrawPixmapFragments4(QPainter* self, QPainter__PixmapFragment* fragments, int fragmentCount, QPixmap* pixmap, int hints);
QTLIBC_API void QPainter_DrawImage42(QPainter* self, QRectF* targetRect, QImage* image, QRectF* sourceRect, int flags);
QTLIBC_API void QPainter_DrawImage43(QPainter* self, QRect* targetRect, QImage* image, QRect* sourceRect, int flags);
QTLIBC_API void QPainter_DrawImage44(QPainter* self, QPointF* p, QImage* image, QRectF* sr, int flags);
QTLIBC_API void QPainter_DrawImage45(QPainter* self, QPoint* p, QImage* image, QRect* sr, int flags);
QTLIBC_API void QPainter_DrawImage46(QPainter* self, int x, int y, QImage* image, int sx);
QTLIBC_API void QPainter_DrawImage52(QPainter* self, int x, int y, QImage* image, int sx, int sy);
QTLIBC_API void QPainter_DrawImage62(QPainter* self, int x, int y, QImage* image, int sx, int sy, int sw);
QTLIBC_API void QPainter_DrawImage72(QPainter* self, int x, int y, QImage* image, int sx, int sy, int sw, int sh);
QTLIBC_API void QPainter_DrawImage82(QPainter* self, int x, int y, QImage* image, int sx, int sy, int sw, int sh, int flags);
QTLIBC_API void QPainter_DrawText42(QPainter* self, QRectF* r, int flags, libqt_string text, QRectF* br);
QTLIBC_API void QPainter_DrawText43(QPainter* self, QRect* r, int flags, libqt_string text, QRect* br);
QTLIBC_API void QPainter_DrawText72(QPainter* self, int x, int y, int w, int h, int flags, libqt_string text, QRect* br);
QTLIBC_API void QPainter_DrawText32(QPainter* self, QRectF* r, libqt_string text, QTextOption* o);
QTLIBC_API QRectF* QPainter_BoundingRect32(QPainter* self, QRectF* rect, libqt_string text, QTextOption* o);
QTLIBC_API void QPainter_SetRenderHint2(QPainter* self, int hint, bool on);
QTLIBC_API void QPainter_SetRenderHints2(QPainter* self, int hints, bool on);
QTLIBC_API void QPainter_Delete(QPainter* self);

QTLIBC_API QPainter__PixmapFragment* QPainter__PixmapFragment_Create(QPointF* pos, QRectF* sourceRect);
QTLIBC_API QPainter__PixmapFragment* QPainter__PixmapFragment_Create3(QPointF* pos, QRectF* sourceRect, double scaleX);
QTLIBC_API QPainter__PixmapFragment* QPainter__PixmapFragment_Create4(QPointF* pos, QRectF* sourceRect, double scaleX, double scaleY);
QTLIBC_API QPainter__PixmapFragment* QPainter__PixmapFragment_Create5(QPointF* pos, QRectF* sourceRect, double scaleX, double scaleY, double rotation);
QTLIBC_API QPainter__PixmapFragment* QPainter__PixmapFragment_Create6(QPointF* pos, QRectF* sourceRect, double scaleX, double scaleY, double rotation, double opacity);
QTLIBC_API void QPainter__PixmapFragment_Delete(QPainter__PixmapFragment* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
