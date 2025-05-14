using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QtMetaContainerPrivate__IteratorCapability
{
	InputCapability = 1,
	ForwardCapability = 2,
	BiDirectionalCapability = 4,
	RandomAccessCapability = 8,
}
[AllowDuplicates]
public enum QtMetaContainerPrivate__AddRemoveCapability
{
	CanAddAtBegin = 1,
	CanRemoveAtBegin = 2,
	CanAddAtEnd = 4,
	CanRemoveAtEnd = 8,
}
[AllowDuplicates]
public enum QtMetaContainerPrivate__QMetaContainerInterface__Position
{
	AtBegin = 0,
	AtEnd = 1,
	Unspecified = 2,
}
public interface IQMetaContainer
{
	void* NativePtr { get; }
}
public struct QMetaContainerPtr : IQMetaContainer, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQMetaContainer other)
	{
		return .(CQt.QMetaContainer_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QMetaContainer_Delete(this.nativePtr);
	}
	
	public bool HasInputIterator()
	{
		return CQt.QMetaContainer_HasInputIterator(this.nativePtr);
	}
	
	public bool HasForwardIterator()
	{
		return CQt.QMetaContainer_HasForwardIterator(this.nativePtr);
	}
	
	public bool HasBidirectionalIterator()
	{
		return CQt.QMetaContainer_HasBidirectionalIterator(this.nativePtr);
	}
	
	public bool HasRandomAccessIterator()
	{
		return CQt.QMetaContainer_HasRandomAccessIterator(this.nativePtr);
	}
	
	public bool HasSize()
	{
		return CQt.QMetaContainer_HasSize(this.nativePtr);
	}
	
	public int32 Size(void* container)
	{
		return CQt.QMetaContainer_Size(this.nativePtr, container);
	}
	
	public bool CanClear()
	{
		return CQt.QMetaContainer_CanClear(this.nativePtr);
	}
	
	public void Clear(void* container)
	{
		CQt.QMetaContainer_Clear(this.nativePtr, container);
	}
	
	public bool HasIterator()
	{
		return CQt.QMetaContainer_HasIterator(this.nativePtr);
	}
	
	public void* Begin(void* container)
	{
		return CQt.QMetaContainer_Begin(this.nativePtr, container);
	}
	
	public void* End(void* container)
	{
		return CQt.QMetaContainer_End(this.nativePtr, container);
	}
	
	public void DestroyIterator(void* iterator)
	{
		CQt.QMetaContainer_DestroyIterator(this.nativePtr, iterator);
	}
	
	public bool CompareIterator(void* i, void* j)
	{
		return CQt.QMetaContainer_CompareIterator(this.nativePtr, i, j);
	}
	
	public void CopyIterator(void* target, void* source)
	{
		CQt.QMetaContainer_CopyIterator(this.nativePtr, target, source);
	}
	
	public void AdvanceIterator(void* iterator, int32 step)
	{
		CQt.QMetaContainer_AdvanceIterator(this.nativePtr, iterator, step);
	}
	
	public int32 DiffIterator(void* i, void* j)
	{
		return CQt.QMetaContainer_DiffIterator(this.nativePtr, i, j);
	}
	
	public bool HasConstIterator()
	{
		return CQt.QMetaContainer_HasConstIterator(this.nativePtr);
	}
	
	public void* ConstBegin(void* container)
	{
		return CQt.QMetaContainer_ConstBegin(this.nativePtr, container);
	}
	
	public void* ConstEnd(void* container)
	{
		return CQt.QMetaContainer_ConstEnd(this.nativePtr, container);
	}
	
	public void DestroyConstIterator(void* iterator)
	{
		CQt.QMetaContainer_DestroyConstIterator(this.nativePtr, iterator);
	}
	
	public bool CompareConstIterator(void* i, void* j)
	{
		return CQt.QMetaContainer_CompareConstIterator(this.nativePtr, i, j);
	}
	
	public void CopyConstIterator(void* target, void* source)
	{
		CQt.QMetaContainer_CopyConstIterator(this.nativePtr, target, source);
	}
	
	public void AdvanceConstIterator(void* iterator, int32 step)
	{
		CQt.QMetaContainer_AdvanceConstIterator(this.nativePtr, iterator, step);
	}
	
	public int32 DiffConstIterator(void* i, void* j)
	{
		return CQt.QMetaContainer_DiffConstIterator(this.nativePtr, i, j);
	}
	
}
public class QMetaContainer
{
	public QMetaContainerPtr handle;
	
