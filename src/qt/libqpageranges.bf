using System;
using System.Interop;
namespace Qt;

public class QPageRanges
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPageRanges_new();
	}
	
	public ~this()
	{
		CQt.QPageRanges_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QPageRanges_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QPageRanges_Swap(this.nativePtr, other);
	}
	
	public void AddPage(int32 pageNumber)
	{
		CQt.QPageRanges_AddPage(this.nativePtr, pageNumber);
	}
	
	public void AddRange(int32 from, int32 to)
	{
		CQt.QPageRanges_AddRange(this.nativePtr, from, to);
	}
	
	public QPageRanges__Range[] ToRangeList()
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
	
	public static void FromString(libqt_string ranges)
	{
		CQt.QPageRanges_FromString(ranges);
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
	public static extern QPageRanges__Range[] QPageRanges_ToRangeList(void* c_this);
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
public class QPageRanges__Range
{
	protected void* nativePtr;
	
	public this(QPageRanges__Range* other)
	{
		this.nativePtr = CQt.QPageRanges__Range_new(other);
	}
	
	public ~this()
	{
		CQt.QPageRanges__Range_Delete(this.nativePtr);
	}
	
	public bool Contains(int32 pageNumber)
	{
		return CQt.QPageRanges__Range_Contains(this.nativePtr, pageNumber);
	}
	
}
extension CQt
{
	[LinkName("QPageRanges__Range_new")]
	public static extern void* QPageRanges__Range_new(QPageRanges__Range* other);
	[LinkName("QPageRanges__Range_new2")]
	public static extern void* QPageRanges__Range_new2(QPageRanges__Range* other);
	[LinkName("QPageRanges__Range_new3")]
	public static extern void* QPageRanges__Range_new3();
	[LinkName("QPageRanges__Range_new4")]
	public static extern void* QPageRanges__Range_new4(QPageRanges__Range* param1);
	[LinkName("QPageRanges__Range_Contains")]
	public static extern bool QPageRanges__Range_Contains(void* c_this, int32 pageNumber);
	/// Delete this object from C++ memory
	[LinkName("QPageRanges__Range_Delete")]
	public static extern void QPageRanges__Range_Delete(void* self);
}