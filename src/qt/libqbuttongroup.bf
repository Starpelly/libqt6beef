using System;
using System.Interop;
namespace Qt;

public struct QButtonGroup : QObject
{
	[LinkName("QButtonGroup_new")]
	public static extern QButtonGroup* QButtonGroup_new();
	[LinkName("QButtonGroup_new2")]
	public static extern QButtonGroup* QButtonGroup_new2(QObject* parent);
	[LinkName("QButtonGroup_MetaObject")]
	public static extern QMetaObject* QButtonGroup_MetaObject(Self* c_this);
	[LinkName("QButtonGroup_Metacast")]
	public static extern void* QButtonGroup_Metacast(Self* c_this, char8[] param1);
	[LinkName("QButtonGroup_Metacall")]
	public static extern int32 QButtonGroup_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QButtonGroup_Tr")]
	public static extern libqt_string QButtonGroup_Tr(char8[] s);
	[LinkName("QButtonGroup_SetExclusive")]
	public static extern void QButtonGroup_SetExclusive(Self* c_this, bool exclusive);
	[LinkName("QButtonGroup_Exclusive")]
	public static extern bool QButtonGroup_Exclusive(Self* c_this);
	[LinkName("QButtonGroup_AddButton")]
	public static extern void QButtonGroup_AddButton(Self* c_this, QAbstractButton* param1);
	[LinkName("QButtonGroup_RemoveButton")]
	public static extern void QButtonGroup_RemoveButton(Self* c_this, QAbstractButton* param1);
	[LinkName("QButtonGroup_Buttons")]
	public static extern QAbstractButton*[] QButtonGroup_Buttons(Self* c_this);
	[LinkName("QButtonGroup_CheckedButton")]
	public static extern QAbstractButton* QButtonGroup_CheckedButton(Self* c_this);
	[LinkName("QButtonGroup_Button")]
	public static extern QAbstractButton* QButtonGroup_Button(Self* c_this, int32 id);
	[LinkName("QButtonGroup_SetId")]
	public static extern void QButtonGroup_SetId(Self* c_this, QAbstractButton* button, int32 id);
	[LinkName("QButtonGroup_Id")]
	public static extern int32 QButtonGroup_Id(Self* c_this, QAbstractButton* button);
	[LinkName("QButtonGroup_CheckedId")]
	public static extern int32 QButtonGroup_CheckedId(Self* c_this);
	[LinkName("QButtonGroup_Connect_ButtonClicked")]
	public static extern void QButtonGroup_Connect_ButtonClicked(Self* c_this, c_intptr slot);
	[LinkName("QButtonGroup_Connect_ButtonPressed")]
	public static extern void QButtonGroup_Connect_ButtonPressed(Self* c_this, c_intptr slot);
	[LinkName("QButtonGroup_Connect_ButtonReleased")]
	public static extern void QButtonGroup_Connect_ButtonReleased(Self* c_this, c_intptr slot);
	[LinkName("QButtonGroup_Connect_ButtonToggled")]
	public static extern void QButtonGroup_Connect_ButtonToggled(Self* c_this, c_intptr slot);
	[LinkName("QButtonGroup_Connect_IdClicked")]
	public static extern void QButtonGroup_Connect_IdClicked(Self* c_this, c_intptr slot);
	[LinkName("QButtonGroup_Connect_IdPressed")]
	public static extern void QButtonGroup_Connect_IdPressed(Self* c_this, c_intptr slot);
	[LinkName("QButtonGroup_Connect_IdReleased")]
	public static extern void QButtonGroup_Connect_IdReleased(Self* c_this, c_intptr slot);
	[LinkName("QButtonGroup_Connect_IdToggled")]
	public static extern void QButtonGroup_Connect_IdToggled(Self* c_this, c_intptr slot);
	[LinkName("QButtonGroup_Tr2")]
	public static extern libqt_string QButtonGroup_Tr2(char8[] s, char8[] c);
	[LinkName("QButtonGroup_Tr3")]
	public static extern libqt_string QButtonGroup_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QButtonGroup_AddButton2")]
	public static extern void QButtonGroup_AddButton2(Self* c_this, QAbstractButton* param1, int32 id);
}