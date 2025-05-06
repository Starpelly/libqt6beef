using System;
using System.Interop;
namespace Qt;

public struct QTextList : QTextBlockGroup
{
	[LinkName("QTextList_new")]
	public static extern QTextList* QTextList_new(QTextDocument* doc);
	[LinkName("QTextList_MetaObject")]
	public static extern QMetaObject* QTextList_MetaObject(Self* c_this);
	[LinkName("QTextList_Metacast")]
	public static extern void* QTextList_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTextList_Metacall")]
	public static extern int32 QTextList_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTextList_Tr")]
	public static extern libqt_string QTextList_Tr(char8[] s);
	[LinkName("QTextList_Count")]
	public static extern int32 QTextList_Count(Self* c_this);
	[LinkName("QTextList_Item")]
	public static extern QTextBlock QTextList_Item(Self* c_this, int32 i);
	[LinkName("QTextList_ItemNumber")]
	public static extern int32 QTextList_ItemNumber(Self* c_this, QTextBlock* param1);
	[LinkName("QTextList_ItemText")]
	public static extern libqt_string QTextList_ItemText(Self* c_this, QTextBlock* param1);
	[LinkName("QTextList_RemoveItem")]
	public static extern void QTextList_RemoveItem(Self* c_this, int32 i);
	[LinkName("QTextList_Remove")]
	public static extern void QTextList_Remove(Self* c_this, QTextBlock* param1);
	[LinkName("QTextList_Add")]
	public static extern void QTextList_Add(Self* c_this, QTextBlock* block);
	[LinkName("QTextList_SetFormat")]
	public static extern void QTextList_SetFormat(Self* c_this, QTextListFormat* format);
	[LinkName("QTextList_Format")]
	public static extern QTextListFormat QTextList_Format(Self* c_this);
	[LinkName("QTextList_Tr2")]
	public static extern libqt_string QTextList_Tr2(char8[] s, char8[] c);
	[LinkName("QTextList_Tr3")]
	public static extern libqt_string QTextList_Tr3(char8[] s, char8[] c, int32 n);
}