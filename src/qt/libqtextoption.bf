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
public class QTextOption
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextOption_new();
	}
	
	public ~this()
	{
		CQt.QTextOption_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* o)
	{
		CQt.QTextOption_OperatorAssign(this.nativePtr, o);
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
		CQt.QTextOption_SetTextDirection(this.nativePtr, aDirection);
	}
	
	public int64 TextDirection()
	{
		return CQt.QTextOption_TextDirection(this.nativePtr);
	}
	
	public void SetWrapMode(int64 wrap)
	{
		CQt.QTextOption_SetWrapMode(this.nativePtr, wrap);
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
		CQt.QTextOption_SetTabArray(this.nativePtr, tabStops);
	}
	
	public double[] TabArray()
	{
		return CQt.QTextOption_TabArray(this.nativePtr);
	}
	
	public void SetTabs(QTextOption__Tab[] tabStops)
	{
		CQt.QTextOption_SetTabs(this.nativePtr, tabStops);
	}
	
	public QTextOption__Tab[] Tabs()
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
	public static extern void QTextOption_SetTabs(void* c_this, QTextOption__Tab[] tabStops);
	[LinkName("QTextOption_Tabs")]
	public static extern QTextOption__Tab[] QTextOption_Tabs(void* c_this);
	[LinkName("QTextOption_SetUseDesignMetrics")]
	public static extern void QTextOption_SetUseDesignMetrics(void* c_this, bool b);
	[LinkName("QTextOption_UseDesignMetrics")]
	public static extern bool QTextOption_UseDesignMetrics(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTextOption_Delete")]
	public static extern void QTextOption_Delete(void* self);
}
public class QTextOption__Tab
{
	protected void* nativePtr;
	
	public this(QTextOption__Tab* other)
	{
		this.nativePtr = CQt.QTextOption__Tab_new(other);
	}
	
	public ~this()
	{
		CQt.QTextOption__Tab_Delete(this.nativePtr);
	}
	
	public bool OperatorEqual(QTextOption__Tab* other)
	{
		return CQt.QTextOption__Tab_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(QTextOption__Tab* other)
	{
		return CQt.QTextOption__Tab_OperatorNotEqual(this.nativePtr, other);
	}
	
}
extension CQt
{
	[LinkName("QTextOption__Tab_new")]
	public static extern void* QTextOption__Tab_new(QTextOption__Tab* other);
	[LinkName("QTextOption__Tab_new2")]
	public static extern void* QTextOption__Tab_new2(QTextOption__Tab* other);
	[LinkName("QTextOption__Tab_new3")]
	public static extern void* QTextOption__Tab_new3();
	[LinkName("QTextOption__Tab_new4")]
	public static extern void* QTextOption__Tab_new4(double pos, int64 tabType);
	[LinkName("QTextOption__Tab_new5")]
	public static extern void* QTextOption__Tab_new5(double pos, int64 tabType, void delim);
	[LinkName("QTextOption__Tab_OperatorEqual")]
	public static extern bool QTextOption__Tab_OperatorEqual(void* c_this, QTextOption__Tab* other);
	[LinkName("QTextOption__Tab_OperatorNotEqual")]
	public static extern bool QTextOption__Tab_OperatorNotEqual(void* c_this, QTextOption__Tab* other);
	/// Delete this object from C++ memory
	[LinkName("QTextOption__Tab_Delete")]
	public static extern void QTextOption__Tab_Delete(void* self);
}