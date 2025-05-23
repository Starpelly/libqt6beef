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
public interface IQArrayData
{
	void* NativePtr { get; }
}
public struct QArrayDataPtr : IQArrayData, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void Dispose()
	{
		CQt.QArrayData_Delete(this.nativePtr);
	}
	
	public int32 AllocatedCapacity()
	{
		return CQt.QArrayData_AllocatedCapacity(this.nativePtr);
	}
	
	public int32 ConstAllocatedCapacity()
	{
		return CQt.QArrayData_ConstAllocatedCapacity(this.nativePtr);
	}
	
	public bool Ref()
	{
		return CQt.QArrayData_Ref(this.nativePtr);
	}
	
	public bool Deref()
	{
		return CQt.QArrayData_Deref(this.nativePtr);
	}
	
	public bool IsShared()
	{
		return CQt.QArrayData_IsShared(this.nativePtr);
	}
	
	public bool NeedsDetach()
	{
		return CQt.QArrayData_NeedsDetach(this.nativePtr);
	}
	
	public int32 DetachCapacity(int32 newSize)
	{
		return CQt.QArrayData_DetachCapacity(this.nativePtr, newSize);
	}
	
	public static void* ReallocateUnaligned(IQArrayData data, void* dataPointer, int32 objectSize, int32 newCapacity, int64 option)
	{
		return CQt.QArrayData_ReallocateUnaligned((data == default || data.NativePtr == default) ? default : data.NativePtr, dataPointer, objectSize, newCapacity, (int64)option);
	}
	
	public static void Deallocate(IQArrayData data, int32 objectSize, int32 alignment)
	{
		CQt.QArrayData_Deallocate((data == default || data.NativePtr == default) ? default : data.NativePtr, objectSize, alignment);
	}
	
}
public class QArrayData
{
	public QArrayDataPtr handle;
	
	public static implicit operator QArrayDataPtr(Self self)
	{
		return self.handle;
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public int32 AllocatedCapacity()
	{
		return this.handle.AllocatedCapacity();
	}
	
	public int32 ConstAllocatedCapacity()
	{
		return this.handle.ConstAllocatedCapacity();
	}
	
	public bool Ref()
	{
		return this.handle.Ref();
	}
	
	public bool Deref()
	{
		return this.handle.Deref();
	}
	
	public bool IsShared()
	{
		return this.handle.IsShared();
	}
	
	public bool NeedsDetach()
	{
		return this.handle.NeedsDetach();
	}
	
	public int32 DetachCapacity(int32 newSize)
	{
		return this.handle.DetachCapacity(newSize);
	}
	
	public static void* ReallocateUnaligned(IQArrayData data, void* dataPointer, int32 objectSize, int32 newCapacity, int64 option)
	{
		return QArrayDataPtr.ReallocateUnaligned(data, dataPointer, objectSize, newCapacity, option);
	}
	
	public static void Deallocate(IQArrayData data, int32 objectSize, int32 alignment)
	{
		QArrayDataPtr.Deallocate(data, objectSize, alignment);
	}
	
}
extension CQt
{
	[LinkName("QArrayData_AllocatedCapacity")]
	public static extern int32 QArrayData_AllocatedCapacity(void* c_this);
	[LinkName("QArrayData_ConstAllocatedCapacity")]
	public static extern int32 QArrayData_ConstAllocatedCapacity(void* c_this);
	[LinkName("QArrayData_Ref")]
	public static extern bool QArrayData_Ref(void* c_this);
	[LinkName("QArrayData_Deref")]
	public static extern bool QArrayData_Deref(void* c_this);
	[LinkName("QArrayData_IsShared")]
	public static extern bool QArrayData_IsShared(void* c_this);
	[LinkName("QArrayData_NeedsDetach")]
	public static extern bool QArrayData_NeedsDetach(void* c_this);
	[LinkName("QArrayData_DetachCapacity")]
	public static extern int32 QArrayData_DetachCapacity(void* c_this, int32 newSize);
	[LinkName("QArrayData_ReallocateUnaligned")]
	public static extern void* QArrayData_ReallocateUnaligned(void* data, void* dataPointer, int32 objectSize, int32 newCapacity, int64 option);
	[LinkName("QArrayData_Deallocate")]
	public static extern void QArrayData_Deallocate(void* data, int32 objectSize, int32 alignment);
	/// Delete this object from C++ memory
	[LinkName("QArrayData_Delete")]
	public static extern void QArrayData_Delete(void* self);
}