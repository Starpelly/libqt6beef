using System;
using System.Interop;
namespace Qt;

public interface IQGraphicsGridLayout
{
	void* NativePtr { get; }
}
public struct QGraphicsGridLayoutPtr : IQGraphicsGridLayout, IDisposable, IQGraphicsLayout
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsGridLayout_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsGridLayout_Delete(this.nativePtr);
	}
	
	public void AddItem(IQGraphicsLayoutItem item, int32 row, int32 column, int32 rowSpan, int32 columnSpan)
	{
		CQt.QGraphicsGridLayout_AddItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, row, column, rowSpan, columnSpan);
	}
	
	public void AddItem2(IQGraphicsLayoutItem item, int32 row, int32 column)
	{
		CQt.QGraphicsGridLayout_AddItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, row, column);
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
		CQt.QGraphicsGridLayout_SetAlignment(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, alignment);
	}
	
	public int64 Alignment(IQGraphicsLayoutItem item)
	{
		return CQt.QGraphicsGridLayout_Alignment(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
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
	
	public int32 Count()
	{
		return CQt.QGraphicsGridLayout_Count(this.nativePtr);
	}
	
	public void* ItemAtWithIndex(int32 index)
	{
		return CQt.QGraphicsGridLayout_ItemAtWithIndex(this.nativePtr, index);
	}
	
	public void RemoveAt(int32 index)
	{
		CQt.QGraphicsGridLayout_RemoveAt(this.nativePtr, index);
	}
	
	public void RemoveItem(IQGraphicsLayoutItem item)
	{
		CQt.QGraphicsGridLayout_RemoveItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void Invalidate()
	{
		CQt.QGraphicsGridLayout_Invalidate(this.nativePtr);
	}
	
	public void SetGeometry(IQRectF rect)
	{
		CQt.QGraphicsGridLayout_SetGeometry(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void SizeHint(int64 which, IQSizeF constraint)
	{
		CQt.QGraphicsGridLayout_SizeHint(this.nativePtr, (int64)which, (constraint == default || constraint.NativePtr == default) ? default : constraint.NativePtr);
	}
	
	public void AddItem6(IQGraphicsLayoutItem item, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 alignment)
	{
		CQt.QGraphicsGridLayout_AddItem6(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, row, column, rowSpan, columnSpan, alignment);
	}
	
	public void AddItem4(IQGraphicsLayoutItem item, int32 row, int32 column, int64 alignment)
	{
		CQt.QGraphicsGridLayout_AddItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, row, column, alignment);
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
public class QGraphicsGridLayout
{
	public QGraphicsGridLayoutPtr handle;
	
	public static implicit operator QGraphicsGridLayoutPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsGridLayoutPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void AddItem(IQGraphicsLayoutItem item, int32 row, int32 column, int32 rowSpan, int32 columnSpan)
	{
		this.handle.AddItem(item, row, column, rowSpan, columnSpan);
	}
	
	public void AddItem2(IQGraphicsLayoutItem item, int32 row, int32 column)
	{
		this.handle.AddItem2(item, row, column);
	}
	
	public void SetHorizontalSpacing(double spacing)
	{
		this.handle.SetHorizontalSpacing(spacing);
	}
	
	public double HorizontalSpacing()
	{
		return this.handle.HorizontalSpacing();
	}
	
	public void SetVerticalSpacing(double spacing)
	{
		this.handle.SetVerticalSpacing(spacing);
	}
	
	public double VerticalSpacing()
	{
		return this.handle.VerticalSpacing();
	}
	
	public void SetSpacing(double spacing)
	{
		this.handle.SetSpacing(spacing);
	}
	
	public void SetRowSpacing(int32 row, double spacing)
	{
		this.handle.SetRowSpacing(row, spacing);
	}
	
	public double RowSpacing(int32 row)
	{
		return this.handle.RowSpacing(row);
	}
	
	public void SetColumnSpacing(int32 column, double spacing)
	{
		this.handle.SetColumnSpacing(column, spacing);
	}
	
	public double ColumnSpacing(int32 column)
	{
		return this.handle.ColumnSpacing(column);
	}
	
	public void SetRowStretchFactor(int32 row, int32 stretch)
	{
		this.handle.SetRowStretchFactor(row, stretch);
	}
	
	public int32 RowStretchFactor(int32 row)
	{
		return this.handle.RowStretchFactor(row);
	}
	
	public void SetColumnStretchFactor(int32 column, int32 stretch)
	{
		this.handle.SetColumnStretchFactor(column, stretch);
	}
	
	public int32 ColumnStretchFactor(int32 column)
	{
		return this.handle.ColumnStretchFactor(column);
	}
	
	public void SetRowMinimumHeight(int32 row, double height)
	{
		this.handle.SetRowMinimumHeight(row, height);
	}
	
	public double RowMinimumHeight(int32 row)
	{
		return this.handle.RowMinimumHeight(row);
	}
	
	public void SetRowPreferredHeight(int32 row, double height)
	{
		this.handle.SetRowPreferredHeight(row, height);
	}
	
	public double RowPreferredHeight(int32 row)
	{
		return this.handle.RowPreferredHeight(row);
	}
	
	public void SetRowMaximumHeight(int32 row, double height)
	{
		this.handle.SetRowMaximumHeight(row, height);
	}
	
	public double RowMaximumHeight(int32 row)
	{
		return this.handle.RowMaximumHeight(row);
	}
	
	public void SetRowFixedHeight(int32 row, double height)
	{
		this.handle.SetRowFixedHeight(row, height);
	}
	
	public void SetColumnMinimumWidth(int32 column, double width)
	{
		this.handle.SetColumnMinimumWidth(column, width);
	}
	
	public double ColumnMinimumWidth(int32 column)
	{
		return this.handle.ColumnMinimumWidth(column);
	}
	
	public void SetColumnPreferredWidth(int32 column, double width)
	{
		this.handle.SetColumnPreferredWidth(column, width);
	}
	
	public double ColumnPreferredWidth(int32 column)
	{
		return this.handle.ColumnPreferredWidth(column);
	}
	
	public void SetColumnMaximumWidth(int32 column, double width)
	{
		this.handle.SetColumnMaximumWidth(column, width);
	}
	
	public double ColumnMaximumWidth(int32 column)
	{
		return this.handle.ColumnMaximumWidth(column);
	}
	
	public void SetColumnFixedWidth(int32 column, double width)
	{
		this.handle.SetColumnFixedWidth(column, width);
	}
	
	public void SetRowAlignment(int32 row, int64 alignment)
	{
		this.handle.SetRowAlignment(row, alignment);
	}
	
	public int64 RowAlignment(int32 row)
	{
		return this.handle.RowAlignment(row);
	}
	
	public void SetColumnAlignment(int32 column, int64 alignment)
	{
		this.handle.SetColumnAlignment(column, alignment);
	}
	
	public int64 ColumnAlignment(int32 column)
	{
		return this.handle.ColumnAlignment(column);
	}
	
	public void SetAlignment(IQGraphicsLayoutItem item, int64 alignment)
	{
		this.handle.SetAlignment(item, alignment);
	}
	
	public int64 Alignment(IQGraphicsLayoutItem item)
	{
		return this.handle.Alignment(item);
	}
	
	public int32 RowCount()
	{
		return this.handle.RowCount();
	}
	
	public int32 ColumnCount()
	{
		return this.handle.ColumnCount();
	}
	
	public void* ItemAt(int32 row, int32 column)
	{
		return this.handle.ItemAt(row, column);
	}
	
	public virtual int32 Count()
	{
		return this.handle.Count();
	}
	
	public virtual void* ItemAtWithIndex(int32 index)
	{
		return this.handle.ItemAtWithIndex(index);
	}
	
	public virtual void RemoveAt(int32 index)
	{
		this.handle.RemoveAt(index);
	}
	
	public void RemoveItem(IQGraphicsLayoutItem item)
	{
		this.handle.RemoveItem(item);
	}
	
	public virtual void Invalidate()
	{
		this.handle.Invalidate();
	}
	
	public virtual void SetGeometry(IQRectF rect)
	{
		this.handle.SetGeometry(rect);
	}
	
	public virtual void SizeHint(int64 which, IQSizeF constraint)
	{
		this.handle.SizeHint(which, constraint);
	}
	
	public void AddItem6(IQGraphicsLayoutItem item, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 alignment)
	{
		this.handle.AddItem6(item, row, column, rowSpan, columnSpan, alignment);
	}
	
	public void AddItem4(IQGraphicsLayoutItem item, int32 row, int32 column, int64 alignment)
	{
		this.handle.AddItem4(item, row, column, alignment);
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
		QGraphicsGridLayoutPtr.SetInstantInvalidatePropagation(enable);
	}
	
	public static bool InstantInvalidatePropagation()
	{
		return QGraphicsGridLayoutPtr.InstantInvalidatePropagation();
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