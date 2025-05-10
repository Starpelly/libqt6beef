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
public class QMessageBox
{
	protected void* nativePtr;
	
	public this(void* parent)
	{
		this.nativePtr = CQt.QMessageBox_new(parent);
	}
	
	public ~this()
	{
		CQt.QMessageBox_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QMessageBox_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QMessageBox_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QMessageBox_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QMessageBox_Tr(s);
	}
	
	public void AddButton(void* button, int64 role)
	{
		CQt.QMessageBox_AddButton(this.nativePtr, button, role);
	}
	
	public void* AddButton2(libqt_string text, int64 role)
	{
		return CQt.QMessageBox_AddButton2(this.nativePtr, text, role);
	}
	
	public void* AddButtonWithButton(int64 button)
	{
		return CQt.QMessageBox_AddButtonWithButton(this.nativePtr, button);
	}
	
	public void RemoveButton(void* button)
	{
		CQt.QMessageBox_RemoveButton(this.nativePtr, button);
	}
	
	public void*[] Buttons()
	{
		return CQt.QMessageBox_Buttons(this.nativePtr);
	}
	
	public int64 ButtonRole(void* button)
	{
		return CQt.QMessageBox_ButtonRole(this.nativePtr, button);
	}
	
	public void SetStandardButtons(int64 buttons)
	{
		CQt.QMessageBox_SetStandardButtons(this.nativePtr, buttons);
	}
	
	public int64 StandardButtons()
	{
		return CQt.QMessageBox_StandardButtons(this.nativePtr);
	}
	
	public int64 StandardButton(void* button)
	{
		return CQt.QMessageBox_StandardButton(this.nativePtr, button);
	}
	
	public void* Button(int64 which)
	{
		return CQt.QMessageBox_Button(this.nativePtr, which);
	}
	
	public void* DefaultButton()
	{
		return CQt.QMessageBox_DefaultButton(this.nativePtr);
	}
	
	public void SetDefaultButton(void* button)
	{
		CQt.QMessageBox_SetDefaultButton(this.nativePtr, button);
	}
	
	public void SetDefaultButtonWithButton(int64 button)
	{
		CQt.QMessageBox_SetDefaultButtonWithButton(this.nativePtr, button);
	}
	
	public void* EscapeButton()
	{
		return CQt.QMessageBox_EscapeButton(this.nativePtr);
	}
	
	public void SetEscapeButton(void* button)
	{
		CQt.QMessageBox_SetEscapeButton(this.nativePtr, button);
	}
	
	public void SetEscapeButtonWithButton(int64 button)
	{
		CQt.QMessageBox_SetEscapeButtonWithButton(this.nativePtr, button);
	}
	
	public void* ClickedButton()
	{
		return CQt.QMessageBox_ClickedButton(this.nativePtr);
	}
	
	public libqt_string Text()
	{
		return CQt.QMessageBox_Text(this.nativePtr);
	}
	
	public void SetText(libqt_string text)
	{
		CQt.QMessageBox_SetText(this.nativePtr, text);
	}
	
	public int64 Icon()
	{
		return CQt.QMessageBox_Icon(this.nativePtr);
	}
	
	public void SetIcon(int64 icon)
	{
		CQt.QMessageBox_SetIcon(this.nativePtr, icon);
	}
	
	public void IconPixmap()
	{
		CQt.QMessageBox_IconPixmap(this.nativePtr);
	}
	
	public void SetIconPixmap(void* pixmap)
	{
		CQt.QMessageBox_SetIconPixmap(this.nativePtr, pixmap);
	}
	
	public int64 TextFormat()
	{
		return CQt.QMessageBox_TextFormat(this.nativePtr);
	}
	
	public void SetTextFormat(int64 format)
	{
		CQt.QMessageBox_SetTextFormat(this.nativePtr, format);
	}
	
	public void SetTextInteractionFlags(int64 flags)
	{
		CQt.QMessageBox_SetTextInteractionFlags(this.nativePtr, flags);
	}
	
	public int64 TextInteractionFlags()
	{
		return CQt.QMessageBox_TextInteractionFlags(this.nativePtr);
	}
	
	public void SetCheckBox(void* cb)
	{
		CQt.QMessageBox_SetCheckBox(this.nativePtr, cb);
	}
	
	public void* CheckBox()
	{
		return CQt.QMessageBox_CheckBox(this.nativePtr);
	}
	
	public static int64 Information(void* parent, libqt_string title, libqt_string text)
	{
		return CQt.QMessageBox_Information(parent, title, text);
	}
	
	public static int64 Information2(void* parent, libqt_string title, libqt_string text, int64 button0)
	{
		return CQt.QMessageBox_Information2(parent, title, text, button0);
	}
	
	public static int64 Question(void* parent, libqt_string title, libqt_string text)
	{
		return CQt.QMessageBox_Question(parent, title, text);
	}
	
	public static int32 Question2(void* parent, libqt_string title, libqt_string text, int64 button0, int64 button1)
	{
		return CQt.QMessageBox_Question2(parent, title, text, button0, button1);
	}
	
	public static int64 Warning(void* parent, libqt_string title, libqt_string text)
	{
		return CQt.QMessageBox_Warning(parent, title, text);
	}
	
	public static int32 Warning2(void* parent, libqt_string title, libqt_string text, int64 button0, int64 button1)
	{
		return CQt.QMessageBox_Warning2(parent, title, text, button0, button1);
	}
	
	public static int64 Critical(void* parent, libqt_string title, libqt_string text)
	{
		return CQt.QMessageBox_Critical(parent, title, text);
	}
	
	public static int32 Critical2(void* parent, libqt_string title, libqt_string text, int64 button0, int64 button1)
	{
		return CQt.QMessageBox_Critical2(parent, title, text, button0, button1);
	}
	
	public static void About(void* parent, libqt_string title, libqt_string text)
	{
		CQt.QMessageBox_About(parent, title, text);
	}
	
	public static void AboutQt(void* parent)
	{
		CQt.QMessageBox_AboutQt(parent);
	}
	
	public static int32 Information3(void* parent, libqt_string title, libqt_string text, int32 button0)
	{
		return CQt.QMessageBox_Information3(parent, title, text, button0);
	}
	
	public static int32 Information4(void* parent, libqt_string title, libqt_string text, libqt_string button0Text)
	{
		return CQt.QMessageBox_Information4(parent, title, text, button0Text);
	}
	
	public static int32 Question3(void* parent, libqt_string title, libqt_string text, int32 button0)
	{
		return CQt.QMessageBox_Question3(parent, title, text, button0);
	}
	
	public static int32 Question4(void* parent, libqt_string title, libqt_string text, libqt_string button0Text)
	{
		return CQt.QMessageBox_Question4(parent, title, text, button0Text);
	}
	
	public static int32 Warning3(void* parent, libqt_string title, libqt_string text, int32 button0, int32 button1)
	{
		return CQt.QMessageBox_Warning3(parent, title, text, button0, button1);
	}
	
	public static int32 Warning4(void* parent, libqt_string title, libqt_string text, libqt_string button0Text)
	{
		return CQt.QMessageBox_Warning4(parent, title, text, button0Text);
	}
	
	public static int32 Critical3(void* parent, libqt_string title, libqt_string text, int32 button0, int32 button1)
	{
		return CQt.QMessageBox_Critical3(parent, title, text, button0, button1);
	}
	
	public static int32 Critical4(void* parent, libqt_string title, libqt_string text, libqt_string button0Text)
	{
		return CQt.QMessageBox_Critical4(parent, title, text, button0Text);
	}
	
	public libqt_string ButtonText(int32 button)
	{
		return CQt.QMessageBox_ButtonText(this.nativePtr, button);
	}
	
	public void SetButtonText(int32 button, libqt_string text)
	{
		CQt.QMessageBox_SetButtonText(this.nativePtr, button, text);
	}
	
	public libqt_string InformativeText()
	{
		return CQt.QMessageBox_InformativeText(this.nativePtr);
	}
	
	public void SetInformativeText(libqt_string text)
	{
		CQt.QMessageBox_SetInformativeText(this.nativePtr, text);
	}
	
	public libqt_string DetailedText()
	{
		return CQt.QMessageBox_DetailedText(this.nativePtr);
	}
	
	public void SetDetailedText(libqt_string text)
	{
		CQt.QMessageBox_SetDetailedText(this.nativePtr, text);
	}
	
