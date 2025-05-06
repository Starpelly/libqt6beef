using System;
using System.Interop;
namespace Qt;

public struct QKeySequenceEdit : QWidget
{
	[LinkName("QKeySequenceEdit_new")]
	public static extern QKeySequenceEdit* QKeySequenceEdit_new(QWidget* parent);
	[LinkName("QKeySequenceEdit_new2")]
	public static extern QKeySequenceEdit* QKeySequenceEdit_new2();
	[LinkName("QKeySequenceEdit_new3")]
	public static extern QKeySequenceEdit* QKeySequenceEdit_new3(QKeySequence* keySequence);
	[LinkName("QKeySequenceEdit_new4")]
	public static extern QKeySequenceEdit* QKeySequenceEdit_new4(QKeySequence* keySequence, QWidget* parent);
	[LinkName("QKeySequenceEdit_MetaObject")]
	public static extern QMetaObject* QKeySequenceEdit_MetaObject(Self* c_this);
	[LinkName("QKeySequenceEdit_Metacast")]
	public static extern void* QKeySequenceEdit_Metacast(Self* c_this, char8[] param1);
	[LinkName("QKeySequenceEdit_Metacall")]
	public static extern int32 QKeySequenceEdit_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QKeySequenceEdit_Tr")]
	public static extern libqt_string QKeySequenceEdit_Tr(char8[] s);
	[LinkName("QKeySequenceEdit_KeySequence")]
	public static extern QKeySequence QKeySequenceEdit_KeySequence(Self* c_this);
	[LinkName("QKeySequenceEdit_SetClearButtonEnabled")]
	public static extern void QKeySequenceEdit_SetClearButtonEnabled(Self* c_this, bool enable);
	[LinkName("QKeySequenceEdit_IsClearButtonEnabled")]
	public static extern bool QKeySequenceEdit_IsClearButtonEnabled(Self* c_this);
	[LinkName("QKeySequenceEdit_SetKeySequence")]
	public static extern void QKeySequenceEdit_SetKeySequence(Self* c_this, QKeySequence* keySequence);
	[LinkName("QKeySequenceEdit_Clear")]
	public static extern void QKeySequenceEdit_Clear(Self* c_this);
	[LinkName("QKeySequenceEdit_Connect_EditingFinished")]
	public static extern void QKeySequenceEdit_Connect_EditingFinished(Self* c_this, c_intptr slot);
	[LinkName("QKeySequenceEdit_Connect_KeySequenceChanged")]
	public static extern void QKeySequenceEdit_Connect_KeySequenceChanged(Self* c_this, c_intptr slot);
	[LinkName("QKeySequenceEdit_Event")]
	public static extern bool QKeySequenceEdit_Event(Self* c_this, QEvent* param1);
	[LinkName("QKeySequenceEdit_KeyPressEvent")]
	public static extern void QKeySequenceEdit_KeyPressEvent(Self* c_this, QKeyEvent* param1);
	[LinkName("QKeySequenceEdit_KeyReleaseEvent")]
	public static extern void QKeySequenceEdit_KeyReleaseEvent(Self* c_this, QKeyEvent* param1);
	[LinkName("QKeySequenceEdit_TimerEvent")]
	public static extern void QKeySequenceEdit_TimerEvent(Self* c_this, QTimerEvent* param1);
	[LinkName("QKeySequenceEdit_FocusOutEvent")]
	public static extern void QKeySequenceEdit_FocusOutEvent(Self* c_this, QFocusEvent* param1);
	[LinkName("QKeySequenceEdit_Tr2")]
	public static extern libqt_string QKeySequenceEdit_Tr2(char8[] s, char8[] c);
	[LinkName("QKeySequenceEdit_Tr3")]
	public static extern libqt_string QKeySequenceEdit_Tr3(char8[] s, char8[] c, int32 n);
}