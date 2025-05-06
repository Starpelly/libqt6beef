#pragma once
#ifndef SRCC_LIBQCOLORTRANSFORM_H
#define SRCC_LIBQCOLORTRANSFORM_H

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
typedef struct QColor QColor;
typedef struct QColorTransform QColorTransform;
typedef struct QRgba64 QRgba64;
#endif

QTLIBC_API QColorTransform* QColorTransform_new();
QTLIBC_API QColorTransform* QColorTransform_new2(QColorTransform* colorTransform);
QTLIBC_API void QColorTransform_OperatorAssign(QColorTransform* self, QColorTransform* other);
QTLIBC_API void QColorTransform_Swap(QColorTransform* self, QColorTransform* other);
QTLIBC_API bool QColorTransform_IsIdentity(const QColorTransform* self);
QTLIBC_API unsigned int QColorTransform_Map(const QColorTransform* self, unsigned int argb);
QTLIBC_API QRgba64* QColorTransform_MapWithRgba64(const QColorTransform* self, QRgba64* rgba64);
QTLIBC_API QColor* QColorTransform_MapWithColor(const QColorTransform* self, QColor* color);
QTLIBC_API void QColorTransform_Delete(QColorTransform* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
