using System;
using System.Interop;
namespace Qt;

public struct QTextList
{
	[LinkName("QTextList_new")]
	public static extern void* QTextList_new(QTextDocument doc);
	[LinkName("QTextList_MetaObject")]
	public static extern QMetaObject QTextList_MetaObject(void* c_this);
	[LinkName("QTextList_Metacast")]
	public static extern void QTextList_Metacast(void* c_this, char8[] param1);
	[LinkName("QTextList_Metacall")]
	public static extern int32 QTextList_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTextList_Tr")]
	public static extern char8[] QTextList_Tr(char8[] s);
	[LinkName("QTextList_Count")]
	public static extern int32 QTextList_Count(void* c_this);
	[LinkName("QTextList_Item")]
	public static extern QTextBlock QTextList_Item(void* c_this, int32 i);
	[LinkName("QTextList_ItemNumber")]
	public static extern int32 QTextList_ItemNumber(void* c_this, QTextBlock param1);
	[LinkName("QTextList_ItemText")]
	public static extern char8[] QTextList_ItemText(void* c_this, QTextBlock param1);
	[LinkName("QTextList_RemoveItem")]
	public static extern void QTextList_RemoveItem(void* c_this, int32 i);
	[LinkName("QTextList_Remove")]
	public static extern void QTextList_Remove(void* c_this, QTextBlock param1);
	[LinkName("QTextList_Add")]
	public static extern void QTextList_Add(void* c_this, QTextBlock block);
	[LinkName("QTextList_SetFormat")]
	public static extern void QTextList_SetFormat(void* c_this, QTextListFormat format);
	[LinkName("QTextList_Format")]
	public static extern QTextListFormat QTextList_Format(void* c_this);
	[LinkName("QTextList_Tr2")]
	public static extern char8[] QTextList_Tr2(char8[] s, char8[] c);
	[LinkName("QTextList_Tr3")]
	public static extern char8[] QTextList_Tr3(char8[] s, char8[] c, int32 n);
}