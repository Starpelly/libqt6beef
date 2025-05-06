#pragma once
#ifndef SRCC_LIBQBRUSH_H
#define SRCC_LIBQBRUSH_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QGradient__QGradientData)
typedef QGradient::QGradientData QGradient__QGradientData;
#endif
#else
typedef struct QBrush QBrush;
typedef struct QBrushData QBrushData;
typedef struct QColor QColor;
typedef struct QConicalGradient QConicalGradient;
typedef struct QGradient QGradient;
typedef struct QGradient__QGradientData QGradient__QGradientData;
typedef struct QImage QImage;
typedef struct QLinearGradient QLinearGradient;
typedef struct QPixmap QPixmap;
typedef struct QPointF QPointF;
typedef struct QRadialGradient QRadialGradient;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QBrush::DataPtr DataPtr;                        // C++ QFlags
typedef QGradient::CoordinateMode CoordinateMode;       // C++ enum
typedef QGradient::InterpolationMode InterpolationMode; // C++ enum
typedef QGradient::Preset Preset;                       // C++ enum
typedef QGradient::QtGadgetHelper QtGadgetHelper;       // C++ QFlags
typedef QGradient::Spread Spread;                       // C++ enum
typedef QGradient::Type Type;                           // C++ enum
#else
typedef int CoordinateMode;    // C ABI enum
typedef int InterpolationMode; // C ABI enum
typedef int Preset;            // C ABI enum
typedef int Spread;            // C ABI enum
typedef unsigned char Type;    // C ABI enum
typedef void QtGadgetHelper;   // C ABI QFlags
#endif

QTLIBC_API QBrush* QBrush_new();
QTLIBC_API QBrush* QBrush_new2(int bs);
QTLIBC_API QBrush* QBrush_new3(QColor* color);
QTLIBC_API QBrush* QBrush_new4(int color);
QTLIBC_API QBrush* QBrush_new5(QColor* color, QPixmap* pixmap);
QTLIBC_API QBrush* QBrush_new6(int color, QPixmap* pixmap);
QTLIBC_API QBrush* QBrush_new7(QPixmap* pixmap);
QTLIBC_API QBrush* QBrush_new8(QImage* image);
QTLIBC_API QBrush* QBrush_new9(QBrush* brush);
QTLIBC_API QBrush* QBrush_new10(QGradient* gradient);
QTLIBC_API QBrush* QBrush_new11(QColor* color, int bs);
QTLIBC_API QBrush* QBrush_new12(int color, int bs);
QTLIBC_API void QBrush_OperatorAssign(QBrush* self, QBrush* brush);
QTLIBC_API void QBrush_Swap(QBrush* self, QBrush* other);
QTLIBC_API QVariant* QBrush_ToQVariant(const QBrush* self);
QTLIBC_API int QBrush_Style(const QBrush* self);
QTLIBC_API void QBrush_SetStyle(QBrush* self, int style);
QTLIBC_API QTransform* QBrush_Transform(const QBrush* self);
QTLIBC_API void QBrush_SetTransform(QBrush* self, QTransform* transform);
QTLIBC_API QPixmap* QBrush_Texture(const QBrush* self);
QTLIBC_API void QBrush_SetTexture(QBrush* self, QPixmap* pixmap);
QTLIBC_API QImage* QBrush_TextureImage(const QBrush* self);
QTLIBC_API void QBrush_SetTextureImage(QBrush* self, QImage* image);
QTLIBC_API QColor* QBrush_Color(const QBrush* self);
QTLIBC_API void QBrush_SetColor(QBrush* self, QColor* color);
QTLIBC_API void QBrush_SetColorWithColor(QBrush* self, int color);
QTLIBC_API QGradient* QBrush_Gradient(const QBrush* self);
QTLIBC_API bool QBrush_IsOpaque(const QBrush* self);
QTLIBC_API bool QBrush_OperatorEqual(const QBrush* self, QBrush* b);
QTLIBC_API bool QBrush_OperatorNotEqual(const QBrush* self, QBrush* b);
QTLIBC_API bool QBrush_IsDetached(const QBrush* self);
QTLIBC_API void QBrush_Delete(QBrush* self);

QTLIBC_API QBrushData* QBrushData_new(QBrushData* param1);
QTLIBC_API void QBrushData_OperatorAssign(QBrushData* self, QBrushData* param1);
QTLIBC_API void QBrushData_Delete(QBrushData* self);

QTLIBC_API QGradient* QGradient_new();
QTLIBC_API QGradient* QGradient_new2(int param1);
QTLIBC_API QGradient* QGradient_new3(QGradient* param1);
QTLIBC_API int QGradient_Type(const QGradient* self);
QTLIBC_API void QGradient_SetSpread(QGradient* self, int spread);
QTLIBC_API int QGradient_Spread(const QGradient* self);
QTLIBC_API void QGradient_SetColorAt(QGradient* self, double pos, QColor* color);
QTLIBC_API libqt_list /* of libqt_pair  tuple of double and QColor*  */ QGradient_Stops(const QGradient* self);
QTLIBC_API int QGradient_CoordinateMode(const QGradient* self);
QTLIBC_API void QGradient_SetCoordinateMode(QGradient* self, int mode);
QTLIBC_API int QGradient_InterpolationMode(const QGradient* self);
QTLIBC_API void QGradient_SetInterpolationMode(QGradient* self, int mode);
QTLIBC_API bool QGradient_OperatorEqual(const QGradient* self, QGradient* gradient);
QTLIBC_API bool QGradient_OperatorNotEqual(const QGradient* self, QGradient* other);
QTLIBC_API void QGradient_Delete(QGradient* self);

