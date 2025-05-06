using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QArrayData__AllocationOption
{
	Grow = 0,
	KeepSize = 1,
}
[AllowDuplicates]
public enum QArrayData__GrowthPosition
{
	GrowsAtEnd = 0,
	GrowsAtBeginning = 1,
}
[AllowDuplicates]
public enum QArrayData__ArrayOption
{
	ArrayOptionDefault = 0,
	CapacityReserved = 1,
}
[AllowDuplicates]
public enum QtPrivate__QContainerImplHelper__CutResult
{
	Null = 0,
	Empty = 1,
	Full = 2,
	Subset = 3,
}
public struct QArrayData
{
	[LinkName("QArrayData_AllocatedCapacity")]
	public static extern int32 QArrayData_AllocatedCapacity(Self* c_this);
	[LinkName("QArrayData_ConstAllocatedCapacity")]
	public static extern int32 QArrayData_ConstAllocatedCapacity(Self* c_this);
	[LinkName("QArrayData_Ref")]
	public static extern bool QArrayData_Ref(Self* c_this);
	[LinkName("QArrayData_Deref")]
	public static extern bool QArrayData_Deref(Self* c_this);
	[LinkName("QArrayData_IsShared")]
	public static extern bool QArrayData_IsShared(Self* c_this);
	[LinkName("QArrayData_NeedsDetach")]
	public static extern bool QArrayData_NeedsDetach(Self* c_this);
	[LinkName("QArrayData_DetachCapacity")]
	public static extern int32 QArrayData_DetachCapacity(Self* c_this, int32 newSize);
	[LinkName("QArrayData_ReallocateUnaligned")]
	public static extern void* QArrayData_ReallocateUnaligned(QArrayData* data, void* dataPointer, int32 objectSize, int32 newCapacity, int64 option);
	[LinkName("QArrayData_Deallocate")]
	public static extern void QArrayData_Deallocate(QArrayData* data, int32 objectSize, int32 alignment);
}