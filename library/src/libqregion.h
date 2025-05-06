#pragma once
#ifndef SRCC_LIBQREGION_H
#define SRCC_LIBQREGION_H

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
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QRegion::RegionType RegionType; // C++ enum
#else
typedef int RegionType; // C ABI enum
#endif

QTLIBC_API QRegion* QRegion_new();
QTLIBC_API QRegion* QRegion_new2(int x, int y, int w, int h);
QTLIBC_API QRegion* QRegion_new3(QRect* r);
QTLIBC_API QRegion* QRegion_new4(QRegion* region);
QTLIBC_API QRegion* QRegion_new5(QBitmap* bitmap);
QTLIBC_API QRegion* QRegion_new6(int x, int y, int w, int h, int t);
QTLIBC_API QRegion* QRegion_new7(QRect* r, int t);
QTLIBC_API void QRegion_OperatorAssign(QRegion* self, QRegion* param1);
QTLIBC_API void QRegion_Swap(QRegion* self, QRegion* other);
QTLIBC_API bool QRegion_IsEmpty(const QRegion* self);
QTLIBC_API bool QRegion_IsNull(const QRegion* self);
QTLIBC_API QRect* QRegion_Begin(const QRegion* self);
QTLIBC_API QRect* QRegion_Cbegin(const QRegion* self);
QTLIBC_API QRect* QRegion_End(const QRegion* self);
QTLIBC_API QRect* QRegion_Cend(const QRegion* self);
QTLIBC_API bool QRegion_Contains(const QRegion* self, QPoint* p);
QTLIBC_API bool QRegion_ContainsWithQRect(const QRegion* self, QRect* r);
QTLIBC_API void QRegion_Translate(QRegion* self, int dx, int dy);
QTLIBC_API void QRegion_TranslateWithQPoint(QRegion* self, QPoint* p);
QTLIBC_API QRegion* QRegion_Translated(const QRegion* self, int dx, int dy);
QTLIBC_API QRegion* QRegion_TranslatedWithQPoint(const QRegion* self, QPoint* p);
QTLIBC_API QRegion* QRegion_United(const QRegion* self, QRegion* r);
QTLIBC_API QRegion* QRegion_UnitedWithQRect(const QRegion* self, QRect* r);
QTLIBC_API QRegion* QRegion_Intersected(const QRegion* self, QRegion* r);
QTLIBC_API QRegion* QRegion_IntersectedWithQRect(const QRegion* self, QRect* r);
QTLIBC_API QRegion* QRegion_Subtracted(const QRegion* self, QRegion* r);
QTLIBC_API QRegion* QRegion_Xored(const QRegion* self, QRegion* r);
QTLIBC_API bool QRegion_Intersects(const QRegion* self, QRegion* r);
QTLIBC_API bool QRegion_IntersectsWithQRect(const QRegion* self, QRect* r);
QTLIBC_API QRect* QRegion_BoundingRect(const QRegion* self);
QTLIBC_API void QRegion_SetRects(QRegion* self, QRect* rect, int num);
QTLIBC_API int QRegion_RectCount(const QRegion* self);
QTLIBC_API QRegion* QRegion_OperatorBitwiseOr(const QRegion* self, QRegion* r);
QTLIBC_API QRegion* QRegion_OperatorPlus(const QRegion* self, QRegion* r);
QTLIBC_API QRegion* QRegion_OperatorPlusWithQRect(const QRegion* self, QRect* r);
QTLIBC_API QRegion* QRegion_OperatorBitwiseAnd(const QRegion* self, QRegion* r);
QTLIBC_API QRegion* QRegion_OperatorBitwiseAndWithQRect(const QRegion* self, QRect* r);
QTLIBC_API QRegion* QRegion_OperatorMinus(const QRegion* self, QRegion* r);
QTLIBC_API QRegion* QRegion_OperatorBitwiseNot(const QRegion* self, QRegion* r);
QTLIBC_API void QRegion_OperatorBitwiseOrAssign(QRegion* self, QRegion* r);
QTLIBC_API QRegion* QRegion_OperatorPlusAssign(QRegion* self, QRegion* r);
QTLIBC_API QRegion* QRegion_OperatorPlusAssignWithQRect(QRegion* self, QRect* r);
QTLIBC_API void QRegion_OperatorBitwiseAndAssign(QRegion* self, QRegion* r);
QTLIBC_API void QRegion_OperatorBitwiseAndAssignWithQRect(QRegion* self, QRect* r);
QTLIBC_API QRegion* QRegion_OperatorMinusAssign(QRegion* self, QRegion* r);
QTLIBC_API void QRegion_OperatorBitwiseNotAssign(QRegion* self, QRegion* r);
QTLIBC_API bool QRegion_OperatorEqual(const QRegion* self, QRegion* r);
QTLIBC_API bool QRegion_OperatorNotEqual(const QRegion* self, QRegion* r);
QTLIBC_API QVariant* QRegion_ToQVariant(const QRegion* self);
QTLIBC_API void QRegion_Delete(QRegion* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