QTLIBC_API QLinearGradient* QLinearGradient_new();
QTLIBC_API QLinearGradient* QLinearGradient_new2(QPointF* start, QPointF* finalStop);
QTLIBC_API QLinearGradient* QLinearGradient_new3(double xStart, double yStart, double xFinalStop, double yFinalStop);
QTLIBC_API QLinearGradient* QLinearGradient_new4(QLinearGradient* param1);
QTLIBC_API QPointF* QLinearGradient_Start(const QLinearGradient* self);
QTLIBC_API void QLinearGradient_SetStart(QLinearGradient* self, QPointF* start);
QTLIBC_API void QLinearGradient_SetStart2(QLinearGradient* self, double x, double y);
QTLIBC_API QPointF* QLinearGradient_FinalStop(const QLinearGradient* self);
QTLIBC_API void QLinearGradient_SetFinalStop(QLinearGradient* self, QPointF* stop);
QTLIBC_API void QLinearGradient_SetFinalStop2(QLinearGradient* self, double x, double y);
QTLIBC_API void QLinearGradient_Delete(QLinearGradient* self);

QTLIBC_API QRadialGradient* QRadialGradient_new();
QTLIBC_API QRadialGradient* QRadialGradient_new2(QPointF* center, double radius, QPointF* focalPoint);
QTLIBC_API QRadialGradient* QRadialGradient_new3(double cx, double cy, double radius, double fx, double fy);
QTLIBC_API QRadialGradient* QRadialGradient_new4(QPointF* center, double radius);
QTLIBC_API QRadialGradient* QRadialGradient_new5(double cx, double cy, double radius);
QTLIBC_API QRadialGradient* QRadialGradient_new6(QPointF* center, double centerRadius, QPointF* focalPoint, double focalRadius);
QTLIBC_API QRadialGradient* QRadialGradient_new7(double cx, double cy, double centerRadius, double fx, double fy, double focalRadius);
QTLIBC_API QRadialGradient* QRadialGradient_new8(QRadialGradient* param1);
QTLIBC_API QPointF* QRadialGradient_Center(const QRadialGradient* self);
QTLIBC_API void QRadialGradient_SetCenter(QRadialGradient* self, QPointF* center);
QTLIBC_API void QRadialGradient_SetCenter2(QRadialGradient* self, double x, double y);
QTLIBC_API QPointF* QRadialGradient_FocalPoint(const QRadialGradient* self);
QTLIBC_API void QRadialGradient_SetFocalPoint(QRadialGradient* self, QPointF* focalPoint);
QTLIBC_API void QRadialGradient_SetFocalPoint2(QRadialGradient* self, double x, double y);
QTLIBC_API double QRadialGradient_Radius(const QRadialGradient* self);
QTLIBC_API void QRadialGradient_SetRadius(QRadialGradient* self, double radius);
QTLIBC_API double QRadialGradient_CenterRadius(const QRadialGradient* self);
QTLIBC_API void QRadialGradient_SetCenterRadius(QRadialGradient* self, double radius);
QTLIBC_API double QRadialGradient_FocalRadius(const QRadialGradient* self);
QTLIBC_API void QRadialGradient_SetFocalRadius(QRadialGradient* self, double radius);
QTLIBC_API void QRadialGradient_Delete(QRadialGradient* self);

QTLIBC_API QConicalGradient* QConicalGradient_new();
QTLIBC_API QConicalGradient* QConicalGradient_new2(QPointF* center, double startAngle);
QTLIBC_API QConicalGradient* QConicalGradient_new3(double cx, double cy, double startAngle);
QTLIBC_API QConicalGradient* QConicalGradient_new4(QConicalGradient* param1);
QTLIBC_API QPointF* QConicalGradient_Center(const QConicalGradient* self);
QTLIBC_API void QConicalGradient_SetCenter(QConicalGradient* self, QPointF* center);
QTLIBC_API void QConicalGradient_SetCenter2(QConicalGradient* self, double x, double y);
QTLIBC_API double QConicalGradient_Angle(const QConicalGradient* self);
QTLIBC_API void QConicalGradient_SetAngle(QConicalGradient* self, double angle);
QTLIBC_API void QConicalGradient_Delete(QConicalGradient* self);

QTLIBC_API QGradient__QGradientData* QGradient__QGradientData_new(QGradient__QGradientData* param1);
QTLIBC_API void QGradient__QGradientData_Delete(QGradient__QGradientData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