	public void SetWindowTitle(libqt_string title)
	{
		CQt.QMessageBox_SetWindowTitle(this.nativePtr, title);
	}
	
	public void SetWindowModality(int64 windowModality)
	{
		CQt.QMessageBox_SetWindowModality(this.nativePtr, windowModality);
	}
	
	public static void StandardIcon(int64 icon)
	{
		CQt.QMessageBox_StandardIcon(icon);
	}
	
	public virtual bool Event(void* e)
	{
		return CQt.QMessageBox_Event(this.nativePtr, e);
	}
	
	public virtual void ResizeEvent(void* event)
	{
		CQt.QMessageBox_ResizeEvent(this.nativePtr, event);
	}
	
	public virtual void ShowEvent(void* event)
	{
		CQt.QMessageBox_ShowEvent(this.nativePtr, event);
	}
	
	public virtual void CloseEvent(void* event)
	{
		CQt.QMessageBox_CloseEvent(this.nativePtr, event);
	}
	
	public virtual void KeyPressEvent(void* event)
	{
		CQt.QMessageBox_KeyPressEvent(this.nativePtr, event);
	}
	
	public virtual void ChangeEvent(void* event)
	{
		CQt.QMessageBox_ChangeEvent(this.nativePtr, event);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QMessageBox_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QMessageBox_Tr3(s, c, n);
	}
	
	public static int64 Information42(void* parent, libqt_string title, libqt_string text, int64 buttons)
	{
		return CQt.QMessageBox_Information42(parent, title, text, buttons);
	}
	
	public static int64 Information5(void* parent, libqt_string title, libqt_string text, int64 buttons, int64 defaultButton)
	{
		return CQt.QMessageBox_Information5(parent, title, text, buttons, defaultButton);
	}
	
	public static int64 Information52(void* parent, libqt_string title, libqt_string text, int64 button0, int64 button1)
	{
		return CQt.QMessageBox_Information52(parent, title, text, button0, button1);
	}
	
	public static int64 Question42(void* parent, libqt_string title, libqt_string text, int64 buttons)
	{
		return CQt.QMessageBox_Question42(parent, title, text, buttons);
	}
	
	public static int64 Question5(void* parent, libqt_string title, libqt_string text, int64 buttons, int64 defaultButton)
	{
		return CQt.QMessageBox_Question5(parent, title, text, buttons, defaultButton);
	}
	
	public static int64 Warning42(void* parent, libqt_string title, libqt_string text, int64 buttons)
	{
		return CQt.QMessageBox_Warning42(parent, title, text, buttons);
	}
	
	public static int64 Warning5(void* parent, libqt_string title, libqt_string text, int64 buttons, int64 defaultButton)
	{
		return CQt.QMessageBox_Warning5(parent, title, text, buttons, defaultButton);
	}
	
	public static int64 Critical42(void* parent, libqt_string title, libqt_string text, int64 buttons)
	{
		return CQt.QMessageBox_Critical42(parent, title, text, buttons);
	}
	
	public static int64 Critical5(void* parent, libqt_string title, libqt_string text, int64 buttons, int64 defaultButton)
	{
		return CQt.QMessageBox_Critical5(parent, title, text, buttons, defaultButton);
	}
	
	public static void AboutQt2(void* parent, libqt_string title)
	{
		CQt.QMessageBox_AboutQt2(parent, title);
	}
	
	public static int32 Information53(void* parent, libqt_string title, libqt_string text, int32 button0, int32 button1)
	{
		return CQt.QMessageBox_Information53(parent, title, text, button0, button1);
	}
	
	public static int32 Information6(void* parent, libqt_string title, libqt_string text, int32 button0, int32 button1, int32 button2)
	{
		return CQt.QMessageBox_Information6(parent, title, text, button0, button1, button2);
	}
	
	public static int32 Information54(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text)
	{
		return CQt.QMessageBox_Information54(parent, title, text, button0Text, button1Text);
	}
	
	public static int32 Information62(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text)
	{
		return CQt.QMessageBox_Information62(parent, title, text, button0Text, button1Text, button2Text);
	}
	
	public static int32 Information7(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int32 defaultButtonNumber)
	{
		return CQt.QMessageBox_Information7(parent, title, text, button0Text, button1Text, button2Text, defaultButtonNumber);
	}
	
	public static int32 Information8(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int32 defaultButtonNumber, int32 escapeButtonNumber)
	{
		return CQt.QMessageBox_Information8(parent, title, text, button0Text, button1Text, button2Text, defaultButtonNumber, escapeButtonNumber);
	}
	
	public static int32 Question52(void* parent, libqt_string title, libqt_string text, int32 button0, int32 button1)
	{
		return CQt.QMessageBox_Question52(parent, title, text, button0, button1);
	}
	
	public static int32 Question6(void* parent, libqt_string title, libqt_string text, int32 button0, int32 button1, int32 button2)
	{
		return CQt.QMessageBox_Question6(parent, title, text, button0, button1, button2);
	}
	
	public static int32 Question53(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text)
	{
		return CQt.QMessageBox_Question53(parent, title, text, button0Text, button1Text);
	}
	
	public static int32 Question62(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text)
	{
		return CQt.QMessageBox_Question62(parent, title, text, button0Text, button1Text, button2Text);
	}
	
	public static int32 Question7(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int32 defaultButtonNumber)
	{
		return CQt.QMessageBox_Question7(parent, title, text, button0Text, button1Text, button2Text, defaultButtonNumber);
	}
	
	public static int32 Question8(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int32 defaultButtonNumber, int32 escapeButtonNumber)
	{
		return CQt.QMessageBox_Question8(parent, title, text, button0Text, button1Text, button2Text, defaultButtonNumber, escapeButtonNumber);
	}
	
	public static int32 Warning6(void* parent, libqt_string title, libqt_string text, int32 button0, int32 button1, int32 button2)
	{
		return CQt.QMessageBox_Warning6(parent, title, text, button0, button1, button2);
	}
	
	public static int32 Warning52(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text)
	{
		return CQt.QMessageBox_Warning52(parent, title, text, button0Text, button1Text);
	}
	
	public static int32 Warning62(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text)
	{
		return CQt.QMessageBox_Warning62(parent, title, text, button0Text, button1Text, button2Text);
	}
	
	public static int32 Warning7(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int32 defaultButtonNumber)
	{
		return CQt.QMessageBox_Warning7(parent, title, text, button0Text, button1Text, button2Text, defaultButtonNumber);
	}
	
	public static int32 Warning8(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int32 defaultButtonNumber, int32 escapeButtonNumber)
	{
		return CQt.QMessageBox_Warning8(parent, title, text, button0Text, button1Text, button2Text, defaultButtonNumber, escapeButtonNumber);
	}
	
	public static int32 Critical6(void* parent, libqt_string title, libqt_string text, int32 button0, int32 button1, int32 button2)
	{
		return CQt.QMessageBox_Critical6(parent, title, text, button0, button1, button2);
	}
	
	public static int32 Critical52(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text)
	{
		return CQt.QMessageBox_Critical52(parent, title, text, button0Text, button1Text);
	}
	
	public static int32 Critical62(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text)
	{
		return CQt.QMessageBox_Critical62(parent, title, text, button0Text, button1Text, button2Text);
	}
	
	public static int32 Critical7(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int32 defaultButtonNumber)
	{
		return CQt.QMessageBox_Critical7(parent, title, text, button0Text, button1Text, button2Text, defaultButtonNumber);
	}
	
	public static int32 Critical8(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int32 defaultButtonNumber, int32 escapeButtonNumber)
	{
		return CQt.QMessageBox_Critical8(parent, title, text, button0Text, button1Text, button2Text, defaultButtonNumber, escapeButtonNumber);
	}
	
	public int32 Result()
	{
		return CQt.QDialog_Result(this.nativePtr);
	}
	
	public virtual void SetVisible(bool visible)
	{
		CQt.QDialog_SetVisible(this.nativePtr, visible);
	}
	
	public virtual void SizeHint()
	{
		CQt.QDialog_SizeHint(this.nativePtr);
	}
	
	public virtual void MinimumSizeHint()
	{
		CQt.QDialog_MinimumSizeHint(this.nativePtr);
	}
	
	public void SetSizeGripEnabled(bool sizeGripEnabled)
	{
		CQt.QDialog_SetSizeGripEnabled(this.nativePtr, sizeGripEnabled);
	}
	
	public bool IsSizeGripEnabled()
	{
		return CQt.QDialog_IsSizeGripEnabled(this.nativePtr);
	}
	
