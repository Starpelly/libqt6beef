using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QMetaMethod__Access
{
	Private = 0,
	Protected = 1,
	Public = 2,
}
[AllowDuplicates]
public enum QMetaMethod__MethodType
{
	Method = 0,
	Signal = 1,
	Slot = 2,
	Constructor = 3,
}
[AllowDuplicates]
public enum QMetaMethod__Attributes
{
	Compatibility = 1,
	Cloned = 2,
	Scriptable = 4,
}
public struct QMetaMethod
{
	[LinkName("QMetaMethod_new")]
	public static extern void* QMetaMethod_new(QMetaMethod other);
	[LinkName("QMetaMethod_new2")]
	public static extern void* QMetaMethod_new2(QMetaMethod other);
	[LinkName("QMetaMethod_new3")]
	public static extern void* QMetaMethod_new3();
	[LinkName("QMetaMethod_new4")]
	public static extern void* QMetaMethod_new4(QMetaMethod param1);
	[LinkName("QMetaMethod_MethodSignature")]
	public static extern uint8[] QMetaMethod_MethodSignature(void* c_this);
	[LinkName("QMetaMethod_Name")]
	public static extern uint8[] QMetaMethod_Name(void* c_this);
	[LinkName("QMetaMethod_TypeName")]
	public static extern char8[] QMetaMethod_TypeName(void* c_this);
	[LinkName("QMetaMethod_ReturnType")]
	public static extern int32 QMetaMethod_ReturnType(void* c_this);
	[LinkName("QMetaMethod_ReturnMetaType")]
	public static extern QMetaType QMetaMethod_ReturnMetaType(void* c_this);
	[LinkName("QMetaMethod_ParameterCount")]
	public static extern int32 QMetaMethod_ParameterCount(void* c_this);
	[LinkName("QMetaMethod_ParameterType")]
	public static extern int32 QMetaMethod_ParameterType(void* c_this, int32 index);
	[LinkName("QMetaMethod_ParameterMetaType")]
	public static extern QMetaType QMetaMethod_ParameterMetaType(void* c_this, int32 index);
	[LinkName("QMetaMethod_GetParameterTypes")]
	public static extern void QMetaMethod_GetParameterTypes(void* c_this, int32 types);
	[LinkName("QMetaMethod_ParameterTypes")]
	public static extern uint8[][] QMetaMethod_ParameterTypes(void* c_this);
	[LinkName("QMetaMethod_ParameterTypeName")]
	public static extern uint8[] QMetaMethod_ParameterTypeName(void* c_this, int32 index);
	[LinkName("QMetaMethod_ParameterNames")]
	public static extern uint8[][] QMetaMethod_ParameterNames(void* c_this);
	[LinkName("QMetaMethod_Tag")]
	public static extern char8[] QMetaMethod_Tag(void* c_this);
	[LinkName("QMetaMethod_Access")]
	public static extern int64 QMetaMethod_Access(void* c_this);
	[LinkName("QMetaMethod_MethodType")]
	public static extern int64 QMetaMethod_MethodType(void* c_this);
	[LinkName("QMetaMethod_Attributes")]
	public static extern int32 QMetaMethod_Attributes(void* c_this);
	[LinkName("QMetaMethod_MethodIndex")]
	public static extern int32 QMetaMethod_MethodIndex(void* c_this);
	[LinkName("QMetaMethod_RelativeMethodIndex")]
	public static extern int32 QMetaMethod_RelativeMethodIndex(void* c_this);
	[LinkName("QMetaMethod_Revision")]
	public static extern int32 QMetaMethod_Revision(void* c_this);
	[LinkName("QMetaMethod_IsConst")]
	public static extern bool QMetaMethod_IsConst(void* c_this);
	[LinkName("QMetaMethod_EnclosingMetaObject")]
	public static extern QMetaObject QMetaMethod_EnclosingMetaObject(void* c_this);
	[LinkName("QMetaMethod_Invoke")]
	public static extern bool QMetaMethod_Invoke(void* c_this, QObject object, int64 connectionType, QGenericReturnArgument returnValue);
	[LinkName("QMetaMethod_Invoke2")]
	public static extern bool QMetaMethod_Invoke2(void* c_this, QObject object, QGenericReturnArgument returnValue);
	[LinkName("QMetaMethod_Invoke3")]
	public static extern bool QMetaMethod_Invoke3(void* c_this, QObject object, int64 connectionType);
	[LinkName("QMetaMethod_InvokeWithObject")]
	public static extern bool QMetaMethod_InvokeWithObject(void* c_this, QObject object);
	[LinkName("QMetaMethod_InvokeOnGadget")]
	public static extern bool QMetaMethod_InvokeOnGadget(void* c_this, void gadget, QGenericReturnArgument returnValue);
	[LinkName("QMetaMethod_InvokeOnGadgetWithGadget")]
	public static extern bool QMetaMethod_InvokeOnGadgetWithGadget(void* c_this, void gadget);
	[LinkName("QMetaMethod_IsValid")]
	public static extern bool QMetaMethod_IsValid(void* c_this);
	[LinkName("QMetaMethod_Invoke4")]
	public static extern bool QMetaMethod_Invoke4(void* c_this, QObject object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0);
	[LinkName("QMetaMethod_Invoke5")]
	public static extern bool QMetaMethod_Invoke5(void* c_this, QObject object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaMethod_Invoke6")]
	public static extern bool QMetaMethod_Invoke6(void* c_this, QObject object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaMethod_Invoke7")]
	public static extern bool QMetaMethod_Invoke7(void* c_this, QObject object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaMethod_Invoke8")]
	public static extern bool QMetaMethod_Invoke8(void* c_this, QObject object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaMethod_Invoke9")]
	public static extern bool QMetaMethod_Invoke9(void* c_this, QObject object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaMethod_Invoke10")]
	public static extern bool QMetaMethod_Invoke10(void* c_this, QObject object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaMethod_Invoke11")]
	public static extern bool QMetaMethod_Invoke11(void* c_this, QObject object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaMethod_Invoke12")]
	public static extern bool QMetaMethod_Invoke12(void* c_this, QObject object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaMethod_Invoke13")]
	public static extern bool QMetaMethod_Invoke13(void* c_this, QObject object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
	[LinkName("QMetaMethod_Invoke32")]
	public static extern bool QMetaMethod_Invoke32(void* c_this, QObject object, QGenericReturnArgument returnValue, QGenericArgument val0);
	[LinkName("QMetaMethod_Invoke42")]
	public static extern bool QMetaMethod_Invoke42(void* c_this, QObject object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaMethod_Invoke52")]
	public static extern bool QMetaMethod_Invoke52(void* c_this, QObject object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaMethod_Invoke62")]
	public static extern bool QMetaMethod_Invoke62(void* c_this, QObject object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaMethod_Invoke72")]
	public static extern bool QMetaMethod_Invoke72(void* c_this, QObject object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaMethod_Invoke82")]
	public static extern bool QMetaMethod_Invoke82(void* c_this, QObject object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaMethod_Invoke92")]
	public static extern bool QMetaMethod_Invoke92(void* c_this, QObject object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaMethod_Invoke102")]
	public static extern bool QMetaMethod_Invoke102(void* c_this, QObject object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaMethod_Invoke112")]
	public static extern bool QMetaMethod_Invoke112(void* c_this, QObject object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaMethod_Invoke122")]
	public static extern bool QMetaMethod_Invoke122(void* c_this, QObject object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
	[LinkName("QMetaMethod_Invoke33")]
	public static extern bool QMetaMethod_Invoke33(void* c_this, QObject object, int64 connectionType, QGenericArgument val0);
	[LinkName("QMetaMethod_Invoke43")]
	public static extern bool QMetaMethod_Invoke43(void* c_this, QObject object, int64 connectionType, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaMethod_Invoke53")]
	public static extern bool QMetaMethod_Invoke53(void* c_this, QObject object, int64 connectionType, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaMethod_Invoke63")]
	public static extern bool QMetaMethod_Invoke63(void* c_this, QObject object, int64 connectionType, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaMethod_Invoke73")]
	public static extern bool QMetaMethod_Invoke73(void* c_this, QObject object, int64 connectionType, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaMethod_Invoke83")]
	public static extern bool QMetaMethod_Invoke83(void* c_this, QObject object, int64 connectionType, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaMethod_Invoke93")]
	public static extern bool QMetaMethod_Invoke93(void* c_this, QObject object, int64 connectionType, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaMethod_Invoke103")]
	public static extern bool QMetaMethod_Invoke103(void* c_this, QObject object, int64 connectionType, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaMethod_Invoke113")]
	public static extern bool QMetaMethod_Invoke113(void* c_this, QObject object, int64 connectionType, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaMethod_Invoke123")]
	public static extern bool QMetaMethod_Invoke123(void* c_this, QObject object, int64 connectionType, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
	[LinkName("QMetaMethod_Invoke22")]
	public static extern bool QMetaMethod_Invoke22(void* c_this, QObject object, QGenericArgument val0);
	[LinkName("QMetaMethod_Invoke34")]
	public static extern bool QMetaMethod_Invoke34(void* c_this, QObject object, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaMethod_Invoke44")]
	public static extern bool QMetaMethod_Invoke44(void* c_this, QObject object, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaMethod_Invoke54")]
	public static extern bool QMetaMethod_Invoke54(void* c_this, QObject object, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaMethod_Invoke64")]
	public static extern bool QMetaMethod_Invoke64(void* c_this, QObject object, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaMethod_Invoke74")]
	public static extern bool QMetaMethod_Invoke74(void* c_this, QObject object, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaMethod_Invoke84")]
	public static extern bool QMetaMethod_Invoke84(void* c_this, QObject object, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaMethod_Invoke94")]
	public static extern bool QMetaMethod_Invoke94(void* c_this, QObject object, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaMethod_Invoke104")]
	public static extern bool QMetaMethod_Invoke104(void* c_this, QObject object, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaMethod_Invoke114")]
	public static extern bool QMetaMethod_Invoke114(void* c_this, QObject object, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
	[LinkName("QMetaMethod_InvokeOnGadget3")]
	public static extern bool QMetaMethod_InvokeOnGadget3(void* c_this, void gadget, QGenericReturnArgument returnValue, QGenericArgument val0);
	[LinkName("QMetaMethod_InvokeOnGadget4")]
	public static extern bool QMetaMethod_InvokeOnGadget4(void* c_this, void gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaMethod_InvokeOnGadget5")]
	public static extern bool QMetaMethod_InvokeOnGadget5(void* c_this, void gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaMethod_InvokeOnGadget6")]
	public static extern bool QMetaMethod_InvokeOnGadget6(void* c_this, void gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaMethod_InvokeOnGadget7")]
	public static extern bool QMetaMethod_InvokeOnGadget7(void* c_this, void gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaMethod_InvokeOnGadget8")]
	public static extern bool QMetaMethod_InvokeOnGadget8(void* c_this, void gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaMethod_InvokeOnGadget9")]
	public static extern bool QMetaMethod_InvokeOnGadget9(void* c_this, void gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaMethod_InvokeOnGadget10")]
	public static extern bool QMetaMethod_InvokeOnGadget10(void* c_this, void gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaMethod_InvokeOnGadget11")]
	public static extern bool QMetaMethod_InvokeOnGadget11(void* c_this, void gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaMethod_InvokeOnGadget12")]
	public static extern bool QMetaMethod_InvokeOnGadget12(void* c_this, void gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
	[LinkName("QMetaMethod_InvokeOnGadget2")]
	public static extern bool QMetaMethod_InvokeOnGadget2(void* c_this, void gadget, QGenericArgument val0);
	[LinkName("QMetaMethod_InvokeOnGadget32")]
	public static extern bool QMetaMethod_InvokeOnGadget32(void* c_this, void gadget, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaMethod_InvokeOnGadget42")]
	public static extern bool QMetaMethod_InvokeOnGadget42(void* c_this, void gadget, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaMethod_InvokeOnGadget52")]
	public static extern bool QMetaMethod_InvokeOnGadget52(void* c_this, void gadget, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaMethod_InvokeOnGadget62")]
	public static extern bool QMetaMethod_InvokeOnGadget62(void* c_this, void gadget, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaMethod_InvokeOnGadget72")]
	public static extern bool QMetaMethod_InvokeOnGadget72(void* c_this, void gadget, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaMethod_InvokeOnGadget82")]
	public static extern bool QMetaMethod_InvokeOnGadget82(void* c_this, void gadget, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaMethod_InvokeOnGadget92")]
	public static extern bool QMetaMethod_InvokeOnGadget92(void* c_this, void gadget, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaMethod_InvokeOnGadget102")]
	public static extern bool QMetaMethod_InvokeOnGadget102(void* c_this, void gadget, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaMethod_InvokeOnGadget112")]
	public static extern bool QMetaMethod_InvokeOnGadget112(void* c_this, void gadget, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
}
public struct QMetaEnum
{
	[LinkName("QMetaEnum_new")]
	public static extern void* QMetaEnum_new(QMetaEnum other);
	[LinkName("QMetaEnum_new2")]
	public static extern void* QMetaEnum_new2(QMetaEnum other);
	[LinkName("QMetaEnum_new3")]
	public static extern void* QMetaEnum_new3();
	[LinkName("QMetaEnum_new4")]
	public static extern void* QMetaEnum_new4(QMetaEnum param1);
	[LinkName("QMetaEnum_Name")]
	public static extern char8[] QMetaEnum_Name(void* c_this);
	[LinkName("QMetaEnum_EnumName")]
	public static extern char8[] QMetaEnum_EnumName(void* c_this);
	[LinkName("QMetaEnum_IsFlag")]
	public static extern bool QMetaEnum_IsFlag(void* c_this);
	[LinkName("QMetaEnum_IsScoped")]
	public static extern bool QMetaEnum_IsScoped(void* c_this);
	[LinkName("QMetaEnum_KeyCount")]
	public static extern int32 QMetaEnum_KeyCount(void* c_this);
	[LinkName("QMetaEnum_Key")]
	public static extern char8[] QMetaEnum_Key(void* c_this, int32 index);
	[LinkName("QMetaEnum_Value")]
	public static extern int32 QMetaEnum_Value(void* c_this, int32 index);
	[LinkName("QMetaEnum_Scope")]
	public static extern char8[] QMetaEnum_Scope(void* c_this);
	[LinkName("QMetaEnum_KeyToValue")]
	public static extern int32 QMetaEnum_KeyToValue(void* c_this, char8[] key);
	[LinkName("QMetaEnum_ValueToKey")]
	public static extern char8[] QMetaEnum_ValueToKey(void* c_this, int32 value);
	[LinkName("QMetaEnum_KeysToValue")]
	public static extern int32 QMetaEnum_KeysToValue(void* c_this, char8[] keys);
	[LinkName("QMetaEnum_ValueToKeys")]
	public static extern uint8[] QMetaEnum_ValueToKeys(void* c_this, int32 value);
	[LinkName("QMetaEnum_EnclosingMetaObject")]
	public static extern QMetaObject QMetaEnum_EnclosingMetaObject(void* c_this);
	[LinkName("QMetaEnum_IsValid")]
	public static extern bool QMetaEnum_IsValid(void* c_this);
	[LinkName("QMetaEnum_KeyToValue2")]
	public static extern int32 QMetaEnum_KeyToValue2(void* c_this, char8[] key, bool ok);
	[LinkName("QMetaEnum_KeysToValue2")]
	public static extern int32 QMetaEnum_KeysToValue2(void* c_this, char8[] keys, bool ok);
}
public struct QMetaProperty
{
	[LinkName("QMetaProperty_new")]
	public static extern void* QMetaProperty_new(QMetaProperty other);
	[LinkName("QMetaProperty_new2")]
	public static extern void* QMetaProperty_new2(QMetaProperty other);
	[LinkName("QMetaProperty_new3")]
	public static extern void* QMetaProperty_new3();
	[LinkName("QMetaProperty_Name")]
	public static extern char8[] QMetaProperty_Name(void* c_this);
	[LinkName("QMetaProperty_TypeName")]
	public static extern char8[] QMetaProperty_TypeName(void* c_this);
	[LinkName("QMetaProperty_Type")]
	public static extern int64 QMetaProperty_Type(void* c_this);
	[LinkName("QMetaProperty_UserType")]
	public static extern int32 QMetaProperty_UserType(void* c_this);
	[LinkName("QMetaProperty_TypeId")]
	public static extern int32 QMetaProperty_TypeId(void* c_this);
	[LinkName("QMetaProperty_MetaType")]
	public static extern QMetaType QMetaProperty_MetaType(void* c_this);
	[LinkName("QMetaProperty_PropertyIndex")]
	public static extern int32 QMetaProperty_PropertyIndex(void* c_this);
	[LinkName("QMetaProperty_RelativePropertyIndex")]
	public static extern int32 QMetaProperty_RelativePropertyIndex(void* c_this);
	[LinkName("QMetaProperty_IsReadable")]
	public static extern bool QMetaProperty_IsReadable(void* c_this);
	[LinkName("QMetaProperty_IsWritable")]
	public static extern bool QMetaProperty_IsWritable(void* c_this);
	[LinkName("QMetaProperty_IsResettable")]
	public static extern bool QMetaProperty_IsResettable(void* c_this);
	[LinkName("QMetaProperty_IsDesignable")]
	public static extern bool QMetaProperty_IsDesignable(void* c_this);
	[LinkName("QMetaProperty_IsScriptable")]
	public static extern bool QMetaProperty_IsScriptable(void* c_this);
	[LinkName("QMetaProperty_IsStored")]
	public static extern bool QMetaProperty_IsStored(void* c_this);
	[LinkName("QMetaProperty_IsUser")]
	public static extern bool QMetaProperty_IsUser(void* c_this);
	[LinkName("QMetaProperty_IsConstant")]
	public static extern bool QMetaProperty_IsConstant(void* c_this);
	[LinkName("QMetaProperty_IsFinal")]
	public static extern bool QMetaProperty_IsFinal(void* c_this);
	[LinkName("QMetaProperty_IsRequired")]
	public static extern bool QMetaProperty_IsRequired(void* c_this);
	[LinkName("QMetaProperty_IsBindable")]
	public static extern bool QMetaProperty_IsBindable(void* c_this);
	[LinkName("QMetaProperty_IsFlagType")]
	public static extern bool QMetaProperty_IsFlagType(void* c_this);
	[LinkName("QMetaProperty_IsEnumType")]
	public static extern bool QMetaProperty_IsEnumType(void* c_this);
	[LinkName("QMetaProperty_Enumerator")]
	public static extern QMetaEnum QMetaProperty_Enumerator(void* c_this);
	[LinkName("QMetaProperty_HasNotifySignal")]
	public static extern bool QMetaProperty_HasNotifySignal(void* c_this);
	[LinkName("QMetaProperty_NotifySignal")]
	public static extern QMetaMethod QMetaProperty_NotifySignal(void* c_this);
	[LinkName("QMetaProperty_NotifySignalIndex")]
	public static extern int32 QMetaProperty_NotifySignalIndex(void* c_this);
	[LinkName("QMetaProperty_Revision")]
	public static extern int32 QMetaProperty_Revision(void* c_this);
	[LinkName("QMetaProperty_Read")]
	public static extern QVariant QMetaProperty_Read(void* c_this, QObject obj);
	[LinkName("QMetaProperty_Write")]
	public static extern bool QMetaProperty_Write(void* c_this, QObject obj, QVariant value);
	[LinkName("QMetaProperty_Reset")]
	public static extern bool QMetaProperty_Reset(void* c_this, QObject obj);
	[LinkName("QMetaProperty_Bindable")]
	public static extern QUntypedBindable QMetaProperty_Bindable(void* c_this, QObject object);
	[LinkName("QMetaProperty_ReadOnGadget")]
	public static extern QVariant QMetaProperty_ReadOnGadget(void* c_this, void gadget);
	[LinkName("QMetaProperty_WriteOnGadget")]
	public static extern bool QMetaProperty_WriteOnGadget(void* c_this, void gadget, QVariant value);
	[LinkName("QMetaProperty_ResetOnGadget")]
	public static extern bool QMetaProperty_ResetOnGadget(void* c_this, void gadget);
	[LinkName("QMetaProperty_HasStdCppSet")]
	public static extern bool QMetaProperty_HasStdCppSet(void* c_this);
	[LinkName("QMetaProperty_IsAlias")]
	public static extern bool QMetaProperty_IsAlias(void* c_this);
	[LinkName("QMetaProperty_IsValid")]
	public static extern bool QMetaProperty_IsValid(void* c_this);
	[LinkName("QMetaProperty_EnclosingMetaObject")]
	public static extern QMetaObject QMetaProperty_EnclosingMetaObject(void* c_this);
}
public struct QMetaClassInfo
{
	[LinkName("QMetaClassInfo_new")]
	public static extern void* QMetaClassInfo_new(QMetaClassInfo other);
	[LinkName("QMetaClassInfo_new2")]
	public static extern void* QMetaClassInfo_new2(QMetaClassInfo other);
	[LinkName("QMetaClassInfo_new3")]
	public static extern void* QMetaClassInfo_new3();
	[LinkName("QMetaClassInfo_Name")]
	public static extern char8[] QMetaClassInfo_Name(void* c_this);
	[LinkName("QMetaClassInfo_Value")]
	public static extern char8[] QMetaClassInfo_Value(void* c_this);
	[LinkName("QMetaClassInfo_EnclosingMetaObject")]
	public static extern QMetaObject QMetaClassInfo_EnclosingMetaObject(void* c_this);
}