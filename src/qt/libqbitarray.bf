using System;
using System.Interop;
namespace Qt;

public interface IQBitArray
{
	void* NativePtr { get; }
}
public struct QBitArrayPtr : IQBitArray, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QBitArray_new());
	}
	
	public void Dispose()
	{
		CQt.QBitArray_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQBitArray other)
	{
		CQt.QBitArray_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQBitArray other)
	{
		CQt.QBitArray_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public int32 Size()
	{
		return CQt.QBitArray_Size(this.nativePtr);
	}
	
	public int32 Count()
	{
		return CQt.QBitArray_Count(this.nativePtr);
	}
	
	public int32 CountWithOn(bool on)
	{
		return CQt.QBitArray_CountWithOn(this.nativePtr, on);
	}
	
	public bool IsEmpty()
	{
		return CQt.QBitArray_IsEmpty(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QBitArray_IsNull(this.nativePtr);
	}
	
	public void Resize(int32 size)
	{
		CQt.QBitArray_Resize(this.nativePtr, size);
	}
	
	public void Detach()
	{
		CQt.QBitArray_Detach(this.nativePtr);
	}
	
	public bool IsDetached()
	{
		return CQt.QBitArray_IsDetached(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QBitArray_Clear(this.nativePtr);
	}
	
	public bool TestBit(int32 i)
	{
		return CQt.QBitArray_TestBit(this.nativePtr, i);
	}
	
	public void SetBit(int32 i)
	{
		CQt.QBitArray_SetBit(this.nativePtr, i);
	}
	
	public void SetBit2(int32 i, bool val)
	{
		CQt.QBitArray_SetBit2(this.nativePtr, i, val);
	}
	
	public void ClearBit(int32 i)
	{
		CQt.QBitArray_ClearBit(this.nativePtr, i);
	}
	
	public bool ToggleBit(int32 i)
	{
		return CQt.QBitArray_ToggleBit(this.nativePtr, i);
	}
	
	public bool At(int32 i)
	{
		return CQt.QBitArray_At(this.nativePtr, i);
	}
	
	public void OperatorSubscript(int32 i)
	{
		CQt.QBitArray_OperatorSubscript(this.nativePtr, i);
	}
	
	public bool OperatorSubscriptWithQsizetype(int32 i)
	{
		return CQt.QBitArray_OperatorSubscriptWithQsizetype(this.nativePtr, i);
	}
	
	public void OperatorBitwiseAndAssign(IQBitArray param1)
	{
		CQt.QBitArray_OperatorBitwiseAndAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void OperatorBitwiseOrAssign(IQBitArray param1)
	{
		CQt.QBitArray_OperatorBitwiseOrAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void OperatorBitwiseNotAssign(IQBitArray param1)
	{
		CQt.QBitArray_OperatorBitwiseNotAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public bool OperatorEqual(IQBitArray other)
	{
		return CQt.QBitArray_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQBitArray other)
	{
		return CQt.QBitArray_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool Fill(bool val)
	{
		return CQt.QBitArray_Fill(this.nativePtr, val);
	}
	
	public void Fill2(bool val, int32 first, int32 last)
	{
		CQt.QBitArray_Fill2(this.nativePtr, val, first, last);
	}
	
	public void Truncate(int32 pos)
	{
		CQt.QBitArray_Truncate(this.nativePtr, pos);
	}
	
	public char8* Bits()
	{
		return CQt.QBitArray_Bits(this.nativePtr);
	}
	
	public static void FromBits(char8* data, int32 lenVal)
	{
		CQt.QBitArray_FromBits(data, lenVal);
	}
	
	public uint32 ToUInt32(int64 endianness)
	{
		return CQt.QBitArray_ToUInt32(this.nativePtr, (int64)endianness);
	}
	
	public bool Fill22(bool val, int32 size)
	{
		return CQt.QBitArray_Fill22(this.nativePtr, val, size);
	}
	
	public uint32 ToUInt322(int64 endianness, bool* ok)
	{
		return CQt.QBitArray_ToUInt322(this.nativePtr, (int64)endianness, ok);
	}
	
}
public class QBitArray
{
	public QBitArrayPtr handle;
	
	public static implicit operator QBitArrayPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QBitArrayPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQBitArray other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(IQBitArray other)
	{
		this.handle.Swap(other);
	}
	
	public int32 Size()
	{
		return this.handle.Size();
	}
	
	public int32 Count()
	{
		return this.handle.Count();
	}
	
	public int32 CountWithOn(bool on)
	{
		return this.handle.CountWithOn(on);
	}
	
	public bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public void Resize(int32 size)
	{
		this.handle.Resize(size);
	}
	
	public void Detach()
	{
		this.handle.Detach();
	}
	
	public bool IsDetached()
	{
		return this.handle.IsDetached();
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
	public bool TestBit(int32 i)
	{
		return this.handle.TestBit(i);
	}
	
	public void SetBit(int32 i)
	{
		this.handle.SetBit(i);
	}
	
	public void SetBit2(int32 i, bool val)
	{
		this.handle.SetBit2(i, val);
	}
	
	public void ClearBit(int32 i)
	{
		this.handle.ClearBit(i);
	}
	
	public bool ToggleBit(int32 i)
	{
		return this.handle.ToggleBit(i);
	}
	
	public bool At(int32 i)
	{
		return this.handle.At(i);
	}
	
	public void OperatorSubscript(int32 i)
	{
		this.handle.OperatorSubscript(i);
	}
	
	public bool OperatorSubscriptWithQsizetype(int32 i)
	{
		return this.handle.OperatorSubscriptWithQsizetype(i);
	}
	
	public void OperatorBitwiseAndAssign(IQBitArray param1)
	{
		this.handle.OperatorBitwiseAndAssign(param1);
	}
	
	public void OperatorBitwiseOrAssign(IQBitArray param1)
	{
		this.handle.OperatorBitwiseOrAssign(param1);
	}
	
	public void OperatorBitwiseNotAssign(IQBitArray param1)
	{
		this.handle.OperatorBitwiseNotAssign(param1);
	}
	
	public bool OperatorEqual(IQBitArray other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQBitArray other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public bool Fill(bool val)
	{
		return this.handle.Fill(val);
	}
	
	public void Fill2(bool val, int32 first, int32 last)
	{
		this.handle.Fill2(val, first, last);
	}
	
	public void Truncate(int32 pos)
	{
		this.handle.Truncate(pos);
	}
	
	public char8* Bits()
	{
		return this.handle.Bits();
	}
	
	public static void FromBits(char8* data, int32 lenVal)
	{
		QBitArrayPtr.FromBits(data, lenVal);
	}
	
	public uint32 ToUInt32(int64 endianness)
	{
		return this.handle.ToUInt32(endianness);
	}
	
	public bool Fill22(bool val, int32 size)
	{
		return this.handle.Fill22(val, size);
	}
	
	public uint32 ToUInt322(int64 endianness, bool* ok)
	{
		return this.handle.ToUInt322(endianness, ok);
	}
	
}
extension CQt
{
	[LinkName("QBitArray_new")]
	public static extern void* QBitArray_new();
	[LinkName("QBitArray_new2")]
	public static extern void* QBitArray_new2(int32 size);
	[LinkName("QBitArray_new3")]
	public static extern void* QBitArray_new3(void* other);
	[LinkName("QBitArray_new4")]
	public static extern void* QBitArray_new4(int32 size, bool val);
	[LinkName("QBitArray_OperatorAssign")]
	public static extern void QBitArray_OperatorAssign(void* c_this, void* other);
	[LinkName("QBitArray_Swap")]
	public static extern void QBitArray_Swap(void* c_this, void* other);
	[LinkName("QBitArray_Size")]
	public static extern int32 QBitArray_Size(void* c_this);
	[LinkName("QBitArray_Count")]
	public static extern int32 QBitArray_Count(void* c_this);
	[LinkName("QBitArray_CountWithOn")]
	public static extern int32 QBitArray_CountWithOn(void* c_this, bool on);
	[LinkName("QBitArray_IsEmpty")]
	public static extern bool QBitArray_IsEmpty(void* c_this);
	[LinkName("QBitArray_IsNull")]
	public static extern bool QBitArray_IsNull(void* c_this);
	[LinkName("QBitArray_Resize")]
	public static extern void QBitArray_Resize(void* c_this, int32 size);
	[LinkName("QBitArray_Detach")]
	public static extern void QBitArray_Detach(void* c_this);
	[LinkName("QBitArray_IsDetached")]
	public static extern bool QBitArray_IsDetached(void* c_this);
	[LinkName("QBitArray_Clear")]
	public static extern void QBitArray_Clear(void* c_this);
	[LinkName("QBitArray_TestBit")]
	public static extern bool QBitArray_TestBit(void* c_this, int32 i);
	[LinkName("QBitArray_SetBit")]
	public static extern void QBitArray_SetBit(void* c_this, int32 i);
	[LinkName("QBitArray_SetBit2")]
	public static extern void QBitArray_SetBit2(void* c_this, int32 i, bool val);
	[LinkName("QBitArray_ClearBit")]
	public static extern void QBitArray_ClearBit(void* c_this, int32 i);
	[LinkName("QBitArray_ToggleBit")]
	public static extern bool QBitArray_ToggleBit(void* c_this, int32 i);
	[LinkName("QBitArray_At")]
	public static extern bool QBitArray_At(void* c_this, int32 i);
	[LinkName("QBitArray_OperatorSubscript")]
	public static extern void QBitArray_OperatorSubscript(void* c_this, int32 i);
	[LinkName("QBitArray_OperatorSubscriptWithQsizetype")]
	public static extern bool QBitArray_OperatorSubscriptWithQsizetype(void* c_this, int32 i);
	[LinkName("QBitArray_OperatorBitwiseAndAssign")]
	public static extern void QBitArray_OperatorBitwiseAndAssign(void* c_this, void* param1);
	[LinkName("QBitArray_OperatorBitwiseOrAssign")]
	public static extern void QBitArray_OperatorBitwiseOrAssign(void* c_this, void* param1);
	[LinkName("QBitArray_OperatorBitwiseNotAssign")]
	public static extern void QBitArray_OperatorBitwiseNotAssign(void* c_this, void* param1);
	[LinkName("QBitArray_OperatorEqual")]
	public static extern bool QBitArray_OperatorEqual(void* c_this, void* other);
	[LinkName("QBitArray_OperatorNotEqual")]
	public static extern bool QBitArray_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QBitArray_Fill")]
	public static extern bool QBitArray_Fill(void* c_this, bool val);
	[LinkName("QBitArray_Fill2")]
	public static extern void QBitArray_Fill2(void* c_this, bool val, int32 first, int32 last);
	[LinkName("QBitArray_Truncate")]
	public static extern void QBitArray_Truncate(void* c_this, int32 pos);
	[LinkName("QBitArray_Bits")]
	public static extern char8* QBitArray_Bits(void* c_this);
	[LinkName("QBitArray_FromBits")]
	public static extern void QBitArray_FromBits(char8* data, int32 lenVal);
	[LinkName("QBitArray_ToUInt32")]
	public static extern uint32 QBitArray_ToUInt32(void* c_this, int64 endianness);
	[LinkName("QBitArray_Fill22")]
	public static extern bool QBitArray_Fill22(void* c_this, bool val, int32 size);
	[LinkName("QBitArray_ToUInt322")]
	public static extern uint32 QBitArray_ToUInt322(void* c_this, int64 endianness, bool* ok);
	/// Delete this object from C++ memory
	[LinkName("QBitArray_Delete")]
	public static extern void QBitArray_Delete(void* self);
}
public interface IQBitRef
{
	void* NativePtr { get; }
}
public struct QBitRefPtr : IQBitRef, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQBitRef other)
	{
		return .(CQt.QBitRef_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QBitRef_Delete(this.nativePtr);
	}
	
	public bool ToBool()
	{
		return CQt.QBitRef_ToBool(this.nativePtr);
	}
	
	public bool OperatorNot()
	{
		return CQt.QBitRef_OperatorNot(this.nativePtr);
	}
	
	public void OperatorAssign(IQBitRef val)
	{
		CQt.QBitRef_OperatorAssign(this.nativePtr, (val == default || val.NativePtr == default) ? default : val.NativePtr);
	}
	
	public void OperatorAssignWithVal(bool val)
	{
		CQt.QBitRef_OperatorAssignWithVal(this.nativePtr, val);
	}
	
}
public class QBitRef
{
	public QBitRefPtr handle;
	
	public static implicit operator QBitRefPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQBitRef other)
	{
		this.handle = QBitRefPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool ToBool()
	{
		return this.handle.ToBool();
	}
	
	public bool OperatorNot()
	{
		return this.handle.OperatorNot();
	}
	
	public void OperatorAssign(IQBitRef val)
	{
		this.handle.OperatorAssign(val);
	}
	
	public void OperatorAssignWithVal(bool val)
	{
		this.handle.OperatorAssignWithVal(val);
	}
	
}
extension CQt
{
	[LinkName("QBitRef_new")]
	public static extern void* QBitRef_new(void* other);
	[LinkName("QBitRef_new2")]
	public static extern void* QBitRef_new2(void* param1);
	[LinkName("QBitRef_ToBool")]
	public static extern bool QBitRef_ToBool(void* c_this);
	[LinkName("QBitRef_OperatorNot")]
	public static extern bool QBitRef_OperatorNot(void* c_this);
	[LinkName("QBitRef_OperatorAssign")]
	public static extern void QBitRef_OperatorAssign(void* c_this, void* val);
	[LinkName("QBitRef_OperatorAssignWithVal")]
	public static extern void QBitRef_OperatorAssignWithVal(void* c_this, bool val);
	/// Delete this object from C++ memory
	[LinkName("QBitRef_Delete")]
	public static extern void QBitRef_Delete(void* self);
}