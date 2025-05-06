#pragma once
#ifndef SRC_QTC_LIBQPAGESIZE_H
#define SRC_QTC_LIBQPAGESIZE_H

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
typedef struct QPageSize QPageSize;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
#endif

#ifdef __cplusplus
typedef QPageSize::PageSizeId PageSizeId;           // C++ enum
typedef QPageSize::SizeMatchPolicy SizeMatchPolicy; // C++ enum
typedef QPageSize::Unit Unit;                       // C++ enum
#else
typedef int PageSizeId;      // C ABI enum
typedef int SizeMatchPolicy; // C ABI enum
typedef int Unit;            // C ABI enum
#endif

QTLIBC_API QPageSize* QPageSize_new();
QTLIBC_API QPageSize* QPageSize_new2(int pageSizeId);
QTLIBC_API QPageSize* QPageSize_new3(QSize* pointSize);
QTLIBC_API QPageSize* QPageSize_new4(QSizeF* size, int units);
QTLIBC_API QPageSize* QPageSize_new5(QPageSize* other);
QTLIBC_API QPageSize* QPageSize_new6(QSize* pointSize, libqt_string name);
QTLIBC_API QPageSize* QPageSize_new7(QSize* pointSize, libqt_string name, int matchPolicy);
QTLIBC_API QPageSize* QPageSize_new8(QSizeF* size, int units, libqt_string name);
QTLIBC_API QPageSize* QPageSize_new9(QSizeF* size, int units, libqt_string name, int matchPolicy);
QTLIBC_API void QPageSize_OperatorAssign(QPageSize* self, QPageSize* other);
QTLIBC_API void QPageSize_Swap(QPageSize* self, QPageSize* other);
QTLIBC_API bool QPageSize_IsEquivalentTo(const QPageSize* self, QPageSize* other);
QTLIBC_API bool QPageSize_IsValid(const QPageSize* self);
QTLIBC_API libqt_string QPageSize_Key(const QPageSize* self);
QTLIBC_API libqt_string QPageSize_Name(const QPageSize* self);
QTLIBC_API int QPageSize_Id(const QPageSize* self);
QTLIBC_API int QPageSize_WindowsId(const QPageSize* self);
QTLIBC_API QSizeF* QPageSize_DefinitionSize(const QPageSize* self);
QTLIBC_API int QPageSize_DefinitionUnits(const QPageSize* self);
QTLIBC_API QSizeF* QPageSize_Size(const QPageSize* self, int units);
QTLIBC_API QSize* QPageSize_SizePoints(const QPageSize* self);
QTLIBC_API QSize* QPageSize_SizePixels(const QPageSize* self, int resolution);
QTLIBC_API QRectF* QPageSize_Rect(const QPageSize* self, int units);
QTLIBC_API QRect* QPageSize_RectPoints(const QPageSize* self);
QTLIBC_API QRect* QPageSize_RectPixels(const QPageSize* self, int resolution);
QTLIBC_API libqt_string QPageSize_KeyWithPageSizeId(int pageSizeId);
QTLIBC_API libqt_string QPageSize_NameWithPageSizeId(int pageSizeId);
QTLIBC_API int QPageSize_IdWithPointSize(QSize* pointSize);
QTLIBC_API int QPageSize_Id2(QSizeF* size, int units);
QTLIBC_API int QPageSize_IdWithWindowsId(int windowsId);
QTLIBC_API int QPageSize_WindowsIdWithPageSizeId(int pageSizeId);
QTLIBC_API QSizeF* QPageSize_DefinitionSizeWithPageSizeId(int pageSizeId);
QTLIBC_API int QPageSize_DefinitionUnitsWithPageSizeId(int pageSizeId);
QTLIBC_API QSizeF* QPageSize_Size2(int pageSizeId, int units);
QTLIBC_API QSize* QPageSize_SizePointsWithPageSizeId(int pageSizeId);
QTLIBC_API QSize* QPageSize_SizePixels2(int pageSizeId, int resolution);
QTLIBC_API int QPageSize_Id22(QSize* pointSize, int matchPolicy);
QTLIBC_API int QPageSize_Id3(QSizeF* size, int units, int matchPolicy);
QTLIBC_API void QPageSize_Delete(QPageSize* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
