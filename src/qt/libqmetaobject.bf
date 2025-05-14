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
public interface IQMetaMethod
{
	void* NativePtr { get; }
}
public struct QMetaMethodPtr : IQMetaMethod, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQMetaMethod other)
	{
		return .(CQt.QMetaMethod_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QMetaMethod_Delete(this.nativePtr);
	}
	
	public libqt_string MethodSignature()
	{
		return CQt.QMetaMethod_MethodSignature(this.nativePtr);
	}
	
	public libqt_string Name()
	{
		return CQt.QMetaMethod_Name(this.nativePtr);
	}
	
	public char8* TypeName()
	{
		return CQt.QMetaMethod_TypeName(this.nativePtr);
	}
	
	public int32 ReturnType()
	{
		return CQt.QMetaMethod_ReturnType(this.nativePtr);
	}
	
	public void ReturnMetaType()
	{
		CQt.QMetaMethod_ReturnMetaType(this.nativePtr);
	}
	
	public int32 ParameterCount()
	{
		return CQt.QMetaMethod_ParameterCount(this.nativePtr);
	}
	
	public int32 ParameterType(int32 index)
	{
		return CQt.QMetaMethod_ParameterType(this.nativePtr, index);
	}
	
	public void ParameterMetaType(int32 index)
	{
		CQt.QMetaMethod_ParameterMetaType(this.nativePtr, index);
	}
	
	public void GetParameterTypes(int32* types)
	{
		CQt.QMetaMethod_GetParameterTypes(this.nativePtr, types);
	}
	
	public libqt_string[] ParameterTypes()
	{
		return CQt.QMetaMethod_ParameterTypes(this.nativePtr);
	}
	
	public libqt_string ParameterTypeName(int32 index)
	{
		return CQt.QMetaMethod_ParameterTypeName(this.nativePtr, index);
	}
	
	public libqt_string[] ParameterNames()
	{
		return CQt.QMetaMethod_ParameterNames(this.nativePtr);
	}
	
	public char8* Tag()
	{
		return CQt.QMetaMethod_Tag(this.nativePtr);
	}
	
	public int64 Access()
	{
		return CQt.QMetaMethod_Access(this.nativePtr);
	}
	
	public int64 MethodType()
	{
		return CQt.QMetaMethod_MethodType(this.nativePtr);
	}
	
	public int32 Attributes()
	{
		return CQt.QMetaMethod_Attributes(this.nativePtr);
	}
	
	public int32 MethodIndex()
	{
		return CQt.QMetaMethod_MethodIndex(this.nativePtr);
	}
	
	public int32 RelativeMethodIndex()
	{
		return CQt.QMetaMethod_RelativeMethodIndex(this.nativePtr);
	}
	
	public int32 Revision()
	{
		return CQt.QMetaMethod_Revision(this.nativePtr);
	}
	
	public bool IsConst()
	{
		return CQt.QMetaMethod_IsConst(this.nativePtr);
	}
	
	public void* EnclosingMetaObject()
	{
		return CQt.QMetaMethod_EnclosingMetaObject(this.nativePtr);
	}
	
	public bool Invoke(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue)
	{
		return CQt.QMetaMethod_Invoke(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default);
	}
	
	public bool Invoke2(IQObject object, IQGenericReturnArgument returnValue)
	{
		return CQt.QMetaMethod_Invoke2(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default);
	}
	
	public bool Invoke3(IQObject object, int64 connectionType)
	{
		return CQt.QMetaMethod_Invoke3(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType);
	}
	
	public bool InvokeWithObject(IQObject object)
	{
		return CQt.QMetaMethod_InvokeWithObject(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr);
	}
	
	public bool InvokeOnGadget(void* gadget, IQGenericReturnArgument returnValue)
	{
		return CQt.QMetaMethod_InvokeOnGadget(this.nativePtr, gadget, default);
	}
	
	public bool InvokeOnGadgetWithGadget(void* gadget)
	{
		return CQt.QMetaMethod_InvokeOnGadgetWithGadget(this.nativePtr, gadget);
	}
	
	public bool IsValid()
	{
		return CQt.QMetaMethod_IsValid(this.nativePtr);
	}
	
	public bool Invoke4(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0)
	{
		return CQt.QMetaMethod_Invoke4(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default);
	}
	
	public bool Invoke5(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaMethod_Invoke5(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default);
	}
	
	public bool Invoke6(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaMethod_Invoke6(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default, default);
	}
	
	public bool Invoke7(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaMethod_Invoke7(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default, default, default);
	}
	
	public bool Invoke8(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaMethod_Invoke8(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default, default, default, default);
	}
	
	public bool Invoke9(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaMethod_Invoke9(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default, default, default, default, default);
	}
	
	public bool Invoke10(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaMethod_Invoke10(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke11(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaMethod_Invoke11(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke12(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaMethod_Invoke12(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke13(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaMethod_Invoke13(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke32(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0)
	{
		return CQt.QMetaMethod_Invoke32(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default);
	}
	
	public bool Invoke42(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaMethod_Invoke42(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default);
	}
	
	public bool Invoke52(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaMethod_Invoke52(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default, default);
	}
	
	public bool Invoke62(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaMethod_Invoke62(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default, default, default);
	}
	
	public bool Invoke72(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaMethod_Invoke72(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default, default, default, default);
	}
	
	public bool Invoke82(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaMethod_Invoke82(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default, default, default, default, default);
	}
	
	public bool Invoke92(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaMethod_Invoke92(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke102(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaMethod_Invoke102(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke112(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaMethod_Invoke112(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke122(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaMethod_Invoke122(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke33(IQObject object, int64 connectionType, IQGenericArgument val0)
	{
		return CQt.QMetaMethod_Invoke33(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default);
	}
	
	public bool Invoke43(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaMethod_Invoke43(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default);
	}
	
	public bool Invoke53(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaMethod_Invoke53(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default);
	}
	
	public bool Invoke63(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaMethod_Invoke63(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default, default);
	}
	
	public bool Invoke73(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaMethod_Invoke73(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default, default, default);
	}
	
	public bool Invoke83(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaMethod_Invoke83(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default, default, default, default);
	}
	
	public bool Invoke93(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaMethod_Invoke93(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default, default, default, default, default);
	}
	
	public bool Invoke103(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaMethod_Invoke103(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke113(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaMethod_Invoke113(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke123(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaMethod_Invoke123(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, (int64)connectionType, default, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke22(IQObject object, IQGenericArgument val0)
	{
		return CQt.QMetaMethod_Invoke22(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default);
	}
	
	public bool Invoke34(IQObject object, IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaMethod_Invoke34(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default);
	}
	
	public bool Invoke44(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaMethod_Invoke44(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default);
	}
	
	public bool Invoke54(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaMethod_Invoke54(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default, default);
	}
	
	public bool Invoke64(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaMethod_Invoke64(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default, default, default);
	}
	
	public bool Invoke74(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaMethod_Invoke74(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default, default, default, default);
	}
	
	public bool Invoke84(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaMethod_Invoke84(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default, default, default, default, default);
	}
	
	public bool Invoke94(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaMethod_Invoke94(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke104(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaMethod_Invoke104(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke114(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaMethod_Invoke114(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr, default, default, default, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget3(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0)
	{
		return CQt.QMetaMethod_InvokeOnGadget3(this.nativePtr, gadget, default, default);
	}
	
	public bool InvokeOnGadget4(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaMethod_InvokeOnGadget4(this.nativePtr, gadget, default, default, default);
	}
	
	public bool InvokeOnGadget5(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaMethod_InvokeOnGadget5(this.nativePtr, gadget, default, default, default, default);
	}
	
	public bool InvokeOnGadget6(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaMethod_InvokeOnGadget6(this.nativePtr, gadget, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget7(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaMethod_InvokeOnGadget7(this.nativePtr, gadget, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget8(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaMethod_InvokeOnGadget8(this.nativePtr, gadget, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget9(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaMethod_InvokeOnGadget9(this.nativePtr, gadget, default, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget10(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaMethod_InvokeOnGadget10(this.nativePtr, gadget, default, default, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget11(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaMethod_InvokeOnGadget11(this.nativePtr, gadget, default, default, default, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget12(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaMethod_InvokeOnGadget12(this.nativePtr, gadget, default, default, default, default, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget2(void* gadget, IQGenericArgument val0)
	{
		return CQt.QMetaMethod_InvokeOnGadget2(this.nativePtr, gadget, default);
	}
	
	public bool InvokeOnGadget32(void* gadget, IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaMethod_InvokeOnGadget32(this.nativePtr, gadget, default, default);
	}
	
	public bool InvokeOnGadget42(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaMethod_InvokeOnGadget42(this.nativePtr, gadget, default, default, default);
	}
	
	public bool InvokeOnGadget52(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaMethod_InvokeOnGadget52(this.nativePtr, gadget, default, default, default, default);
	}
	
	public bool InvokeOnGadget62(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaMethod_InvokeOnGadget62(this.nativePtr, gadget, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget72(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaMethod_InvokeOnGadget72(this.nativePtr, gadget, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget82(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaMethod_InvokeOnGadget82(this.nativePtr, gadget, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget92(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaMethod_InvokeOnGadget92(this.nativePtr, gadget, default, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget102(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaMethod_InvokeOnGadget102(this.nativePtr, gadget, default, default, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget112(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaMethod_InvokeOnGadget112(this.nativePtr, gadget, default, default, default, default, default, default, default, default, default, default);
	}
	
}
public class QMetaMethod
{
	public QMetaMethodPtr handle;
	
	public static implicit operator QMetaMethodPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQMetaMethod other)
	{
		this.handle = QMetaMethodPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public libqt_string MethodSignature()
	{
		return this.handle.MethodSignature();
	}
	
	public libqt_string Name()
	{
		return this.handle.Name();
	}
	
	public char8* TypeName()
	{
		return this.handle.TypeName();
	}
	
	public int32 ReturnType()
	{
		return this.handle.ReturnType();
	}
	
	public void ReturnMetaType()
	{
		this.handle.ReturnMetaType();
	}
	
	public int32 ParameterCount()
	{
		return this.handle.ParameterCount();
	}
	
	public int32 ParameterType(int32 index)
	{
		return this.handle.ParameterType(index);
	}
	
	public void ParameterMetaType(int32 index)
	{
		this.handle.ParameterMetaType(index);
	}
	
	public void GetParameterTypes(int32* types)
	{
		this.handle.GetParameterTypes(types);
	}
	
	public libqt_string[] ParameterTypes()
	{
		return this.handle.ParameterTypes();
	}
	
	public libqt_string ParameterTypeName(int32 index)
	{
		return this.handle.ParameterTypeName(index);
	}
	
	public libqt_string[] ParameterNames()
	{
		return this.handle.ParameterNames();
	}
	
	public char8* Tag()
	{
		return this.handle.Tag();
	}
	
	public int64 Access()
	{
		return this.handle.Access();
	}
	
	public int64 MethodType()
	{
		return this.handle.MethodType();
	}
	
	public int32 Attributes()
	{
		return this.handle.Attributes();
	}
	
	public int32 MethodIndex()
	{
		return this.handle.MethodIndex();
	}
	
	public int32 RelativeMethodIndex()
	{
		return this.handle.RelativeMethodIndex();
	}
	
	public int32 Revision()
	{
		return this.handle.Revision();
	}
	
	public bool IsConst()
	{
		return this.handle.IsConst();
	}
	
	public void* EnclosingMetaObject()
	{
		return this.handle.EnclosingMetaObject();
	}
	
	public bool Invoke(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue)
	{
		return this.handle.Invoke(object, connectionType, default);
	}
	
	public bool Invoke2(IQObject object, IQGenericReturnArgument returnValue)
	{
		return this.handle.Invoke2(object, default);
	}
	
	public bool Invoke3(IQObject object, int64 connectionType)
	{
		return this.handle.Invoke3(object, connectionType);
	}
	
	public bool InvokeWithObject(IQObject object)
	{
		return this.handle.InvokeWithObject(object);
	}
	
	public bool InvokeOnGadget(void* gadget, IQGenericReturnArgument returnValue)
	{
		return this.handle.InvokeOnGadget(gadget, default);
	}
	
	public bool InvokeOnGadgetWithGadget(void* gadget)
	{
		return this.handle.InvokeOnGadgetWithGadget(gadget);
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public bool Invoke4(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0)
	{
		return this.handle.Invoke4(object, connectionType, default, default);
	}
	
	public bool Invoke5(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1)
	{
		return this.handle.Invoke5(object, connectionType, default, default, default);
	}
	
	public bool Invoke6(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return this.handle.Invoke6(object, connectionType, default, default, default, default);
	}
	
	public bool Invoke7(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return this.handle.Invoke7(object, connectionType, default, default, default, default, default);
	}
	
	public bool Invoke8(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return this.handle.Invoke8(object, connectionType, default, default, default, default, default, default);
	}
	
	public bool Invoke9(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return this.handle.Invoke9(object, connectionType, default, default, default, default, default, default, default);
	}
	
	public bool Invoke10(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return this.handle.Invoke10(object, connectionType, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke11(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return this.handle.Invoke11(object, connectionType, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke12(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return this.handle.Invoke12(object, connectionType, default, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke13(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return this.handle.Invoke13(object, connectionType, default, default, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke32(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0)
	{
		return this.handle.Invoke32(object, default, default);
	}
	
	public bool Invoke42(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1)
	{
		return this.handle.Invoke42(object, default, default, default);
	}
	
	public bool Invoke52(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return this.handle.Invoke52(object, default, default, default, default);
	}
	
	public bool Invoke62(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return this.handle.Invoke62(object, default, default, default, default, default);
	}
	
	public bool Invoke72(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return this.handle.Invoke72(object, default, default, default, default, default, default);
	}
	
	public bool Invoke82(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return this.handle.Invoke82(object, default, default, default, default, default, default, default);
	}
	
	public bool Invoke92(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return this.handle.Invoke92(object, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke102(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return this.handle.Invoke102(object, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke112(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return this.handle.Invoke112(object, default, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke122(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return this.handle.Invoke122(object, default, default, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke33(IQObject object, int64 connectionType, IQGenericArgument val0)
	{
		return this.handle.Invoke33(object, connectionType, default);
	}
	
	public bool Invoke43(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1)
	{
		return this.handle.Invoke43(object, connectionType, default, default);
	}
	
	public bool Invoke53(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return this.handle.Invoke53(object, connectionType, default, default, default);
	}
	
	public bool Invoke63(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return this.handle.Invoke63(object, connectionType, default, default, default, default);
	}
	
	public bool Invoke73(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return this.handle.Invoke73(object, connectionType, default, default, default, default, default);
	}
	
	public bool Invoke83(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return this.handle.Invoke83(object, connectionType, default, default, default, default, default, default);
	}
	
	public bool Invoke93(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return this.handle.Invoke93(object, connectionType, default, default, default, default, default, default, default);
	}
	
	public bool Invoke103(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return this.handle.Invoke103(object, connectionType, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke113(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return this.handle.Invoke113(object, connectionType, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke123(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return this.handle.Invoke123(object, connectionType, default, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke22(IQObject object, IQGenericArgument val0)
	{
		return this.handle.Invoke22(object, default);
	}
	
	public bool Invoke34(IQObject object, IQGenericArgument val0, IQGenericArgument val1)
	{
		return this.handle.Invoke34(object, default, default);
	}
	
	public bool Invoke44(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return this.handle.Invoke44(object, default, default, default);
	}
	
	public bool Invoke54(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return this.handle.Invoke54(object, default, default, default, default);
	}
	
	public bool Invoke64(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return this.handle.Invoke64(object, default, default, default, default, default);
	}
	
	public bool Invoke74(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return this.handle.Invoke74(object, default, default, default, default, default, default);
	}
	
	public bool Invoke84(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return this.handle.Invoke84(object, default, default, default, default, default, default, default);
	}
	
	public bool Invoke94(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return this.handle.Invoke94(object, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke104(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return this.handle.Invoke104(object, default, default, default, default, default, default, default, default, default);
	}
	
	public bool Invoke114(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return this.handle.Invoke114(object, default, default, default, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget3(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0)
	{
		return this.handle.InvokeOnGadget3(gadget, default, default);
	}
	
	public bool InvokeOnGadget4(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1)
	{
		return this.handle.InvokeOnGadget4(gadget, default, default, default);
	}
	
	public bool InvokeOnGadget5(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return this.handle.InvokeOnGadget5(gadget, default, default, default, default);
	}
	
	public bool InvokeOnGadget6(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return this.handle.InvokeOnGadget6(gadget, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget7(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return this.handle.InvokeOnGadget7(gadget, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget8(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return this.handle.InvokeOnGadget8(gadget, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget9(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return this.handle.InvokeOnGadget9(gadget, default, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget10(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return this.handle.InvokeOnGadget10(gadget, default, default, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget11(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return this.handle.InvokeOnGadget11(gadget, default, default, default, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget12(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return this.handle.InvokeOnGadget12(gadget, default, default, default, default, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget2(void* gadget, IQGenericArgument val0)
	{
		return this.handle.InvokeOnGadget2(gadget, default);
	}
	
	public bool InvokeOnGadget32(void* gadget, IQGenericArgument val0, IQGenericArgument val1)
	{
		return this.handle.InvokeOnGadget32(gadget, default, default);
	}
	
	public bool InvokeOnGadget42(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return this.handle.InvokeOnGadget42(gadget, default, default, default);
	}
	
	public bool InvokeOnGadget52(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return this.handle.InvokeOnGadget52(gadget, default, default, default, default);
	}
	
	public bool InvokeOnGadget62(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return this.handle.InvokeOnGadget62(gadget, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget72(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return this.handle.InvokeOnGadget72(gadget, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget82(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return this.handle.InvokeOnGadget82(gadget, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget92(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return this.handle.InvokeOnGadget92(gadget, default, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget102(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return this.handle.InvokeOnGadget102(gadget, default, default, default, default, default, default, default, default, default);
	}
	
	public bool InvokeOnGadget112(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return this.handle.InvokeOnGadget112(gadget, default, default, default, default, default, default, default, default, default, default);
	}
	
}
extension CQt
{
	[LinkName("QMetaMethod_new")]
	public static extern void* QMetaMethod_new(void* other);
	[LinkName("QMetaMethod_new2")]
	public static extern void* QMetaMethod_new2(void* other);
	[LinkName("QMetaMethod_new3")]
	public static extern void* QMetaMethod_new3();
	[LinkName("QMetaMethod_new4")]
	public static extern void* QMetaMethod_new4(void* param1);
	[LinkName("QMetaMethod_MethodSignature")]
	public static extern libqt_string QMetaMethod_MethodSignature(void* c_this);
	[LinkName("QMetaMethod_Name")]
	public static extern libqt_string QMetaMethod_Name(void* c_this);
	[LinkName("QMetaMethod_TypeName")]
	public static extern char8* QMetaMethod_TypeName(void* c_this);
	[LinkName("QMetaMethod_ReturnType")]
	public static extern int32 QMetaMethod_ReturnType(void* c_this);
	[LinkName("QMetaMethod_ReturnMetaType")]
	public static extern void QMetaMethod_ReturnMetaType(void* c_this);
	[LinkName("QMetaMethod_ParameterCount")]
	public static extern int32 QMetaMethod_ParameterCount(void* c_this);
	[LinkName("QMetaMethod_ParameterType")]
	public static extern int32 QMetaMethod_ParameterType(void* c_this, int32 index);
	[LinkName("QMetaMethod_ParameterMetaType")]
	public static extern void QMetaMethod_ParameterMetaType(void* c_this, int32 index);
	[LinkName("QMetaMethod_GetParameterTypes")]
	public static extern void QMetaMethod_GetParameterTypes(void* c_this, int32* types);
	[LinkName("QMetaMethod_ParameterTypes")]
	public static extern libqt_string[] QMetaMethod_ParameterTypes(void* c_this);
	[LinkName("QMetaMethod_ParameterTypeName")]
	public static extern libqt_string QMetaMethod_ParameterTypeName(void* c_this, int32 index);
	[LinkName("QMetaMethod_ParameterNames")]
	public static extern libqt_string[] QMetaMethod_ParameterNames(void* c_this);
	[LinkName("QMetaMethod_Tag")]
	public static extern char8* QMetaMethod_Tag(void* c_this);
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
	public static extern void* QMetaMethod_EnclosingMetaObject(void* c_this);
	[LinkName("QMetaMethod_Invoke")]
	public static extern bool QMetaMethod_Invoke(void* c_this, void* object, int64 connectionType, void returnValue);
	[LinkName("QMetaMethod_Invoke2")]
	public static extern bool QMetaMethod_Invoke2(void* c_this, void* object, void returnValue);
	[LinkName("QMetaMethod_Invoke3")]
	public static extern bool QMetaMethod_Invoke3(void* c_this, void* object, int64 connectionType);
	[LinkName("QMetaMethod_InvokeWithObject")]
	public static extern bool QMetaMethod_InvokeWithObject(void* c_this, void* object);
	[LinkName("QMetaMethod_InvokeOnGadget")]
	public static extern bool QMetaMethod_InvokeOnGadget(void* c_this, void* gadget, void returnValue);
	[LinkName("QMetaMethod_InvokeOnGadgetWithGadget")]
	public static extern bool QMetaMethod_InvokeOnGadgetWithGadget(void* c_this, void* gadget);
	[LinkName("QMetaMethod_IsValid")]
	public static extern bool QMetaMethod_IsValid(void* c_this);
	[LinkName("QMetaMethod_Invoke4")]
	public static extern bool QMetaMethod_Invoke4(void* c_this, void* object, int64 connectionType, void returnValue, void val0);
	[LinkName("QMetaMethod_Invoke5")]
	public static extern bool QMetaMethod_Invoke5(void* c_this, void* object, int64 connectionType, void returnValue, void val0, void val1);
	[LinkName("QMetaMethod_Invoke6")]
	public static extern bool QMetaMethod_Invoke6(void* c_this, void* object, int64 connectionType, void returnValue, void val0, void val1, void val2);
	[LinkName("QMetaMethod_Invoke7")]
	public static extern bool QMetaMethod_Invoke7(void* c_this, void* object, int64 connectionType, void returnValue, void val0, void val1, void val2, void val3);
	[LinkName("QMetaMethod_Invoke8")]
	public static extern bool QMetaMethod_Invoke8(void* c_this, void* object, int64 connectionType, void returnValue, void val0, void val1, void val2, void val3, void val4);
	[LinkName("QMetaMethod_Invoke9")]
	public static extern bool QMetaMethod_Invoke9(void* c_this, void* object, int64 connectionType, void returnValue, void val0, void val1, void val2, void val3, void val4, void val5);
	[LinkName("QMetaMethod_Invoke10")]
	public static extern bool QMetaMethod_Invoke10(void* c_this, void* object, int64 connectionType, void returnValue, void val0, void val1, void val2, void val3, void val4, void val5, void val6);
	[LinkName("QMetaMethod_Invoke11")]
	public static extern bool QMetaMethod_Invoke11(void* c_this, void* object, int64 connectionType, void returnValue, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7);
	[LinkName("QMetaMethod_Invoke12")]
	public static extern bool QMetaMethod_Invoke12(void* c_this, void* object, int64 connectionType, void returnValue, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8);
	[LinkName("QMetaMethod_Invoke13")]
	public static extern bool QMetaMethod_Invoke13(void* c_this, void* object, int64 connectionType, void returnValue, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8, void val9);
	[LinkName("QMetaMethod_Invoke32")]
	public static extern bool QMetaMethod_Invoke32(void* c_this, void* object, void returnValue, void val0);
	[LinkName("QMetaMethod_Invoke42")]
	public static extern bool QMetaMethod_Invoke42(void* c_this, void* object, void returnValue, void val0, void val1);
	[LinkName("QMetaMethod_Invoke52")]
	public static extern bool QMetaMethod_Invoke52(void* c_this, void* object, void returnValue, void val0, void val1, void val2);
	[LinkName("QMetaMethod_Invoke62")]
	public static extern bool QMetaMethod_Invoke62(void* c_this, void* object, void returnValue, void val0, void val1, void val2, void val3);
	[LinkName("QMetaMethod_Invoke72")]
	public static extern bool QMetaMethod_Invoke72(void* c_this, void* object, void returnValue, void val0, void val1, void val2, void val3, void val4);
	[LinkName("QMetaMethod_Invoke82")]
	public static extern bool QMetaMethod_Invoke82(void* c_this, void* object, void returnValue, void val0, void val1, void val2, void val3, void val4, void val5);
	[LinkName("QMetaMethod_Invoke92")]
	public static extern bool QMetaMethod_Invoke92(void* c_this, void* object, void returnValue, void val0, void val1, void val2, void val3, void val4, void val5, void val6);
	[LinkName("QMetaMethod_Invoke102")]
	public static extern bool QMetaMethod_Invoke102(void* c_this, void* object, void returnValue, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7);
	[LinkName("QMetaMethod_Invoke112")]
	public static extern bool QMetaMethod_Invoke112(void* c_this, void* object, void returnValue, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8);
	[LinkName("QMetaMethod_Invoke122")]
	public static extern bool QMetaMethod_Invoke122(void* c_this, void* object, void returnValue, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8, void val9);
	[LinkName("QMetaMethod_Invoke33")]
	public static extern bool QMetaMethod_Invoke33(void* c_this, void* object, int64 connectionType, void val0);
	[LinkName("QMetaMethod_Invoke43")]
	public static extern bool QMetaMethod_Invoke43(void* c_this, void* object, int64 connectionType, void val0, void val1);
	[LinkName("QMetaMethod_Invoke53")]
	public static extern bool QMetaMethod_Invoke53(void* c_this, void* object, int64 connectionType, void val0, void val1, void val2);
	[LinkName("QMetaMethod_Invoke63")]
	public static extern bool QMetaMethod_Invoke63(void* c_this, void* object, int64 connectionType, void val0, void val1, void val2, void val3);
	[LinkName("QMetaMethod_Invoke73")]
	public static extern bool QMetaMethod_Invoke73(void* c_this, void* object, int64 connectionType, void val0, void val1, void val2, void val3, void val4);
	[LinkName("QMetaMethod_Invoke83")]
	public static extern bool QMetaMethod_Invoke83(void* c_this, void* object, int64 connectionType, void val0, void val1, void val2, void val3, void val4, void val5);
	[LinkName("QMetaMethod_Invoke93")]
	public static extern bool QMetaMethod_Invoke93(void* c_this, void* object, int64 connectionType, void val0, void val1, void val2, void val3, void val4, void val5, void val6);
	[LinkName("QMetaMethod_Invoke103")]
	public static extern bool QMetaMethod_Invoke103(void* c_this, void* object, int64 connectionType, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7);
	[LinkName("QMetaMethod_Invoke113")]
	public static extern bool QMetaMethod_Invoke113(void* c_this, void* object, int64 connectionType, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8);
	[LinkName("QMetaMethod_Invoke123")]
	public static extern bool QMetaMethod_Invoke123(void* c_this, void* object, int64 connectionType, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8, void val9);
	[LinkName("QMetaMethod_Invoke22")]
	public static extern bool QMetaMethod_Invoke22(void* c_this, void* object, void val0);
	[LinkName("QMetaMethod_Invoke34")]
	public static extern bool QMetaMethod_Invoke34(void* c_this, void* object, void val0, void val1);
	[LinkName("QMetaMethod_Invoke44")]
	public static extern bool QMetaMethod_Invoke44(void* c_this, void* object, void val0, void val1, void val2);
	[LinkName("QMetaMethod_Invoke54")]
	public static extern bool QMetaMethod_Invoke54(void* c_this, void* object, void val0, void val1, void val2, void val3);
	[LinkName("QMetaMethod_Invoke64")]
	public static extern bool QMetaMethod_Invoke64(void* c_this, void* object, void val0, void val1, void val2, void val3, void val4);
	[LinkName("QMetaMethod_Invoke74")]
	public static extern bool QMetaMethod_Invoke74(void* c_this, void* object, void val0, void val1, void val2, void val3, void val4, void val5);
	[LinkName("QMetaMethod_Invoke84")]
	public static extern bool QMetaMethod_Invoke84(void* c_this, void* object, void val0, void val1, void val2, void val3, void val4, void val5, void val6);
	[LinkName("QMetaMethod_Invoke94")]
	public static extern bool QMetaMethod_Invoke94(void* c_this, void* object, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7);
	[LinkName("QMetaMethod_Invoke104")]
	public static extern bool QMetaMethod_Invoke104(void* c_this, void* object, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8);
	[LinkName("QMetaMethod_Invoke114")]
	public static extern bool QMetaMethod_Invoke114(void* c_this, void* object, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8, void val9);
	[LinkName("QMetaMethod_InvokeOnGadget3")]
	public static extern bool QMetaMethod_InvokeOnGadget3(void* c_this, void* gadget, void returnValue, void val0);
	[LinkName("QMetaMethod_InvokeOnGadget4")]
	public static extern bool QMetaMethod_InvokeOnGadget4(void* c_this, void* gadget, void returnValue, void val0, void val1);
	[LinkName("QMetaMethod_InvokeOnGadget5")]
	public static extern bool QMetaMethod_InvokeOnGadget5(void* c_this, void* gadget, void returnValue, void val0, void val1, void val2);
	[LinkName("QMetaMethod_InvokeOnGadget6")]
	public static extern bool QMetaMethod_InvokeOnGadget6(void* c_this, void* gadget, void returnValue, void val0, void val1, void val2, void val3);
	[LinkName("QMetaMethod_InvokeOnGadget7")]
	public static extern bool QMetaMethod_InvokeOnGadget7(void* c_this, void* gadget, void returnValue, void val0, void val1, void val2, void val3, void val4);
	[LinkName("QMetaMethod_InvokeOnGadget8")]
	public static extern bool QMetaMethod_InvokeOnGadget8(void* c_this, void* gadget, void returnValue, void val0, void val1, void val2, void val3, void val4, void val5);
	[LinkName("QMetaMethod_InvokeOnGadget9")]
	public static extern bool QMetaMethod_InvokeOnGadget9(void* c_this, void* gadget, void returnValue, void val0, void val1, void val2, void val3, void val4, void val5, void val6);
	[LinkName("QMetaMethod_InvokeOnGadget10")]
	public static extern bool QMetaMethod_InvokeOnGadget10(void* c_this, void* gadget, void returnValue, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7);
	[LinkName("QMetaMethod_InvokeOnGadget11")]
	public static extern bool QMetaMethod_InvokeOnGadget11(void* c_this, void* gadget, void returnValue, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8);
	[LinkName("QMetaMethod_InvokeOnGadget12")]
	public static extern bool QMetaMethod_InvokeOnGadget12(void* c_this, void* gadget, void returnValue, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8, void val9);
	[LinkName("QMetaMethod_InvokeOnGadget2")]
	public static extern bool QMetaMethod_InvokeOnGadget2(void* c_this, void* gadget, void val0);
	[LinkName("QMetaMethod_InvokeOnGadget32")]
	public static extern bool QMetaMethod_InvokeOnGadget32(void* c_this, void* gadget, void val0, void val1);
	[LinkName("QMetaMethod_InvokeOnGadget42")]
	public static extern bool QMetaMethod_InvokeOnGadget42(void* c_this, void* gadget, void val0, void val1, void val2);
	[LinkName("QMetaMethod_InvokeOnGadget52")]
	public static extern bool QMetaMethod_InvokeOnGadget52(void* c_this, void* gadget, void val0, void val1, void val2, void val3);
	[LinkName("QMetaMethod_InvokeOnGadget62")]
	public static extern bool QMetaMethod_InvokeOnGadget62(void* c_this, void* gadget, void val0, void val1, void val2, void val3, void val4);
	[LinkName("QMetaMethod_InvokeOnGadget72")]
	public static extern bool QMetaMethod_InvokeOnGadget72(void* c_this, void* gadget, void val0, void val1, void val2, void val3, void val4, void val5);
	[LinkName("QMetaMethod_InvokeOnGadget82")]
	public static extern bool QMetaMethod_InvokeOnGadget82(void* c_this, void* gadget, void val0, void val1, void val2, void val3, void val4, void val5, void val6);
	[LinkName("QMetaMethod_InvokeOnGadget92")]
	public static extern bool QMetaMethod_InvokeOnGadget92(void* c_this, void* gadget, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7);
	[LinkName("QMetaMethod_InvokeOnGadget102")]
	public static extern bool QMetaMethod_InvokeOnGadget102(void* c_this, void* gadget, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8);
	[LinkName("QMetaMethod_InvokeOnGadget112")]
	public static extern bool QMetaMethod_InvokeOnGadget112(void* c_this, void* gadget, void val0, void val1, void val2, void val3, void val4, void val5, void val6, void val7, void val8, void val9);
	/// Delete this object from C++ memory
	[LinkName("QMetaMethod_Delete")]
	public static extern void QMetaMethod_Delete(void* self);
}
public interface IQMetaEnum
{
	void* NativePtr { get; }
}
public struct QMetaEnumPtr : IQMetaEnum, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQMetaEnum other)
	{
		return .(CQt.QMetaEnum_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QMetaEnum_Delete(this.nativePtr);
	}
	
	public char8* Name()
	{
		return CQt.QMetaEnum_Name(this.nativePtr);
	}
	
	public char8* EnumName()
	{
		return CQt.QMetaEnum_EnumName(this.nativePtr);
	}
	
	public bool IsFlag()
	{
		return CQt.QMetaEnum_IsFlag(this.nativePtr);
	}
	
	public bool IsScoped()
	{
		return CQt.QMetaEnum_IsScoped(this.nativePtr);
	}
	
	public int32 KeyCount()
	{
		return CQt.QMetaEnum_KeyCount(this.nativePtr);
	}
	
	public char8* Key(int32 index)
	{
		return CQt.QMetaEnum_Key(this.nativePtr, index);
	}
	
	public int32 Value(int32 index)
	{
		return CQt.QMetaEnum_Value(this.nativePtr, index);
	}
	
	public char8* Scope()
	{
		return CQt.QMetaEnum_Scope(this.nativePtr);
	}
	
	public int32 KeyToValue(char8* key)
	{
		return CQt.QMetaEnum_KeyToValue(this.nativePtr, key);
	}
	
	public char8* ValueToKey(int32 value)
	{
		return CQt.QMetaEnum_ValueToKey(this.nativePtr, value);
	}
	
	public int32 KeysToValue(char8* keys)
	{
		return CQt.QMetaEnum_KeysToValue(this.nativePtr, keys);
	}
	
	public libqt_string ValueToKeys(int32 value)
	{
		return CQt.QMetaEnum_ValueToKeys(this.nativePtr, value);
	}
	
	public void* EnclosingMetaObject()
	{
		return CQt.QMetaEnum_EnclosingMetaObject(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QMetaEnum_IsValid(this.nativePtr);
	}
	
	public int32 KeyToValue2(char8* key, bool* ok)
	{
		return CQt.QMetaEnum_KeyToValue2(this.nativePtr, key, ok);
	}
	
	public int32 KeysToValue2(char8* keys, bool* ok)
	{
		return CQt.QMetaEnum_KeysToValue2(this.nativePtr, keys, ok);
	}
	
}
public class QMetaEnum
{
	public QMetaEnumPtr handle;
	
	public static implicit operator QMetaEnumPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQMetaEnum other)
	{
		this.handle = QMetaEnumPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public char8* Name()
	{
		return this.handle.Name();
	}
	
	public char8* EnumName()
	{
		return this.handle.EnumName();
	}
	
	public bool IsFlag()
	{
		return this.handle.IsFlag();
	}
	
	public bool IsScoped()
	{
		return this.handle.IsScoped();
	}
	
	public int32 KeyCount()
	{
		return this.handle.KeyCount();
	}
	
	public char8* Key(int32 index)
	{
		return this.handle.Key(index);
	}
	
	public int32 Value(int32 index)
	{
		return this.handle.Value(index);
	}
	
	public char8* Scope()
	{
		return this.handle.Scope();
	}
	
	public int32 KeyToValue(char8* key)
	{
		return this.handle.KeyToValue(key);
	}
	
	public char8* ValueToKey(int32 value)
	{
		return this.handle.ValueToKey(value);
	}
	
	public int32 KeysToValue(char8* keys)
	{
		return this.handle.KeysToValue(keys);
	}
	
	public libqt_string ValueToKeys(int32 value)
	{
		return this.handle.ValueToKeys(value);
	}
	
	public void* EnclosingMetaObject()
	{
		return this.handle.EnclosingMetaObject();
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public int32 KeyToValue2(char8* key, bool* ok)
	{
		return this.handle.KeyToValue2(key, ok);
	}
	
	public int32 KeysToValue2(char8* keys, bool* ok)
	{
		return this.handle.KeysToValue2(keys, ok);
	}
	
}
extension CQt
{
	[LinkName("QMetaEnum_new")]
	public static extern void* QMetaEnum_new(void* other);
	[LinkName("QMetaEnum_new2")]
	public static extern void* QMetaEnum_new2(void* other);
	[LinkName("QMetaEnum_new3")]
	public static extern void* QMetaEnum_new3();
	[LinkName("QMetaEnum_new4")]
	public static extern void* QMetaEnum_new4(void* param1);
	[LinkName("QMetaEnum_Name")]
	public static extern char8* QMetaEnum_Name(void* c_this);
	[LinkName("QMetaEnum_EnumName")]
	public static extern char8* QMetaEnum_EnumName(void* c_this);
	[LinkName("QMetaEnum_IsFlag")]
	public static extern bool QMetaEnum_IsFlag(void* c_this);
	[LinkName("QMetaEnum_IsScoped")]
	public static extern bool QMetaEnum_IsScoped(void* c_this);
	[LinkName("QMetaEnum_KeyCount")]
	public static extern int32 QMetaEnum_KeyCount(void* c_this);
	[LinkName("QMetaEnum_Key")]
	public static extern char8* QMetaEnum_Key(void* c_this, int32 index);
	[LinkName("QMetaEnum_Value")]
	public static extern int32 QMetaEnum_Value(void* c_this, int32 index);
	[LinkName("QMetaEnum_Scope")]
	public static extern char8* QMetaEnum_Scope(void* c_this);
	[LinkName("QMetaEnum_KeyToValue")]
	public static extern int32 QMetaEnum_KeyToValue(void* c_this, char8* key);
	[LinkName("QMetaEnum_ValueToKey")]
	public static extern char8* QMetaEnum_ValueToKey(void* c_this, int32 value);
	[LinkName("QMetaEnum_KeysToValue")]
	public static extern int32 QMetaEnum_KeysToValue(void* c_this, char8* keys);
	[LinkName("QMetaEnum_ValueToKeys")]
	public static extern libqt_string QMetaEnum_ValueToKeys(void* c_this, int32 value);
	[LinkName("QMetaEnum_EnclosingMetaObject")]
	public static extern void* QMetaEnum_EnclosingMetaObject(void* c_this);
	[LinkName("QMetaEnum_IsValid")]
	public static extern bool QMetaEnum_IsValid(void* c_this);
	[LinkName("QMetaEnum_KeyToValue2")]
	public static extern int32 QMetaEnum_KeyToValue2(void* c_this, char8* key, bool* ok);
	[LinkName("QMetaEnum_KeysToValue2")]
	public static extern int32 QMetaEnum_KeysToValue2(void* c_this, char8* keys, bool* ok);
	/// Delete this object from C++ memory
	[LinkName("QMetaEnum_Delete")]
	public static extern void QMetaEnum_Delete(void* self);
}
public interface IQMetaProperty
{
	void* NativePtr { get; }
}
public struct QMetaPropertyPtr : IQMetaProperty, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQMetaProperty other)
	{
		return .(CQt.QMetaProperty_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QMetaProperty_Delete(this.nativePtr);
	}
	
	public char8* Name()
	{
		return CQt.QMetaProperty_Name(this.nativePtr);
	}
	
	public char8* TypeName()
	{
		return CQt.QMetaProperty_TypeName(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QMetaProperty_Type(this.nativePtr);
	}
	
	public int32 UserType()
	{
		return CQt.QMetaProperty_UserType(this.nativePtr);
	}
	
	public int32 TypeId()
	{
		return CQt.QMetaProperty_TypeId(this.nativePtr);
	}
	
	public void MetaType()
	{
		CQt.QMetaProperty_MetaType(this.nativePtr);
	}
	
	public int32 PropertyIndex()
	{
		return CQt.QMetaProperty_PropertyIndex(this.nativePtr);
	}
	
	public int32 RelativePropertyIndex()
	{
		return CQt.QMetaProperty_RelativePropertyIndex(this.nativePtr);
	}
	
	public bool IsReadable()
	{
		return CQt.QMetaProperty_IsReadable(this.nativePtr);
	}
	
	public bool IsWritable()
	{
		return CQt.QMetaProperty_IsWritable(this.nativePtr);
	}
	
	public bool IsResettable()
	{
		return CQt.QMetaProperty_IsResettable(this.nativePtr);
	}
	
	public bool IsDesignable()
	{
		return CQt.QMetaProperty_IsDesignable(this.nativePtr);
	}
	
	public bool IsScriptable()
	{
		return CQt.QMetaProperty_IsScriptable(this.nativePtr);
	}
	
	public bool IsStored()
	{
		return CQt.QMetaProperty_IsStored(this.nativePtr);
	}
	
	public bool IsUser()
	{
		return CQt.QMetaProperty_IsUser(this.nativePtr);
	}
	
	public bool IsConstant()
	{
		return CQt.QMetaProperty_IsConstant(this.nativePtr);
	}
	
	public bool IsFinal()
	{
		return CQt.QMetaProperty_IsFinal(this.nativePtr);
	}
	
	public bool IsRequired()
	{
		return CQt.QMetaProperty_IsRequired(this.nativePtr);
	}
	
	public bool IsBindable()
	{
		return CQt.QMetaProperty_IsBindable(this.nativePtr);
	}
	
	public bool IsFlagType()
	{
		return CQt.QMetaProperty_IsFlagType(this.nativePtr);
	}
	
	public bool IsEnumType()
	{
		return CQt.QMetaProperty_IsEnumType(this.nativePtr);
	}
	
	public void Enumerator()
	{
		CQt.QMetaProperty_Enumerator(this.nativePtr);
	}
	
	public bool HasNotifySignal()
	{
		return CQt.QMetaProperty_HasNotifySignal(this.nativePtr);
	}
	
	public void NotifySignal()
	{
		CQt.QMetaProperty_NotifySignal(this.nativePtr);
	}
	
	public int32 NotifySignalIndex()
	{
		return CQt.QMetaProperty_NotifySignalIndex(this.nativePtr);
	}
	
	public int32 Revision()
	{
		return CQt.QMetaProperty_Revision(this.nativePtr);
	}
	
	public void Read(IQObject obj)
	{
		CQt.QMetaProperty_Read(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public bool Write(IQObject obj, IQVariant value)
	{
		return CQt.QMetaProperty_Write(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public bool Reset(IQObject obj)
	{
		return CQt.QMetaProperty_Reset(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public void Bindable(IQObject object)
	{
		CQt.QMetaProperty_Bindable(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr);
	}
	
	public void ReadOnGadget(void* gadget)
	{
		CQt.QMetaProperty_ReadOnGadget(this.nativePtr, gadget);
	}
	
	public bool WriteOnGadget(void* gadget, IQVariant value)
	{
		return CQt.QMetaProperty_WriteOnGadget(this.nativePtr, gadget, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public bool ResetOnGadget(void* gadget)
	{
		return CQt.QMetaProperty_ResetOnGadget(this.nativePtr, gadget);
	}
	
	public bool HasStdCppSet()
	{
		return CQt.QMetaProperty_HasStdCppSet(this.nativePtr);
	}
	
	public bool IsAlias()
	{
		return CQt.QMetaProperty_IsAlias(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QMetaProperty_IsValid(this.nativePtr);
	}
	
	public void* EnclosingMetaObject()
	{
		return CQt.QMetaProperty_EnclosingMetaObject(this.nativePtr);
	}
	
}
public class QMetaProperty
{
	public QMetaPropertyPtr handle;
	
	public static implicit operator QMetaPropertyPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQMetaProperty other)
	{
		this.handle = QMetaPropertyPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public char8* Name()
	{
		return this.handle.Name();
	}
	
	public char8* TypeName()
	{
		return this.handle.TypeName();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public int32 UserType()
	{
		return this.handle.UserType();
	}
	
	public int32 TypeId()
	{
		return this.handle.TypeId();
	}
	
	public void MetaType()
	{
		this.handle.MetaType();
	}
	
	public int32 PropertyIndex()
	{
		return this.handle.PropertyIndex();
	}
	
	public int32 RelativePropertyIndex()
	{
		return this.handle.RelativePropertyIndex();
	}
	
	public bool IsReadable()
	{
		return this.handle.IsReadable();
	}
	
	public bool IsWritable()
	{
		return this.handle.IsWritable();
	}
	
	public bool IsResettable()
	{
		return this.handle.IsResettable();
	}
	
	public bool IsDesignable()
	{
		return this.handle.IsDesignable();
	}
	
	public bool IsScriptable()
	{
		return this.handle.IsScriptable();
	}
	
	public bool IsStored()
	{
		return this.handle.IsStored();
	}
	
	public bool IsUser()
	{
		return this.handle.IsUser();
	}
	
	public bool IsConstant()
	{
		return this.handle.IsConstant();
	}
	
	public bool IsFinal()
	{
		return this.handle.IsFinal();
	}
	
	public bool IsRequired()
	{
		return this.handle.IsRequired();
	}
	
	public bool IsBindable()
	{
		return this.handle.IsBindable();
	}
	
	public bool IsFlagType()
	{
		return this.handle.IsFlagType();
	}
	
	public bool IsEnumType()
	{
		return this.handle.IsEnumType();
	}
	
	public void Enumerator()
	{
		this.handle.Enumerator();
	}
	
	public bool HasNotifySignal()
	{
		return this.handle.HasNotifySignal();
	}
	
	public void NotifySignal()
	{
		this.handle.NotifySignal();
	}
	
	public int32 NotifySignalIndex()
	{
		return this.handle.NotifySignalIndex();
	}
	
	public int32 Revision()
	{
		return this.handle.Revision();
	}
	
	public void Read(IQObject obj)
	{
		this.handle.Read(obj);
	}
	
	public bool Write(IQObject obj, IQVariant value)
	{
		return this.handle.Write(obj, value);
	}
	
	public bool Reset(IQObject obj)
	{
		return this.handle.Reset(obj);
	}
	
	public void Bindable(IQObject object)
	{
		this.handle.Bindable(object);
	}
	
	public void ReadOnGadget(void* gadget)
	{
		this.handle.ReadOnGadget(gadget);
	}
	
	public bool WriteOnGadget(void* gadget, IQVariant value)
	{
		return this.handle.WriteOnGadget(gadget, value);
	}
	
	public bool ResetOnGadget(void* gadget)
	{
		return this.handle.ResetOnGadget(gadget);
	}
	
	public bool HasStdCppSet()
	{
		return this.handle.HasStdCppSet();
	}
	
	public bool IsAlias()
	{
		return this.handle.IsAlias();
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public void* EnclosingMetaObject()
	{
		return this.handle.EnclosingMetaObject();
	}
	
}
extension CQt
{
	[LinkName("QMetaProperty_new")]
	public static extern void* QMetaProperty_new(void* other);
	[LinkName("QMetaProperty_new2")]
	public static extern void* QMetaProperty_new2(void* other);
	[LinkName("QMetaProperty_new3")]
	public static extern void* QMetaProperty_new3();
	[LinkName("QMetaProperty_Name")]
	public static extern char8* QMetaProperty_Name(void* c_this);
	[LinkName("QMetaProperty_TypeName")]
	public static extern char8* QMetaProperty_TypeName(void* c_this);
	[LinkName("QMetaProperty_Type")]
	public static extern int64 QMetaProperty_Type(void* c_this);
	[LinkName("QMetaProperty_UserType")]
	public static extern int32 QMetaProperty_UserType(void* c_this);
	[LinkName("QMetaProperty_TypeId")]
	public static extern int32 QMetaProperty_TypeId(void* c_this);
	[LinkName("QMetaProperty_MetaType")]
	public static extern void QMetaProperty_MetaType(void* c_this);
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
	public static extern void QMetaProperty_Enumerator(void* c_this);
	[LinkName("QMetaProperty_HasNotifySignal")]
	public static extern bool QMetaProperty_HasNotifySignal(void* c_this);
	[LinkName("QMetaProperty_NotifySignal")]
	public static extern void QMetaProperty_NotifySignal(void* c_this);
	[LinkName("QMetaProperty_NotifySignalIndex")]
	public static extern int32 QMetaProperty_NotifySignalIndex(void* c_this);
	[LinkName("QMetaProperty_Revision")]
	public static extern int32 QMetaProperty_Revision(void* c_this);
	[LinkName("QMetaProperty_Read")]
	public static extern void QMetaProperty_Read(void* c_this, void* obj);
	[LinkName("QMetaProperty_Write")]
	public static extern bool QMetaProperty_Write(void* c_this, void* obj, void* value);
	[LinkName("QMetaProperty_Reset")]
	public static extern bool QMetaProperty_Reset(void* c_this, void* obj);
	[LinkName("QMetaProperty_Bindable")]
	public static extern void QMetaProperty_Bindable(void* c_this, void* object);
	[LinkName("QMetaProperty_ReadOnGadget")]
	public static extern void QMetaProperty_ReadOnGadget(void* c_this, void* gadget);
	[LinkName("QMetaProperty_WriteOnGadget")]
	public static extern bool QMetaProperty_WriteOnGadget(void* c_this, void* gadget, void* value);
	[LinkName("QMetaProperty_ResetOnGadget")]
	public static extern bool QMetaProperty_ResetOnGadget(void* c_this, void* gadget);
	[LinkName("QMetaProperty_HasStdCppSet")]
	public static extern bool QMetaProperty_HasStdCppSet(void* c_this);
	[LinkName("QMetaProperty_IsAlias")]
	public static extern bool QMetaProperty_IsAlias(void* c_this);
	[LinkName("QMetaProperty_IsValid")]
	public static extern bool QMetaProperty_IsValid(void* c_this);
	[LinkName("QMetaProperty_EnclosingMetaObject")]
	public static extern void* QMetaProperty_EnclosingMetaObject(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QMetaProperty_Delete")]
	public static extern void QMetaProperty_Delete(void* self);
}
public interface IQMetaClassInfo
{
	void* NativePtr { get; }
}
public struct QMetaClassInfoPtr : IQMetaClassInfo, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQMetaClassInfo other)
	{
		return .(CQt.QMetaClassInfo_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QMetaClassInfo_Delete(this.nativePtr);
	}
	
	public char8* Name()
	{
		return CQt.QMetaClassInfo_Name(this.nativePtr);
	}
	
	public char8* Value()
	{
		return CQt.QMetaClassInfo_Value(this.nativePtr);
	}
	
	public void* EnclosingMetaObject()
	{
		return CQt.QMetaClassInfo_EnclosingMetaObject(this.nativePtr);
	}
	
}
public class QMetaClassInfo
{
	public QMetaClassInfoPtr handle;
	
	public static implicit operator QMetaClassInfoPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQMetaClassInfo other)
	{
		this.handle = QMetaClassInfoPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public char8* Name()
	{
		return this.handle.Name();
	}
	
	public char8* Value()
	{
		return this.handle.Value();
	}
	
	public void* EnclosingMetaObject()
	{
		return this.handle.EnclosingMetaObject();
	}
	
}
extension CQt
{
	[LinkName("QMetaClassInfo_new")]
	public static extern void* QMetaClassInfo_new(void* other);
	[LinkName("QMetaClassInfo_new2")]
	public static extern void* QMetaClassInfo_new2(void* other);
	[LinkName("QMetaClassInfo_new3")]
	public static extern void* QMetaClassInfo_new3();
	[LinkName("QMetaClassInfo_Name")]
	public static extern char8* QMetaClassInfo_Name(void* c_this);
	[LinkName("QMetaClassInfo_Value")]
	public static extern char8* QMetaClassInfo_Value(void* c_this);
	[LinkName("QMetaClassInfo_EnclosingMetaObject")]
	public static extern void* QMetaClassInfo_EnclosingMetaObject(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QMetaClassInfo_Delete")]
	public static extern void QMetaClassInfo_Delete(void* self);
}