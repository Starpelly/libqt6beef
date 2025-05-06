using System;
using System.Interop;
namespace Qt;

public struct QAbstractButton : QWidget
{
	[LinkName("QAbstractButton_new")]
	public static extern QAbstractButton* QAbstractButton_new(QWidget* parent);
	[LinkName("QAbstractButton_new2")]
	public static extern QAbstractButton* QAbstractButton_new2();
	[LinkName("QAbstractButton_MetaObject")]
	public static extern QMetaObject* QAbstractButton_MetaObject(Self* c_this);
	[LinkName("QAbstractButton_Metacast")]
	public static extern void* QAbstractButton_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAbstractButton_Metacall")]
	public static extern int32 QAbstractButton_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractButton_Tr")]
	public static extern libqt_string QAbstractButton_Tr(char8[] s);
	[LinkName("QAbstractButton_SetText")]
	public static extern void QAbstractButton_SetText(Self* c_this, libqt_string text);
	[LinkName("QAbstractButton_Text")]
	public static extern libqt_string QAbstractButton_Text(Self* c_this);
	[LinkName("QAbstractButton_SetIcon")]
	public static extern void QAbstractButton_SetIcon(Self* c_this, QIcon* icon);
	[LinkName("QAbstractButton_Icon")]
	public static extern QIcon QAbstractButton_Icon(Self* c_this);
	[LinkName("QAbstractButton_IconSize")]
	public static extern QSize QAbstractButton_IconSize(Self* c_this);
	[LinkName("QAbstractButton_SetShortcut")]
	public static extern void QAbstractButton_SetShortcut(Self* c_this, QKeySequence* key);
	[LinkName("QAbstractButton_Shortcut")]
	public static extern QKeySequence QAbstractButton_Shortcut(Self* c_this);
	[LinkName("QAbstractButton_SetCheckable")]
	public static extern void QAbstractButton_SetCheckable(Self* c_this, bool checkable);
	[LinkName("QAbstractButton_IsCheckable")]
	public static extern bool QAbstractButton_IsCheckable(Self* c_this);
	[LinkName("QAbstractButton_IsChecked")]
	public static extern bool QAbstractButton_IsChecked(Self* c_this);
	[LinkName("QAbstractButton_SetDown")]
	public static extern void QAbstractButton_SetDown(Self* c_this, bool down);
	[LinkName("QAbstractButton_IsDown")]
	public static extern bool QAbstractButton_IsDown(Self* c_this);
	[LinkName("QAbstractButton_SetAutoRepeat")]
	public static extern void QAbstractButton_SetAutoRepeat(Self* c_this, bool autoRepeat);
	[LinkName("QAbstractButton_AutoRepeat")]
	public static extern bool QAbstractButton_AutoRepeat(Self* c_this);
	[LinkName("QAbstractButton_SetAutoRepeatDelay")]
	public static extern void QAbstractButton_SetAutoRepeatDelay(Self* c_this, int32 autoRepeatDelay);
	[LinkName("QAbstractButton_AutoRepeatDelay")]
	public static extern int32 QAbstractButton_AutoRepeatDelay(Self* c_this);
	[LinkName("QAbstractButton_SetAutoRepeatInterval")]
	public static extern void QAbstractButton_SetAutoRepeatInterval(Self* c_this, int32 autoRepeatInterval);
	[LinkName("QAbstractButton_AutoRepeatInterval")]
	public static extern int32 QAbstractButton_AutoRepeatInterval(Self* c_this);
	[LinkName("QAbstractButton_SetAutoExclusive")]
	public static extern void QAbstractButton_SetAutoExclusive(Self* c_this, bool autoExclusive);
	[LinkName("QAbstractButton_AutoExclusive")]
	public static extern bool QAbstractButton_AutoExclusive(Self* c_this);
	[LinkName("QAbstractButton_Group")]
	public static extern QButtonGroup* QAbstractButton_Group(Self* c_this);
	[LinkName("QAbstractButton_SetIconSize")]
	public static extern void QAbstractButton_SetIconSize(Self* c_this, QSize* size);
	[LinkName("QAbstractButton_AnimateClick")]
	public static extern void QAbstractButton_AnimateClick(Self* c_this);
	[LinkName("QAbstractButton_Click")]
	public static extern void QAbstractButton_Click(Self* c_this);
	[LinkName("QAbstractButton_Toggle")]
	public static extern void QAbstractButton_Toggle(Self* c_this);
	[LinkName("QAbstractButton_SetChecked")]
	public static extern void QAbstractButton_SetChecked(Self* c_this, bool _checked);
	[LinkName("QAbstractButton_Pressed")]
	public static extern void QAbstractButton_Pressed(Self* c_this);
	[LinkName("QAbstractButton_Released")]
	public static extern void QAbstractButton_Released(Self* c_this);
	[LinkName("QAbstractButton_Clicked")]
	public static extern void QAbstractButton_Clicked(Self* c_this);
	[LinkName("QAbstractButton_Toggled")]
	public static extern void QAbstractButton_Toggled(Self* c_this, bool _checked);
	[LinkName("QAbstractButton_PaintEvent")]
	public static extern void QAbstractButton_PaintEvent(Self* c_this, QPaintEvent* e);
	[LinkName("QAbstractButton_HitButton")]
	public static extern bool QAbstractButton_HitButton(Self* c_this, QPoint* pos);
	[LinkName("QAbstractButton_CheckStateSet")]
	public static extern void QAbstractButton_CheckStateSet(Self* c_this);
	[LinkName("QAbstractButton_NextCheckState")]
	public static extern void QAbstractButton_NextCheckState(Self* c_this);
	[LinkName("QAbstractButton_Event")]
	public static extern bool QAbstractButton_Event(Self* c_this, QEvent* e);
	[LinkName("QAbstractButton_KeyPressEvent")]
	public static extern void QAbstractButton_KeyPressEvent(Self* c_this, QKeyEvent* e);
	[LinkName("QAbstractButton_KeyReleaseEvent")]
	public static extern void QAbstractButton_KeyReleaseEvent(Self* c_this, QKeyEvent* e);
	[LinkName("QAbstractButton_MousePressEvent")]
	public static extern void QAbstractButton_MousePressEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QAbstractButton_MouseReleaseEvent")]
	public static extern void QAbstractButton_MouseReleaseEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QAbstractButton_MouseMoveEvent")]
	public static extern void QAbstractButton_MouseMoveEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QAbstractButton_FocusInEvent")]
	public static extern void QAbstractButton_FocusInEvent(Self* c_this, QFocusEvent* e);
	[LinkName("QAbstractButton_FocusOutEvent")]
	public static extern void QAbstractButton_FocusOutEvent(Self* c_this, QFocusEvent* e);
	[LinkName("QAbstractButton_ChangeEvent")]
	public static extern void QAbstractButton_ChangeEvent(Self* c_this, QEvent* e);
	[LinkName("QAbstractButton_TimerEvent")]
	public static extern void QAbstractButton_TimerEvent(Self* c_this, QTimerEvent* e);
	[LinkName("QAbstractButton_Tr2")]
	public static extern libqt_string QAbstractButton_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractButton_Tr3")]
	public static extern libqt_string QAbstractButton_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAbstractButton_Clicked1")]
	public static extern void QAbstractButton_Clicked1(Self* c_this, bool _checked);
}