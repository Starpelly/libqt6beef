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
public struct QAbstractSpinBox
{
	[LinkName("QAbstractSpinBox_new")]
	public static extern void* QAbstractSpinBox_new(QWidget parent);
	[LinkName("QAbstractSpinBox_new2")]
	public static extern void* QAbstractSpinBox_new2();
	[LinkName("QAbstractSpinBox_MetaObject")]
	public static extern QMetaObject QAbstractSpinBox_MetaObject(void* c_this);
	[LinkName("QAbstractSpinBox_Metacast")]
	public static extern void QAbstractSpinBox_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractSpinBox_Metacall")]
	public static extern int32 QAbstractSpinBox_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAbstractSpinBox_Tr")]
	public static extern char8[] QAbstractSpinBox_Tr(char8[] s);
	[LinkName("QAbstractSpinBox_ButtonSymbols")]
	public static extern int64 QAbstractSpinBox_ButtonSymbols(void* c_this);
	[LinkName("QAbstractSpinBox_SetButtonSymbols")]
	public static extern void QAbstractSpinBox_SetButtonSymbols(void* c_this, int64 bs);
	[LinkName("QAbstractSpinBox_SetCorrectionMode")]
	public static extern void QAbstractSpinBox_SetCorrectionMode(void* c_this, int64 cm);
	[LinkName("QAbstractSpinBox_CorrectionMode")]
	public static extern int64 QAbstractSpinBox_CorrectionMode(void* c_this);
	[LinkName("QAbstractSpinBox_HasAcceptableInput")]
	public static extern bool QAbstractSpinBox_HasAcceptableInput(void* c_this);
	[LinkName("QAbstractSpinBox_Text")]
	public static extern char8[] QAbstractSpinBox_Text(void* c_this);
	[LinkName("QAbstractSpinBox_SpecialValueText")]
	public static extern char8[] QAbstractSpinBox_SpecialValueText(void* c_this);
	[LinkName("QAbstractSpinBox_SetSpecialValueText")]
	public static extern void QAbstractSpinBox_SetSpecialValueText(void* c_this, char8[] txt);
	[LinkName("QAbstractSpinBox_Wrapping")]
	public static extern bool QAbstractSpinBox_Wrapping(void* c_this);
	[LinkName("QAbstractSpinBox_SetWrapping")]
	public static extern void QAbstractSpinBox_SetWrapping(void* c_this, bool w);
	[LinkName("QAbstractSpinBox_SetReadOnly")]
	public static extern void QAbstractSpinBox_SetReadOnly(void* c_this, bool r);
	[LinkName("QAbstractSpinBox_IsReadOnly")]
	public static extern bool QAbstractSpinBox_IsReadOnly(void* c_this);
	[LinkName("QAbstractSpinBox_SetKeyboardTracking")]
	public static extern void QAbstractSpinBox_SetKeyboardTracking(void* c_this, bool kt);
	[LinkName("QAbstractSpinBox_KeyboardTracking")]
	public static extern bool QAbstractSpinBox_KeyboardTracking(void* c_this);
	[LinkName("QAbstractSpinBox_SetAlignment")]
	public static extern void QAbstractSpinBox_SetAlignment(void* c_this, int64 flag);
	[LinkName("QAbstractSpinBox_Alignment")]
	public static extern int64 QAbstractSpinBox_Alignment(void* c_this);
	[LinkName("QAbstractSpinBox_SetFrame")]
	public static extern void QAbstractSpinBox_SetFrame(void* c_this, bool frame);
	[LinkName("QAbstractSpinBox_HasFrame")]
	public static extern bool QAbstractSpinBox_HasFrame(void* c_this);
	[LinkName("QAbstractSpinBox_SetAccelerated")]
	public static extern void QAbstractSpinBox_SetAccelerated(void* c_this, bool on);
	[LinkName("QAbstractSpinBox_IsAccelerated")]
	public static extern bool QAbstractSpinBox_IsAccelerated(void* c_this);
	[LinkName("QAbstractSpinBox_SetGroupSeparatorShown")]
	public static extern void QAbstractSpinBox_SetGroupSeparatorShown(void* c_this, bool shown);
	[LinkName("QAbstractSpinBox_IsGroupSeparatorShown")]
	public static extern bool QAbstractSpinBox_IsGroupSeparatorShown(void* c_this);
	[LinkName("QAbstractSpinBox_SizeHint")]
	public static extern QSize QAbstractSpinBox_SizeHint(void* c_this);
	[LinkName("QAbstractSpinBox_MinimumSizeHint")]
	public static extern QSize QAbstractSpinBox_MinimumSizeHint(void* c_this);
	[LinkName("QAbstractSpinBox_InterpretText")]
	public static extern void QAbstractSpinBox_InterpretText(void* c_this);
	[LinkName("QAbstractSpinBox_Event")]
	public static extern bool QAbstractSpinBox_Event(void* c_this, QEvent event);
	[LinkName("QAbstractSpinBox_InputMethodQuery")]
	public static extern QVariant QAbstractSpinBox_InputMethodQuery(void* c_this, int64 param1);
	[LinkName("QAbstractSpinBox_Validate")]
	public static extern int64 QAbstractSpinBox_Validate(void* c_this, char8[] input, int32 pos);
	[LinkName("QAbstractSpinBox_Fixup")]
	public static extern void QAbstractSpinBox_Fixup(void* c_this, char8[] input);
	[LinkName("QAbstractSpinBox_StepBy")]
	public static extern void QAbstractSpinBox_StepBy(void* c_this, int32 steps);
	[LinkName("QAbstractSpinBox_StepUp")]
	public static extern void QAbstractSpinBox_StepUp(void* c_this);
	[LinkName("QAbstractSpinBox_StepDown")]
	public static extern void QAbstractSpinBox_StepDown(void* c_this);
	[LinkName("QAbstractSpinBox_SelectAll")]
	public static extern void QAbstractSpinBox_SelectAll(void* c_this);
	[LinkName("QAbstractSpinBox_Clear")]
	public static extern void QAbstractSpinBox_Clear(void* c_this);
	[LinkName("QAbstractSpinBox_ResizeEvent")]
	public static extern void QAbstractSpinBox_ResizeEvent(void* c_this, QResizeEvent event);
	[LinkName("QAbstractSpinBox_KeyPressEvent")]
	public static extern void QAbstractSpinBox_KeyPressEvent(void* c_this, QKeyEvent event);
	[LinkName("QAbstractSpinBox_KeyReleaseEvent")]
	public static extern void QAbstractSpinBox_KeyReleaseEvent(void* c_this, QKeyEvent event);
	[LinkName("QAbstractSpinBox_WheelEvent")]
	public static extern void QAbstractSpinBox_WheelEvent(void* c_this, QWheelEvent event);
	[LinkName("QAbstractSpinBox_FocusInEvent")]
	public static extern void QAbstractSpinBox_FocusInEvent(void* c_this, QFocusEvent event);
	[LinkName("QAbstractSpinBox_FocusOutEvent")]
	public static extern void QAbstractSpinBox_FocusOutEvent(void* c_this, QFocusEvent event);
	[LinkName("QAbstractSpinBox_ContextMenuEvent")]
	public static extern void QAbstractSpinBox_ContextMenuEvent(void* c_this, QContextMenuEvent event);
	[LinkName("QAbstractSpinBox_ChangeEvent")]
	public static extern void QAbstractSpinBox_ChangeEvent(void* c_this, QEvent event);
	[LinkName("QAbstractSpinBox_CloseEvent")]
	public static extern void QAbstractSpinBox_CloseEvent(void* c_this, QCloseEvent event);
	[LinkName("QAbstractSpinBox_HideEvent")]
	public static extern void QAbstractSpinBox_HideEvent(void* c_this, QHideEvent event);
	[LinkName("QAbstractSpinBox_MousePressEvent")]
	public static extern void QAbstractSpinBox_MousePressEvent(void* c_this, QMouseEvent event);
	[LinkName("QAbstractSpinBox_MouseReleaseEvent")]
	public static extern void QAbstractSpinBox_MouseReleaseEvent(void* c_this, QMouseEvent event);
	[LinkName("QAbstractSpinBox_MouseMoveEvent")]
	public static extern void QAbstractSpinBox_MouseMoveEvent(void* c_this, QMouseEvent event);
	[LinkName("QAbstractSpinBox_TimerEvent")]
	public static extern void QAbstractSpinBox_TimerEvent(void* c_this, QTimerEvent event);
	[LinkName("QAbstractSpinBox_PaintEvent")]
	public static extern void QAbstractSpinBox_PaintEvent(void* c_this, QPaintEvent event);
	[LinkName("QAbstractSpinBox_ShowEvent")]
	public static extern void QAbstractSpinBox_ShowEvent(void* c_this, QShowEvent event);
	[LinkName("QAbstractSpinBox_InitStyleOption")]
	public static extern void QAbstractSpinBox_InitStyleOption(void* c_this, QStyleOptionSpinBox option);
	[LinkName("QAbstractSpinBox_LineEdit")]
	public static extern QLineEdit QAbstractSpinBox_LineEdit(void* c_this);
	[LinkName("QAbstractSpinBox_SetLineEdit")]
	public static extern void QAbstractSpinBox_SetLineEdit(void* c_this, QLineEdit edit);
	[LinkName("QAbstractSpinBox_StepEnabled")]
	public static extern int64 QAbstractSpinBox_StepEnabled(void* c_this);
	[LinkName("QAbstractSpinBox_EditingFinished")]
	public static extern void QAbstractSpinBox_EditingFinished(void* c_this);
	[LinkName("QAbstractSpinBox_Tr2")]
	public static extern char8[] QAbstractSpinBox_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractSpinBox_Tr3")]
	public static extern char8[] QAbstractSpinBox_Tr3(char8[] s, char8[] c, int32 n);
}