	public void SetModal(bool modal)
	{
		CQt.QDialog_SetModal(this.nativePtr, modal);
	}
	
	public void SetResult(int32 r)
	{
		CQt.QDialog_SetResult(this.nativePtr, r);
	}
	
	public virtual void Open()
	{
		CQt.QDialog_Open(this.nativePtr);
	}
	
	public virtual int32 Exec()
	{
		return CQt.QDialog_Exec(this.nativePtr);
	}
	
	public virtual void Done(int32 param1)
	{
		CQt.QDialog_Done(this.nativePtr, param1);
	}
	
	public virtual void Accept()
	{
		CQt.QDialog_Accept(this.nativePtr);
	}
	
	public virtual void Reject()
	{
		CQt.QDialog_Reject(this.nativePtr);
	}
	
	public virtual int32 DevType()
	{
		return CQt.QWidget_DevType(this.nativePtr);
	}
	
	public c_uintptr WinId()
	{
		return CQt.QWidget_WinId(this.nativePtr);
	}
	
	public void CreateWinId()
	{
		CQt.QWidget_CreateWinId(this.nativePtr);
	}
	
	public c_uintptr InternalWinId()
	{
		return CQt.QWidget_InternalWinId(this.nativePtr);
	}
	
	public c_uintptr EffectiveWinId()
	{
		return CQt.QWidget_EffectiveWinId(this.nativePtr);
	}
	
	public void* Style()
	{
		return CQt.QWidget_Style(this.nativePtr);
	}
	
	public void SetStyle(void* style)
	{
		CQt.QWidget_SetStyle(this.nativePtr, style);
	}
	