	public static implicit operator QMetaContainerPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQMetaContainer other)
	{
		this.handle = QMetaContainerPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool HasInputIterator()
	{
		return this.handle.HasInputIterator();
	}
	
	public bool HasForwardIterator()
	{
		return this.handle.HasForwardIterator();
	}
	
	public bool HasBidirectionalIterator()
	{
		return this.handle.HasBidirectionalIterator();
	}
	
	public bool HasRandomAccessIterator()
	{
		return this.handle.HasRandomAccessIterator();
	}
	
	public bool HasSize()
	{
		return this.handle.HasSize();
	}
	
	public int32 Size(void* container)
	{
		return this.handle.Size(container);
	}
	
	public bool CanClear()
	{
		return this.handle.CanClear();
	}
	
	public void Clear(void* container)
	{
		this.handle.Clear(container);
	}
	
	public bool HasIterator()
	{
		return this.handle.HasIterator();
	}
	
	public void* Begin(void* container)
	{
		return this.handle.Begin(container);
	}
	
	public void* End(void* container)
	{
		return this.handle.End(container);
	}
	
	public void DestroyIterator(void* iterator)
	{
		this.handle.DestroyIterator(iterator);
	}
	
	public bool CompareIterator(void* i, void* j)
	{
		return this.handle.CompareIterator(i, j);
	}
	
	public void CopyIterator(void* target, void* source)
	{
		this.handle.CopyIterator(target, source);
	}
	
	public void AdvanceIterator(void* iterator, int32 step)
	{
		this.handle.AdvanceIterator(iterator, step);
	}
	
	public int32 DiffIterator(void* i, void* j)
	{
		return this.handle.DiffIterator(i, j);
	}
	
	public bool HasConstIterator()
	{
		return this.handle.HasConstIterator();
	}
	
	public void* ConstBegin(void* container)
	{
		return this.handle.ConstBegin(container);
	}
	
	public void* ConstEnd(void* container)
	{
		return this.handle.ConstEnd(container);
	}
	
	public void DestroyConstIterator(void* iterator)
	{
		this.handle.DestroyConstIterator(iterator);
	}
	
	public bool CompareConstIterator(void* i, void* j)
	{
		return this.handle.CompareConstIterator(i, j);
	}
	
	public void CopyConstIterator(void* target, void* source)
	{
		this.handle.CopyConstIterator(target, source);
	}
	
	public void AdvanceConstIterator(void* iterator, int32 step)
	{
		this.handle.AdvanceConstIterator(iterator, step);
	}
	
	public int32 DiffConstIterator(void* i, void* j)
	{
		return this.handle.DiffConstIterator(i, j);
	}
	
}
extension CQt
{
	[LinkName("QMetaContainer_new")]
	public static extern void* QMetaContainer_new(void* other);
	[LinkName("QMetaContainer_new2")]
	public static extern void* QMetaContainer_new2(void* other);
	[LinkName("QMetaContainer_new3")]
	public static extern void* QMetaContainer_new3();
	[LinkName("QMetaContainer_new4")]
	public static extern void* QMetaContainer_new4(void* param1);
	[LinkName("QMetaContainer_HasInputIterator")]
	public static extern bool QMetaContainer_HasInputIterator(void* c_this);
	[LinkName("QMetaContainer_HasForwardIterator")]
	public static extern bool QMetaContainer_HasForwardIterator(void* c_this);
	[LinkName("QMetaContainer_HasBidirectionalIterator")]
	public static extern bool QMetaContainer_HasBidirectionalIterator(void* c_this);
	[LinkName("QMetaContainer_HasRandomAccessIterator")]
	public static extern bool QMetaContainer_HasRandomAccessIterator(void* c_this);
	[LinkName("QMetaContainer_HasSize")]
	public static extern bool QMetaContainer_HasSize(void* c_this);
	[LinkName("QMetaContainer_Size")]
	public static extern int32 QMetaContainer_Size(void* c_this, void* container);
	[LinkName("QMetaContainer_CanClear")]
	public static extern bool QMetaContainer_CanClear(void* c_this);
	[LinkName("QMetaContainer_Clear")]
	public static extern void QMetaContainer_Clear(void* c_this, void* container);
	[LinkName("QMetaContainer_HasIterator")]
	public static extern bool QMetaContainer_HasIterator(void* c_this);
	[LinkName("QMetaContainer_Begin")]
	public static extern void* QMetaContainer_Begin(void* c_this, void* container);
	[LinkName("QMetaContainer_End")]
	public static extern void* QMetaContainer_End(void* c_this, void* container);
	[LinkName("QMetaContainer_DestroyIterator")]
	public static extern void QMetaContainer_DestroyIterator(void* c_this, void* iterator);
	[LinkName("QMetaContainer_CompareIterator")]
	public static extern bool QMetaContainer_CompareIterator(void* c_this, void* i, void* j);
	[LinkName("QMetaContainer_CopyIterator")]
	public static extern void QMetaContainer_CopyIterator(void* c_this, void* target, void* source);
	[LinkName("QMetaContainer_AdvanceIterator")]
	public static extern void QMetaContainer_AdvanceIterator(void* c_this, void* iterator, int32 step);
	[LinkName("QMetaContainer_DiffIterator")]
	public static extern int32 QMetaContainer_DiffIterator(void* c_this, void* i, void* j);
	[LinkName("QMetaContainer_HasConstIterator")]
	public static extern bool QMetaContainer_HasConstIterator(void* c_this);
	[LinkName("QMetaContainer_ConstBegin")]
	public static extern void* QMetaContainer_ConstBegin(void* c_this, void* container);
	[LinkName("QMetaContainer_ConstEnd")]
	public static extern void* QMetaContainer_ConstEnd(void* c_this, void* container);
	[LinkName("QMetaContainer_DestroyConstIterator")]
	public static extern void QMetaContainer_DestroyConstIterator(void* c_this, void* iterator);
	[LinkName("QMetaContainer_CompareConstIterator")]
	public static extern bool QMetaContainer_CompareConstIterator(void* c_this, void* i, void* j);
	[LinkName("QMetaContainer_CopyConstIterator")]
	public static extern void QMetaContainer_CopyConstIterator(void* c_this, void* target, void* source);
	[LinkName("QMetaContainer_AdvanceConstIterator")]
	public static extern void QMetaContainer_AdvanceConstIterator(void* c_this, void* iterator, int32 step);
	[LinkName("QMetaContainer_DiffConstIterator")]
	public static extern int32 QMetaContainer_DiffConstIterator(void* c_this, void* i, void* j);
	/// Delete this object from C++ memory
	[LinkName("QMetaContainer_Delete")]
	public static extern void QMetaContainer_Delete(void* self);
}
public interface IQMetaSequence
{
	void* NativePtr { get; }
}
public struct QMetaSequencePtr : IQMetaSequence, IDisposable, IQMetaContainer
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQMetaSequence other)
	{
		return .(CQt.QMetaSequence_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QMetaSequence_Delete(this.nativePtr);
	}
	
	public void ValueMetaType()
	{
		CQt.QMetaSequence_ValueMetaType(this.nativePtr);
	}
	
	public bool IsSortable()
	{
		return CQt.QMetaSequence_IsSortable(this.nativePtr);
	}
	
	public bool CanAddValueAtBegin()
	{
		return CQt.QMetaSequence_CanAddValueAtBegin(this.nativePtr);
	}
	
	public void AddValueAtBegin(void* container, void* value)
	{
		CQt.QMetaSequence_AddValueAtBegin(this.nativePtr, container, value);
	}
	
	public bool CanAddValueAtEnd()
	{
		return CQt.QMetaSequence_CanAddValueAtEnd(this.nativePtr);
	}
	
	public void AddValueAtEnd(void* container, void* value)
	{
		CQt.QMetaSequence_AddValueAtEnd(this.nativePtr, container, value);
	}
	
	public bool CanRemoveValueAtBegin()
	{
		return CQt.QMetaSequence_CanRemoveValueAtBegin(this.nativePtr);
	}
	
	public void RemoveValueAtBegin(void* container)
	{
		CQt.QMetaSequence_RemoveValueAtBegin(this.nativePtr, container);
	}
	
	public bool CanRemoveValueAtEnd()
	{
		return CQt.QMetaSequence_CanRemoveValueAtEnd(this.nativePtr);
	}
	
	public void RemoveValueAtEnd(void* container)
	{
		CQt.QMetaSequence_RemoveValueAtEnd(this.nativePtr, container);
	}
	
	public bool CanGetValueAtIndex()
	{
		return CQt.QMetaSequence_CanGetValueAtIndex(this.nativePtr);
	}
	
	public void ValueAtIndex(void* container, int32 index, void* result)
	{
		CQt.QMetaSequence_ValueAtIndex(this.nativePtr, container, index, result);
	}
	
	public bool CanSetValueAtIndex()
	{
		return CQt.QMetaSequence_CanSetValueAtIndex(this.nativePtr);
	}
	
	public void SetValueAtIndex(void* container, int32 index, void* value)
	{
		CQt.QMetaSequence_SetValueAtIndex(this.nativePtr, container, index, value);
	}
	
	public bool CanAddValue()
	{
		return CQt.QMetaSequence_CanAddValue(this.nativePtr);
	}
	
	public void AddValue(void* container, void* value)
	{
		CQt.QMetaSequence_AddValue(this.nativePtr, container, value);
	}
	
	public bool CanRemoveValue()
	{
		return CQt.QMetaSequence_CanRemoveValue(this.nativePtr);
	}
	
	public void RemoveValue(void* container)
	{
		CQt.QMetaSequence_RemoveValue(this.nativePtr, container);
	}
	
	public bool CanGetValueAtIterator()
	{
		return CQt.QMetaSequence_CanGetValueAtIterator(this.nativePtr);
	}
	
	public void ValueAtIterator(void* iterator, void* result)
	{
		CQt.QMetaSequence_ValueAtIterator(this.nativePtr, iterator, result);
	}
	
	public bool CanSetValueAtIterator()
	{
		return CQt.QMetaSequence_CanSetValueAtIterator(this.nativePtr);
	}
	
	public void SetValueAtIterator(void* iterator, void* value)
	{
		CQt.QMetaSequence_SetValueAtIterator(this.nativePtr, iterator, value);
	}
	
	public bool CanInsertValueAtIterator()
	{
		return CQt.QMetaSequence_CanInsertValueAtIterator(this.nativePtr);
	}
	
	public void InsertValueAtIterator(void* container, void* iterator, void* value)
	{
		CQt.QMetaSequence_InsertValueAtIterator(this.nativePtr, container, iterator, value);
	}
	
	public bool CanEraseValueAtIterator()
	{
		return CQt.QMetaSequence_CanEraseValueAtIterator(this.nativePtr);
	}
	
	public void EraseValueAtIterator(void* container, void* iterator)
	{
		CQt.QMetaSequence_EraseValueAtIterator(this.nativePtr, container, iterator);
	}
	
	public bool CanEraseRangeAtIterator()
	{
		return CQt.QMetaSequence_CanEraseRangeAtIterator(this.nativePtr);
	}
	
	public void EraseRangeAtIterator(void* container, void* iterator1, void* iterator2)
	{
		CQt.QMetaSequence_EraseRangeAtIterator(this.nativePtr, container, iterator1, iterator2);
	}
	
	public bool CanGetValueAtConstIterator()
	{
		return CQt.QMetaSequence_CanGetValueAtConstIterator(this.nativePtr);
	}
	
	public void ValueAtConstIterator(void* iterator, void* result)
	{
		CQt.QMetaSequence_ValueAtConstIterator(this.nativePtr, iterator, result);
	}
	
	public bool HasInputIterator()
	{
		return CQt.QMetaContainer_HasInputIterator(this.nativePtr);
	}
	
	public bool HasForwardIterator()
	{
		return CQt.QMetaContainer_HasForwardIterator(this.nativePtr);
	}
	
	public bool HasBidirectionalIterator()
	{
		return CQt.QMetaContainer_HasBidirectionalIterator(this.nativePtr);
	}
	
	public bool HasRandomAccessIterator()
	{
		return CQt.QMetaContainer_HasRandomAccessIterator(this.nativePtr);
	}
	
	public bool HasSize()
	{
		return CQt.QMetaContainer_HasSize(this.nativePtr);
	}
	
	public int32 Size(void* container)
	{
		return CQt.QMetaContainer_Size(this.nativePtr, container);
	}
	
	public bool CanClear()
	{
		return CQt.QMetaContainer_CanClear(this.nativePtr);
	}
	
	public void Clear(void* container)
	{
		CQt.QMetaContainer_Clear(this.nativePtr, container);
	}
	
	public bool HasIterator()
	{
		return CQt.QMetaContainer_HasIterator(this.nativePtr);
	}
	
	public void* Begin(void* container)
	{
		return CQt.QMetaContainer_Begin(this.nativePtr, container);
	}
	
	public void* End(void* container)
	{
		return CQt.QMetaContainer_End(this.nativePtr, container);
	}
	
	public void DestroyIterator(void* iterator)
	{
		CQt.QMetaContainer_DestroyIterator(this.nativePtr, iterator);
	}
	
	public bool CompareIterator(void* i, void* j)
	{
		return CQt.QMetaContainer_CompareIterator(this.nativePtr, i, j);
	}
	
	public void CopyIterator(void* target, void* source)
	{
		CQt.QMetaContainer_CopyIterator(this.nativePtr, target, source);
	}
	
	public void AdvanceIterator(void* iterator, int32 step)
	{
		CQt.QMetaContainer_AdvanceIterator(this.nativePtr, iterator, step);
	}
	
	public int32 DiffIterator(void* i, void* j)
	{
		return CQt.QMetaContainer_DiffIterator(this.nativePtr, i, j);
	}
	
	public bool HasConstIterator()
	{
		return CQt.QMetaContainer_HasConstIterator(this.nativePtr);
	}
	
	public void* ConstBegin(void* container)
	{
		return CQt.QMetaContainer_ConstBegin(this.nativePtr, container);
	}
	
	public void* ConstEnd(void* container)
	{
		return CQt.QMetaContainer_ConstEnd(this.nativePtr, container);
	}
	
	public void DestroyConstIterator(void* iterator)
	{
		CQt.QMetaContainer_DestroyConstIterator(this.nativePtr, iterator);
	}
	
	public bool CompareConstIterator(void* i, void* j)
	{
		return CQt.QMetaContainer_CompareConstIterator(this.nativePtr, i, j);
	}
	
	public void CopyConstIterator(void* target, void* source)
	{
		CQt.QMetaContainer_CopyConstIterator(this.nativePtr, target, source);
	}
	
	public void AdvanceConstIterator(void* iterator, int32 step)
	{
		CQt.QMetaContainer_AdvanceConstIterator(this.nativePtr, iterator, step);
	}
	
	public int32 DiffConstIterator(void* i, void* j)
	{
		return CQt.QMetaContainer_DiffConstIterator(this.nativePtr, i, j);
	}
	
}
public class QMetaSequence
{
	public QMetaSequencePtr handle;
	
