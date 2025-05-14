using System;
using System.Interop;
namespace Qt;

public interface IQPageRanges
{
	void* NativePtr { get; }
}
public struct QPageRangesPtr : IQPageRanges, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QPageRanges_new());
	}
	
	public void Dispose()
	{
		CQt.QPageRanges_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQPageRanges other)
	{
		CQt.QPageRanges_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQPageRanges other)
	{
		CQt.QPageRanges_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void AddPage(int32 pageNumber)
	{
		CQt.QPageRanges_AddPage(this.nativePtr, pageNumber);
	}
	
	public void AddRange(int32 from, int32 to)
	{
		CQt.QPageRanges_AddRange(this.nativePtr, from, to);
	}
	
	public void[] ToRangeList()
	{
		return CQt.QPageRanges_ToRangeList(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QPageRanges_Clear(this.nativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QPageRanges_ToString(this.nativePtr);
	}
	
	public static void FromString(String ranges)
	{
		CQt.QPageRanges_FromString(libqt_string(ranges));
	}
	
	public bool Contains(int32 pageNumber)
	{
		return CQt.QPageRanges_Contains(this.nativePtr, pageNumber);
	}
	
	public bool IsEmpty()
	{
		return CQt.QPageRanges_IsEmpty(this.nativePtr);
	}
	
	public int32 FirstPage()
	{
		return CQt.QPageRanges_FirstPage(this.nativePtr);
	}
	
	public int32 LastPage()
	{
		return CQt.QPageRanges_LastPage(this.nativePtr);
	}
	
	public void Detach()
	{
		CQt.QPageRanges_Detach(this.nativePtr);
	}
	
}
public class QPageRanges
{
	public QPageRangesPtr handle;
	
	public static implicit operator QPageRangesPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QPageRangesPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQPageRanges other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(IQPageRanges other)
	{
		this.handle.Swap(other);
	}
	
	public void AddPage(int32 pageNumber)
	{
		this.handle.AddPage(pageNumber);
	}
	
	public void AddRange(int32 from, int32 to)
	{
		this.handle.AddRange(from, to);
	}
	
	public void[] ToRangeList()
	{
		return this.handle.ToRangeList();
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
	public libqt_string ToString()
	{
		return this.handle.ToString();
	}
	
	public static void FromString(String ranges)
	{
		QPageRangesPtr.FromString(ranges);
	}
	
	public bool Contains(int32 pageNumber)
	{
		return this.handle.Contains(pageNumber);
	}
	
	public bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public int32 FirstPage()
	{
		return this.handle.FirstPage();
	}
	
	public int32 LastPage()
	{
		return this.handle.LastPage();
	}
	
	public void Detach()
	{
		this.handle.Detach();
	}
	
}
extension CQt
{
	[LinkName("QPageRanges_new")]
	public static extern void* QPageRanges_new();
	[LinkName("QPageRanges_new2")]
	public static extern void* QPageRanges_new2(void* other);
	[LinkName("QPageRanges_OperatorAssign")]
	public static extern void QPageRanges_OperatorAssign(void* c_this, void* other);
	[LinkName("QPageRanges_Swap")]
	public static extern void QPageRanges_Swap(void* c_this, void* other);
	[LinkName("QPageRanges_AddPage")]
	public static extern void QPageRanges_AddPage(void* c_this, int32 pageNumber);
	[LinkName("QPageRanges_AddRange")]
	public static extern void QPageRanges_AddRange(void* c_this, int32 from, int32 to);
	[LinkName("QPageRanges_ToRangeList")]
	public static extern void[] QPageRanges_ToRangeList(void* c_this);
	[LinkName("QPageRanges_Clear")]
	public static extern void QPageRanges_Clear(void* c_this);
	[LinkName("QPageRanges_ToString")]
	public static extern libqt_string QPageRanges_ToString(void* c_this);
	[LinkName("QPageRanges_FromString")]
	public static extern void QPageRanges_FromString(libqt_string ranges);
	[LinkName("QPageRanges_Contains")]
	public static extern bool QPageRanges_Contains(void* c_this, int32 pageNumber);
	[LinkName("QPageRanges_IsEmpty")]
	public static extern bool QPageRanges_IsEmpty(void* c_this);
	[LinkName("QPageRanges_FirstPage")]
	public static extern int32 QPageRanges_FirstPage(void* c_this);
	[LinkName("QPageRanges_LastPage")]
	public static extern int32 QPageRanges_LastPage(void* c_this);
	[LinkName("QPageRanges_Detach")]
	public static extern void QPageRanges_Detach(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QPageRanges_Delete")]
	public static extern void QPageRanges_Delete(void* self);
}
public interface IQPageRanges__Range
{
	void* NativePtr { get; }
}
public struct QPageRanges__RangePtr : IQPageRanges__Range, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QPageRanges__RangePtr other)
	{
		return .(CQt.QPageRanges__Range_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QPageRanges__Range_Delete(this.nativePtr);
	}
	
	public bool Contains(int32 pageNumber)
	{
		return CQt.QPageRanges__Range_Contains(this.nativePtr, pageNumber);
	}
	
}
public class QPageRanges__Range
{
	public QPageRanges__RangePtr handle;
	
	public static implicit operator QPageRanges__RangePtr(Self self)
	{
		return self.handle;
	}
	
	public this(QPageRanges__RangePtr other)
	{
		this.handle = QPageRanges__RangePtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool Contains(int32 pageNumber)
	{
		return this.handle.Contains(pageNumber);
	}
	
}
extension CQt
{
	[LinkName("QPageRanges__Range_new")]
	public static extern void* QPageRanges__Range_new(void* other);
	[LinkName("QPageRanges__Range_new2")]
	public static extern void* QPageRanges__Range_new2(void* other);
	[LinkName("QPageRanges__Range_new3")]
	public static extern void* QPageRanges__Range_new3();
	[LinkName("QPageRanges__Range_new4")]
	public static extern void* QPageRanges__Range_new4(void* param1);
	[LinkName("QPageRanges__Range_Contains")]
	public static extern bool QPageRanges__Range_Contains(void* c_this, int32 pageNumber);
	/// Delete this object from C++ memory
	[LinkName("QPageRanges__Range_Delete")]
	public static extern void QPageRanges__Range_Delete(void* self);
}