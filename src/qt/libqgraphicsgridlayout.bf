using System;
using System.Interop;
namespace Qt;

public interface IQGraphicsGridLayout
{
	void* NativePtr { get; }
}
public class QGraphicsGridLayout : IQGraphicsGridLayout, IQGraphicsLayout
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsGridLayout_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsGridLayout_Delete(this.nativePtr);
	}
	
	public void AddItem(IQGraphicsLayoutItem item, int32 row, int32 column, int32 rowSpan, int32 columnSpan)
	{
		CQt.QGraphicsGridLayout_AddItem(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, row, column, rowSpan, columnSpan);
	}
	
	public void AddItem2(IQGraphicsLayoutItem item, int32 row, int32 column)
	{
		CQt.QGraphicsGridLayout_AddItem2(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, row, column);
	}
	
	public void SetHorizontalSpacing(double spacing)
	{
		CQt.QGraphicsGridLayout_SetHorizontalSpacing(this.nativePtr, spacing);
	}
	
	public double HorizontalSpacing()
	{
		return CQt.QGraphicsGridLayout_HorizontalSpacing(this.nativePtr);
	}
	
	public void SetVerticalSpacing(double spacing)
	{
		CQt.QGraphicsGridLayout_SetVerticalSpacing(this.nativePtr, spacing);
	}
	
	public double VerticalSpacing()
	{
		return CQt.QGraphicsGridLayout_VerticalSpacing(this.nativePtr);
	}
	
	public void SetSpacing(double spacing)
	{
		CQt.QGraphicsGridLayout_SetSpacing(this.nativePtr, spacing);
	}
	
	public void SetRowSpacing(int32 row, double spacing)
	{
		CQt.QGraphicsGridLayout_SetRowSpacing(this.nativePtr, row, spacing);
	}
	
	public double RowSpacing(int32 row)
	{
		return CQt.QGraphicsGridLayout_RowSpacing(this.nativePtr, row);
	}
	
	public void SetColumnSpacing(int32 column, double spacing)
	{
		CQt.QGraphicsGridLayout_SetColumnSpacing(this.nativePtr, column, spacing);
	}
	
	public double ColumnSpacing(int32 column)
	{
		return CQt.QGraphicsGridLayout_ColumnSpacing(this.nativePtr, column);
	}
	
	public void SetRowStretchFactor(int32 row, int32 stretch)
	{
		CQt.QGraphicsGridLayout_SetRowStretchFactor(this.nativePtr, row, stretch);
	}
	
	public int32 RowStretchFactor(int32 row)
	{
		return CQt.QGraphicsGridLayout_RowStretchFactor(this.nativePtr, row);
	}
	
	public void SetColumnStretchFactor(int32 column, int32 stretch)
	{
		CQt.QGraphicsGridLayout_SetColumnStretchFactor(this.nativePtr, column, stretch);
	}
	
	public int32 ColumnStretchFactor(int32 column)
	{
		return CQt.QGraphicsGridLayout_ColumnStretchFactor(this.nativePtr, column);
	}
	
	public void SetRowMinimumHeight(int32 row, double height)
	{
		CQt.QGraphicsGridLayout_SetRowMinimumHeight(this.nativePtr, row, height);
	}
	
	public double RowMinimumHeight(int32 row)
	{
		return CQt.QGraphicsGridLayout_RowMinimumHeight(this.nativePtr, row);
	}
	
	public void SetRowPreferredHeight(int32 row, double height)
	{
		CQt.QGraphicsGridLayout_SetRowPreferredHeight(this.nativePtr, row, height);
	}
	
	public double RowPreferredHeight(int32 row)
	{
		return CQt.QGraphicsGridLayout_RowPreferredHeight(this.nativePtr, row);
	}
	
	public void SetRowMaximumHeight(int32 row, double height)
	{
		CQt.QGraphicsGridLayout_SetRowMaximumHeight(this.nativePtr, row, height);
	}
	
	public double RowMaximumHeight(int32 row)
	{
		return CQt.QGraphicsGridLayout_RowMaximumHeight(this.nativePtr, row);
	}
	
	public void SetRowFixedHeight(int32 row, double height)
	{
		CQt.QGraphicsGridLayout_SetRowFixedHeight(this.nativePtr, row, height);
	}
	
	public void SetColumnMinimumWidth(int32 column, double width)
	{
		CQt.QGraphicsGridLayout_SetColumnMinimumWidth(this.nativePtr, column, width);
	}
	
	public double ColumnMinimumWidth(int32 column)
	{
		return CQt.QGraphicsGridLayout_ColumnMinimumWidth(this.nativePtr, column);
	}
	
	public void SetColumnPreferredWidth(int32 column, double width)
	{
		CQt.QGraphicsGridLayout_SetColumnPreferredWidth(this.nativePtr, column, width);
	}
	
	public double ColumnPreferredWidth(int32 column)
	{
		return CQt.QGraphicsGridLayout_ColumnPreferredWidth(this.nativePtr, column);
	}
	
	public void SetColumnMaximumWidth(int32 column, double width)
	{
		CQt.QGraphicsGridLayout_SetColumnMaximumWidth(this.nativePtr, column, width);
	}
	
	public double ColumnMaximumWidth(int32 column)
	{
		return CQt.QGraphicsGridLayout_ColumnMaximumWidth(this.nativePtr, column);
	}
	
	public void SetColumnFixedWidth(int32 column, double width)
	{
		CQt.QGraphicsGridLayout_SetColumnFixedWidth(this.nativePtr, column, width);
	}
	
	public void SetRowAlignment(int32 row, int64 alignment)
	{
		CQt.QGraphicsGridLayout_SetRowAlignment(this.nativePtr, row, alignment);
	}
	
	public int64 RowAlignment(int32 row)
	{
		return CQt.QGraphicsGridLayout_RowAlignment(this.nativePtr, row);
	}
	
	public void SetColumnAlignment(int32 column, int64 alignment)
	{
		CQt.QGraphicsGridLayout_SetColumnAlignment(this.nativePtr, column, alignment);
	}
	
	public int64 ColumnAlignment(int32 column)
	{
		return CQt.QGraphicsGridLayout_ColumnAlignment(this.nativePtr, column);
	}
	
	public void SetAlignment(IQGraphicsLayoutItem item, int64 alignment)
	{
		CQt.QGraphicsGridLayout_SetAlignment(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, alignment);
	}
	
	public int64 Alignment(IQGraphicsLayoutItem item)
	{
		return CQt.QGraphicsGridLayout_Alignment(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public int32 RowCount()
	{
		return CQt.QGraphicsGridLayout_RowCount(this.nativePtr);
	}
	
	public int32 ColumnCount()
	{
		return CQt.QGraphicsGridLayout_ColumnCount(this.nativePtr);
	}
	
	public void* ItemAt(int32 row, int32 column)
	{
		return CQt.QGraphicsGridLayout_ItemAt(this.nativePtr, row, column);
	}
	
	public virtual int32 Count()
	{
		return CQt.QGraphicsGridLayout_Count(this.nativePtr);
	}
	
	public virtual void* ItemAtWithIndex(int32 index)
	{
		return CQt.QGraphicsGridLayout_ItemAtWithIndex(this.nativePtr, index);
	}
	
	public virtual void RemoveAt(int32 index)
	{
		CQt.QGraphicsGridLayout_RemoveAt(this.nativePtr, index);
	}
	
	public void RemoveItem(IQGraphicsLayoutItem item)
	{
		CQt.QGraphicsGridLayout_RemoveItem(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public virtual void Invalidate()
	{
		CQt.QGraphicsGridLayout_Invalidate(this.nativePtr);
	}
	
	public virtual void SetGeometry(IQRectF rect)
	{
		CQt.QGraphicsGridLayout_SetGeometry(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public virtual void SizeHint(int64 which, IQSizeF constraint)
	{
		CQt.QGraphicsGridLayout_SizeHint(this.nativePtr, which, (constraint == default) ? default : (void*)constraint.NativePtr);
	}
	
	public void AddItem6(IQGraphicsLayoutItem item, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 alignment)
	{
		CQt.QGraphicsGridLayout_AddItem6(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, row, column, rowSpan, columnSpan, alignment);
	}
	
	public void AddItem4(IQGraphicsLayoutItem item, int32 row, int32 column, int64 alignment)
	{
		CQt.QGraphicsGridLayout_AddItem4(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, row, column, alignment);
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
	
	public virtual void WidgetEvent(IQEvent e)
	{
		CQt.QGraphicsLayout_WidgetEvent(this.nativePtr, (e == null) ? null : (void*)e.NativePtr);
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
		CQt.QGraphicsLayoutItem_SetSizePolicy(this.nativePtr, (policy == default) ? default : (void*)policy.NativePtr);
	}
	
	public void SetSizePolicy2(int64 hPolicy, int64 vPolicy)
	{
		CQt.QGraphicsLayoutItem_SetSizePolicy2(this.nativePtr, hPolicy, vPolicy);
	}
	
	public void SizePolicy()
	{
		CQt.QGraphicsLayoutItem_SizePolicy(this.nativePtr);
	}
	
	public void SetMinimumSize(IQSizeF size)
	{
		CQt.QGraphicsLayoutItem_SetMinimumSize(this.nativePtr, (size == default) ? default : (void*)size.NativePtr);
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
		CQt.QGraphicsLayoutItem_SetPreferredSize(this.nativePtr, (size == default) ? default : (void*)size.NativePtr);
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
		CQt.QGraphicsLayoutItem_SetMaximumSize(this.nativePtr, (size == default) ? default : (void*)size.NativePtr);
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
	
	public void SetParentLayoutItem(IQGraphicsLayoutItem parent)
	{
		CQt.QGraphicsLayoutItem_SetParentLayoutItem(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
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
	
	public void EffectiveSizeHint2(int64 which, IQSizeF constraint)
	{
		CQt.QGraphicsLayoutItem_EffectiveSizeHint2(this.nativePtr, which, (constraint == default) ? default : (void*)constraint.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsGridLayout_new")]
	public static extern void* QGraphicsGridLayout_new();
	[LinkName("QGraphicsGridLayout_new2")]
	public static extern void* QGraphicsGridLayout_new2(void* parent);
	[LinkName("QGraphicsGridLayout_AddItem")]
	public static extern void QGraphicsGridLayout_AddItem(void* c_this, void* item, int32 row, int32 column, int32 rowSpan, int32 columnSpan);
	[LinkName("QGraphicsGridLayout_AddItem2")]
	public static extern void QGraphicsGridLayout_AddItem2(void* c_this, void* item, int32 row, int32 column);
	[LinkName("QGraphicsGridLayout_SetHorizontalSpacing")]
	public static extern void QGraphicsGridLayout_SetHorizontalSpacing(void* c_this, double spacing);
	[LinkName("QGraphicsGridLayout_HorizontalSpacing")]
	public static extern double QGraphicsGridLayout_HorizontalSpacing(void* c_this);
	[LinkName("QGraphicsGridLayout_SetVerticalSpacing")]
	public static extern void QGraphicsGridLayout_SetVerticalSpacing(void* c_this, double spacing);
	[LinkName("QGraphicsGridLayout_VerticalSpacing")]
	public static extern double QGraphicsGridLayout_VerticalSpacing(void* c_this);
	[LinkName("QGraphicsGridLayout_SetSpacing")]
	public static extern void QGraphicsGridLayout_SetSpacing(void* c_this, double spacing);
	[LinkName("QGraphicsGridLayout_SetRowSpacing")]
	public static extern void QGraphicsGridLayout_SetRowSpacing(void* c_this, int32 row, double spacing);
	[LinkName("QGraphicsGridLayout_RowSpacing")]
	public static extern double QGraphicsGridLayout_RowSpacing(void* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetColumnSpacing")]
	public static extern void QGraphicsGridLayout_SetColumnSpacing(void* c_this, int32 column, double spacing);
	[LinkName("QGraphicsGridLayout_ColumnSpacing")]
	public static extern double QGraphicsGridLayout_ColumnSpacing(void* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetRowStretchFactor")]
	public static extern void QGraphicsGridLayout_SetRowStretchFactor(void* c_this, int32 row, int32 stretch);
	[LinkName("QGraphicsGridLayout_RowStretchFactor")]
	public static extern int32 QGraphicsGridLayout_RowStretchFactor(void* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetColumnStretchFactor")]
	public static extern void QGraphicsGridLayout_SetColumnStretchFactor(void* c_this, int32 column, int32 stretch);
	[LinkName("QGraphicsGridLayout_ColumnStretchFactor")]
	public static extern int32 QGraphicsGridLayout_ColumnStretchFactor(void* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetRowMinimumHeight")]
	public static extern void QGraphicsGridLayout_SetRowMinimumHeight(void* c_this, int32 row, double height);
	[LinkName("QGraphicsGridLayout_RowMinimumHeight")]
	public static extern double QGraphicsGridLayout_RowMinimumHeight(void* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetRowPreferredHeight")]
	public static extern void QGraphicsGridLayout_SetRowPreferredHeight(void* c_this, int32 row, double height);
	[LinkName("QGraphicsGridLayout_RowPreferredHeight")]
	public static extern double QGraphicsGridLayout_RowPreferredHeight(void* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetRowMaximumHeight")]
	public static extern void QGraphicsGridLayout_SetRowMaximumHeight(void* c_this, int32 row, double height);
	[LinkName("QGraphicsGridLayout_RowMaximumHeight")]
	public static extern double QGraphicsGridLayout_RowMaximumHeight(void* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetRowFixedHeight")]
	public static extern void QGraphicsGridLayout_SetRowFixedHeight(void* c_this, int32 row, double height);
	[LinkName("QGraphicsGridLayout_SetColumnMinimumWidth")]
	public static extern void QGraphicsGridLayout_SetColumnMinimumWidth(void* c_this, int32 column, double width);
	[LinkName("QGraphicsGridLayout_ColumnMinimumWidth")]
	public static extern double QGraphicsGridLayout_ColumnMinimumWidth(void* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetColumnPreferredWidth")]
	public static extern void QGraphicsGridLayout_SetColumnPreferredWidth(void* c_this, int32 column, double width);
	[LinkName("QGraphicsGridLayout_ColumnPreferredWidth")]
	public static extern double QGraphicsGridLayout_ColumnPreferredWidth(void* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetColumnMaximumWidth")]
	public static extern void QGraphicsGridLayout_SetColumnMaximumWidth(void* c_this, int32 column, double width);
	[LinkName("QGraphicsGridLayout_ColumnMaximumWidth")]
	public static extern double QGraphicsGridLayout_ColumnMaximumWidth(void* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetColumnFixedWidth")]
	public static extern void QGraphicsGridLayout_SetColumnFixedWidth(void* c_this, int32 column, double width);
	[LinkName("QGraphicsGridLayout_SetRowAlignment")]
	public static extern void QGraphicsGridLayout_SetRowAlignment(void* c_this, int32 row, int64 alignment);
	[LinkName("QGraphicsGridLayout_RowAlignment")]
	public static extern int64 QGraphicsGridLayout_RowAlignment(void* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetColumnAlignment")]
	public static extern void QGraphicsGridLayout_SetColumnAlignment(void* c_this, int32 column, int64 alignment);
	[LinkName("QGraphicsGridLayout_ColumnAlignment")]
	public static extern int64 QGraphicsGridLayout_ColumnAlignment(void* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetAlignment")]
	public static extern void QGraphicsGridLayout_SetAlignment(void* c_this, void* item, int64 alignment);
	[LinkName("QGraphicsGridLayout_Alignment")]
	public static extern int64 QGraphicsGridLayout_Alignment(void* c_this, void* item);
	[LinkName("QGraphicsGridLayout_RowCount")]
	public static extern int32 QGraphicsGridLayout_RowCount(void* c_this);
	[LinkName("QGraphicsGridLayout_ColumnCount")]
	public static extern int32 QGraphicsGridLayout_ColumnCount(void* c_this);
	[LinkName("QGraphicsGridLayout_ItemAt")]
	public static extern void* QGraphicsGridLayout_ItemAt(void* c_this, int32 row, int32 column);
	[LinkName("QGraphicsGridLayout_Count")]
	public static extern int32 QGraphicsGridLayout_Count(void* c_this);
	[LinkName("QGraphicsGridLayout_ItemAtWithIndex")]
	public static extern void* QGraphicsGridLayout_ItemAtWithIndex(void* c_this, int32 index);
	[LinkName("QGraphicsGridLayout_RemoveAt")]
	public static extern void QGraphicsGridLayout_RemoveAt(void* c_this, int32 index);
	[LinkName("QGraphicsGridLayout_RemoveItem")]
	public static extern void QGraphicsGridLayout_RemoveItem(void* c_this, void* item);
	[LinkName("QGraphicsGridLayout_Invalidate")]
	public static extern void QGraphicsGridLayout_Invalidate(void* c_this);
	[LinkName("QGraphicsGridLayout_SetGeometry")]
	public static extern void QGraphicsGridLayout_SetGeometry(void* c_this, void* rect);
	[LinkName("QGraphicsGridLayout_SizeHint")]
	public static extern void QGraphicsGridLayout_SizeHint(void* c_this, int64 which, void* constraint);
	[LinkName("QGraphicsGridLayout_AddItem6")]
	public static extern void QGraphicsGridLayout_AddItem6(void* c_this, void* item, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 alignment);
	[LinkName("QGraphicsGridLayout_AddItem4")]
	public static extern void QGraphicsGridLayout_AddItem4(void* c_this, void* item, int32 row, int32 column, int64 alignment);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsGridLayout_Delete")]
	public static extern void QGraphicsGridLayout_Delete(void* self);
}