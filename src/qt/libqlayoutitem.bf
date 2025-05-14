using System;
using System.Interop;
namespace Qt;

public interface IQLayoutItem
{
	void* NativePtr { get; }
}
public struct QLayoutItemPtr : IQLayoutItem, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QLayoutItem_new());
	}
	
	public void Dispose()
	{
		CQt.QLayoutItem_Delete(this.nativePtr);
	}
	
	public void SizeHint()
	{
		CQt.QLayoutItem_SizeHint(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QLayoutItem_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QLayoutItem_MaximumSize(this.nativePtr);
	}
	
	public int64 ExpandingDirections()
	{
		return CQt.QLayoutItem_ExpandingDirections(this.nativePtr);
	}
	
	public void SetGeometry(IQRect geometry)
	{
		CQt.QLayoutItem_SetGeometry(this.nativePtr, (geometry == default || geometry.NativePtr == default) ? default : geometry.NativePtr);
	}
	
	public void Geometry()
	{
		CQt.QLayoutItem_Geometry(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QLayoutItem_IsEmpty(this.nativePtr);
	}
	
	public bool HasHeightForWidth()
	{
		return CQt.QLayoutItem_HasHeightForWidth(this.nativePtr);
	}
	
	public int32 HeightForWidth(int32 param1)
	{
		return CQt.QLayoutItem_HeightForWidth(this.nativePtr, param1);
	}
	
	public int32 MinimumHeightForWidth(int32 param1)
	{
		return CQt.QLayoutItem_MinimumHeightForWidth(this.nativePtr, param1);
	}
	
	public void Invalidate()
	{
		CQt.QLayoutItem_Invalidate(this.nativePtr);
	}
	
	public void* Widget()
	{
		return CQt.QLayoutItem_Widget(this.nativePtr);
	}
	
	public void* Layout()
	{
		return CQt.QLayoutItem_Layout(this.nativePtr);
	}
	
	public void* SpacerItem()
	{
		return CQt.QLayoutItem_SpacerItem(this.nativePtr);
	}
	
	public int64 Alignment()
	{
		return CQt.QLayoutItem_Alignment(this.nativePtr);
	}
	
	public void SetAlignment(int64 a)
	{
		CQt.QLayoutItem_SetAlignment(this.nativePtr, a);
	}
	
	public int64 ControlTypes()
	{
		return CQt.QLayoutItem_ControlTypes(this.nativePtr);
	}
	
	public void OperatorAssign(IQLayoutItem param1)
	{
		CQt.QLayoutItem_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
}
public class QLayoutItem
{
	public QLayoutItemPtr handle;
	
	public static implicit operator QLayoutItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QLayoutItemPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void SizeHint()
	{
		this.handle.SizeHint();
	}
	
	public virtual void MinimumSize()
	{
		this.handle.MinimumSize();
	}
	
	public virtual void MaximumSize()
	{
		this.handle.MaximumSize();
	}
	
	public virtual int64 ExpandingDirections()
	{
		return this.handle.ExpandingDirections();
	}
	
	public virtual void SetGeometry(IQRect geometry)
	{
		this.handle.SetGeometry(geometry);
	}
	
	public virtual void Geometry()
	{
		this.handle.Geometry();
	}
	
	public virtual bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public virtual bool HasHeightForWidth()
	{
		return this.handle.HasHeightForWidth();
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return this.handle.HeightForWidth(param1);
	}
	
	public virtual int32 MinimumHeightForWidth(int32 param1)
	{
		return this.handle.MinimumHeightForWidth(param1);
	}
	
	public virtual void Invalidate()
	{
		this.handle.Invalidate();
	}
	
	public virtual void* Widget()
	{
		return this.handle.Widget();
	}
	
	public virtual void* Layout()
	{
		return this.handle.Layout();
	}
	
	public virtual void* SpacerItem()
	{
		return this.handle.SpacerItem();
	}
	
	public int64 Alignment()
	{
		return this.handle.Alignment();
	}
	
	public void SetAlignment(int64 a)
	{
		this.handle.SetAlignment(a);
	}
	
	public virtual int64 ControlTypes()
	{
		return this.handle.ControlTypes();
	}
	
	public void OperatorAssign(IQLayoutItem param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
}
extension CQt
{
	[LinkName("QLayoutItem_new")]
	public static extern void* QLayoutItem_new();
	[LinkName("QLayoutItem_new2")]
	public static extern void* QLayoutItem_new2(void* param1);
	[LinkName("QLayoutItem_new3")]
	public static extern void* QLayoutItem_new3(int64 alignment);
	[LinkName("QLayoutItem_SizeHint")]
	public static extern void QLayoutItem_SizeHint(void* c_this);
	[LinkName("QLayoutItem_MinimumSize")]
	public static extern void QLayoutItem_MinimumSize(void* c_this);
	[LinkName("QLayoutItem_MaximumSize")]
	public static extern void QLayoutItem_MaximumSize(void* c_this);
	[LinkName("QLayoutItem_ExpandingDirections")]
	public static extern int64 QLayoutItem_ExpandingDirections(void* c_this);
	[LinkName("QLayoutItem_SetGeometry")]
	public static extern void QLayoutItem_SetGeometry(void* c_this, void* geometry);
	[LinkName("QLayoutItem_Geometry")]
	public static extern void QLayoutItem_Geometry(void* c_this);
	[LinkName("QLayoutItem_IsEmpty")]
	public static extern bool QLayoutItem_IsEmpty(void* c_this);
	[LinkName("QLayoutItem_HasHeightForWidth")]
	public static extern bool QLayoutItem_HasHeightForWidth(void* c_this);
	[LinkName("QLayoutItem_HeightForWidth")]
	public static extern int32 QLayoutItem_HeightForWidth(void* c_this, int32 param1);
	[LinkName("QLayoutItem_MinimumHeightForWidth")]
	public static extern int32 QLayoutItem_MinimumHeightForWidth(void* c_this, int32 param1);
	[LinkName("QLayoutItem_Invalidate")]
	public static extern void QLayoutItem_Invalidate(void* c_this);
	[LinkName("QLayoutItem_Widget")]
	public static extern void* QLayoutItem_Widget(void* c_this);
	[LinkName("QLayoutItem_Layout")]
	public static extern void* QLayoutItem_Layout(void* c_this);
	[LinkName("QLayoutItem_SpacerItem")]
	public static extern void* QLayoutItem_SpacerItem(void* c_this);
	[LinkName("QLayoutItem_Alignment")]
	public static extern int64 QLayoutItem_Alignment(void* c_this);
	[LinkName("QLayoutItem_SetAlignment")]
	public static extern void QLayoutItem_SetAlignment(void* c_this, int64 a);
	[LinkName("QLayoutItem_ControlTypes")]
	public static extern int64 QLayoutItem_ControlTypes(void* c_this);
	[LinkName("QLayoutItem_OperatorAssign")]
	public static extern void QLayoutItem_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QLayoutItem_Delete")]
	public static extern void QLayoutItem_Delete(void* self);
}
public interface IQSpacerItem
{
	void* NativePtr { get; }
}
public struct QSpacerItemPtr : IQSpacerItem, IDisposable, IQLayoutItem
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int32 w, int32 h)
	{
		return .(CQt.QSpacerItem_new(w, h));
	}
	
	public void Dispose()
	{
		CQt.QSpacerItem_Delete(this.nativePtr);
	}
	
	public void ChangeSize(int32 w, int32 h)
	{
		CQt.QSpacerItem_ChangeSize(this.nativePtr, w, h);
	}
	
	public void SizeHint()
	{
		CQt.QSpacerItem_SizeHint(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QSpacerItem_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QSpacerItem_MaximumSize(this.nativePtr);
	}
	
	public int64 ExpandingDirections()
	{
		return CQt.QSpacerItem_ExpandingDirections(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QSpacerItem_IsEmpty(this.nativePtr);
	}
	
	public void SetGeometry(IQRect geometry)
	{
		CQt.QSpacerItem_SetGeometry(this.nativePtr, (geometry == default || geometry.NativePtr == default) ? default : geometry.NativePtr);
	}
	
	public void Geometry()
	{
		CQt.QSpacerItem_Geometry(this.nativePtr);
	}
	
	public void* SpacerItem()
	{
		return CQt.QSpacerItem_SpacerItem(this.nativePtr);
	}
	
	public void SizePolicy()
	{
		CQt.QSpacerItem_SizePolicy(this.nativePtr);
	}
	
	public void ChangeSize3(int32 w, int32 h, int64 hData)
	{
		CQt.QSpacerItem_ChangeSize3(this.nativePtr, w, h, (int64)hData);
	}
	
	public void ChangeSize4(int32 w, int32 h, int64 hData, int64 vData)
	{
		CQt.QSpacerItem_ChangeSize4(this.nativePtr, w, h, (int64)hData, (int64)vData);
	}
	
	public bool HasHeightForWidth()
	{
		return CQt.QLayoutItem_HasHeightForWidth(this.nativePtr);
	}
	
	public int32 HeightForWidth(int32 param1)
	{
		return CQt.QLayoutItem_HeightForWidth(this.nativePtr, param1);
	}
	
	public int32 MinimumHeightForWidth(int32 param1)
	{
		return CQt.QLayoutItem_MinimumHeightForWidth(this.nativePtr, param1);
	}
	
	public void Invalidate()
	{
		CQt.QLayoutItem_Invalidate(this.nativePtr);
	}
	
	public void* Widget()
	{
		return CQt.QLayoutItem_Widget(this.nativePtr);
	}
	
	public void* Layout()
	{
		return CQt.QLayoutItem_Layout(this.nativePtr);
	}
	
	public int64 Alignment()
	{
		return CQt.QLayoutItem_Alignment(this.nativePtr);
	}
	
	public void SetAlignment(int64 a)
	{
		CQt.QLayoutItem_SetAlignment(this.nativePtr, a);
	}
	
	public int64 ControlTypes()
	{
		return CQt.QLayoutItem_ControlTypes(this.nativePtr);
	}
	
}
public class QSpacerItem
{
	public QSpacerItemPtr handle;
	
	public static implicit operator QSpacerItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int32 w, int32 h)
	{
		this.handle = QSpacerItemPtr.New(w, h);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void ChangeSize(int32 w, int32 h)
	{
		this.handle.ChangeSize(w, h);
	}
	
	public virtual void SizeHint()
	{
		this.handle.SizeHint();
	}
	
	public virtual void MinimumSize()
	{
		this.handle.MinimumSize();
	}
	
	public virtual void MaximumSize()
	{
		this.handle.MaximumSize();
	}
	
	public virtual int64 ExpandingDirections()
	{
		return this.handle.ExpandingDirections();
	}
	
	public virtual bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public virtual void SetGeometry(IQRect geometry)
	{
		this.handle.SetGeometry(geometry);
	}
	
	public virtual void Geometry()
	{
		this.handle.Geometry();
	}
	
	public virtual void* SpacerItem()
	{
		return this.handle.SpacerItem();
	}
	
	public void SizePolicy()
	{
		this.handle.SizePolicy();
	}
	
	public void ChangeSize3(int32 w, int32 h, int64 hData)
	{
		this.handle.ChangeSize3(w, h, hData);
	}
	
	public void ChangeSize4(int32 w, int32 h, int64 hData, int64 vData)
	{
		this.handle.ChangeSize4(w, h, hData, vData);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return this.handle.HasHeightForWidth();
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return this.handle.HeightForWidth(param1);
	}
	
	public virtual int32 MinimumHeightForWidth(int32 param1)
	{
		return this.handle.MinimumHeightForWidth(param1);
	}
	
	public virtual void Invalidate()
	{
		this.handle.Invalidate();
	}
	
	public virtual void* Widget()
	{
		return this.handle.Widget();
	}
	
	public virtual void* Layout()
	{
		return this.handle.Layout();
	}
	
	public int64 Alignment()
	{
		return this.handle.Alignment();
	}
	
	public void SetAlignment(int64 a)
	{
		this.handle.SetAlignment(a);
	}
	
	public virtual int64 ControlTypes()
	{
		return this.handle.ControlTypes();
	}
	
}
extension CQt
{
	[LinkName("QSpacerItem_new")]
	public static extern void* QSpacerItem_new(int32 w, int32 h);
	[LinkName("QSpacerItem_new2")]
	public static extern void* QSpacerItem_new2(void* param1);
	[LinkName("QSpacerItem_new3")]
	public static extern void* QSpacerItem_new3(int32 w, int32 h, int64 hData);
	[LinkName("QSpacerItem_new4")]
	public static extern void* QSpacerItem_new4(int32 w, int32 h, int64 hData, int64 vData);
	[LinkName("QSpacerItem_ChangeSize")]
	public static extern void QSpacerItem_ChangeSize(void* c_this, int32 w, int32 h);
	[LinkName("QSpacerItem_SizeHint")]
	public static extern void QSpacerItem_SizeHint(void* c_this);
	[LinkName("QSpacerItem_MinimumSize")]
	public static extern void QSpacerItem_MinimumSize(void* c_this);
	[LinkName("QSpacerItem_MaximumSize")]
	public static extern void QSpacerItem_MaximumSize(void* c_this);
	[LinkName("QSpacerItem_ExpandingDirections")]
	public static extern int64 QSpacerItem_ExpandingDirections(void* c_this);
	[LinkName("QSpacerItem_IsEmpty")]
	public static extern bool QSpacerItem_IsEmpty(void* c_this);
	[LinkName("QSpacerItem_SetGeometry")]
	public static extern void QSpacerItem_SetGeometry(void* c_this, void* geometry);
	[LinkName("QSpacerItem_Geometry")]
	public static extern void QSpacerItem_Geometry(void* c_this);
	[LinkName("QSpacerItem_SpacerItem")]
	public static extern void* QSpacerItem_SpacerItem(void* c_this);
	[LinkName("QSpacerItem_SizePolicy")]
	public static extern void QSpacerItem_SizePolicy(void* c_this);
	[LinkName("QSpacerItem_ChangeSize3")]
	public static extern void QSpacerItem_ChangeSize3(void* c_this, int32 w, int32 h, int64 hData);
	[LinkName("QSpacerItem_ChangeSize4")]
	public static extern void QSpacerItem_ChangeSize4(void* c_this, int32 w, int32 h, int64 hData, int64 vData);
	/// Delete this object from C++ memory
	[LinkName("QSpacerItem_Delete")]
	public static extern void QSpacerItem_Delete(void* self);
}
public interface IQWidgetItem
{
	void* NativePtr { get; }
}
public struct QWidgetItemPtr : IQWidgetItem, IDisposable, IQLayoutItem
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQWidget w)
	{
		return .(CQt.QWidgetItem_new((w == default || w.NativePtr == default) ? default : w.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QWidgetItem_Delete(this.nativePtr);
	}
	
	public void SizeHint()
	{
		CQt.QWidgetItem_SizeHint(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QWidgetItem_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QWidgetItem_MaximumSize(this.nativePtr);
	}
	
	public int64 ExpandingDirections()
	{
		return CQt.QWidgetItem_ExpandingDirections(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QWidgetItem_IsEmpty(this.nativePtr);
	}
	
	public void SetGeometry(IQRect geometry)
	{
		CQt.QWidgetItem_SetGeometry(this.nativePtr, (geometry == default || geometry.NativePtr == default) ? default : geometry.NativePtr);
	}
	
	public void Geometry()
	{
		CQt.QWidgetItem_Geometry(this.nativePtr);
	}
	
	public void* Widget()
	{
		return CQt.QWidgetItem_Widget(this.nativePtr);
	}
	
	public bool HasHeightForWidth()
	{
		return CQt.QWidgetItem_HasHeightForWidth(this.nativePtr);
	}
	
	public int32 HeightForWidth(int32 param1)
	{
		return CQt.QWidgetItem_HeightForWidth(this.nativePtr, param1);
	}
	
	public int32 MinimumHeightForWidth(int32 param1)
	{
		return CQt.QWidgetItem_MinimumHeightForWidth(this.nativePtr, param1);
	}
	
	public int64 ControlTypes()
	{
		return CQt.QWidgetItem_ControlTypes(this.nativePtr);
	}
	
	public void Invalidate()
	{
		CQt.QLayoutItem_Invalidate(this.nativePtr);
	}
	
	public void* Layout()
	{
		return CQt.QLayoutItem_Layout(this.nativePtr);
	}
	
	public void* SpacerItem()
	{
		return CQt.QLayoutItem_SpacerItem(this.nativePtr);
	}
	
	public int64 Alignment()
	{
		return CQt.QLayoutItem_Alignment(this.nativePtr);
	}
	
	public void SetAlignment(int64 a)
	{
		CQt.QLayoutItem_SetAlignment(this.nativePtr, a);
	}
	
}
public class QWidgetItem
{
	public QWidgetItemPtr handle;
	
	public static implicit operator QWidgetItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQWidget w)
	{
		this.handle = QWidgetItemPtr.New(w);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void SizeHint()
	{
		this.handle.SizeHint();
	}
	
	public virtual void MinimumSize()
	{
		this.handle.MinimumSize();
	}
	
	public virtual void MaximumSize()
	{
		this.handle.MaximumSize();
	}
	
	public virtual int64 ExpandingDirections()
	{
		return this.handle.ExpandingDirections();
	}
	
	public virtual bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public virtual void SetGeometry(IQRect geometry)
	{
		this.handle.SetGeometry(geometry);
	}
	
	public virtual void Geometry()
	{
		this.handle.Geometry();
	}
	
	public virtual void* Widget()
	{
		return this.handle.Widget();
	}
	
	public virtual bool HasHeightForWidth()
	{
		return this.handle.HasHeightForWidth();
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return this.handle.HeightForWidth(param1);
	}
	
	public virtual int32 MinimumHeightForWidth(int32 param1)
	{
		return this.handle.MinimumHeightForWidth(param1);
	}
	
	public virtual int64 ControlTypes()
	{
		return this.handle.ControlTypes();
	}
	
	public virtual void Invalidate()
	{
		this.handle.Invalidate();
	}
	
	public virtual void* Layout()
	{
		return this.handle.Layout();
	}
	
	public virtual void* SpacerItem()
	{
		return this.handle.SpacerItem();
	}
	
	public int64 Alignment()
	{
		return this.handle.Alignment();
	}
	
	public void SetAlignment(int64 a)
	{
		this.handle.SetAlignment(a);
	}
	
}
extension CQt
{
	[LinkName("QWidgetItem_new")]
	public static extern void* QWidgetItem_new(void* w);
	[LinkName("QWidgetItem_SizeHint")]
	public static extern void QWidgetItem_SizeHint(void* c_this);
	[LinkName("QWidgetItem_MinimumSize")]
	public static extern void QWidgetItem_MinimumSize(void* c_this);
	[LinkName("QWidgetItem_MaximumSize")]
	public static extern void QWidgetItem_MaximumSize(void* c_this);
	[LinkName("QWidgetItem_ExpandingDirections")]
	public static extern int64 QWidgetItem_ExpandingDirections(void* c_this);
	[LinkName("QWidgetItem_IsEmpty")]
	public static extern bool QWidgetItem_IsEmpty(void* c_this);
	[LinkName("QWidgetItem_SetGeometry")]
	public static extern void QWidgetItem_SetGeometry(void* c_this, void* geometry);
	[LinkName("QWidgetItem_Geometry")]
	public static extern void QWidgetItem_Geometry(void* c_this);
	[LinkName("QWidgetItem_Widget")]
	public static extern void* QWidgetItem_Widget(void* c_this);
	[LinkName("QWidgetItem_HasHeightForWidth")]
	public static extern bool QWidgetItem_HasHeightForWidth(void* c_this);
	[LinkName("QWidgetItem_HeightForWidth")]
	public static extern int32 QWidgetItem_HeightForWidth(void* c_this, int32 param1);
	[LinkName("QWidgetItem_MinimumHeightForWidth")]
	public static extern int32 QWidgetItem_MinimumHeightForWidth(void* c_this, int32 param1);
	[LinkName("QWidgetItem_ControlTypes")]
	public static extern int64 QWidgetItem_ControlTypes(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QWidgetItem_Delete")]
	public static extern void QWidgetItem_Delete(void* self);
}
public interface IQWidgetItemV2
{
	void* NativePtr { get; }
}
public struct QWidgetItemV2Ptr : IQWidgetItemV2, IDisposable, IQWidgetItem
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQWidget widget)
	{
		return .(CQt.QWidgetItemV2_new((widget == default || widget.NativePtr == default) ? default : widget.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QWidgetItemV2_Delete(this.nativePtr);
	}
	
	public void SizeHint()
	{
		CQt.QWidgetItemV2_SizeHint(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QWidgetItemV2_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QWidgetItemV2_MaximumSize(this.nativePtr);
	}
	
	public int32 HeightForWidth(int32 width)
	{
		return CQt.QWidgetItemV2_HeightForWidth(this.nativePtr, width);
	}
	
	public int64 ExpandingDirections()
	{
		return CQt.QWidgetItem_ExpandingDirections(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QWidgetItem_IsEmpty(this.nativePtr);
	}
	
	public void SetGeometry(IQRect geometry)
	{
		CQt.QWidgetItem_SetGeometry(this.nativePtr, (geometry == default || geometry.NativePtr == default) ? default : geometry.NativePtr);
	}
	
	public void Geometry()
	{
		CQt.QWidgetItem_Geometry(this.nativePtr);
	}
	
	public void* Widget()
	{
		return CQt.QWidgetItem_Widget(this.nativePtr);
	}
	
	public bool HasHeightForWidth()
	{
		return CQt.QWidgetItem_HasHeightForWidth(this.nativePtr);
	}
	
	public int32 MinimumHeightForWidth(int32 param1)
	{
		return CQt.QWidgetItem_MinimumHeightForWidth(this.nativePtr, param1);
	}
	
	public int64 ControlTypes()
	{
		return CQt.QWidgetItem_ControlTypes(this.nativePtr);
	}
	
	public void Invalidate()
	{
		CQt.QLayoutItem_Invalidate(this.nativePtr);
	}
	
	public void* Layout()
	{
		return CQt.QLayoutItem_Layout(this.nativePtr);
	}
	
	public void* SpacerItem()
	{
		return CQt.QLayoutItem_SpacerItem(this.nativePtr);
	}
	
	public int64 Alignment()
	{
		return CQt.QLayoutItem_Alignment(this.nativePtr);
	}
	
	public void SetAlignment(int64 a)
	{
		CQt.QLayoutItem_SetAlignment(this.nativePtr, a);
	}
	
}
public class QWidgetItemV2
{
	public QWidgetItemV2Ptr handle;
	
	public static implicit operator QWidgetItemV2Ptr(Self self)
	{
		return self.handle;
	}
	
	public this(IQWidget widget)
	{
		this.handle = QWidgetItemV2Ptr.New(widget);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void SizeHint()
	{
		this.handle.SizeHint();
	}
	
	public virtual void MinimumSize()
	{
		this.handle.MinimumSize();
	}
	
	public virtual void MaximumSize()
	{
		this.handle.MaximumSize();
	}
	
	public virtual int32 HeightForWidth(int32 width)
	{
		return this.handle.HeightForWidth(width);
	}
	
	public virtual int64 ExpandingDirections()
	{
		return this.handle.ExpandingDirections();
	}
	
	public virtual bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public virtual void SetGeometry(IQRect geometry)
	{
		this.handle.SetGeometry(geometry);
	}
	
	public virtual void Geometry()
	{
		this.handle.Geometry();
	}
	
	public virtual void* Widget()
	{
		return this.handle.Widget();
	}
	
	public virtual bool HasHeightForWidth()
	{
		return this.handle.HasHeightForWidth();
	}
	
	public virtual int32 MinimumHeightForWidth(int32 param1)
	{
		return this.handle.MinimumHeightForWidth(param1);
	}
	
	public virtual int64 ControlTypes()
	{
		return this.handle.ControlTypes();
	}
	
	public virtual void Invalidate()
	{
		this.handle.Invalidate();
	}
	
	public virtual void* Layout()
	{
		return this.handle.Layout();
	}
	
	public virtual void* SpacerItem()
	{
		return this.handle.SpacerItem();
	}
	
	public int64 Alignment()
	{
		return this.handle.Alignment();
	}
	
	public void SetAlignment(int64 a)
	{
		this.handle.SetAlignment(a);
	}
	
}
extension CQt
{
	[LinkName("QWidgetItemV2_new")]
	public static extern void* QWidgetItemV2_new(void* widget);
	[LinkName("QWidgetItemV2_SizeHint")]
	public static extern void QWidgetItemV2_SizeHint(void* c_this);
	[LinkName("QWidgetItemV2_MinimumSize")]
	public static extern void QWidgetItemV2_MinimumSize(void* c_this);
	[LinkName("QWidgetItemV2_MaximumSize")]
	public static extern void QWidgetItemV2_MaximumSize(void* c_this);
	[LinkName("QWidgetItemV2_HeightForWidth")]
	public static extern int32 QWidgetItemV2_HeightForWidth(void* c_this, int32 width);
	/// Delete this object from C++ memory
	[LinkName("QWidgetItemV2_Delete")]
	public static extern void QWidgetItemV2_Delete(void* self);
}