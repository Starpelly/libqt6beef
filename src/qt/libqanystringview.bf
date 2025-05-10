using System;
using System.Interop;
namespace Qt;

public class QAnyStringView
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QAnyStringView_new(other);
	}
	
	public ~this()
	{
		CQt.QAnyStringView_Delete(this.nativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QAnyStringView_ToString(this.nativePtr);
	}
	
	public int32 Size()
	{
		return CQt.QAnyStringView_Size(this.nativePtr);
	}
	
	public void* Data()
	{
		return CQt.QAnyStringView_Data(this.nativePtr);
	}
	
	public static int32 Compare(void lhs, void rhs)
	{
		return CQt.QAnyStringView_Compare(lhs, rhs);
	}
	
	public static bool Equal(void lhs, void rhs)
	{
		return CQt.QAnyStringView_Equal(lhs, rhs);
	}
	
	public void Front()
	{
		CQt.QAnyStringView_Front(this.nativePtr);
	}
	
	public void Back()
	{
		CQt.QAnyStringView_Back(this.nativePtr);
	}
	
	public bool Empty()
	{
		return CQt.QAnyStringView_Empty(this.nativePtr);
	}
	
	public int32 SizeBytes()
	{
		return CQt.QAnyStringView_SizeBytes(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QAnyStringView_IsNull(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QAnyStringView_IsEmpty(this.nativePtr);
	}
	
	public int32 Length()
	{
		return CQt.QAnyStringView_Length(this.nativePtr);
	}
	
	public static int32 Compare3(void lhs, void rhs, int64 cs)
	{
		return CQt.QAnyStringView_Compare3(lhs, rhs, cs);
	}
	
}
extension CQt
{
	[LinkName("QAnyStringView_new")]
	public static extern void* QAnyStringView_new(void* other);
	[LinkName("QAnyStringView_new2")]
	public static extern void* QAnyStringView_new2(void* other);
	[LinkName("QAnyStringView_new3")]
	public static extern void* QAnyStringView_new3();
	[LinkName("QAnyStringView_new4")]
	public static extern void* QAnyStringView_new4(libqt_string str);
	[LinkName("QAnyStringView_new5")]
	public static extern void* QAnyStringView_new5(libqt_string str);
	[LinkName("QAnyStringView_new6")]
	public static extern void* QAnyStringView_new6(void* c);
	[LinkName("QAnyStringView_new7")]
	public static extern void* QAnyStringView_new7(void* param1);
	[LinkName("QAnyStringView_ToString")]
	public static extern libqt_string QAnyStringView_ToString(void* c_this);
	[LinkName("QAnyStringView_Size")]
	public static extern int32 QAnyStringView_Size(void* c_this);
	[LinkName("QAnyStringView_Data")]
	public static extern void* QAnyStringView_Data(void* c_this);
	[LinkName("QAnyStringView_Compare")]
	public static extern int32 QAnyStringView_Compare(void lhs, void rhs);
	[LinkName("QAnyStringView_Equal")]
	public static extern bool QAnyStringView_Equal(void lhs, void rhs);
	[LinkName("QAnyStringView_Front")]
	public static extern void QAnyStringView_Front(void* c_this);
	[LinkName("QAnyStringView_Back")]
	public static extern void QAnyStringView_Back(void* c_this);
	[LinkName("QAnyStringView_Empty")]
	public static extern bool QAnyStringView_Empty(void* c_this);
	[LinkName("QAnyStringView_SizeBytes")]
	public static extern int32 QAnyStringView_SizeBytes(void* c_this);
	[LinkName("QAnyStringView_IsNull")]
	public static extern bool QAnyStringView_IsNull(void* c_this);
	[LinkName("QAnyStringView_IsEmpty")]
	public static extern bool QAnyStringView_IsEmpty(void* c_this);
	[LinkName("QAnyStringView_Length")]
	public static extern int32 QAnyStringView_Length(void* c_this);
	[LinkName("QAnyStringView_Compare3")]
	public static extern int32 QAnyStringView_Compare3(void lhs, void rhs, int64 cs);
	/// Delete this object from C++ memory
	[LinkName("QAnyStringView_Delete")]
	public static extern void QAnyStringView_Delete(void* self);
}