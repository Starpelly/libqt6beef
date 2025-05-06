using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QMetaObject__Call
{
	InvokeMetaMethod = 0,
	ReadProperty = 1,
	WriteProperty = 2,
	ResetProperty = 3,
	CreateInstance = 4,
	IndexOfMethod = 5,
	RegisterPropertyMetaType = 6,
	RegisterMethodArgumentMetaType = 7,
	BindableProperty = 8,
	CustomCall = 9,
}
public struct QMethodRawArguments
{
}
public struct QGenericArgument
{
	[LinkName("QGenericArgument_new")]
	public static extern QGenericArgument* QGenericArgument_new(QGenericArgument* other);
	[LinkName("QGenericArgument_new2")]
	public static extern QGenericArgument* QGenericArgument_new2(QGenericArgument* other);
	[LinkName("QGenericArgument_new3")]
	public static extern QGenericArgument* QGenericArgument_new3();
	[LinkName("QGenericArgument_new4")]
	public static extern QGenericArgument* QGenericArgument_new4(QGenericArgument* param1);
	[LinkName("QGenericArgument_new5")]
	public static extern QGenericArgument* QGenericArgument_new5(char8[] aName);
	[LinkName("QGenericArgument_new6")]
	public static extern QGenericArgument* QGenericArgument_new6(char8[] aName, void* aData);
	[LinkName("QGenericArgument_Data")]
	public static extern void* QGenericArgument_Data(Self* c_this);
	[LinkName("QGenericArgument_Name")]
	public static extern char8[] QGenericArgument_Name(Self* c_this);
}
public struct QGenericReturnArgument : QGenericArgument
{
	[LinkName("QGenericReturnArgument_new")]
	public static extern QGenericReturnArgument* QGenericReturnArgument_new(QGenericReturnArgument* other);
	[LinkName("QGenericReturnArgument_new2")]
	public static extern QGenericReturnArgument* QGenericReturnArgument_new2(QGenericReturnArgument* other);
	[LinkName("QGenericReturnArgument_new3")]
	public static extern QGenericReturnArgument* QGenericReturnArgument_new3();
	[LinkName("QGenericReturnArgument_new4")]
	public static extern QGenericReturnArgument* QGenericReturnArgument_new4(QGenericReturnArgument* param1);
	[LinkName("QGenericReturnArgument_new5")]
	public static extern QGenericReturnArgument* QGenericReturnArgument_new5(char8[] aName);
	[LinkName("QGenericReturnArgument_new6")]
	public static extern QGenericReturnArgument* QGenericReturnArgument_new6(char8[] aName, void* aData);
}
public struct QMetaObject
{
	[LinkName("QMetaObject_new")]
	public static extern QMetaObject* QMetaObject_new();
	[LinkName("QMetaObject_new2")]
	public static extern QMetaObject* QMetaObject_new2(QMetaObject* param1);
	[LinkName("QMetaObject_ClassName")]
	public static extern char8[] QMetaObject_ClassName(Self* c_this);
	[LinkName("QMetaObject_SuperClass")]
	public static extern QMetaObject* QMetaObject_SuperClass(Self* c_this);
	[LinkName("QMetaObject_Inherits")]
	public static extern bool QMetaObject_Inherits(Self* c_this, QMetaObject* metaObject);
	[LinkName("QMetaObject_Cast")]
	public static extern QObject* QMetaObject_Cast(Self* c_this, QObject* obj);
	[LinkName("QMetaObject_CastWithObj")]
	public static extern QObject* QMetaObject_CastWithObj(Self* c_this, QObject* obj);
	[LinkName("QMetaObject_Tr")]
	public static extern libqt_string QMetaObject_Tr(Self* c_this, char8[] s, char8[] c);
	[LinkName("QMetaObject_MetaType")]
	public static extern QMetaType QMetaObject_MetaType(Self* c_this);
	[LinkName("QMetaObject_MethodOffset")]
	public static extern int32 QMetaObject_MethodOffset(Self* c_this);
	[LinkName("QMetaObject_EnumeratorOffset")]
	public static extern int32 QMetaObject_EnumeratorOffset(Self* c_this);
	[LinkName("QMetaObject_PropertyOffset")]
	public static extern int32 QMetaObject_PropertyOffset(Self* c_this);
	[LinkName("QMetaObject_ClassInfoOffset")]
	public static extern int32 QMetaObject_ClassInfoOffset(Self* c_this);
	[LinkName("QMetaObject_ConstructorCount")]
	public static extern int32 QMetaObject_ConstructorCount(Self* c_this);
	[LinkName("QMetaObject_MethodCount")]
	public static extern int32 QMetaObject_MethodCount(Self* c_this);
	[LinkName("QMetaObject_EnumeratorCount")]
	public static extern int32 QMetaObject_EnumeratorCount(Self* c_this);
	[LinkName("QMetaObject_PropertyCount")]
	public static extern int32 QMetaObject_PropertyCount(Self* c_this);
	[LinkName("QMetaObject_ClassInfoCount")]
	public static extern int32 QMetaObject_ClassInfoCount(Self* c_this);
	[LinkName("QMetaObject_IndexOfConstructor")]
	public static extern int32 QMetaObject_IndexOfConstructor(Self* c_this, char8[] constructor);
	[LinkName("QMetaObject_IndexOfMethod")]
	public static extern int32 QMetaObject_IndexOfMethod(Self* c_this, char8[] method);
	[LinkName("QMetaObject_IndexOfSignal")]
	public static extern int32 QMetaObject_IndexOfSignal(Self* c_this, char8[] signal);
	[LinkName("QMetaObject_IndexOfSlot")]
	public static extern int32 QMetaObject_IndexOfSlot(Self* c_this, char8[] slot);
	[LinkName("QMetaObject_IndexOfEnumerator")]
	public static extern int32 QMetaObject_IndexOfEnumerator(Self* c_this, char8[] name);
	[LinkName("QMetaObject_IndexOfProperty")]
	public static extern int32 QMetaObject_IndexOfProperty(Self* c_this, char8[] name);
	[LinkName("QMetaObject_IndexOfClassInfo")]
	public static extern int32 QMetaObject_IndexOfClassInfo(Self* c_this, char8[] name);
	[LinkName("QMetaObject_Constructor")]
	public static extern QMetaMethod QMetaObject_Constructor(Self* c_this, int32 index);
	[LinkName("QMetaObject_Method")]
	public static extern QMetaMethod QMetaObject_Method(Self* c_this, int32 index);
	[LinkName("QMetaObject_Enumerator")]
	public static extern QMetaEnum QMetaObject_Enumerator(Self* c_this, int32 index);
	[LinkName("QMetaObject_Property")]
	public static extern QMetaProperty QMetaObject_Property(Self* c_this, int32 index);
	[LinkName("QMetaObject_ClassInfo")]
	public static extern QMetaClassInfo QMetaObject_ClassInfo(Self* c_this, int32 index);
	[LinkName("QMetaObject_UserProperty")]
	public static extern QMetaProperty QMetaObject_UserProperty(Self* c_this);
	[LinkName("QMetaObject_CheckConnectArgs")]
	public static extern bool QMetaObject_CheckConnectArgs(char8[] signal, char8[] method);
	[LinkName("QMetaObject_CheckConnectArgs2")]
	public static extern bool QMetaObject_CheckConnectArgs2(QMetaMethod* signal, QMetaMethod* method);
	[LinkName("QMetaObject_NormalizedSignature")]
	public static extern libqt_string QMetaObject_NormalizedSignature(char8[] method);
	[LinkName("QMetaObject_NormalizedType")]
	public static extern libqt_string QMetaObject_NormalizedType(char8[] typeVal);
	[LinkName("QMetaObject_Connect")]
	public static extern QMetaObject__Connection QMetaObject_Connect(QObject* sender, int32 signal_index, QObject* receiver, int32 method_index);
	[LinkName("QMetaObject_Disconnect")]
	public static extern bool QMetaObject_Disconnect(QObject* sender, int32 signal_index, QObject* receiver, int32 method_index);
	[LinkName("QMetaObject_DisconnectOne")]
	public static extern bool QMetaObject_DisconnectOne(QObject* sender, int32 signal_index, QObject* receiver, int32 method_index);
	[LinkName("QMetaObject_ConnectSlotsByName")]
	public static extern void QMetaObject_ConnectSlotsByName(QObject* o);
	[LinkName("QMetaObject_Activate")]
	public static extern void QMetaObject_Activate(QObject* sender, int32 signal_index, void** argv);
	[LinkName("QMetaObject_Activate2")]
	public static extern void QMetaObject_Activate2(QObject* sender, QMetaObject* param2, int32 local_signal_index, void** argv);
	[LinkName("QMetaObject_Activate3")]
	public static extern void QMetaObject_Activate3(QObject* sender, int32 signal_offset, int32 local_signal_index, void** argv);
	[LinkName("QMetaObject_InvokeMethod")]
	public static extern bool QMetaObject_InvokeMethod(QObject* obj, char8[] member, int64 param3, QGenericReturnArgument retVal);
	[LinkName("QMetaObject_InvokeMethod2")]
	public static extern bool QMetaObject_InvokeMethod2(QObject* obj, char8[] member, QGenericReturnArgument retVal);
	[LinkName("QMetaObject_InvokeMethod3")]
	public static extern bool QMetaObject_InvokeMethod3(QObject* obj, char8[] member, int64 typeVal);
	[LinkName("QMetaObject_InvokeMethod4")]
	public static extern bool QMetaObject_InvokeMethod4(QObject* obj, char8[] member);
	[LinkName("QMetaObject_NewInstance")]
	public static extern QObject* QMetaObject_NewInstance(Self* c_this);
	[LinkName("QMetaObject_StaticMetacall")]
	public static extern int32 QMetaObject_StaticMetacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QMetaObject_Metacall")]
	public static extern int32 QMetaObject_Metacall(QObject* param1, int64 param2, int32 param3, void** param4);
	[LinkName("QMetaObject_Tr3")]
	public static extern libqt_string QMetaObject_Tr3(Self* c_this, char8[] s, char8[] c, int32 n);
	[LinkName("QMetaObject_Connect5")]
	public static extern QMetaObject__Connection QMetaObject_Connect5(QObject* sender, int32 signal_index, QObject* receiver, int32 method_index, int32 typeVal);
	[LinkName("QMetaObject_Connect6")]
	public static extern QMetaObject__Connection QMetaObject_Connect6(QObject* sender, int32 signal_index, QObject* receiver, int32 method_index, int32 typeVal, int32* types);
	[LinkName("QMetaObject_InvokeMethod5")]
	public static extern bool QMetaObject_InvokeMethod5(QObject* obj, char8[] member, int64 param3, QGenericReturnArgument retVal, QGenericArgument val0);
	[LinkName("QMetaObject_InvokeMethod6")]
	public static extern bool QMetaObject_InvokeMethod6(QObject* obj, char8[] member, int64 param3, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaObject_InvokeMethod7")]
	public static extern bool QMetaObject_InvokeMethod7(QObject* obj, char8[] member, int64 param3, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaObject_InvokeMethod8")]
	public static extern bool QMetaObject_InvokeMethod8(QObject* obj, char8[] member, int64 param3, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaObject_InvokeMethod9")]
	public static extern bool QMetaObject_InvokeMethod9(QObject* obj, char8[] member, int64 param3, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaObject_InvokeMethod10")]
	public static extern bool QMetaObject_InvokeMethod10(QObject* obj, char8[] member, int64 param3, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaObject_InvokeMethod11")]
	public static extern bool QMetaObject_InvokeMethod11(QObject* obj, char8[] member, int64 param3, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaObject_InvokeMethod12")]
	public static extern bool QMetaObject_InvokeMethod12(QObject* obj, char8[] member, int64 param3, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaObject_InvokeMethod13")]
	public static extern bool QMetaObject_InvokeMethod13(QObject* obj, char8[] member, int64 param3, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaObject_InvokeMethod14")]
	public static extern bool QMetaObject_InvokeMethod14(QObject* obj, char8[] member, int64 param3, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
	[LinkName("QMetaObject_InvokeMethod42")]
	public static extern bool QMetaObject_InvokeMethod42(QObject* obj, char8[] member, QGenericReturnArgument retVal, QGenericArgument val0);
	[LinkName("QMetaObject_InvokeMethod52")]
	public static extern bool QMetaObject_InvokeMethod52(QObject* obj, char8[] member, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaObject_InvokeMethod62")]
	public static extern bool QMetaObject_InvokeMethod62(QObject* obj, char8[] member, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaObject_InvokeMethod72")]
	public static extern bool QMetaObject_InvokeMethod72(QObject* obj, char8[] member, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaObject_InvokeMethod82")]
	public static extern bool QMetaObject_InvokeMethod82(QObject* obj, char8[] member, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaObject_InvokeMethod92")]
	public static extern bool QMetaObject_InvokeMethod92(QObject* obj, char8[] member, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaObject_InvokeMethod102")]
	public static extern bool QMetaObject_InvokeMethod102(QObject* obj, char8[] member, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaObject_InvokeMethod112")]
	public static extern bool QMetaObject_InvokeMethod112(QObject* obj, char8[] member, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaObject_InvokeMethod122")]
	public static extern bool QMetaObject_InvokeMethod122(QObject* obj, char8[] member, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaObject_InvokeMethod132")]
	public static extern bool QMetaObject_InvokeMethod132(QObject* obj, char8[] member, QGenericReturnArgument retVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
	[LinkName("QMetaObject_InvokeMethod43")]
	public static extern bool QMetaObject_InvokeMethod43(QObject* obj, char8[] member, int64 typeVal, QGenericArgument val0);
	[LinkName("QMetaObject_InvokeMethod53")]
	public static extern bool QMetaObject_InvokeMethod53(QObject* obj, char8[] member, int64 typeVal, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaObject_InvokeMethod63")]
	public static extern bool QMetaObject_InvokeMethod63(QObject* obj, char8[] member, int64 typeVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaObject_InvokeMethod73")]
	public static extern bool QMetaObject_InvokeMethod73(QObject* obj, char8[] member, int64 typeVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaObject_InvokeMethod83")]
	public static extern bool QMetaObject_InvokeMethod83(QObject* obj, char8[] member, int64 typeVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaObject_InvokeMethod93")]
	public static extern bool QMetaObject_InvokeMethod93(QObject* obj, char8[] member, int64 typeVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaObject_InvokeMethod103")]
	public static extern bool QMetaObject_InvokeMethod103(QObject* obj, char8[] member, int64 typeVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaObject_InvokeMethod113")]
	public static extern bool QMetaObject_InvokeMethod113(QObject* obj, char8[] member, int64 typeVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaObject_InvokeMethod123")]
	public static extern bool QMetaObject_InvokeMethod123(QObject* obj, char8[] member, int64 typeVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaObject_InvokeMethod133")]
	public static extern bool QMetaObject_InvokeMethod133(QObject* obj, char8[] member, int64 typeVal, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
	[LinkName("QMetaObject_InvokeMethod32")]
	public static extern bool QMetaObject_InvokeMethod32(QObject* obj, char8[] member, QGenericArgument val0);
	[LinkName("QMetaObject_InvokeMethod44")]
	public static extern bool QMetaObject_InvokeMethod44(QObject* obj, char8[] member, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaObject_InvokeMethod54")]
	public static extern bool QMetaObject_InvokeMethod54(QObject* obj, char8[] member, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaObject_InvokeMethod64")]
	public static extern bool QMetaObject_InvokeMethod64(QObject* obj, char8[] member, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaObject_InvokeMethod74")]
	public static extern bool QMetaObject_InvokeMethod74(QObject* obj, char8[] member, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaObject_InvokeMethod84")]
	public static extern bool QMetaObject_InvokeMethod84(QObject* obj, char8[] member, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaObject_InvokeMethod94")]
	public static extern bool QMetaObject_InvokeMethod94(QObject* obj, char8[] member, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaObject_InvokeMethod104")]
	public static extern bool QMetaObject_InvokeMethod104(QObject* obj, char8[] member, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaObject_InvokeMethod114")]
	public static extern bool QMetaObject_InvokeMethod114(QObject* obj, char8[] member, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaObject_InvokeMethod124")]
	public static extern bool QMetaObject_InvokeMethod124(QObject* obj, char8[] member, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
	[LinkName("QMetaObject_NewInstance1")]
	public static extern QObject* QMetaObject_NewInstance1(Self* c_this, QGenericArgument val0);
	[LinkName("QMetaObject_NewInstance2")]
	public static extern QObject* QMetaObject_NewInstance2(Self* c_this, QGenericArgument val0, QGenericArgument val1);
	[LinkName("QMetaObject_NewInstance3")]
	public static extern QObject* QMetaObject_NewInstance3(Self* c_this, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2);
	[LinkName("QMetaObject_NewInstance4")]
	public static extern QObject* QMetaObject_NewInstance4(Self* c_this, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3);
	[LinkName("QMetaObject_NewInstance5")]
	public static extern QObject* QMetaObject_NewInstance5(Self* c_this, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4);
	[LinkName("QMetaObject_NewInstance6")]
	public static extern QObject* QMetaObject_NewInstance6(Self* c_this, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5);
	[LinkName("QMetaObject_NewInstance7")]
	public static extern QObject* QMetaObject_NewInstance7(Self* c_this, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6);
	[LinkName("QMetaObject_NewInstance8")]
	public static extern QObject* QMetaObject_NewInstance8(Self* c_this, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7);
	[LinkName("QMetaObject_NewInstance9")]
	public static extern QObject* QMetaObject_NewInstance9(Self* c_this, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8);
	[LinkName("QMetaObject_NewInstance10")]
	public static extern QObject* QMetaObject_NewInstance10(Self* c_this, QGenericArgument val0, QGenericArgument val1, QGenericArgument val2, QGenericArgument val3, QGenericArgument val4, QGenericArgument val5, QGenericArgument val6, QGenericArgument val7, QGenericArgument val8, QGenericArgument val9);
}
public struct QMetaObject__Connection
{
	[LinkName("QMetaObject__Connection_new")]
	public static extern QMetaObject__Connection* QMetaObject__Connection_new();
	[LinkName("QMetaObject__Connection_new2")]
	public static extern QMetaObject__Connection* QMetaObject__Connection_new2(QMetaObject__Connection* other);
	[LinkName("QMetaObject__Connection_OperatorAssign")]
	public static extern void QMetaObject__Connection_OperatorAssign(Self* c_this, QMetaObject__Connection* other);
	[LinkName("QMetaObject__Connection_Swap")]
	public static extern void QMetaObject__Connection_Swap(Self* c_this, QMetaObject__Connection* other);
}
public struct QMetaObject__SuperData
{
	[LinkName("QMetaObject__SuperData_new")]
	public static extern QMetaObject__SuperData* QMetaObject__SuperData_new();
	[LinkName("QMetaObject__SuperData_new2")]
	public static extern QMetaObject__SuperData* QMetaObject__SuperData_new2(QMetaObject* mo);
	[LinkName("QMetaObject__SuperData_new3")]
	public static extern QMetaObject__SuperData* QMetaObject__SuperData_new3(QMetaObject__SuperData* param1);
	[LinkName("QMetaObject__SuperData_OperatorMinusGreater")]
	public static extern QMetaObject* QMetaObject__SuperData_OperatorMinusGreater(Self* c_this);
	[LinkName("QMetaObject__SuperData_ToConstQMetaObjectMultiply")]
	public static extern QMetaObject* QMetaObject__SuperData_ToConstQMetaObjectMultiply(Self* c_this);
	[LinkName("QMetaObject__SuperData_OperatorAssign")]
	public static extern void QMetaObject__SuperData_OperatorAssign(Self* c_this, QMetaObject__SuperData* param1);
}
public struct QMetaObject__Data
{
	[LinkName("QMetaObject__Data_new")]
	public static extern QMetaObject__Data* QMetaObject__Data_new();
	[LinkName("QMetaObject__Data_new2")]
	public static extern QMetaObject__Data* QMetaObject__Data_new2(QMetaObject__Data* param1);
	[LinkName("QMetaObject__Data_OperatorAssign")]
	public static extern void QMetaObject__Data_OperatorAssign(Self* c_this, QMetaObject__Data* param1);
}