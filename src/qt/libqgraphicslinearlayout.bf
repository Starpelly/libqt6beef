using System;
using System.Interop;
namespace Qt;

public class QGraphicsLinearLayout
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsLinearLayout_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsLinearLayout_Delete(this.nativePtr);
	}
	
	public void SetOrientation(int64 orientation)
	{
		CQt.QGraphicsLinearLayout_SetOrientation(this.nativePtr, orientation);
	}
	
	public int64 Orientation()
	{
		return CQt.QGraphicsLinearLayout_Orientation(this.nativePtr);
	}
	
	public void AddItem(void* item)
	{
		CQt.QGraphicsLinearLayout_AddItem(this.nativePtr, item);
	}
	
	public void AddStretch()
	{
		CQt.QGraphicsLinearLayout_AddStretch(this.nativePtr);
	}
	
	public void InsertItem(int32 index, void* item)
	{
		CQt.QGraphicsLinearLayout_InsertItem(this.nativePtr, index, item);
	}
	
	public void InsertStretch(int32 index)
	{
		CQt.QGraphicsLinearLayout_InsertStretch(this.nativePtr, index);
	}
	
	public void RemoveItem(void* item)
	{
		CQt.QGraphicsLinearLayout_RemoveItem(this.nativePtr, item);
	}
	
	public virtual void RemoveAt(int32 index)
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
	
	public void SetStretchFactor(void* item, int32 stretch)
	{
		CQt.QGraphicsLinearLayout_SetStretchFactor(this.nativePtr, item, stretch);
	}
	
	public int32 StretchFactor(void* item)
	{
		return CQt.QGraphicsLinearLayout_StretchFactor(this.nativePtr, item);
	}
	
	public void SetAlignment(void* item, int64 alignment)
	{
		CQt.QGraphicsLinearLayout_SetAlignment(this.nativePtr, item, alignment);
	}
	
	public int64 Alignment(void* item)
	{
		return CQt.QGraphicsLinearLayout_Alignment(this.nativePtr, item);
	}
	
	public virtual void SetGeometry(void* rect)
	{
		CQt.QGraphicsLinearLayout_SetGeometry(this.nativePtr, rect);
	}
	
	public virtual int32 Count()
	{
		return CQt.QGraphicsLinearLayout_Count(this.nativePtr);
	}
	
	public virtual void* ItemAt(int32 index)
	{
		return CQt.QGraphicsLinearLayout_ItemAt(this.nativePtr, index);
	}
	
	public virtual void Invalidate()
	{
		CQt.QGraphicsLinearLayout_Invalidate(this.nativePtr);
	}
	
	public virtual void SizeHint(int64 which, void* constraint)
	{
		CQt.QGraphicsLinearLayout_SizeHint(this.nativePtr, which, constraint);
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
	
	public virtual void GetContentsMargins(double* left, double* top, double* right, double* bottom)
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
	
	public virtual void UpdateGeometry()
	{
		CQt.QGraphicsLayout_UpdateGeometry(this.nativePtr);
	}
	
	public virtual void WidgetEvent(void* e)
	{
		CQt.QGraphicsLayout_WidgetEvent(this.nativePtr, e);
	}
	
	public static void SetInstantInvalidatePropagation(bool enable)
	{
		CQt.QGraphicsLayout_SetInstantInvalidatePropagation(enable);
	}
	
	public static bool InstantInvalidatePropagation()
	{
		return CQt.QGraphicsLayout_InstantInvalidatePropagation();
	}
	
	public void SetSizePolicy(void* policy)
	{
		CQt.QGraphicsLayoutItem_SetSizePolicy(this.nativePtr, policy);
	}
	
	public void SetSizePolicy2(int64 hPolicy, int64 vPolicy)
	{
		CQt.QGraphicsLayoutItem_SetSizePolicy2(this.nativePtr, hPolicy, vPolicy);
	}
	
	public void SizePolicy()
	{
		CQt.QGraphicsLayoutItem_SizePolicy(this.nativePtr);
	}
	
	public void SetMinimumSize(void* size)
	{
		CQt.QGraphicsLayoutItem_SetMinimumSize(this.nativePtr, size);
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
	
	public void SetPreferredSize(void* size)
	{
		CQt.QGraphicsLayoutItem_SetPreferredSize(this.nativePtr, size);
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
	
	public void SetMaximumSize(void* size)
	{
		CQt.QGraphicsLayoutItem_SetMaximumSize(this.nativePtr, size);
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
		CQt.QGraphicsLayoutItem_EffectiveSizeHint(this.nativePtr, which);
	}
	
	public virtual bool IsEmpty()
	{
		return CQt.QGraphicsLayoutItem_IsEmpty(this.nativePtr);
	}
	
	public void* ParentLayoutItem()
	{
		return CQt.QGraphicsLayoutItem_ParentLayoutItem(this.nativePtr);
	}
	
	public void SetParentLayoutItem(void* parent)
	{
		CQt.QGraphicsLayoutItem_SetParentLayoutItem(this.nativePtr, parent);
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
		CQt.QGraphicsLayoutItem_SetSizePolicy3(this.nativePtr, hPolicy, vPolicy, controlType);
	}
	
	public void EffectiveSizeHint2(int64 which, void* constraint)
	{
		CQt.QGraphicsLayoutItem_EffectiveSizeHint2(this.nativePtr, which, constraint);
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