	public static implicit operator QMetaSequencePtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQMetaSequence other)
	{
		this.handle = QMetaSequencePtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void ValueMetaType()
	{
		this.handle.ValueMetaType();
	}
	
	public bool IsSortable()
	{
		return this.handle.IsSortable();
	}
	
	public bool CanAddValueAtBegin()
	{
		return this.handle.CanAddValueAtBegin();
	}
	
	public void AddValueAtBegin(void* container, void* value)
	{
		this.handle.AddValueAtBegin(container, value);
	}
	
	public bool CanAddValueAtEnd()
	{
		return this.handle.CanAddValueAtEnd();
	}
	
	public void AddValueAtEnd(void* container, void* value)
	{
		this.handle.AddValueAtEnd(container, value);
	}
	
	public bool CanRemoveValueAtBegin()
	{
		return this.handle.CanRemoveValueAtBegin();
	}
	
	public void RemoveValueAtBegin(void* container)
	{
		this.handle.RemoveValueAtBegin(container);
	}
	
	public bool CanRemoveValueAtEnd()
	{
		return this.handle.CanRemoveValueAtEnd();
	}
	
	public void RemoveValueAtEnd(void* container)
	{
		this.handle.RemoveValueAtEnd(container);
	}
	
	public bool CanGetValueAtIndex()
	{
		return this.handle.CanGetValueAtIndex();
	}
	
	public void ValueAtIndex(void* container, int32 index, void* result)
	{
		this.handle.ValueAtIndex(container, index, result);
	}
	
	public bool CanSetValueAtIndex()
	{
		return this.handle.CanSetValueAtIndex();
	}
	
	public void SetValueAtIndex(void* container, int32 index, void* value)
	{
		this.handle.SetValueAtIndex(container, index, value);
	}
	
	public bool CanAddValue()
	{
		return this.handle.CanAddValue();
	}
	
	public void AddValue(void* container, void* value)
	{
		this.handle.AddValue(container, value);
	}
	
	public bool CanRemoveValue()
	{
		return this.handle.CanRemoveValue();
	}
	
	public void RemoveValue(void* container)
	{
		this.handle.RemoveValue(container);
	}
	
	public bool CanGetValueAtIterator()
	{
		return this.handle.CanGetValueAtIterator();
	}
	
	public void ValueAtIterator(void* iterator, void* result)
	{
		this.handle.ValueAtIterator(iterator, result);
	}
	
	public bool CanSetValueAtIterator()
	{
		return this.handle.CanSetValueAtIterator();
	}
	
	public void SetValueAtIterator(void* iterator, void* value)
	{
		this.handle.SetValueAtIterator(iterator, value);
	}
	
	public bool CanInsertValueAtIterator()
	{
		return this.handle.CanInsertValueAtIterator();
	}
	
	public void InsertValueAtIterator(void* container, void* iterator, void* value)
	{
		this.handle.InsertValueAtIterator(container, iterator, value);
	}
	
	public bool CanEraseValueAtIterator()
	{
		return this.handle.CanEraseValueAtIterator();
	}
	
	public void EraseValueAtIterator(void* container, void* iterator)
	{
		this.handle.EraseValueAtIterator(container, iterator);
	}
	
	public bool CanEraseRangeAtIterator()
	{
		return this.handle.CanEraseRangeAtIterator();
	}
	
	public void EraseRangeAtIterator(void* container, void* iterator1, void* iterator2)
	{
		this.handle.EraseRangeAtIterator(container, iterator1, iterator2);
	}
	
	public bool CanGetValueAtConstIterator()
	{
		return this.handle.CanGetValueAtConstIterator();
	}
	
	public void ValueAtConstIterator(void* iterator, void* result)
	{
		this.handle.ValueAtConstIterator(iterator, result);
	}
	
	public bool HasInputIterator()
	{
		return this.handle.HasInputIterator();
	}
	
	public bool HasForwardIterator()
	{
		return this.handle.HasForwardIterator();
	}
	
	public bool HasBidirectionalIterator()
	{
		return this.handle.HasBidirectionalIterator();
	}
	
	public bool HasRandomAccessIterator()
	{
		return this.handle.HasRandomAccessIterator();
	}
	
	public bool HasSize()
	{
		return this.handle.HasSize();
	}
	
	public int32 Size(void* container)
	{
		return this.handle.Size(container);
	}
	
	public bool CanClear()
	{
		return this.handle.CanClear();
	}
	
	public void Clear(void* container)
	{
		this.handle.Clear(container);
	}
	
	public bool HasIterator()
	{
		return this.handle.HasIterator();
	}
	
	public void* Begin(void* container)
	{
		return this.handle.Begin(container);
	}
	
	public void* End(void* container)
	{
		return this.handle.End(container);
	}
	
	public void DestroyIterator(void* iterator)
	{
		this.handle.DestroyIterator(iterator);
	}
	
	public bool CompareIterator(void* i, void* j)
	{
		return this.handle.CompareIterator(i, j);
	}
	
	public void CopyIterator(void* target, void* source)
	{
		this.handle.CopyIterator(target, source);
	}
	
	public void AdvanceIterator(void* iterator, int32 step)
	{
		this.handle.AdvanceIterator(iterator, step);
	}
	
	public int32 DiffIterator(void* i, void* j)
	{
		return this.handle.DiffIterator(i, j);
	}
	
	public bool HasConstIterator()
	{
		return this.handle.HasConstIterator();
	}
	
	public void* ConstBegin(void* container)
	{
		return this.handle.ConstBegin(container);
	}
	
	public void* ConstEnd(void* container)
	{
		return this.handle.ConstEnd(container);
	}
	
	public void DestroyConstIterator(void* iterator)
	{
		this.handle.DestroyConstIterator(iterator);
	}
	
	public bool CompareConstIterator(void* i, void* j)
	{
		return this.handle.CompareConstIterator(i, j);
	}
	
	public void CopyConstIterator(void* target, void* source)
	{
		this.handle.CopyConstIterator(target, source);
	}
	
	public void AdvanceConstIterator(void* iterator, int32 step)
	{
		this.handle.AdvanceConstIterator(iterator, step);
	}
	
	public int32 DiffConstIterator(void* i, void* j)
	{
		return this.handle.DiffConstIterator(i, j);
	}
	
}
extension CQt
{
	[LinkName("QMetaSequence_new")]
	public static extern void* QMetaSequence_new(void* other);
	[LinkName("QMetaSequence_new2")]
	public static extern void* QMetaSequence_new2(void* other);
	[LinkName("QMetaSequence_new3")]
	public static extern void* QMetaSequence_new3();
	[LinkName("QMetaSequence_ValueMetaType")]
	public static extern void QMetaSequence_ValueMetaType(void* c_this);
	[LinkName("QMetaSequence_IsSortable")]
	public static extern bool QMetaSequence_IsSortable(void* c_this);
	[LinkName("QMetaSequence_CanAddValueAtBegin")]
	public static extern bool QMetaSequence_CanAddValueAtBegin(void* c_this);
	[LinkName("QMetaSequence_AddValueAtBegin")]
	public static extern void QMetaSequence_AddValueAtBegin(void* c_this, void* container, void* value);
	[LinkName("QMetaSequence_CanAddValueAtEnd")]
	public static extern bool QMetaSequence_CanAddValueAtEnd(void* c_this);
	[LinkName("QMetaSequence_AddValueAtEnd")]
	public static extern void QMetaSequence_AddValueAtEnd(void* c_this, void* container, void* value);
	[LinkName("QMetaSequence_CanRemoveValueAtBegin")]
	public static extern bool QMetaSequence_CanRemoveValueAtBegin(void* c_this);
	[LinkName("QMetaSequence_RemoveValueAtBegin")]
	public static extern void QMetaSequence_RemoveValueAtBegin(void* c_this, void* container);
	[LinkName("QMetaSequence_CanRemoveValueAtEnd")]
	public static extern bool QMetaSequence_CanRemoveValueAtEnd(void* c_this);
	[LinkName("QMetaSequence_RemoveValueAtEnd")]
	public static extern void QMetaSequence_RemoveValueAtEnd(void* c_this, void* container);
	[LinkName("QMetaSequence_CanGetValueAtIndex")]
	public static extern bool QMetaSequence_CanGetValueAtIndex(void* c_this);
	[LinkName("QMetaSequence_ValueAtIndex")]
	public static extern void QMetaSequence_ValueAtIndex(void* c_this, void* container, int32 index, void* result);
	[LinkName("QMetaSequence_CanSetValueAtIndex")]
	public static extern bool QMetaSequence_CanSetValueAtIndex(void* c_this);
	[LinkName("QMetaSequence_SetValueAtIndex")]
	public static extern void QMetaSequence_SetValueAtIndex(void* c_this, void* container, int32 index, void* value);
	[LinkName("QMetaSequence_CanAddValue")]
	public static extern bool QMetaSequence_CanAddValue(void* c_this);
	[LinkName("QMetaSequence_AddValue")]
	public static extern void QMetaSequence_AddValue(void* c_this, void* container, void* value);
	[LinkName("QMetaSequence_CanRemoveValue")]
	public static extern bool QMetaSequence_CanRemoveValue(void* c_this);
	[LinkName("QMetaSequence_RemoveValue")]
	public static extern void QMetaSequence_RemoveValue(void* c_this, void* container);
	[LinkName("QMetaSequence_CanGetValueAtIterator")]
	public static extern bool QMetaSequence_CanGetValueAtIterator(void* c_this);
	[LinkName("QMetaSequence_ValueAtIterator")]
	public static extern void QMetaSequence_ValueAtIterator(void* c_this, void* iterator, void* result);
	[LinkName("QMetaSequence_CanSetValueAtIterator")]
	public static extern bool QMetaSequence_CanSetValueAtIterator(void* c_this);
	[LinkName("QMetaSequence_SetValueAtIterator")]
	public static extern void QMetaSequence_SetValueAtIterator(void* c_this, void* iterator, void* value);
	[LinkName("QMetaSequence_CanInsertValueAtIterator")]
	public static extern bool QMetaSequence_CanInsertValueAtIterator(void* c_this);
	[LinkName("QMetaSequence_InsertValueAtIterator")]
	public static extern void QMetaSequence_InsertValueAtIterator(void* c_this, void* container, void* iterator, void* value);
	[LinkName("QMetaSequence_CanEraseValueAtIterator")]
	public static extern bool QMetaSequence_CanEraseValueAtIterator(void* c_this);
	[LinkName("QMetaSequence_EraseValueAtIterator")]
	public static extern void QMetaSequence_EraseValueAtIterator(void* c_this, void* container, void* iterator);
	[LinkName("QMetaSequence_CanEraseRangeAtIterator")]
	public static extern bool QMetaSequence_CanEraseRangeAtIterator(void* c_this);
	[LinkName("QMetaSequence_EraseRangeAtIterator")]
	public static extern void QMetaSequence_EraseRangeAtIterator(void* c_this, void* container, void* iterator1, void* iterator2);
	[LinkName("QMetaSequence_CanGetValueAtConstIterator")]
	public static extern bool QMetaSequence_CanGetValueAtConstIterator(void* c_this);
	[LinkName("QMetaSequence_ValueAtConstIterator")]
	public static extern void QMetaSequence_ValueAtConstIterator(void* c_this, void* iterator, void* result);
	/// Delete this object from C++ memory
	[LinkName("QMetaSequence_Delete")]
	public static extern void QMetaSequence_Delete(void* self);
}
public interface IQMetaAssociation
{
	void* NativePtr { get; }
}
public struct QMetaAssociationPtr : IQMetaAssociation, IDisposable, IQMetaContainer
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQMetaAssociation other)
	{
		return .(CQt.QMetaAssociation_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QMetaAssociation_Delete(this.nativePtr);
	}
	
	public void KeyMetaType()
	{
		CQt.QMetaAssociation_KeyMetaType(this.nativePtr);
	}
	
	public void MappedMetaType()
	{
		CQt.QMetaAssociation_MappedMetaType(this.nativePtr);
	}
	
	public bool CanInsertKey()
	{
		return CQt.QMetaAssociation_CanInsertKey(this.nativePtr);
	}
	
	public void InsertKey(void* container, void* key)
	{
		CQt.QMetaAssociation_InsertKey(this.nativePtr, container, key);
	}
	
	public bool CanRemoveKey()
	{
		return CQt.QMetaAssociation_CanRemoveKey(this.nativePtr);
	}
	
	public void RemoveKey(void* container, void* key)
	{
		CQt.QMetaAssociation_RemoveKey(this.nativePtr, container, key);
	}
	
	public bool CanContainsKey()
	{
		return CQt.QMetaAssociation_CanContainsKey(this.nativePtr);
	}
	
	public bool ContainsKey(void* container, void* key)
	{
		return CQt.QMetaAssociation_ContainsKey(this.nativePtr, container, key);
	}
	
	public bool CanGetMappedAtKey()
	{
		return CQt.QMetaAssociation_CanGetMappedAtKey(this.nativePtr);
	}
	
	public void MappedAtKey(void* container, void* key, void* mapped)
	{
		CQt.QMetaAssociation_MappedAtKey(this.nativePtr, container, key, mapped);
	}
	
	public bool CanSetMappedAtKey()
	{
		return CQt.QMetaAssociation_CanSetMappedAtKey(this.nativePtr);
	}
	
	public void SetMappedAtKey(void* container, void* key, void* mapped)
	{
		CQt.QMetaAssociation_SetMappedAtKey(this.nativePtr, container, key, mapped);
	}
	
	public bool CanGetKeyAtIterator()
	{
		return CQt.QMetaAssociation_CanGetKeyAtIterator(this.nativePtr);
	}
	
	public void KeyAtIterator(void* iterator, void* key)
	{
		CQt.QMetaAssociation_KeyAtIterator(this.nativePtr, iterator, key);
	}
	
	public bool CanGetKeyAtConstIterator()
	{
		return CQt.QMetaAssociation_CanGetKeyAtConstIterator(this.nativePtr);
	}
	
	public void KeyAtConstIterator(void* iterator, void* key)
	{
		CQt.QMetaAssociation_KeyAtConstIterator(this.nativePtr, iterator, key);
	}
	
	public bool CanGetMappedAtIterator()
	{
		return CQt.QMetaAssociation_CanGetMappedAtIterator(this.nativePtr);
	}
	
	public void MappedAtIterator(void* iterator, void* mapped)
	{
		CQt.QMetaAssociation_MappedAtIterator(this.nativePtr, iterator, mapped);
	}
	
	public bool CanGetMappedAtConstIterator()
	{
		return CQt.QMetaAssociation_CanGetMappedAtConstIterator(this.nativePtr);
	}
	
	public void MappedAtConstIterator(void* iterator, void* mapped)
	{
		CQt.QMetaAssociation_MappedAtConstIterator(this.nativePtr, iterator, mapped);
	}
	
	public bool CanSetMappedAtIterator()
	{
		return CQt.QMetaAssociation_CanSetMappedAtIterator(this.nativePtr);
	}
	
	public void SetMappedAtIterator(void* iterator, void* mapped)
	{
		CQt.QMetaAssociation_SetMappedAtIterator(this.nativePtr, iterator, mapped);
	}
	
	public bool CanCreateIteratorAtKey()
	{
		return CQt.QMetaAssociation_CanCreateIteratorAtKey(this.nativePtr);
	}
	
	public void* CreateIteratorAtKey(void* container, void* key)
	{
		return CQt.QMetaAssociation_CreateIteratorAtKey(this.nativePtr, container, key);
	}
	
	public bool CanCreateConstIteratorAtKey()
	{
		return CQt.QMetaAssociation_CanCreateConstIteratorAtKey(this.nativePtr);
	}
	
	public void* CreateConstIteratorAtKey(void* container, void* key)
	{
		return CQt.QMetaAssociation_CreateConstIteratorAtKey(this.nativePtr, container, key);
	}
	
	public bool HasInputIterator()
	{
		return CQt.QMetaContainer_HasInputIterator(this.nativePtr);
	}
	
	public bool HasForwardIterator()
	{
		return CQt.QMetaContainer_HasForwardIterator(this.nativePtr);
	}
	
	public bool HasBidirectionalIterator()
	{
		return CQt.QMetaContainer_HasBidirectionalIterator(this.nativePtr);
	}
	
	public bool HasRandomAccessIterator()
	{
		return CQt.QMetaContainer_HasRandomAccessIterator(this.nativePtr);
	}
	
	public bool HasSize()
	{
		return CQt.QMetaContainer_HasSize(this.nativePtr);
	}
	
	public int32 Size(void* container)
	{
		return CQt.QMetaContainer_Size(this.nativePtr, container);
	}
	
	public bool CanClear()
	{
		return CQt.QMetaContainer_CanClear(this.nativePtr);
	}
	
	public void Clear(void* container)
	{
		CQt.QMetaContainer_Clear(this.nativePtr, container);
	}
	
	public bool HasIterator()
	{
		return CQt.QMetaContainer_HasIterator(this.nativePtr);
	}
	
	public void* Begin(void* container)
	{
		return CQt.QMetaContainer_Begin(this.nativePtr, container);
	}
	
	public void* End(void* container)
	{
		return CQt.QMetaContainer_End(this.nativePtr, container);
	}
	
	public void DestroyIterator(void* iterator)
	{
		CQt.QMetaContainer_DestroyIterator(this.nativePtr, iterator);
	}
	
	public bool CompareIterator(void* i, void* j)
	{
		return CQt.QMetaContainer_CompareIterator(this.nativePtr, i, j);
	}
	
	public void CopyIterator(void* target, void* source)
	{
		CQt.QMetaContainer_CopyIterator(this.nativePtr, target, source);
	}
	
	public void AdvanceIterator(void* iterator, int32 step)
	{
		CQt.QMetaContainer_AdvanceIterator(this.nativePtr, iterator, step);
	}
	
	public int32 DiffIterator(void* i, void* j)
	{
		return CQt.QMetaContainer_DiffIterator(this.nativePtr, i, j);
	}
	
	public bool HasConstIterator()
	{
		return CQt.QMetaContainer_HasConstIterator(this.nativePtr);
	}
	
	public void* ConstBegin(void* container)
	{
		return CQt.QMetaContainer_ConstBegin(this.nativePtr, container);
	}
	
	public void* ConstEnd(void* container)
	{
		return CQt.QMetaContainer_ConstEnd(this.nativePtr, container);
	}
	
	public void DestroyConstIterator(void* iterator)
	{
		CQt.QMetaContainer_DestroyConstIterator(this.nativePtr, iterator);
	}
	
	public bool CompareConstIterator(void* i, void* j)
	{
		return CQt.QMetaContainer_CompareConstIterator(this.nativePtr, i, j);
	}
	
	public void CopyConstIterator(void* target, void* source)
	{
		CQt.QMetaContainer_CopyConstIterator(this.nativePtr, target, source);
	}
	
	public void AdvanceConstIterator(void* iterator, int32 step)
	{
		CQt.QMetaContainer_AdvanceConstIterator(this.nativePtr, iterator, step);
	}
	
	public int32 DiffConstIterator(void* i, void* j)
	{
		return CQt.QMetaContainer_DiffConstIterator(this.nativePtr, i, j);
	}
	
}
public class QMetaAssociation
{
	public QMetaAssociationPtr handle;
	
