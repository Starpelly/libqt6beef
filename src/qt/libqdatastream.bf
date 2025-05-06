using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDataStream__Version
{
	Qt_1_0 = 1,
	Qt_2_0 = 2,
	Qt_2_1 = 3,
	Qt_3_0 = 4,
	Qt_3_1 = 5,
	Qt_3_3 = 6,
	Qt_4_0 = 7,
	Qt_4_1 = 7,
	Qt_4_2 = 8,
	Qt_4_3 = 9,
	Qt_4_4 = 10,
	Qt_4_5 = 11,
	Qt_4_6 = 12,
	Qt_4_7 = 12,
	Qt_4_8 = 12,
	Qt_4_9 = 12,
	Qt_5_0 = 13,
	Qt_5_1 = 14,
	Qt_5_2 = 15,
	Qt_5_3 = 15,
	Qt_5_4 = 16,
	Qt_5_5 = 16,
	Qt_5_6 = 17,
	Qt_5_7 = 17,
	Qt_5_8 = 17,
	Qt_5_9 = 17,
	Qt_5_10 = 17,
	Qt_5_11 = 17,
	Qt_5_12 = 18,
	Qt_5_13 = 19,
	Qt_5_14 = 19,
	Qt_5_15 = 19,
	Qt_6_0 = 20,
	Qt_6_1 = 20,
	Qt_6_2 = 20,
	Qt_6_3 = 20,
	Qt_6_4 = 20,
	Qt_DefaultCompiledVersion = 20,
}
[AllowDuplicates]
public enum QDataStream__ByteOrder
{
	BigEndian = 0,
	LittleEndian = 1,
}
[AllowDuplicates]
public enum QDataStream__Status
{
	Ok = 0,
	ReadPastEnd = 1,
	ReadCorruptData = 2,
	WriteFailed = 3,
}
[AllowDuplicates]
public enum QDataStream__FloatingPointPrecision
{
	SinglePrecision = 0,
	DoublePrecision = 1,
}
public struct QDataStream : QIODeviceBase
{
	[LinkName("QDataStream_new")]
	public static extern QDataStream* QDataStream_new();
	[LinkName("QDataStream_new2")]
	public static extern QDataStream* QDataStream_new2(QIODevice* param1);
	[LinkName("QDataStream_new3")]
	public static extern QDataStream* QDataStream_new3(libqt_string param1);
	[LinkName("QDataStream_Device")]
	public static extern QIODevice* QDataStream_Device(Self* c_this);
	[LinkName("QDataStream_SetDevice")]
	public static extern void QDataStream_SetDevice(Self* c_this, QIODevice* device);
	[LinkName("QDataStream_AtEnd")]
	public static extern bool QDataStream_AtEnd(Self* c_this);
	[LinkName("QDataStream_Status")]
	public static extern int64 QDataStream_Status(Self* c_this);
	[LinkName("QDataStream_SetStatus")]
	public static extern void QDataStream_SetStatus(Self* c_this, int64 status);
	[LinkName("QDataStream_ResetStatus")]
	public static extern void QDataStream_ResetStatus(Self* c_this);
	[LinkName("QDataStream_FloatingPointPrecision")]
	public static extern int64 QDataStream_FloatingPointPrecision(Self* c_this);
	[LinkName("QDataStream_SetFloatingPointPrecision")]
	public static extern void QDataStream_SetFloatingPointPrecision(Self* c_this, int64 precision);
	[LinkName("QDataStream_ByteOrder")]
	public static extern int64 QDataStream_ByteOrder(Self* c_this);
	[LinkName("QDataStream_SetByteOrder")]
	public static extern void QDataStream_SetByteOrder(Self* c_this, int64 byteOrder);
	[LinkName("QDataStream_Version")]
	public static extern int32 QDataStream_Version(Self* c_this);
	[LinkName("QDataStream_SetVersion")]
	public static extern void QDataStream_SetVersion(Self* c_this, int32 version);
	[LinkName("QDataStream_OperatorShiftRight")]
	public static extern void QDataStream_OperatorShiftRight(Self* c_this, int8* i);
	[LinkName("QDataStream_OperatorShiftRightWithQint8")]
	public static extern void QDataStream_OperatorShiftRightWithQint8(Self* c_this, int8* i);
	[LinkName("QDataStream_OperatorShiftRightWithQuint8")]
	public static extern void QDataStream_OperatorShiftRightWithQuint8(Self* c_this, uint8* i);
	[LinkName("QDataStream_OperatorShiftRightWithQint16")]
	public static extern void QDataStream_OperatorShiftRightWithQint16(Self* c_this, int16* i);
	[LinkName("QDataStream_OperatorShiftRightWithQuint16")]
	public static extern void QDataStream_OperatorShiftRightWithQuint16(Self* c_this, uint16* i);
	[LinkName("QDataStream_OperatorShiftRightWithQint32")]
	public static extern void QDataStream_OperatorShiftRightWithQint32(Self* c_this, int32* i);
	[LinkName("QDataStream_OperatorShiftRightWithQuint32")]
	public static extern void QDataStream_OperatorShiftRightWithQuint32(Self* c_this, uint32* i);
	[LinkName("QDataStream_OperatorShiftRightWithQint64")]
	public static extern void QDataStream_OperatorShiftRightWithQint64(Self* c_this, int64* i);
	[LinkName("QDataStream_OperatorShiftRightWithQuint64")]
	public static extern void QDataStream_OperatorShiftRightWithQuint64(Self* c_this, uint64* i);
	[LinkName("QDataStream_OperatorShiftRightWithBool")]
	public static extern void QDataStream_OperatorShiftRightWithBool(Self* c_this, bool* i);
	[LinkName("QDataStream_OperatorShiftRightWithFloat")]
	public static extern void QDataStream_OperatorShiftRightWithFloat(Self* c_this, float* f);
	[LinkName("QDataStream_OperatorShiftRightWithDouble")]
	public static extern void QDataStream_OperatorShiftRightWithDouble(Self* c_this, double* f);
	[LinkName("QDataStream_OperatorShiftRightWithStr")]
	public static extern void QDataStream_OperatorShiftRightWithStr(Self* c_this, char8[] str);
	[LinkName("QDataStream_OperatorShiftLeft")]
	public static extern void QDataStream_OperatorShiftLeft(Self* c_this, int8 i);
	[LinkName("QDataStream_OperatorShiftLeftWithQint8")]
	public static extern void QDataStream_OperatorShiftLeftWithQint8(Self* c_this, int8 i);
	[LinkName("QDataStream_OperatorShiftLeftWithQuint8")]
	public static extern void QDataStream_OperatorShiftLeftWithQuint8(Self* c_this, uint8 i);
	[LinkName("QDataStream_OperatorShiftLeftWithQint16")]
	public static extern void QDataStream_OperatorShiftLeftWithQint16(Self* c_this, int16 i);
	[LinkName("QDataStream_OperatorShiftLeftWithQuint16")]
	public static extern void QDataStream_OperatorShiftLeftWithQuint16(Self* c_this, uint16 i);
	[LinkName("QDataStream_OperatorShiftLeftWithQint32")]
	public static extern void QDataStream_OperatorShiftLeftWithQint32(Self* c_this, int32 i);
	[LinkName("QDataStream_OperatorShiftLeftWithQuint32")]
	public static extern void QDataStream_OperatorShiftLeftWithQuint32(Self* c_this, uint32 i);
	[LinkName("QDataStream_OperatorShiftLeftWithQint64")]
	public static extern void QDataStream_OperatorShiftLeftWithQint64(Self* c_this, int64 i);
	[LinkName("QDataStream_OperatorShiftLeftWithQuint64")]
	public static extern void QDataStream_OperatorShiftLeftWithQuint64(Self* c_this, uint64 i);
	[LinkName("QDataStream_OperatorShiftLeftWithBool")]
	public static extern void QDataStream_OperatorShiftLeftWithBool(Self* c_this, bool i);
	[LinkName("QDataStream_OperatorShiftLeftWithFloat")]
	public static extern void QDataStream_OperatorShiftLeftWithFloat(Self* c_this, float f);
	[LinkName("QDataStream_OperatorShiftLeftWithDouble")]
	public static extern void QDataStream_OperatorShiftLeftWithDouble(Self* c_this, double f);
	[LinkName("QDataStream_OperatorShiftLeftWithStr")]
	public static extern void QDataStream_OperatorShiftLeftWithStr(Self* c_this, char8[] str);
	[LinkName("QDataStream_ReadBytes")]
	public static extern QDataStream* QDataStream_ReadBytes(Self* c_this, char8[] param1, uint32* lenVal);
	[LinkName("QDataStream_ReadRawData")]
	public static extern int32 QDataStream_ReadRawData(Self* c_this, char8[] param1, int32 lenVal);
	[LinkName("QDataStream_WriteBytes")]
	public static extern void QDataStream_WriteBytes(Self* c_this, char8[] param1, uint32 lenVal);
	[LinkName("QDataStream_WriteRawData")]
	public static extern int32 QDataStream_WriteRawData(Self* c_this, char8[] param1, int32 lenVal);
	[LinkName("QDataStream_SkipRawData")]
	public static extern int32 QDataStream_SkipRawData(Self* c_this, int32 lenVal);
	[LinkName("QDataStream_StartTransaction")]
	public static extern void QDataStream_StartTransaction(Self* c_this);
	[LinkName("QDataStream_CommitTransaction")]
	public static extern bool QDataStream_CommitTransaction(Self* c_this);
	[LinkName("QDataStream_RollbackTransaction")]
	public static extern void QDataStream_RollbackTransaction(Self* c_this);
	[LinkName("QDataStream_AbortTransaction")]
	public static extern void QDataStream_AbortTransaction(Self* c_this);
	[LinkName("QDataStream_IsDeviceTransactionStarted")]
	public static extern bool QDataStream_IsDeviceTransactionStarted(Self* c_this);
}