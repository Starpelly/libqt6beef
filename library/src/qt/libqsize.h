#pragma once
#ifndef SRC_QTC_LIBQSIZE_H
#define SRC_QTC_LIBQSIZE_H

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
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
#endif

QTLIBC_API QSize* QSize_new(QSize* other);
QTLIBC_API QSize* QSize_new2(QSize* other);
QTLIBC_API QSize* QSize_new3();
QTLIBC_API QSize* QSize_new4(int w, int h);
QTLIBC_API QSize* QSize_new5(QSize* param1);
QTLIBC_API void QSize_CopyAssign(QSize* self, QSize* other);
QTLIBC_API void QSize_MoveAssign(QSize* self, QSize* other);
QTLIBC_API bool QSize_IsNull(const QSize* self);
QTLIBC_API bool QSize_IsEmpty(const QSize* self);
QTLIBC_API bool QSize_IsValid(const QSize* self);
QTLIBC_API int QSize_Width(const QSize* self);
QTLIBC_API int QSize_Height(const QSize* self);
QTLIBC_API void QSize_SetWidth(QSize* self, int w);
QTLIBC_API void QSize_SetHeight(QSize* self, int h);
QTLIBC_API void QSize_Transpose(QSize* self);
QTLIBC_API QSize* QSize_Transposed(const QSize* self);
QTLIBC_API void QSize_Scale(QSize* self, int w, int h, int mode);
QTLIBC_API void QSize_Scale2(QSize* self, QSize* s, int mode);
QTLIBC_API QSize* QSize_Scaled(const QSize* self, int w, int h, int mode);
QTLIBC_API QSize* QSize_Scaled2(const QSize* self, QSize* s, int mode);
QTLIBC_API QSize* QSize_ExpandedTo(const QSize* self, QSize* param1);
QTLIBC_API QSize* QSize_BoundedTo(const QSize* self, QSize* param1);
QTLIBC_API QSize* QSize_GrownBy(const QSize* self, QMargins* m);
QTLIBC_API QSize* QSize_ShrunkBy(const QSize* self, QMargins* m);
QTLIBC_API QSize* QSize_OperatorPlusAssign(QSize* self, QSize* param1);
QTLIBC_API QSize* QSize_OperatorMinusAssign(QSize* self, QSize* param1);
QTLIBC_API QSize* QSize_OperatorMultiplyAssign(QSize* self, double c);
QTLIBC_API QSize* QSize_OperatorDivideAssign(QSize* self, double c);
QTLIBC_API QSizeF* QSize_ToSizeF(const QSize* self);
QTLIBC_API void QSize_Delete(QSize* self);

QTLIBC_API QSizeF* QSizeF_new(QSizeF* other);
QTLIBC_API QSizeF* QSizeF_new2(QSizeF* other);
QTLIBC_API QSizeF* QSizeF_new3();
QTLIBC_API QSizeF* QSizeF_new4(QSize* sz);
QTLIBC_API QSizeF* QSizeF_new5(double w, double h);
QTLIBC_API QSizeF* QSizeF_new6(QSizeF* param1);
QTLIBC_API void QSizeF_CopyAssign(QSizeF* self, QSizeF* other);
QTLIBC_API void QSizeF_MoveAssign(QSizeF* self, QSizeF* other);
QTLIBC_API bool QSizeF_IsNull(const QSizeF* self);
QTLIBC_API bool QSizeF_IsEmpty(const QSizeF* self);
QTLIBC_API bool QSizeF_IsValid(const QSizeF* self);
QTLIBC_API double QSizeF_Width(const QSizeF* self);
QTLIBC_API double QSizeF_Height(const QSizeF* self);
QTLIBC_API void QSizeF_SetWidth(QSizeF* self, double w);
QTLIBC_API void QSizeF_SetHeight(QSizeF* self, double h);
QTLIBC_API void QSizeF_Transpose(QSizeF* self);
QTLIBC_API QSizeF* QSizeF_Transposed(const QSizeF* self);
QTLIBC_API void QSizeF_Scale(QSizeF* self, double w, double h, int mode);
QTLIBC_API void QSizeF_Scale2(QSizeF* self, QSizeF* s, int mode);
QTLIBC_API QSizeF* QSizeF_Scaled(const QSizeF* self, double w, double h, int mode);
QTLIBC_API QSizeF* QSizeF_Scaled2(const QSizeF* self, QSizeF* s, int mode);
QTLIBC_API QSizeF* QSizeF_ExpandedTo(const QSizeF* self, QSizeF* param1);
QTLIBC_API QSizeF* QSizeF_BoundedTo(const QSizeF* self, QSizeF* param1);
QTLIBC_API QSizeF* QSizeF_GrownBy(const QSizeF* self, QMarginsF* m);
QTLIBC_API QSizeF* QSizeF_ShrunkBy(const QSizeF* self, QMarginsF* m);
QTLIBC_API QSizeF* QSizeF_OperatorPlusAssign(QSizeF* self, QSizeF* param1);
QTLIBC_API QSizeF* QSizeF_OperatorMinusAssign(QSizeF* self, QSizeF* param1);
QTLIBC_API QSizeF* QSizeF_OperatorMultiplyAssign(QSizeF* self, double c);
QTLIBC_API QSizeF* QSizeF_OperatorDivideAssign(QSizeF* self, double c);
QTLIBC_API QSize* QSizeF_ToSize(const QSizeF* self);
QTLIBC_API void QSizeF_Delete(QSizeF* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
