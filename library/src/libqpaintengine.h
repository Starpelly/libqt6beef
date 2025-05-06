#pragma once
#ifndef SRCC_LIBQPAINTENGINE_H
#define SRCC_LIBQPAINTENGINE_H

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
typedef struct QBrush QBrush;
typedef struct QFont QFont;
typedef struct QImage QImage;
typedef struct QLine QLine;
typedef struct QLineF QLineF;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEngineState QPaintEngineState;
typedef struct QPainter QPainter;
typedef struct QPainterPath QPainterPath;
typedef struct QPen QPen;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QRegion QRegion;
typedef struct QSize QSize;
typedef struct QTextItem QTextItem;
typedef struct QTransform QTransform;
#endif

#ifdef __cplusplus
typedef QPaintEngine::DirtyFlag DirtyFlag;                     // C++ enum
typedef QPaintEngine::DirtyFlags DirtyFlags;                   // C++ QFlags
typedef QPaintEngine::PaintEngineFeature PaintEngineFeature;   // C++ enum
typedef QPaintEngine::PaintEngineFeatures PaintEngineFeatures; // C++ QFlags
typedef QPaintEngine::PolygonDrawMode PolygonDrawMode;         // C++ enum
typedef QPaintEngine::Type Type;                               // C++ enum
typedef QTextItem::RenderFlag RenderFlag;                      // C++ enum
typedef QTextItem::RenderFlags RenderFlags;                    // C++ QFlags
#else
typedef int DirtyFlag;           // C ABI enum
typedef int DirtyFlags;          // C ABI QFlags
typedef int PaintEngineFeature;  // C ABI enum
typedef int PaintEngineFeatures; // C ABI QFlags
typedef int PolygonDrawMode;     // C ABI enum
typedef int RenderFlag;          // C ABI enum
typedef int RenderFlags;         // C ABI QFlags
typedef unsigned char Type;      // C ABI enum
#endif

QTLIBC_API QTextItem* QTextItem_new(QTextItem* other);
QTLIBC_API QTextItem* QTextItem_new2(QTextItem* other);
QTLIBC_API void QTextItem_CopyAssign(QTextItem* self, QTextItem* other);
QTLIBC_API void QTextItem_MoveAssign(QTextItem* self, QTextItem* other);
QTLIBC_API double QTextItem_Descent(const QTextItem* self);
QTLIBC_API double QTextItem_Ascent(const QTextItem* self);
QTLIBC_API double QTextItem_Width(const QTextItem* self);
QTLIBC_API int QTextItem_RenderFlags(const QTextItem* self);
QTLIBC_API libqt_string QTextItem_Text(const QTextItem* self);
QTLIBC_API QFont* QTextItem_Font(const QTextItem* self);
QTLIBC_API void QTextItem_Delete(QTextItem* self);