	public static implicit operator QMetaAssociationPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQMetaAssociation other)
	{
		this.handle = QMetaAssociationPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void KeyMetaType()
	{
		this.handle.KeyMetaType();
	}
	
	public void MappedMetaType()
	{
		this.handle.MappedMetaType();
	}
	
	public bool CanInsertKey()
	{
		return this.handle.CanInsertKey();
	}
	
	public void InsertKey(void* container, void* key)
	{
		this.handle.InsertKey(container, key);
	}
	
	public bool CanRemoveKey()
	{
		return this.handle.CanRemoveKey();
	}
	
	public void RemoveKey(void* container, void* key)
	{
		this.handle.RemoveKey(container, key);
	}
	
	public bool CanContainsKey()
	{
		return this.handle.CanContainsKey();
	}
	
	public bool ContainsKey(void* container, void* key)
	{
		return this.handle.ContainsKey(container, key);
	}
	
	public bool CanGetMappedAtKey()
	{
		return this.handle.CanGetMappedAtKey();
	}
	
	public void MappedAtKey(void* container, void* key, void* mapped)
	{
		this.handle.MappedAtKey(container, key, mapped);
	}
	
	public bool CanSetMappedAtKey()
	{
		return this.handle.CanSetMappedAtKey();
	}
	
	public void SetMappedAtKey(void* container, void* key, void* mapped)
	{
		this.handle.SetMappedAtKey(container, key, mapped);
	}
	
	public bool CanGetKeyAtIterator()
	{
		return this.handle.CanGetKeyAtIterator();
	}
	
	public void KeyAtIterator(void* iterator, void* key)
	{
		this.handle.KeyAtIterator(iterator, key);
	}
	
	public bool CanGetKeyAtConstIterator()
	{
		return this.handle.CanGetKeyAtConstIterator();
	}
	
	public void KeyAtConstIterator(void* iterator, void* key)
	{
		this.handle.KeyAtConstIterator(iterator, key);
	}
	
	public bool CanGetMappedAtIterator()
	{
		return this.handle.CanGetMappedAtIterator();
	}
	
	public void MappedAtIterator(void* iterator, void* mapped)
	{
		this.handle.MappedAtIterator(iterator, mapped);
	}
	
	public bool CanGetMappedAtConstIterator()
	{
		return this.handle.CanGetMappedAtConstIterator();
	}
	
	public void MappedAtConstIterator(void* iterator, void* mapped)
	{
		this.handle.MappedAtConstIterator(iterator, mapped);
	}
	
	public bool CanSetMappedAtIterator()
	{
		return this.handle.CanSetMappedAtIterator();
	}
	
	public void SetMappedAtIterator(void* iterator, void* mapped)
	{
		this.handle.SetMappedAtIterator(iterator, mapped);
	}
	
	public bool CanCreateIteratorAtKey()
	{
		return this.handle.CanCreateIteratorAtKey();
	}
	
	public void* CreateIteratorAtKey(void* container, void* key)
	{
		return this.handle.CreateIteratorAtKey(container, key);
	}
	
	public bool CanCreateConstIteratorAtKey()
	{
		return this.handle.CanCreateConstIteratorAtKey();
	}
	
	public void* CreateConstIteratorAtKey(void* container, void* key)
	{
		return this.handle.CreateConstIteratorAtKey(container, key);
	}
	
	public bool HasInputIterator()
	{
		return this.handle.HasInputIterator();
	}
	
	public bool HasForwardIterator()
	{
		return this.handle.HasForwardIterator();
	}
	
	public bool HasBidirectionalIterator()
	{
		return this.handle.HasBidirectionalIterator();
	}
	
	public bool HasRandomAccessIterator()
	{
		return this.handle.HasRandomAccessIterator();
	}
	
	public bool HasSize()
	{
		return this.handle.HasSize();
	}
	
	public int32 Size(void* container)
	{
		return this.handle.Size(container);
	}
	
	public bool CanClear()
	{
		return this.handle.CanClear();
	}
	
	public void Clear(void* container)
	{
		this.handle.Clear(container);
	}
	
	public bool HasIterator()
	{
		return this.handle.HasIterator();
	}
	
	public void* Begin(void* container)
	{
		return this.handle.Begin(container);
	}
	
	public void* End(void* container)
	{
		return this.handle.End(container);
	}
	
	public void DestroyIterator(void* iterator)
	{
		this.handle.DestroyIterator(iterator);
	}
	
	public bool CompareIterator(void* i, void* j)
	{
		return this.handle.CompareIterator(i, j);
	}
	
	public void CopyIterator(void* target, void* source)
	{
		this.handle.CopyIterator(target, source);
	}
	
	public void AdvanceIterator(void* iterator, int32 step)
	{
		this.handle.AdvanceIterator(iterator, step);
	}
	
	public int32 DiffIterator(void* i, void* j)
	{
		return this.handle.DiffIterator(i, j);
	}
	
	public bool HasConstIterator()
	{
		return this.handle.HasConstIterator();
	}
	
	public void* ConstBegin(void* container)
	{
		return this.handle.ConstBegin(container);
	}
	
	public void* ConstEnd(void* container)
	{
		return this.handle.ConstEnd(container);
	}
	
	public void DestroyConstIterator(void* iterator)
	{
		this.handle.DestroyConstIterator(iterator);
	}
	
	public bool CompareConstIterator(void* i, void* j)
	{
		return this.handle.CompareConstIterator(i, j);
	}
	
	public void CopyConstIterator(void* target, void* source)
	{
		this.handle.CopyConstIterator(target, source);
	}
	
	public void AdvanceConstIterator(void* iterator, int32 step)
	{
		this.handle.AdvanceConstIterator(iterator, step);
	}
	
	public int32 DiffConstIterator(void* i, void* j)
	{
		return this.handle.DiffConstIterator(i, j);
	}
	
}
extension CQt
{
	[LinkName("QMetaAssociation_new")]
	public static extern void* QMetaAssociation_new(void* other);
	[LinkName("QMetaAssociation_new2")]
	public static extern void* QMetaAssociation_new2(void* other);
	[LinkName("QMetaAssociation_new3")]
	public static extern void* QMetaAssociation_new3();
	[LinkName("QMetaAssociation_KeyMetaType")]
	public static extern void QMetaAssociation_KeyMetaType(void* c_this);
	[LinkName("QMetaAssociation_MappedMetaType")]
	public static extern void QMetaAssociation_MappedMetaType(void* c_this);
	[LinkName("QMetaAssociation_CanInsertKey")]
	public static extern bool QMetaAssociation_CanInsertKey(void* c_this);
	[LinkName("QMetaAssociation_InsertKey")]
	public static extern void QMetaAssociation_InsertKey(void* c_this, void* container, void* key);
	[LinkName("QMetaAssociation_CanRemoveKey")]
	public static extern bool QMetaAssociation_CanRemoveKey(void* c_this);
	[LinkName("QMetaAssociation_RemoveKey")]
	public static extern void QMetaAssociation_RemoveKey(void* c_this, void* container, void* key);
	[LinkName("QMetaAssociation_CanContainsKey")]
	public static extern bool QMetaAssociation_CanContainsKey(void* c_this);
	[LinkName("QMetaAssociation_ContainsKey")]
	public static extern bool QMetaAssociation_ContainsKey(void* c_this, void* container, void* key);
	[LinkName("QMetaAssociation_CanGetMappedAtKey")]
	public static extern bool QMetaAssociation_CanGetMappedAtKey(void* c_this);
	[LinkName("QMetaAssociation_MappedAtKey")]
	public static extern void QMetaAssociation_MappedAtKey(void* c_this, void* container, void* key, void* mapped);
	[LinkName("QMetaAssociation_CanSetMappedAtKey")]
	public static extern bool QMetaAssociation_CanSetMappedAtKey(void* c_this);
	[LinkName("QMetaAssociation_SetMappedAtKey")]
	public static extern void QMetaAssociation_SetMappedAtKey(void* c_this, void* container, void* key, void* mapped);
	[LinkName("QMetaAssociation_CanGetKeyAtIterator")]
	public static extern bool QMetaAssociation_CanGetKeyAtIterator(void* c_this);
	[LinkName("QMetaAssociation_KeyAtIterator")]
	public static extern void QMetaAssociation_KeyAtIterator(void* c_this, void* iterator, void* key);
	[LinkName("QMetaAssociation_CanGetKeyAtConstIterator")]
	public static extern bool QMetaAssociation_CanGetKeyAtConstIterator(void* c_this);
	[LinkName("QMetaAssociation_KeyAtConstIterator")]
	public static extern void QMetaAssociation_KeyAtConstIterator(void* c_this, void* iterator, void* key);
	[LinkName("QMetaAssociation_CanGetMappedAtIterator")]
	public static extern bool QMetaAssociation_CanGetMappedAtIterator(void* c_this);
	[LinkName("QMetaAssociation_MappedAtIterator")]
	public static extern void QMetaAssociation_MappedAtIterator(void* c_this, void* iterator, void* mapped);
	[LinkName("QMetaAssociation_CanGetMappedAtConstIterator")]
	public static extern bool QMetaAssociation_CanGetMappedAtConstIterator(void* c_this);
	[LinkName("QMetaAssociation_MappedAtConstIterator")]
	public static extern void QMetaAssociation_MappedAtConstIterator(void* c_this, void* iterator, void* mapped);
	[LinkName("QMetaAssociation_CanSetMappedAtIterator")]
	public static extern bool QMetaAssociation_CanSetMappedAtIterator(void* c_this);
	[LinkName("QMetaAssociation_SetMappedAtIterator")]
	public static extern void QMetaAssociation_SetMappedAtIterator(void* c_this, void* iterator, void* mapped);
	[LinkName("QMetaAssociation_CanCreateIteratorAtKey")]
	public static extern bool QMetaAssociation_CanCreateIteratorAtKey(void* c_this);
	[LinkName("QMetaAssociation_CreateIteratorAtKey")]
	public static extern void* QMetaAssociation_CreateIteratorAtKey(void* c_this, void* container, void* key);
	[LinkName("QMetaAssociation_CanCreateConstIteratorAtKey")]
	public static extern bool QMetaAssociation_CanCreateConstIteratorAtKey(void* c_this);
	[LinkName("QMetaAssociation_CreateConstIteratorAtKey")]
	public static extern void* QMetaAssociation_CreateConstIteratorAtKey(void* c_this, void* container, void* key);
	/// Delete this object from C++ memory
	[LinkName("QMetaAssociation_Delete")]
	public static extern void QMetaAssociation_Delete(void* self);
}