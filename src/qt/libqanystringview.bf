using System;
using System.Interop;
namespace Qt;

public struct QAnyStringView
{
	[LinkName("QAnyStringView_new")]
	public static extern QAnyStringView* QAnyStringView_new(QAnyStringView* other);
	[LinkName("QAnyStringView_new2")]
	public static extern QAnyStringView* QAnyStringView_new2(QAnyStringView* other);
	[LinkName("QAnyStringView_new3")]
	public static extern QAnyStringView* QAnyStringView_new3();
	[LinkName("QAnyStringView_new4")]
	public static extern QAnyStringView* QAnyStringView_new4(libqt_string str);
	[LinkName("QAnyStringView_new5")]
	public static extern QAnyStringView* QAnyStringView_new5(libqt_string str);
	[LinkName("QAnyStringView_new6")]
	public static extern QAnyStringView* QAnyStringView_new6(QChar* c);
	[LinkName("QAnyStringView_new7")]
	public static extern QAnyStringView* QAnyStringView_new7(QAnyStringView* param1);
	[LinkName("QAnyStringView_ToString")]
	public static extern libqt_string QAnyStringView_ToString(Self* c_this);
	[LinkName("QAnyStringView_Size")]
	public static extern int32 QAnyStringView_Size(Self* c_this);
	[LinkName("QAnyStringView_Data")]
	public static extern void* QAnyStringView_Data(Self* c_this);
	[LinkName("QAnyStringView_Compare")]
	public static extern int32 QAnyStringView_Compare(QAnyStringView lhs, QAnyStringView rhs);
	[LinkName("QAnyStringView_Equal")]
	public static extern bool QAnyStringView_Equal(QAnyStringView lhs, QAnyStringView rhs);
	[LinkName("QAnyStringView_Front")]
	public static extern QChar QAnyStringView_Front(Self* c_this);
	[LinkName("QAnyStringView_Back")]
	public static extern QChar QAnyStringView_Back(Self* c_this);
	[LinkName("QAnyStringView_Empty")]
	public static extern bool QAnyStringView_Empty(Self* c_this);
	[LinkName("QAnyStringView_SizeBytes")]
	public static extern int32 QAnyStringView_SizeBytes(Self* c_this);
	[LinkName("QAnyStringView_IsNull")]
	public static extern bool QAnyStringView_IsNull(Self* c_this);
	[LinkName("QAnyStringView_IsEmpty")]
	public static extern bool QAnyStringView_IsEmpty(Self* c_this);
	[LinkName("QAnyStringView_Length")]
	public static extern int32 QAnyStringView_Length(Self* c_this);
	[LinkName("QAnyStringView_Compare3")]
	public static extern int32 QAnyStringView_Compare3(QAnyStringView lhs, QAnyStringView rhs, int64 cs);
}