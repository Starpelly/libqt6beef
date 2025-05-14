using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTextBoundaryFinder__BoundaryType
{
	Grapheme = 0,
	Word = 1,
	Sentence = 2,
	Line = 3,
}
[AllowDuplicates]
public enum QTextBoundaryFinder__BoundaryReason
{
	NotAtBoundary = 0,
	BreakOpportunity = 31,
	StartOfItem = 32,
	EndOfItem = 64,
	MandatoryBreak = 128,
	SoftHyphen = 256,
}
public interface IQTextBoundaryFinder
{
	void* NativePtr { get; }
}
public struct QTextBoundaryFinderPtr : IQTextBoundaryFinder, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QTextBoundaryFinder_new());
	}
	
	public void Dispose()
	{
		CQt.QTextBoundaryFinder_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQTextBoundaryFinder other)
	{
		CQt.QTextBoundaryFinder_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTextBoundaryFinder_IsValid(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QTextBoundaryFinder_Type(this.nativePtr);
	}
	
	public libqt_string String()
	{
		return CQt.QTextBoundaryFinder_String(this.nativePtr);
	}
	
	public void ToStart()
	{
		CQt.QTextBoundaryFinder_ToStart(this.nativePtr);
	}
	
	public void ToEnd()
	{
		CQt.QTextBoundaryFinder_ToEnd(this.nativePtr);
	}
	
	public int32 Position()
	{
		return CQt.QTextBoundaryFinder_Position(this.nativePtr);
	}
	
	public void SetPosition(int32 position)
	{
		CQt.QTextBoundaryFinder_SetPosition(this.nativePtr, position);
	}
	
	public int32 ToNextBoundary()
	{
		return CQt.QTextBoundaryFinder_ToNextBoundary(this.nativePtr);
	}
	
	public int32 ToPreviousBoundary()
	{
		return CQt.QTextBoundaryFinder_ToPreviousBoundary(this.nativePtr);
	}
	
	public bool IsAtBoundary()
	{
		return CQt.QTextBoundaryFinder_IsAtBoundary(this.nativePtr);
	}
	
	public int64 BoundaryReasons()
	{
		return CQt.QTextBoundaryFinder_BoundaryReasons(this.nativePtr);
	}
	
}
public class QTextBoundaryFinder
{
	public QTextBoundaryFinderPtr handle;
	
	public static implicit operator QTextBoundaryFinderPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QTextBoundaryFinderPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQTextBoundaryFinder other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public libqt_string String()
	{
		return this.handle.String();
	}
	
	public void ToStart()
	{
		this.handle.ToStart();
	}
	
	public void ToEnd()
	{
		this.handle.ToEnd();
	}
	
	public int32 Position()
	{
		return this.handle.Position();
	}
	
	public void SetPosition(int32 position)
	{
		this.handle.SetPosition(position);
	}
	
	public int32 ToNextBoundary()
	{
		return this.handle.ToNextBoundary();
	}
	
	public int32 ToPreviousBoundary()
	{
		return this.handle.ToPreviousBoundary();
	}
	
	public bool IsAtBoundary()
	{
		return this.handle.IsAtBoundary();
	}
	
	public int64 BoundaryReasons()
	{
		return this.handle.BoundaryReasons();
	}
	
}
extension CQt
{
	[LinkName("QTextBoundaryFinder_new")]
	public static extern void* QTextBoundaryFinder_new();
	[LinkName("QTextBoundaryFinder_new2")]
	public static extern void* QTextBoundaryFinder_new2(void* other);
	[LinkName("QTextBoundaryFinder_new3")]
	public static extern void* QTextBoundaryFinder_new3(int64 typeVal, libqt_string stringVal);
	[LinkName("QTextBoundaryFinder_new4")]
	public static extern void* QTextBoundaryFinder_new4(int64 typeVal, void* chars, int32 length);
	[LinkName("QTextBoundaryFinder_new5")]
	public static extern void* QTextBoundaryFinder_new5(int64 typeVal, void* chars, int32 length, uint8* buffer);
	[LinkName("QTextBoundaryFinder_new6")]
	public static extern void* QTextBoundaryFinder_new6(int64 typeVal, void* chars, int32 length, uint8* buffer, int32 bufferSize);
	[LinkName("QTextBoundaryFinder_OperatorAssign")]
	public static extern void QTextBoundaryFinder_OperatorAssign(void* c_this, void* other);
	[LinkName("QTextBoundaryFinder_IsValid")]
	public static extern bool QTextBoundaryFinder_IsValid(void* c_this);
	[LinkName("QTextBoundaryFinder_Type")]
	public static extern int64 QTextBoundaryFinder_Type(void* c_this);
	[LinkName("QTextBoundaryFinder_String")]
	public static extern libqt_string QTextBoundaryFinder_String(void* c_this);
	[LinkName("QTextBoundaryFinder_ToStart")]
	public static extern void QTextBoundaryFinder_ToStart(void* c_this);
	[LinkName("QTextBoundaryFinder_ToEnd")]
	public static extern void QTextBoundaryFinder_ToEnd(void* c_this);
	[LinkName("QTextBoundaryFinder_Position")]
	public static extern int32 QTextBoundaryFinder_Position(void* c_this);
	[LinkName("QTextBoundaryFinder_SetPosition")]
	public static extern void QTextBoundaryFinder_SetPosition(void* c_this, int32 position);
	[LinkName("QTextBoundaryFinder_ToNextBoundary")]
	public static extern int32 QTextBoundaryFinder_ToNextBoundary(void* c_this);
	[LinkName("QTextBoundaryFinder_ToPreviousBoundary")]
	public static extern int32 QTextBoundaryFinder_ToPreviousBoundary(void* c_this);
	[LinkName("QTextBoundaryFinder_IsAtBoundary")]
	public static extern bool QTextBoundaryFinder_IsAtBoundary(void* c_this);
	[LinkName("QTextBoundaryFinder_BoundaryReasons")]
	public static extern int64 QTextBoundaryFinder_BoundaryReasons(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTextBoundaryFinder_Delete")]
	public static extern void QTextBoundaryFinder_Delete(void* self);
}