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
public class QMetaMethod : IQMetaMethod
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQMetaMethod other)
	{
		this.nativePtr = CQt.QMetaMethod_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
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
		return CQt.QMetaMethod_Invoke(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (returnValue == default) ? default : (void)returnValue.NativePtr);
	}
	
	public bool Invoke2(IQObject object, IQGenericReturnArgument returnValue)
	{
		return CQt.QMetaMethod_Invoke2(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (returnValue == default) ? default : (void)returnValue.NativePtr);
	}
	
	public bool Invoke3(IQObject object, int64 connectionType)
	{
		return CQt.QMetaMethod_Invoke3(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType);
	}
	
	public bool InvokeWithObject(IQObject object)
	{
		return CQt.QMetaMethod_InvokeWithObject(this.nativePtr, (object == null) ? null : (void*)object.NativePtr);
	}
	
	public bool InvokeOnGadget(void* gadget, IQGenericReturnArgument returnValue)
	{
		return CQt.QMetaMethod_InvokeOnGadget(this.nativePtr, gadget, (returnValue == default) ? default : (void)returnValue.NativePtr);
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
		return CQt.QMetaMethod_Invoke4(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr);
	}
	
	public bool Invoke5(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaMethod_Invoke5(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr);
	}
	
	public bool Invoke6(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaMethod_Invoke6(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr);
	}
	
	public bool Invoke7(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaMethod_Invoke7(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr);
	}
	
	public bool Invoke8(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaMethod_Invoke8(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr);
	}
	
	public bool Invoke9(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaMethod_Invoke9(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr);
	}
	
	public bool Invoke10(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaMethod_Invoke10(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr);
	}
	
	public bool Invoke11(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaMethod_Invoke11(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr);
	}
	
	public bool Invoke12(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaMethod_Invoke12(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr);
	}
	
	public bool Invoke13(IQObject object, int64 connectionType, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaMethod_Invoke13(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr, (val9 == default) ? default : (void)val9.NativePtr);
	}
	
	public bool Invoke32(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0)
	{
		return CQt.QMetaMethod_Invoke32(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr);
	}
	
	public bool Invoke42(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaMethod_Invoke42(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr);
	}
	
	public bool Invoke52(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaMethod_Invoke52(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr);
	}
	
	public bool Invoke62(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaMethod_Invoke62(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr);
	}
	
	public bool Invoke72(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaMethod_Invoke72(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr);
	}
	
	public bool Invoke82(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaMethod_Invoke82(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr);
	}
	
	public bool Invoke92(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaMethod_Invoke92(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr);
	}
	
	public bool Invoke102(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaMethod_Invoke102(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr);
	}
	
	public bool Invoke112(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaMethod_Invoke112(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr);
	}
	
	public bool Invoke122(IQObject object, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaMethod_Invoke122(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr, (val9 == default) ? default : (void)val9.NativePtr);
	}
	
	public bool Invoke33(IQObject object, int64 connectionType, IQGenericArgument val0)
	{
		return CQt.QMetaMethod_Invoke33(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (val0 == default) ? default : (void)val0.NativePtr);
	}
	
	public bool Invoke43(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaMethod_Invoke43(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr);
	}
	
	public bool Invoke53(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaMethod_Invoke53(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr);
	}
	
	public bool Invoke63(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaMethod_Invoke63(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr);
	}
	
	public bool Invoke73(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaMethod_Invoke73(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr);
	}
	
	public bool Invoke83(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaMethod_Invoke83(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr);
	}
	
	public bool Invoke93(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaMethod_Invoke93(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr);
	}
	
	public bool Invoke103(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaMethod_Invoke103(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr);
	}
	
	public bool Invoke113(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaMethod_Invoke113(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr);
	}
	
	public bool Invoke123(IQObject object, int64 connectionType, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaMethod_Invoke123(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, connectionType, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr, (val9 == default) ? default : (void)val9.NativePtr);
	}
	
	public bool Invoke22(IQObject object, IQGenericArgument val0)
	{
		return CQt.QMetaMethod_Invoke22(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (val0 == default) ? default : (void)val0.NativePtr);
	}
	
	public bool Invoke34(IQObject object, IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaMethod_Invoke34(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr);
	}
	
	public bool Invoke44(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaMethod_Invoke44(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr);
	}
	
	public bool Invoke54(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaMethod_Invoke54(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr);
	}
	
	public bool Invoke64(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaMethod_Invoke64(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr);
	}
	
	public bool Invoke74(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaMethod_Invoke74(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr);
	}
	
	public bool Invoke84(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaMethod_Invoke84(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr);
	}
	
	public bool Invoke94(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaMethod_Invoke94(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr);
	}
	
	public bool Invoke104(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaMethod_Invoke104(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr);
	}
	
	public bool Invoke114(IQObject object, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaMethod_Invoke114(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr, (val9 == default) ? default : (void)val9.NativePtr);
	}
	
	public bool InvokeOnGadget3(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0)
	{
		return CQt.QMetaMethod_InvokeOnGadget3(this.nativePtr, gadget, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr);
	}
	
	public bool InvokeOnGadget4(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaMethod_InvokeOnGadget4(this.nativePtr, gadget, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr);
	}
	
	public bool InvokeOnGadget5(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaMethod_InvokeOnGadget5(this.nativePtr, gadget, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr);
	}
	
	public bool InvokeOnGadget6(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaMethod_InvokeOnGadget6(this.nativePtr, gadget, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr);
	}
	
	public bool InvokeOnGadget7(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaMethod_InvokeOnGadget7(this.nativePtr, gadget, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr);
	}
	
	public bool InvokeOnGadget8(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaMethod_InvokeOnGadget8(this.nativePtr, gadget, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr);
	}
	
	public bool InvokeOnGadget9(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaMethod_InvokeOnGadget9(this.nativePtr, gadget, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr);
	}
	
	public bool InvokeOnGadget10(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaMethod_InvokeOnGadget10(this.nativePtr, gadget, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr);
	}
	
	public bool InvokeOnGadget11(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaMethod_InvokeOnGadget11(this.nativePtr, gadget, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr);
	}
	
	public bool InvokeOnGadget12(void* gadget, IQGenericReturnArgument returnValue, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaMethod_InvokeOnGadget12(this.nativePtr, gadget, (returnValue == default) ? default : (void)returnValue.NativePtr, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr, (val9 == default) ? default : (void)val9.NativePtr);
	}
	
	public bool InvokeOnGadget2(void* gadget, IQGenericArgument val0)
	{
		return CQt.QMetaMethod_InvokeOnGadget2(this.nativePtr, gadget, (val0 == default) ? default : (void)val0.NativePtr);
	}
	
	public bool InvokeOnGadget32(void* gadget, IQGenericArgument val0, IQGenericArgument val1)
	{
		return CQt.QMetaMethod_InvokeOnGadget32(this.nativePtr, gadget, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr);
	}
	
	public bool InvokeOnGadget42(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2)
	{
		return CQt.QMetaMethod_InvokeOnGadget42(this.nativePtr, gadget, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr);
	}
	
	public bool InvokeOnGadget52(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3)
	{
		return CQt.QMetaMethod_InvokeOnGadget52(this.nativePtr, gadget, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr);
	}
	
	public bool InvokeOnGadget62(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4)
	{
		return CQt.QMetaMethod_InvokeOnGadget62(this.nativePtr, gadget, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr);
	}
	
	public bool InvokeOnGadget72(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5)
	{
		return CQt.QMetaMethod_InvokeOnGadget72(this.nativePtr, gadget, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr);
	}
	
	public bool InvokeOnGadget82(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6)
	{
		return CQt.QMetaMethod_InvokeOnGadget82(this.nativePtr, gadget, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr);
	}
	
	public bool InvokeOnGadget92(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7)
	{
		return CQt.QMetaMethod_InvokeOnGadget92(this.nativePtr, gadget, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr);
	}
	
	public bool InvokeOnGadget102(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8)
	{
		return CQt.QMetaMethod_InvokeOnGadget102(this.nativePtr, gadget, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr);
	}
	
	public bool InvokeOnGadget112(void* gadget, IQGenericArgument val0, IQGenericArgument val1, IQGenericArgument val2, IQGenericArgument val3, IQGenericArgument val4, IQGenericArgument val5, IQGenericArgument val6, IQGenericArgument val7, IQGenericArgument val8, IQGenericArgument val9)
	{
		return CQt.QMetaMethod_InvokeOnGadget112(this.nativePtr, gadget, (val0 == default) ? default : (void)val0.NativePtr, (val1 == default) ? default : (void)val1.NativePtr, (val2 == default) ? default : (void)val2.NativePtr, (val3 == default) ? default : (void)val3.NativePtr, (val4 == default) ? default : (void)val4.NativePtr, (val5 == default) ? default : (void)val5.NativePtr, (val6 == default) ? default : (void)val6.NativePtr, (val7 == default) ? default : (void)val7.NativePtr, (val8 == default) ? default : (void)val8.NativePtr, (val9 == default) ? default : (void)val9.NativePtr);
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
public class QMetaEnum : IQMetaEnum
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQMetaEnum other)
	{
		this.nativePtr = CQt.QMetaEnum_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
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
public class QMetaProperty : IQMetaProperty
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQMetaProperty other)
	{
		this.nativePtr = CQt.QMetaProperty_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
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
		CQt.QMetaProperty_Read(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public bool Write(IQObject obj, IQVariant value)
	{
		return CQt.QMetaProperty_Write(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public bool Reset(IQObject obj)
	{
		return CQt.QMetaProperty_Reset(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public void Bindable(IQObject object)
	{
		CQt.QMetaProperty_Bindable(this.nativePtr, (object == null) ? null : (void*)object.NativePtr);
	}
	
	public void ReadOnGadget(void* gadget)
	{
		CQt.QMetaProperty_ReadOnGadget(this.nativePtr, gadget);
	}
	
	public bool WriteOnGadget(void* gadget, IQVariant value)
	{
		return CQt.QMetaProperty_WriteOnGadget(this.nativePtr, gadget, (value == default) ? default : (void*)value.NativePtr);
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
public class QMetaClassInfo : IQMetaClassInfo
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQMetaClassInfo other)
	{
		this.nativePtr = CQt.QMetaClassInfo_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
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