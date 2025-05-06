using System;
using System.Interop;
namespace Qt;

public struct QRandomGenerator
{
	[LinkName("QRandomGenerator_new")]
	public static extern QRandomGenerator* QRandomGenerator_new();
	[LinkName("QRandomGenerator_new2")]
	public static extern QRandomGenerator* QRandomGenerator_new2(uint32* seedBuffer, int32 lenVal);
	[LinkName("QRandomGenerator_new3")]
	public static extern QRandomGenerator* QRandomGenerator_new3(uint32* begin, uint32* end);
	[LinkName("QRandomGenerator_new4")]
	public static extern QRandomGenerator* QRandomGenerator_new4(QRandomGenerator* other);
	[LinkName("QRandomGenerator_new5")]
	public static extern QRandomGenerator* QRandomGenerator_new5(uint32 seedValue);
	[LinkName("QRandomGenerator_OperatorAssign")]
	public static extern void QRandomGenerator_OperatorAssign(Self* c_this, QRandomGenerator* other);
	[LinkName("QRandomGenerator_Generate")]
	public static extern uint32 QRandomGenerator_Generate(Self* c_this);
	[LinkName("QRandomGenerator_Generate64")]
	public static extern uint64 QRandomGenerator_Generate64(Self* c_this);
	[LinkName("QRandomGenerator_GenerateDouble")]
	public static extern double QRandomGenerator_GenerateDouble(Self* c_this);
	[LinkName("QRandomGenerator_Bounded")]
	public static extern double QRandomGenerator_Bounded(Self* c_this, double highest);
	[LinkName("QRandomGenerator_BoundedWithHighest")]
	public static extern uint32 QRandomGenerator_BoundedWithHighest(Self* c_this, uint32 highest);
	[LinkName("QRandomGenerator_Bounded2")]
	public static extern uint32 QRandomGenerator_Bounded2(Self* c_this, uint32 lowest, uint32 highest);
	[LinkName("QRandomGenerator_Bounded3")]
	public static extern int32 QRandomGenerator_Bounded3(Self* c_this, int32 highest);
	[LinkName("QRandomGenerator_Bounded4")]
	public static extern int32 QRandomGenerator_Bounded4(Self* c_this, int32 lowest, int32 highest);
	[LinkName("QRandomGenerator_Bounded5")]
	public static extern uint64 QRandomGenerator_Bounded5(Self* c_this, uint64 highest);
	[LinkName("QRandomGenerator_Bounded6")]
	public static extern uint64 QRandomGenerator_Bounded6(Self* c_this, uint64 lowest, uint64 highest);
	[LinkName("QRandomGenerator_Bounded7")]
	public static extern int64 QRandomGenerator_Bounded7(Self* c_this, int64 highest);
	[LinkName("QRandomGenerator_Bounded8")]
	public static extern int64 QRandomGenerator_Bounded8(Self* c_this, int64 lowest, int64 highest);
	[LinkName("QRandomGenerator_Bounded9")]
	public static extern int64 QRandomGenerator_Bounded9(Self* c_this, int32 lowest, int64 highest);
	[LinkName("QRandomGenerator_Bounded10")]
	public static extern int64 QRandomGenerator_Bounded10(Self* c_this, int64 lowest, int32 highest);
	[LinkName("QRandomGenerator_Bounded11")]
	public static extern uint64 QRandomGenerator_Bounded11(Self* c_this, uint32 lowest, uint64 highest);
	[LinkName("QRandomGenerator_Bounded12")]
	public static extern uint64 QRandomGenerator_Bounded12(Self* c_this, uint64 lowest, uint32 highest);
	[LinkName("QRandomGenerator_Generate2")]
	public static extern void QRandomGenerator_Generate2(Self* c_this, uint32* begin, uint32* end);
	[LinkName("QRandomGenerator_OperatorCall")]
	public static extern uint32 QRandomGenerator_OperatorCall(Self* c_this);
	[LinkName("QRandomGenerator_Seed")]
	public static extern void QRandomGenerator_Seed(Self* c_this);
	[LinkName("QRandomGenerator_Discard")]
	public static extern void QRandomGenerator_Discard(Self* c_this, uint64 z);
	[LinkName("QRandomGenerator_Min")]
	public static extern uint32 QRandomGenerator_Min();
	[LinkName("QRandomGenerator_Max")]
	public static extern uint32 QRandomGenerator_Max();
	[LinkName("QRandomGenerator_System")]
	public static extern QRandomGenerator* QRandomGenerator_System();
	[LinkName("QRandomGenerator_Global")]
	public static extern QRandomGenerator* QRandomGenerator_Global();
	[LinkName("QRandomGenerator_SecurelySeeded")]
	public static extern QRandomGenerator QRandomGenerator_SecurelySeeded();
	[LinkName("QRandomGenerator_Seed1")]
	public static extern void QRandomGenerator_Seed1(Self* c_this, uint32 s);
}
public struct QRandomGenerator64 : QRandomGenerator
{
	[LinkName("QRandomGenerator64_new")]
	public static extern QRandomGenerator64* QRandomGenerator64_new();
	[LinkName("QRandomGenerator64_new2")]
	public static extern QRandomGenerator64* QRandomGenerator64_new2(uint32* seedBuffer, int32 lenVal);
	[LinkName("QRandomGenerator64_new3")]
	public static extern QRandomGenerator64* QRandomGenerator64_new3(uint32* begin, uint32* end);
	[LinkName("QRandomGenerator64_new4")]
	public static extern QRandomGenerator64* QRandomGenerator64_new4(QRandomGenerator* other);
	[LinkName("QRandomGenerator64_new5")]
	public static extern QRandomGenerator64* QRandomGenerator64_new5(QRandomGenerator64* param1);
	[LinkName("QRandomGenerator64_new6")]
	public static extern QRandomGenerator64* QRandomGenerator64_new6(uint32 seedValue);
	[LinkName("QRandomGenerator64_Generate")]
	public static extern uint64 QRandomGenerator64_Generate(Self* c_this);
	[LinkName("QRandomGenerator64_OperatorCall")]
	public static extern uint64 QRandomGenerator64_OperatorCall(Self* c_this);
	[LinkName("QRandomGenerator64_Discard")]
	public static extern void QRandomGenerator64_Discard(Self* c_this, uint64 z);
	[LinkName("QRandomGenerator64_Min")]
	public static extern uint64 QRandomGenerator64_Min();
	[LinkName("QRandomGenerator64_Max")]
	public static extern uint64 QRandomGenerator64_Max();
	[LinkName("QRandomGenerator64_System")]
	public static extern QRandomGenerator64* QRandomGenerator64_System();
	[LinkName("QRandomGenerator64_Global")]
	public static extern QRandomGenerator64* QRandomGenerator64_Global();
	[LinkName("QRandomGenerator64_SecurelySeeded")]
	public static extern QRandomGenerator64 QRandomGenerator64_SecurelySeeded();
	[LinkName("QRandomGenerator64_OperatorAssign")]
	public static extern void QRandomGenerator64_OperatorAssign(Self* c_this, QRandomGenerator64* param1);
}