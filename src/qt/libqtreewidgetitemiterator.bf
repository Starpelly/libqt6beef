using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTreeWidgetItemIterator__IteratorFlag
{
	All = 0,
	Hidden = 1,
	NotHidden = 2,
	Selected = 4,
	Unselected = 8,
	Selectable = 16,
	NotSelectable = 32,
	DragEnabled = 64,
	DragDisabled = 128,
	DropEnabled = 256,
	DropDisabled = 512,
	HasChildren = 1024,
	NoChildren = 2048,
	Checked = 4096,
	NotChecked = 8192,
	Enabled = 16384,
	Disabled = 32768,
	Editable = 65536,
	NotEditable = 131072,
	UserFlag = 16777216,
}
public interface IQTreeWidgetItemIterator
{
	void* NativePtr { get; }
}
public struct QTreeWidgetItemIteratorPtr : IQTreeWidgetItemIterator, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQTreeWidgetItemIterator it)
	{
		return .(CQt.QTreeWidgetItemIterator_new((it == default || it.NativePtr == default) ? default : it.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QTreeWidgetItemIterator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQTreeWidgetItemIterator it)
	{
		CQt.QTreeWidgetItemIterator_OperatorAssign(this.nativePtr, (it == default || it.NativePtr == default) ? default : it.NativePtr);
	}
	
	public void* OperatorPlusPlus()
	{
		return CQt.QTreeWidgetItemIterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public void OperatorPlusPlusWithInt(int32 param1)
	{
		CQt.QTreeWidgetItemIterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorPlusAssign(int32 n)
	{
		return CQt.QTreeWidgetItemIterator_OperatorPlusAssign(this.nativePtr, n);
	}
	
	public void* OperatorMinusMinus()
	{
		return CQt.QTreeWidgetItemIterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public void OperatorMinusMinusWithInt(int32 param1)
	{
		CQt.QTreeWidgetItemIterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorMinusAssign(int32 n)
	{
		return CQt.QTreeWidgetItemIterator_OperatorMinusAssign(this.nativePtr, n);
	}
	
	public void* OperatorMultiply()
	{
		return CQt.QTreeWidgetItemIterator_OperatorMultiply(this.nativePtr);
	}
	
}
public class QTreeWidgetItemIterator
{
	public QTreeWidgetItemIteratorPtr handle;
	
	public static implicit operator QTreeWidgetItemIteratorPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQTreeWidgetItemIterator it)
	{
		this.handle = QTreeWidgetItemIteratorPtr.New(it);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQTreeWidgetItemIterator it)
	{
		this.handle.OperatorAssign(it);
	}
	
	public void* OperatorPlusPlus()
	{
		return this.handle.OperatorPlusPlus();
	}
	
	public void OperatorPlusPlusWithInt(int32 param1)
	{
		this.handle.OperatorPlusPlusWithInt(param1);
	}
	
	public void* OperatorPlusAssign(int32 n)
	{
		return this.handle.OperatorPlusAssign(n);
	}
	
	public void* OperatorMinusMinus()
	{
		return this.handle.OperatorMinusMinus();
	}
	
	public void OperatorMinusMinusWithInt(int32 param1)
	{
		this.handle.OperatorMinusMinusWithInt(param1);
	}
	
	public void* OperatorMinusAssign(int32 n)
	{
		return this.handle.OperatorMinusAssign(n);
	}
	
	public void* OperatorMultiply()
	{
		return this.handle.OperatorMultiply();
	}
	
}
extension CQt
{
	[LinkName("QTreeWidgetItemIterator_new")]
	public static extern void* QTreeWidgetItemIterator_new(void* it);
	[LinkName("QTreeWidgetItemIterator_new2")]
	public static extern void* QTreeWidgetItemIterator_new2(void* widget);
	[LinkName("QTreeWidgetItemIterator_new3")]
	public static extern void* QTreeWidgetItemIterator_new3(void* item);
	[LinkName("QTreeWidgetItemIterator_new4")]
	public static extern void* QTreeWidgetItemIterator_new4(void* widget, int64 flags);
	[LinkName("QTreeWidgetItemIterator_new5")]
	public static extern void* QTreeWidgetItemIterator_new5(void* item, int64 flags);
	[LinkName("QTreeWidgetItemIterator_OperatorAssign")]
	public static extern void QTreeWidgetItemIterator_OperatorAssign(void* c_this, void* it);
	[LinkName("QTreeWidgetItemIterator_OperatorPlusPlus")]
	public static extern void* QTreeWidgetItemIterator_OperatorPlusPlus(void* c_this);
	[LinkName("QTreeWidgetItemIterator_OperatorPlusPlusWithInt")]
	public static extern void QTreeWidgetItemIterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QTreeWidgetItemIterator_OperatorPlusAssign")]
	public static extern void* QTreeWidgetItemIterator_OperatorPlusAssign(void* c_this, int32 n);
	[LinkName("QTreeWidgetItemIterator_OperatorMinusMinus")]
	public static extern void* QTreeWidgetItemIterator_OperatorMinusMinus(void* c_this);
	[LinkName("QTreeWidgetItemIterator_OperatorMinusMinusWithInt")]
	public static extern void QTreeWidgetItemIterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	[LinkName("QTreeWidgetItemIterator_OperatorMinusAssign")]
	public static extern void* QTreeWidgetItemIterator_OperatorMinusAssign(void* c_this, int32 n);
	[LinkName("QTreeWidgetItemIterator_OperatorMultiply")]
	public static extern void* QTreeWidgetItemIterator_OperatorMultiply(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTreeWidgetItemIterator_Delete")]
	public static extern void QTreeWidgetItemIterator_Delete(void* self);
}