QTLIBC_API QPaintEngine* QPaintEngine_new();
QTLIBC_API QPaintEngine* QPaintEngine_new2(int features);
QTLIBC_API bool QPaintEngine_IsActive(const QPaintEngine* self);
QTLIBC_API void QPaintEngine_SetActive(QPaintEngine* self, bool newState);
QTLIBC_API bool QPaintEngine_Begin(QPaintEngine* self, QPaintDevice* pdev);
QTLIBC_API void QPaintEngine_OnBegin(QPaintEngine* self, intptr_t slot);
QTLIBC_API bool QPaintEngine_QBaseBegin(QPaintEngine* self, QPaintDevice* pdev);
QTLIBC_API bool QPaintEngine_End(QPaintEngine* self);
QTLIBC_API void QPaintEngine_OnEnd(QPaintEngine* self, intptr_t slot);
QTLIBC_API bool QPaintEngine_QBaseEnd(QPaintEngine* self);
QTLIBC_API void QPaintEngine_UpdateState(QPaintEngine* self, QPaintEngineState* state);
QTLIBC_API void QPaintEngine_OnUpdateState(QPaintEngine* self, intptr_t slot);
QTLIBC_API void QPaintEngine_QBaseUpdateState(QPaintEngine* self, QPaintEngineState* state);
QTLIBC_API void QPaintEngine_DrawRects(QPaintEngine* self, QRect* rects, int rectCount);
QTLIBC_API void QPaintEngine_OnDrawRects(QPaintEngine* self, intptr_t slot);
QTLIBC_API void QPaintEngine_QBaseDrawRects(QPaintEngine* self, QRect* rects, int rectCount);
QTLIBC_API void QPaintEngine_DrawRects2(QPaintEngine* self, QRectF* rects, int rectCount);
QTLIBC_API void QPaintEngine_OnDrawRects2(QPaintEngine* self, intptr_t slot);
QTLIBC_API void QPaintEngine_QBaseDrawRects2(QPaintEngine* self, QRectF* rects, int rectCount);
QTLIBC_API void QPaintEngine_DrawLines(QPaintEngine* self, QLine* lines, int lineCount);
QTLIBC_API void QPaintEngine_OnDrawLines(QPaintEngine* self, intptr_t slot);
QTLIBC_API void QPaintEngine_QBaseDrawLines(QPaintEngine* self, QLine* lines, int lineCount);
QTLIBC_API void QPaintEngine_DrawLines2(QPaintEngine* self, QLineF* lines, int lineCount);
QTLIBC_API void QPaintEngine_OnDrawLines2(QPaintEngine* self, intptr_t slot);
QTLIBC_API void QPaintEngine_QBaseDrawLines2(QPaintEngine* self, QLineF* lines, int lineCount);
QTLIBC_API void QPaintEngine_DrawEllipse(QPaintEngine* self, QRectF* r);
QTLIBC_API void QPaintEngine_OnDrawEllipse(QPaintEngine* self, intptr_t slot);
QTLIBC_API void QPaintEngine_QBaseDrawEllipse(QPaintEngine* self, QRectF* r);
QTLIBC_API void QPaintEngine_DrawEllipseWithQRect(QPaintEngine* self, QRect* r);
QTLIBC_API void QPaintEngine_OnDrawEllipseWithQRect(QPaintEngine* self, intptr_t slot);
QTLIBC_API void QPaintEngine_QBaseDrawEllipseWithQRect(QPaintEngine* self, QRect* r);
QTLIBC_API void QPaintEngine_DrawPath(QPaintEngine* self, QPainterPath* path);
QTLIBC_API void QPaintEngine_OnDrawPath(QPaintEngine* self, intptr_t slot);
QTLIBC_API void QPaintEngine_QBaseDrawPath(QPaintEngine* self, QPainterPath* path);
QTLIBC_API void QPaintEngine_DrawPoints(QPaintEngine* self, QPointF* points, int pointCount);
QTLIBC_API void QPaintEngine_OnDrawPoints(QPaintEngine* self, intptr_t slot);
QTLIBC_API void QPaintEngine_QBaseDrawPoints(QPaintEngine* self, QPointF* points, int pointCount);
QTLIBC_API void QPaintEngine_DrawPoints2(QPaintEngine* self, QPoint* points, int pointCount);
QTLIBC_API void QPaintEngine_OnDrawPoints2(QPaintEngine* self, intptr_t slot);
QTLIBC_API void QPaintEngine_QBaseDrawPoints2(QPaintEngine* self, QPoint* points, int pointCount);
QTLIBC_API void QPaintEngine_DrawPolygon(QPaintEngine* self, QPointF* points, int pointCount, int mode);
QTLIBC_API void QPaintEngine_OnDrawPolygon(QPaintEngine* self, intptr_t slot);
QTLIBC_API void QPaintEngine_QBaseDrawPolygon(QPaintEngine* self, QPointF* points, int pointCount, int mode);
QTLIBC_API void QPaintEngine_DrawPolygon2(QPaintEngine* self, QPoint* points, int pointCount, int mode);
QTLIBC_API void QPaintEngine_OnDrawPolygon2(QPaintEngine* self, intptr_t slot);
QTLIBC_API void QPaintEngine_QBaseDrawPolygon2(QPaintEngine* self, QPoint* points, int pointCount, int mode);
QTLIBC_API void QPaintEngine_DrawPixmap(QPaintEngine* self, QRectF* r, QPixmap* pm, QRectF* sr);
QTLIBC_API void QPaintEngine_OnDrawPixmap(QPaintEngine* self, intptr_t slot);
QTLIBC_API void QPaintEngine_QBaseDrawPixmap(QPaintEngine* self, QRectF* r, QPixmap* pm, QRectF* sr);
QTLIBC_API void QPaintEngine_DrawTextItem(QPaintEngine* self, QPointF* p, QTextItem* textItem);
QTLIBC_API void QPaintEngine_OnDrawTextItem(QPaintEngine* self, intptr_t slot);
QTLIBC_API void QPaintEngine_QBaseDrawTextItem(QPaintEngine* self, QPointF* p, QTextItem* textItem);
QTLIBC_API void QPaintEngine_DrawTiledPixmap(QPaintEngine* self, QRectF* r, QPixmap* pixmap, QPointF* s);
QTLIBC_API void QPaintEngine_OnDrawTiledPixmap(QPaintEngine* self, intptr_t slot);
QTLIBC_API void QPaintEngine_QBaseDrawTiledPixmap(QPaintEngine* self, QRectF* r, QPixmap* pixmap, QPointF* s);
QTLIBC_API void QPaintEngine_DrawImage(QPaintEngine* self, QRectF* r, QImage* pm, QRectF* sr, int flags);
QTLIBC_API void QPaintEngine_OnDrawImage(QPaintEngine* self, intptr_t slot);
QTLIBC_API void QPaintEngine_QBaseDrawImage(QPaintEngine* self, QRectF* r, QImage* pm, QRectF* sr, int flags);
QTLIBC_API void QPaintEngine_SetPaintDevice(QPaintEngine* self, QPaintDevice* device);
QTLIBC_API QPaintDevice* QPaintEngine_PaintDevice(const QPaintEngine* self);
QTLIBC_API void QPaintEngine_SetSystemClip(QPaintEngine* self, QRegion* baseClip);
QTLIBC_API QRegion* QPaintEngine_SystemClip(const QPaintEngine* self);
QTLIBC_API void QPaintEngine_SetSystemRect(QPaintEngine* self, QRect* rect);
QTLIBC_API QRect* QPaintEngine_SystemRect(const QPaintEngine* self);
QTLIBC_API QPoint* QPaintEngine_CoordinateOffset(const QPaintEngine* self);
QTLIBC_API void QPaintEngine_OnCoordinateOffset(const QPaintEngine* self, intptr_t slot);
QTLIBC_API QPoint* QPaintEngine_QBaseCoordinateOffset(const QPaintEngine* self);
QTLIBC_API int QPaintEngine_Type(const QPaintEngine* self);
QTLIBC_API void QPaintEngine_OnType(const QPaintEngine* self, intptr_t slot);
QTLIBC_API int QPaintEngine_QBaseType(const QPaintEngine* self);
QTLIBC_API void QPaintEngine_FixNegRect(QPaintEngine* self, int* x, int* y, int* w, int* h);
QTLIBC_API bool QPaintEngine_TestDirty(QPaintEngine* self, int df);
QTLIBC_API void QPaintEngine_SetDirty(QPaintEngine* self, int df);
QTLIBC_API void QPaintEngine_ClearDirty(QPaintEngine* self, int df);
QTLIBC_API bool QPaintEngine_HasFeature(const QPaintEngine* self, int feature);
QTLIBC_API QPainter* QPaintEngine_Painter(const QPaintEngine* self);
QTLIBC_API void QPaintEngine_SyncState(QPaintEngine* self);
QTLIBC_API bool QPaintEngine_IsExtended(const QPaintEngine* self);
QTLIBC_API QPixmap* QPaintEngine_CreatePixmap(QPaintEngine* self, QSize* size);
QTLIBC_API void QPaintEngine_OnCreatePixmap(QPaintEngine* self, intptr_t slot);
QTLIBC_API QPixmap* QPaintEngine_QBaseCreatePixmap(QPaintEngine* self, QSize* size);
QTLIBC_API QPixmap* QPaintEngine_CreatePixmapFromImage(QPaintEngine* self, QImage* image, int flags);
QTLIBC_API void QPaintEngine_OnCreatePixmapFromImage(QPaintEngine* self, intptr_t slot);
QTLIBC_API QPixmap* QPaintEngine_QBaseCreatePixmapFromImage(QPaintEngine* self, QImage* image, int flags);
QTLIBC_API void QPaintEngine_Delete(QPaintEngine* self);

