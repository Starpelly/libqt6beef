using System;
using System.Interop;
namespace Qt;

public interface IQGraphicsLinearLayout
{
	void* NativePtr { get; }
}
public struct QGraphicsLinearLayoutPtr : IQGraphicsLinearLayout, IDisposable, IQGraphicsLayout
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsLinearLayout_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsLinearLayout_Delete(this.nativePtr);
	}
	
	public void SetOrientation(int64 orientation)
	{
		CQt.QGraphicsLinearLayout_SetOrientation(this.nativePtr, (int64)orientation);
	}
	
	public int64 Orientation()
	{
		return CQt.QGraphicsLinearLayout_Orientation(this.nativePtr);
	}
	
	public void AddItem(IQGraphicsLayoutItem item)
	{
		CQt.QGraphicsLinearLayout_AddItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void AddStretch()
	{
		CQt.QGraphicsLinearLayout_AddStretch(this.nativePtr);
	}
	
	public void InsertItem(int32 index, IQGraphicsLayoutItem item)
	{
		CQt.QGraphicsLinearLayout_InsertItem(this.nativePtr, index, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void InsertStretch(int32 index)
	{
		CQt.QGraphicsLinearLayout_InsertStretch(this.nativePtr, index);
	}
	
	public void RemoveItem(IQGraphicsLayoutItem item)
	{
		CQt.QGraphicsLinearLayout_RemoveItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void RemoveAt(int32 index)
	{
		CQt.QGraphicsLinearLayout_RemoveAt(this.nativePtr, index);
	}
	
	public void SetSpacing(double spacing)
	{
		CQt.QGraphicsLinearLayout_SetSpacing(this.nativePtr, spacing);
	}
	
	public double Spacing()
	{
		return CQt.QGraphicsLinearLayout_Spacing(this.nativePtr);
	}
	
	public void SetItemSpacing(int32 index, double spacing)
	{
		CQt.QGraphicsLinearLayout_SetItemSpacing(this.nativePtr, index, spacing);
	}
	
	public double ItemSpacing(int32 index)
	{
		return CQt.QGraphicsLinearLayout_ItemSpacing(this.nativePtr, index);
	}
	
	public void SetStretchFactor(IQGraphicsLayoutItem item, int32 stretch)
	{
		CQt.QGraphicsLinearLayout_SetStretchFactor(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, stretch);
	}
	
	public int32 StretchFactor(IQGraphicsLayoutItem item)
	{
		return CQt.QGraphicsLinearLayout_StretchFactor(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void SetAlignment(IQGraphicsLayoutItem item, int64 alignment)
	{
		CQt.QGraphicsLinearLayout_SetAlignment(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, alignment);
	}
	
	public int64 Alignment(IQGraphicsLayoutItem item)
	{
		return CQt.QGraphicsLinearLayout_Alignment(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void SetGeometry(IQRectF rect)
	{
		CQt.QGraphicsLinearLayout_SetGeometry(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public int32 Count()
	{
		return CQt.QGraphicsLinearLayout_Count(this.nativePtr);
	}
	
	public void* ItemAt(int32 index)
	{
		return CQt.QGraphicsLinearLayout_ItemAt(this.nativePtr, index);
	}
	
	public void Invalidate()
	{
		CQt.QGraphicsLinearLayout_Invalidate(this.nativePtr);
	}
	
	public void SizeHint(int64 which, IQSizeF constraint)
	{
		CQt.QGraphicsLinearLayout_SizeHint(this.nativePtr, (int64)which, (constraint == default || constraint.NativePtr == default) ? default : constraint.NativePtr);
	}
	
	public void Dump()
	{
		CQt.QGraphicsLinearLayout_Dump(this.nativePtr);
	}
	
	public void AddStretch1(int32 stretch)
	{
		CQt.QGraphicsLinearLayout_AddStretch1(this.nativePtr, stretch);
	}
	
	public void InsertStretch2(int32 index, int32 stretch)
	{
		CQt.QGraphicsLinearLayout_InsertStretch2(this.nativePtr, index, stretch);
	}
	
	public void Dump1(int32 indent)
	{
		CQt.QGraphicsLinearLayout_Dump1(this.nativePtr, indent);
	}
	
	public void SetContentsMargins(double left, double top, double right, double bottom)
	{
		CQt.QGraphicsLayout_SetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void GetContentsMargins(double* left, double* top, double* right, double* bottom)
	{
		CQt.QGraphicsLayout_GetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void Activate()
	{
		CQt.QGraphicsLayout_Activate(this.nativePtr);
	}
	
	public bool IsActivated()
	{
		return CQt.QGraphicsLayout_IsActivated(this.nativePtr);
	}
	
	public void UpdateGeometry()
	{
		CQt.QGraphicsLayout_UpdateGeometry(this.nativePtr);
	}
	
	public void WidgetEvent(IQEvent e)
	{
		CQt.QGraphicsLayout_WidgetEvent(this.nativePtr, (e == default || e.NativePtr == default) ? default : e.NativePtr);
	}
	
	public static void SetInstantInvalidatePropagation(bool enable)
	{
		CQt.QGraphicsLayout_SetInstantInvalidatePropagation(enable);
	}
	
	public static bool InstantInvalidatePropagation()
	{
		return CQt.QGraphicsLayout_InstantInvalidatePropagation();
	}
	
	public void SetSizePolicy(IQSizePolicy policy)
	{
		CQt.QGraphicsLayoutItem_SetSizePolicy(this.nativePtr, (policy == default || policy.NativePtr == default) ? default : policy.NativePtr);
	}
	
	public void SetSizePolicy2(int64 hPolicy, int64 vPolicy)
	{
		CQt.QGraphicsLayoutItem_SetSizePolicy2(this.nativePtr, (int64)hPolicy, (int64)vPolicy);
	}
	
	public void SizePolicy()
	{
		CQt.QGraphicsLayoutItem_SizePolicy(this.nativePtr);
	}
	
	public void SetMinimumSize(IQSizeF size)
	{
		CQt.QGraphicsLayoutItem_SetMinimumSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void SetMinimumSize2(double w, double h)
	{
		CQt.QGraphicsLayoutItem_SetMinimumSize2(this.nativePtr, w, h);
	}
	
	public void MinimumSize()
	{
		CQt.QGraphicsLayoutItem_MinimumSize(this.nativePtr);
	}
	
	public void SetMinimumWidth(double width)
	{
		CQt.QGraphicsLayoutItem_SetMinimumWidth(this.nativePtr, width);
	}
	
	public double MinimumWidth()
	{
		return CQt.QGraphicsLayoutItem_MinimumWidth(this.nativePtr);
	}
	
	public void SetMinimumHeight(double height)
	{
		CQt.QGraphicsLayoutItem_SetMinimumHeight(this.nativePtr, height);
	}
	
	public double MinimumHeight()
	{
		return CQt.QGraphicsLayoutItem_MinimumHeight(this.nativePtr);
	}
	
	public void SetPreferredSize(IQSizeF size)
	{
		CQt.QGraphicsLayoutItem_SetPreferredSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void SetPreferredSize2(double w, double h)
	{
		CQt.QGraphicsLayoutItem_SetPreferredSize2(this.nativePtr, w, h);
	}
	
	public void PreferredSize()
	{
		CQt.QGraphicsLayoutItem_PreferredSize(this.nativePtr);
	}
	
	public void SetPreferredWidth(double width)
	{
		CQt.QGraphicsLayoutItem_SetPreferredWidth(this.nativePtr, width);
	}
	
	public double PreferredWidth()
	{
		return CQt.QGraphicsLayoutItem_PreferredWidth(this.nativePtr);
	}
	
	public void SetPreferredHeight(double height)
	{
		CQt.QGraphicsLayoutItem_SetPreferredHeight(this.nativePtr, height);
	}
	
	public double PreferredHeight()
	{
		return CQt.QGraphicsLayoutItem_PreferredHeight(this.nativePtr);
	}
	
	public void SetMaximumSize(IQSizeF size)
	{
		CQt.QGraphicsLayoutItem_SetMaximumSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void SetMaximumSize2(double w, double h)
	{
		CQt.QGraphicsLayoutItem_SetMaximumSize2(this.nativePtr, w, h);
	}
	
	public void MaximumSize()
	{
		CQt.QGraphicsLayoutItem_MaximumSize(this.nativePtr);
	}
	
	public void SetMaximumWidth(double width)
	{
		CQt.QGraphicsLayoutItem_SetMaximumWidth(this.nativePtr, width);
	}
	
	public double MaximumWidth()
	{
		return CQt.QGraphicsLayoutItem_MaximumWidth(this.nativePtr);
	}
	
	public void SetMaximumHeight(double height)
	{
		CQt.QGraphicsLayoutItem_SetMaximumHeight(this.nativePtr, height);
	}
	
	public double MaximumHeight()
	{
		return CQt.QGraphicsLayoutItem_MaximumHeight(this.nativePtr);
	}
	
	public void Geometry()
	{
		CQt.QGraphicsLayoutItem_Geometry(this.nativePtr);
	}
	
	public void ContentsRect()
	{
		CQt.QGraphicsLayoutItem_ContentsRect(this.nativePtr);
	}
	
	public void EffectiveSizeHint(int64 which)
	{
		CQt.QGraphicsLayoutItem_EffectiveSizeHint(this.nativePtr, (int64)which);
	}
	
	public bool IsEmpty()
	{
		return CQt.QGraphicsLayoutItem_IsEmpty(this.nativePtr);
	}
	
	public void* ParentLayoutItem()
	{
		return CQt.QGraphicsLayoutItem_ParentLayoutItem(this.nativePtr);
	}
	
	public void SetParentLayoutItem(IQGraphicsLayoutItem parent)
	{
		CQt.QGraphicsLayoutItem_SetParentLayoutItem(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool IsLayout()
	{
		return CQt.QGraphicsLayoutItem_IsLayout(this.nativePtr);
	}
	
	public void* GraphicsItem()
	{
		return CQt.QGraphicsLayoutItem_GraphicsItem(this.nativePtr);
	}
	
	public bool OwnedByLayout()
	{
		return CQt.QGraphicsLayoutItem_OwnedByLayout(this.nativePtr);
	}
	
	public void SetSizePolicy3(int64 hPolicy, int64 vPolicy, int64 controlType)
	{
		CQt.QGraphicsLayoutItem_SetSizePolicy3(this.nativePtr, (int64)hPolicy, (int64)vPolicy, (int64)controlType);
	}
	
	public void EffectiveSizeHint2(int64 which, IQSizeF constraint)
	{
		CQt.QGraphicsLayoutItem_EffectiveSizeHint2(this.nativePtr, (int64)which, (constraint == default || constraint.NativePtr == default) ? default : constraint.NativePtr);
	}
	
}
public class QGraphicsLinearLayout
{
	public QGraphicsLinearLayoutPtr handle;
	
	public static implicit operator QGraphicsLinearLayoutPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsLinearLayoutPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void SetOrientation(int64 orientation)
	{
		this.handle.SetOrientation(orientation);
	}
	
	public int64 Orientation()
	{
		return this.handle.Orientation();
	}
	
	public void AddItem(IQGraphicsLayoutItem item)
	{
		this.handle.AddItem(item);
	}
	
	public void AddStretch()
	{
		this.handle.AddStretch();
	}
	
	public void InsertItem(int32 index, IQGraphicsLayoutItem item)
	{
		this.handle.InsertItem(index, item);
	}
	
	public void InsertStretch(int32 index)
	{
		this.handle.InsertStretch(index);
	}
	
	public void RemoveItem(IQGraphicsLayoutItem item)
	{
		this.handle.RemoveItem(item);
	}
	
	public virtual void RemoveAt(int32 index)
	{
		this.handle.RemoveAt(index);
	}
	
	public void SetSpacing(double spacing)
	{
		this.handle.SetSpacing(spacing);
	}
	
	public double Spacing()
	{
		return this.handle.Spacing();
	}
	
	public void SetItemSpacing(int32 index, double spacing)
	{
		this.handle.SetItemSpacing(index, spacing);
	}
	
	public double ItemSpacing(int32 index)
	{
		return this.handle.ItemSpacing(index);
	}
	
	public void SetStretchFactor(IQGraphicsLayoutItem item, int32 stretch)
	{
		this.handle.SetStretchFactor(item, stretch);
	}
	
	public int32 StretchFactor(IQGraphicsLayoutItem item)
	{
		return this.handle.StretchFactor(item);
	}
	
	public void SetAlignment(IQGraphicsLayoutItem item, int64 alignment)
	{
		this.handle.SetAlignment(item, alignment);
	}
	
	public int64 Alignment(IQGraphicsLayoutItem item)
	{
		return this.handle.Alignment(item);
	}
	
	public virtual void SetGeometry(IQRectF rect)
	{
		this.handle.SetGeometry(rect);
	}
	
	public virtual int32 Count()
	{
		return this.handle.Count();
	}
	
	public virtual void* ItemAt(int32 index)
	{
		return this.handle.ItemAt(index);
	}
	
	public virtual void Invalidate()
	{
		this.handle.Invalidate();
	}
	
	public virtual void SizeHint(int64 which, IQSizeF constraint)
	{
		this.handle.SizeHint(which, constraint);
	}
	
	public void Dump()
	{
		this.handle.Dump();
	}
	
	public void AddStretch1(int32 stretch)
	{
		this.handle.AddStretch1(stretch);
	}
	
	public void InsertStretch2(int32 index, int32 stretch)
	{
		this.handle.InsertStretch2(index, stretch);
	}
	
	public void Dump1(int32 indent)
	{
		this.handle.Dump1(indent);
	}
	
	public void SetContentsMargins(double left, double top, double right, double bottom)
	{
		this.handle.SetContentsMargins(left, top, right, bottom);
	}
	
	public virtual void GetContentsMargins(double* left, double* top, double* right, double* bottom)
	{
		this.handle.GetContentsMargins(left, top, right, bottom);
	}
	
	public void Activate()
	{
		this.handle.Activate();
	}
	
	public bool IsActivated()
	{
		return this.handle.IsActivated();
	}
	
	public virtual void UpdateGeometry()
	{
		this.handle.UpdateGeometry();
	}
	
	public virtual void WidgetEvent(IQEvent e)
	{
		this.handle.WidgetEvent(e);
	}
	
	public static void SetInstantInvalidatePropagation(bool enable)
	{
		QGraphicsLinearLayoutPtr.SetInstantInvalidatePropagation(enable);
	}
	
	public static bool InstantInvalidatePropagation()
	{
		return QGraphicsLinearLayoutPtr.InstantInvalidatePropagation();
	}
	
	public void SetSizePolicy(IQSizePolicy policy)
	{
		this.handle.SetSizePolicy(policy);
	}
	
	public void SetSizePolicy2(int64 hPolicy, int64 vPolicy)
	{
		this.handle.SetSizePolicy2(hPolicy, vPolicy);
	}
	
	public void SizePolicy()
	{
		this.handle.SizePolicy();
	}
	
	public void SetMinimumSize(IQSizeF size)
	{
		this.handle.SetMinimumSize(size);
	}
	
	public void SetMinimumSize2(double w, double h)
	{
		this.handle.SetMinimumSize2(w, h);
	}
	
	public void MinimumSize()
	{
		this.handle.MinimumSize();
	}
	
	public void SetMinimumWidth(double width)
	{
		this.handle.SetMinimumWidth(width);
	}
	
	public double MinimumWidth()
	{
		return this.handle.MinimumWidth();
	}
	
	public void SetMinimumHeight(double height)
	{
		this.handle.SetMinimumHeight(height);
	}
	
	public double MinimumHeight()
	{
		return this.handle.MinimumHeight();
	}
	
	public void SetPreferredSize(IQSizeF size)
	{
		this.handle.SetPreferredSize(size);
	}
	
	public void SetPreferredSize2(double w, double h)
	{
		this.handle.SetPreferredSize2(w, h);
	}
	
	public void PreferredSize()
	{
		this.handle.PreferredSize();
	}
	
	public void SetPreferredWidth(double width)
	{
		this.handle.SetPreferredWidth(width);
	}
	
	public double PreferredWidth()
	{
		return this.handle.PreferredWidth();
	}
	
	public void SetPreferredHeight(double height)
	{
		this.handle.SetPreferredHeight(height);
	}
	
	public double PreferredHeight()
	{
		return this.handle.PreferredHeight();
	}
	
	public void SetMaximumSize(IQSizeF size)
	{
		this.handle.SetMaximumSize(size);
	}
	
	public void SetMaximumSize2(double w, double h)
	{
		this.handle.SetMaximumSize2(w, h);
	}
	
	public void MaximumSize()
	{
		this.handle.MaximumSize();
	}
	
	public void SetMaximumWidth(double width)
	{
		this.handle.SetMaximumWidth(width);
	}
	
	public double MaximumWidth()
	{
		return this.handle.MaximumWidth();
	}
	
	public void SetMaximumHeight(double height)
	{
		this.handle.SetMaximumHeight(height);
	}
	
	public double MaximumHeight()
	{
		return this.handle.MaximumHeight();
	}
	
	public void Geometry()
	{
		this.handle.Geometry();
	}
	
	public void ContentsRect()
	{
		this.handle.ContentsRect();
	}
	
	public void EffectiveSizeHint(int64 which)
	{
		this.handle.EffectiveSizeHint(which);
	}
	
	public virtual bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public void* ParentLayoutItem()
	{
		return this.handle.ParentLayoutItem();
	}
	
	public void SetParentLayoutItem(IQGraphicsLayoutItem parent)
	{
		this.handle.SetParentLayoutItem(parent);
	}
	
	public bool IsLayout()
	{
		return this.handle.IsLayout();
	}
	
	public void* GraphicsItem()
	{
		return this.handle.GraphicsItem();
	}
	
	public bool OwnedByLayout()
	{
		return this.handle.OwnedByLayout();
	}
	
	public void SetSizePolicy3(int64 hPolicy, int64 vPolicy, int64 controlType)
	{
		this.handle.SetSizePolicy3(hPolicy, vPolicy, controlType);
	}
	
	public void EffectiveSizeHint2(int64 which, IQSizeF constraint)
	{
		this.handle.EffectiveSizeHint2(which, constraint);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsLinearLayout_new")]
	public static extern void* QGraphicsLinearLayout_new();
	[LinkName("QGraphicsLinearLayout_new2")]
	public static extern void* QGraphicsLinearLayout_new2(int64 orientation);
	[LinkName("QGraphicsLinearLayout_new3")]
	public static extern void* QGraphicsLinearLayout_new3(void* parent);
	[LinkName("QGraphicsLinearLayout_new4")]
	public static extern void* QGraphicsLinearLayout_new4(int64 orientation, void* parent);
	[LinkName("QGraphicsLinearLayout_SetOrientation")]
	public static extern void QGraphicsLinearLayout_SetOrientation(void* c_this, int64 orientation);
	[LinkName("QGraphicsLinearLayout_Orientation")]
	public static extern int64 QGraphicsLinearLayout_Orientation(void* c_this);
	[LinkName("QGraphicsLinearLayout_AddItem")]
	public static extern void QGraphicsLinearLayout_AddItem(void* c_this, void* item);
	[LinkName("QGraphicsLinearLayout_AddStretch")]
	public static extern void QGraphicsLinearLayout_AddStretch(void* c_this);
	[LinkName("QGraphicsLinearLayout_InsertItem")]
	public static extern void QGraphicsLinearLayout_InsertItem(void* c_this, int32 index, void* item);
	[LinkName("QGraphicsLinearLayout_InsertStretch")]
	public static extern void QGraphicsLinearLayout_InsertStretch(void* c_this, int32 index);
	[LinkName("QGraphicsLinearLayout_RemoveItem")]
	public static extern void QGraphicsLinearLayout_RemoveItem(void* c_this, void* item);
	[LinkName("QGraphicsLinearLayout_RemoveAt")]
	public static extern void QGraphicsLinearLayout_RemoveAt(void* c_this, int32 index);
	[LinkName("QGraphicsLinearLayout_SetSpacing")]
	public static extern void QGraphicsLinearLayout_SetSpacing(void* c_this, double spacing);
	[LinkName("QGraphicsLinearLayout_Spacing")]
	public static extern double QGraphicsLinearLayout_Spacing(void* c_this);
	[LinkName("QGraphicsLinearLayout_SetItemSpacing")]
	public static extern void QGraphicsLinearLayout_SetItemSpacing(void* c_this, int32 index, double spacing);
	[LinkName("QGraphicsLinearLayout_ItemSpacing")]
	public static extern double QGraphicsLinearLayout_ItemSpacing(void* c_this, int32 index);
	[LinkName("QGraphicsLinearLayout_SetStretchFactor")]
	public static extern void QGraphicsLinearLayout_SetStretchFactor(void* c_this, void* item, int32 stretch);
	[LinkName("QGraphicsLinearLayout_StretchFactor")]
	public static extern int32 QGraphicsLinearLayout_StretchFactor(void* c_this, void* item);
	[LinkName("QGraphicsLinearLayout_SetAlignment")]
	public static extern void QGraphicsLinearLayout_SetAlignment(void* c_this, void* item, int64 alignment);
	[LinkName("QGraphicsLinearLayout_Alignment")]
	public static extern int64 QGraphicsLinearLayout_Alignment(void* c_this, void* item);
	[LinkName("QGraphicsLinearLayout_SetGeometry")]
	public static extern void QGraphicsLinearLayout_SetGeometry(void* c_this, void* rect);
	[LinkName("QGraphicsLinearLayout_Count")]
	public static extern int32 QGraphicsLinearLayout_Count(void* c_this);
	[LinkName("QGraphicsLinearLayout_ItemAt")]
	public static extern void* QGraphicsLinearLayout_ItemAt(void* c_this, int32 index);
	[LinkName("QGraphicsLinearLayout_Invalidate")]
	public static extern void QGraphicsLinearLayout_Invalidate(void* c_this);
	[LinkName("QGraphicsLinearLayout_SizeHint")]
	public static extern void QGraphicsLinearLayout_SizeHint(void* c_this, int64 which, void* constraint);
	[LinkName("QGraphicsLinearLayout_Dump")]
	public static extern void QGraphicsLinearLayout_Dump(void* c_this);
	[LinkName("QGraphicsLinearLayout_AddStretch1")]
	public static extern void QGraphicsLinearLayout_AddStretch1(void* c_this, int32 stretch);
	[LinkName("QGraphicsLinearLayout_InsertStretch2")]
	public static extern void QGraphicsLinearLayout_InsertStretch2(void* c_this, int32 index, int32 stretch);
	[LinkName("QGraphicsLinearLayout_Dump1")]
	public static extern void QGraphicsLinearLayout_Dump1(void* c_this, int32 indent);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsLinearLayout_Delete")]
	public static extern void QGraphicsLinearLayout_Delete(void* self);
}