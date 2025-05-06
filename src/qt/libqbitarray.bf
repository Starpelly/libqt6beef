using System;
using System.Interop;
namespace Qt;

public struct QBitArray
{
	[LinkName("QBitArray_new")]
	public static extern QBitArray* QBitArray_new();
	[LinkName("QBitArray_new2")]
	public static extern QBitArray* QBitArray_new2(int32 size);
	[LinkName("QBitArray_new3")]
	public static extern QBitArray* QBitArray_new3(QBitArray* other);
	[LinkName("QBitArray_new4")]
	public static extern QBitArray* QBitArray_new4(int32 size, bool val);
	[LinkName("QBitArray_OperatorAssign")]
	public static extern void QBitArray_OperatorAssign(Self* c_this, QBitArray* other);
	[LinkName("QBitArray_Swap")]
	public static extern void QBitArray_Swap(Self* c_this, QBitArray* other);
	[LinkName("QBitArray_Size")]
	public static extern int32 QBitArray_Size(Self* c_this);
	[LinkName("QBitArray_Count")]
	public static extern int32 QBitArray_Count(Self* c_this);
	[LinkName("QBitArray_CountWithOn")]
	public static extern int32 QBitArray_CountWithOn(Self* c_this, bool on);
	[LinkName("QBitArray_IsEmpty")]
	public static extern bool QBitArray_IsEmpty(Self* c_this);
	[LinkName("QBitArray_IsNull")]
	public static extern bool QBitArray_IsNull(Self* c_this);
	[LinkName("QBitArray_Resize")]
	public static extern void QBitArray_Resize(Self* c_this, int32 size);
	[LinkName("QBitArray_Detach")]
	public static extern void QBitArray_Detach(Self* c_this);
	[LinkName("QBitArray_IsDetached")]
	public static extern bool QBitArray_IsDetached(Self* c_this);
	[LinkName("QBitArray_Clear")]
	public static extern void QBitArray_Clear(Self* c_this);
	[LinkName("QBitArray_TestBit")]
	public static extern bool QBitArray_TestBit(Self* c_this, int32 i);
	[LinkName("QBitArray_SetBit")]
	public static extern void QBitArray_SetBit(Self* c_this, int32 i);
	[LinkName("QBitArray_SetBit2")]
	public static extern void QBitArray_SetBit2(Self* c_this, int32 i, bool val);
	[LinkName("QBitArray_ClearBit")]
	public static extern void QBitArray_ClearBit(Self* c_this, int32 i);
	[LinkName("QBitArray_ToggleBit")]
	public static extern bool QBitArray_ToggleBit(Self* c_this, int32 i);
	[LinkName("QBitArray_At")]
	public static extern bool QBitArray_At(Self* c_this, int32 i);
	[LinkName("QBitArray_OperatorSubscript")]
	public static extern QBitRef QBitArray_OperatorSubscript(Self* c_this, int32 i);
	[LinkName("QBitArray_OperatorSubscriptWithQsizetype")]
	public static extern bool QBitArray_OperatorSubscriptWithQsizetype(Self* c_this, int32 i);
	[LinkName("QBitArray_OperatorBitwiseAndAssign")]
	public static extern void QBitArray_OperatorBitwiseAndAssign(Self* c_this, QBitArray* param1);
	[LinkName("QBitArray_OperatorBitwiseOrAssign")]
	public static extern void QBitArray_OperatorBitwiseOrAssign(Self* c_this, QBitArray* param1);
	[LinkName("QBitArray_OperatorBitwiseNotAssign")]
	public static extern void QBitArray_OperatorBitwiseNotAssign(Self* c_this, QBitArray* param1);
	[LinkName("QBitArray_OperatorEqual")]
	public static extern bool QBitArray_OperatorEqual(Self* c_this, QBitArray* other);
	[LinkName("QBitArray_OperatorNotEqual")]
	public static extern bool QBitArray_OperatorNotEqual(Self* c_this, QBitArray* other);
	[LinkName("QBitArray_Fill")]
	public static extern bool QBitArray_Fill(Self* c_this, bool val);
	[LinkName("QBitArray_Fill2")]
	public static extern void QBitArray_Fill2(Self* c_this, bool val, int32 first, int32 last);
	[LinkName("QBitArray_Truncate")]
	public static extern void QBitArray_Truncate(Self* c_this, int32 pos);
	[LinkName("QBitArray_Bits")]
	public static extern char8[] QBitArray_Bits(Self* c_this);
	[LinkName("QBitArray_FromBits")]
	public static extern QBitArray QBitArray_FromBits(char8[] data, int32 lenVal);
	[LinkName("QBitArray_ToUInt32")]
	public static extern uint32 QBitArray_ToUInt32(Self* c_this, int64 endianness);
	[LinkName("QBitArray_Fill22")]
	public static extern bool QBitArray_Fill22(Self* c_this, bool val, int32 size);
	[LinkName("QBitArray_ToUInt322")]
	public static extern uint32 QBitArray_ToUInt322(Self* c_this, int64 endianness, bool* ok);
}
public struct QBitRef
{
	[LinkName("QBitRef_new")]
	public static extern QBitRef* QBitRef_new(QBitRef* other);
	[LinkName("QBitRef_new2")]
	public static extern QBitRef* QBitRef_new2(QBitRef* param1);
	[LinkName("QBitRef_ToBool")]
	public static extern bool QBitRef_ToBool(Self* c_this);
	[LinkName("QBitRef_OperatorNot")]
	public static extern bool QBitRef_OperatorNot(Self* c_this);
	[LinkName("QBitRef_OperatorAssign")]
	public static extern void QBitRef_OperatorAssign(Self* c_this, QBitRef* val);
	[LinkName("QBitRef_OperatorAssignWithVal")]
	public static extern void QBitRef_OperatorAssignWithVal(Self* c_this, bool val);
}