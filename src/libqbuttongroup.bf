using System;
using System.Interop;
namespace Qt;

public struct QButtonGroup
{
	[LinkName("QButtonGroup_new")]
	public static extern void* QButtonGroup_new();
	[LinkName("QButtonGroup_new2")]
	public static extern void* QButtonGroup_new2(QObject parent);
	[LinkName("QButtonGroup_MetaObject")]
	public static extern QMetaObject QButtonGroup_MetaObject(void* c_this);
	[LinkName("QButtonGroup_Metacast")]
	public static extern void QButtonGroup_Metacast(void* c_this, char8[] param1);
	[LinkName("QButtonGroup_Metacall")]
	public static extern int32 QButtonGroup_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QButtonGroup_Tr")]
	public static extern char8[] QButtonGroup_Tr(char8[] s);
	[LinkName("QButtonGroup_SetExclusive")]
	public static extern void QButtonGroup_SetExclusive(void* c_this, bool exclusive);
	[LinkName("QButtonGroup_Exclusive")]
	public static extern bool QButtonGroup_Exclusive(void* c_this);
	[LinkName("QButtonGroup_AddButton")]
	public static extern void QButtonGroup_AddButton(void* c_this, QAbstractButton param1);
	[LinkName("QButtonGroup_RemoveButton")]
	public static extern void QButtonGroup_RemoveButton(void* c_this, QAbstractButton param1);
	[LinkName("QButtonGroup_Buttons")]
	public static extern QAbstractButton[] QButtonGroup_Buttons(void* c_this);
	[LinkName("QButtonGroup_CheckedButton")]
	public static extern QAbstractButton QButtonGroup_CheckedButton(void* c_this);
	[LinkName("QButtonGroup_Button")]
	public static extern QAbstractButton QButtonGroup_Button(void* c_this, int32 id);
	[LinkName("QButtonGroup_SetId")]
	public static extern void QButtonGroup_SetId(void* c_this, QAbstractButton button, int32 id);
	[LinkName("QButtonGroup_Id")]
	public static extern int32 QButtonGroup_Id(void* c_this, QAbstractButton button);
	[LinkName("QButtonGroup_CheckedId")]
	public static extern int32 QButtonGroup_CheckedId(void* c_this);
	[LinkName("QButtonGroup_ButtonClicked")]
	public static extern void QButtonGroup_ButtonClicked(void* c_this, QAbstractButton param1);
	[LinkName("QButtonGroup_ButtonPressed")]
	public static extern void QButtonGroup_ButtonPressed(void* c_this, QAbstractButton param1);
	[LinkName("QButtonGroup_ButtonReleased")]
	public static extern void QButtonGroup_ButtonReleased(void* c_this, QAbstractButton param1);
	[LinkName("QButtonGroup_ButtonToggled")]
	public static extern void QButtonGroup_ButtonToggled(void* c_this, QAbstractButton param1, bool param2);
	[LinkName("QButtonGroup_IdClicked")]
	public static extern void QButtonGroup_IdClicked(void* c_this, int32 param1);
	[LinkName("QButtonGroup_IdPressed")]
	public static extern void QButtonGroup_IdPressed(void* c_this, int32 param1);
	[LinkName("QButtonGroup_IdReleased")]
	public static extern void QButtonGroup_IdReleased(void* c_this, int32 param1);
	[LinkName("QButtonGroup_IdToggled")]
	public static extern void QButtonGroup_IdToggled(void* c_this, int32 param1, bool param2);
	[LinkName("QButtonGroup_Tr2")]
	public static extern char8[] QButtonGroup_Tr2(char8[] s, char8[] c);
	[LinkName("QButtonGroup_Tr3")]
	public static extern char8[] QButtonGroup_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QButtonGroup_AddButton2")]
	public static extern void QButtonGroup_AddButton2(void* c_this, QAbstractButton param1, int32 id);
}