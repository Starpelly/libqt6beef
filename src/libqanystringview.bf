using System;
using System.Interop;
namespace Qt;

public struct QAnyStringView
{
	[LinkName("QAnyStringView_new")]
	public static extern void* QAnyStringView_new(char8[] other);
	[LinkName("QAnyStringView_new2")]
	public static extern void* QAnyStringView_new2(char8[] other);
	[LinkName("QAnyStringView_new3")]
	public static extern void* QAnyStringView_new3();
	[LinkName("QAnyStringView_new4")]
	public static extern void* QAnyStringView_new4(uint8[] str);
	[LinkName("QAnyStringView_new5")]
	public static extern void* QAnyStringView_new5(char8[] str);
	[LinkName("QAnyStringView_new6")]
	public static extern void* QAnyStringView_new6(QChar c);
	[LinkName("QAnyStringView_new7")]
	public static extern void* QAnyStringView_new7(char8[] param1);
	[LinkName("QAnyStringView_ToString")]
	public static extern char8[] QAnyStringView_ToString(void* c_this);
	[LinkName("QAnyStringView_Size")]
	public static extern int32 QAnyStringView_Size(void* c_this);
	[LinkName("QAnyStringView_Data")]
	public static extern void QAnyStringView_Data(void* c_this);
	[LinkName("QAnyStringView_Compare")]
	public static extern int32 QAnyStringView_Compare(char8[] lhs, char8[] rhs);
	[LinkName("QAnyStringView_Equal")]
	public static extern bool QAnyStringView_Equal(char8[] lhs, char8[] rhs);
	[LinkName("QAnyStringView_Front")]
	public static extern QChar QAnyStringView_Front(void* c_this);
	[LinkName("QAnyStringView_Back")]
	public static extern QChar QAnyStringView_Back(void* c_this);
	[LinkName("QAnyStringView_Empty")]
	public static extern bool QAnyStringView_Empty(void* c_this);
	[LinkName("QAnyStringView_SizeBytes")]
	public static extern int32 QAnyStringView_SizeBytes(void* c_this);
	[LinkName("QAnyStringView_IsNull")]
	public static extern bool QAnyStringView_IsNull(void* c_this);
	[LinkName("QAnyStringView_IsEmpty")]
	public static extern bool QAnyStringView_IsEmpty(void* c_this);
	[LinkName("QAnyStringView_Length")]
	public static extern int32 QAnyStringView_Length(void* c_this);
	[LinkName("QAnyStringView_Compare3")]
	public static extern int32 QAnyStringView_Compare3(char8[] lhs, char8[] rhs, int64 cs);
}