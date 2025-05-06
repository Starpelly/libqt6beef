#pragma once
#ifndef SRC_QTC_LIBQSIZEPOLICY_H
#define SRC_QTC_LIBQSIZEPOLICY_H

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
typedef struct QSizePolicy QSizePolicy;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QSizePolicy::ControlType ControlType;       // C++ enum
typedef QSizePolicy::ControlTypes ControlTypes;     // C++ QFlags
typedef QSizePolicy::Policy Policy;                 // C++ enum
typedef QSizePolicy::PolicyFlag PolicyFlag;         // C++ enum
typedef QSizePolicy::QtGadgetHelper QtGadgetHelper; // C++ QFlags
#else
typedef int ControlType;     // C ABI enum
typedef int ControlTypes;    // C ABI QFlags
typedef int Policy;          // C ABI enum
typedef int PolicyFlag;      // C ABI enum
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QTLIBC_API QSizePolicy* QSizePolicy_new(QSizePolicy* other);
QTLIBC_API QSizePolicy* QSizePolicy_new2(QSizePolicy* other);
QTLIBC_API QSizePolicy* QSizePolicy_new3();
QTLIBC_API QSizePolicy* QSizePolicy_new4(int horizontal, int vertical);
QTLIBC_API QSizePolicy* QSizePolicy_new5(QSizePolicy* param1);
QTLIBC_API QSizePolicy* QSizePolicy_new6(int horizontal, int vertical, int typeVal);
QTLIBC_API void QSizePolicy_CopyAssign(QSizePolicy* self, QSizePolicy* other);
QTLIBC_API void QSizePolicy_MoveAssign(QSizePolicy* self, QSizePolicy* other);
QTLIBC_API int QSizePolicy_HorizontalPolicy(const QSizePolicy* self);
QTLIBC_API int QSizePolicy_VerticalPolicy(const QSizePolicy* self);
QTLIBC_API int QSizePolicy_ControlType(const QSizePolicy* self);
QTLIBC_API void QSizePolicy_SetHorizontalPolicy(QSizePolicy* self, int d);
QTLIBC_API void QSizePolicy_SetVerticalPolicy(QSizePolicy* self, int d);
QTLIBC_API void QSizePolicy_SetControlType(QSizePolicy* self, int typeVal);
QTLIBC_API int QSizePolicy_ExpandingDirections(const QSizePolicy* self);
QTLIBC_API void QSizePolicy_SetHeightForWidth(QSizePolicy* self, bool b);
QTLIBC_API bool QSizePolicy_HasHeightForWidth(const QSizePolicy* self);
QTLIBC_API void QSizePolicy_SetWidthForHeight(QSizePolicy* self, bool b);
QTLIBC_API bool QSizePolicy_HasWidthForHeight(const QSizePolicy* self);
QTLIBC_API bool QSizePolicy_OperatorEqual(const QSizePolicy* self, QSizePolicy* s);
QTLIBC_API bool QSizePolicy_OperatorNotEqual(const QSizePolicy* self, QSizePolicy* s);
QTLIBC_API QVariant* QSizePolicy_ToQVariant(const QSizePolicy* self);
QTLIBC_API int QSizePolicy_HorizontalStretch(const QSizePolicy* self);
QTLIBC_API int QSizePolicy_VerticalStretch(const QSizePolicy* self);
QTLIBC_API void QSizePolicy_SetHorizontalStretch(QSizePolicy* self, int stretchFactor);
QTLIBC_API void QSizePolicy_SetVerticalStretch(QSizePolicy* self, int stretchFactor);
QTLIBC_API bool QSizePolicy_RetainSizeWhenHidden(const QSizePolicy* self);
QTLIBC_API void QSizePolicy_SetRetainSizeWhenHidden(QSizePolicy* self, bool retainSize);
QTLIBC_API void QSizePolicy_Transpose(QSizePolicy* self);
QTLIBC_API QSizePolicy* QSizePolicy_Transposed(const QSizePolicy* self);
QTLIBC_API void QSizePolicy_Delete(QSizePolicy* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