	public bool IsTopLevel()
	{
		return CQt.QWidget_IsTopLevel(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QWidget_IsWindow(this.nativePtr);
	}
	
	public bool IsModal()
	{
		return CQt.QWidget_IsModal(this.nativePtr);
	}
	
	public int64 WindowModality()
	{
		return CQt.QWidget_WindowModality(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QWidget_IsEnabled(this.nativePtr);
	}
	
	public bool IsEnabledTo(void* param1)
	{
		return CQt.QWidget_IsEnabledTo(this.nativePtr, param1);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QWidget_SetEnabled(this.nativePtr, enabled);
	}
	
	public void SetDisabled(bool disabled)
	{
		CQt.QWidget_SetDisabled(this.nativePtr, disabled);
	}
	
	public void SetWindowModified(bool windowModified)
	{
		CQt.QWidget_SetWindowModified(this.nativePtr, windowModified);
	}
	
	public void FrameGeometry()
	{
		CQt.QWidget_FrameGeometry(this.nativePtr);
	}
	
	public void* Geometry()
	{
		return CQt.QWidget_Geometry(this.nativePtr);
	}
	
	public void NormalGeometry()
	{
		CQt.QWidget_NormalGeometry(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QWidget_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QWidget_Y(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QWidget_Pos(this.nativePtr);
	}
	
	public void FrameSize()
	{
		CQt.QWidget_FrameSize(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QWidget_Size(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QWidget_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QWidget_Height(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QWidget_Rect(this.nativePtr);
	}
	
	public void ChildrenRect()
	{
		CQt.QWidget_ChildrenRect(this.nativePtr);
	}
	
	public void ChildrenRegion()
	{
		CQt.QWidget_ChildrenRegion(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QWidget_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QWidget_MaximumSize(this.nativePtr);
	}
	
	public int32 MinimumWidth()
	{
		return CQt.QWidget_MinimumWidth(this.nativePtr);
	}
	
	public int32 MinimumHeight()
	{
		return CQt.QWidget_MinimumHeight(this.nativePtr);
	}
	
	public int32 MaximumWidth()
	{
		return CQt.QWidget_MaximumWidth(this.nativePtr);
	}
	
	public int32 MaximumHeight()
	{
		return CQt.QWidget_MaximumHeight(this.nativePtr);
	}
	
	public void SetMinimumSize(void* minimumSize)
	{
		CQt.QWidget_SetMinimumSize(this.nativePtr, minimumSize);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		CQt.QWidget_SetMinimumSize2(this.nativePtr, minw, minh);
	}
	
	public void SetMaximumSize(void* maximumSize)
	{
		CQt.QWidget_SetMaximumSize(this.nativePtr, maximumSize);
	}
	
	public void SetMaximumSize2(int32 maxw, int32 maxh)
	{
		CQt.QWidget_SetMaximumSize2(this.nativePtr, maxw, maxh);
	}
	
	public void SetMinimumWidth(int32 minw)
	{
		CQt.QWidget_SetMinimumWidth(this.nativePtr, minw);
	}
	
	public void SetMinimumHeight(int32 minh)
	{
		CQt.QWidget_SetMinimumHeight(this.nativePtr, minh);
	}
	
	public void SetMaximumWidth(int32 maxw)
	{
		CQt.QWidget_SetMaximumWidth(this.nativePtr, maxw);
	}
	
	public void SetMaximumHeight(int32 maxh)
	{
		CQt.QWidget_SetMaximumHeight(this.nativePtr, maxh);
	}
	
	public void SizeIncrement()
	{
		CQt.QWidget_SizeIncrement(this.nativePtr);
	}
	
	public void SetSizeIncrement(void* sizeIncrement)
	{
		CQt.QWidget_SetSizeIncrement(this.nativePtr, sizeIncrement);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		CQt.QWidget_SetSizeIncrement2(this.nativePtr, w, h);
	}
	
	public void BaseSize()
	{
		CQt.QWidget_BaseSize(this.nativePtr);
	}
	
	public void SetBaseSize(void* baseSize)
	{
		CQt.QWidget_SetBaseSize(this.nativePtr, baseSize);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		CQt.QWidget_SetBaseSize2(this.nativePtr, basew, baseh);
	}
	
	public void SetFixedSize(void* fixedSize)
	{
		CQt.QWidget_SetFixedSize(this.nativePtr, fixedSize);
	}
	
	public void SetFixedSize2(int32 w, int32 h)
	{
		CQt.QWidget_SetFixedSize2(this.nativePtr, w, h);
	}
	
	public void SetFixedWidth(int32 w)
	{
		CQt.QWidget_SetFixedWidth(this.nativePtr, w);
	}
	
	public void SetFixedHeight(int32 h)
	{
		CQt.QWidget_SetFixedHeight(this.nativePtr, h);
	}
	
	public void MapToGlobal(void* param1)
	{
		CQt.QWidget_MapToGlobal(this.nativePtr, param1);
	}
	
	public void MapToGlobalWithQPoint(void* param1)
	{
		CQt.QWidget_MapToGlobalWithQPoint(this.nativePtr, param1);
	}
	
	public void MapFromGlobal(void* param1)
	{
		CQt.QWidget_MapFromGlobal(this.nativePtr, param1);
	}
	
	public void MapFromGlobalWithQPoint(void* param1)
	{
		CQt.QWidget_MapFromGlobalWithQPoint(this.nativePtr, param1);
	}
	
	public void MapToParent(void* param1)
	{
		CQt.QWidget_MapToParent(this.nativePtr, param1);
	}
	
	public void MapToParentWithQPoint(void* param1)
	{
		CQt.QWidget_MapToParentWithQPoint(this.nativePtr, param1);
	}
	
	public void MapFromParent(void* param1)
	{
		CQt.QWidget_MapFromParent(this.nativePtr, param1);
	}
	
	public void MapFromParentWithQPoint(void* param1)
	{
		CQt.QWidget_MapFromParentWithQPoint(this.nativePtr, param1);
	}
	
	public void MapTo(void* param1, void* param2)
	{
		CQt.QWidget_MapTo(this.nativePtr, param1, param2);
	}
	
	public void MapTo2(void* param1, void* param2)
	{
		CQt.QWidget_MapTo2(this.nativePtr, param1, param2);
	}
	
	public void MapFrom(void* param1, void* param2)
	{
		CQt.QWidget_MapFrom(this.nativePtr, param1, param2);
	}
	
	public void MapFrom2(void* param1, void* param2)
	{
		CQt.QWidget_MapFrom2(this.nativePtr, param1, param2);
	}
	
	public void* Window()
	{
		return CQt.QWidget_Window(this.nativePtr);
	}
	
	public void* NativeParentWidget()
	{
		return CQt.QWidget_NativeParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QWidget_TopLevelWidget(this.nativePtr);
	}
	
	public void* Palette()
	{
		return CQt.QWidget_Palette(this.nativePtr);
	}
	
	public void SetPalette(void* palette)
	{
		CQt.QWidget_SetPalette(this.nativePtr, palette);
	}
	
	public void SetBackgroundRole(int64 backgroundRole)
	{
		CQt.QWidget_SetBackgroundRole(this.nativePtr, backgroundRole);
	}
	
	public int64 BackgroundRole()
	{
		return CQt.QWidget_BackgroundRole(this.nativePtr);
	}
	
	public void SetForegroundRole(int64 foregroundRole)
	{
		CQt.QWidget_SetForegroundRole(this.nativePtr, foregroundRole);
	}
	
	public int64 ForegroundRole()
	{
		return CQt.QWidget_ForegroundRole(this.nativePtr);
	}
	
	public void* Font()
	{
		return CQt.QWidget_Font(this.nativePtr);
	}
	
	public void SetFont(void* font)
	{
		CQt.QWidget_SetFont(this.nativePtr, font);
	}
	
	public void FontMetrics()
	{
		CQt.QWidget_FontMetrics(this.nativePtr);
	}
	
	public void FontInfo()
	{
		CQt.QWidget_FontInfo(this.nativePtr);
	}
	
	public void Cursor()
	{
		CQt.QWidget_Cursor(this.nativePtr);
	}
	
	public void SetCursor(void* cursor)
	{
		CQt.QWidget_SetCursor(this.nativePtr, cursor);
	}
	
	public void UnsetCursor()
	{
		CQt.QWidget_UnsetCursor(this.nativePtr);
	}
	
	public void SetMouseTracking(bool enable)
	{
		CQt.QWidget_SetMouseTracking(this.nativePtr, enable);
	}
	
	public bool HasMouseTracking()
	{
		return CQt.QWidget_HasMouseTracking(this.nativePtr);
	}
	
	public bool UnderMouse()
	{
		return CQt.QWidget_UnderMouse(this.nativePtr);
	}
	
	public void SetTabletTracking(bool enable)
	{
		CQt.QWidget_SetTabletTracking(this.nativePtr, enable);
	}
	
	public bool HasTabletTracking()
	{
		return CQt.QWidget_HasTabletTracking(this.nativePtr);
	}
	
	public void SetMask(void* mask)
	{
		CQt.QWidget_SetMask(this.nativePtr, mask);
	}
	
	public void SetMaskWithMask(void* mask)
	{
		CQt.QWidget_SetMaskWithMask(this.nativePtr, mask);
	}
	
	public void Mask()
	{
		CQt.QWidget_Mask(this.nativePtr);
	}
	
	public void ClearMask()
	{
		CQt.QWidget_ClearMask(this.nativePtr);
	}
	
	public void Render(void* target)
	{
		CQt.QWidget_Render(this.nativePtr, target);
	}
	
	public void RenderWithPainter(void* painter)
	{
		CQt.QWidget_RenderWithPainter(this.nativePtr, painter);
	}
	
	public void Grab()
	{
		CQt.QWidget_Grab(this.nativePtr);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QWidget_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(void* effect)
	{
		CQt.QWidget_SetGraphicsEffect(this.nativePtr, effect);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QWidget_GrabGesture(this.nativePtr, typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QWidget_UngrabGesture(this.nativePtr, typeVal);
	}
	
	public void SetStyleSheet(libqt_string styleSheet)
	{
		CQt.QWidget_SetStyleSheet(this.nativePtr, styleSheet);
	}
	
	public libqt_string StyleSheet()
	{
		return CQt.QWidget_StyleSheet(this.nativePtr);
	}
	
	public libqt_string WindowTitle()
	{
		return CQt.QWidget_WindowTitle(this.nativePtr);
	}
	
	public void SetWindowIcon(void* icon)
	{
		CQt.QWidget_SetWindowIcon(this.nativePtr, icon);
	}
	
	public void WindowIcon()
	{
		CQt.QWidget_WindowIcon(this.nativePtr);
	}
	
	public void SetWindowIconText(libqt_string windowIconText)
	{
		CQt.QWidget_SetWindowIconText(this.nativePtr, windowIconText);
	}
	
	public libqt_string WindowIconText()
	{
		return CQt.QWidget_WindowIconText(this.nativePtr);
	}
	
	public void SetWindowRole(libqt_string windowRole)
	{
		CQt.QWidget_SetWindowRole(this.nativePtr, windowRole);
	}
	
	public libqt_string WindowRole()
	{
		return CQt.QWidget_WindowRole(this.nativePtr);
	}
	
	public void SetWindowFilePath(libqt_string filePath)
	{
		CQt.QWidget_SetWindowFilePath(this.nativePtr, filePath);
	}
	
	public libqt_string WindowFilePath()
	{
		return CQt.QWidget_WindowFilePath(this.nativePtr);
	}
	
	public void SetWindowOpacity(double level)
	{
		CQt.QWidget_SetWindowOpacity(this.nativePtr, level);
	}
	
	public double WindowOpacity()
	{
		return CQt.QWidget_WindowOpacity(this.nativePtr);
	}
	
	public bool IsWindowModified()
	{
		return CQt.QWidget_IsWindowModified(this.nativePtr);
	}
	
	public void SetToolTip(libqt_string toolTip)
	{
		CQt.QWidget_SetToolTip(this.nativePtr, toolTip);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QWidget_ToolTip(this.nativePtr);
	}
	
	public void SetToolTipDuration(int32 msec)
	{
		CQt.QWidget_SetToolTipDuration(this.nativePtr, msec);
	}
	
	public int32 ToolTipDuration()
	{
		return CQt.QWidget_ToolTipDuration(this.nativePtr);
	}
	
	public void SetStatusTip(libqt_string statusTip)
	{
		CQt.QWidget_SetStatusTip(this.nativePtr, statusTip);
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QWidget_StatusTip(this.nativePtr);
	}
	
	public void SetWhatsThis(libqt_string whatsThis)
	{
		CQt.QWidget_SetWhatsThis(this.nativePtr, whatsThis);
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QWidget_WhatsThis(this.nativePtr);
	}
	
	public libqt_string AccessibleName()
	{
		return CQt.QWidget_AccessibleName(this.nativePtr);
	}
	
	public void SetAccessibleName(libqt_string name)
	{
		CQt.QWidget_SetAccessibleName(this.nativePtr, name);
	}
	
	public libqt_string AccessibleDescription()
	{
		return CQt.QWidget_AccessibleDescription(this.nativePtr);
	}
	
	public void SetAccessibleDescription(libqt_string description)
	{
		CQt.QWidget_SetAccessibleDescription(this.nativePtr, description);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QWidget_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QWidget_LayoutDirection(this.nativePtr);
	}
	
	public void UnsetLayoutDirection()
	{
		CQt.QWidget_UnsetLayoutDirection(this.nativePtr);
	}
	
	public void SetLocale(void* locale)
	{
		CQt.QWidget_SetLocale(this.nativePtr, locale);
	}
	
	public void Locale()
	{
		CQt.QWidget_Locale(this.nativePtr);
	}
	
	public void UnsetLocale()
	{
		CQt.QWidget_UnsetLocale(this.nativePtr);
	}
	
	public bool IsRightToLeft()
	{
		return CQt.QWidget_IsRightToLeft(this.nativePtr);
	}
	
	public bool IsLeftToRight()
	{
		return CQt.QWidget_IsLeftToRight(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QWidget_SetFocus(this.nativePtr);
	}
	
	public bool IsActiveWindow()
	{
		return CQt.QWidget_IsActiveWindow(this.nativePtr);
	}
	
	public void ActivateWindow()
	{
		CQt.QWidget_ActivateWindow(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QWidget_ClearFocus(this.nativePtr);
	}
	
	public void SetFocusWithReason(int64 reason)
	{
		CQt.QWidget_SetFocusWithReason(this.nativePtr, reason);
	}
	
	public int64 FocusPolicy()
	{
		return CQt.QWidget_FocusPolicy(this.nativePtr);
	}
	
	public void SetFocusPolicy(int64 policy)
	{
		CQt.QWidget_SetFocusPolicy(this.nativePtr, policy);
	}
	
	public bool HasFocus()
	{
		return CQt.QWidget_HasFocus(this.nativePtr);
	}
	
	public static void SetTabOrder(void* param1, void* param2)
	{
		CQt.QWidget_SetTabOrder(param1, param2);
	}
	
	public void SetFocusProxy(void* focusProxy)
	{
		CQt.QWidget_SetFocusProxy(this.nativePtr, focusProxy);
	}
	
	public void* FocusProxy()
	{
		return CQt.QWidget_FocusProxy(this.nativePtr);
	}
	
	public int64 ContextMenuPolicy()
	{
		return CQt.QWidget_ContextMenuPolicy(this.nativePtr);
	}
	
	public void SetContextMenuPolicy(int64 policy)
	{
		CQt.QWidget_SetContextMenuPolicy(this.nativePtr, policy);
	}
	
	public void GrabMouse()
	{
		CQt.QWidget_GrabMouse(this.nativePtr);
	}
	
	public void GrabMouseWithQCursor(void* param1)
	{
		CQt.QWidget_GrabMouseWithQCursor(this.nativePtr, param1);
	}
	
	public void ReleaseMouse()
	{
		CQt.QWidget_ReleaseMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QWidget_GrabKeyboard(this.nativePtr);
	}
	
	public void ReleaseKeyboard()
	{
		CQt.QWidget_ReleaseKeyboard(this.nativePtr);
	}
	
	public int32 GrabShortcut(void* key)
	{
		return CQt.QWidget_GrabShortcut(this.nativePtr, key);
	}
	
	public void ReleaseShortcut(int32 id)
	{
		CQt.QWidget_ReleaseShortcut(this.nativePtr, id);
	}
	
	public void SetShortcutEnabled(int32 id)
	{
		CQt.QWidget_SetShortcutEnabled(this.nativePtr, id);
	}
	
	public void SetShortcutAutoRepeat(int32 id)
	{
		CQt.QWidget_SetShortcutAutoRepeat(this.nativePtr, id);
	}
	
	public static void* MouseGrabber()
	{
		return CQt.QWidget_MouseGrabber();
	}
	
	public static void* KeyboardGrabber()
	{
		return CQt.QWidget_KeyboardGrabber();
	}
	
	public bool UpdatesEnabled()
	{
		return CQt.QWidget_UpdatesEnabled(this.nativePtr);
	}
	
	public void SetUpdatesEnabled(bool enable)
	{
		CQt.QWidget_SetUpdatesEnabled(this.nativePtr, enable);
	}
	
	public void* GraphicsProxyWidget()
	{
		return CQt.QWidget_GraphicsProxyWidget(this.nativePtr);
	}
	
	public void Update()
	{
		CQt.QWidget_Update(this.nativePtr);
	}
	
	public void Repaint()
	{
		CQt.QWidget_Repaint(this.nativePtr);
	}
	
	public void Update2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Update2(this.nativePtr, x, y, w, h);
	}
	
	public void UpdateWithQRect(void* param1)
	{
		CQt.QWidget_UpdateWithQRect(this.nativePtr, param1);
	}
	
	public void UpdateWithQRegion(void* param1)
	{
		CQt.QWidget_UpdateWithQRegion(this.nativePtr, param1);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Repaint2(this.nativePtr, x, y, w, h);
	}
	
	public void RepaintWithQRect(void* param1)
	{
		CQt.QWidget_RepaintWithQRect(this.nativePtr, param1);
	}
	
	public void RepaintWithQRegion(void* param1)
	{
		CQt.QWidget_RepaintWithQRegion(this.nativePtr, param1);
	}
	
	public void SetHidden(bool hidden)
	{
		CQt.QWidget_SetHidden(this.nativePtr, hidden);
	}
	
	public void Show()
	{
		CQt.QWidget_Show(this.nativePtr);
	}
	
	public void Hide()
	{
		CQt.QWidget_Hide(this.nativePtr);
	}
	
	public void ShowMinimized()
	{
		CQt.QWidget_ShowMinimized(this.nativePtr);
	}
	
	public void ShowMaximized()
	{
		CQt.QWidget_ShowMaximized(this.nativePtr);
	}
	
	public void ShowFullScreen()
	{
		CQt.QWidget_ShowFullScreen(this.nativePtr);
	}
	
	public void ShowNormal()
	{
		CQt.QWidget_ShowNormal(this.nativePtr);
	}
	
	public bool Close()
	{
		return CQt.QWidget_Close(this.nativePtr);
	}
	
	public void Raise()
	{
		CQt.QWidget_Raise(this.nativePtr);
	}
	
	public void Lower()
	{
		CQt.QWidget_Lower(this.nativePtr);
	}
	
	public void StackUnder(void* param1)
	{
		CQt.QWidget_StackUnder(this.nativePtr, param1);
	}
	
	public void Move(int32 x, int32 y)
	{
		CQt.QWidget_Move(this.nativePtr, x, y);
	}
	
	public void MoveWithQPoint(void* param1)
	{
		CQt.QWidget_MoveWithQPoint(this.nativePtr, param1);
	}
	
	public void Resize(int32 w, int32 h)
	{
		CQt.QWidget_Resize(this.nativePtr, w, h);
	}
	
	public void ResizeWithQSize(void* param1)
	{
		CQt.QWidget_ResizeWithQSize(this.nativePtr, param1);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_SetGeometry(this.nativePtr, x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(void* geometry)
	{
		CQt.QWidget_SetGeometryWithGeometry(this.nativePtr, geometry);
	}
	
	public libqt_string SaveGeometry()
	{
		return CQt.QWidget_SaveGeometry(this.nativePtr);
	}
	
	public bool RestoreGeometry(libqt_string geometry)
	{
		return CQt.QWidget_RestoreGeometry(this.nativePtr, geometry);
	}
	
	public void AdjustSize()
	{
		CQt.QWidget_AdjustSize(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QWidget_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(void* param1)
	{
		return CQt.QWidget_IsVisibleTo(this.nativePtr, param1);
	}
	
	public bool IsHidden()
	{
		return CQt.QWidget_IsHidden(this.nativePtr);
	}
	
	public bool IsMinimized()
	{
		return CQt.QWidget_IsMinimized(this.nativePtr);
	}
	
	public bool IsMaximized()
	{
		return CQt.QWidget_IsMaximized(this.nativePtr);
	}
	
	public bool IsFullScreen()
	{
		return CQt.QWidget_IsFullScreen(this.nativePtr);
	}
	
	public int64 WindowState()
	{
		return CQt.QWidget_WindowState(this.nativePtr);
	}
	
	public void SetWindowState(int64 state)
	{
		CQt.QWidget_SetWindowState(this.nativePtr, state);
	}
	
	public void OverrideWindowState(int64 state)
	{
		CQt.QWidget_OverrideWindowState(this.nativePtr, state);
	}
	
	public void SizePolicy()
	{
		CQt.QWidget_SizePolicy(this.nativePtr);
	}
	
	public void SetSizePolicy(void sizePolicy)
	{
		CQt.QWidget_SetSizePolicy(this.nativePtr, sizePolicy);
	}
	
	public void SetSizePolicy2(int64 horizontal, int64 vertical)
	{
		CQt.QWidget_SetSizePolicy2(this.nativePtr, horizontal, vertical);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return CQt.QWidget_HeightForWidth(this.nativePtr, param1);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return CQt.QWidget_HasHeightForWidth(this.nativePtr);
	}
	
	public void VisibleRegion()
	{
		CQt.QWidget_VisibleRegion(this.nativePtr);
	}
	
	public void SetContentsMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		CQt.QWidget_SetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(void* margins)
	{
		CQt.QWidget_SetContentsMarginsWithMargins(this.nativePtr, margins);
	}
	
	public void ContentsMargins()
	{
		CQt.QWidget_ContentsMargins(this.nativePtr);
	}
	
	public void ContentsRect()
	{
		CQt.QWidget_ContentsRect(this.nativePtr);
	}
	
	public void* Layout()
	{
		return CQt.QWidget_Layout(this.nativePtr);
	}
	
	public void SetLayout(void* layout)
	{
		CQt.QWidget_SetLayout(this.nativePtr, layout);
	}
	
	public void UpdateGeometry()
	{
		CQt.QWidget_UpdateGeometry(this.nativePtr);
	}
	
	public void SetParent(void* parent)
	{
		CQt.QWidget_SetParent(this.nativePtr, parent);
	}
	
	public void SetParent2(void* parent, int64 f)
	{
		CQt.QWidget_SetParent2(this.nativePtr, parent, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		CQt.QWidget_Scroll(this.nativePtr, dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, void* param3)
	{
		CQt.QWidget_Scroll2(this.nativePtr, dx, dy, param3);
	}
	
	public void* FocusWidget()
	{
		return CQt.QWidget_FocusWidget(this.nativePtr);
	}
	
	public void* NextInFocusChain()
	{
		return CQt.QWidget_NextInFocusChain(this.nativePtr);
	}
	
	public void* PreviousInFocusChain()
	{
		return CQt.QWidget_PreviousInFocusChain(this.nativePtr);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QWidget_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QWidget_SetAcceptDrops(this.nativePtr, on);
	}
	
	public void AddAction(void* action)
	{
		CQt.QWidget_AddAction(this.nativePtr, action);
	}
	
	public void AddActions(void*[] actions)
	{
		CQt.QWidget_AddActions(this.nativePtr, actions);
	}
	
	public void InsertActions(void* before, void*[] actions)
	{
		CQt.QWidget_InsertActions(this.nativePtr, before, actions);
	}
	
	public void InsertAction(void* before, void* action)
	{
		CQt.QWidget_InsertAction(this.nativePtr, before, action);
	}
	
	public void RemoveAction(void* action)
	{
		CQt.QWidget_RemoveAction(this.nativePtr, action);
	}
	
	public void*[] Actions()
	{
		return CQt.QWidget_Actions(this.nativePtr);
	}
	
	public void* AddActionWithText(libqt_string text)
	{
		return CQt.QWidget_AddActionWithText(this.nativePtr, text);
	}
	
	public void* AddAction2(void* icon, libqt_string text)
	{
		return CQt.QWidget_AddAction2(this.nativePtr, icon, text);
	}
	
	public void* AddAction3(libqt_string text, void* shortcut)
	{
		return CQt.QWidget_AddAction3(this.nativePtr, text, shortcut);
	}
	
	public void* AddAction4(void* icon, libqt_string text, void* shortcut)
	{
		return CQt.QWidget_AddAction4(this.nativePtr, icon, text, shortcut);
	}
	
	public void* ParentWidget()
	{
		return CQt.QWidget_ParentWidget(this.nativePtr);
	}
	
	public void SetWindowFlags(int64 typeVal)
	{
		CQt.QWidget_SetWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowFlags()
	{
		return CQt.QWidget_WindowFlags(this.nativePtr);
	}
	
	public void SetWindowFlag(int64 param1)
	{
		CQt.QWidget_SetWindowFlag(this.nativePtr, param1);
	}
	
	public void OverrideWindowFlags(int64 typeVal)
	{
		CQt.QWidget_OverrideWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowType()
	{
		return CQt.QWidget_WindowType(this.nativePtr);
	}
	
	public static void* Find(uint64 param1)
	{
		return CQt.QWidget_Find(param1);
	}
	
	public void* ChildAt(int32 x, int32 y)
	{
		return CQt.QWidget_ChildAt(this.nativePtr, x, y);
	}
	
	public void* ChildAtWithQPoint(void* p)
	{
		return CQt.QWidget_ChildAtWithQPoint(this.nativePtr, p);
	}
	
	public void SetAttribute(int64 param1)
	{
		CQt.QWidget_SetAttribute(this.nativePtr, param1);
	}
	
	public bool TestAttribute(int64 param1)
	{
		return CQt.QWidget_TestAttribute(this.nativePtr, param1);
	}
	
	public virtual void* PaintEngine()
	{
		return CQt.QWidget_PaintEngine(this.nativePtr);
	}
	
	public void EnsurePolished()
	{
		CQt.QWidget_EnsurePolished(this.nativePtr);
	}
	
	public bool IsAncestorOf(void* child)
	{
		return CQt.QWidget_IsAncestorOf(this.nativePtr, child);
	}
	
	public bool AutoFillBackground()
	{
		return CQt.QWidget_AutoFillBackground(this.nativePtr);
	}
	
	public void SetAutoFillBackground(bool enabled)
	{
		CQt.QWidget_SetAutoFillBackground(this.nativePtr, enabled);
	}
	
	public void* BackingStore()
	{
		return CQt.QWidget_BackingStore(this.nativePtr);
	}
	
	public void* WindowHandle()
	{
		return CQt.QWidget_WindowHandle(this.nativePtr);
	}
	
	public void* Screen()
	{
		return CQt.QWidget_Screen(this.nativePtr);
	}
	
	public void SetScreen(void* screen)
	{
		CQt.QWidget_SetScreen(this.nativePtr, screen);
	}
	
	public static void* CreateWindowContainer(void* window)
	{
		return CQt.QWidget_CreateWindowContainer(window);
	}
	
	public virtual void InputMethodQuery(int64 param1)
	{
		CQt.QWidget_InputMethodQuery(this.nativePtr, param1);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QWidget_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QWidget_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void Render2(void* target, void* targetOffset)
	{
		CQt.QWidget_Render2(this.nativePtr, target, targetOffset);
	}
	
	public void Render3(void* target, void* targetOffset, void* sourceRegion)
	{
		CQt.QWidget_Render3(this.nativePtr, target, targetOffset, sourceRegion);
	}
	
	public void Render4(void* target, void* targetOffset, void* sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render4(this.nativePtr, target, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Render22(void* painter, void* targetOffset)
	{
		CQt.QWidget_Render22(this.nativePtr, painter, targetOffset);
	}
	
	public void Render32(void* painter, void* targetOffset, void* sourceRegion)
	{
		CQt.QWidget_Render32(this.nativePtr, painter, targetOffset, sourceRegion);
	}
	
	public void Render42(void* painter, void* targetOffset, void* sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render42(this.nativePtr, painter, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Grab1(void* rectangle)
	{
		CQt.QWidget_Grab1(this.nativePtr, rectangle);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QWidget_GrabGesture2(this.nativePtr, typeVal, flags);
	}
	
	public int32 GrabShortcut2(void* key, int64 context)
	{
		return CQt.QWidget_GrabShortcut2(this.nativePtr, key, context);
	}
	
	public void SetShortcutEnabled2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutEnabled2(this.nativePtr, id, enable);
	}
	
	public void SetShortcutAutoRepeat2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutAutoRepeat2(this.nativePtr, id, enable);
	}
	
	public void SetWindowFlag2(int64 param1, bool on)
	{
		CQt.QWidget_SetWindowFlag2(this.nativePtr, param1, on);
	}
	
	public void SetAttribute2(int64 param1, bool on)
	{
		CQt.QWidget_SetAttribute2(this.nativePtr, param1, on);
	}
	
	public static void* CreateWindowContainer2(void* window, void* parent)
	{
		return CQt.QWidget_CreateWindowContainer2(window, parent);
	}
	
	public static void* CreateWindowContainer3(void* window, void* parent, int64 flags)
	{
		return CQt.QWidget_CreateWindowContainer3(window, parent, flags);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(void name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(void* thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void InstallEventFilter(void* filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveEventFilter(void* obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, obj);
	}
	
	public static QMetaObject__Connection Connect(void* sender, void* signal, void* receiver, void* method)
	{
		return CQt.QObject_Connect(sender, signal, receiver, method);
	}
	
	public QMetaObject__Connection Connect2(void* sender, char8[] signal, char8[] member)
	{
		return CQt.QObject_Connect2(this.nativePtr, sender, signal, member);
	}
	
	public static bool Disconnect(void* sender, void* signal, void* receiver, void* member)
	{
		return CQt.QObject_Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8[] name, void* value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, value);
	}
	
	public void Property(char8[] name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8[] classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static QMetaObject__Connection Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal)
	{
		return CQt.QObject_Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public QMetaObject__Connection Connect4(void* sender, char8[] signal, char8[] member, int64 typeVal)
	{
		return CQt.QObject_Connect4(this.nativePtr, sender, signal, member, typeVal);
	}
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public int32 WidthMM()
	{
		return CQt.QPaintDevice_WidthMM(this.nativePtr);
	}
	
	public int32 HeightMM()
	{
		return CQt.QPaintDevice_HeightMM(this.nativePtr);
	}
	
	public int32 LogicalDpiX()
	{
		return CQt.QPaintDevice_LogicalDpiX(this.nativePtr);
	}
	
	public int32 LogicalDpiY()
	{
		return CQt.QPaintDevice_LogicalDpiY(this.nativePtr);
	}
	
	public int32 PhysicalDpiX()
	{
		return CQt.QPaintDevice_PhysicalDpiX(this.nativePtr);
	}
	
	public int32 PhysicalDpiY()
	{
		return CQt.QPaintDevice_PhysicalDpiY(this.nativePtr);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QPaintDevice_DevicePixelRatio(this.nativePtr);
	}
	
	public double DevicePixelRatioF()
	{
		return CQt.QPaintDevice_DevicePixelRatioF(this.nativePtr);
	}
	
	public int32 ColorCount()
	{
		return CQt.QPaintDevice_ColorCount(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QPaintDevice_Depth(this.nativePtr);
	}
	
	public static double DevicePixelRatioFScale()
	{
		return CQt.QPaintDevice_DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QMessageBox_new")]
	public static extern void* QMessageBox_new(void* parent);
	[LinkName("QMessageBox_new2")]
	public static extern void* QMessageBox_new2();
	[LinkName("QMessageBox_new3")]
	public static extern void* QMessageBox_new3(int64 icon, libqt_string title, libqt_string text);
	[LinkName("QMessageBox_new4")]
	public static extern void* QMessageBox_new4(libqt_string title, libqt_string text, int64 icon, int32 button0, int32 button1, int32 button2);
	[LinkName("QMessageBox_new5")]
	public static extern void* QMessageBox_new5(int64 icon, libqt_string title, libqt_string text, int64 buttons);
	[LinkName("QMessageBox_new6")]
	public static extern void* QMessageBox_new6(int64 icon, libqt_string title, libqt_string text, int64 buttons, void* parent);
	[LinkName("QMessageBox_new7")]
	public static extern void* QMessageBox_new7(int64 icon, libqt_string title, libqt_string text, int64 buttons, void* parent, int64 flags);
	[LinkName("QMessageBox_new8")]
	public static extern void* QMessageBox_new8(libqt_string title, libqt_string text, int64 icon, int32 button0, int32 button1, int32 button2, void* parent);
	[LinkName("QMessageBox_new9")]
	public static extern void* QMessageBox_new9(libqt_string title, libqt_string text, int64 icon, int32 button0, int32 button1, int32 button2, void* parent, int64 f);
	[LinkName("QMessageBox_MetaObject")]
	public static extern void* QMessageBox_MetaObject(void* c_this);
	[LinkName("QMessageBox_Metacast")]
	public static extern void* QMessageBox_Metacast(void* c_this, char8[] param1);
	[LinkName("QMessageBox_Metacall")]
	public static extern int32 QMessageBox_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QMessageBox_Tr")]
	public static extern libqt_string QMessageBox_Tr(char8[] s);
	[LinkName("QMessageBox_AddButton")]
	public static extern void QMessageBox_AddButton(void* c_this, void* button, int64 role);
	[LinkName("QMessageBox_AddButton2")]
	public static extern void* QMessageBox_AddButton2(void* c_this, libqt_string text, int64 role);
	[LinkName("QMessageBox_AddButtonWithButton")]
	public static extern void* QMessageBox_AddButtonWithButton(void* c_this, int64 button);
	[LinkName("QMessageBox_RemoveButton")]
	public static extern void QMessageBox_RemoveButton(void* c_this, void* button);
	[LinkName("QMessageBox_Buttons")]
	public static extern void*[] QMessageBox_Buttons(void* c_this);
	[LinkName("QMessageBox_ButtonRole")]
	public static extern int64 QMessageBox_ButtonRole(void* c_this, void* button);
	[LinkName("QMessageBox_SetStandardButtons")]
	public static extern void QMessageBox_SetStandardButtons(void* c_this, int64 buttons);
	[LinkName("QMessageBox_StandardButtons")]
	public static extern int64 QMessageBox_StandardButtons(void* c_this);
	[LinkName("QMessageBox_StandardButton")]
	public static extern int64 QMessageBox_StandardButton(void* c_this, void* button);
	[LinkName("QMessageBox_Button")]
	public static extern void* QMessageBox_Button(void* c_this, int64 which);
	[LinkName("QMessageBox_DefaultButton")]
	public static extern void* QMessageBox_DefaultButton(void* c_this);
	[LinkName("QMessageBox_SetDefaultButton")]
	public static extern void QMessageBox_SetDefaultButton(void* c_this, void* button);
	[LinkName("QMessageBox_SetDefaultButtonWithButton")]
	public static extern void QMessageBox_SetDefaultButtonWithButton(void* c_this, int64 button);
	[LinkName("QMessageBox_EscapeButton")]
	public static extern void* QMessageBox_EscapeButton(void* c_this);
	[LinkName("QMessageBox_SetEscapeButton")]
	public static extern void QMessageBox_SetEscapeButton(void* c_this, void* button);
	[LinkName("QMessageBox_SetEscapeButtonWithButton")]
	public static extern void QMessageBox_SetEscapeButtonWithButton(void* c_this, int64 button);
	[LinkName("QMessageBox_ClickedButton")]
	public static extern void* QMessageBox_ClickedButton(void* c_this);
	[LinkName("QMessageBox_Text")]
	public static extern libqt_string QMessageBox_Text(void* c_this);
	[LinkName("QMessageBox_SetText")]
	public static extern void QMessageBox_SetText(void* c_this, libqt_string text);
	[LinkName("QMessageBox_Icon")]
	public static extern int64 QMessageBox_Icon(void* c_this);
	[LinkName("QMessageBox_SetIcon")]
	public static extern void QMessageBox_SetIcon(void* c_this, int64 icon);
	[LinkName("QMessageBox_IconPixmap")]
	public static extern void QMessageBox_IconPixmap(void* c_this);
	[LinkName("QMessageBox_SetIconPixmap")]
	public static extern void QMessageBox_SetIconPixmap(void* c_this, void* pixmap);
	[LinkName("QMessageBox_TextFormat")]
	public static extern int64 QMessageBox_TextFormat(void* c_this);
	[LinkName("QMessageBox_SetTextFormat")]
	public static extern void QMessageBox_SetTextFormat(void* c_this, int64 format);
	[LinkName("QMessageBox_SetTextInteractionFlags")]
	public static extern void QMessageBox_SetTextInteractionFlags(void* c_this, int64 flags);
	[LinkName("QMessageBox_TextInteractionFlags")]
	public static extern int64 QMessageBox_TextInteractionFlags(void* c_this);
	[LinkName("QMessageBox_SetCheckBox")]
	public static extern void QMessageBox_SetCheckBox(void* c_this, void* cb);
	[LinkName("QMessageBox_CheckBox")]
	public static extern void* QMessageBox_CheckBox(void* c_this);
	[LinkName("QMessageBox_Information")]
	public static extern int64 QMessageBox_Information(void* parent, libqt_string title, libqt_string text);
	[LinkName("QMessageBox_Information2")]
	public static extern int64 QMessageBox_Information2(void* parent, libqt_string title, libqt_string text, int64 button0);
	[LinkName("QMessageBox_Question")]
	public static extern int64 QMessageBox_Question(void* parent, libqt_string title, libqt_string text);
	[LinkName("QMessageBox_Question2")]
	public static extern int32 QMessageBox_Question2(void* parent, libqt_string title, libqt_string text, int64 button0, int64 button1);
	[LinkName("QMessageBox_Warning")]
	public static extern int64 QMessageBox_Warning(void* parent, libqt_string title, libqt_string text);
	[LinkName("QMessageBox_Warning2")]
	public static extern int32 QMessageBox_Warning2(void* parent, libqt_string title, libqt_string text, int64 button0, int64 button1);
	[LinkName("QMessageBox_Critical")]
	public static extern int64 QMessageBox_Critical(void* parent, libqt_string title, libqt_string text);
	[LinkName("QMessageBox_Critical2")]
	public static extern int32 QMessageBox_Critical2(void* parent, libqt_string title, libqt_string text, int64 button0, int64 button1);
	[LinkName("QMessageBox_About")]
	public static extern void QMessageBox_About(void* parent, libqt_string title, libqt_string text);
	[LinkName("QMessageBox_AboutQt")]
	public static extern void QMessageBox_AboutQt(void* parent);
	[LinkName("QMessageBox_Information3")]
	public static extern int32 QMessageBox_Information3(void* parent, libqt_string title, libqt_string text, int32 button0);
	[LinkName("QMessageBox_Information4")]
	public static extern int32 QMessageBox_Information4(void* parent, libqt_string title, libqt_string text, libqt_string button0Text);
	[LinkName("QMessageBox_Question3")]
	public static extern int32 QMessageBox_Question3(void* parent, libqt_string title, libqt_string text, int32 button0);
	[LinkName("QMessageBox_Question4")]
	public static extern int32 QMessageBox_Question4(void* parent, libqt_string title, libqt_string text, libqt_string button0Text);
	[LinkName("QMessageBox_Warning3")]
	public static extern int32 QMessageBox_Warning3(void* parent, libqt_string title, libqt_string text, int32 button0, int32 button1);
	[LinkName("QMessageBox_Warning4")]
	public static extern int32 QMessageBox_Warning4(void* parent, libqt_string title, libqt_string text, libqt_string button0Text);
	[LinkName("QMessageBox_Critical3")]
	public static extern int32 QMessageBox_Critical3(void* parent, libqt_string title, libqt_string text, int32 button0, int32 button1);
	[LinkName("QMessageBox_Critical4")]
	public static extern int32 QMessageBox_Critical4(void* parent, libqt_string title, libqt_string text, libqt_string button0Text);
	[LinkName("QMessageBox_ButtonText")]
	public static extern libqt_string QMessageBox_ButtonText(void* c_this, int32 button);
	[LinkName("QMessageBox_SetButtonText")]
	public static extern void QMessageBox_SetButtonText(void* c_this, int32 button, libqt_string text);
	[LinkName("QMessageBox_InformativeText")]
	public static extern libqt_string QMessageBox_InformativeText(void* c_this);
	[LinkName("QMessageBox_SetInformativeText")]
	public static extern void QMessageBox_SetInformativeText(void* c_this, libqt_string text);
	[LinkName("QMessageBox_DetailedText")]
	public static extern libqt_string QMessageBox_DetailedText(void* c_this);
	[LinkName("QMessageBox_SetDetailedText")]
	public static extern void QMessageBox_SetDetailedText(void* c_this, libqt_string text);
	[LinkName("QMessageBox_SetWindowTitle")]
	public static extern void QMessageBox_SetWindowTitle(void* c_this, libqt_string title);
	[LinkName("QMessageBox_SetWindowModality")]
	public static extern void QMessageBox_SetWindowModality(void* c_this, int64 windowModality);
	[LinkName("QMessageBox_StandardIcon")]
	public static extern void QMessageBox_StandardIcon(int64 icon);
	[LinkName("QMessageBox_Connect_ButtonClicked")]
	public static extern void QMessageBox_Connect_ButtonClicked(void* c_this, c_intptr slot);
	[LinkName("QMessageBox_Event")]
	public static extern bool QMessageBox_Event(void* c_this, void* e);
	[LinkName("QMessageBox_ResizeEvent")]
	public static extern void QMessageBox_ResizeEvent(void* c_this, void* event);
	[LinkName("QMessageBox_ShowEvent")]
	public static extern void QMessageBox_ShowEvent(void* c_this, void* event);
	[LinkName("QMessageBox_CloseEvent")]
	public static extern void QMessageBox_CloseEvent(void* c_this, void* event);
	[LinkName("QMessageBox_KeyPressEvent")]
	public static extern void QMessageBox_KeyPressEvent(void* c_this, void* event);
	[LinkName("QMessageBox_ChangeEvent")]
	public static extern void QMessageBox_ChangeEvent(void* c_this, void* event);
	[LinkName("QMessageBox_Tr2")]
	public static extern libqt_string QMessageBox_Tr2(char8[] s, char8[] c);
	[LinkName("QMessageBox_Tr3")]
	public static extern libqt_string QMessageBox_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QMessageBox_Information42")]
	public static extern int64 QMessageBox_Information42(void* parent, libqt_string title, libqt_string text, int64 buttons);
	[LinkName("QMessageBox_Information5")]
	public static extern int64 QMessageBox_Information5(void* parent, libqt_string title, libqt_string text, int64 buttons, int64 defaultButton);
	[LinkName("QMessageBox_Information52")]
	public static extern int64 QMessageBox_Information52(void* parent, libqt_string title, libqt_string text, int64 button0, int64 button1);
	[LinkName("QMessageBox_Question42")]
	public static extern int64 QMessageBox_Question42(void* parent, libqt_string title, libqt_string text, int64 buttons);
	[LinkName("QMessageBox_Question5")]
	public static extern int64 QMessageBox_Question5(void* parent, libqt_string title, libqt_string text, int64 buttons, int64 defaultButton);
	[LinkName("QMessageBox_Warning42")]
	public static extern int64 QMessageBox_Warning42(void* parent, libqt_string title, libqt_string text, int64 buttons);
	[LinkName("QMessageBox_Warning5")]
	public static extern int64 QMessageBox_Warning5(void* parent, libqt_string title, libqt_string text, int64 buttons, int64 defaultButton);
	[LinkName("QMessageBox_Critical42")]
	public static extern int64 QMessageBox_Critical42(void* parent, libqt_string title, libqt_string text, int64 buttons);
	[LinkName("QMessageBox_Critical5")]
	public static extern int64 QMessageBox_Critical5(void* parent, libqt_string title, libqt_string text, int64 buttons, int64 defaultButton);
	[LinkName("QMessageBox_AboutQt2")]
	public static extern void QMessageBox_AboutQt2(void* parent, libqt_string title);
	[LinkName("QMessageBox_Information53")]
	public static extern int32 QMessageBox_Information53(void* parent, libqt_string title, libqt_string text, int32 button0, int32 button1);
	[LinkName("QMessageBox_Information6")]
	public static extern int32 QMessageBox_Information6(void* parent, libqt_string title, libqt_string text, int32 button0, int32 button1, int32 button2);
	[LinkName("QMessageBox_Information54")]
	public static extern int32 QMessageBox_Information54(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text);
	[LinkName("QMessageBox_Information62")]
	public static extern int32 QMessageBox_Information62(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text);
	[LinkName("QMessageBox_Information7")]
	public static extern int32 QMessageBox_Information7(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int32 defaultButtonNumber);
	[LinkName("QMessageBox_Information8")]
	public static extern int32 QMessageBox_Information8(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int32 defaultButtonNumber, int32 escapeButtonNumber);
	[LinkName("QMessageBox_Question52")]
	public static extern int32 QMessageBox_Question52(void* parent, libqt_string title, libqt_string text, int32 button0, int32 button1);
	[LinkName("QMessageBox_Question6")]
	public static extern int32 QMessageBox_Question6(void* parent, libqt_string title, libqt_string text, int32 button0, int32 button1, int32 button2);
	[LinkName("QMessageBox_Question53")]
	public static extern int32 QMessageBox_Question53(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text);
	[LinkName("QMessageBox_Question62")]
	public static extern int32 QMessageBox_Question62(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text);
	[LinkName("QMessageBox_Question7")]
	public static extern int32 QMessageBox_Question7(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int32 defaultButtonNumber);
	[LinkName("QMessageBox_Question8")]
	public static extern int32 QMessageBox_Question8(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int32 defaultButtonNumber, int32 escapeButtonNumber);
	[LinkName("QMessageBox_Warning6")]
	public static extern int32 QMessageBox_Warning6(void* parent, libqt_string title, libqt_string text, int32 button0, int32 button1, int32 button2);
	[LinkName("QMessageBox_Warning52")]
	public static extern int32 QMessageBox_Warning52(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text);
	[LinkName("QMessageBox_Warning62")]
	public static extern int32 QMessageBox_Warning62(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text);
	[LinkName("QMessageBox_Warning7")]
	public static extern int32 QMessageBox_Warning7(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int32 defaultButtonNumber);
	[LinkName("QMessageBox_Warning8")]
	public static extern int32 QMessageBox_Warning8(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int32 defaultButtonNumber, int32 escapeButtonNumber);
	[LinkName("QMessageBox_Critical6")]
	public static extern int32 QMessageBox_Critical6(void* parent, libqt_string title, libqt_string text, int32 button0, int32 button1, int32 button2);
	[LinkName("QMessageBox_Critical52")]
	public static extern int32 QMessageBox_Critical52(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text);
	[LinkName("QMessageBox_Critical62")]
	public static extern int32 QMessageBox_Critical62(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text);
	[LinkName("QMessageBox_Critical7")]
	public static extern int32 QMessageBox_Critical7(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int32 defaultButtonNumber);
	[LinkName("QMessageBox_Critical8")]
	public static extern int32 QMessageBox_Critical8(void* parent, libqt_string title, libqt_string text, libqt_string button0Text, libqt_string button1Text, libqt_string button2Text, int32 defaultButtonNumber, int32 escapeButtonNumber);
	/// Delete this object from C++ memory
	[LinkName("QMessageBox_Delete")]
	public static extern void QMessageBox_Delete(void* self);
}