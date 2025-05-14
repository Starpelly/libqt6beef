using System;
using System.Interop;
namespace Qt;

public interface IQAnyStringView
{
	void* NativePtr { get; }
}
public struct QAnyStringViewPtr : IQAnyStringView, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(char8* other)
	{
		return .(CQt.QAnyStringView_new(other));
	}
	
	public void Dispose()
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
	
	public static int32 Compare(char8* lhs, char8* rhs)
	{
		return CQt.QAnyStringView_Compare(lhs, rhs);
	}
	
	public static bool Equal(char8* lhs, char8* rhs)
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
	
	public static int32 Compare3(char8* lhs, char8* rhs, int64 cs)
	{
		return CQt.QAnyStringView_Compare3(lhs, rhs, (int64)cs);
	}
	
}
public class QAnyStringView
{
	public QAnyStringViewPtr handle;
	
	public static implicit operator QAnyStringViewPtr(Self self)
	{
		return self.handle;
	}
	
	public this(char8* other)
	{
		this.handle = QAnyStringViewPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public libqt_string ToString()
	{
		return this.handle.ToString();
	}
	
	public int32 Size()
	{
		return this.handle.Size();
	}
	
	public void* Data()
	{
		return this.handle.Data();
	}
	
	public static int32 Compare(char8* lhs, char8* rhs)
	{
		return QAnyStringViewPtr.Compare(lhs, rhs);
	}
	
	public static bool Equal(char8* lhs, char8* rhs)
	{
		return QAnyStringViewPtr.Equal(lhs, rhs);
	}
	
	public void Front()
	{
		this.handle.Front();
	}
	
	public void Back()
	{
		this.handle.Back();
	}
	
	public bool Empty()
	{
		return this.handle.Empty();
	}
	
	public int32 SizeBytes()
	{
		return this.handle.SizeBytes();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public int32 Length()
	{
		return this.handle.Length();
	}
	
	public static int32 Compare3(char8* lhs, char8* rhs, int64 cs)
	{
		return QAnyStringViewPtr.Compare3(lhs, rhs, cs);
	}
	
}
extension CQt
{
	[LinkName("QAnyStringView_new")]
	public static extern void* QAnyStringView_new(char8* other);
	[LinkName("QAnyStringView_new2")]
	public static extern void* QAnyStringView_new2(char8* other);
	[LinkName("QAnyStringView_new3")]
	public static extern void* QAnyStringView_new3();
	[LinkName("QAnyStringView_new4")]
	public static extern void* QAnyStringView_new4(libqt_string str);
	[LinkName("QAnyStringView_new5")]
	public static extern void* QAnyStringView_new5(libqt_string str);
	[LinkName("QAnyStringView_new6")]
	public static extern void* QAnyStringView_new6(void* c);
	[LinkName("QAnyStringView_new7")]
	public static extern void* QAnyStringView_new7(char8* param1);
	[LinkName("QAnyStringView_ToString")]
	public static extern libqt_string QAnyStringView_ToString(void* c_this);
	[LinkName("QAnyStringView_Size")]
	public static extern int32 QAnyStringView_Size(void* c_this);
	[LinkName("QAnyStringView_Data")]
	public static extern void* QAnyStringView_Data(void* c_this);
	[LinkName("QAnyStringView_Compare")]
	public static extern int32 QAnyStringView_Compare(char8* lhs, char8* rhs);
	[LinkName("QAnyStringView_Equal")]
	public static extern bool QAnyStringView_Equal(char8* lhs, char8* rhs);
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
	public static extern int32 QAnyStringView_Compare3(char8* lhs, char8* rhs, int64 cs);
	/// Delete this object from C++ memory
	[LinkName("QAnyStringView_Delete")]
	public static extern void QAnyStringView_Delete(void* self);
}