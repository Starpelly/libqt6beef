using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAbstractSlider__SliderAction
{
	SliderNoAction = 0,
	SliderSingleStepAdd = 1,
	SliderSingleStepSub = 2,
	SliderPageStepAdd = 3,
	SliderPageStepSub = 4,
	SliderToMinimum = 5,
	SliderToMaximum = 6,
	SliderMove = 7,
}
[AllowDuplicates]
public enum QAbstractSlider__SliderChange
{
	SliderRangeChange = 0,
	SliderOrientationChange = 1,
	SliderStepsChange = 2,
	SliderValueChange = 3,
}
public struct QAbstractSlider : QWidget
{
	[LinkName("QAbstractSlider_new")]
	public static extern QAbstractSlider* QAbstractSlider_new(QWidget* parent);
	[LinkName("QAbstractSlider_new2")]
	public static extern QAbstractSlider* QAbstractSlider_new2();
	[LinkName("QAbstractSlider_MetaObject")]
	public static extern QMetaObject* QAbstractSlider_MetaObject(Self* c_this);
	[LinkName("QAbstractSlider_Metacast")]
	public static extern void* QAbstractSlider_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAbstractSlider_Metacall")]
	public static extern int32 QAbstractSlider_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractSlider_Tr")]
	public static extern libqt_string QAbstractSlider_Tr(char8[] s);
	[LinkName("QAbstractSlider_Orientation")]
	public static extern int64 QAbstractSlider_Orientation(Self* c_this);
	[LinkName("QAbstractSlider_SetMinimum")]
	public static extern void QAbstractSlider_SetMinimum(Self* c_this, int32 minimum);
	[LinkName("QAbstractSlider_Minimum")]
	public static extern int32 QAbstractSlider_Minimum(Self* c_this);
	[LinkName("QAbstractSlider_SetMaximum")]
	public static extern void QAbstractSlider_SetMaximum(Self* c_this, int32 maximum);
	[LinkName("QAbstractSlider_Maximum")]
	public static extern int32 QAbstractSlider_Maximum(Self* c_this);
	[LinkName("QAbstractSlider_SetSingleStep")]
	public static extern void QAbstractSlider_SetSingleStep(Self* c_this, int32 singleStep);
	[LinkName("QAbstractSlider_SingleStep")]
	public static extern int32 QAbstractSlider_SingleStep(Self* c_this);
	[LinkName("QAbstractSlider_SetPageStep")]
	public static extern void QAbstractSlider_SetPageStep(Self* c_this, int32 pageStep);
	[LinkName("QAbstractSlider_PageStep")]
	public static extern int32 QAbstractSlider_PageStep(Self* c_this);
	[LinkName("QAbstractSlider_SetTracking")]
	public static extern void QAbstractSlider_SetTracking(Self* c_this, bool enable);
	[LinkName("QAbstractSlider_HasTracking")]
	public static extern bool QAbstractSlider_HasTracking(Self* c_this);
	[LinkName("QAbstractSlider_SetSliderDown")]
	public static extern void QAbstractSlider_SetSliderDown(Self* c_this, bool sliderDown);
	[LinkName("QAbstractSlider_IsSliderDown")]
	public static extern bool QAbstractSlider_IsSliderDown(Self* c_this);
	[LinkName("QAbstractSlider_SetSliderPosition")]
	public static extern void QAbstractSlider_SetSliderPosition(Self* c_this, int32 sliderPosition);
	[LinkName("QAbstractSlider_SliderPosition")]
	public static extern int32 QAbstractSlider_SliderPosition(Self* c_this);
	[LinkName("QAbstractSlider_SetInvertedAppearance")]
	public static extern void QAbstractSlider_SetInvertedAppearance(Self* c_this, bool invertedAppearance);
	[LinkName("QAbstractSlider_InvertedAppearance")]
	public static extern bool QAbstractSlider_InvertedAppearance(Self* c_this);
	[LinkName("QAbstractSlider_SetInvertedControls")]
	public static extern void QAbstractSlider_SetInvertedControls(Self* c_this, bool invertedControls);
	[LinkName("QAbstractSlider_InvertedControls")]
	public static extern bool QAbstractSlider_InvertedControls(Self* c_this);
	[LinkName("QAbstractSlider_Value")]
	public static extern int32 QAbstractSlider_Value(Self* c_this);
	[LinkName("QAbstractSlider_TriggerAction")]
	public static extern void QAbstractSlider_TriggerAction(Self* c_this, int64 action);
	[LinkName("QAbstractSlider_SetValue")]
	public static extern void QAbstractSlider_SetValue(Self* c_this, int32 value);
	[LinkName("QAbstractSlider_SetOrientation")]
	public static extern void QAbstractSlider_SetOrientation(Self* c_this, int64 orientation);
	[LinkName("QAbstractSlider_SetRange")]
	public static extern void QAbstractSlider_SetRange(Self* c_this, int32 min, int32 max);
	[LinkName("QAbstractSlider_ValueChanged")]
	public static extern void QAbstractSlider_ValueChanged(Self* c_this, int32 value);
	[LinkName("QAbstractSlider_SliderPressed")]
	public static extern void QAbstractSlider_SliderPressed(Self* c_this);
	[LinkName("QAbstractSlider_SliderMoved")]
	public static extern void QAbstractSlider_SliderMoved(Self* c_this, int32 position);
	[LinkName("QAbstractSlider_SliderReleased")]
	public static extern void QAbstractSlider_SliderReleased(Self* c_this);
	[LinkName("QAbstractSlider_RangeChanged")]
	public static extern void QAbstractSlider_RangeChanged(Self* c_this, int32 min, int32 max);
	[LinkName("QAbstractSlider_ActionTriggered")]
	public static extern void QAbstractSlider_ActionTriggered(Self* c_this, int32 action);
	[LinkName("QAbstractSlider_Event")]
	public static extern bool QAbstractSlider_Event(Self* c_this, QEvent* e);
	[LinkName("QAbstractSlider_SetRepeatAction")]
	public static extern void QAbstractSlider_SetRepeatAction(Self* c_this, int64 action);
	[LinkName("QAbstractSlider_RepeatAction")]
	public static extern int64 QAbstractSlider_RepeatAction(Self* c_this);
	[LinkName("QAbstractSlider_SliderChange")]
	public static extern void QAbstractSlider_SliderChange(Self* c_this, int64 change);
	[LinkName("QAbstractSlider_KeyPressEvent")]
	public static extern void QAbstractSlider_KeyPressEvent(Self* c_this, QKeyEvent* ev);
	[LinkName("QAbstractSlider_TimerEvent")]
	public static extern void QAbstractSlider_TimerEvent(Self* c_this, QTimerEvent* param1);
	[LinkName("QAbstractSlider_WheelEvent")]
	public static extern void QAbstractSlider_WheelEvent(Self* c_this, QWheelEvent* e);
	[LinkName("QAbstractSlider_ChangeEvent")]
	public static extern void QAbstractSlider_ChangeEvent(Self* c_this, QEvent* e);
	[LinkName("QAbstractSlider_Tr2")]
	public static extern libqt_string QAbstractSlider_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractSlider_Tr3")]
	public static extern libqt_string QAbstractSlider_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAbstractSlider_SetRepeatAction2")]
	public static extern void QAbstractSlider_SetRepeatAction2(Self* c_this, int64 action, int32 thresholdTime);
	[LinkName("QAbstractSlider_SetRepeatAction3")]
	public static extern void QAbstractSlider_SetRepeatAction3(Self* c_this, int64 action, int32 thresholdTime, int32 repeatTime);
}