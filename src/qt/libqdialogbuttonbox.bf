using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDialogButtonBox__ButtonRole
{
	InvalidRole = -1,
	AcceptRole = 0,
	RejectRole = 1,
	DestructiveRole = 2,
	ActionRole = 3,
	HelpRole = 4,
	YesRole = 5,
	NoRole = 6,
	ResetRole = 7,
	ApplyRole = 8,
	NRoles = 9,
}
[AllowDuplicates]
public enum QDialogButtonBox__StandardButton
{
	NoButton = 0,
	Ok = 1024,
	Save = 2048,
	SaveAll = 4096,
	Open = 8192,
	Yes = 16384,
	YesToAll = 32768,
	No = 65536,
	NoToAll = 131072,
	Abort = 262144,
	Retry = 524288,
	Ignore = 1048576,
	Close = 2097152,
	Cancel = 4194304,
	Discard = 8388608,
	Help = 16777216,
	Apply = 33554432,
	Reset = 67108864,
	RestoreDefaults = 134217728,
	FirstButton = 1024,
	LastButton = 134217728,
}
[AllowDuplicates]
public enum QDialogButtonBox__ButtonLayout
{
	WinLayout = 0,
	MacLayout = 1,
	KdeLayout = 2,
	GnomeLayout = 3,
	AndroidLayout = 4,
}
public struct QDialogButtonBox : QWidget
{
	[LinkName("QDialogButtonBox_new")]
	public static extern QDialogButtonBox* QDialogButtonBox_new(QWidget* parent);
	[LinkName("QDialogButtonBox_new2")]
	public static extern QDialogButtonBox* QDialogButtonBox_new2();
	[LinkName("QDialogButtonBox_new3")]
	public static extern QDialogButtonBox* QDialogButtonBox_new3(int64 orientation);
	[LinkName("QDialogButtonBox_new4")]
	public static extern QDialogButtonBox* QDialogButtonBox_new4(int64 buttons);
	[LinkName("QDialogButtonBox_new5")]
	public static extern QDialogButtonBox* QDialogButtonBox_new5(int64 buttons, int64 orientation);
	[LinkName("QDialogButtonBox_new6")]
	public static extern QDialogButtonBox* QDialogButtonBox_new6(int64 orientation, QWidget* parent);
	[LinkName("QDialogButtonBox_new7")]
	public static extern QDialogButtonBox* QDialogButtonBox_new7(int64 buttons, QWidget* parent);
	[LinkName("QDialogButtonBox_new8")]
	public static extern QDialogButtonBox* QDialogButtonBox_new8(int64 buttons, int64 orientation, QWidget* parent);
	[LinkName("QDialogButtonBox_MetaObject")]
	public static extern QMetaObject* QDialogButtonBox_MetaObject(Self* c_this);
	[LinkName("QDialogButtonBox_Metacast")]
	public static extern void* QDialogButtonBox_Metacast(Self* c_this, char8[] param1);
	[LinkName("QDialogButtonBox_Metacall")]
	public static extern int32 QDialogButtonBox_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QDialogButtonBox_Tr")]
	public static extern libqt_string QDialogButtonBox_Tr(char8[] s);
	[LinkName("QDialogButtonBox_SetOrientation")]
	public static extern void QDialogButtonBox_SetOrientation(Self* c_this, int64 orientation);
	[LinkName("QDialogButtonBox_Orientation")]
	public static extern int64 QDialogButtonBox_Orientation(Self* c_this);
	[LinkName("QDialogButtonBox_AddButton")]
	public static extern void QDialogButtonBox_AddButton(Self* c_this, QAbstractButton* button, int64 role);
	[LinkName("QDialogButtonBox_AddButton2")]
	public static extern QPushButton* QDialogButtonBox_AddButton2(Self* c_this, libqt_string text, int64 role);
	[LinkName("QDialogButtonBox_AddButtonWithButton")]
	public static extern QPushButton* QDialogButtonBox_AddButtonWithButton(Self* c_this, int64 button);
	[LinkName("QDialogButtonBox_RemoveButton")]
	public static extern void QDialogButtonBox_RemoveButton(Self* c_this, QAbstractButton* button);
	[LinkName("QDialogButtonBox_Clear")]
	public static extern void QDialogButtonBox_Clear(Self* c_this);
	[LinkName("QDialogButtonBox_Buttons")]
	public static extern QAbstractButton*[] QDialogButtonBox_Buttons(Self* c_this);
	[LinkName("QDialogButtonBox_ButtonRole")]
	public static extern int64 QDialogButtonBox_ButtonRole(Self* c_this, QAbstractButton* button);
	[LinkName("QDialogButtonBox_SetStandardButtons")]
	public static extern void QDialogButtonBox_SetStandardButtons(Self* c_this, int64 buttons);
	[LinkName("QDialogButtonBox_StandardButtons")]
	public static extern int64 QDialogButtonBox_StandardButtons(Self* c_this);
	[LinkName("QDialogButtonBox_StandardButton")]
	public static extern int64 QDialogButtonBox_StandardButton(Self* c_this, QAbstractButton* button);
	[LinkName("QDialogButtonBox_Button")]
	public static extern QPushButton* QDialogButtonBox_Button(Self* c_this, int64 which);
	[LinkName("QDialogButtonBox_SetCenterButtons")]
	public static extern void QDialogButtonBox_SetCenterButtons(Self* c_this, bool center);
	[LinkName("QDialogButtonBox_CenterButtons")]
	public static extern bool QDialogButtonBox_CenterButtons(Self* c_this);
	[LinkName("QDialogButtonBox_Clicked")]
	public static extern void QDialogButtonBox_Clicked(Self* c_this, QAbstractButton* button);
	[LinkName("QDialogButtonBox_Accepted")]
	public static extern void QDialogButtonBox_Accepted(Self* c_this);
	[LinkName("QDialogButtonBox_HelpRequested")]
	public static extern void QDialogButtonBox_HelpRequested(Self* c_this);
	[LinkName("QDialogButtonBox_Rejected")]
	public static extern void QDialogButtonBox_Rejected(Self* c_this);
	[LinkName("QDialogButtonBox_ChangeEvent")]
	public static extern void QDialogButtonBox_ChangeEvent(Self* c_this, QEvent* event);
	[LinkName("QDialogButtonBox_Event")]
	public static extern bool QDialogButtonBox_Event(Self* c_this, QEvent* event);
	[LinkName("QDialogButtonBox_Tr2")]
	public static extern libqt_string QDialogButtonBox_Tr2(char8[] s, char8[] c);
	[LinkName("QDialogButtonBox_Tr3")]
	public static extern libqt_string QDialogButtonBox_Tr3(char8[] s, char8[] c, int32 n);
}