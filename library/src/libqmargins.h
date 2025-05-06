#pragma once
#ifndef SRCC_LIBQMARGINS_H
#define SRCC_LIBQMARGINS_H

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
typedef struct QMargins QMargins;
typedef struct QMarginsF QMarginsF;
#endif

QTLIBC_API QMargins* QMargins_new(QMargins* other);
QTLIBC_API QMargins* QMargins_new2(QMargins* other);
QTLIBC_API QMargins* QMargins_new3();
QTLIBC_API QMargins* QMargins_new4(int left, int top, int right, int bottom);
QTLIBC_API QMargins* QMargins_new5(QMargins* param1);
QTLIBC_API void QMargins_CopyAssign(QMargins* self, QMargins* other);
QTLIBC_API void QMargins_MoveAssign(QMargins* self, QMargins* other);
QTLIBC_API bool QMargins_IsNull(const QMargins* self);
QTLIBC_API int QMargins_Left(const QMargins* self);
QTLIBC_API int QMargins_Top(const QMargins* self);
QTLIBC_API int QMargins_Right(const QMargins* self);
QTLIBC_API int QMargins_Bottom(const QMargins* self);
QTLIBC_API void QMargins_SetLeft(QMargins* self, int left);
QTLIBC_API void QMargins_SetTop(QMargins* self, int top);
QTLIBC_API void QMargins_SetRight(QMargins* self, int right);
QTLIBC_API void QMargins_SetBottom(QMargins* self, int bottom);
QTLIBC_API QMargins* QMargins_OperatorPlusAssign(QMargins* self, QMargins* margins);
QTLIBC_API QMargins* QMargins_OperatorMinusAssign(QMargins* self, QMargins* margins);
QTLIBC_API QMargins* QMargins_OperatorPlusAssignWithInt(QMargins* self, int param1);
QTLIBC_API QMargins* QMargins_OperatorMinusAssignWithInt(QMargins* self, int param1);
QTLIBC_API QMargins* QMargins_OperatorMultiplyAssign(QMargins* self, int param1);
QTLIBC_API QMargins* QMargins_OperatorDivideAssign(QMargins* self, int param1);
QTLIBC_API QMargins* QMargins_OperatorMultiplyAssignWithDouble(QMargins* self, double param1);
QTLIBC_API QMargins* QMargins_OperatorDivideAssignWithDouble(QMargins* self, double param1);
QTLIBC_API QMarginsF* QMargins_ToMarginsF(const QMargins* self);
QTLIBC_API void QMargins_Delete(QMargins* self);

QTLIBC_API QMarginsF* QMarginsF_new(QMarginsF* other);
QTLIBC_API QMarginsF* QMarginsF_new2(QMarginsF* other);
QTLIBC_API QMarginsF* QMarginsF_new3();
QTLIBC_API QMarginsF* QMarginsF_new4(double left, double top, double right, double bottom);
QTLIBC_API QMarginsF* QMarginsF_new5(QMargins* margins);
QTLIBC_API QMarginsF* QMarginsF_new6(QMarginsF* param1);
QTLIBC_API void QMarginsF_CopyAssign(QMarginsF* self, QMarginsF* other);
QTLIBC_API void QMarginsF_MoveAssign(QMarginsF* self, QMarginsF* other);
QTLIBC_API bool QMarginsF_IsNull(const QMarginsF* self);
QTLIBC_API double QMarginsF_Left(const QMarginsF* self);
QTLIBC_API double QMarginsF_Top(const QMarginsF* self);
QTLIBC_API double QMarginsF_Right(const QMarginsF* self);
QTLIBC_API double QMarginsF_Bottom(const QMarginsF* self);
QTLIBC_API void QMarginsF_SetLeft(QMarginsF* self, double aleft);
QTLIBC_API void QMarginsF_SetTop(QMarginsF* self, double atop);
QTLIBC_API void QMarginsF_SetRight(QMarginsF* self, double aright);
QTLIBC_API void QMarginsF_SetBottom(QMarginsF* self, double abottom);
QTLIBC_API QMarginsF* QMarginsF_OperatorPlusAssign(QMarginsF* self, QMarginsF* margins);
QTLIBC_API QMarginsF* QMarginsF_OperatorMinusAssign(QMarginsF* self, QMarginsF* margins);
QTLIBC_API QMarginsF* QMarginsF_OperatorPlusAssignWithAddend(QMarginsF* self, double addend);
QTLIBC_API QMarginsF* QMarginsF_OperatorMinusAssignWithSubtrahend(QMarginsF* self, double subtrahend);
QTLIBC_API QMarginsF* QMarginsF_OperatorMultiplyAssign(QMarginsF* self, double factor);
QTLIBC_API QMarginsF* QMarginsF_OperatorDivideAssign(QMarginsF* self, double divisor);
QTLIBC_API QMargins* QMarginsF_ToMargins(const QMarginsF* self);
QTLIBC_API void QMarginsF_Delete(QMarginsF* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
