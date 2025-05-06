#pragma once
#ifndef SRCC_LIBQPROPERTY_H
#define SRCC_LIBQPROPERTY_H

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
typedef struct QMetaType QMetaType;
typedef struct QPropertyBindingError QPropertyBindingError;
typedef struct QPropertyBindingSourceLocation QPropertyBindingSourceLocation;
typedef struct QPropertyNotifier QPropertyNotifier;
typedef struct QPropertyObserver QPropertyObserver;
typedef struct QPropertyObserverBase QPropertyObserverBase;
typedef struct QUntypedBindable QUntypedBindable;
typedef struct QUntypedPropertyBinding QUntypedPropertyBinding;
#endif

#ifdef __cplusplus
typedef QPropertyBindingError::Type Type;                                     // C++ enum
typedef QPropertyObserverBase::ObserverTag ObserverTag;                       // C++ enum
typedef QUntypedPropertyBinding::BindingFunctionVTable BindingFunctionVTable; // C++ QFlags
typedef QtPrivate::BindableWarnings::Reason BindableWarningsReason;           // C++ enum
#else
typedef int BindableWarningsReason; // C ABI enum
typedef int ObserverTag;            // C ABI enum
typedef unsigned char Type;         // C ABI enum
#endif

QTLIBC_API QPropertyBindingSourceLocation* QPropertyBindingSourceLocation_new(QPropertyBindingSourceLocation* other);
QTLIBC_API QPropertyBindingSourceLocation* QPropertyBindingSourceLocation_new2(QPropertyBindingSourceLocation* other);
QTLIBC_API QPropertyBindingSourceLocation* QPropertyBindingSourceLocation_new3();
QTLIBC_API QPropertyBindingSourceLocation* QPropertyBindingSourceLocation_new4(QPropertyBindingSourceLocation* param1);
QTLIBC_API void QPropertyBindingSourceLocation_CopyAssign(QPropertyBindingSourceLocation* self, QPropertyBindingSourceLocation* other);
QTLIBC_API void QPropertyBindingSourceLocation_MoveAssign(QPropertyBindingSourceLocation* self, QPropertyBindingSourceLocation* other);
QTLIBC_API void QPropertyBindingSourceLocation_Delete(QPropertyBindingSourceLocation* self);

QTLIBC_API QPropertyBindingError* QPropertyBindingError_new();
QTLIBC_API QPropertyBindingError* QPropertyBindingError_new2(int typeVal);
QTLIBC_API QPropertyBindingError* QPropertyBindingError_new3(QPropertyBindingError* other);
QTLIBC_API QPropertyBindingError* QPropertyBindingError_new4(int typeVal, libqt_string description);
QTLIBC_API void QPropertyBindingError_OperatorAssign(QPropertyBindingError* self, QPropertyBindingError* other);
QTLIBC_API bool QPropertyBindingError_HasError(const QPropertyBindingError* self);
QTLIBC_API int QPropertyBindingError_Type(const QPropertyBindingError* self);
QTLIBC_API libqt_string QPropertyBindingError_Description(const QPropertyBindingError* self);
QTLIBC_API void QPropertyBindingError_Delete(QPropertyBindingError* self);

QTLIBC_API QUntypedPropertyBinding* QUntypedPropertyBinding_new();
QTLIBC_API QUntypedPropertyBinding* QUntypedPropertyBinding_new2(QUntypedPropertyBinding* other);
QTLIBC_API void QUntypedPropertyBinding_OperatorAssign(QUntypedPropertyBinding* self, QUntypedPropertyBinding* other);
QTLIBC_API bool QUntypedPropertyBinding_IsNull(const QUntypedPropertyBinding* self);
QTLIBC_API QPropertyBindingError* QUntypedPropertyBinding_Error(const QUntypedPropertyBinding* self);
QTLIBC_API QMetaType* QUntypedPropertyBinding_ValueMetaType(const QUntypedPropertyBinding* self);
QTLIBC_API void QUntypedPropertyBinding_Delete(QUntypedPropertyBinding* self);

QTLIBC_API QPropertyObserverBase* QPropertyObserverBase_new();
QTLIBC_API QPropertyObserverBase* QPropertyObserverBase_new2(QPropertyObserverBase* param1);
QTLIBC_API void QPropertyObserverBase_Delete(QPropertyObserverBase* self);

QTLIBC_API QPropertyObserver* QPropertyObserver_new();
QTLIBC_API void QPropertyObserver_Delete(QPropertyObserver* self);

QTLIBC_API QPropertyNotifier* QPropertyNotifier_new();
QTLIBC_API void QPropertyNotifier_Delete(QPropertyNotifier* self);

QTLIBC_API QUntypedBindable* QUntypedBindable_new(QUntypedBindable* other);
QTLIBC_API QUntypedBindable* QUntypedBindable_new2(QUntypedBindable* other);
QTLIBC_API QUntypedBindable* QUntypedBindable_new3();
QTLIBC_API QUntypedBindable* QUntypedBindable_new4(QUntypedBindable* param1);
QTLIBC_API void QUntypedBindable_CopyAssign(QUntypedBindable* self, QUntypedBindable* other);
QTLIBC_API void QUntypedBindable_MoveAssign(QUntypedBindable* self, QUntypedBindable* other);
QTLIBC_API bool QUntypedBindable_IsValid(const QUntypedBindable* self);
QTLIBC_API bool QUntypedBindable_IsBindable(const QUntypedBindable* self);
QTLIBC_API bool QUntypedBindable_IsReadOnly(const QUntypedBindable* self);
QTLIBC_API QUntypedPropertyBinding* QUntypedBindable_MakeBinding(const QUntypedBindable* self);
QTLIBC_API QUntypedPropertyBinding* QUntypedBindable_TakeBinding(QUntypedBindable* self);
QTLIBC_API void QUntypedBindable_Observe(const QUntypedBindable* self, QPropertyObserver* observer);
QTLIBC_API QUntypedPropertyBinding* QUntypedBindable_Binding(const QUntypedBindable* self);
QTLIBC_API bool QUntypedBindable_SetBinding(QUntypedBindable* self, QUntypedPropertyBinding* binding);
QTLIBC_API bool QUntypedBindable_HasBinding(const QUntypedBindable* self);
QTLIBC_API QMetaType* QUntypedBindable_MetaType(const QUntypedBindable* self);
QTLIBC_API QUntypedPropertyBinding* QUntypedBindable_MakeBinding1(const QUntypedBindable* self, QPropertyBindingSourceLocation* location);
QTLIBC_API void QUntypedBindable_Delete(QUntypedBindable* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
