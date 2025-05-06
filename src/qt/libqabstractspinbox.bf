using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAbstractSpinBox__StepEnabledFlag
{
	StepNone = 0,
	StepUpEnabled = 1,
	StepDownEnabled = 2,
}
[AllowDuplicates]
public enum QAbstractSpinBox__ButtonSymbols
{
	UpDownArrows = 0,
	PlusMinus = 1,
	NoButtons = 2,
}
[AllowDuplicates]
public enum QAbstractSpinBox__CorrectionMode
{
	CorrectToPreviousValue = 0,
	CorrectToNearestValue = 1,
}
[AllowDuplicates]
public enum QAbstractSpinBox__StepType
{
	DefaultStepType = 0,
	AdaptiveDecimalStepType = 1,
}
public struct QAbstractSpinBox : QWidget
{
	[LinkName("QAbstractSpinBox_new")]
	public static extern QAbstractSpinBox* QAbstractSpinBox_new(QWidget* parent);
	[LinkName("QAbstractSpinBox_new2")]
	public static extern QAbstractSpinBox* QAbstractSpinBox_new2();
	[LinkName("QAbstractSpinBox_MetaObject")]
	public static extern QMetaObject* QAbstractSpinBox_MetaObject(Self* c_this);
	[LinkName("QAbstractSpinBox_Metacast")]
	public static extern void* QAbstractSpinBox_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAbstractSpinBox_Metacall")]
	public static extern int32 QAbstractSpinBox_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractSpinBox_Tr")]
	public static extern libqt_string QAbstractSpinBox_Tr(char8[] s);
	[LinkName("QAbstractSpinBox_ButtonSymbols")]
	public static extern int64 QAbstractSpinBox_ButtonSymbols(Self* c_this);
	[LinkName("QAbstractSpinBox_SetButtonSymbols")]
	public static extern void QAbstractSpinBox_SetButtonSymbols(Self* c_this, int64 bs);
	[LinkName("QAbstractSpinBox_SetCorrectionMode")]
	public static extern void QAbstractSpinBox_SetCorrectionMode(Self* c_this, int64 cm);
	[LinkName("QAbstractSpinBox_CorrectionMode")]
	public static extern int64 QAbstractSpinBox_CorrectionMode(Self* c_this);
	[LinkName("QAbstractSpinBox_HasAcceptableInput")]
	public static extern bool QAbstractSpinBox_HasAcceptableInput(Self* c_this);
	[LinkName("QAbstractSpinBox_Text")]
	public static extern libqt_string QAbstractSpinBox_Text(Self* c_this);
	[LinkName("QAbstractSpinBox_SpecialValueText")]
	public static extern libqt_string QAbstractSpinBox_SpecialValueText(Self* c_this);
	[LinkName("QAbstractSpinBox_SetSpecialValueText")]
	public static extern void QAbstractSpinBox_SetSpecialValueText(Self* c_this, libqt_string txt);
	[LinkName("QAbstractSpinBox_Wrapping")]
	public static extern bool QAbstractSpinBox_Wrapping(Self* c_this);
	[LinkName("QAbstractSpinBox_SetWrapping")]
	public static extern void QAbstractSpinBox_SetWrapping(Self* c_this, bool w);
	[LinkName("QAbstractSpinBox_SetReadOnly")]
	public static extern void QAbstractSpinBox_SetReadOnly(Self* c_this, bool r);
	[LinkName("QAbstractSpinBox_IsReadOnly")]
	public static extern bool QAbstractSpinBox_IsReadOnly(Self* c_this);
	[LinkName("QAbstractSpinBox_SetKeyboardTracking")]
	public static extern void QAbstractSpinBox_SetKeyboardTracking(Self* c_this, bool kt);
	[LinkName("QAbstractSpinBox_KeyboardTracking")]
	public static extern bool QAbstractSpinBox_KeyboardTracking(Self* c_this);
	[LinkName("QAbstractSpinBox_SetAlignment")]
	public static extern void QAbstractSpinBox_SetAlignment(Self* c_this, int64 flag);
	[LinkName("QAbstractSpinBox_Alignment")]
	public static extern int64 QAbstractSpinBox_Alignment(Self* c_this);
	[LinkName("QAbstractSpinBox_SetFrame")]
	public static extern void QAbstractSpinBox_SetFrame(Self* c_this, bool frame);
	[LinkName("QAbstractSpinBox_HasFrame")]
	public static extern bool QAbstractSpinBox_HasFrame(Self* c_this);
	[LinkName("QAbstractSpinBox_SetAccelerated")]
	public static extern void QAbstractSpinBox_SetAccelerated(Self* c_this, bool on);
	[LinkName("QAbstractSpinBox_IsAccelerated")]
	public static extern bool QAbstractSpinBox_IsAccelerated(Self* c_this);
	[LinkName("QAbstractSpinBox_SetGroupSeparatorShown")]
	public static extern void QAbstractSpinBox_SetGroupSeparatorShown(Self* c_this, bool shown);
	[LinkName("QAbstractSpinBox_IsGroupSeparatorShown")]
	public static extern bool QAbstractSpinBox_IsGroupSeparatorShown(Self* c_this);
	[LinkName("QAbstractSpinBox_SizeHint")]
	public static extern QSize QAbstractSpinBox_SizeHint(Self* c_this);
	[LinkName("QAbstractSpinBox_MinimumSizeHint")]
	public static extern QSize QAbstractSpinBox_MinimumSizeHint(Self* c_this);
	[LinkName("QAbstractSpinBox_InterpretText")]
	public static extern void QAbstractSpinBox_InterpretText(Self* c_this);
	[LinkName("QAbstractSpinBox_Event")]
	public static extern bool QAbstractSpinBox_Event(Self* c_this, QEvent* event);
	[LinkName("QAbstractSpinBox_InputMethodQuery")]
	public static extern QVariant QAbstractSpinBox_InputMethodQuery(Self* c_this, int64 param1);
	[LinkName("QAbstractSpinBox_Validate")]
	public static extern int64 QAbstractSpinBox_Validate(Self* c_this, libqt_string input, int32* pos);
	[LinkName("QAbstractSpinBox_Fixup")]
	public static extern void QAbstractSpinBox_Fixup(Self* c_this, libqt_string input);
	[LinkName("QAbstractSpinBox_StepBy")]
	public static extern void QAbstractSpinBox_StepBy(Self* c_this, int32 steps);
	[LinkName("QAbstractSpinBox_StepUp")]
	public static extern void QAbstractSpinBox_StepUp(Self* c_this);
	[LinkName("QAbstractSpinBox_StepDown")]
	public static extern void QAbstractSpinBox_StepDown(Self* c_this);
	[LinkName("QAbstractSpinBox_SelectAll")]
	public static extern void QAbstractSpinBox_SelectAll(Self* c_this);
	[LinkName("QAbstractSpinBox_Clear")]
	public static extern void QAbstractSpinBox_Clear(Self* c_this);
	[LinkName("QAbstractSpinBox_ResizeEvent")]
	public static extern void QAbstractSpinBox_ResizeEvent(Self* c_this, QResizeEvent* event);
	[LinkName("QAbstractSpinBox_KeyPressEvent")]
	public static extern void QAbstractSpinBox_KeyPressEvent(Self* c_this, QKeyEvent* event);
	[LinkName("QAbstractSpinBox_KeyReleaseEvent")]
	public static extern void QAbstractSpinBox_KeyReleaseEvent(Self* c_this, QKeyEvent* event);
	[LinkName("QAbstractSpinBox_WheelEvent")]
	public static extern void QAbstractSpinBox_WheelEvent(Self* c_this, QWheelEvent* event);
	[LinkName("QAbstractSpinBox_FocusInEvent")]
	public static extern void QAbstractSpinBox_FocusInEvent(Self* c_this, QFocusEvent* event);
	[LinkName("QAbstractSpinBox_FocusOutEvent")]
	public static extern void QAbstractSpinBox_FocusOutEvent(Self* c_this, QFocusEvent* event);
	[LinkName("QAbstractSpinBox_ContextMenuEvent")]
	public static extern void QAbstractSpinBox_ContextMenuEvent(Self* c_this, QContextMenuEvent* event);
	[LinkName("QAbstractSpinBox_ChangeEvent")]
	public static extern void QAbstractSpinBox_ChangeEvent(Self* c_this, QEvent* event);
	[LinkName("QAbstractSpinBox_CloseEvent")]
	public static extern void QAbstractSpinBox_CloseEvent(Self* c_this, QCloseEvent* event);
	[LinkName("QAbstractSpinBox_HideEvent")]
	public static extern void QAbstractSpinBox_HideEvent(Self* c_this, QHideEvent* event);
	[LinkName("QAbstractSpinBox_MousePressEvent")]
	public static extern void QAbstractSpinBox_MousePressEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QAbstractSpinBox_MouseReleaseEvent")]
	public static extern void QAbstractSpinBox_MouseReleaseEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QAbstractSpinBox_MouseMoveEvent")]
	public static extern void QAbstractSpinBox_MouseMoveEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QAbstractSpinBox_TimerEvent")]
	public static extern void QAbstractSpinBox_TimerEvent(Self* c_this, QTimerEvent* event);
	[LinkName("QAbstractSpinBox_PaintEvent")]
	public static extern void QAbstractSpinBox_PaintEvent(Self* c_this, QPaintEvent* event);
	[LinkName("QAbstractSpinBox_ShowEvent")]
	public static extern void QAbstractSpinBox_ShowEvent(Self* c_this, QShowEvent* event);
	[LinkName("QAbstractSpinBox_InitStyleOption")]
	public static extern void QAbstractSpinBox_InitStyleOption(Self* c_this, QStyleOptionSpinBox* option);
	[LinkName("QAbstractSpinBox_LineEdit")]
	public static extern QLineEdit* QAbstractSpinBox_LineEdit(Self* c_this);
	[LinkName("QAbstractSpinBox_SetLineEdit")]
	public static extern void QAbstractSpinBox_SetLineEdit(Self* c_this, QLineEdit* edit);
	[LinkName("QAbstractSpinBox_StepEnabled")]
	public static extern int64 QAbstractSpinBox_StepEnabled(Self* c_this);
	[LinkName("QAbstractSpinBox_EditingFinished")]
	public static extern void QAbstractSpinBox_EditingFinished(Self* c_this);
	[LinkName("QAbstractSpinBox_Tr2")]
	public static extern libqt_string QAbstractSpinBox_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractSpinBox_Tr3")]
	public static extern libqt_string QAbstractSpinBox_Tr3(char8[] s, char8[] c, int32 n);
}