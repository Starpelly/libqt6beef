using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSizePolicy__PolicyFlag
{
	GrowFlag = 1,
	ExpandFlag = 2,
	ShrinkFlag = 4,
	IgnoreFlag = 8,
}
[AllowDuplicates]
public enum QSizePolicy__Policy
{
	Fixed = 0,
	Minimum = 1,
	Maximum = 4,
	Preferred = 5,
	MinimumExpanding = 3,
	Expanding = 7,
	Ignored = 13,
}
[AllowDuplicates]
public enum QSizePolicy__ControlType
{
	DefaultType = 1,
	ButtonBox = 2,
	CheckBox = 4,
	ComboBox = 8,
	Frame = 16,
	GroupBox = 32,
	Label = 64,
	Line = 128,
	LineEdit = 256,
	PushButton = 512,
	RadioButton = 1024,
	Slider = 2048,
	SpinBox = 4096,
	TabWidget = 8192,
	ToolButton = 16384,
}
public interface IQSizePolicy
{
	void* NativePtr { get; }
}
public struct QSizePolicyPtr : IQSizePolicy, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQSizePolicy other)
	{
		return .(CQt.QSizePolicy_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QSizePolicy_Delete(this.nativePtr);
	}
	
	public int64 HorizontalPolicy()
	{
		return CQt.QSizePolicy_HorizontalPolicy(this.nativePtr);
	}
	
	public int64 VerticalPolicy()
	{
		return CQt.QSizePolicy_VerticalPolicy(this.nativePtr);
	}
	
	public int64 ControlType()
	{
		return CQt.QSizePolicy_ControlType(this.nativePtr);
	}
	
	public void SetHorizontalPolicy(int64 d)
	{
		CQt.QSizePolicy_SetHorizontalPolicy(this.nativePtr, (int64)d);
	}
	
	public void SetVerticalPolicy(int64 d)
	{
		CQt.QSizePolicy_SetVerticalPolicy(this.nativePtr, (int64)d);
	}
	
	public void SetControlType(int64 typeVal)
	{
		CQt.QSizePolicy_SetControlType(this.nativePtr, (int64)typeVal);
	}
	
	public int64 ExpandingDirections()
	{
		return CQt.QSizePolicy_ExpandingDirections(this.nativePtr);
	}
	
	public void SetHeightForWidth(bool b)
	{
		CQt.QSizePolicy_SetHeightForWidth(this.nativePtr, b);
	}
	
	public bool HasHeightForWidth()
	{
		return CQt.QSizePolicy_HasHeightForWidth(this.nativePtr);
	}
	
	public void SetWidthForHeight(bool b)
	{
		CQt.QSizePolicy_SetWidthForHeight(this.nativePtr, b);
	}
	
	public bool HasWidthForHeight()
	{
		return CQt.QSizePolicy_HasWidthForHeight(this.nativePtr);
	}
	
	public bool OperatorEqual(IQSizePolicy s)
	{
		return CQt.QSizePolicy_OperatorEqual(this.nativePtr, (s == default || s.NativePtr == default) ? default : s.NativePtr);
	}
	
	public bool OperatorNotEqual(IQSizePolicy s)
	{
		return CQt.QSizePolicy_OperatorNotEqual(this.nativePtr, (s == default || s.NativePtr == default) ? default : s.NativePtr);
	}
	
	public void ToQVariant()
	{
		CQt.QSizePolicy_ToQVariant(this.nativePtr);
	}
	
	public int32 HorizontalStretch()
	{
		return CQt.QSizePolicy_HorizontalStretch(this.nativePtr);
	}
	
	public int32 VerticalStretch()
	{
		return CQt.QSizePolicy_VerticalStretch(this.nativePtr);
	}
	
	public void SetHorizontalStretch(int32 stretchFactor)
	{
		CQt.QSizePolicy_SetHorizontalStretch(this.nativePtr, stretchFactor);
	}
	
	public void SetVerticalStretch(int32 stretchFactor)
	{
		CQt.QSizePolicy_SetVerticalStretch(this.nativePtr, stretchFactor);
	}
	
	public bool RetainSizeWhenHidden()
	{
		return CQt.QSizePolicy_RetainSizeWhenHidden(this.nativePtr);
	}
	
	public void SetRetainSizeWhenHidden(bool retainSize)
	{
		CQt.QSizePolicy_SetRetainSizeWhenHidden(this.nativePtr, retainSize);
	}
	
	public void Transpose()
	{
		CQt.QSizePolicy_Transpose(this.nativePtr);
	}
	
	public void Transposed()
	{
		CQt.QSizePolicy_Transposed(this.nativePtr);
	}
	
}
public class QSizePolicy
{
	public QSizePolicyPtr handle;
	
