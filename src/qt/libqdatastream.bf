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
public class QDataStream
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QDataStream_new();
	}
	
	public ~this()
	{
		CQt.QDataStream_Delete(this.nativePtr);
	}
	
	public void* Device()
	{
		return CQt.QDataStream_Device(this.nativePtr);
	}
	
	public void SetDevice(void* device)
	{
		CQt.QDataStream_SetDevice(this.nativePtr, device);
	}
	
	public bool AtEnd()
	{
		return CQt.QDataStream_AtEnd(this.nativePtr);
	}
	
	public int64 Status()
	{
		return CQt.QDataStream_Status(this.nativePtr);
	}
	
	public void SetStatus(int64 status)
	{
		CQt.QDataStream_SetStatus(this.nativePtr, status);
	}
	
	public void ResetStatus()
	{
		CQt.QDataStream_ResetStatus(this.nativePtr);
	}
	
	public int64 FloatingPointPrecision()
	{
		return CQt.QDataStream_FloatingPointPrecision(this.nativePtr);
	}
	
	public void SetFloatingPointPrecision(int64 precision)
	{
		CQt.QDataStream_SetFloatingPointPrecision(this.nativePtr, precision);
	}
	
	public int64 ByteOrder()
	{
		return CQt.QDataStream_ByteOrder(this.nativePtr);
	}
	
	public void SetByteOrder(int64 byteOrder)
	{
		CQt.QDataStream_SetByteOrder(this.nativePtr, byteOrder);
	}
	
	public int32 Version()
	{
		return CQt.QDataStream_Version(this.nativePtr);
	}
	
	public void SetVersion(int32 version)
	{
		CQt.QDataStream_SetVersion(this.nativePtr, version);
	}
	
	public void OperatorShiftRight(int8* i)
	{
		CQt.QDataStream_OperatorShiftRight(this.nativePtr, i);
	}
	
	public void OperatorShiftRightWithQint8(int8* i)
	{
		CQt.QDataStream_OperatorShiftRightWithQint8(this.nativePtr, i);
	}
	
	public void OperatorShiftRightWithQuint8(uint8* i)
	{
		CQt.QDataStream_OperatorShiftRightWithQuint8(this.nativePtr, i);
	}
	
	public void OperatorShiftRightWithQint16(int16* i)
	{
		CQt.QDataStream_OperatorShiftRightWithQint16(this.nativePtr, i);
	}
	
	public void OperatorShiftRightWithQuint16(uint16* i)
	{
		CQt.QDataStream_OperatorShiftRightWithQuint16(this.nativePtr, i);
	}
	
	public void OperatorShiftRightWithQint32(int32* i)
	{
		CQt.QDataStream_OperatorShiftRightWithQint32(this.nativePtr, i);
	}
	
	public void OperatorShiftRightWithQuint32(uint32* i)
	{
		CQt.QDataStream_OperatorShiftRightWithQuint32(this.nativePtr, i);
	}
	
	public void OperatorShiftRightWithQint64(int64* i)
	{
		CQt.QDataStream_OperatorShiftRightWithQint64(this.nativePtr, i);
	}
	
	public void OperatorShiftRightWithQuint64(uint64* i)
	{
		CQt.QDataStream_OperatorShiftRightWithQuint64(this.nativePtr, i);
	}
	
	public void OperatorShiftRightWithBool(bool* i)
	{
		CQt.QDataStream_OperatorShiftRightWithBool(this.nativePtr, i);
	}
	
	public void OperatorShiftRightWithFloat(float* f)
	{
		CQt.QDataStream_OperatorShiftRightWithFloat(this.nativePtr, f);
	}
	
	public void OperatorShiftRightWithDouble(double* f)
	{
		CQt.QDataStream_OperatorShiftRightWithDouble(this.nativePtr, f);
	}
	
	public void OperatorShiftRightWithStr(char8[] str)
	{
		CQt.QDataStream_OperatorShiftRightWithStr(this.nativePtr, str);
	}
	
	public void OperatorShiftLeft(int8 i)
	{
		CQt.QDataStream_OperatorShiftLeft(this.nativePtr, i);
	}
	
	public void OperatorShiftLeftWithQint8(int8 i)
	{
		CQt.QDataStream_OperatorShiftLeftWithQint8(this.nativePtr, i);
	}
	
	public void OperatorShiftLeftWithQuint8(uint8 i)
	{
		CQt.QDataStream_OperatorShiftLeftWithQuint8(this.nativePtr, i);
	}
	
	public void OperatorShiftLeftWithQint16(int16 i)
	{
		CQt.QDataStream_OperatorShiftLeftWithQint16(this.nativePtr, i);
	}
	
	public void OperatorShiftLeftWithQuint16(uint16 i)
	{
		CQt.QDataStream_OperatorShiftLeftWithQuint16(this.nativePtr, i);
	}
	
	public void OperatorShiftLeftWithQint32(int32 i)
	{
		CQt.QDataStream_OperatorShiftLeftWithQint32(this.nativePtr, i);
	}
	
	public void OperatorShiftLeftWithQuint32(uint32 i)
	{
		CQt.QDataStream_OperatorShiftLeftWithQuint32(this.nativePtr, i);
	}
	
	public void OperatorShiftLeftWithQint64(int64 i)
	{
		CQt.QDataStream_OperatorShiftLeftWithQint64(this.nativePtr, i);
	}
	
	public void OperatorShiftLeftWithQuint64(uint64 i)
	{
		CQt.QDataStream_OperatorShiftLeftWithQuint64(this.nativePtr, i);
	}
	
	public void OperatorShiftLeftWithBool(bool i)
	{
		CQt.QDataStream_OperatorShiftLeftWithBool(this.nativePtr, i);
	}
	
	public void OperatorShiftLeftWithFloat(float f)
	{
		CQt.QDataStream_OperatorShiftLeftWithFloat(this.nativePtr, f);
	}
	
	public void OperatorShiftLeftWithDouble(double f)
	{
		CQt.QDataStream_OperatorShiftLeftWithDouble(this.nativePtr, f);
	}
	
	public void OperatorShiftLeftWithStr(char8[] str)
	{
		CQt.QDataStream_OperatorShiftLeftWithStr(this.nativePtr, str);
	}
	
	public void* ReadBytes(char8[] param1, uint32* lenVal)
	{
		return CQt.QDataStream_ReadBytes(this.nativePtr, param1, lenVal);
	}
	
	public int32 ReadRawData(char8[] param1, int32 lenVal)
	{
		return CQt.QDataStream_ReadRawData(this.nativePtr, param1, lenVal);
	}
	
	public void WriteBytes(char8[] param1, uint32 lenVal)
	{
		CQt.QDataStream_WriteBytes(this.nativePtr, param1, lenVal);
	}
	
	public int32 WriteRawData(char8[] param1, int32 lenVal)
	{
		return CQt.QDataStream_WriteRawData(this.nativePtr, param1, lenVal);
	}
	
	public int32 SkipRawData(int32 lenVal)
	{
		return CQt.QDataStream_SkipRawData(this.nativePtr, lenVal);
	}
	
	public void StartTransaction()
	{
		CQt.QDataStream_StartTransaction(this.nativePtr);
	}
	
	public bool CommitTransaction()
	{
		return CQt.QDataStream_CommitTransaction(this.nativePtr);
	}
	
	public void RollbackTransaction()
	{
		CQt.QDataStream_RollbackTransaction(this.nativePtr);
	}
	
	public void AbortTransaction()
	{
		CQt.QDataStream_AbortTransaction(this.nativePtr);
	}
	
	public bool IsDeviceTransactionStarted()
	{
		return CQt.QDataStream_IsDeviceTransactionStarted(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QDataStream_new")]
	public static extern void* QDataStream_new();
	[LinkName("QDataStream_new2")]
	public static extern void* QDataStream_new2(void* param1);
	[LinkName("QDataStream_new3")]
	public static extern void* QDataStream_new3(libqt_string param1);
	[LinkName("QDataStream_Device")]
	public static extern void* QDataStream_Device(void* c_this);
	[LinkName("QDataStream_SetDevice")]
	public static extern void QDataStream_SetDevice(void* c_this, void* device);
	[LinkName("QDataStream_AtEnd")]
	public static extern bool QDataStream_AtEnd(void* c_this);
	[LinkName("QDataStream_Status")]
	public static extern int64 QDataStream_Status(void* c_this);
	[LinkName("QDataStream_SetStatus")]
	public static extern void QDataStream_SetStatus(void* c_this, int64 status);
	[LinkName("QDataStream_ResetStatus")]
	public static extern void QDataStream_ResetStatus(void* c_this);
	[LinkName("QDataStream_FloatingPointPrecision")]
	public static extern int64 QDataStream_FloatingPointPrecision(void* c_this);
	[LinkName("QDataStream_SetFloatingPointPrecision")]
	public static extern void QDataStream_SetFloatingPointPrecision(void* c_this, int64 precision);
	[LinkName("QDataStream_ByteOrder")]
	public static extern int64 QDataStream_ByteOrder(void* c_this);
	[LinkName("QDataStream_SetByteOrder")]
	public static extern void QDataStream_SetByteOrder(void* c_this, int64 byteOrder);
	[LinkName("QDataStream_Version")]
	public static extern int32 QDataStream_Version(void* c_this);
	[LinkName("QDataStream_SetVersion")]
	public static extern void QDataStream_SetVersion(void* c_this, int32 version);
	[LinkName("QDataStream_OperatorShiftRight")]
	public static extern void QDataStream_OperatorShiftRight(void* c_this, int8* i);
	[LinkName("QDataStream_OperatorShiftRightWithQint8")]
	public static extern void QDataStream_OperatorShiftRightWithQint8(void* c_this, int8* i);
	[LinkName("QDataStream_OperatorShiftRightWithQuint8")]
	public static extern void QDataStream_OperatorShiftRightWithQuint8(void* c_this, uint8* i);
	[LinkName("QDataStream_OperatorShiftRightWithQint16")]
	public static extern void QDataStream_OperatorShiftRightWithQint16(void* c_this, int16* i);
	[LinkName("QDataStream_OperatorShiftRightWithQuint16")]
	public static extern void QDataStream_OperatorShiftRightWithQuint16(void* c_this, uint16* i);
	[LinkName("QDataStream_OperatorShiftRightWithQint32")]
	public static extern void QDataStream_OperatorShiftRightWithQint32(void* c_this, int32* i);
	[LinkName("QDataStream_OperatorShiftRightWithQuint32")]
	public static extern void QDataStream_OperatorShiftRightWithQuint32(void* c_this, uint32* i);
	[LinkName("QDataStream_OperatorShiftRightWithQint64")]
	public static extern void QDataStream_OperatorShiftRightWithQint64(void* c_this, int64* i);
	[LinkName("QDataStream_OperatorShiftRightWithQuint64")]
	public static extern void QDataStream_OperatorShiftRightWithQuint64(void* c_this, uint64* i);
	[LinkName("QDataStream_OperatorShiftRightWithBool")]
	public static extern void QDataStream_OperatorShiftRightWithBool(void* c_this, bool* i);
	[LinkName("QDataStream_OperatorShiftRightWithFloat")]
	public static extern void QDataStream_OperatorShiftRightWithFloat(void* c_this, float* f);
	[LinkName("QDataStream_OperatorShiftRightWithDouble")]
	public static extern void QDataStream_OperatorShiftRightWithDouble(void* c_this, double* f);
	[LinkName("QDataStream_OperatorShiftRightWithStr")]
	public static extern void QDataStream_OperatorShiftRightWithStr(void* c_this, char8[] str);
	[LinkName("QDataStream_OperatorShiftLeft")]
	public static extern void QDataStream_OperatorShiftLeft(void* c_this, int8 i);
	[LinkName("QDataStream_OperatorShiftLeftWithQint8")]
	public static extern void QDataStream_OperatorShiftLeftWithQint8(void* c_this, int8 i);
	[LinkName("QDataStream_OperatorShiftLeftWithQuint8")]
	public static extern void QDataStream_OperatorShiftLeftWithQuint8(void* c_this, uint8 i);
	[LinkName("QDataStream_OperatorShiftLeftWithQint16")]
	public static extern void QDataStream_OperatorShiftLeftWithQint16(void* c_this, int16 i);
	[LinkName("QDataStream_OperatorShiftLeftWithQuint16")]
	public static extern void QDataStream_OperatorShiftLeftWithQuint16(void* c_this, uint16 i);
	[LinkName("QDataStream_OperatorShiftLeftWithQint32")]
	public static extern void QDataStream_OperatorShiftLeftWithQint32(void* c_this, int32 i);
	[LinkName("QDataStream_OperatorShiftLeftWithQuint32")]
	public static extern void QDataStream_OperatorShiftLeftWithQuint32(void* c_this, uint32 i);
	[LinkName("QDataStream_OperatorShiftLeftWithQint64")]
	public static extern void QDataStream_OperatorShiftLeftWithQint64(void* c_this, int64 i);
	[LinkName("QDataStream_OperatorShiftLeftWithQuint64")]
	public static extern void QDataStream_OperatorShiftLeftWithQuint64(void* c_this, uint64 i);
	[LinkName("QDataStream_OperatorShiftLeftWithBool")]
	public static extern void QDataStream_OperatorShiftLeftWithBool(void* c_this, bool i);
	[LinkName("QDataStream_OperatorShiftLeftWithFloat")]
	public static extern void QDataStream_OperatorShiftLeftWithFloat(void* c_this, float f);
	[LinkName("QDataStream_OperatorShiftLeftWithDouble")]
	public static extern void QDataStream_OperatorShiftLeftWithDouble(void* c_this, double f);
	[LinkName("QDataStream_OperatorShiftLeftWithStr")]
	public static extern void QDataStream_OperatorShiftLeftWithStr(void* c_this, char8[] str);
	[LinkName("QDataStream_ReadBytes")]
	public static extern void* QDataStream_ReadBytes(void* c_this, char8[] param1, uint32* lenVal);
	[LinkName("QDataStream_ReadRawData")]
	public static extern int32 QDataStream_ReadRawData(void* c_this, char8[] param1, int32 lenVal);
	[LinkName("QDataStream_WriteBytes")]
	public static extern void QDataStream_WriteBytes(void* c_this, char8[] param1, uint32 lenVal);
	[LinkName("QDataStream_WriteRawData")]
	public static extern int32 QDataStream_WriteRawData(void* c_this, char8[] param1, int32 lenVal);
	[LinkName("QDataStream_SkipRawData")]
	public static extern int32 QDataStream_SkipRawData(void* c_this, int32 lenVal);
	[LinkName("QDataStream_StartTransaction")]
	public static extern void QDataStream_StartTransaction(void* c_this);
	[LinkName("QDataStream_CommitTransaction")]
	public static extern bool QDataStream_CommitTransaction(void* c_this);
	[LinkName("QDataStream_RollbackTransaction")]
	public static extern void QDataStream_RollbackTransaction(void* c_this);
	[LinkName("QDataStream_AbortTransaction")]
	public static extern void QDataStream_AbortTransaction(void* c_this);
	[LinkName("QDataStream_IsDeviceTransactionStarted")]
	public static extern bool QDataStream_IsDeviceTransactionStarted(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QDataStream_Delete")]
	public static extern void QDataStream_Delete(void* self);
}