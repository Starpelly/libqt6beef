using System;
using System.Interop;
namespace Qt;

public interface IQGraphicsLayoutItem
{
	void* NativePtr { get; }
}
public struct QGraphicsLayoutItemPtr : IQGraphicsLayoutItem, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsLayoutItem_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsLayoutItem_Delete(this.nativePtr);
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
	
	public void SetGeometry(IQRectF rect)
	{
		CQt.QGraphicsLayoutItem_SetGeometry(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Geometry()
	{
		CQt.QGraphicsLayoutItem_Geometry(this.nativePtr);
	}
	
	public void GetContentsMargins(double* left, double* top, double* right, double* bottom)
	{
		CQt.QGraphicsLayoutItem_GetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void ContentsRect()
	{
		CQt.QGraphicsLayoutItem_ContentsRect(this.nativePtr);
	}
	
	public void EffectiveSizeHint(int64 which)
	{
		CQt.QGraphicsLayoutItem_EffectiveSizeHint(this.nativePtr, (int64)which);
	}
	
	public void UpdateGeometry()
	{
		CQt.QGraphicsLayoutItem_UpdateGeometry(this.nativePtr);
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
	
	public void SetGraphicsItem(IQGraphicsItem item)
	{
		CQt.QGraphicsLayoutItem_SetGraphicsItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void SetOwnedByLayout(bool ownedByLayout)
	{
		CQt.QGraphicsLayoutItem_SetOwnedByLayout(this.nativePtr, ownedByLayout);
	}
	
	public void SizeHint(int64 which, IQSizeF constraint)
	{
		CQt.QGraphicsLayoutItem_SizeHint(this.nativePtr, (int64)which, (constraint == default || constraint.NativePtr == default) ? default : constraint.NativePtr);
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
public class QGraphicsLayoutItem
{
	public QGraphicsLayoutItemPtr handle;
	
	public static implicit operator QGraphicsLayoutItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsLayoutItemPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
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
	
	public virtual void SetGeometry(IQRectF rect)
	{
		this.handle.SetGeometry(rect);
	}
	
	public void Geometry()
	{
		this.handle.Geometry();
	}
	
	public virtual void GetContentsMargins(double* left, double* top, double* right, double* bottom)
	{
		this.handle.GetContentsMargins(left, top, right, bottom);
	}
	
	public void ContentsRect()
	{
		this.handle.ContentsRect();
	}
	
	public void EffectiveSizeHint(int64 which)
	{
		this.handle.EffectiveSizeHint(which);
	}
	
	public virtual void UpdateGeometry()
	{
		this.handle.UpdateGeometry();
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
	
	public void SetGraphicsItem(IQGraphicsItem item)
	{
		this.handle.SetGraphicsItem(item);
	}
	
	public void SetOwnedByLayout(bool ownedByLayout)
	{
		this.handle.SetOwnedByLayout(ownedByLayout);
	}
	
	public virtual void SizeHint(int64 which, IQSizeF constraint)
	{
		this.handle.SizeHint(which, constraint);
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
	[LinkName("QGraphicsLayoutItem_new")]
	public static extern void* QGraphicsLayoutItem_new();
	[LinkName("QGraphicsLayoutItem_new2")]
	public static extern void* QGraphicsLayoutItem_new2(void* parent);
	[LinkName("QGraphicsLayoutItem_new3")]
	public static extern void* QGraphicsLayoutItem_new3(void* parent, bool isLayout);
	[LinkName("QGraphicsLayoutItem_SetSizePolicy")]
	public static extern void QGraphicsLayoutItem_SetSizePolicy(void* c_this, void* policy);
	[LinkName("QGraphicsLayoutItem_SetSizePolicy2")]
	public static extern void QGraphicsLayoutItem_SetSizePolicy2(void* c_this, int64 hPolicy, int64 vPolicy);
	[LinkName("QGraphicsLayoutItem_SizePolicy")]
	public static extern void QGraphicsLayoutItem_SizePolicy(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetMinimumSize")]
	public static extern void QGraphicsLayoutItem_SetMinimumSize(void* c_this, void* size);
	[LinkName("QGraphicsLayoutItem_SetMinimumSize2")]
	public static extern void QGraphicsLayoutItem_SetMinimumSize2(void* c_this, double w, double h);
	[LinkName("QGraphicsLayoutItem_MinimumSize")]
	public static extern void QGraphicsLayoutItem_MinimumSize(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetMinimumWidth")]
	public static extern void QGraphicsLayoutItem_SetMinimumWidth(void* c_this, double width);
	[LinkName("QGraphicsLayoutItem_MinimumWidth")]
	public static extern double QGraphicsLayoutItem_MinimumWidth(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetMinimumHeight")]
	public static extern void QGraphicsLayoutItem_SetMinimumHeight(void* c_this, double height);
	[LinkName("QGraphicsLayoutItem_MinimumHeight")]
	public static extern double QGraphicsLayoutItem_MinimumHeight(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetPreferredSize")]
	public static extern void QGraphicsLayoutItem_SetPreferredSize(void* c_this, void* size);
	[LinkName("QGraphicsLayoutItem_SetPreferredSize2")]
	public static extern void QGraphicsLayoutItem_SetPreferredSize2(void* c_this, double w, double h);
	[LinkName("QGraphicsLayoutItem_PreferredSize")]
	public static extern void QGraphicsLayoutItem_PreferredSize(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetPreferredWidth")]
	public static extern void QGraphicsLayoutItem_SetPreferredWidth(void* c_this, double width);
	[LinkName("QGraphicsLayoutItem_PreferredWidth")]
	public static extern double QGraphicsLayoutItem_PreferredWidth(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetPreferredHeight")]
	public static extern void QGraphicsLayoutItem_SetPreferredHeight(void* c_this, double height);
	[LinkName("QGraphicsLayoutItem_PreferredHeight")]
	public static extern double QGraphicsLayoutItem_PreferredHeight(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetMaximumSize")]
	public static extern void QGraphicsLayoutItem_SetMaximumSize(void* c_this, void* size);
	[LinkName("QGraphicsLayoutItem_SetMaximumSize2")]
	public static extern void QGraphicsLayoutItem_SetMaximumSize2(void* c_this, double w, double h);
	[LinkName("QGraphicsLayoutItem_MaximumSize")]
	public static extern void QGraphicsLayoutItem_MaximumSize(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetMaximumWidth")]
	public static extern void QGraphicsLayoutItem_SetMaximumWidth(void* c_this, double width);
	[LinkName("QGraphicsLayoutItem_MaximumWidth")]
	public static extern double QGraphicsLayoutItem_MaximumWidth(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetMaximumHeight")]
	public static extern void QGraphicsLayoutItem_SetMaximumHeight(void* c_this, double height);
	[LinkName("QGraphicsLayoutItem_MaximumHeight")]
	public static extern double QGraphicsLayoutItem_MaximumHeight(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetGeometry")]
	public static extern void QGraphicsLayoutItem_SetGeometry(void* c_this, void* rect);
	[LinkName("QGraphicsLayoutItem_Geometry")]
	public static extern void QGraphicsLayoutItem_Geometry(void* c_this);
	[LinkName("QGraphicsLayoutItem_GetContentsMargins")]
	public static extern void QGraphicsLayoutItem_GetContentsMargins(void* c_this, double* left, double* top, double* right, double* bottom);
	[LinkName("QGraphicsLayoutItem_ContentsRect")]
	public static extern void QGraphicsLayoutItem_ContentsRect(void* c_this);
	[LinkName("QGraphicsLayoutItem_EffectiveSizeHint")]
	public static extern void QGraphicsLayoutItem_EffectiveSizeHint(void* c_this, int64 which);
	[LinkName("QGraphicsLayoutItem_UpdateGeometry")]
	public static extern void QGraphicsLayoutItem_UpdateGeometry(void* c_this);
	[LinkName("QGraphicsLayoutItem_IsEmpty")]
	public static extern bool QGraphicsLayoutItem_IsEmpty(void* c_this);
	[LinkName("QGraphicsLayoutItem_ParentLayoutItem")]
	public static extern void* QGraphicsLayoutItem_ParentLayoutItem(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetParentLayoutItem")]
	public static extern void QGraphicsLayoutItem_SetParentLayoutItem(void* c_this, void* parent);
	[LinkName("QGraphicsLayoutItem_IsLayout")]
	public static extern bool QGraphicsLayoutItem_IsLayout(void* c_this);
	[LinkName("QGraphicsLayoutItem_GraphicsItem")]
	public static extern void* QGraphicsLayoutItem_GraphicsItem(void* c_this);
	[LinkName("QGraphicsLayoutItem_OwnedByLayout")]
	public static extern bool QGraphicsLayoutItem_OwnedByLayout(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetGraphicsItem")]
	public static extern void QGraphicsLayoutItem_SetGraphicsItem(void* c_this, void* item);
	[LinkName("QGraphicsLayoutItem_SetOwnedByLayout")]
	public static extern void QGraphicsLayoutItem_SetOwnedByLayout(void* c_this, bool ownedByLayout);
	[LinkName("QGraphicsLayoutItem_SizeHint")]
	public static extern void QGraphicsLayoutItem_SizeHint(void* c_this, int64 which, void* constraint);
	[LinkName("QGraphicsLayoutItem_SetSizePolicy3")]
	public static extern void QGraphicsLayoutItem_SetSizePolicy3(void* c_this, int64 hPolicy, int64 vPolicy, int64 controlType);
	[LinkName("QGraphicsLayoutItem_EffectiveSizeHint2")]
	public static extern void QGraphicsLayoutItem_EffectiveSizeHint2(void* c_this, int64 which, void* constraint);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsLayoutItem_Delete")]
	public static extern void QGraphicsLayoutItem_Delete(void* self);
}