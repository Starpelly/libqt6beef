using System;
using System.Interop;
namespace Qt;

public class QGraphicsLayout
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsLayout_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsLayout_Delete(this.nativePtr);
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
	
	public virtual void Invalidate()
	{
		CQt.QGraphicsLayout_Invalidate(this.nativePtr);
	}
	
	public virtual void UpdateGeometry()
	{
		CQt.QGraphicsLayout_UpdateGeometry(this.nativePtr);
	}
	
	public virtual void WidgetEvent(void* e)
	{
		CQt.QGraphicsLayout_WidgetEvent(this.nativePtr, e);
	}
	
	public virtual int32 Count()
	{
		return CQt.QGraphicsLayout_Count(this.nativePtr);
	}
	
	public virtual void* ItemAt(int32 i)
	{
		return CQt.QGraphicsLayout_ItemAt(this.nativePtr, i);
	}
	
	public virtual void RemoveAt(int32 index)
	{
		CQt.QGraphicsLayout_RemoveAt(this.nativePtr, index);
	}
	
	public static void SetInstantInvalidatePropagation(bool enable)
	{
		CQt.QGraphicsLayout_SetInstantInvalidatePropagation(enable);
	}
	
	public static bool InstantInvalidatePropagation()
	{
		return CQt.QGraphicsLayout_InstantInvalidatePropagation();
	}
	
	public void AddChildLayoutItem(void* layoutItem)
	{
		CQt.QGraphicsLayout_AddChildLayoutItem(this.nativePtr, layoutItem);
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
	
	public virtual void SetGeometry(void* rect)
	{
		CQt.QGraphicsLayoutItem_SetGeometry(this.nativePtr, rect);
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
	[LinkName("QGraphicsLayout_new")]
	public static extern void* QGraphicsLayout_new();
	[LinkName("QGraphicsLayout_new2")]
	public static extern void* QGraphicsLayout_new2(void* parent);
	[LinkName("QGraphicsLayout_SetContentsMargins")]
	public static extern void QGraphicsLayout_SetContentsMargins(void* c_this, double left, double top, double right, double bottom);
	[LinkName("QGraphicsLayout_GetContentsMargins")]
	public static extern void QGraphicsLayout_GetContentsMargins(void* c_this, double* left, double* top, double* right, double* bottom);
	[LinkName("QGraphicsLayout_Activate")]
	public static extern void QGraphicsLayout_Activate(void* c_this);
	[LinkName("QGraphicsLayout_IsActivated")]
	public static extern bool QGraphicsLayout_IsActivated(void* c_this);
	[LinkName("QGraphicsLayout_Invalidate")]
	public static extern void QGraphicsLayout_Invalidate(void* c_this);
	[LinkName("QGraphicsLayout_UpdateGeometry")]
	public static extern void QGraphicsLayout_UpdateGeometry(void* c_this);
	[LinkName("QGraphicsLayout_WidgetEvent")]
	public static extern void QGraphicsLayout_WidgetEvent(void* c_this, void* e);
	[LinkName("QGraphicsLayout_Count")]
	public static extern int32 QGraphicsLayout_Count(void* c_this);
	[LinkName("QGraphicsLayout_ItemAt")]
	public static extern void* QGraphicsLayout_ItemAt(void* c_this, int32 i);
	[LinkName("QGraphicsLayout_RemoveAt")]
	public static extern void QGraphicsLayout_RemoveAt(void* c_this, int32 index);
	[LinkName("QGraphicsLayout_SetInstantInvalidatePropagation")]
	public static extern void QGraphicsLayout_SetInstantInvalidatePropagation(bool enable);
	[LinkName("QGraphicsLayout_InstantInvalidatePropagation")]
	public static extern bool QGraphicsLayout_InstantInvalidatePropagation();
	[LinkName("QGraphicsLayout_AddChildLayoutItem")]
	public static extern void QGraphicsLayout_AddChildLayoutItem(void* c_this, void* layoutItem);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsLayout_Delete")]
	public static extern void QGraphicsLayout_Delete(void* self);
}