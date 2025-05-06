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
	public static extern QMetaMethod* QMetaMethod_new(QMetaMethod* other);
	[LinkName("QMetaMethod_new2")]
	public static extern QMetaMethod* QMetaMethod_new2(QMetaMethod* other);
	[LinkName("QMetaMethod_new3")]
	public static extern QMetaMethod* QMetaMethod_new3();
	[LinkName("QMetaMethod_new4")]
	public static extern QMetaMethod* QMetaMethod_new4(QMetaMethod* param1);
	[LinkName("QMetaMethod_MethodSignature")]
	public static extern libqt_string QMetaMethod_MethodSignature(Self* c_this);
	[LinkName("QMetaMethod_Name")]
	public static extern libqt_string QMetaMethod_Name(Self* c_this);
	[LinkName("QMetaMethod_TypeName")]
	public static extern char8[] QMetaMethod_TypeName(Self* c_this);
	[LinkName("QMetaMethod_ReturnType")]
	public static extern int32 QMetaMethod_ReturnType(Self* c_this);
	[LinkName("QMetaMethod_ReturnMetaType")]
	public static extern QMetaType QMetaMethod_ReturnMetaType(Self* c_this);
	[LinkName("QMetaMethod_ParameterCount")]
	public static extern int32 QMetaMethod_ParameterCount(Self* c_this);
	[LinkName("QMetaMethod_ParameterType")]
	public static extern int32 QMetaMethod_ParameterType(Self* c_this, int32 index);
	[LinkName("QMetaMethod_ParameterMetaType")]
	public static extern QMetaType QMetaMethod_ParameterMetaType(Self* c_this, int32 index);
	[LinkName("QMetaMethod_GetParameterTypes")]
	public static extern void QMetaMethod_GetParameterTypes(Self* c_this, int32* types);
	[LinkName("QMetaMethod_ParameterTypes")]
	public static extern libqt_string[] QMetaMethod_ParameterTypes(Self* c_this);
	[LinkName("QMetaMethod_ParameterTypeName")]
	public static extern libqt_string QMetaMethod_ParameterTypeName(Self* c_this, int32 index);
	[LinkName("QMetaMethod_ParameterNames")]
	public static extern libqt_string[] QMetaMethod_ParameterNames(Self* c_this);
	[LinkName("QMetaMethod_Tag")]
	public static extern char8[] QMetaMethod_Tag(Self* c_this);
	[LinkName("QMetaMethod_Access")]
	public static extern int64 QMetaMethod_Access(Self* c_this);
	[LinkName("QMetaMethod_MethodType")]
	public static extern int64 QMetaMethod_MethodType(Self* c_this);
	[LinkName("QMetaMethod_Attributes")]
	public static extern int32 QMetaMethod_Attributes(Self* c_this);
	[LinkName("QMetaMethod_MethodIndex")]
	public static extern int32 QMetaMethod_MethodIndex(Self* c_this);
	[LinkName("QMetaMethod_RelativeMethodIndex")]
	public static extern int32 QMetaMethod_RelativeMethodIndex(Self* c_this);
	[LinkName("QMetaMethod_Revision")]
	public static extern int32 QMetaMethod_Revision(Self* c_this);
	[LinkName("QMetaMethod_IsConst")]
	public static extern bool QMetaMethod_IsConst(Self* c_this);
	[LinkName("QMetaMethod_EnclosingMetaObject")]
	public static extern QMetaObject* QMetaMethod_EnclosingMetaObject(Self* c_this);
	[LinkName("QMetaMethod_Invoke")]
	public static extern bool QMetaMethod_Invoke(Self* c_this, QObject* object, int64 connectionType, QGenericReturnArgument returnValue);
	[LinkName("QMetaMethod_Invoke2")]
	public static extern bool QMetaMethod_Invoke2(Self* c_this, QObject* object, QGenericReturnArgument returnValue);
	[LinkName("QMetaMethod_Invoke3")]
	public static extern bool QMetaMethod_Invoke3(Self* c_this, QObject* object, int64 connectionType);
	[LinkName("QMetaMethod_InvokeWithObject")]
	public static extern bool QMetaMethod_InvokeWithObject(Self* c_this, QObject* object);
	[LinkName("QMetaMethod_InvokeOnGadget")]
	public static extern bool QMetaMethod_InvokeOnGadget(Self* c_this, void* gadget, QGenericReturnArgument returnValue);
	[LinkName("QMetaMethod_InvokeOnGadgetWithGadget")]
	public static extern bool QMetaMethod_InvokeOnGadgetWithGadget(Self* c_this, void* gadget);
	[LinkName("QMetaMethod_IsValid")]
	public static extern bool QMetaMethod_IsValid(Self* c_this);
	[LinkName("QMetaMethod_Invoke4")]
	public static extern bool QMetaMethod_Invoke4(Self* c_this, QObject* object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0);
	[LinkName("QMetaMethod_Invoke5")]
	public static extern bool QMetaMethod_Invoke5(Self* c_this, QObject* object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaMethod_Invoke6")]
	public static extern bool QMetaMethod_Invoke6(Self* c_this, QObject* object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaMethod_Invoke7")]
	public static extern bool QMetaMethod_Invoke7(Self* c_this, QObject* object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaMethod_Invoke8")]
	public static extern bool QMetaMethod_Invoke8(Self* c_this, QObject* object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaMethod_Invoke9")]
	public static extern bool QMetaMethod_Invoke9(Self* c_this, QObject* object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaMethod_Invoke10")]
	public static extern bool QMetaMethod_Invoke10(Self* c_this, QObject* object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaMethod_Invoke11")]
	public static extern bool QMetaMethod_Invoke11(Self* c_this, QObject* object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaMethod_Invoke12")]
	public static extern bool QMetaMethod_Invoke12(Self* c_this, QObject* object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaMethod_Invoke13")]
	public static extern bool QMetaMethod_Invoke13(Self* c_this, QObject* object, int64 connectionType, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
	[LinkName("QMetaMethod_Invoke32")]
	public static extern bool QMetaMethod_Invoke32(Self* c_this, QObject* object, QGenericReturnArgument returnValue, QGenericArgument val0);
	[LinkName("QMetaMethod_Invoke42")]
	public static extern bool QMetaMethod_Invoke42(Self* c_this, QObject* object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaMethod_Invoke52")]
	public static extern bool QMetaMethod_Invoke52(Self* c_this, QObject* object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaMethod_Invoke62")]
	public static extern bool QMetaMethod_Invoke62(Self* c_this, QObject* object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaMethod_Invoke72")]
	public static extern bool QMetaMethod_Invoke72(Self* c_this, QObject* object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaMethod_Invoke82")]
	public static extern bool QMetaMethod_Invoke82(Self* c_this, QObject* object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaMethod_Invoke92")]
	public static extern bool QMetaMethod_Invoke92(Self* c_this, QObject* object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaMethod_Invoke102")]
	public static extern bool QMetaMethod_Invoke102(Self* c_this, QObject* object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaMethod_Invoke112")]
	public static extern bool QMetaMethod_Invoke112(Self* c_this, QObject* object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaMethod_Invoke122")]
	public static extern bool QMetaMethod_Invoke122(Self* c_this, QObject* object, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
	[LinkName("QMetaMethod_Invoke33")]
	public static extern bool QMetaMethod_Invoke33(Self* c_this, QObject* object, int64 connectionType, QGenericArgument val0);
	[LinkName("QMetaMethod_Invoke43")]
	public static extern bool QMetaMethod_Invoke43(Self* c_this, QObject* object, int64 connectionType, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaMethod_Invoke53")]
	public static extern bool QMetaMethod_Invoke53(Self* c_this, QObject* object, int64 connectionType, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaMethod_Invoke63")]
	public static extern bool QMetaMethod_Invoke63(Self* c_this, QObject* object, int64 connectionType, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaMethod_Invoke73")]
	public static extern bool QMetaMethod_Invoke73(Self* c_this, QObject* object, int64 connectionType, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaMethod_Invoke83")]
	public static extern bool QMetaMethod_Invoke83(Self* c_this, QObject* object, int64 connectionType, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaMethod_Invoke93")]
	public static extern bool QMetaMethod_Invoke93(Self* c_this, QObject* object, int64 connectionType, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaMethod_Invoke103")]
	public static extern bool QMetaMethod_Invoke103(Self* c_this, QObject* object, int64 connectionType, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaMethod_Invoke113")]
	public static extern bool QMetaMethod_Invoke113(Self* c_this, QObject* object, int64 connectionType, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaMethod_Invoke123")]
	public static extern bool QMetaMethod_Invoke123(Self* c_this, QObject* object, int64 connectionType, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
	[LinkName("QMetaMethod_Invoke22")]
	public static extern bool QMetaMethod_Invoke22(Self* c_this, QObject* object, QGenericArgument val0);
	[LinkName("QMetaMethod_Invoke34")]
	public static extern bool QMetaMethod_Invoke34(Self* c_this, QObject* object, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaMethod_Invoke44")]
	public static extern bool QMetaMethod_Invoke44(Self* c_this, QObject* object, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaMethod_Invoke54")]
	public static extern bool QMetaMethod_Invoke54(Self* c_this, QObject* object, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaMethod_Invoke64")]
	public static extern bool QMetaMethod_Invoke64(Self* c_this, QObject* object, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaMethod_Invoke74")]
	public static extern bool QMetaMethod_Invoke74(Self* c_this, QObject* object, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaMethod_Invoke84")]
	public static extern bool QMetaMethod_Invoke84(Self* c_this, QObject* object, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaMethod_Invoke94")]
	public static extern bool QMetaMethod_Invoke94(Self* c_this, QObject* object, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaMethod_Invoke104")]
	public static extern bool QMetaMethod_Invoke104(Self* c_this, QObject* object, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaMethod_Invoke114")]
	public static extern bool QMetaMethod_Invoke114(Self* c_this, QObject* object, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
	[LinkName("QMetaMethod_InvokeOnGadget3")]
	public static extern bool QMetaMethod_InvokeOnGadget3(Self* c_this, void* gadget, QGenericReturnArgument returnValue, QGenericArgument val0);
	[LinkName("QMetaMethod_InvokeOnGadget4")]
	public static extern bool QMetaMethod_InvokeOnGadget4(Self* c_this, void* gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaMethod_InvokeOnGadget5")]
	public static extern bool QMetaMethod_InvokeOnGadget5(Self* c_this, void* gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaMethod_InvokeOnGadget6")]
	public static extern bool QMetaMethod_InvokeOnGadget6(Self* c_this, void* gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaMethod_InvokeOnGadget7")]
	public static extern bool QMetaMethod_InvokeOnGadget7(Self* c_this, void* gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaMethod_InvokeOnGadget8")]
	public static extern bool QMetaMethod_InvokeOnGadget8(Self* c_this, void* gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaMethod_InvokeOnGadget9")]
	public static extern bool QMetaMethod_InvokeOnGadget9(Self* c_this, void* gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaMethod_InvokeOnGadget10")]
	public static extern bool QMetaMethod_InvokeOnGadget10(Self* c_this, void* gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaMethod_InvokeOnGadget11")]
	public static extern bool QMetaMethod_InvokeOnGadget11(Self* c_this, void* gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaMethod_InvokeOnGadget12")]
	public static extern bool QMetaMethod_InvokeOnGadget12(Self* c_this, void* gadget, QGenericReturnArgument returnValue, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
	[LinkName("QMetaMethod_InvokeOnGadget2")]
	public static extern bool QMetaMethod_InvokeOnGadget2(Self* c_this, void* gadget, QGenericArgument val0);
	[LinkName("QMetaMethod_InvokeOnGadget32")]
	public static extern bool QMetaMethod_InvokeOnGadget32(Self* c_this, void* gadget, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaMethod_InvokeOnGadget42")]
	public static extern bool QMetaMethod_InvokeOnGadget42(Self* c_this, void* gadget, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaMethod_InvokeOnGadget52")]
	public static extern bool QMetaMethod_InvokeOnGadget52(Self* c_this, void* gadget, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaMethod_InvokeOnGadget62")]
	public static extern bool QMetaMethod_InvokeOnGadget62(Self* c_this, void* gadget, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaMethod_InvokeOnGadget72")]
	public static extern bool QMetaMethod_InvokeOnGadget72(Self* c_this, void* gadget, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaMethod_InvokeOnGadget82")]
	public static extern bool QMetaMethod_InvokeOnGadget82(Self* c_this, void* gadget, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaMethod_InvokeOnGadget92")]
	public static extern bool QMetaMethod_InvokeOnGadget92(Self* c_this, void* gadget, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaMethod_InvokeOnGadget102")]
	public static extern bool QMetaMethod_InvokeOnGadget102(Self* c_this, void* gadget, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaMethod_InvokeOnGadget112")]
	public static extern bool QMetaMethod_InvokeOnGadget112(Self* c_this, void* gadget, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
}
public struct QMetaEnum
{
	[LinkName("QMetaEnum_new")]
	public static extern QMetaEnum* QMetaEnum_new(QMetaEnum* other);
	[LinkName("QMetaEnum_new2")]
	public static extern QMetaEnum* QMetaEnum_new2(QMetaEnum* other);
	[LinkName("QMetaEnum_new3")]
	public static extern QMetaEnum* QMetaEnum_new3();
	[LinkName("QMetaEnum_new4")]
	public static extern QMetaEnum* QMetaEnum_new4(QMetaEnum* param1);
	[LinkName("QMetaEnum_Name")]
	public static extern char8[] QMetaEnum_Name(Self* c_this);
	[LinkName("QMetaEnum_EnumName")]
	public static extern char8[] QMetaEnum_EnumName(Self* c_this);
	[LinkName("QMetaEnum_IsFlag")]
	public static extern bool QMetaEnum_IsFlag(Self* c_this);
	[LinkName("QMetaEnum_IsScoped")]
	public static extern bool QMetaEnum_IsScoped(Self* c_this);
	[LinkName("QMetaEnum_KeyCount")]
	public static extern int32 QMetaEnum_KeyCount(Self* c_this);
	[LinkName("QMetaEnum_Key")]
	public static extern char8[] QMetaEnum_Key(Self* c_this, int32 index);
	[LinkName("QMetaEnum_Value")]
	public static extern int32 QMetaEnum_Value(Self* c_this, int32 index);
	[LinkName("QMetaEnum_Scope")]
	public static extern char8[] QMetaEnum_Scope(Self* c_this);
	[LinkName("QMetaEnum_KeyToValue")]
	public static extern int32 QMetaEnum_KeyToValue(Self* c_this, char8[] key);
	[LinkName("QMetaEnum_ValueToKey")]
	public static extern char8[] QMetaEnum_ValueToKey(Self* c_this, int32 value);
	[LinkName("QMetaEnum_KeysToValue")]
	public static extern int32 QMetaEnum_KeysToValue(Self* c_this, char8[] keys);
	[LinkName("QMetaEnum_ValueToKeys")]
	public static extern libqt_string QMetaEnum_ValueToKeys(Self* c_this, int32 value);
	[LinkName("QMetaEnum_EnclosingMetaObject")]
	public static extern QMetaObject* QMetaEnum_EnclosingMetaObject(Self* c_this);
	[LinkName("QMetaEnum_IsValid")]
	public static extern bool QMetaEnum_IsValid(Self* c_this);
	[LinkName("QMetaEnum_KeyToValue2")]
	public static extern int32 QMetaEnum_KeyToValue2(Self* c_this, char8[] key, bool* ok);
	[LinkName("QMetaEnum_KeysToValue2")]
	public static extern int32 QMetaEnum_KeysToValue2(Self* c_this, char8[] keys, bool* ok);
}
public struct QMetaProperty
{
	[LinkName("QMetaProperty_new")]
	public static extern QMetaProperty* QMetaProperty_new(QMetaProperty* other);
	[LinkName("QMetaProperty_new2")]
	public static extern QMetaProperty* QMetaProperty_new2(QMetaProperty* other);
	[LinkName("QMetaProperty_new3")]
	public static extern QMetaProperty* QMetaProperty_new3();
	[LinkName("QMetaProperty_Name")]
	public static extern char8[] QMetaProperty_Name(Self* c_this);
	[LinkName("QMetaProperty_TypeName")]
	public static extern char8[] QMetaProperty_TypeName(Self* c_this);
	[LinkName("QMetaProperty_Type")]
	public static extern int64 QMetaProperty_Type(Self* c_this);
	[LinkName("QMetaProperty_UserType")]
	public static extern int32 QMetaProperty_UserType(Self* c_this);
	[LinkName("QMetaProperty_TypeId")]
	public static extern int32 QMetaProperty_TypeId(Self* c_this);
	[LinkName("QMetaProperty_MetaType")]
	public static extern QMetaType QMetaProperty_MetaType(Self* c_this);
	[LinkName("QMetaProperty_PropertyIndex")]
	public static extern int32 QMetaProperty_PropertyIndex(Self* c_this);
	[LinkName("QMetaProperty_RelativePropertyIndex")]
	public static extern int32 QMetaProperty_RelativePropertyIndex(Self* c_this);
	[LinkName("QMetaProperty_IsReadable")]
	public static extern bool QMetaProperty_IsReadable(Self* c_this);
	[LinkName("QMetaProperty_IsWritable")]
	public static extern bool QMetaProperty_IsWritable(Self* c_this);
	[LinkName("QMetaProperty_IsResettable")]
	public static extern bool QMetaProperty_IsResettable(Self* c_this);
	[LinkName("QMetaProperty_IsDesignable")]
	public static extern bool QMetaProperty_IsDesignable(Self* c_this);
	[LinkName("QMetaProperty_IsScriptable")]
	public static extern bool QMetaProperty_IsScriptable(Self* c_this);
	[LinkName("QMetaProperty_IsStored")]
	public static extern bool QMetaProperty_IsStored(Self* c_this);
	[LinkName("QMetaProperty_IsUser")]
	public static extern bool QMetaProperty_IsUser(Self* c_this);
	[LinkName("QMetaProperty_IsConstant")]
	public static extern bool QMetaProperty_IsConstant(Self* c_this);
	[LinkName("QMetaProperty_IsFinal")]
	public static extern bool QMetaProperty_IsFinal(Self* c_this);
	[LinkName("QMetaProperty_IsRequired")]
	public static extern bool QMetaProperty_IsRequired(Self* c_this);
	[LinkName("QMetaProperty_IsBindable")]
	public static extern bool QMetaProperty_IsBindable(Self* c_this);
	[LinkName("QMetaProperty_IsFlagType")]
	public static extern bool QMetaProperty_IsFlagType(Self* c_this);
	[LinkName("QMetaProperty_IsEnumType")]
	public static extern bool QMetaProperty_IsEnumType(Self* c_this);
	[LinkName("QMetaProperty_Enumerator")]
	public static extern QMetaEnum QMetaProperty_Enumerator(Self* c_this);
	[LinkName("QMetaProperty_HasNotifySignal")]
	public static extern bool QMetaProperty_HasNotifySignal(Self* c_this);
	[LinkName("QMetaProperty_NotifySignal")]
	public static extern QMetaMethod QMetaProperty_NotifySignal(Self* c_this);
	[LinkName("QMetaProperty_NotifySignalIndex")]
	public static extern int32 QMetaProperty_NotifySignalIndex(Self* c_this);
	[LinkName("QMetaProperty_Revision")]
	public static extern int32 QMetaProperty_Revision(Self* c_this);
	[LinkName("QMetaProperty_Read")]
	public static extern QVariant QMetaProperty_Read(Self* c_this, QObject* obj);
	[LinkName("QMetaProperty_Write")]
	public static extern bool QMetaProperty_Write(Self* c_this, QObject* obj, QVariant* value);
	[LinkName("QMetaProperty_Reset")]
	public static extern bool QMetaProperty_Reset(Self* c_this, QObject* obj);
	[LinkName("QMetaProperty_Bindable")]
	public static extern QUntypedBindable QMetaProperty_Bindable(Self* c_this, QObject* object);
	[LinkName("QMetaProperty_ReadOnGadget")]
	public static extern QVariant QMetaProperty_ReadOnGadget(Self* c_this, void* gadget);
	[LinkName("QMetaProperty_WriteOnGadget")]
	public static extern bool QMetaProperty_WriteOnGadget(Self* c_this, void* gadget, QVariant* value);
	[LinkName("QMetaProperty_ResetOnGadget")]
	public static extern bool QMetaProperty_ResetOnGadget(Self* c_this, void* gadget);
	[LinkName("QMetaProperty_HasStdCppSet")]
	public static extern bool QMetaProperty_HasStdCppSet(Self* c_this);
	[LinkName("QMetaProperty_IsAlias")]
	public static extern bool QMetaProperty_IsAlias(Self* c_this);
	[LinkName("QMetaProperty_IsValid")]
	public static extern bool QMetaProperty_IsValid(Self* c_this);
	[LinkName("QMetaProperty_EnclosingMetaObject")]
	public static extern QMetaObject* QMetaProperty_EnclosingMetaObject(Self* c_this);
}
public struct QMetaClassInfo
{
	[LinkName("QMetaClassInfo_new")]
	public static extern QMetaClassInfo* QMetaClassInfo_new(QMetaClassInfo* other);
	[LinkName("QMetaClassInfo_new2")]
	public static extern QMetaClassInfo* QMetaClassInfo_new2(QMetaClassInfo* other);
	[LinkName("QMetaClassInfo_new3")]
	public static extern QMetaClassInfo* QMetaClassInfo_new3();
	[LinkName("QMetaClassInfo_Name")]
	public static extern char8[] QMetaClassInfo_Name(Self* c_this);
	[LinkName("QMetaClassInfo_Value")]
	public static extern char8[] QMetaClassInfo_Value(Self* c_this);
	[LinkName("QMetaClassInfo_EnclosingMetaObject")]
	public static extern QMetaObject* QMetaClassInfo_EnclosingMetaObject(Self* c_this);
}