#pragma once
#ifndef SRC_QTC_LIBQEASINGCURVE_H
#define SRC_QTC_LIBQEASINGCURVE_H

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
typedef struct QEasingCurve QEasingCurve;
typedef struct QPointF QPointF;
#endif

#ifdef __cplusplus
typedef QEasingCurve::EasingFunction EasingFunction; // C++ QFlags
typedef QEasingCurve::QtGadgetHelper QtGadgetHelper; // C++ QFlags
typedef QEasingCurve::Type Type;                     // C++ enum
#else
typedef unsigned char Type;  // C ABI enum
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QTLIBC_API QEasingCurve* QEasingCurve_new();
QTLIBC_API QEasingCurve* QEasingCurve_new2(QEasingCurve* other);
QTLIBC_API QEasingCurve* QEasingCurve_new3(int typeVal);
QTLIBC_API void QEasingCurve_OperatorAssign(QEasingCurve* self, QEasingCurve* other);
QTLIBC_API void QEasingCurve_Swap(QEasingCurve* self, QEasingCurve* other);
QTLIBC_API bool QEasingCurve_OperatorEqual(const QEasingCurve* self, QEasingCurve* other);
QTLIBC_API bool QEasingCurve_OperatorNotEqual(const QEasingCurve* self, QEasingCurve* other);
QTLIBC_API double QEasingCurve_Amplitude(const QEasingCurve* self);
QTLIBC_API void QEasingCurve_SetAmplitude(QEasingCurve* self, double amplitude);
QTLIBC_API double QEasingCurve_Period(const QEasingCurve* self);
QTLIBC_API void QEasingCurve_SetPeriod(QEasingCurve* self, double period);
QTLIBC_API double QEasingCurve_Overshoot(const QEasingCurve* self);
QTLIBC_API void QEasingCurve_SetOvershoot(QEasingCurve* self, double overshoot);
QTLIBC_API void QEasingCurve_AddCubicBezierSegment(QEasingCurve* self, QPointF* c1, QPointF* c2, QPointF* endPoint);
QTLIBC_API void QEasingCurve_AddTCBSegment(QEasingCurve* self, QPointF* nextPoint, double t, double c, double b);
QTLIBC_API libqt_list /* of QPointF* */ QEasingCurve_ToCubicSpline(const QEasingCurve* self);
QTLIBC_API int QEasingCurve_Type(const QEasingCurve* self);
QTLIBC_API void QEasingCurve_SetType(QEasingCurve* self, int typeVal);
QTLIBC_API double QEasingCurve_ValueForProgress(const QEasingCurve* self, double progress);
QTLIBC_API void QEasingCurve_Delete(QEasingCurve* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
