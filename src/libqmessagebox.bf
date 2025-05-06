using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QMessageBox__Icon
{
	NoIcon = 0,
	Information = 1,
	Warning = 2,
	Critical = 3,
	Question = 4,
}
[AllowDuplicates]
public enum QMessageBox__ButtonRole
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
public enum QMessageBox__StandardButton
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
	YesAll = 32768,
	NoAll = 131072,
	Default = 256,
	Escape = 512,
	FlagMask = 768,
	ButtonMask = -769,
}
public struct QMessageBox
{
	[LinkName("QMessageBox_new")]
	public static extern void* QMessageBox_new(QWidget parent);
	[LinkName("QMessageBox_new2")]
	public static extern void* QMessageBox_new2();
	[LinkName("QMessageBox_new3")]
	public static extern void* QMessageBox_new3(int64 icon, char8[] title, char8[] text);
	[LinkName("QMessageBox_new4")]
	public static extern void* QMessageBox_new4(char8[] title, char8[] text, int64 icon, int32 button0, int32 button1, int32 button2);
	[LinkName("QMessageBox_new5")]
	public static extern void* QMessageBox_new5(int64 icon, char8[] title, char8[] text, int64 buttons);
	[LinkName("QMessageBox_new6")]
	public static extern void* QMessageBox_new6(int64 icon, char8[] title, char8[] text, int64 buttons, QWidget parent);
	[LinkName("QMessageBox_new7")]
	public static extern void* QMessageBox_new7(int64 icon, char8[] title, char8[] text, int64 buttons, QWidget parent, int64 flags);
	[LinkName("QMessageBox_new8")]
	public static extern void* QMessageBox_new8(char8[] title, char8[] text, int64 icon, int32 button0, int32 button1, int32 button2, QWidget parent);
	[LinkName("QMessageBox_new9")]
	public static extern void* QMessageBox_new9(char8[] title, char8[] text, int64 icon, int32 button0, int32 button1, int32 button2, QWidget parent, int64 f);
	[LinkName("QMessageBox_MetaObject")]
	public static extern QMetaObject QMessageBox_MetaObject(void* c_this);
	[LinkName("QMessageBox_Metacast")]
	public static extern void QMessageBox_Metacast(void* c_this, char8[] param1);
	[LinkName("QMessageBox_Metacall")]
	public static extern int32 QMessageBox_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QMessageBox_Tr")]
	public static extern char8[] QMessageBox_Tr(char8[] s);
	[LinkName("QMessageBox_AddButton")]
	public static extern void QMessageBox_AddButton(void* c_this, QAbstractButton button, int64 role);
	[LinkName("QMessageBox_AddButton2")]
	public static extern QPushButton QMessageBox_AddButton2(void* c_this, char8[] text, int64 role);
	[LinkName("QMessageBox_AddButtonWithButton")]
	public static extern QPushButton QMessageBox_AddButtonWithButton(void* c_this, int64 button);
	[LinkName("QMessageBox_RemoveButton")]
	public static extern void QMessageBox_RemoveButton(void* c_this, QAbstractButton button);
	[LinkName("QMessageBox_Buttons")]
	public static extern QAbstractButton[] QMessageBox_Buttons(void* c_this);
	[LinkName("QMessageBox_ButtonRole")]
	public static extern int64 QMessageBox_ButtonRole(void* c_this, QAbstractButton button);
	[LinkName("QMessageBox_SetStandardButtons")]
	public static extern void QMessageBox_SetStandardButtons(void* c_this, int64 buttons);
	[LinkName("QMessageBox_StandardButtons")]
	public static extern int64 QMessageBox_StandardButtons(void* c_this);
	[LinkName("QMessageBox_StandardButton")]
	public static extern int64 QMessageBox_StandardButton(void* c_this, QAbstractButton button);
	[LinkName("QMessageBox_Button")]
	public static extern QAbstractButton QMessageBox_Button(void* c_this, int64 which);
	[LinkName("QMessageBox_DefaultButton")]
	public static extern QPushButton QMessageBox_DefaultButton(void* c_this);
	[LinkName("QMessageBox_SetDefaultButton")]
	public static extern void QMessageBox_SetDefaultButton(void* c_this, QPushButton button);
	[LinkName("QMessageBox_SetDefaultButtonWithButton")]
	public static extern void QMessageBox_SetDefaultButtonWithButton(void* c_this, int64 button);
	[LinkName("QMessageBox_EscapeButton")]
	public static extern QAbstractButton QMessageBox_EscapeButton(void* c_this);
	[LinkName("QMessageBox_SetEscapeButton")]
	public static extern void QMessageBox_SetEscapeButton(void* c_this, QAbstractButton button);
	[LinkName("QMessageBox_SetEscapeButtonWithButton")]
	public static extern void QMessageBox_SetEscapeButtonWithButton(void* c_this, int64 button);
	[LinkName("QMessageBox_ClickedButton")]
	public static extern QAbstractButton QMessageBox_ClickedButton(void* c_this);
	[LinkName("QMessageBox_Text")]
	public static extern char8[] QMessageBox_Text(void* c_this);
	[LinkName("QMessageBox_SetText")]
	public static extern void QMessageBox_SetText(void* c_this, char8[] text);
	[LinkName("QMessageBox_Icon")]
	public static extern int64 QMessageBox_Icon(void* c_this);
	[LinkName("QMessageBox_SetIcon")]
	public static extern void QMessageBox_SetIcon(void* c_this, int64 icon);
	[LinkName("QMessageBox_IconPixmap")]
	public static extern QPixmap QMessageBox_IconPixmap(void* c_this);
	[LinkName("QMessageBox_SetIconPixmap")]
	public static extern void QMessageBox_SetIconPixmap(void* c_this, QPixmap pixmap);
	[LinkName("QMessageBox_TextFormat")]
	public static extern int64 QMessageBox_TextFormat(void* c_this);
	[LinkName("QMessageBox_SetTextFormat")]
	public static extern void QMessageBox_SetTextFormat(void* c_this, int64 format);
	[LinkName("QMessageBox_SetTextInteractionFlags")]
	public static extern void QMessageBox_SetTextInteractionFlags(void* c_this, int64 flags);
	[LinkName("QMessageBox_TextInteractionFlags")]
	public static extern int64 QMessageBox_TextInteractionFlags(void* c_this);
	[LinkName("QMessageBox_SetCheckBox")]
	public static extern void QMessageBox_SetCheckBox(void* c_this, QCheckBox cb);
	[LinkName("QMessageBox_CheckBox")]
	public static extern QCheckBox QMessageBox_CheckBox(void* c_this);
	[LinkName("QMessageBox_Information")]
	public static extern int64 QMessageBox_Information(QWidget parent, char8[] title, char8[] text);
	[LinkName("QMessageBox_Information2")]
	public static extern int64 QMessageBox_Information2(QWidget parent, char8[] title, char8[] text, int64 button0);
	[LinkName("QMessageBox_Question")]
	public static extern int64 QMessageBox_Question(QWidget parent, char8[] title, char8[] text);
	[LinkName("QMessageBox_Question2")]
	public static extern int32 QMessageBox_Question2(QWidget parent, char8[] title, char8[] text, int64 button0, int64 button1);
	[LinkName("QMessageBox_Warning")]
	public static extern int64 QMessageBox_Warning(QWidget parent, char8[] title, char8[] text);
	[LinkName("QMessageBox_Warning2")]
	public static extern int32 QMessageBox_Warning2(QWidget parent, char8[] title, char8[] text, int64 button0, int64 button1);
	[LinkName("QMessageBox_Critical")]
	public static extern int64 QMessageBox_Critical(QWidget parent, char8[] title, char8[] text);
	[LinkName("QMessageBox_Critical2")]
	public static extern int32 QMessageBox_Critical2(QWidget parent, char8[] title, char8[] text, int64 button0, int64 button1);
	[LinkName("QMessageBox_About")]
	public static extern void QMessageBox_About(QWidget parent, char8[] title, char8[] text);
	[LinkName("QMessageBox_AboutQt")]
	public static extern void QMessageBox_AboutQt(QWidget parent);
	[LinkName("QMessageBox_Information3")]
	public static extern int32 QMessageBox_Information3(QWidget parent, char8[] title, char8[] text, int32 button0);
	[LinkName("QMessageBox_Information4")]
	public static extern int32 QMessageBox_Information4(QWidget parent, char8[] title, char8[] text, char8[] button0Text);
	[LinkName("QMessageBox_Question3")]
	public static extern int32 QMessageBox_Question3(QWidget parent, char8[] title, char8[] text, int32 button0);
	[LinkName("QMessageBox_Question4")]
	public static extern int32 QMessageBox_Question4(QWidget parent, char8[] title, char8[] text, char8[] button0Text);
	[LinkName("QMessageBox_Warning3")]
	public static extern int32 QMessageBox_Warning3(QWidget parent, char8[] title, char8[] text, int32 button0, int32 button1);
	[LinkName("QMessageBox_Warning4")]
	public static extern int32 QMessageBox_Warning4(QWidget parent, char8[] title, char8[] text, char8[] button0Text);
	[LinkName("QMessageBox_Critical3")]
	public static extern int32 QMessageBox_Critical3(QWidget parent, char8[] title, char8[] text, int32 button0, int32 button1);
	[LinkName("QMessageBox_Critical4")]
	public static extern int32 QMessageBox_Critical4(QWidget parent, char8[] title, char8[] text, char8[] button0Text);
	[LinkName("QMessageBox_ButtonText")]
	public static extern char8[] QMessageBox_ButtonText(void* c_this, int32 button);
	[LinkName("QMessageBox_SetButtonText")]
	public static extern void QMessageBox_SetButtonText(void* c_this, int32 button, char8[] text);
	[LinkName("QMessageBox_InformativeText")]
	public static extern char8[] QMessageBox_InformativeText(void* c_this);
	[LinkName("QMessageBox_SetInformativeText")]
	public static extern void QMessageBox_SetInformativeText(void* c_this, char8[] text);
	[LinkName("QMessageBox_DetailedText")]
	public static extern char8[] QMessageBox_DetailedText(void* c_this);
	[LinkName("QMessageBox_SetDetailedText")]
	public static extern void QMessageBox_SetDetailedText(void* c_this, char8[] text);
	[LinkName("QMessageBox_SetWindowTitle")]
	public static extern void QMessageBox_SetWindowTitle(void* c_this, char8[] title);
	[LinkName("QMessageBox_SetWindowModality")]
	public static extern void QMessageBox_SetWindowModality(void* c_this, int64 windowModality);
	[LinkName("QMessageBox_StandardIcon")]
	public static extern QPixmap QMessageBox_StandardIcon(int64 icon);
	[LinkName("QMessageBox_ButtonClicked")]
	public static extern void QMessageBox_ButtonClicked(void* c_this, QAbstractButton button);
	[LinkName("QMessageBox_Event")]
	public static extern bool QMessageBox_Event(void* c_this, QEvent e);
	[LinkName("QMessageBox_ResizeEvent")]
	public static extern void QMessageBox_ResizeEvent(void* c_this, QResizeEvent event);
	[LinkName("QMessageBox_ShowEvent")]
	public static extern void QMessageBox_ShowEvent(void* c_this, QShowEvent event);
	[LinkName("QMessageBox_CloseEvent")]
	public static extern void QMessageBox_CloseEvent(void* c_this, QCloseEvent event);
	[LinkName("QMessageBox_KeyPressEvent")]
	public static extern void QMessageBox_KeyPressEvent(void* c_this, QKeyEvent event);
	[LinkName("QMessageBox_ChangeEvent")]
	public static extern void QMessageBox_ChangeEvent(void* c_this, QEvent event);
	[LinkName("QMessageBox_Tr2")]
	public static extern char8[] QMessageBox_Tr2(char8[] s, char8[] c);
	[LinkName("QMessageBox_Tr3")]
	public static extern char8[] QMessageBox_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QMessageBox_Information42")]
	public static extern int64 QMessageBox_Information42(QWidget parent, char8[] title, char8[] text, int64 buttons);
	[LinkName("QMessageBox_Information5")]
	public static extern int64 QMessageBox_Information5(QWidget parent, char8[] title, char8[] text, int64 buttons, int64 defaultButton);
	[LinkName("QMessageBox_Information52")]
	public static extern int64 QMessageBox_Information52(QWidget parent, char8[] title, char8[] text, int64 button0, int64 button1);
	[LinkName("QMessageBox_Question42")]
	public static extern int64 QMessageBox_Question42(QWidget parent, char8[] title, char8[] text, int64 buttons);
	[LinkName("QMessageBox_Question5")]
	public static extern int64 QMessageBox_Question5(QWidget parent, char8[] title, char8[] text, int64 buttons, int64 defaultButton);
	[LinkName("QMessageBox_Warning42")]
	public static extern int64 QMessageBox_Warning42(QWidget parent, char8[] title, char8[] text, int64 buttons);
	[LinkName("QMessageBox_Warning5")]
	public static extern int64 QMessageBox_Warning5(QWidget parent, char8[] title, char8[] text, int64 buttons, int64 defaultButton);
	[LinkName("QMessageBox_Critical42")]
	public static extern int64 QMessageBox_Critical42(QWidget parent, char8[] title, char8[] text, int64 buttons);
	[LinkName("QMessageBox_Critical5")]
	public static extern int64 QMessageBox_Critical5(QWidget parent, char8[] title, char8[] text, int64 buttons, int64 defaultButton);
	[LinkName("QMessageBox_AboutQt2")]
	public static extern void QMessageBox_AboutQt2(QWidget parent, char8[] title);
	[LinkName("QMessageBox_Information53")]
	public static extern int32 QMessageBox_Information53(QWidget parent, char8[] title, char8[] text, int32 button0, int32 button1);
	[LinkName("QMessageBox_Information6")]
	public static extern int32 QMessageBox_Information6(QWidget parent, char8[] title, char8[] text, int32 button0, int32 button1, int32 button2);
	[LinkName("QMessageBox_Information54")]
	public static extern int32 QMessageBox_Information54(QWidget parent, char8[] title, char8[] text, char8[] button0Text, char8[] button1Text);
	[LinkName("QMessageBox_Information62")]
	public static extern int32 QMessageBox_Information62(QWidget parent, char8[] title, char8[] text, char8[] button0Text, char8[] button1Text, char8[] button2Text);
	[LinkName("QMessageBox_Information7")]
	public static extern int32 QMessageBox_Information7(QWidget parent, char8[] title, char8[] text, char8[] button0Text, char8[] button1Text, char8[] button2Text, int32 defaultButtonNumber);
	[LinkName("QMessageBox_Information8")]
	public static extern int32 QMessageBox_Information8(QWidget parent, char8[] title, char8[] text, char8[] button0Text, char8[] button1Text, char8[] button2Text, int32 defaultButtonNumber, int32 escapeButtonNumber);
	[LinkName("QMessageBox_Question52")]
	public static extern int32 QMessageBox_Question52(QWidget parent, char8[] title, char8[] text, int32 button0, int32 button1);
	[LinkName("QMessageBox_Question6")]
	public static extern int32 QMessageBox_Question6(QWidget parent, char8[] title, char8[] text, int32 button0, int32 button1, int32 button2);
	[LinkName("QMessageBox_Question53")]
	public static extern int32 QMessageBox_Question53(QWidget parent, char8[] title, char8[] text, char8[] button0Text, char8[] button1Text);
	[LinkName("QMessageBox_Question62")]
	public static extern int32 QMessageBox_Question62(QWidget parent, char8[] title, char8[] text, char8[] button0Text, char8[] button1Text, char8[] button2Text);
	[LinkName("QMessageBox_Question7")]
	public static extern int32 QMessageBox_Question7(QWidget parent, char8[] title, char8[] text, char8[] button0Text, char8[] button1Text, char8[] button2Text, int32 defaultButtonNumber);
	[LinkName("QMessageBox_Question8")]
	public static extern int32 QMessageBox_Question8(QWidget parent, char8[] title, char8[] text, char8[] button0Text, char8[] button1Text, char8[] button2Text, int32 defaultButtonNumber, int32 escapeButtonNumber);
	[LinkName("QMessageBox_Warning6")]
	public static extern int32 QMessageBox_Warning6(QWidget parent, char8[] title, char8[] text, int32 button0, int32 button1, int32 button2);
	[LinkName("QMessageBox_Warning52")]
	public static extern int32 QMessageBox_Warning52(QWidget parent, char8[] title, char8[] text, char8[] button0Text, char8[] button1Text);
	[LinkName("QMessageBox_Warning62")]
	public static extern int32 QMessageBox_Warning62(QWidget parent, char8[] title, char8[] text, char8[] button0Text, char8[] button1Text, char8[] button2Text);
	[LinkName("QMessageBox_Warning7")]
	public static extern int32 QMessageBox_Warning7(QWidget parent, char8[] title, char8[] text, char8[] button0Text, char8[] button1Text, char8[] button2Text, int32 defaultButtonNumber);
	[LinkName("QMessageBox_Warning8")]
	public static extern int32 QMessageBox_Warning8(QWidget parent, char8[] title, char8[] text, char8[] button0Text, char8[] button1Text, char8[] button2Text, int32 defaultButtonNumber, int32 escapeButtonNumber);
	[LinkName("QMessageBox_Critical6")]
	public static extern int32 QMessageBox_Critical6(QWidget parent, char8[] title, char8[] text, int32 button0, int32 button1, int32 button2);
	[LinkName("QMessageBox_Critical52")]
	public static extern int32 QMessageBox_Critical52(QWidget parent, char8[] title, char8[] text, char8[] button0Text, char8[] button1Text);
	[LinkName("QMessageBox_Critical62")]
	public static extern int32 QMessageBox_Critical62(QWidget parent, char8[] title, char8[] text, char8[] button0Text, char8[] button1Text, char8[] button2Text);
	[LinkName("QMessageBox_Critical7")]
	public static extern int32 QMessageBox_Critical7(QWidget parent, char8[] title, char8[] text, char8[] button0Text, char8[] button1Text, char8[] button2Text, int32 defaultButtonNumber);
	[LinkName("QMessageBox_Critical8")]
	public static extern int32 QMessageBox_Critical8(QWidget parent, char8[] title, char8[] text, char8[] button0Text, char8[] button1Text, char8[] button2Text, int32 defaultButtonNumber, int32 escapeButtonNumber);
}