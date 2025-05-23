using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTextOption__TabType
{
	LeftTab = 0,
	RightTab = 1,
	CenterTab = 2,
	DelimiterTab = 3,
}
[AllowDuplicates]
public enum QTextOption__WrapMode
{
	NoWrap = 0,
	WordWrap = 1,
	ManualWrap = 2,
	WrapAnywhere = 3,
	WrapAtWordBoundaryOrAnywhere = 4,
}
[AllowDuplicates]
public enum QTextOption__Flag
{
	ShowTabsAndSpaces = 1,
	ShowLineAndParagraphSeparators = 2,
	AddSpaceForLineAndParagraphSeparators = 4,
	SuppressColors = 8,
	ShowDocumentTerminator = 16,
	IncludeTrailingSpaces = 2147483648,
}
public interface IQTextOption
{
	void* NativePtr { get; }
}
public struct QTextOptionPtr : IQTextOption, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QTextOption_new());
	}
	
	public void Dispose()
	{
		CQt.QTextOption_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQTextOption o)
	{
		CQt.QTextOption_OperatorAssign(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public void SetAlignment(int64 alignment)
	{
		CQt.QTextOption_SetAlignment(this.nativePtr, alignment);
	}
	
	public int64 Alignment()
	{
		return CQt.QTextOption_Alignment(this.nativePtr);
	}
	
	public void SetTextDirection(int64 aDirection)
	{
		CQt.QTextOption_SetTextDirection(this.nativePtr, (int64)aDirection);
	}
	
	public int64 TextDirection()
	{
		return CQt.QTextOption_TextDirection(this.nativePtr);
	}
	
	public void SetWrapMode(int64 wrap)
	{
		CQt.QTextOption_SetWrapMode(this.nativePtr, (int64)wrap);
	}
	
	public int64 WrapMode()
	{
		return CQt.QTextOption_WrapMode(this.nativePtr);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QTextOption_SetFlags(this.nativePtr, flags);
	}
	
	public int64 Flags()
	{
		return CQt.QTextOption_Flags(this.nativePtr);
	}
	
	public void SetTabStopDistance(double tabStopDistance)
	{
		CQt.QTextOption_SetTabStopDistance(this.nativePtr, tabStopDistance);
	}
	
	public double TabStopDistance()
	{
		return CQt.QTextOption_TabStopDistance(this.nativePtr);
	}
	
	public void SetTabArray(double[] tabStops)
	{
		CQt.QTextOption_SetTabArray(this.nativePtr, null);
	}
	
	public double[] TabArray()
	{
		return CQt.QTextOption_TabArray(this.nativePtr);
	}
	
	public void SetTabs(QTextOption__TabPtr[] tabStops)
	{
		CQt.QTextOption_SetTabs(this.nativePtr, null);
	}
	
	public void[] Tabs()
	{
		return CQt.QTextOption_Tabs(this.nativePtr);
	}
	
	public void SetUseDesignMetrics(bool b)
	{
		CQt.QTextOption_SetUseDesignMetrics(this.nativePtr, b);
	}
	
	public bool UseDesignMetrics()
	{
		return CQt.QTextOption_UseDesignMetrics(this.nativePtr);
	}
	
}
public class QTextOption
{
	public QTextOptionPtr handle;
	
	public static implicit operator QTextOptionPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QTextOptionPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQTextOption o)
	{
		this.handle.OperatorAssign(o);
	}
	
	public void SetAlignment(int64 alignment)
	{
		this.handle.SetAlignment(alignment);
	}
	
	public int64 Alignment()
	{
		return this.handle.Alignment();
	}
	
	public void SetTextDirection(int64 aDirection)
	{
		this.handle.SetTextDirection(aDirection);
	}
	
	public int64 TextDirection()
	{
		return this.handle.TextDirection();
	}
	
	public void SetWrapMode(int64 wrap)
	{
		this.handle.SetWrapMode(wrap);
	}
	
	public int64 WrapMode()
	{
		return this.handle.WrapMode();
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetTabStopDistance(double tabStopDistance)
	{
		this.handle.SetTabStopDistance(tabStopDistance);
	}
	
	public double TabStopDistance()
	{
		return this.handle.TabStopDistance();
	}
	
	public void SetTabArray(double[] tabStops)
	{
		this.handle.SetTabArray(null);
	}
	
	public double[] TabArray()
	{
		return this.handle.TabArray();
	}
	
	public void SetTabs(QTextOption__TabPtr[] tabStops)
	{
		this.handle.SetTabs(null);
	}
	
	public void[] Tabs()
	{
		return this.handle.Tabs();
	}
	
	public void SetUseDesignMetrics(bool b)
	{
		this.handle.SetUseDesignMetrics(b);
	}
	
	public bool UseDesignMetrics()
	{
		return this.handle.UseDesignMetrics();
	}
	
}
extension CQt
{
	[LinkName("QTextOption_new")]
	public static extern void* QTextOption_new();
	[LinkName("QTextOption_new2")]
	public static extern void* QTextOption_new2(int64 alignment);
	[LinkName("QTextOption_new3")]
	public static extern void* QTextOption_new3(void* o);
	[LinkName("QTextOption_OperatorAssign")]
	public static extern void QTextOption_OperatorAssign(void* c_this, void* o);
	[LinkName("QTextOption_SetAlignment")]
	public static extern void QTextOption_SetAlignment(void* c_this, int64 alignment);
	[LinkName("QTextOption_Alignment")]
	public static extern int64 QTextOption_Alignment(void* c_this);
	[LinkName("QTextOption_SetTextDirection")]
	public static extern void QTextOption_SetTextDirection(void* c_this, int64 aDirection);
	[LinkName("QTextOption_TextDirection")]
	public static extern int64 QTextOption_TextDirection(void* c_this);
	[LinkName("QTextOption_SetWrapMode")]
	public static extern void QTextOption_SetWrapMode(void* c_this, int64 wrap);
	[LinkName("QTextOption_WrapMode")]
	public static extern int64 QTextOption_WrapMode(void* c_this);
	[LinkName("QTextOption_SetFlags")]
	public static extern void QTextOption_SetFlags(void* c_this, int64 flags);
	[LinkName("QTextOption_Flags")]
	public static extern int64 QTextOption_Flags(void* c_this);
	[LinkName("QTextOption_SetTabStopDistance")]
	public static extern void QTextOption_SetTabStopDistance(void* c_this, double tabStopDistance);
	[LinkName("QTextOption_TabStopDistance")]
	public static extern double QTextOption_TabStopDistance(void* c_this);
	[LinkName("QTextOption_SetTabArray")]
	public static extern void QTextOption_SetTabArray(void* c_this, double[] tabStops);
	[LinkName("QTextOption_TabArray")]
	public static extern double[] QTextOption_TabArray(void* c_this);
	[LinkName("QTextOption_SetTabs")]
	public static extern void QTextOption_SetTabs(void* c_this, void[] tabStops);
	[LinkName("QTextOption_Tabs")]
	public static extern void[] QTextOption_Tabs(void* c_this);
	[LinkName("QTextOption_SetUseDesignMetrics")]
	public static extern void QTextOption_SetUseDesignMetrics(void* c_this, bool b);
	[LinkName("QTextOption_UseDesignMetrics")]
	public static extern bool QTextOption_UseDesignMetrics(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTextOption_Delete")]
	public static extern void QTextOption_Delete(void* self);
}
public interface IQTextOption__Tab
{
	void* NativePtr { get; }
}
public struct QTextOption__TabPtr : IQTextOption__Tab, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QTextOption__TabPtr other)
	{
		return .(CQt.QTextOption__Tab_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QTextOption__Tab_Delete(this.nativePtr);
	}
	
	public bool OperatorEqual(QTextOption__TabPtr other)
	{
		return CQt.QTextOption__Tab_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(QTextOption__TabPtr other)
	{
		return CQt.QTextOption__Tab_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
}
public class QTextOption__Tab
{
	public QTextOption__TabPtr handle;
	
	public static implicit operator QTextOption__TabPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QTextOption__TabPtr other)
	{
		this.handle = QTextOption__TabPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool OperatorEqual(QTextOption__TabPtr other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(QTextOption__TabPtr other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
}
extension CQt
{
	[LinkName("QTextOption__Tab_new")]
	public static extern void* QTextOption__Tab_new(void* other);
	[LinkName("QTextOption__Tab_new2")]
	public static extern void* QTextOption__Tab_new2(void* other);
	[LinkName("QTextOption__Tab_new3")]
	public static extern void* QTextOption__Tab_new3();
	[LinkName("QTextOption__Tab_new4")]
	public static extern void* QTextOption__Tab_new4(double pos, int64 tabType);
	[LinkName("QTextOption__Tab_new5")]
	public static extern void* QTextOption__Tab_new5(double pos, int64 tabType, void delim);
	[LinkName("QTextOption__Tab_OperatorEqual")]
	public static extern bool QTextOption__Tab_OperatorEqual(void* c_this, void* other);
	[LinkName("QTextOption__Tab_OperatorNotEqual")]
	public static extern bool QTextOption__Tab_OperatorNotEqual(void* c_this, void* other);
	/// Delete this object from C++ memory
	[LinkName("QTextOption__Tab_Delete")]
	public static extern void QTextOption__Tab_Delete(void* self);
}