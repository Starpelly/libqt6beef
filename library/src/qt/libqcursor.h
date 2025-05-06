#pragma once
#ifndef SRC_QTC_LIBQCURSOR_H
#define SRC_QTC_LIBQCURSOR_H

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
typedef struct QBitmap QBitmap;
typedef struct QCursor QCursor;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QScreen QScreen;
typedef struct QVariant QVariant;
#endif

QTLIBC_API QCursor* QCursor_new();
QTLIBC_API QCursor* QCursor_new2(int shape);
QTLIBC_API QCursor* QCursor_new3(QBitmap* bitmap, QBitmap* mask);
QTLIBC_API QCursor* QCursor_new4(QPixmap* pixmap);
QTLIBC_API QCursor* QCursor_new5(QCursor* cursor);
QTLIBC_API QCursor* QCursor_new6(QBitmap* bitmap, QBitmap* mask, int hotX);
QTLIBC_API QCursor* QCursor_new7(QBitmap* bitmap, QBitmap* mask, int hotX, int hotY);
QTLIBC_API QCursor* QCursor_new8(QPixmap* pixmap, int hotX);
QTLIBC_API QCursor* QCursor_new9(QPixmap* pixmap, int hotX, int hotY);
QTLIBC_API void QCursor_OperatorAssign(QCursor* self, QCursor* cursor);
QTLIBC_API void QCursor_Swap(QCursor* self, QCursor* other);
QTLIBC_API QVariant* QCursor_ToQVariant(const QCursor* self);
QTLIBC_API int QCursor_Shape(const QCursor* self);
QTLIBC_API void QCursor_SetShape(QCursor* self, int newShape);
QTLIBC_API QBitmap* QCursor_Bitmap(const QCursor* self, int param1);
QTLIBC_API QBitmap* QCursor_Mask(const QCursor* self, int param1);
QTLIBC_API QBitmap* QCursor_Bitmap2(const QCursor* self);
QTLIBC_API QBitmap* QCursor_Mask2(const QCursor* self);
QTLIBC_API QPixmap* QCursor_Pixmap(const QCursor* self);
QTLIBC_API QPoint* QCursor_HotSpot(const QCursor* self);
QTLIBC_API QPoint* QCursor_Pos();
QTLIBC_API QPoint* QCursor_PosWithScreen(QScreen* screen);
QTLIBC_API void QCursor_SetPos(int x, int y);
QTLIBC_API void QCursor_SetPos2(QScreen* screen, int x, int y);
QTLIBC_API void QCursor_SetPosWithQPoint(QPoint* p);
QTLIBC_API void QCursor_SetPos3(QScreen* screen, QPoint* p);
QTLIBC_API void QCursor_Delete(QCursor* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
