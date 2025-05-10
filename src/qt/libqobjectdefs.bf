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
public interface IQMethodRawArguments
{
	void* NativePtr { get; }
}
public class QMethodRawArguments : IQMethodRawArguments
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
}
extension CQt
{
}
public interface IQGenericArgument
{
	void* NativePtr { get; }
}
public class QGenericArgument : IQGenericArgument
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQGenericArgument other)
	{
		this.nativePtr = CQt.QGenericArgument_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QGenericArgument_Delete(this.nativePtr);
	}
	
	public void* Data()
	{
		return CQt.QGenericArgument_Data(this.nativePtr);
	}
	
	public char8* Name()
	{
		return CQt.QGenericArgument_Name(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QGenericArgument_new")]
	public static extern void* QGenericArgument_new(void* other);
	[LinkName("QGenericArgument_new2")]
	public static extern void* QGenericArgument_new2(void* other);
	[LinkName("QGenericArgument_new3")]
	public static extern void* QGenericArgument_new3();
	[LinkName("QGenericArgument_new4")]
	public static extern void* QGenericArgument_new4(void* param1);
	[LinkName("QGenericArgument_new5")]
	public static extern void* QGenericArgument_new5(char8* aName);
	[LinkName("QGenericArgument_new6")]
	public static extern void* QGenericArgument_new6(char8* aName, void* aData);
	[LinkName("QGenericArgument_Data")]
	public static extern void* QGenericArgument_Data(void* c_this);
	[LinkName("QGenericArgument_Name")]
	public static extern char8* QGenericArgument_Name(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QGenericArgument_Delete")]
	public static extern void QGenericArgument_Delete(void* self);
}
public interface IQGenericReturnArgument
{
	void* NativePtr { get; }
}
public class QGenericReturnArgument : IQGenericReturnArgument, IQGenericArgument
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQGenericReturnArgument other)
	{
		this.nativePtr = CQt.QGenericReturnArgument_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QGenericReturnArgument_Delete(this.nativePtr);
	}
	
	public void* Data()
	{
		return CQt.QGenericArgument_Data(this.nativePtr);
	}
	
	public char8* Name()
	{
		return CQt.QGenericArgument_Name(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QGenericReturnArgument_new")]
	public static extern void* QGenericReturnArgument_new(void* other);
	[LinkName("QGenericReturnArgument_new2")]
	public static extern void* QGenericReturnArgument_new2(void* other);
	[LinkName("QGenericReturnArgument_new3")]
	public static extern void* QGenericReturnArgument_new3();
	[LinkName("QGenericReturnArgument_new4")]
	public static extern void* QGenericReturnArgument_new4(void* param1);
	[LinkName("QGenericReturnArgument_new5")]
	public static extern void* QGenericReturnArgument_new5(char8* aName);
	[LinkName("QGenericReturnArgument_new6")]
	public static extern void* QGenericReturnArgument_new6(char8* aName, void* aData);
	/// Delete this object from C++ memory
	[LinkName("QGenericReturnArgument_Delete")]
	public static extern void QGenericReturnArgument_Delete(void* self);
}
public interface IQMetaObject
{
	void* NativePtr { get; }
}
public class QMetaObject : IQMetaObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QMetaObject_new();
	}
	
	public ~this()
	{
		CQt.QMetaObject_Delete(this.nativePtr);
	}
	
	public char8* ClassName()
	{
		return CQt.QMetaObject_ClassName(this.nativePtr);
	}
	
	public void* SuperClass()
	{
		return CQt.QMetaObject_SuperClass(this.nativePtr);
	}
	
	public bool Inherits(IQMetaObject metaObject)
	{
		return CQt.QMetaObject_Inherits(this.nativePtr, (metaObject == null) ? null : (void*)metaObject.NativePtr);
	}
	
	public void* Cast(IQObject obj)
	{
		return CQt.QMetaObject_Cast(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public void* CastWithObj(IQObject obj)
	{
		return CQt.QMetaObject_CastWithObj(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public libqt_string Tr(char8* s, char8* c)
	{
		return CQt.QMetaObject_Tr(this.nativePtr, s, c);
	}
	
	public void MetaType()
	{
		CQt.QMetaObject_MetaType(this.nativePtr);
	}
	
	public int32 MethodOffset()
	{
		return CQt.QMetaObject_MethodOffset(this.nativePtr);
	}
	
	public int32 EnumeratorOffset()
	{
		return CQt.QMetaObject_EnumeratorOffset(this.nativePtr);
	}
	
	public int32 PropertyOffset()
	{
		return CQt.QMetaObject_PropertyOffset(this.nativePtr);
	}
	
	public int32 ClassInfoOffset()
	{
		return CQt.QMetaObject_ClassInfoOffset(this.nativePtr);
	}
	
	public int32 ConstructorCount()
	{
		return CQt.QMetaObject_ConstructorCount(this.nativePtr);
	}
	
	public int32 MethodCount()
	{
		return CQt.QMetaObject_MethodCount(this.nativePtr);
	}
	
	public int32 EnumeratorCount()
	{
		return CQt.QMetaObject_EnumeratorCount(this.nativePtr);
	}
	
	public int32 PropertyCount()
	{
		return CQt.QMetaObject_PropertyCount(this.nativePtr);
	}
	
	public int32 ClassInfoCount()
	{
		return CQt.QMetaObject_ClassInfoCount(this.nativePtr);
	}
	
	public int32 IndexOfConstructor(char8* constructor)
	{
		return CQt.QMetaObject_IndexOfConstructor(this.nativePtr, constructor);
	}
	
	public int32 IndexOfMethod(char8* method)
	{
		return CQt.QMetaObject_IndexOfMethod(this.nativePtr, method);
	}
	
	public int32 IndexOfSignal(char8* signal)
	{
		return CQt.QMetaObject_IndexOfSignal(this.nativePtr, signal);
	}
	
	public int32 IndexOfSlot(char8* slot)
	{
		return CQt.QMetaObject_IndexOfSlot(this.nativePtr, slot);
	}
	
	public int32 IndexOfEnumerator(char8* name)
	{
		return CQt.QMetaObject_IndexOfEnumerator(this.nativePtr, name);
	}
	
	public int32 IndexOfProperty(char8* name)
	{
		return CQt.QMetaObject_IndexOfProperty(this.nativePtr, name);
	}
	
	public int32 IndexOfClassInfo(char8* name)
	{
		return CQt.QMetaObject_IndexOfClassInfo(this.nativePtr, name);
	}
	
	public void Constructor(int32 index)
	{
		CQt.QMetaObject_Constructor(this.nativePtr, index);
	}
	
	public void Method(int32 index)
	{
		CQt.QMetaObject_Method(this.nativePtr, index);
	}
	
	public void Enumerator(int32 index)
	{
		CQt.QMetaObject_Enumerator(this.nativePtr, index);
	}
	
	public void Property(int32 index)
	{
		CQt.QMetaObject_Property(this.nativePtr, index);
	}
	
	public void ClassInfo(int32 index)
	{
		CQt.QMetaObject_ClassInfo(this.nativePtr, index);
	}
	
	public void UserProperty()
	{
		CQt.QMetaObject_UserProperty(this.nativePtr);
	}
	
	public static bool CheckConnectArgs(char8* signal, char8* method)
	{
		return CQt.QMetaObject_CheckConnectArgs(signal, method);
	}
	
	public static bool CheckConnectArgs2(IQMetaMethod signal, IQMetaMethod method)
	{
		return CQt.QMetaObject_CheckConnectArgs2((signal == default) ? default : (void*)signal.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public static libqt_string NormalizedSignature(char8* method)
	{
		return CQt.QMetaObject_NormalizedSignature(method);
	}
	
	public static libqt_string NormalizedType(char8* typeVal)
	{
		return CQt.QMetaObject_NormalizedType(typeVal);
	}
	
	public static void Connect(IQObject sender, int32 signal_index, IQObject receiver, int32 method_index)
	{
		CQt.QMetaObject_Connect((sender == null) ? null : (void*)sender.NativePtr, signal_index, (receiver == null) ? null : (void*)receiver.NativePtr, method_index);
	}
	
	public static bool Disconnect(IQObject sender, int32 signal_index, IQObject receiver, int32 method_index)
	{
		return CQt.QMetaObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, signal_index, (receiver == null) ? null : (void*)receiver.NativePtr, method_index);
	}
	
	public static bool DisconnectOne(IQObject sender, int32 signal_index, IQObject receiver, int32 method_index)
	{
		return CQt.QMetaObject_DisconnectOne((sender == null) ? null : (void*)sender.NativePtr, signal_index, (receiver == null) ? null : (void*)receiver.NativePtr, method_index);
	}
	
	public static void ConnectSlotsByName(IQObject o)
	{
		CQt.QMetaObject_ConnectSlotsByName((o == null) ? null : (void*)o.NativePtr);
	}
	
	public static void Activate(IQObject sender, int32 signal_index, void** argv)
	{
		CQt.QMetaObject_Activate((sender == null) ? null : (void*)sender.NativePtr, signal_index, argv);
	}
	
	public static void Activate2(IQObject sender, IQMetaObject param2, int32 local_signal_index, void** argv)
	{
		CQt.QMetaObject_Activate2((sender == null) ? null : (void*)sender.NativePtr, (param2 == null) ? null : (void*)param2.NativePtr, local_signal_index, argv);
	}
	
	public static void Activate3(IQObject sender, int32 signal_offset, int32 local_signal_index, void** argv)
	{
		CQt.QMetaObject_Activate3((sender == null) ? null : (void*)sender.NativePtr, signal_offset, local_signal_index, argv);
	}
	
	public static bool InvokeMethod(IQObject obj, char8* member, int64 param3, IQGenericReturnArgument retVal)
	{
		return CQt.QMetaObject_InvokeMethod((obj == null) ? null : (void*)obj.NativePtr, member, param3, (retVal == default) ? default : (void)retVal.NativePtr);
	}
	
	public static bool InvokeMethod2(IQObject obj, char8* member, IQGenericReturnArgument retVal)
	{
		return CQt.QMetaObject_InvokeMethod2((obj == null) ? null : (void*)obj.NativePtr, member, (retVal == default) ? default : (void)retVal.NativePtr);
	}
	
	public static bool InvokeMethod3(IQObject obj, char8* member, int64 typeVal)
	{
		return CQt.QMetaObject_InvokeMethod3((obj == null) ? null : (void*)obj.NativePtr, member, typeVal);
	}
	
	public static bool InvokeMethod4(IQObject obj, char8* member)
	{
		return CQt.QMetaObject_InvokeMethod4((obj == null) ? null : (void*)obj.NativePtr, member);
	}
	
	public void* NewInstance()
	{
		return CQt.QMetaObject_NewInstance(this.nativePtr);
	}
	
	public int32 StaticMetacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QMetaObject_StaticMetacall(this.nativePtr, param1, param2, param3);
	}
	
	public static int32 Metacall(IQObject param1, int64 param2, int32 param3, void** param4)
	{
		return CQt.QMetaObject_Metacall((param1 == null) ? null : (void*)param1.NativePtr, param2, param3, param4);
	}
	
	public libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QMetaObject_Tr3(this.nativePtr, s, c, n);
	}
	
	public static void Connect5(IQObject sender, int32 signal_index, IQObject receiver, int32 method_index, int32 typeVal)
	{
		CQt.QMetaObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, signal_index, (receiver == null) ? null : (void*)receiver.NativePtr, method_index, typeVal);
	}
	
	public static void Connect6(IQObject sender, int32 signal_index, IQObject receiver, int32 method_index, int32 typeVal, int32* types)
	{
		CQt.QMetaObject_Connect6((sender == null) ? null : (void*)sender.NativePtr, signal_index, (receiver == null) ? null : (void*)receiver.NativePtr, method_index, typeVal, types);
	}
	
	public static bool InvokeMethod5(IQObject obj, char8* member, int64 param3, IQGenericReturnArgument retVal, IQGenericArgument val0)
	{
		return CQt.QMetaObject_InvokeMethod5((obj == null) ? null : (void*)obj.NativePtr, member, param3, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr);
	}
	
	public static bool InvokeMethod6(IQObject obj, char8* member, int64 param3, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaObject_InvokeMethod6((obj == null) ? null : (void*)obj.NativePtr, member, param3, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr);
	}
	
	public static bool InvokeMethod7(IQObject obj, char8* member, int64 param3, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaObject_InvokeMethod7((obj == null) ? null : (void*)obj.NativePtr, member, param3, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr);
	}
	
	public static bool InvokeMethod8(IQObject obj, char8* member, int64 param3, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaObject_InvokeMethod8((obj == null) ? null : (void*)obj.NativePtr, member, param3, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr);
	}
	
	public static bool InvokeMethod9(IQObject obj, char8* member, int64 param3, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaObject_InvokeMethod9((obj == null) ? null : (void*)obj.NativePtr, member, param3, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr);
	}
	
	public static bool InvokeMethod10(IQObject obj, char8* member, int64 param3, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaObject_InvokeMethod10((obj == null) ? null : (void*)obj.NativePtr, member, param3, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr);
	}
	
	public static bool InvokeMethod11(IQObject obj, char8* member, int64 param3, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaObject_InvokeMethod11((obj == null) ? null : (void*)obj.NativePtr, member, param3, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr);
	}
	
	public static bool InvokeMethod12(IQObject obj, char8* member, int64 param3, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaObject_InvokeMethod12((obj == null) ? null : (void*)obj.NativePtr, member, param3, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr);
	}
	
	public static bool InvokeMethod13(IQObject obj, char8* member, int64 param3, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaObject_InvokeMethod13((obj == null) ? null : (void*)obj.NativePtr, member, param3, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr);
	}
	
	public static bool InvokeMethod14(IQObject obj, char8* member, int64 param3, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaObject_InvokeMethod14((obj == null) ? null : (void*)obj.NativePtr, member, param3, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr, (val9 == default) ? default : (void)val9.NativePtr);
	}
	
	public static bool InvokeMethod42(IQObject obj, char8* member, IQGenericReturnArgument retVal, IQGenericArgument val0)
	{
		return CQt.QMetaObject_InvokeMethod42((obj == null) ? null : (void*)obj.NativePtr, member, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr);
	}
	
	public static bool InvokeMethod52(IQObject obj, char8* member, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaObject_InvokeMethod52((obj == null) ? null : (void*)obj.NativePtr, member, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr);
	}
	
	public static bool InvokeMethod62(IQObject obj, char8* member, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaObject_InvokeMethod62((obj == null) ? null : (void*)obj.NativePtr, member, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr);
	}
	
	public static bool InvokeMethod72(IQObject obj, char8* member, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaObject_InvokeMethod72((obj == null) ? null : (void*)obj.NativePtr, member, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr);
	}
	
	public static bool InvokeMethod82(IQObject obj, char8* member, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaObject_InvokeMethod82((obj == null) ? null : (void*)obj.NativePtr, member, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr);
	}
	
	public static bool InvokeMethod92(IQObject obj, char8* member, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaObject_InvokeMethod92((obj == null) ? null : (void*)obj.NativePtr, member, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr);
	}
	
	public static bool InvokeMethod102(IQObject obj, char8* member, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaObject_InvokeMethod102((obj == null) ? null : (void*)obj.NativePtr, member, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr);
	}
	
	public static bool InvokeMethod112(IQObject obj, char8* member, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaObject_InvokeMethod112((obj == null) ? null : (void*)obj.NativePtr, member, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr);
	}
	
	public static bool InvokeMethod122(IQObject obj, char8* member, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaObject_InvokeMethod122((obj == null) ? null : (void*)obj.NativePtr, member, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr);
	}
	
	public static bool InvokeMethod132(IQObject obj, char8* member, IQGenericReturnArgument retVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaObject_InvokeMethod132((obj == null) ? null : (void*)obj.NativePtr, member, (retVal == default) ? default : (void)retVal.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr, (val9 == default) ? default : (void)val9.NativePtr);
	}
	
	public static bool InvokeMethod43(IQObject obj, char8* member, int64 typeVal, IQGenericArgument val0)
	{
		return CQt.QMetaObject_InvokeMethod43((obj == null) ? null : (void*)obj.NativePtr, member, typeVal, (val0 == default) ? default : (void)val0.NativePtr);
	}
	
	public static bool InvokeMethod53(IQObject obj, char8* member, int64 typeVal, IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaObject_InvokeMethod53((obj == null) ? null : (void*)obj.NativePtr, member, typeVal, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr);
	}
	
	public static bool InvokeMethod63(IQObject obj, char8* member, int64 typeVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaObject_InvokeMethod63((obj == null) ? null : (void*)obj.NativePtr, member, typeVal, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr);
	}
	
	public static bool InvokeMethod73(IQObject obj, char8* member, int64 typeVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaObject_InvokeMethod73((obj == null) ? null : (void*)obj.NativePtr, member, typeVal, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr);
	}
	
	public static bool InvokeMethod83(IQObject obj, char8* member, int64 typeVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaObject_InvokeMethod83((obj == null) ? null : (void*)obj.NativePtr, member, typeVal, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr);
	}
	
	public static bool InvokeMethod93(IQObject obj, char8* member, int64 typeVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaObject_InvokeMethod93((obj == null) ? null : (void*)obj.NativePtr, member, typeVal, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr);
	}
	
	public static bool InvokeMethod103(IQObject obj, char8* member, int64 typeVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaObject_InvokeMethod103((obj == null) ? null : (void*)obj.NativePtr, member, typeVal, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr);
	}
	
	public static bool InvokeMethod113(IQObject obj, char8* member, int64 typeVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaObject_InvokeMethod113((obj == null) ? null : (void*)obj.NativePtr, member, typeVal, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr);
	}
	
	public static bool InvokeMethod123(IQObject obj, char8* member, int64 typeVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaObject_InvokeMethod123((obj == null) ? null : (void*)obj.NativePtr, member, typeVal, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr);
	}
	
	public static bool InvokeMethod133(IQObject obj, char8* member, int64 typeVal, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaObject_InvokeMethod133((obj == null) ? null : (void*)obj.NativePtr, member, typeVal, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr, (val9 == default) ? default : (void)val9.NativePtr);
	}
	
	public static bool InvokeMethod32(IQObject obj, char8* member, IQGenericArgument val0)
	{
		return CQt.QMetaObject_InvokeMethod32((obj == null) ? null : (void*)obj.NativePtr, member, (val0 == default) ? default : (void)val0.NativePtr);
	}
	
	public static bool InvokeMethod44(IQObject obj, char8* member, IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaObject_InvokeMethod44((obj == null) ? null : (void*)obj.NativePtr, member, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr);
	}
	
	public static bool InvokeMethod54(IQObject obj, char8* member, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaObject_InvokeMethod54((obj == null) ? null : (void*)obj.NativePtr, member, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr);
	}
	
	public static bool InvokeMethod64(IQObject obj, char8* member, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaObject_InvokeMethod64((obj == null) ? null : (void*)obj.NativePtr, member, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr);
	}
	
	public static bool InvokeMethod74(IQObject obj, char8* member, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaObject_InvokeMethod74((obj == null) ? null : (void*)obj.NativePtr, member, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr);
	}
	
	public static bool InvokeMethod84(IQObject obj, char8* member, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaObject_InvokeMethod84((obj == null) ? null : (void*)obj.NativePtr, member, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr);
	}
	
	public static bool InvokeMethod94(IQObject obj, char8* member, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaObject_InvokeMethod94((obj == null) ? null : (void*)obj.NativePtr, member, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr);
	}
	
	public static bool InvokeMethod104(IQObject obj, char8* member, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaObject_InvokeMethod104((obj == null) ? null : (void*)obj.NativePtr, member, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr);
	}
	
	public static bool InvokeMethod114(IQObject obj, char8* member, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaObject_InvokeMethod114((obj == null) ? null : (void*)obj.NativePtr, member, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr);
	}
	
	public static bool InvokeMethod124(IQObject obj, char8* member, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaObject_InvokeMethod124((obj == null) ? null : (void*)obj.NativePtr, member, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr, (val9 == default) ? default : (void)val9.NativePtr);
	}
	
	public void* NewInstance1(IQGenericArgument val0)
	{
		return CQt.QMetaObject_NewInstance1(this.nativePtr, (val0 == default) ? default : (void)val0.NativePtr);
	}
	
	public void* NewInstance2(IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaObject_NewInstance2(this.nativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr);
	}
	
	public void* NewInstance3(IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaObject_NewInstance3(this.nativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr);
	}
	
	public void* NewInstance4(IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaObject_NewInstance4(this.nativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr);
	}
	
	public void* NewInstance5(IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaObject_NewInstance5(this.nativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr);
	}
	
	public void* NewInstance6(IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaObject_NewInstance6(this.nativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr);
	}
	
	public void* NewInstance7(IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaObject_NewInstance7(this.nativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr);
	}
	
	public void* NewInstance8(IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaObject_NewInstance8(this.nativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr);
	}
	
	public void* NewInstance9(IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaObject_NewInstance9(this.nativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr);
	}
	
	public void* NewInstance10(IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaObject_NewInstance10(this.nativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr, (val9 == default) ? default : (void)val9.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QMetaObject_new")]
	public static extern void* QMetaObject_new();
	[LinkName("QMetaObject_new2")]
	public static extern void* QMetaObject_new2(void* param1);
	[LinkName("QMetaObject_ClassName")]
	public static extern char8* QMetaObject_ClassName(void* c_this);
	[LinkName("QMetaObject_SuperClass")]
	public static extern void* QMetaObject_SuperClass(void* c_this);
	[LinkName("QMetaObject_Inherits")]
	public static extern bool QMetaObject_Inherits(void* c_this, void* metaObject);
	[LinkName("QMetaObject_Cast")]
	public static extern void* QMetaObject_Cast(void* c_this, void* obj);
	[LinkName("QMetaObject_CastWithObj")]
	public static extern void* QMetaObject_CastWithObj(void* c_this, void* obj);
	[LinkName("QMetaObject_Tr")]
	public static extern libqt_string QMetaObject_Tr(void* c_this, char8* s, char8* c);
	[LinkName("QMetaObject_MetaType")]
	public static extern void QMetaObject_MetaType(void* c_this);
	[LinkName("QMetaObject_MethodOffset")]
	public static extern int32 QMetaObject_MethodOffset(void* c_this);
	[LinkName("QMetaObject_EnumeratorOffset")]
	public static extern int32 QMetaObject_EnumeratorOffset(void* c_this);
	[LinkName("QMetaObject_PropertyOffset")]
	public static extern int32 QMetaObject_PropertyOffset(void* c_this);
	[LinkName("QMetaObject_ClassInfoOffset")]
	public static extern int32 QMetaObject_ClassInfoOffset(void* c_this);
	[LinkName("QMetaObject_ConstructorCount")]
	public static extern int32 QMetaObject_ConstructorCount(void* c_this);
	[LinkName("QMetaObject_MethodCount")]
	public static extern int32 QMetaObject_MethodCount(void* c_this);
	[LinkName("QMetaObject_EnumeratorCount")]
	public static extern int32 QMetaObject_EnumeratorCount(void* c_this);
	[LinkName("QMetaObject_PropertyCount")]
	public static extern int32 QMetaObject_PropertyCount(void* c_this);
	[LinkName("QMetaObject_ClassInfoCount")]
	public static extern int32 QMetaObject_ClassInfoCount(void* c_this);
	[LinkName("QMetaObject_IndexOfConstructor")]
	public static extern int32 QMetaObject_IndexOfConstructor(void* c_this, char8* constructor);
	[LinkName("QMetaObject_IndexOfMethod")]
	public static extern int32 QMetaObject_IndexOfMethod(void* c_this, char8* method);
	[LinkName("QMetaObject_IndexOfSignal")]
	public static extern int32 QMetaObject_IndexOfSignal(void* c_this, char8* signal);
	[LinkName("QMetaObject_IndexOfSlot")]
	public static extern int32 QMetaObject_IndexOfSlot(void* c_this, char8* slot);
	[LinkName("QMetaObject_IndexOfEnumerator")]
	public static extern int32 QMetaObject_IndexOfEnumerator(void* c_this, char8* name);
	[LinkName("QMetaObject_IndexOfProperty")]
	public static extern int32 QMetaObject_IndexOfProperty(void* c_this, char8* name);
	[LinkName("QMetaObject_IndexOfClassInfo")]
	public static extern int32 QMetaObject_IndexOfClassInfo(void* c_this, char8* name);
	[LinkName("QMetaObject_Constructor")]
	public static extern void QMetaObject_Constructor(void* c_this, int32 index);
	[LinkName("QMetaObject_Method")]
	public static extern void QMetaObject_Method(void* c_this, int32 index);
	[LinkName("QMetaObject_Enumerator")]
	public static extern void QMetaObject_Enumerator(void* c_this, int32 index);
	[LinkName("QMetaObject_Property")]
	public static extern void QMetaObject_Property(void* c_this, int32 index);
	[LinkName("QMetaObject_ClassInfo")]
	public static extern void QMetaObject_ClassInfo(void* c_this, int32 index);
	[LinkName("QMetaObject_UserProperty")]
	public static extern void QMetaObject_UserProperty(void* c_this);
	[LinkName("QMetaObject_CheckConnectArgs")]
	public static extern bool QMetaObject_CheckConnectArgs(char8* signal, char8* method);
	[LinkName("QMetaObject_CheckConnectArgs2")]
	public static extern bool QMetaObject_CheckConnectArgs2(void* signal, void* method);
	[LinkName("QMetaObject_NormalizedSignature")]
	public static extern libqt_string QMetaObject_NormalizedSignature(char8* method);
	[LinkName("QMetaObject_NormalizedType")]
	public static extern libqt_string QMetaObject_NormalizedType(char8* typeVal);
	[LinkName("QMetaObject_Connect")]
	public static extern void QMetaObject_Connect(void* sender, int32 signal_index, void* receiver, int32 method_index);
	[LinkName("QMetaObject_Disconnect")]
	public static extern bool QMetaObject_Disconnect(void* sender, int32 signal_index, void* receiver, int32 method_index);
	[LinkName("QMetaObject_DisconnectOne")]
	public static extern bool QMetaObject_DisconnectOne(void* sender, int32 signal_index, void* receiver, int32 method_index);
	[LinkName("QMetaObject_ConnectSlotsByName")]
	public static extern void QMetaObject_ConnectSlotsByName(void* o);
	[LinkName("QMetaObject_Activate")]
	public static extern void QMetaObject_Activate(void* sender, int32 signal_index, void* argv);
	[LinkName("QMetaObject_Activate2")]
	public static extern void QMetaObject_Activate2(void* sender, void* param2, int32 local_signal_index, void* argv);
	[LinkName("QMetaObject_Activate3")]
	public static extern void QMetaObject_Activate3(void* sender, int32 signal_offset, int32 local_signal_index, void* argv);
	[LinkName("QMetaObject_InvokeMethod")]
	public static extern bool QMetaObject_InvokeMethod(void* obj, char8* member, int64 param3, void retVal);
	[LinkName("QMetaObject_InvokeMethod2")]
	public static extern bool QMetaObject_InvokeMethod2(void* obj, char8* member, void retVal);
	[LinkName("QMetaObject_InvokeMethod3")]
	public static extern bool QMetaObject_InvokeMethod3(void* obj, char8* member, int64 typeVal);
	[LinkName("QMetaObject_InvokeMethod4")]
	public static extern bool QMetaObject_InvokeMethod4(void* obj, char8* member);
	[LinkName("QMetaObject_NewInstance")]
	public static extern void* QMetaObject_NewInstance(void* c_this);
	[LinkName("QMetaObject_StaticMetacall")]
	public static extern int32 QMetaObject_StaticMetacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QMetaObject_Metacall")]
	public static extern int32 QMetaObject_Metacall(void* param1, int64 param2, int32 param3, void* param4);
	[LinkName("QMetaObject_Tr3")]
	public static extern libqt_string QMetaObject_Tr3(void* c_this, char8* s, char8* c, int32 n);
	[LinkName("QMetaObject_Connect5")]
	public static extern void QMetaObject_Connect5(void* sender, int32 signal_index, void* receiver, int32 method_index, int32 typeVal);
	[LinkName("QMetaObject_Connect6")]
	public static extern void QMetaObject_Connect6(void* sender, int32 signal_index, void* receiver, int32 method_index, int32 typeVal, int32* types);
	[LinkName("QMetaObject_InvokeMethod5")]
	public static extern bool QMetaObject_InvokeMethod5(void* obj, char8* member, int64 param3, void retVal, void val0);
	[LinkName("QMetaObject_InvokeMethod6")]
	public static extern bool QMetaObject_InvokeMethod6(void* obj, char8* member, int64 param3, void retVal, void val0, void val1);
	[LinkName("QMetaObject_InvokeMethod7")]
	public static extern bool QMetaObject_InvokeMethod7(void* obj, char8* member, int64 param3, void retVal, void val0, void val1, void val2);
	[LinkName("QMetaObject_InvokeMethod8")]
	public static extern bool QMetaObject_InvokeMethod8(void* obj, char8* member, int64 param3, void retVal, void val0, void val1, void val2, void val3);
	[LinkName("QMetaObject_InvokeMethod9")]
	public static extern bool QMetaObject_InvokeMethod9(void* obj, char8* member, int64 param3, void retVal, void val0, void val1, void val2, void val3, void val4);
	[LinkName("QMetaObject_InvokeMethod10")]
	public static extern bool QMetaObject_InvokeMethod10(void* obj, char8* member, int64 param3, void retVal, void val0, void val1, void val2, void val3, void val4, void val5);
	[LinkName("QMetaObject_InvokeMethod11")]
	public static extern bool QMetaObject_InvokeMethod11(void* obj, char8* member, int64 param3, void retVal, void val0, void val1, void val2, void val3, void val4, void val5, void val6);
	[LinkName("QMetaObject_InvokeMethod12")]
	public static extern bool QMetaObject_InvokeMethod12(void* obj, char8* member, int64 param3, void retVal, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7);
	[LinkName("QMetaObject_InvokeMethod13")]
	public static extern bool QMetaObject_InvokeMethod13(void* obj, char8* member, int64 param3, void retVal, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8);
	[LinkName("QMetaObject_InvokeMethod14")]
	public static extern bool QMetaObject_InvokeMethod14(void* obj, char8* member, int64 param3, void retVal, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8, void val9);
	[LinkName("QMetaObject_InvokeMethod42")]
	public static extern bool QMetaObject_InvokeMethod42(void* obj, char8* member, void retVal, void val0);
	[LinkName("QMetaObject_InvokeMethod52")]
	public static extern bool QMetaObject_InvokeMethod52(void* obj, char8* member, void retVal, void val0, void val1);
	[LinkName("QMetaObject_InvokeMethod62")]
	public static extern bool QMetaObject_InvokeMethod62(void* obj, char8* member, void retVal, void val0, void val1, void val2);
	[LinkName("QMetaObject_InvokeMethod72")]
	public static extern bool QMetaObject_InvokeMethod72(void* obj, char8* member, void retVal, void val0, void val1, void val2, void val3);
	[LinkName("QMetaObject_InvokeMethod82")]
	public static extern bool QMetaObject_InvokeMethod82(void* obj, char8* member, void retVal, void val0, void val1, void val2, void val3, void val4);
	[LinkName("QMetaObject_InvokeMethod92")]
	public static extern bool QMetaObject_InvokeMethod92(void* obj, char8* member, void retVal, void val0, void val1, void val2, void val3, void val4, void val5);
	[LinkName("QMetaObject_InvokeMethod102")]
	public static extern bool QMetaObject_InvokeMethod102(void* obj, char8* member, void retVal, void val0, void val1, void val2, void val3, void val4, void val5, void val6);
	[LinkName("QMetaObject_InvokeMethod112")]
	public static extern bool QMetaObject_InvokeMethod112(void* obj, char8* member, void retVal, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7);
	[LinkName("QMetaObject_InvokeMethod122")]
	public static extern bool QMetaObject_InvokeMethod122(void* obj, char8* member, void retVal, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8);
	[LinkName("QMetaObject_InvokeMethod132")]
	public static extern bool QMetaObject_InvokeMethod132(void* obj, char8* member, void retVal, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8, void val9);
	[LinkName("QMetaObject_InvokeMethod43")]
	public static extern bool QMetaObject_InvokeMethod43(void* obj, char8* member, int64 typeVal, void val0);
	[LinkName("QMetaObject_InvokeMethod53")]
	public static extern bool QMetaObject_InvokeMethod53(void* obj, char8* member, int64 typeVal, void val0, void val1);
	[LinkName("QMetaObject_InvokeMethod63")]
	public static extern bool QMetaObject_InvokeMethod63(void* obj, char8* member, int64 typeVal, void val0, void val1, void val2);
	[LinkName("QMetaObject_InvokeMethod73")]
	public static extern bool QMetaObject_InvokeMethod73(void* obj, char8* member, int64 typeVal, void val0, void val1, void val2, void val3);
	[LinkName("QMetaObject_InvokeMethod83")]
	public static extern bool QMetaObject_InvokeMethod83(void* obj, char8* member, int64 typeVal, void val0, void val1, void val2, void val3, void val4);
	[LinkName("QMetaObject_InvokeMethod93")]
	public static extern bool QMetaObject_InvokeMethod93(void* obj, char8* member, int64 typeVal, void val0, void val1, void val2, void val3, void val4, void val5);
	[LinkName("QMetaObject_InvokeMethod103")]
	public static extern bool QMetaObject_InvokeMethod103(void* obj, char8* member, int64 typeVal, void val0, void val1, void val2, void val3, void val4, void val5, void val6);
	[LinkName("QMetaObject_InvokeMethod113")]
	public static extern bool QMetaObject_InvokeMethod113(void* obj, char8* member, int64 typeVal, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7);
	[LinkName("QMetaObject_InvokeMethod123")]
	public static extern bool QMetaObject_InvokeMethod123(void* obj, char8* member, int64 typeVal, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8);
	[LinkName("QMetaObject_InvokeMethod133")]
	public static extern bool QMetaObject_InvokeMethod133(void* obj, char8* member, int64 typeVal, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8, void val9);
	[LinkName("QMetaObject_InvokeMethod32")]
	public static extern bool QMetaObject_InvokeMethod32(void* obj, char8* member, void val0);
	[LinkName("QMetaObject_InvokeMethod44")]
	public static extern bool QMetaObject_InvokeMethod44(void* obj, char8* member, void val0, void val1);
	[LinkName("QMetaObject_InvokeMethod54")]
	public static extern bool QMetaObject_InvokeMethod54(void* obj, char8* member, void val0, void val1, void val2);
	[LinkName("QMetaObject_InvokeMethod64")]
	public static extern bool QMetaObject_InvokeMethod64(void* obj, char8* member, void val0, void val1, void val2, void val3);
	[LinkName("QMetaObject_InvokeMethod74")]
	public static extern bool QMetaObject_InvokeMethod74(void* obj, char8* member, void val0, void val1, void val2, void val3, void val4);
	[LinkName("QMetaObject_InvokeMethod84")]
	public static extern bool QMetaObject_InvokeMethod84(void* obj, char8* member, void val0, void val1, void val2, void val3, void val4, void val5);
	[LinkName("QMetaObject_InvokeMethod94")]
	public static extern bool QMetaObject_InvokeMethod94(void* obj, char8* member, void val0, void val1, void val2, void val3, void val4, void val5, void val6);
	[LinkName("QMetaObject_InvokeMethod104")]
	public static extern bool QMetaObject_InvokeMethod104(void* obj, char8* member, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7);
	[LinkName("QMetaObject_InvokeMethod114")]
	public static extern bool QMetaObject_InvokeMethod114(void* obj, char8* member, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8);
	[LinkName("QMetaObject_InvokeMethod124")]
	public static extern bool QMetaObject_InvokeMethod124(void* obj, char8* member, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8, void val9);
	[LinkName("QMetaObject_NewInstance1")]
	public static extern void* QMetaObject_NewInstance1(void* c_this, void val0);
	[LinkName("QMetaObject_NewInstance2")]
	public static extern void* QMetaObject_NewInstance2(void* c_this, void val0, void val1);
	[LinkName("QMetaObject_NewInstance3")]
	public static extern void* QMetaObject_NewInstance3(void* c_this, void val0, void val1, void val2);
	[LinkName("QMetaObject_NewInstance4")]
	public static extern void* QMetaObject_NewInstance4(void* c_this, void val0, void val1, void val2, void val3);
	[LinkName("QMetaObject_NewInstance5")]
	public static extern void* QMetaObject_NewInstance5(void* c_this, void val0, void val1, void val2, void val3, void val4);
	[LinkName("QMetaObject_NewInstance6")]
	public static extern void* QMetaObject_NewInstance6(void* c_this, void val0, void val1, void val2, void val3, void val4, void val5);
	[LinkName("QMetaObject_NewInstance7")]
	public static extern void* QMetaObject_NewInstance7(void* c_this, void val0, void val1, void val2, void val3, void val4, void val5, void val6);
	[LinkName("QMetaObject_NewInstance8")]
	public static extern void* QMetaObject_NewInstance8(void* c_this, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7);
	[LinkName("QMetaObject_NewInstance9")]
	public static extern void* QMetaObject_NewInstance9(void* c_this, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8);
	[LinkName("QMetaObject_NewInstance10")]
	public static extern void* QMetaObject_NewInstance10(void* c_this, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8, void val9);
	/// Delete this object from C++ memory
	[LinkName("QMetaObject_Delete")]
	public static extern void QMetaObject_Delete(void* self);
}
public interface IQMetaObject__Connection
{
	void* NativePtr { get; }
}
public class QMetaObject__Connection : IQMetaObject__Connection
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QMetaObject__Connection_new();
	}
	
	public ~this()
	{
		CQt.QMetaObject__Connection_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QMetaObject__Connection other)
	{
		CQt.QMetaObject__Connection_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Swap(QMetaObject__Connection other)
	{
		CQt.QMetaObject__Connection_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QMetaObject__Connection_new")]
	public static extern void* QMetaObject__Connection_new();
	[LinkName("QMetaObject__Connection_new2")]
	public static extern void* QMetaObject__Connection_new2(void* other);
	[LinkName("QMetaObject__Connection_OperatorAssign")]
	public static extern void QMetaObject__Connection_OperatorAssign(void* c_this, void* other);
	[LinkName("QMetaObject__Connection_Swap")]
	public static extern void QMetaObject__Connection_Swap(void* c_this, void* other);
	/// Delete this object from C++ memory
	[LinkName("QMetaObject__Connection_Delete")]
	public static extern void QMetaObject__Connection_Delete(void* self);
}
public interface IQMetaObject__SuperData
{
	void* NativePtr { get; }
}
public class QMetaObject__SuperData : IQMetaObject__SuperData
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QMetaObject__SuperData_new();
	}
	
	public ~this()
	{
		CQt.QMetaObject__SuperData_Delete(this.nativePtr);
	}
	
	public void* OperatorMinusGreater()
	{
		return CQt.QMetaObject__SuperData_OperatorMinusGreater(this.nativePtr);
	}
	
	public void* ToConstQMetaObjectMultiply()
	{
		return CQt.QMetaObject__SuperData_ToConstQMetaObjectMultiply(this.nativePtr);
	}
	
	public void OperatorAssign(QMetaObject__SuperData param1)
	{
		CQt.QMetaObject__SuperData_OperatorAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QMetaObject__SuperData_new")]
	public static extern void* QMetaObject__SuperData_new();
	[LinkName("QMetaObject__SuperData_new2")]
	public static extern void* QMetaObject__SuperData_new2(void* mo);
	[LinkName("QMetaObject__SuperData_new3")]
	public static extern void* QMetaObject__SuperData_new3(void* param1);
	[LinkName("QMetaObject__SuperData_OperatorMinusGreater")]
	public static extern void* QMetaObject__SuperData_OperatorMinusGreater(void* c_this);
	[LinkName("QMetaObject__SuperData_ToConstQMetaObjectMultiply")]
	public static extern void* QMetaObject__SuperData_ToConstQMetaObjectMultiply(void* c_this);
	[LinkName("QMetaObject__SuperData_OperatorAssign")]
	public static extern void QMetaObject__SuperData_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QMetaObject__SuperData_Delete")]
	public static extern void QMetaObject__SuperData_Delete(void* self);
}
public interface IQMetaObject__Data
{
	void* NativePtr { get; }
}
public class QMetaObject__Data : IQMetaObject__Data
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QMetaObject__Data_new();
	}
	
	public ~this()
	{
		CQt.QMetaObject__Data_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QMetaObject__Data param1)
	{
		CQt.QMetaObject__Data_OperatorAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QMetaObject__Data_new")]
	public static extern void* QMetaObject__Data_new();
	[LinkName("QMetaObject__Data_new2")]
	public static extern void* QMetaObject__Data_new2(void* param1);
	[LinkName("QMetaObject__Data_OperatorAssign")]
	public static extern void QMetaObject__Data_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QMetaObject__Data_Delete")]
	public static extern void QMetaObject__Data_Delete(void* self);
}