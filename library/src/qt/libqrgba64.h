#pragma once
#ifndef SRC_QTC_LIBQRGBA64_H
#define SRC_QTC_LIBQRGBA64_H

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
typedef struct QRgba64 QRgba64;
#endif

QTLIBC_API QRgba64* QRgba64_new();
QTLIBC_API QRgba64* QRgba64_new2(QRgba64* param1);
QTLIBC_API QRgba64* QRgba64_FromRgba64(unsigned long long c);
QTLIBC_API QRgba64* QRgba64_FromRgba642(uint16_t red, uint16_t green, uint16_t blue, uint16_t alpha);
QTLIBC_API QRgba64* QRgba64_FromRgba(unsigned char red, unsigned char green, unsigned char blue, unsigned char alpha);
QTLIBC_API QRgba64* QRgba64_FromArgb32(unsigned int rgb);
QTLIBC_API bool QRgba64_IsOpaque(const QRgba64* self);
QTLIBC_API bool QRgba64_IsTransparent(const QRgba64* self);
QTLIBC_API uint16_t QRgba64_Red(const QRgba64* self);
QTLIBC_API uint16_t QRgba64_Green(const QRgba64* self);
QTLIBC_API uint16_t QRgba64_Blue(const QRgba64* self);
QTLIBC_API uint16_t QRgba64_Alpha(const QRgba64* self);
QTLIBC_API void QRgba64_SetRed(QRgba64* self, uint16_t _red);
QTLIBC_API void QRgba64_SetGreen(QRgba64* self, uint16_t _green);
QTLIBC_API void QRgba64_SetBlue(QRgba64* self, uint16_t _blue);
QTLIBC_API void QRgba64_SetAlpha(QRgba64* self, uint16_t _alpha);
QTLIBC_API unsigned char QRgba64_Red8(const QRgba64* self);
QTLIBC_API unsigned char QRgba64_Green8(const QRgba64* self);
QTLIBC_API unsigned char QRgba64_Blue8(const QRgba64* self);
QTLIBC_API unsigned char QRgba64_Alpha8(const QRgba64* self);
QTLIBC_API unsigned int QRgba64_ToArgb32(const QRgba64* self);
QTLIBC_API uint16_t QRgba64_ToRgb16(const QRgba64* self);
QTLIBC_API QRgba64* QRgba64_Premultiplied(const QRgba64* self);
QTLIBC_API QRgba64* QRgba64_Unpremultiplied(const QRgba64* self);
QTLIBC_API unsigned long long QRgba64_ToUnsignedLongLong(const QRgba64* self);
QTLIBC_API void QRgba64_OperatorAssign(QRgba64* self, unsigned long long _rgba);
QTLIBC_API void QRgba64_Delete(QRgba64* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
