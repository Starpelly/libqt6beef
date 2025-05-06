#pragma once
#ifndef SRCC_LIBQCOLOR_H
#define SRCC_LIBQCOLOR_H

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
typedef struct QAnyStringView QAnyStringView;
typedef struct QColor QColor;
typedef struct QRgba64 QRgba64;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QColor::NameFormat NameFormat; // C++ enum
typedef QColor::Spec Spec;             // C++ enum
#else
typedef int NameFormat; // C ABI enum
typedef int Spec;       // C ABI enum
#endif

QTLIBC_API QColor* QColor_new(QColor* other);
QTLIBC_API QColor* QColor_new2(QColor* other);
QTLIBC_API QColor* QColor_new3();
QTLIBC_API QColor* QColor_new4(int color);
QTLIBC_API QColor* QColor_new5(int r, int g, int b);
QTLIBC_API QColor* QColor_new6(unsigned int rgb);
QTLIBC_API QColor* QColor_new7(QRgba64* rgba64);
QTLIBC_API QColor* QColor_new8(libqt_string name);
QTLIBC_API QColor* QColor_new9(const char* aname);
QTLIBC_API QColor* QColor_new10(int spec);
QTLIBC_API QColor* QColor_new11(int spec, uint16_t a1, uint16_t a2, uint16_t a3, uint16_t a4);
QTLIBC_API QColor* QColor_new12(QColor* param1);
QTLIBC_API QColor* QColor_new13(int r, int g, int b, int a);
QTLIBC_API QColor* QColor_new14(int spec, uint16_t a1, uint16_t a2, uint16_t a3, uint16_t a4, uint16_t a5);
QTLIBC_API void QColor_CopyAssign(QColor* self, QColor* other);
QTLIBC_API void QColor_MoveAssign(QColor* self, QColor* other);
QTLIBC_API QColor* QColor_FromString(char* name);
QTLIBC_API void QColor_OperatorAssign(QColor* self, int color);
QTLIBC_API bool QColor_IsValid(const QColor* self);
QTLIBC_API libqt_string QColor_Name(const QColor* self);
QTLIBC_API void QColor_SetNamedColor(QColor* self, libqt_string name);
QTLIBC_API libqt_list /* of libqt_string */ QColor_ColorNames();
QTLIBC_API int QColor_Spec(const QColor* self);
QTLIBC_API int QColor_Alpha(const QColor* self);
QTLIBC_API void QColor_SetAlpha(QColor* self, int alpha);
QTLIBC_API float QColor_AlphaF(const QColor* self);
QTLIBC_API void QColor_SetAlphaF(QColor* self, float alpha);
QTLIBC_API int QColor_Red(const QColor* self);
QTLIBC_API int QColor_Green(const QColor* self);
QTLIBC_API int QColor_Blue(const QColor* self);
QTLIBC_API void QColor_SetRed(QColor* self, int red);
QTLIBC_API void QColor_SetGreen(QColor* self, int green);
QTLIBC_API void QColor_SetBlue(QColor* self, int blue);
QTLIBC_API float QColor_RedF(const QColor* self);
QTLIBC_API float QColor_GreenF(const QColor* self);
QTLIBC_API float QColor_BlueF(const QColor* self);
QTLIBC_API void QColor_SetRedF(QColor* self, float red);
QTLIBC_API void QColor_SetGreenF(QColor* self, float green);
QTLIBC_API void QColor_SetBlueF(QColor* self, float blue);
QTLIBC_API void QColor_GetRgb(const QColor* self, int* r, int* g, int* b);
QTLIBC_API void QColor_SetRgb(QColor* self, int r, int g, int b);
QTLIBC_API void QColor_GetRgbF(const QColor* self, float* r, float* g, float* b);
QTLIBC_API void QColor_SetRgbF(QColor* self, float r, float g, float b);
QTLIBC_API QRgba64* QColor_Rgba64(const QColor* self);
QTLIBC_API void QColor_SetRgba64(QColor* self, QRgba64* rgba);
QTLIBC_API unsigned int QColor_Rgba(const QColor* self);
QTLIBC_API void QColor_SetRgba(QColor* self, unsigned int rgba);
QTLIBC_API unsigned int QColor_Rgb(const QColor* self);
QTLIBC_API void QColor_SetRgbWithRgb(QColor* self, unsigned int rgb);
QTLIBC_API int QColor_Hue(const QColor* self);
QTLIBC_API int QColor_Saturation(const QColor* self);
QTLIBC_API int QColor_HsvHue(const QColor* self);
QTLIBC_API int QColor_HsvSaturation(const QColor* self);
QTLIBC_API int QColor_Value(const QColor* self);
QTLIBC_API float QColor_HueF(const QColor* self);
QTLIBC_API float QColor_SaturationF(const QColor* self);
QTLIBC_API float QColor_HsvHueF(const QColor* self);
QTLIBC_API float QColor_HsvSaturationF(const QColor* self);
QTLIBC_API float QColor_ValueF(const QColor* self);
QTLIBC_API void QColor_GetHsv(const QColor* self, int* h, int* s, int* v);
QTLIBC_API void QColor_SetHsv(QColor* self, int h, int s, int v);
QTLIBC_API void QColor_GetHsvF(const QColor* self, float* h, float* s, float* v);
QTLIBC_API void QColor_SetHsvF(QColor* self, float h, float s, float v);
QTLIBC_API int QColor_Cyan(const QColor* self);
QTLIBC_API int QColor_Magenta(const QColor* self);
QTLIBC_API int QColor_Yellow(const QColor* self);
QTLIBC_API int QColor_Black(const QColor* self);
QTLIBC_API float QColor_CyanF(const QColor* self);
QTLIBC_API float QColor_MagentaF(const QColor* self);
QTLIBC_API float QColor_YellowF(const QColor* self);
QTLIBC_API float QColor_BlackF(const QColor* self);
QTLIBC_API void QColor_GetCmyk(const QColor* self, int* c, int* m, int* y, int* k);
QTLIBC_API void QColor_SetCmyk(QColor* self, int c, int m, int y, int k);
QTLIBC_API void QColor_GetCmykF(const QColor* self, float* c, float* m, float* y, float* k);
QTLIBC_API void QColor_SetCmykF(QColor* self, float c, float m, float y, float k);
QTLIBC_API int QColor_HslHue(const QColor* self);
QTLIBC_API int QColor_HslSaturation(const QColor* self);
QTLIBC_API int QColor_Lightness(const QColor* self);
QTLIBC_API float QColor_HslHueF(const QColor* self);
QTLIBC_API float QColor_HslSaturationF(const QColor* self);
QTLIBC_API float QColor_LightnessF(const QColor* self);
QTLIBC_API void QColor_GetHsl(const QColor* self, int* h, int* s, int* l);
QTLIBC_API void QColor_SetHsl(QColor* self, int h, int s, int l);
QTLIBC_API void QColor_GetHslF(const QColor* self, float* h, float* s, float* l);
QTLIBC_API void QColor_SetHslF(QColor* self, float h, float s, float l);
QTLIBC_API QColor* QColor_ToRgb(const QColor* self);
QTLIBC_API QColor* QColor_ToHsv(const QColor* self);
QTLIBC_API QColor* QColor_ToCmyk(const QColor* self);
QTLIBC_API QColor* QColor_ToHsl(const QColor* self);
QTLIBC_API QColor* QColor_ToExtendedRgb(const QColor* self);
QTLIBC_API QColor* QColor_ConvertTo(const QColor* self, int colorSpec);
QTLIBC_API QColor* QColor_FromRgb(unsigned int rgb);
QTLIBC_API QColor* QColor_FromRgba(unsigned int rgba);
QTLIBC_API QColor* QColor_FromRgb2(int r, int g, int b);
QTLIBC_API QColor* QColor_FromRgbF(float r, float g, float b);
QTLIBC_API QColor* QColor_FromRgba64(uint16_t r, uint16_t g, uint16_t b);
QTLIBC_API QColor* QColor_FromRgba64WithRgba(QRgba64* rgba);
QTLIBC_API QColor* QColor_FromHsv(int h, int s, int v);
QTLIBC_API QColor* QColor_FromHsvF(float h, float s, float v);
QTLIBC_API QColor* QColor_FromCmyk(int c, int m, int y, int k);
QTLIBC_API QColor* QColor_FromCmykF(float c, float m, float y, float k);
QTLIBC_API QColor* QColor_FromHsl(int h, int s, int l);
QTLIBC_API QColor* QColor_FromHslF(float h, float s, float l);
QTLIBC_API QColor* QColor_Lighter(const QColor* self);
QTLIBC_API QColor* QColor_Darker(const QColor* self);
QTLIBC_API bool QColor_OperatorEqual(const QColor* self, QColor* c);
QTLIBC_API bool QColor_OperatorNotEqual(const QColor* self, QColor* c);
QTLIBC_API QVariant* QColor_ToQVariant(const QColor* self);
QTLIBC_API bool QColor_IsValidColor(libqt_string name);
QTLIBC_API bool QColor_IsValidColorName(char* param1);
QTLIBC_API libqt_string QColor_Name1(const QColor* self, int format);
QTLIBC_API void QColor_GetRgb4(const QColor* self, int* r, int* g, int* b, int* a);
QTLIBC_API void QColor_SetRgb4(QColor* self, int r, int g, int b, int a);
QTLIBC_API void QColor_GetRgbF4(const QColor* self, float* r, float* g, float* b, float* a);
QTLIBC_API void QColor_SetRgbF4(QColor* self, float r, float g, float b, float a);
QTLIBC_API void QColor_GetHsv4(const QColor* self, int* h, int* s, int* v, int* a);
QTLIBC_API void QColor_SetHsv4(QColor* self, int h, int s, int v, int a);
QTLIBC_API void QColor_GetHsvF4(const QColor* self, float* h, float* s, float* v, float* a);
QTLIBC_API void QColor_SetHsvF4(QColor* self, float h, float s, float v, float a);
QTLIBC_API void QColor_GetCmyk5(const QColor* self, int* c, int* m, int* y, int* k, int* a);
QTLIBC_API void QColor_SetCmyk5(QColor* self, int c, int m, int y, int k, int a);
QTLIBC_API void QColor_GetCmykF5(const QColor* self, float* c, float* m, float* y, float* k, float* a);
QTLIBC_API void QColor_SetCmykF5(QColor* self, float c, float m, float y, float k, float a);
QTLIBC_API void QColor_GetHsl4(const QColor* self, int* h, int* s, int* l, int* a);
QTLIBC_API void QColor_SetHsl4(QColor* self, int h, int s, int l, int a);
QTLIBC_API void QColor_GetHslF4(const QColor* self, float* h, float* s, float* l, float* a);
QTLIBC_API void QColor_SetHslF4(QColor* self, float h, float s, float l, float a);
QTLIBC_API QColor* QColor_FromRgb4(int r, int g, int b, int a);
QTLIBC_API QColor* QColor_FromRgbF4(float r, float g, float b, float a);
QTLIBC_API QColor* QColor_FromRgba644(uint16_t r, uint16_t g, uint16_t b, uint16_t a);
QTLIBC_API QColor* QColor_FromHsv4(int h, int s, int v, int a);
QTLIBC_API QColor* QColor_FromHsvF4(float h, float s, float v, float a);
QTLIBC_API QColor* QColor_FromCmyk5(int c, int m, int y, int k, int a);
QTLIBC_API QColor* QColor_FromCmykF5(float c, float m, float y, float k, float a);
QTLIBC_API QColor* QColor_FromHsl4(int h, int s, int l, int a);
QTLIBC_API QColor* QColor_FromHslF4(float h, float s, float l, float a);
QTLIBC_API QColor* QColor_Lighter1(const QColor* self, int f);
QTLIBC_API QColor* QColor_Darker1(const QColor* self, int f);
QTLIBC_API void QColor_Delete(QColor* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
