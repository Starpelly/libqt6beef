using System;
using System.Interop;
namespace Qt;

public struct QPageRanges
{
	[LinkName("QPageRanges_new")]
	public static extern void* QPageRanges_new();
	[LinkName("QPageRanges_new2")]
	public static extern void* QPageRanges_new2(QPageRanges other);
	[LinkName("QPageRanges_OperatorAssign")]
	public static extern void QPageRanges_OperatorAssign(void* c_this, QPageRanges other);
	[LinkName("QPageRanges_Swap")]
	public static extern void QPageRanges_Swap(void* c_this, QPageRanges other);
	[LinkName("QPageRanges_AddPage")]
	public static extern void QPageRanges_AddPage(void* c_this, int32 pageNumber);
	[LinkName("QPageRanges_AddRange")]
	public static extern void QPageRanges_AddRange(void* c_this, int32 from, int32 to);
	[LinkName("QPageRanges_ToRangeList")]
	public static extern QPageRanges__Range[] QPageRanges_ToRangeList(void* c_this);
	[LinkName("QPageRanges_Clear")]
	public static extern void QPageRanges_Clear(void* c_this);
	[LinkName("QPageRanges_ToString")]
	public static extern char8[] QPageRanges_ToString(void* c_this);
	[LinkName("QPageRanges_FromString")]
	public static extern QPageRanges QPageRanges_FromString(char8[] ranges);
	[LinkName("QPageRanges_Contains")]
	public static extern bool QPageRanges_Contains(void* c_this, int32 pageNumber);
	[LinkName("QPageRanges_IsEmpty")]
	public static extern bool QPageRanges_IsEmpty(void* c_this);
	[LinkName("QPageRanges_FirstPage")]
	public static extern int32 QPageRanges_FirstPage(void* c_this);
	[LinkName("QPageRanges_LastPage")]
	public static extern int32 QPageRanges_LastPage(void* c_this);
	[LinkName("QPageRanges_Detach")]
	public static extern void QPageRanges_Detach(void* c_this);
}
public struct QPageRanges__Range
{
	[LinkName("QPageRanges__Range_new")]
	public static extern void* QPageRanges__Range_new(QPageRanges__Range other);
	[LinkName("QPageRanges__Range_new2")]
	public static extern void* QPageRanges__Range_new2(QPageRanges__Range other);
	[LinkName("QPageRanges__Range_new3")]
	public static extern void* QPageRanges__Range_new3();
	[LinkName("QPageRanges__Range_new4")]
	public static extern void* QPageRanges__Range_new4(QPageRanges__Range param1);
	[LinkName("QPageRanges__Range_Contains")]
	public static extern bool QPageRanges__Range_Contains(void* c_this, int32 pageNumber);
}