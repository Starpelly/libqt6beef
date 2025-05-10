using System;
using System.Interop;
namespace Qt;

public class QRandomGenerator
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QRandomGenerator_new();
	}
	
	public ~this()
	{
		CQt.QRandomGenerator_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QRandomGenerator_OperatorAssign(this.nativePtr, other);
	}
	
	public uint32 Generate()
	{
		return CQt.QRandomGenerator_Generate(this.nativePtr);
	}
	
	public uint64 Generate64()
	{
		return CQt.QRandomGenerator_Generate64(this.nativePtr);
	}
	
	public double GenerateDouble()
	{
		return CQt.QRandomGenerator_GenerateDouble(this.nativePtr);
	}
	
	public double Bounded(double highest)
	{
		return CQt.QRandomGenerator_Bounded(this.nativePtr, highest);
	}
	
	public uint32 BoundedWithHighest(uint32 highest)
	{
		return CQt.QRandomGenerator_BoundedWithHighest(this.nativePtr, highest);
	}
	
	public uint32 Bounded2(uint32 lowest, uint32 highest)
	{
		return CQt.QRandomGenerator_Bounded2(this.nativePtr, lowest, highest);
	}
	
	public int32 Bounded3(int32 highest)
	{
		return CQt.QRandomGenerator_Bounded3(this.nativePtr, highest);
	}
	
	public int32 Bounded4(int32 lowest, int32 highest)
	{
		return CQt.QRandomGenerator_Bounded4(this.nativePtr, lowest, highest);
	}
	
	public uint64 Bounded5(uint64 highest)
	{
		return CQt.QRandomGenerator_Bounded5(this.nativePtr, highest);
	}
	
	public uint64 Bounded6(uint64 lowest, uint64 highest)
	{
		return CQt.QRandomGenerator_Bounded6(this.nativePtr, lowest, highest);
	}
	
	public int64 Bounded7(int64 highest)
	{
		return CQt.QRandomGenerator_Bounded7(this.nativePtr, highest);
	}
	
	public int64 Bounded8(int64 lowest, int64 highest)
	{
		return CQt.QRandomGenerator_Bounded8(this.nativePtr, lowest, highest);
	}
	
	public int64 Bounded9(int32 lowest, int64 highest)
	{
		return CQt.QRandomGenerator_Bounded9(this.nativePtr, lowest, highest);
	}
	
	public int64 Bounded10(int64 lowest, int32 highest)
	{
		return CQt.QRandomGenerator_Bounded10(this.nativePtr, lowest, highest);
	}
	
	public uint64 Bounded11(uint32 lowest, uint64 highest)
	{
		return CQt.QRandomGenerator_Bounded11(this.nativePtr, lowest, highest);
	}
	
	public uint64 Bounded12(uint64 lowest, uint32 highest)
	{
		return CQt.QRandomGenerator_Bounded12(this.nativePtr, lowest, highest);
	}
	
	public void Generate2(uint32* begin, uint32* end)
	{
		CQt.QRandomGenerator_Generate2(this.nativePtr, begin, end);
	}
	
	public uint32 OperatorCall()
	{
		return CQt.QRandomGenerator_OperatorCall(this.nativePtr);
	}
	
	public void Seed()
	{
		CQt.QRandomGenerator_Seed(this.nativePtr);
	}
	
	public void Discard(uint64 z)
	{
		CQt.QRandomGenerator_Discard(this.nativePtr, z);
	}
	
	public static uint32 Min()
	{
		return CQt.QRandomGenerator_Min();
	}
	
	public static uint32 Max()
	{
		return CQt.QRandomGenerator_Max();
	}
	
	public static void* System()
	{
		return CQt.QRandomGenerator_System();
	}
	
	public static void* Global()
	{
		return CQt.QRandomGenerator_Global();
	}
	
	public static void SecurelySeeded()
	{
		CQt.QRandomGenerator_SecurelySeeded();
	}
	
	public void Seed1(uint32 s)
	{
		CQt.QRandomGenerator_Seed1(this.nativePtr, s);
	}
	
}
extension CQt
{
	[LinkName("QRandomGenerator_new")]
	public static extern void* QRandomGenerator_new();
	[LinkName("QRandomGenerator_new2")]
	public static extern void* QRandomGenerator_new2(uint32* seedBuffer, int32 lenVal);
	[LinkName("QRandomGenerator_new3")]
	public static extern void* QRandomGenerator_new3(uint32* begin, uint32* end);
	[LinkName("QRandomGenerator_new4")]
	public static extern void* QRandomGenerator_new4(void* other);
	[LinkName("QRandomGenerator_new5")]
	public static extern void* QRandomGenerator_new5(uint32 seedValue);
	[LinkName("QRandomGenerator_OperatorAssign")]
	public static extern void QRandomGenerator_OperatorAssign(void* c_this, void* other);
	[LinkName("QRandomGenerator_Generate")]
	public static extern uint32 QRandomGenerator_Generate(void* c_this);
	[LinkName("QRandomGenerator_Generate64")]
	public static extern uint64 QRandomGenerator_Generate64(void* c_this);
	[LinkName("QRandomGenerator_GenerateDouble")]
	public static extern double QRandomGenerator_GenerateDouble(void* c_this);
	[LinkName("QRandomGenerator_Bounded")]
	public static extern double QRandomGenerator_Bounded(void* c_this, double highest);
	[LinkName("QRandomGenerator_BoundedWithHighest")]
	public static extern uint32 QRandomGenerator_BoundedWithHighest(void* c_this, uint32 highest);
	[LinkName("QRandomGenerator_Bounded2")]
	public static extern uint32 QRandomGenerator_Bounded2(void* c_this, uint32 lowest, uint32 highest);
	[LinkName("QRandomGenerator_Bounded3")]
	public static extern int32 QRandomGenerator_Bounded3(void* c_this, int32 highest);
	[LinkName("QRandomGenerator_Bounded4")]
	public static extern int32 QRandomGenerator_Bounded4(void* c_this, int32 lowest, int32 highest);
	[LinkName("QRandomGenerator_Bounded5")]
	public static extern uint64 QRandomGenerator_Bounded5(void* c_this, uint64 highest);
	[LinkName("QRandomGenerator_Bounded6")]
	public static extern uint64 QRandomGenerator_Bounded6(void* c_this, uint64 lowest, uint64 highest);
	[LinkName("QRandomGenerator_Bounded7")]
	public static extern int64 QRandomGenerator_Bounded7(void* c_this, int64 highest);
	[LinkName("QRandomGenerator_Bounded8")]
	public static extern int64 QRandomGenerator_Bounded8(void* c_this, int64 lowest, int64 highest);
	[LinkName("QRandomGenerator_Bounded9")]
	public static extern int64 QRandomGenerator_Bounded9(void* c_this, int32 lowest, int64 highest);
	[LinkName("QRandomGenerator_Bounded10")]
	public static extern int64 QRandomGenerator_Bounded10(void* c_this, int64 lowest, int32 highest);
	[LinkName("QRandomGenerator_Bounded11")]
	public static extern uint64 QRandomGenerator_Bounded11(void* c_this, uint32 lowest, uint64 highest);
	[LinkName("QRandomGenerator_Bounded12")]
	public static extern uint64 QRandomGenerator_Bounded12(void* c_this, uint64 lowest, uint32 highest);
	[LinkName("QRandomGenerator_Generate2")]
	public static extern void QRandomGenerator_Generate2(void* c_this, uint32* begin, uint32* end);
	[LinkName("QRandomGenerator_OperatorCall")]
	public static extern uint32 QRandomGenerator_OperatorCall(void* c_this);
	[LinkName("QRandomGenerator_Seed")]
	public static extern void QRandomGenerator_Seed(void* c_this);
	[LinkName("QRandomGenerator_Discard")]
	public static extern void QRandomGenerator_Discard(void* c_this, uint64 z);
	[LinkName("QRandomGenerator_Min")]
	public static extern uint32 QRandomGenerator_Min();
	[LinkName("QRandomGenerator_Max")]
	public static extern uint32 QRandomGenerator_Max();
	[LinkName("QRandomGenerator_System")]
	public static extern void* QRandomGenerator_System();
	[LinkName("QRandomGenerator_Global")]
	public static extern void* QRandomGenerator_Global();
	[LinkName("QRandomGenerator_SecurelySeeded")]
	public static extern void QRandomGenerator_SecurelySeeded();
	[LinkName("QRandomGenerator_Seed1")]
	public static extern void QRandomGenerator_Seed1(void* c_this, uint32 s);
	/// Delete this object from C++ memory
	[LinkName("QRandomGenerator_Delete")]
	public static extern void QRandomGenerator_Delete(void* self);
}
public class QRandomGenerator64
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QRandomGenerator64_new();
	}
	
	public ~this()
	{
		CQt.QRandomGenerator64_Delete(this.nativePtr);
	}
	
	public uint64 Generate()
	{
		return CQt.QRandomGenerator64_Generate(this.nativePtr);
	}
	
	public uint64 OperatorCall()
	{
		return CQt.QRandomGenerator64_OperatorCall(this.nativePtr);
	}
	
	public void Discard(uint64 z)
	{
		CQt.QRandomGenerator64_Discard(this.nativePtr, z);
	}
	
	public static uint64 Min()
	{
		return CQt.QRandomGenerator64_Min();
	}
	
	public static uint64 Max()
	{
		return CQt.QRandomGenerator64_Max();
	}
	
	public static void* System()
	{
		return CQt.QRandomGenerator64_System();
	}
	
	public static void* Global()
	{
		return CQt.QRandomGenerator64_Global();
	}
	
	public static void SecurelySeeded()
	{
		CQt.QRandomGenerator64_SecurelySeeded();
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QRandomGenerator64_OperatorAssign(this.nativePtr, param1);
	}
	
	public uint64 Generate64()
	{
		return CQt.QRandomGenerator_Generate64(this.nativePtr);
	}
	
	public double GenerateDouble()
	{
		return CQt.QRandomGenerator_GenerateDouble(this.nativePtr);
	}
	
	public double Bounded(double highest)
	{
		return CQt.QRandomGenerator_Bounded(this.nativePtr, highest);
	}
	
	public uint32 BoundedWithHighest(uint32 highest)
	{
		return CQt.QRandomGenerator_BoundedWithHighest(this.nativePtr, highest);
	}
	
	public uint32 Bounded2(uint32 lowest, uint32 highest)
	{
		return CQt.QRandomGenerator_Bounded2(this.nativePtr, lowest, highest);
	}
	
	public int32 Bounded3(int32 highest)
	{
		return CQt.QRandomGenerator_Bounded3(this.nativePtr, highest);
	}
	
	public int32 Bounded4(int32 lowest, int32 highest)
	{
		return CQt.QRandomGenerator_Bounded4(this.nativePtr, lowest, highest);
	}
	
	public uint64 Bounded5(uint64 highest)
	{
		return CQt.QRandomGenerator_Bounded5(this.nativePtr, highest);
	}
	
	public uint64 Bounded6(uint64 lowest, uint64 highest)
	{
		return CQt.QRandomGenerator_Bounded6(this.nativePtr, lowest, highest);
	}
	
	public int64 Bounded7(int64 highest)
	{
		return CQt.QRandomGenerator_Bounded7(this.nativePtr, highest);
	}
	
	public int64 Bounded8(int64 lowest, int64 highest)
	{
		return CQt.QRandomGenerator_Bounded8(this.nativePtr, lowest, highest);
	}
	
	public int64 Bounded9(int32 lowest, int64 highest)
	{
		return CQt.QRandomGenerator_Bounded9(this.nativePtr, lowest, highest);
	}
	
	public int64 Bounded10(int64 lowest, int32 highest)
	{
		return CQt.QRandomGenerator_Bounded10(this.nativePtr, lowest, highest);
	}
	
	public uint64 Bounded11(uint32 lowest, uint64 highest)
	{
		return CQt.QRandomGenerator_Bounded11(this.nativePtr, lowest, highest);
	}
	
	public uint64 Bounded12(uint64 lowest, uint32 highest)
	{
		return CQt.QRandomGenerator_Bounded12(this.nativePtr, lowest, highest);
	}
	
	public void Generate2(uint32* begin, uint32* end)
	{
		CQt.QRandomGenerator_Generate2(this.nativePtr, begin, end);
	}
	
	public void Seed()
	{
		CQt.QRandomGenerator_Seed(this.nativePtr);
	}
	
	public void Seed1(uint32 s)
	{
		CQt.QRandomGenerator_Seed1(this.nativePtr, s);
	}
	
}
extension CQt
{
	[LinkName("QRandomGenerator64_new")]
	public static extern void* QRandomGenerator64_new();
	[LinkName("QRandomGenerator64_new2")]
	public static extern void* QRandomGenerator64_new2(uint32* seedBuffer, int32 lenVal);
	[LinkName("QRandomGenerator64_new3")]
	public static extern void* QRandomGenerator64_new3(uint32* begin, uint32* end);
	[LinkName("QRandomGenerator64_new4")]
	public static extern void* QRandomGenerator64_new4(void* other);
	[LinkName("QRandomGenerator64_new5")]
	public static extern void* QRandomGenerator64_new5(void* param1);
	[LinkName("QRandomGenerator64_new6")]
	public static extern void* QRandomGenerator64_new6(uint32 seedValue);
	[LinkName("QRandomGenerator64_Generate")]
	public static extern uint64 QRandomGenerator64_Generate(void* c_this);
	[LinkName("QRandomGenerator64_OperatorCall")]
	public static extern uint64 QRandomGenerator64_OperatorCall(void* c_this);
	[LinkName("QRandomGenerator64_Discard")]
	public static extern void QRandomGenerator64_Discard(void* c_this, uint64 z);
	[LinkName("QRandomGenerator64_Min")]
	public static extern uint64 QRandomGenerator64_Min();
	[LinkName("QRandomGenerator64_Max")]
	public static extern uint64 QRandomGenerator64_Max();
	[LinkName("QRandomGenerator64_System")]
	public static extern void* QRandomGenerator64_System();
	[LinkName("QRandomGenerator64_Global")]
	public static extern void* QRandomGenerator64_Global();
	[LinkName("QRandomGenerator64_SecurelySeeded")]
	public static extern void QRandomGenerator64_SecurelySeeded();
	[LinkName("QRandomGenerator64_OperatorAssign")]
	public static extern void QRandomGenerator64_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QRandomGenerator64_Delete")]
	public static extern void QRandomGenerator64_Delete(void* self);
}