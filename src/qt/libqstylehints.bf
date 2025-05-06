using System;
using System.Interop;
namespace Qt;

public struct QStyleHints : QObject
{
	[LinkName("QStyleHints_MetaObject")]
	public static extern QMetaObject* QStyleHints_MetaObject(Self* c_this);
	[LinkName("QStyleHints_Metacast")]
	public static extern void* QStyleHints_Metacast(Self* c_this, char8[] param1);
	[LinkName("QStyleHints_Metacall")]
	public static extern int32 QStyleHints_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QStyleHints_Tr")]
	public static extern libqt_string QStyleHints_Tr(char8[] s);
	[LinkName("QStyleHints_SetMouseDoubleClickInterval")]
	public static extern void QStyleHints_SetMouseDoubleClickInterval(Self* c_this, int32 mouseDoubleClickInterval);
	[LinkName("QStyleHints_MouseDoubleClickInterval")]
	public static extern int32 QStyleHints_MouseDoubleClickInterval(Self* c_this);
	[LinkName("QStyleHints_MouseDoubleClickDistance")]
	public static extern int32 QStyleHints_MouseDoubleClickDistance(Self* c_this);
	[LinkName("QStyleHints_TouchDoubleTapDistance")]
	public static extern int32 QStyleHints_TouchDoubleTapDistance(Self* c_this);
	[LinkName("QStyleHints_SetMousePressAndHoldInterval")]
	public static extern void QStyleHints_SetMousePressAndHoldInterval(Self* c_this, int32 mousePressAndHoldInterval);
	[LinkName("QStyleHints_MousePressAndHoldInterval")]
	public static extern int32 QStyleHints_MousePressAndHoldInterval(Self* c_this);
	[LinkName("QStyleHints_SetStartDragDistance")]
	public static extern void QStyleHints_SetStartDragDistance(Self* c_this, int32 startDragDistance);
	[LinkName("QStyleHints_StartDragDistance")]
	public static extern int32 QStyleHints_StartDragDistance(Self* c_this);
	[LinkName("QStyleHints_SetStartDragTime")]
	public static extern void QStyleHints_SetStartDragTime(Self* c_this, int32 startDragTime);
	[LinkName("QStyleHints_StartDragTime")]
	public static extern int32 QStyleHints_StartDragTime(Self* c_this);
	[LinkName("QStyleHints_StartDragVelocity")]
	public static extern int32 QStyleHints_StartDragVelocity(Self* c_this);
	[LinkName("QStyleHints_SetKeyboardInputInterval")]
	public static extern void QStyleHints_SetKeyboardInputInterval(Self* c_this, int32 keyboardInputInterval);
	[LinkName("QStyleHints_KeyboardInputInterval")]
	public static extern int32 QStyleHints_KeyboardInputInterval(Self* c_this);
	[LinkName("QStyleHints_KeyboardAutoRepeatRate")]
	public static extern int32 QStyleHints_KeyboardAutoRepeatRate(Self* c_this);
	[LinkName("QStyleHints_SetCursorFlashTime")]
	public static extern void QStyleHints_SetCursorFlashTime(Self* c_this, int32 cursorFlashTime);
	[LinkName("QStyleHints_CursorFlashTime")]
	public static extern int32 QStyleHints_CursorFlashTime(Self* c_this);
	[LinkName("QStyleHints_ShowIsFullScreen")]
	public static extern bool QStyleHints_ShowIsFullScreen(Self* c_this);
	[LinkName("QStyleHints_ShowIsMaximized")]
	public static extern bool QStyleHints_ShowIsMaximized(Self* c_this);
	[LinkName("QStyleHints_ShowShortcutsInContextMenus")]
	public static extern bool QStyleHints_ShowShortcutsInContextMenus(Self* c_this);
	[LinkName("QStyleHints_SetShowShortcutsInContextMenus")]
	public static extern void QStyleHints_SetShowShortcutsInContextMenus(Self* c_this, bool showShortcutsInContextMenus);
	[LinkName("QStyleHints_PasswordMaskDelay")]
	public static extern int32 QStyleHints_PasswordMaskDelay(Self* c_this);
	[LinkName("QStyleHints_PasswordMaskCharacter")]
	public static extern QChar QStyleHints_PasswordMaskCharacter(Self* c_this);
	[LinkName("QStyleHints_FontSmoothingGamma")]
	public static extern double QStyleHints_FontSmoothingGamma(Self* c_this);
	[LinkName("QStyleHints_UseRtlExtensions")]
	public static extern bool QStyleHints_UseRtlExtensions(Self* c_this);
	[LinkName("QStyleHints_SetFocusOnTouchRelease")]
	public static extern bool QStyleHints_SetFocusOnTouchRelease(Self* c_this);
	[LinkName("QStyleHints_TabFocusBehavior")]
	public static extern int64 QStyleHints_TabFocusBehavior(Self* c_this);
	[LinkName("QStyleHints_SetTabFocusBehavior")]
	public static extern void QStyleHints_SetTabFocusBehavior(Self* c_this, int64 tabFocusBehavior);
	[LinkName("QStyleHints_SingleClickActivation")]
	public static extern bool QStyleHints_SingleClickActivation(Self* c_this);
	[LinkName("QStyleHints_UseHoverEffects")]
	public static extern bool QStyleHints_UseHoverEffects(Self* c_this);
	[LinkName("QStyleHints_SetUseHoverEffects")]
	public static extern void QStyleHints_SetUseHoverEffects(Self* c_this, bool useHoverEffects);
	[LinkName("QStyleHints_WheelScrollLines")]
	public static extern int32 QStyleHints_WheelScrollLines(Self* c_this);
	[LinkName("QStyleHints_SetWheelScrollLines")]
	public static extern void QStyleHints_SetWheelScrollLines(Self* c_this, int32 scrollLines);
	[LinkName("QStyleHints_SetMouseQuickSelectionThreshold")]
	public static extern void QStyleHints_SetMouseQuickSelectionThreshold(Self* c_this, int32 threshold);
	[LinkName("QStyleHints_MouseQuickSelectionThreshold")]
	public static extern int32 QStyleHints_MouseQuickSelectionThreshold(Self* c_this);
	[LinkName("QStyleHints_Connect_CursorFlashTimeChanged")]
	public static extern void QStyleHints_Connect_CursorFlashTimeChanged(Self* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_KeyboardInputIntervalChanged")]
	public static extern void QStyleHints_Connect_KeyboardInputIntervalChanged(Self* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_MouseDoubleClickIntervalChanged")]
	public static extern void QStyleHints_Connect_MouseDoubleClickIntervalChanged(Self* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_MousePressAndHoldIntervalChanged")]
	public static extern void QStyleHints_Connect_MousePressAndHoldIntervalChanged(Self* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_StartDragDistanceChanged")]
	public static extern void QStyleHints_Connect_StartDragDistanceChanged(Self* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_StartDragTimeChanged")]
	public static extern void QStyleHints_Connect_StartDragTimeChanged(Self* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_TabFocusBehaviorChanged")]
	public static extern void QStyleHints_Connect_TabFocusBehaviorChanged(Self* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_UseHoverEffectsChanged")]
	public static extern void QStyleHints_Connect_UseHoverEffectsChanged(Self* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_ShowShortcutsInContextMenusChanged")]
	public static extern void QStyleHints_Connect_ShowShortcutsInContextMenusChanged(Self* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_WheelScrollLinesChanged")]
	public static extern void QStyleHints_Connect_WheelScrollLinesChanged(Self* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_MouseQuickSelectionThresholdChanged")]
	public static extern void QStyleHints_Connect_MouseQuickSelectionThresholdChanged(Self* c_this, c_intptr slot);
	[LinkName("QStyleHints_Tr2")]
	public static extern libqt_string QStyleHints_Tr2(char8[] s, char8[] c);
	[LinkName("QStyleHints_Tr3")]
	public static extern libqt_string QStyleHints_Tr3(char8[] s, char8[] c, int32 n);
}