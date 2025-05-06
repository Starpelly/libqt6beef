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
public struct QMetaContainer
{
	[LinkName("QMetaContainer_new")]
	public static extern void* QMetaContainer_new(QMetaContainer other);
	[LinkName("QMetaContainer_new2")]
	public static extern void* QMetaContainer_new2(QMetaContainer other);
	[LinkName("QMetaContainer_new3")]
	public static extern void* QMetaContainer_new3();
	[LinkName("QMetaContainer_new4")]
	public static extern void* QMetaContainer_new4(QMetaContainer param1);
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
	public static extern int32 QMetaContainer_Size(void* c_this, void container);
	[LinkName("QMetaContainer_CanClear")]
	public static extern bool QMetaContainer_CanClear(void* c_this);
	[LinkName("QMetaContainer_Clear")]
	public static extern void QMetaContainer_Clear(void* c_this, void container);
	[LinkName("QMetaContainer_HasIterator")]
	public static extern bool QMetaContainer_HasIterator(void* c_this);
	[LinkName("QMetaContainer_Begin")]
	public static extern void QMetaContainer_Begin(void* c_this, void container);
	[LinkName("QMetaContainer_End")]
	public static extern void QMetaContainer_End(void* c_this, void container);
	[LinkName("QMetaContainer_DestroyIterator")]
	public static extern void QMetaContainer_DestroyIterator(void* c_this, void iterator);
	[LinkName("QMetaContainer_CompareIterator")]
	public static extern bool QMetaContainer_CompareIterator(void* c_this, void i, void j);
	[LinkName("QMetaContainer_CopyIterator")]
	public static extern void QMetaContainer_CopyIterator(void* c_this, void target, void source);
	[LinkName("QMetaContainer_AdvanceIterator")]
	public static extern void QMetaContainer_AdvanceIterator(void* c_this, void iterator, int32 step);
	[LinkName("QMetaContainer_DiffIterator")]
	public static extern int32 QMetaContainer_DiffIterator(void* c_this, void i, void j);
	[LinkName("QMetaContainer_HasConstIterator")]
	public static extern bool QMetaContainer_HasConstIterator(void* c_this);
	[LinkName("QMetaContainer_ConstBegin")]
	public static extern void QMetaContainer_ConstBegin(void* c_this, void container);
	[LinkName("QMetaContainer_ConstEnd")]
	public static extern void QMetaContainer_ConstEnd(void* c_this, void container);
	[LinkName("QMetaContainer_DestroyConstIterator")]
	public static extern void QMetaContainer_DestroyConstIterator(void* c_this, void iterator);
	[LinkName("QMetaContainer_CompareConstIterator")]
	public static extern bool QMetaContainer_CompareConstIterator(void* c_this, void i, void j);
	[LinkName("QMetaContainer_CopyConstIterator")]
	public static extern void QMetaContainer_CopyConstIterator(void* c_this, void target, void source);
	[LinkName("QMetaContainer_AdvanceConstIterator")]
	public static extern void QMetaContainer_AdvanceConstIterator(void* c_this, void iterator, int32 step);
	[LinkName("QMetaContainer_DiffConstIterator")]
	public static extern int32 QMetaContainer_DiffConstIterator(void* c_this, void i, void j);
}
public struct QMetaSequence
{
	[LinkName("QMetaSequence_new")]
	public static extern void* QMetaSequence_new(QMetaSequence other);
	[LinkName("QMetaSequence_new2")]
	public static extern void* QMetaSequence_new2(QMetaSequence other);
	[LinkName("QMetaSequence_new3")]
	public static extern void* QMetaSequence_new3();
	[LinkName("QMetaSequence_ValueMetaType")]
	public static extern QMetaType QMetaSequence_ValueMetaType(void* c_this);
	[LinkName("QMetaSequence_IsSortable")]
	public static extern bool QMetaSequence_IsSortable(void* c_this);
	[LinkName("QMetaSequence_CanAddValueAtBegin")]
	public static extern bool QMetaSequence_CanAddValueAtBegin(void* c_this);
	[LinkName("QMetaSequence_AddValueAtBegin")]
	public static extern void QMetaSequence_AddValueAtBegin(void* c_this, void container, void value);
	[LinkName("QMetaSequence_CanAddValueAtEnd")]
	public static extern bool QMetaSequence_CanAddValueAtEnd(void* c_this);
	[LinkName("QMetaSequence_AddValueAtEnd")]
	public static extern void QMetaSequence_AddValueAtEnd(void* c_this, void container, void value);
	[LinkName("QMetaSequence_CanRemoveValueAtBegin")]
	public static extern bool QMetaSequence_CanRemoveValueAtBegin(void* c_this);
	[LinkName("QMetaSequence_RemoveValueAtBegin")]
	public static extern void QMetaSequence_RemoveValueAtBegin(void* c_this, void container);
	[LinkName("QMetaSequence_CanRemoveValueAtEnd")]
	public static extern bool QMetaSequence_CanRemoveValueAtEnd(void* c_this);
	[LinkName("QMetaSequence_RemoveValueAtEnd")]
	public static extern void QMetaSequence_RemoveValueAtEnd(void* c_this, void container);
	[LinkName("QMetaSequence_CanGetValueAtIndex")]
	public static extern bool QMetaSequence_CanGetValueAtIndex(void* c_this);
	[LinkName("QMetaSequence_ValueAtIndex")]
	public static extern void QMetaSequence_ValueAtIndex(void* c_this, void container, int32 index, void result);
	[LinkName("QMetaSequence_CanSetValueAtIndex")]
	public static extern bool QMetaSequence_CanSetValueAtIndex(void* c_this);
	[LinkName("QMetaSequence_SetValueAtIndex")]
	public static extern void QMetaSequence_SetValueAtIndex(void* c_this, void container, int32 index, void value);
	[LinkName("QMetaSequence_CanAddValue")]
	public static extern bool QMetaSequence_CanAddValue(void* c_this);
	[LinkName("QMetaSequence_AddValue")]
	public static extern void QMetaSequence_AddValue(void* c_this, void container, void value);
	[LinkName("QMetaSequence_CanRemoveValue")]
	public static extern bool QMetaSequence_CanRemoveValue(void* c_this);
	[LinkName("QMetaSequence_RemoveValue")]
	public static extern void QMetaSequence_RemoveValue(void* c_this, void container);
	[LinkName("QMetaSequence_CanGetValueAtIterator")]
	public static extern bool QMetaSequence_CanGetValueAtIterator(void* c_this);
	[LinkName("QMetaSequence_ValueAtIterator")]
	public static extern void QMetaSequence_ValueAtIterator(void* c_this, void iterator, void result);
	[LinkName("QMetaSequence_CanSetValueAtIterator")]
	public static extern bool QMetaSequence_CanSetValueAtIterator(void* c_this);
	[LinkName("QMetaSequence_SetValueAtIterator")]
	public static extern void QMetaSequence_SetValueAtIterator(void* c_this, void iterator, void value);
	[LinkName("QMetaSequence_CanInsertValueAtIterator")]
	public static extern bool QMetaSequence_CanInsertValueAtIterator(void* c_this);
	[LinkName("QMetaSequence_InsertValueAtIterator")]
	public static extern void QMetaSequence_InsertValueAtIterator(void* c_this, void container, void iterator, void value);
	[LinkName("QMetaSequence_CanEraseValueAtIterator")]
	public static extern bool QMetaSequence_CanEraseValueAtIterator(void* c_this);
	[LinkName("QMetaSequence_EraseValueAtIterator")]
	public static extern void QMetaSequence_EraseValueAtIterator(void* c_this, void container, void iterator);
	[LinkName("QMetaSequence_CanEraseRangeAtIterator")]
	public static extern bool QMetaSequence_CanEraseRangeAtIterator(void* c_this);
	[LinkName("QMetaSequence_EraseRangeAtIterator")]
	public static extern void QMetaSequence_EraseRangeAtIterator(void* c_this, void container, void iterator1, void iterator2);
	[LinkName("QMetaSequence_CanGetValueAtConstIterator")]
	public static extern bool QMetaSequence_CanGetValueAtConstIterator(void* c_this);
	[LinkName("QMetaSequence_ValueAtConstIterator")]
	public static extern void QMetaSequence_ValueAtConstIterator(void* c_this, void iterator, void result);
}
public struct QMetaAssociation
{
	[LinkName("QMetaAssociation_new")]
	public static extern void* QMetaAssociation_new(QMetaAssociation other);
	[LinkName("QMetaAssociation_new2")]
	public static extern void* QMetaAssociation_new2(QMetaAssociation other);
	[LinkName("QMetaAssociation_new3")]
	public static extern void* QMetaAssociation_new3();
	[LinkName("QMetaAssociation_KeyMetaType")]
	public static extern QMetaType QMetaAssociation_KeyMetaType(void* c_this);
	[LinkName("QMetaAssociation_MappedMetaType")]
	public static extern QMetaType QMetaAssociation_MappedMetaType(void* c_this);
	[LinkName("QMetaAssociation_CanInsertKey")]
	public static extern bool QMetaAssociation_CanInsertKey(void* c_this);
	[LinkName("QMetaAssociation_InsertKey")]
	public static extern void QMetaAssociation_InsertKey(void* c_this, void container, void key);
	[LinkName("QMetaAssociation_CanRemoveKey")]
	public static extern bool QMetaAssociation_CanRemoveKey(void* c_this);
	[LinkName("QMetaAssociation_RemoveKey")]
	public static extern void QMetaAssociation_RemoveKey(void* c_this, void container, void key);
	[LinkName("QMetaAssociation_CanContainsKey")]
	public static extern bool QMetaAssociation_CanContainsKey(void* c_this);
	[LinkName("QMetaAssociation_ContainsKey")]
	public static extern bool QMetaAssociation_ContainsKey(void* c_this, void container, void key);
	[LinkName("QMetaAssociation_CanGetMappedAtKey")]
	public static extern bool QMetaAssociation_CanGetMappedAtKey(void* c_this);
	[LinkName("QMetaAssociation_MappedAtKey")]
	public static extern void QMetaAssociation_MappedAtKey(void* c_this, void container, void key, void mapped);
	[LinkName("QMetaAssociation_CanSetMappedAtKey")]
	public static extern bool QMetaAssociation_CanSetMappedAtKey(void* c_this);
	[LinkName("QMetaAssociation_SetMappedAtKey")]
	public static extern void QMetaAssociation_SetMappedAtKey(void* c_this, void container, void key, void mapped);
	[LinkName("QMetaAssociation_CanGetKeyAtIterator")]
	public static extern bool QMetaAssociation_CanGetKeyAtIterator(void* c_this);
	[LinkName("QMetaAssociation_KeyAtIterator")]
	public static extern void QMetaAssociation_KeyAtIterator(void* c_this, void iterator, void key);
	[LinkName("QMetaAssociation_CanGetKeyAtConstIterator")]
	public static extern bool QMetaAssociation_CanGetKeyAtConstIterator(void* c_this);
	[LinkName("QMetaAssociation_KeyAtConstIterator")]
	public static extern void QMetaAssociation_KeyAtConstIterator(void* c_this, void iterator, void key);
	[LinkName("QMetaAssociation_CanGetMappedAtIterator")]
	public static extern bool QMetaAssociation_CanGetMappedAtIterator(void* c_this);
	[LinkName("QMetaAssociation_MappedAtIterator")]
	public static extern void QMetaAssociation_MappedAtIterator(void* c_this, void iterator, void mapped);
	[LinkName("QMetaAssociation_CanGetMappedAtConstIterator")]
	public static extern bool QMetaAssociation_CanGetMappedAtConstIterator(void* c_this);
	[LinkName("QMetaAssociation_MappedAtConstIterator")]
	public static extern void QMetaAssociation_MappedAtConstIterator(void* c_this, void iterator, void mapped);
	[LinkName("QMetaAssociation_CanSetMappedAtIterator")]
	public static extern bool QMetaAssociation_CanSetMappedAtIterator(void* c_this);
	[LinkName("QMetaAssociation_SetMappedAtIterator")]
	public static extern void QMetaAssociation_SetMappedAtIterator(void* c_this, void iterator, void mapped);
	[LinkName("QMetaAssociation_CanCreateIteratorAtKey")]
	public static extern bool QMetaAssociation_CanCreateIteratorAtKey(void* c_this);
	[LinkName("QMetaAssociation_CreateIteratorAtKey")]
	public static extern void QMetaAssociation_CreateIteratorAtKey(void* c_this, void container, void key);
	[LinkName("QMetaAssociation_CanCreateConstIteratorAtKey")]
	public static extern bool QMetaAssociation_CanCreateConstIteratorAtKey(void* c_this);
	[LinkName("QMetaAssociation_CreateConstIteratorAtKey")]
	public static extern void QMetaAssociation_CreateConstIteratorAtKey(void* c_this, void container, void key);
}