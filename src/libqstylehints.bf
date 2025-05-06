using System;
using System.Interop;
namespace Qt;

public struct QStyleHints
{
	[LinkName("QStyleHints_MetaObject")]
	public static extern QMetaObject QStyleHints_MetaObject(void* c_this);
	[LinkName("QStyleHints_Metacast")]
	public static extern void QStyleHints_Metacast(void* c_this, char8[] param1);
	[LinkName("QStyleHints_Metacall")]
	public static extern int32 QStyleHints_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QStyleHints_Tr")]
	public static extern char8[] QStyleHints_Tr(char8[] s);
	[LinkName("QStyleHints_SetMouseDoubleClickInterval")]
	public static extern void QStyleHints_SetMouseDoubleClickInterval(void* c_this, int32 mouseDoubleClickInterval);
	[LinkName("QStyleHints_MouseDoubleClickInterval")]
	public static extern int32 QStyleHints_MouseDoubleClickInterval(void* c_this);
	[LinkName("QStyleHints_MouseDoubleClickDistance")]
	public static extern int32 QStyleHints_MouseDoubleClickDistance(void* c_this);
	[LinkName("QStyleHints_TouchDoubleTapDistance")]
	public static extern int32 QStyleHints_TouchDoubleTapDistance(void* c_this);
	[LinkName("QStyleHints_SetMousePressAndHoldInterval")]
	public static extern void QStyleHints_SetMousePressAndHoldInterval(void* c_this, int32 mousePressAndHoldInterval);
	[LinkName("QStyleHints_MousePressAndHoldInterval")]
	public static extern int32 QStyleHints_MousePressAndHoldInterval(void* c_this);
	[LinkName("QStyleHints_SetStartDragDistance")]
	public static extern void QStyleHints_SetStartDragDistance(void* c_this, int32 startDragDistance);
	[LinkName("QStyleHints_StartDragDistance")]
	public static extern int32 QStyleHints_StartDragDistance(void* c_this);
	[LinkName("QStyleHints_SetStartDragTime")]
	public static extern void QStyleHints_SetStartDragTime(void* c_this, int32 startDragTime);
	[LinkName("QStyleHints_StartDragTime")]
	public static extern int32 QStyleHints_StartDragTime(void* c_this);
	[LinkName("QStyleHints_StartDragVelocity")]
	public static extern int32 QStyleHints_StartDragVelocity(void* c_this);
	[LinkName("QStyleHints_SetKeyboardInputInterval")]
	public static extern void QStyleHints_SetKeyboardInputInterval(void* c_this, int32 keyboardInputInterval);
	[LinkName("QStyleHints_KeyboardInputInterval")]
	public static extern int32 QStyleHints_KeyboardInputInterval(void* c_this);
	[LinkName("QStyleHints_KeyboardAutoRepeatRate")]
	public static extern int32 QStyleHints_KeyboardAutoRepeatRate(void* c_this);
	[LinkName("QStyleHints_SetCursorFlashTime")]
	public static extern void QStyleHints_SetCursorFlashTime(void* c_this, int32 cursorFlashTime);
	[LinkName("QStyleHints_CursorFlashTime")]
	public static extern int32 QStyleHints_CursorFlashTime(void* c_this);
	[LinkName("QStyleHints_ShowIsFullScreen")]
	public static extern bool QStyleHints_ShowIsFullScreen(void* c_this);
	[LinkName("QStyleHints_ShowIsMaximized")]
	public static extern bool QStyleHints_ShowIsMaximized(void* c_this);
	[LinkName("QStyleHints_ShowShortcutsInContextMenus")]
	public static extern bool QStyleHints_ShowShortcutsInContextMenus(void* c_this);
	[LinkName("QStyleHints_SetShowShortcutsInContextMenus")]
	public static extern void QStyleHints_SetShowShortcutsInContextMenus(void* c_this, bool showShortcutsInContextMenus);
	[LinkName("QStyleHints_PasswordMaskDelay")]
	public static extern int32 QStyleHints_PasswordMaskDelay(void* c_this);
	[LinkName("QStyleHints_PasswordMaskCharacter")]
	public static extern QChar QStyleHints_PasswordMaskCharacter(void* c_this);
	[LinkName("QStyleHints_FontSmoothingGamma")]
	public static extern double QStyleHints_FontSmoothingGamma(void* c_this);
	[LinkName("QStyleHints_UseRtlExtensions")]
	public static extern bool QStyleHints_UseRtlExtensions(void* c_this);
	[LinkName("QStyleHints_SetFocusOnTouchRelease")]
	public static extern bool QStyleHints_SetFocusOnTouchRelease(void* c_this);
	[LinkName("QStyleHints_TabFocusBehavior")]
	public static extern int64 QStyleHints_TabFocusBehavior(void* c_this);
	[LinkName("QStyleHints_SetTabFocusBehavior")]
	public static extern void QStyleHints_SetTabFocusBehavior(void* c_this, int64 tabFocusBehavior);
	[LinkName("QStyleHints_SingleClickActivation")]
	public static extern bool QStyleHints_SingleClickActivation(void* c_this);
	[LinkName("QStyleHints_UseHoverEffects")]
	public static extern bool QStyleHints_UseHoverEffects(void* c_this);
	[LinkName("QStyleHints_SetUseHoverEffects")]
	public static extern void QStyleHints_SetUseHoverEffects(void* c_this, bool useHoverEffects);
	[LinkName("QStyleHints_WheelScrollLines")]
	public static extern int32 QStyleHints_WheelScrollLines(void* c_this);
	[LinkName("QStyleHints_SetWheelScrollLines")]
	public static extern void QStyleHints_SetWheelScrollLines(void* c_this, int32 scrollLines);
	[LinkName("QStyleHints_SetMouseQuickSelectionThreshold")]
	public static extern void QStyleHints_SetMouseQuickSelectionThreshold(void* c_this, int32 threshold);
	[LinkName("QStyleHints_MouseQuickSelectionThreshold")]
	public static extern int32 QStyleHints_MouseQuickSelectionThreshold(void* c_this);
	[LinkName("QStyleHints_CursorFlashTimeChanged")]
	public static extern void QStyleHints_CursorFlashTimeChanged(void* c_this, int32 cursorFlashTime);
	[LinkName("QStyleHints_KeyboardInputIntervalChanged")]
	public static extern void QStyleHints_KeyboardInputIntervalChanged(void* c_this, int32 keyboardInputInterval);
	[LinkName("QStyleHints_MouseDoubleClickIntervalChanged")]
	public static extern void QStyleHints_MouseDoubleClickIntervalChanged(void* c_this, int32 mouseDoubleClickInterval);
	[LinkName("QStyleHints_MousePressAndHoldIntervalChanged")]
	public static extern void QStyleHints_MousePressAndHoldIntervalChanged(void* c_this, int32 mousePressAndHoldInterval);
	[LinkName("QStyleHints_StartDragDistanceChanged")]
	public static extern void QStyleHints_StartDragDistanceChanged(void* c_this, int32 startDragDistance);
	[LinkName("QStyleHints_StartDragTimeChanged")]
	public static extern void QStyleHints_StartDragTimeChanged(void* c_this, int32 startDragTime);
	[LinkName("QStyleHints_TabFocusBehaviorChanged")]
	public static extern void QStyleHints_TabFocusBehaviorChanged(void* c_this, int64 tabFocusBehavior);
	[LinkName("QStyleHints_UseHoverEffectsChanged")]
	public static extern void QStyleHints_UseHoverEffectsChanged(void* c_this, bool useHoverEffects);
	[LinkName("QStyleHints_ShowShortcutsInContextMenusChanged")]
	public static extern void QStyleHints_ShowShortcutsInContextMenusChanged(void* c_this, bool param1);
	[LinkName("QStyleHints_WheelScrollLinesChanged")]
	public static extern void QStyleHints_WheelScrollLinesChanged(void* c_this, int32 scrollLines);
	[LinkName("QStyleHints_MouseQuickSelectionThresholdChanged")]
	public static extern void QStyleHints_MouseQuickSelectionThresholdChanged(void* c_this, int32 threshold);
	[LinkName("QStyleHints_Tr2")]
	public static extern char8[] QStyleHints_Tr2(char8[] s, char8[] c);
	[LinkName("QStyleHints_Tr3")]
	public static extern char8[] QStyleHints_Tr3(char8[] s, char8[] c, int32 n);
}