QTLIBC_API QPaintEngineState* QPaintEngineState_new(QPaintEngineState* other);
QTLIBC_API QPaintEngineState* QPaintEngineState_new2(QPaintEngineState* other);
QTLIBC_API void QPaintEngineState_CopyAssign(QPaintEngineState* self, QPaintEngineState* other);
QTLIBC_API void QPaintEngineState_MoveAssign(QPaintEngineState* self, QPaintEngineState* other);
QTLIBC_API int QPaintEngineState_State(const QPaintEngineState* self);
QTLIBC_API QPen* QPaintEngineState_Pen(const QPaintEngineState* self);
QTLIBC_API QBrush* QPaintEngineState_Brush(const QPaintEngineState* self);
QTLIBC_API QPointF* QPaintEngineState_BrushOrigin(const QPaintEngineState* self);
QTLIBC_API QBrush* QPaintEngineState_BackgroundBrush(const QPaintEngineState* self);
QTLIBC_API int QPaintEngineState_BackgroundMode(const QPaintEngineState* self);
QTLIBC_API QFont* QPaintEngineState_Font(const QPaintEngineState* self);
QTLIBC_API QTransform* QPaintEngineState_Transform(const QPaintEngineState* self);
QTLIBC_API int QPaintEngineState_ClipOperation(const QPaintEngineState* self);
QTLIBC_API QRegion* QPaintEngineState_ClipRegion(const QPaintEngineState* self);
QTLIBC_API QPainterPath* QPaintEngineState_ClipPath(const QPaintEngineState* self);
QTLIBC_API bool QPaintEngineState_IsClipEnabled(const QPaintEngineState* self);
QTLIBC_API int QPaintEngineState_RenderHints(const QPaintEngineState* self);
QTLIBC_API int QPaintEngineState_CompositionMode(const QPaintEngineState* self);
QTLIBC_API double QPaintEngineState_Opacity(const QPaintEngineState* self);
QTLIBC_API QPainter* QPaintEngineState_Painter(const QPaintEngineState* self);
QTLIBC_API bool QPaintEngineState_BrushNeedsResolving(const QPaintEngineState* self);
QTLIBC_API bool QPaintEngineState_PenNeedsResolving(const QPaintEngineState* self);
QTLIBC_API void QPaintEngineState_Delete(QPaintEngineState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