	public static implicit operator QSizePolicyPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQSizePolicy other)
	{
		this.handle = QSizePolicyPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public int64 HorizontalPolicy()
	{
		return this.handle.HorizontalPolicy();
	}
	
	public int64 VerticalPolicy()
	{
		return this.handle.VerticalPolicy();
	}
	
	public int64 ControlType()
	{
		return this.handle.ControlType();
	}
	
	public void SetHorizontalPolicy(int64 d)
	{
		this.handle.SetHorizontalPolicy(d);
	}
	
	public void SetVerticalPolicy(int64 d)
	{
		this.handle.SetVerticalPolicy(d);
	}
	
	public void SetControlType(int64 typeVal)
	{
		this.handle.SetControlType(typeVal);
	}
	
	public int64 ExpandingDirections()
	{
		return this.handle.ExpandingDirections();
	}
	
	public void SetHeightForWidth(bool b)
	{
		this.handle.SetHeightForWidth(b);
	}
	
	public bool HasHeightForWidth()
	{
		return this.handle.HasHeightForWidth();
	}
	
	public void SetWidthForHeight(bool b)
	{
		this.handle.SetWidthForHeight(b);
	}
	
	public bool HasWidthForHeight()
	{
		return this.handle.HasWidthForHeight();
	}
	
	public bool OperatorEqual(IQSizePolicy s)
	{
		return this.handle.OperatorEqual(s);
	}
	
	public bool OperatorNotEqual(IQSizePolicy s)
	{
		return this.handle.OperatorNotEqual(s);
	}
	
	public void ToQVariant()
	{
		this.handle.ToQVariant();
	}
	
	public int32 HorizontalStretch()
	{
		return this.handle.HorizontalStretch();
	}
	
	public int32 VerticalStretch()
	{
		return this.handle.VerticalStretch();
	}
	
	public void SetHorizontalStretch(int32 stretchFactor)
	{
		this.handle.SetHorizontalStretch(stretchFactor);
	}
	
	public void SetVerticalStretch(int32 stretchFactor)
	{
		this.handle.SetVerticalStretch(stretchFactor);
	}
	
	public bool RetainSizeWhenHidden()
	{
		return this.handle.RetainSizeWhenHidden();
	}
	
	public void SetRetainSizeWhenHidden(bool retainSize)
	{
		this.handle.SetRetainSizeWhenHidden(retainSize);
	}
	
	public void Transpose()
	{
		this.handle.Transpose();
	}
	
	public void Transposed()
	{
		this.handle.Transposed();
	}
	
}
extension CQt
{
	[LinkName("QSizePolicy_new")]
	public static extern void* QSizePolicy_new(void* other);
	[LinkName("QSizePolicy_new2")]
	public static extern void* QSizePolicy_new2(void* other);
	[LinkName("QSizePolicy_new3")]
	public static extern void* QSizePolicy_new3();
	[LinkName("QSizePolicy_new4")]
	public static extern void* QSizePolicy_new4(int64 horizontal, int64 vertical);
	[LinkName("QSizePolicy_new5")]
	public static extern void* QSizePolicy_new5(void* param1);
	[LinkName("QSizePolicy_new6")]
	public static extern void* QSizePolicy_new6(int64 horizontal, int64 vertical, int64 typeVal);
	[LinkName("QSizePolicy_HorizontalPolicy")]
	public static extern int64 QSizePolicy_HorizontalPolicy(void* c_this);
	[LinkName("QSizePolicy_VerticalPolicy")]
	public static extern int64 QSizePolicy_VerticalPolicy(void* c_this);
	[LinkName("QSizePolicy_ControlType")]
	public static extern int64 QSizePolicy_ControlType(void* c_this);
	[LinkName("QSizePolicy_SetHorizontalPolicy")]
	public static extern void QSizePolicy_SetHorizontalPolicy(void* c_this, int64 d);
	[LinkName("QSizePolicy_SetVerticalPolicy")]
	public static extern void QSizePolicy_SetVerticalPolicy(void* c_this, int64 d);
	[LinkName("QSizePolicy_SetControlType")]
	public static extern void QSizePolicy_SetControlType(void* c_this, int64 typeVal);
	[LinkName("QSizePolicy_ExpandingDirections")]
	public static extern int64 QSizePolicy_ExpandingDirections(void* c_this);
	[LinkName("QSizePolicy_SetHeightForWidth")]
	public static extern void QSizePolicy_SetHeightForWidth(void* c_this, bool b);
	[LinkName("QSizePolicy_HasHeightForWidth")]
	public static extern bool QSizePolicy_HasHeightForWidth(void* c_this);
	[LinkName("QSizePolicy_SetWidthForHeight")]
	public static extern void QSizePolicy_SetWidthForHeight(void* c_this, bool b);
	[LinkName("QSizePolicy_HasWidthForHeight")]
	public static extern bool QSizePolicy_HasWidthForHeight(void* c_this);
	[LinkName("QSizePolicy_OperatorEqual")]
	public static extern bool QSizePolicy_OperatorEqual(void* c_this, void* s);
	[LinkName("QSizePolicy_OperatorNotEqual")]
	public static extern bool QSizePolicy_OperatorNotEqual(void* c_this, void* s);
	[LinkName("QSizePolicy_ToQVariant")]
	public static extern void QSizePolicy_ToQVariant(void* c_this);
	[LinkName("QSizePolicy_HorizontalStretch")]
	public static extern int32 QSizePolicy_HorizontalStretch(void* c_this);
	[LinkName("QSizePolicy_VerticalStretch")]
	public static extern int32 QSizePolicy_VerticalStretch(void* c_this);
	[LinkName("QSizePolicy_SetHorizontalStretch")]
	public static extern void QSizePolicy_SetHorizontalStretch(void* c_this, int32 stretchFactor);
	[LinkName("QSizePolicy_SetVerticalStretch")]
	public static extern void QSizePolicy_SetVerticalStretch(void* c_this, int32 stretchFactor);
	[LinkName("QSizePolicy_RetainSizeWhenHidden")]
	public static extern bool QSizePolicy_RetainSizeWhenHidden(void* c_this);
	[LinkName("QSizePolicy_SetRetainSizeWhenHidden")]
	public static extern void QSizePolicy_SetRetainSizeWhenHidden(void* c_this, bool retainSize);
	[LinkName("QSizePolicy_Transpose")]
	public static extern void QSizePolicy_Transpose(void* c_this);
	[LinkName("QSizePolicy_Transposed")]
	public static extern void QSizePolicy_Transposed(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QSizePolicy_Delete")]
	public static extern void QSizePolicy_Delete(void* self);
}