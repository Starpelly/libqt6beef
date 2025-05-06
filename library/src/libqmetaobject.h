#pragma once
#ifndef SRCC_LIBQMETAOBJECT_H
#define SRCC_LIBQMETAOBJECT_H

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
typedef struct QGenericArgument QGenericArgument;
typedef struct QGenericReturnArgument QGenericReturnArgument;
typedef struct QMetaClassInfo QMetaClassInfo;
typedef struct QMetaEnum QMetaEnum;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaProperty QMetaProperty;
typedef struct QMetaType QMetaType;
typedef struct QObject QObject;
typedef struct QUntypedBindable QUntypedBindable;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QMetaMethod::Access Access;         // C++ enum
typedef QMetaMethod::Attributes Attributes; // C++ enum
typedef QMetaMethod::MethodType MethodType; // C++ enum
#else
typedef int Access;     // C ABI enum
typedef int Attributes; // C ABI enum
typedef int MethodType; // C ABI enum
#endif

QTLIBC_API QMetaMethod* QMetaMethod_new(QMetaMethod* other);
QTLIBC_API QMetaMethod* QMetaMethod_new2(QMetaMethod* other);
QTLIBC_API QMetaMethod* QMetaMethod_new3();
QTLIBC_API QMetaMethod* QMetaMethod_new4(QMetaMethod* param1);
QTLIBC_API void QMetaMethod_CopyAssign(QMetaMethod* self, QMetaMethod* other);
QTLIBC_API void QMetaMethod_MoveAssign(QMetaMethod* self, QMetaMethod* other);
QTLIBC_API libqt_string QMetaMethod_MethodSignature(const QMetaMethod* self);
QTLIBC_API libqt_string QMetaMethod_Name(const QMetaMethod* self);
QTLIBC_API const char* QMetaMethod_TypeName(const QMetaMethod* self);
QTLIBC_API int QMetaMethod_ReturnType(const QMetaMethod* self);
QTLIBC_API QMetaType* QMetaMethod_ReturnMetaType(const QMetaMethod* self);
QTLIBC_API int QMetaMethod_ParameterCount(const QMetaMethod* self);
QTLIBC_API int QMetaMethod_ParameterType(const QMetaMethod* self, int index);
QTLIBC_API QMetaType* QMetaMethod_ParameterMetaType(const QMetaMethod* self, int index);
QTLIBC_API void QMetaMethod_GetParameterTypes(const QMetaMethod* self, int* types);
QTLIBC_API libqt_list /* of libqt_string */ QMetaMethod_ParameterTypes(const QMetaMethod* self);
QTLIBC_API libqt_string QMetaMethod_ParameterTypeName(const QMetaMethod* self, int index);
QTLIBC_API libqt_list /* of libqt_string */ QMetaMethod_ParameterNames(const QMetaMethod* self);
QTLIBC_API const char* QMetaMethod_Tag(const QMetaMethod* self);
QTLIBC_API int QMetaMethod_Access(const QMetaMethod* self);
QTLIBC_API int QMetaMethod_MethodType(const QMetaMethod* self);
QTLIBC_API int QMetaMethod_Attributes(const QMetaMethod* self);
QTLIBC_API int QMetaMethod_MethodIndex(const QMetaMethod* self);
QTLIBC_API int QMetaMethod_RelativeMethodIndex(const QMetaMethod* self);
QTLIBC_API int QMetaMethod_Revision(const QMetaMethod* self);
QTLIBC_API bool QMetaMethod_IsConst(const QMetaMethod* self);
QTLIBC_API QMetaObject* QMetaMethod_EnclosingMetaObject(const QMetaMethod* self);
QTLIBC_API bool QMetaMethod_Invoke(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue);
QTLIBC_API bool QMetaMethod_Invoke2(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue);
QTLIBC_API bool QMetaMethod_Invoke3(const QMetaMethod* self, QObject* object, int connectionType);
QTLIBC_API bool QMetaMethod_InvokeWithObject(const QMetaMethod* self, QObject* object);
QTLIBC_API bool QMetaMethod_InvokeOnGadget(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue);
QTLIBC_API bool QMetaMethod_InvokeOnGadgetWithGadget(const QMetaMethod* self, void* gadget);
QTLIBC_API bool QMetaMethod_IsValid(const QMetaMethod* self);
QTLIBC_API bool QMetaMethod_Invoke4(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0);
QTLIBC_API bool QMetaMethod_Invoke5(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1);
QTLIBC_API bool QMetaMethod_Invoke6(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
QTLIBC_API bool QMetaMethod_Invoke7(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
QTLIBC_API bool QMetaMethod_Invoke8(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
QTLIBC_API bool QMetaMethod_Invoke9(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
QTLIBC_API bool QMetaMethod_Invoke10(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
QTLIBC_API bool QMetaMethod_Invoke11(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
QTLIBC_API bool QMetaMethod_Invoke12(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
QTLIBC_API bool QMetaMethod_Invoke13(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
QTLIBC_API bool QMetaMethod_Invoke32(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0);
QTLIBC_API bool QMetaMethod_Invoke42(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1);
QTLIBC_API bool QMetaMethod_Invoke52(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
QTLIBC_API bool QMetaMethod_Invoke62(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
QTLIBC_API bool QMetaMethod_Invoke72(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
QTLIBC_API bool QMetaMethod_Invoke82(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
QTLIBC_API bool QMetaMethod_Invoke92(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
QTLIBC_API bool QMetaMethod_Invoke102(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
QTLIBC_API bool QMetaMethod_Invoke112(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
QTLIBC_API bool QMetaMethod_Invoke122(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
QTLIBC_API bool QMetaMethod_Invoke33(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0);
QTLIBC_API bool QMetaMethod_Invoke43(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1);
QTLIBC_API bool QMetaMethod_Invoke53(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
QTLIBC_API bool QMetaMethod_Invoke63(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
QTLIBC_API bool QMetaMethod_Invoke73(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
QTLIBC_API bool QMetaMethod_Invoke83(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
QTLIBC_API bool QMetaMethod_Invoke93(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
QTLIBC_API bool QMetaMethod_Invoke103(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
QTLIBC_API bool QMetaMethod_Invoke113(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
QTLIBC_API bool QMetaMethod_Invoke123(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
QTLIBC_API bool QMetaMethod_Invoke22(const QMetaMethod* self, QObject* object, QGenericArgument* val0);
QTLIBC_API bool QMetaMethod_Invoke34(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1);
QTLIBC_API bool QMetaMethod_Invoke44(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
QTLIBC_API bool QMetaMethod_Invoke54(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
QTLIBC_API bool QMetaMethod_Invoke64(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
QTLIBC_API bool QMetaMethod_Invoke74(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
QTLIBC_API bool QMetaMethod_Invoke84(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
QTLIBC_API bool QMetaMethod_Invoke94(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
QTLIBC_API bool QMetaMethod_Invoke104(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
QTLIBC_API bool QMetaMethod_Invoke114(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
QTLIBC_API bool QMetaMethod_InvokeOnGadget3(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0);
QTLIBC_API bool QMetaMethod_InvokeOnGadget4(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1);
QTLIBC_API bool QMetaMethod_InvokeOnGadget5(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
QTLIBC_API bool QMetaMethod_InvokeOnGadget6(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
QTLIBC_API bool QMetaMethod_InvokeOnGadget7(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
QTLIBC_API bool QMetaMethod_InvokeOnGadget8(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
QTLIBC_API bool QMetaMethod_InvokeOnGadget9(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
QTLIBC_API bool QMetaMethod_InvokeOnGadget10(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
QTLIBC_API bool QMetaMethod_InvokeOnGadget11(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
QTLIBC_API bool QMetaMethod_InvokeOnGadget12(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
QTLIBC_API bool QMetaMethod_InvokeOnGadget2(const QMetaMethod* self, void* gadget, QGenericArgument* val0);
QTLIBC_API bool QMetaMethod_InvokeOnGadget32(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1);
QTLIBC_API bool QMetaMethod_InvokeOnGadget42(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
QTLIBC_API bool QMetaMethod_InvokeOnGadget52(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
QTLIBC_API bool QMetaMethod_InvokeOnGadget62(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
QTLIBC_API bool QMetaMethod_InvokeOnGadget72(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
QTLIBC_API bool QMetaMethod_InvokeOnGadget82(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
QTLIBC_API bool QMetaMethod_InvokeOnGadget92(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
QTLIBC_API bool QMetaMethod_InvokeOnGadget102(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
QTLIBC_API bool QMetaMethod_InvokeOnGadget112(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
QTLIBC_API void QMetaMethod_Delete(QMetaMethod* self);

QTLIBC_API QMetaEnum* QMetaEnum_new(QMetaEnum* other);
QTLIBC_API QMetaEnum* QMetaEnum_new2(QMetaEnum* other);
QTLIBC_API QMetaEnum* QMetaEnum_new3();
QTLIBC_API QMetaEnum* QMetaEnum_new4(QMetaEnum* param1);
QTLIBC_API void QMetaEnum_CopyAssign(QMetaEnum* self, QMetaEnum* other);
QTLIBC_API void QMetaEnum_MoveAssign(QMetaEnum* self, QMetaEnum* other);
QTLIBC_API const char* QMetaEnum_Name(const QMetaEnum* self);
QTLIBC_API const char* QMetaEnum_EnumName(const QMetaEnum* self);
QTLIBC_API bool QMetaEnum_IsFlag(const QMetaEnum* self);
QTLIBC_API bool QMetaEnum_IsScoped(const QMetaEnum* self);
QTLIBC_API int QMetaEnum_KeyCount(const QMetaEnum* self);
QTLIBC_API const char* QMetaEnum_Key(const QMetaEnum* self, int index);
QTLIBC_API int QMetaEnum_Value(const QMetaEnum* self, int index);
QTLIBC_API const char* QMetaEnum_Scope(const QMetaEnum* self);
QTLIBC_API int QMetaEnum_KeyToValue(const QMetaEnum* self, const char* key);
QTLIBC_API const char* QMetaEnum_ValueToKey(const QMetaEnum* self, int value);
QTLIBC_API int QMetaEnum_KeysToValue(const QMetaEnum* self, const char* keys);
QTLIBC_API libqt_string QMetaEnum_ValueToKeys(const QMetaEnum* self, int value);
QTLIBC_API QMetaObject* QMetaEnum_EnclosingMetaObject(const QMetaEnum* self);
QTLIBC_API bool QMetaEnum_IsValid(const QMetaEnum* self);
QTLIBC_API int QMetaEnum_KeyToValue2(const QMetaEnum* self, const char* key, bool* ok);
QTLIBC_API int QMetaEnum_KeysToValue2(const QMetaEnum* self, const char* keys, bool* ok);
QTLIBC_API void QMetaEnum_Delete(QMetaEnum* self);

QTLIBC_API QMetaProperty* QMetaProperty_new(QMetaProperty* other);
QTLIBC_API QMetaProperty* QMetaProperty_new2(QMetaProperty* other);
QTLIBC_API QMetaProperty* QMetaProperty_new3();
QTLIBC_API void QMetaProperty_CopyAssign(QMetaProperty* self, QMetaProperty* other);
QTLIBC_API void QMetaProperty_MoveAssign(QMetaProperty* self, QMetaProperty* other);
QTLIBC_API const char* QMetaProperty_Name(const QMetaProperty* self);
QTLIBC_API const char* QMetaProperty_TypeName(const QMetaProperty* self);
QTLIBC_API int QMetaProperty_Type(const QMetaProperty* self);
QTLIBC_API int QMetaProperty_UserType(const QMetaProperty* self);
QTLIBC_API int QMetaProperty_TypeId(const QMetaProperty* self);
QTLIBC_API QMetaType* QMetaProperty_MetaType(const QMetaProperty* self);
QTLIBC_API int QMetaProperty_PropertyIndex(const QMetaProperty* self);
QTLIBC_API int QMetaProperty_RelativePropertyIndex(const QMetaProperty* self);
QTLIBC_API bool QMetaProperty_IsReadable(const QMetaProperty* self);
QTLIBC_API bool QMetaProperty_IsWritable(const QMetaProperty* self);
QTLIBC_API bool QMetaProperty_IsResettable(const QMetaProperty* self);
QTLIBC_API bool QMetaProperty_IsDesignable(const QMetaProperty* self);
QTLIBC_API bool QMetaProperty_IsScriptable(const QMetaProperty* self);
QTLIBC_API bool QMetaProperty_IsStored(const QMetaProperty* self);
QTLIBC_API bool QMetaProperty_IsUser(const QMetaProperty* self);
QTLIBC_API bool QMetaProperty_IsConstant(const QMetaProperty* self);
QTLIBC_API bool QMetaProperty_IsFinal(const QMetaProperty* self);
QTLIBC_API bool QMetaProperty_IsRequired(const QMetaProperty* self);
QTLIBC_API bool QMetaProperty_IsBindable(const QMetaProperty* self);
QTLIBC_API bool QMetaProperty_IsFlagType(const QMetaProperty* self);
QTLIBC_API bool QMetaProperty_IsEnumType(const QMetaProperty* self);
QTLIBC_API QMetaEnum* QMetaProperty_Enumerator(const QMetaProperty* self);
QTLIBC_API bool QMetaProperty_HasNotifySignal(const QMetaProperty* self);
QTLIBC_API QMetaMethod* QMetaProperty_NotifySignal(const QMetaProperty* self);
QTLIBC_API int QMetaProperty_NotifySignalIndex(const QMetaProperty* self);
QTLIBC_API int QMetaProperty_Revision(const QMetaProperty* self);
QTLIBC_API QVariant* QMetaProperty_Read(const QMetaProperty* self, QObject* obj);
QTLIBC_API bool QMetaProperty_Write(const QMetaProperty* self, QObject* obj, QVariant* value);
QTLIBC_API bool QMetaProperty_Reset(const QMetaProperty* self, QObject* obj);
QTLIBC_API QUntypedBindable* QMetaProperty_Bindable(const QMetaProperty* self, QObject* object);
QTLIBC_API QVariant* QMetaProperty_ReadOnGadget(const QMetaProperty* self, const void* gadget);
QTLIBC_API bool QMetaProperty_WriteOnGadget(const QMetaProperty* self, void* gadget, QVariant* value);
QTLIBC_API bool QMetaProperty_ResetOnGadget(const QMetaProperty* self, void* gadget);
QTLIBC_API bool QMetaProperty_HasStdCppSet(const QMetaProperty* self);
QTLIBC_API bool QMetaProperty_IsAlias(const QMetaProperty* self);
QTLIBC_API bool QMetaProperty_IsValid(const QMetaProperty* self);
QTLIBC_API QMetaObject* QMetaProperty_EnclosingMetaObject(const QMetaProperty* self);
QTLIBC_API void QMetaProperty_Delete(QMetaProperty* self);

QTLIBC_API QMetaClassInfo* QMetaClassInfo_new(QMetaClassInfo* other);
QTLIBC_API QMetaClassInfo* QMetaClassInfo_new2(QMetaClassInfo* other);
QTLIBC_API QMetaClassInfo* QMetaClassInfo_new3();
QTLIBC_API void QMetaClassInfo_CopyAssign(QMetaClassInfo* self, QMetaClassInfo* other);
QTLIBC_API void QMetaClassInfo_MoveAssign(QMetaClassInfo* self, QMetaClassInfo* other);
QTLIBC_API const char* QMetaClassInfo_Name(const QMetaClassInfo* self);
QTLIBC_API const char* QMetaClassInfo_Value(const QMetaClassInfo* self);
QTLIBC_API QMetaObject* QMetaClassInfo_EnclosingMetaObject(const QMetaClassInfo* self);
QTLIBC_API void QMetaClassInfo_Delete(QMetaClassInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
