using System;
using System.Interop;
namespace Qt;

public class QStyleHints
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QStyleHints_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QStyleHints_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QStyleHints_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QStyleHints_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QStyleHints_Tr(s);
	}
	
	public void SetMouseDoubleClickInterval(int32 mouseDoubleClickInterval)
	{
		CQt.QStyleHints_SetMouseDoubleClickInterval(this.nativePtr, mouseDoubleClickInterval);
	}
	
	public int32 MouseDoubleClickInterval()
	{
		return CQt.QStyleHints_MouseDoubleClickInterval(this.nativePtr);
	}
	
	public int32 MouseDoubleClickDistance()
	{
		return CQt.QStyleHints_MouseDoubleClickDistance(this.nativePtr);
	}
	
	public int32 TouchDoubleTapDistance()
	{
		return CQt.QStyleHints_TouchDoubleTapDistance(this.nativePtr);
	}
	
	public void SetMousePressAndHoldInterval(int32 mousePressAndHoldInterval)
	{
		CQt.QStyleHints_SetMousePressAndHoldInterval(this.nativePtr, mousePressAndHoldInterval);
	}
	
	public int32 MousePressAndHoldInterval()
	{
		return CQt.QStyleHints_MousePressAndHoldInterval(this.nativePtr);
	}
	
	public void SetStartDragDistance(int32 startDragDistance)
	{
		CQt.QStyleHints_SetStartDragDistance(this.nativePtr, startDragDistance);
	}
	
	public int32 StartDragDistance()
	{
		return CQt.QStyleHints_StartDragDistance(this.nativePtr);
	}
	
	public void SetStartDragTime(int32 startDragTime)
	{
		CQt.QStyleHints_SetStartDragTime(this.nativePtr, startDragTime);
	}
	
	public int32 StartDragTime()
	{
		return CQt.QStyleHints_StartDragTime(this.nativePtr);
	}
	
	public int32 StartDragVelocity()
	{
		return CQt.QStyleHints_StartDragVelocity(this.nativePtr);
	}
	
	public void SetKeyboardInputInterval(int32 keyboardInputInterval)
	{
		CQt.QStyleHints_SetKeyboardInputInterval(this.nativePtr, keyboardInputInterval);
	}
	
	public int32 KeyboardInputInterval()
	{
		return CQt.QStyleHints_KeyboardInputInterval(this.nativePtr);
	}
	
	public int32 KeyboardAutoRepeatRate()
	{
		return CQt.QStyleHints_KeyboardAutoRepeatRate(this.nativePtr);
	}
	
	public void SetCursorFlashTime(int32 cursorFlashTime)
	{
		CQt.QStyleHints_SetCursorFlashTime(this.nativePtr, cursorFlashTime);
	}
	
	public int32 CursorFlashTime()
	{
		return CQt.QStyleHints_CursorFlashTime(this.nativePtr);
	}
	
	public bool ShowIsFullScreen()
	{
		return CQt.QStyleHints_ShowIsFullScreen(this.nativePtr);
	}
	
	public bool ShowIsMaximized()
	{
		return CQt.QStyleHints_ShowIsMaximized(this.nativePtr);
	}
	
	public bool ShowShortcutsInContextMenus()
	{
		return CQt.QStyleHints_ShowShortcutsInContextMenus(this.nativePtr);
	}
	
	public void SetShowShortcutsInContextMenus(bool showShortcutsInContextMenus)
	{
		CQt.QStyleHints_SetShowShortcutsInContextMenus(this.nativePtr, showShortcutsInContextMenus);
	}
	
	public int32 PasswordMaskDelay()
	{
		return CQt.QStyleHints_PasswordMaskDelay(this.nativePtr);
	}
	
	public void PasswordMaskCharacter()
	{
		CQt.QStyleHints_PasswordMaskCharacter(this.nativePtr);
	}
	
	public double FontSmoothingGamma()
	{
		return CQt.QStyleHints_FontSmoothingGamma(this.nativePtr);
	}
	
	public bool UseRtlExtensions()
	{
		return CQt.QStyleHints_UseRtlExtensions(this.nativePtr);
	}
	
	public bool SetFocusOnTouchRelease()
	{
		return CQt.QStyleHints_SetFocusOnTouchRelease(this.nativePtr);
	}
	
	public int64 TabFocusBehavior()
	{
		return CQt.QStyleHints_TabFocusBehavior(this.nativePtr);
	}
	
	public void SetTabFocusBehavior(int64 tabFocusBehavior)
	{
		CQt.QStyleHints_SetTabFocusBehavior(this.nativePtr, tabFocusBehavior);
	}
	
	public bool SingleClickActivation()
	{
		return CQt.QStyleHints_SingleClickActivation(this.nativePtr);
	}
	
	public bool UseHoverEffects()
	{
		return CQt.QStyleHints_UseHoverEffects(this.nativePtr);
	}
	
	public void SetUseHoverEffects(bool useHoverEffects)
	{
		CQt.QStyleHints_SetUseHoverEffects(this.nativePtr, useHoverEffects);
	}
	
	public int32 WheelScrollLines()
	{
		return CQt.QStyleHints_WheelScrollLines(this.nativePtr);
	}
	
	public void SetWheelScrollLines(int32 scrollLines)
	{
		CQt.QStyleHints_SetWheelScrollLines(this.nativePtr, scrollLines);
	}
	
	public void SetMouseQuickSelectionThreshold(int32 threshold)
	{
		CQt.QStyleHints_SetMouseQuickSelectionThreshold(this.nativePtr, threshold);
	}
	
	public int32 MouseQuickSelectionThreshold()
	{
		return CQt.QStyleHints_MouseQuickSelectionThreshold(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QStyleHints_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QStyleHints_Tr3(s, c, n);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QObject_Event(this.nativePtr, event);
	}
	
	public virtual bool EventFilter(void* watched, void* event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, watched, event);
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
	
	public void SetParent(void* parent)
	{
		CQt.QObject_SetParent(this.nativePtr, parent);
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
	
}
extension CQt
{
	[LinkName("QStyleHints_MetaObject")]
	public static extern void* QStyleHints_MetaObject(void* c_this);
	[LinkName("QStyleHints_Metacast")]
	public static extern void* QStyleHints_Metacast(void* c_this, char8[] param1);
	[LinkName("QStyleHints_Metacall")]
	public static extern int32 QStyleHints_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QStyleHints_Tr")]
	public static extern libqt_string QStyleHints_Tr(char8[] s);
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
	public static extern void QStyleHints_PasswordMaskCharacter(void* c_this);
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
	[LinkName("QStyleHints_Connect_CursorFlashTimeChanged")]
	public static extern void QStyleHints_Connect_CursorFlashTimeChanged(void* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_KeyboardInputIntervalChanged")]
	public static extern void QStyleHints_Connect_KeyboardInputIntervalChanged(void* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_MouseDoubleClickIntervalChanged")]
	public static extern void QStyleHints_Connect_MouseDoubleClickIntervalChanged(void* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_MousePressAndHoldIntervalChanged")]
	public static extern void QStyleHints_Connect_MousePressAndHoldIntervalChanged(void* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_StartDragDistanceChanged")]
	public static extern void QStyleHints_Connect_StartDragDistanceChanged(void* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_StartDragTimeChanged")]
	public static extern void QStyleHints_Connect_StartDragTimeChanged(void* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_TabFocusBehaviorChanged")]
	public static extern void QStyleHints_Connect_TabFocusBehaviorChanged(void* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_UseHoverEffectsChanged")]
	public static extern void QStyleHints_Connect_UseHoverEffectsChanged(void* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_ShowShortcutsInContextMenusChanged")]
	public static extern void QStyleHints_Connect_ShowShortcutsInContextMenusChanged(void* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_WheelScrollLinesChanged")]
	public static extern void QStyleHints_Connect_WheelScrollLinesChanged(void* c_this, c_intptr slot);
	[LinkName("QStyleHints_Connect_MouseQuickSelectionThresholdChanged")]
	public static extern void QStyleHints_Connect_MouseQuickSelectionThresholdChanged(void* c_this, c_intptr slot);
	[LinkName("QStyleHints_Tr2")]
	public static extern libqt_string QStyleHints_Tr2(char8[] s, char8[] c);
	[LinkName("QStyleHints_Tr3")]
	public static extern libqt_string QStyleHints_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QStyleHints_Delete")]
	public static extern void QStyleHints_Delete(void* self);
}