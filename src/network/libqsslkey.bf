using System;
using System.Interop;
namespace Qt;

public struct QSslKey
{
	[LinkName("QSslKey_new")]
	public static extern void* QSslKey_new();
	[LinkName("QSslKey_new2")]
	public static extern void* QSslKey_new2(uint8[] encoded, int64 algorithm);
	[LinkName("QSslKey_new3")]
	public static extern void* QSslKey_new3(QIODevice device, int64 algorithm);
	[LinkName("QSslKey_new4")]
	public static extern void* QSslKey_new4(void handle);
	[LinkName("QSslKey_new5")]
	public static extern void* QSslKey_new5(QSslKey other);
	[LinkName("QSslKey_new6")]
	public static extern void* QSslKey_new6(uint8[] encoded, int64 algorithm, int64 format);
	[LinkName("QSslKey_new7")]
	public static extern void* QSslKey_new7(uint8[] encoded, int64 algorithm, int64 format, int64 typeVal);
	[LinkName("QSslKey_new8")]
	public static extern void* QSslKey_new8(uint8[] encoded, int64 algorithm, int64 format, int64 typeVal, uint8[] passPhrase);
	[LinkName("QSslKey_new9")]
	public static extern void* QSslKey_new9(QIODevice device, int64 algorithm, int64 format);
	[LinkName("QSslKey_new10")]
	public static extern void* QSslKey_new10(QIODevice device, int64 algorithm, int64 format, int64 typeVal);
	[LinkName("QSslKey_new11")]
	public static extern void* QSslKey_new11(QIODevice device, int64 algorithm, int64 format, int64 typeVal, uint8[] passPhrase);
	[LinkName("QSslKey_new12")]
	public static extern void* QSslKey_new12(void handle, int64 typeVal);
	[LinkName("QSslKey_OperatorAssign")]
	public static extern void QSslKey_OperatorAssign(void* c_this, QSslKey other);
	[LinkName("QSslKey_Swap")]
	public static extern void QSslKey_Swap(void* c_this, QSslKey other);
	[LinkName("QSslKey_IsNull")]
	public static extern bool QSslKey_IsNull(void* c_this);
	[LinkName("QSslKey_Clear")]
	public static extern void QSslKey_Clear(void* c_this);
	[LinkName("QSslKey_Length")]
	public static extern int32 QSslKey_Length(void* c_this);
	[LinkName("QSslKey_Type")]
	public static extern int64 QSslKey_Type(void* c_this);
	[LinkName("QSslKey_Algorithm")]
	public static extern int64 QSslKey_Algorithm(void* c_this);
	[LinkName("QSslKey_ToPem")]
	public static extern uint8[] QSslKey_ToPem(void* c_this);
	[LinkName("QSslKey_ToDer")]
	public static extern uint8[] QSslKey_ToDer(void* c_this);
	[LinkName("QSslKey_Handle")]
	public static extern void QSslKey_Handle(void* c_this);
	[LinkName("QSslKey_OperatorEqual")]
	public static extern bool QSslKey_OperatorEqual(void* c_this, QSslKey key);
	[LinkName("QSslKey_OperatorNotEqual")]
	public static extern bool QSslKey_OperatorNotEqual(void* c_this, QSslKey key);
	[LinkName("QSslKey_ToPem1")]
	public static extern uint8[] QSslKey_ToPem1(void* c_this, uint8[] passPhrase);
	[LinkName("QSslKey_ToDer1")]
	public static extern uint8[] QSslKey_ToDer1(void* c_this, uint8[] passPhrase);
}