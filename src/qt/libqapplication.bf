using System;
using System.Interop;
namespace Qt;

public class QApplication
{
	protected void* nativePtr;
	
	public this(int32* argc, char8[] argv)
	{
		this.nativePtr = CQt.QApplication_new(argc, argv);
	}
	
	public ~this()
	{
		CQt.QApplication_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QApplication_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QApplication_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QApplication_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QApplication_Tr(s);
	}
	
	public static void* Style()
	{
		return CQt.QApplication_Style();
	}
	
	public static void SetStyle(void* style)
	{
		CQt.QApplication_SetStyle(style);
	}
	
	public static void* SetStyleWithStyle(libqt_string style)
	{
		return CQt.QApplication_SetStyleWithStyle(style);
	}
	
	public static void Palette(void* param1)
	{
		CQt.QApplication_Palette(param1);
	}
	
	public static void PaletteWithClassName(char8[] className)
	{
		CQt.QApplication_PaletteWithClassName(className);
	}
	
	public static void SetPalette(void* param1)
	{
		CQt.QApplication_SetPalette(param1);
	}
	
	public static void Font()
	{
		CQt.QApplication_Font();
	}
	
	public static void FontWithQWidget(void* param1)
	{
		CQt.QApplication_FontWithQWidget(param1);
	}
	
	public static void FontWithClassName(char8[] className)
	{
		CQt.QApplication_FontWithClassName(className);
	}
	
	public static void SetFont(void* param1)
	{
		CQt.QApplication_SetFont(param1);
	}
	
	public static void FontMetrics()
	{
		CQt.QApplication_FontMetrics();
	}
	
	public static void*[] AllWidgets()
	{
		return CQt.QApplication_AllWidgets();
	}
	
	public static void*[] TopLevelWidgets()
	{
		return CQt.QApplication_TopLevelWidgets();
	}
	
	public static void* ActivePopupWidget()
	{
		return CQt.QApplication_ActivePopupWidget();
	}
	
	public static void* ActiveModalWidget()
	{
		return CQt.QApplication_ActiveModalWidget();
	}
	
	public static void* FocusWidget()
	{
		return CQt.QApplication_FocusWidget();
	}
	
	public static void* ActiveWindow()
	{
		return CQt.QApplication_ActiveWindow();
	}
	
	public static void SetActiveWindow(void* act)
	{
		CQt.QApplication_SetActiveWindow(act);
	}
	
	public static void* WidgetAt(void* p)
	{
		return CQt.QApplication_WidgetAt(p);
	}
	
	public static void* WidgetAt2(int32 x, int32 y)
	{
		return CQt.QApplication_WidgetAt2(x, y);
	}
	
	public static void* TopLevelAt(void* p)
	{
		return CQt.QApplication_TopLevelAt(p);
	}
	
	public static void* TopLevelAt2(int32 x, int32 y)
	{
		return CQt.QApplication_TopLevelAt2(x, y);
	}
	
	public static void Beep()
	{
		CQt.QApplication_Beep();
	}
	
	public static void Alert(void* widget)
	{
		CQt.QApplication_Alert(widget);
	}
	
	public static void SetCursorFlashTime(int32 cursorFlashTime)
	{
		CQt.QApplication_SetCursorFlashTime(cursorFlashTime);
	}
	
	public static int32 CursorFlashTime()
	{
		return CQt.QApplication_CursorFlashTime();
	}
	
	public static void SetDoubleClickInterval(int32 doubleClickInterval)
	{
		CQt.QApplication_SetDoubleClickInterval(doubleClickInterval);
	}
	
	public static int32 DoubleClickInterval()
	{
		return CQt.QApplication_DoubleClickInterval();
	}
	
	public static void SetKeyboardInputInterval(int32 keyboardInputInterval)
	{
		CQt.QApplication_SetKeyboardInputInterval(keyboardInputInterval);
	}
	
	public static int32 KeyboardInputInterval()
	{
		return CQt.QApplication_KeyboardInputInterval();
	}
	
	public static void SetWheelScrollLines(int32 wheelScrollLines)
	{
		CQt.QApplication_SetWheelScrollLines(wheelScrollLines);
	}
	
	public static int32 WheelScrollLines()
	{
		return CQt.QApplication_WheelScrollLines();
	}
	
	public static void SetStartDragTime(int32 ms)
	{
		CQt.QApplication_SetStartDragTime(ms);
	}
	
	public static int32 StartDragTime()
	{
		return CQt.QApplication_StartDragTime();
	}
	
	public static void SetStartDragDistance(int32 l)
	{
		CQt.QApplication_SetStartDragDistance(l);
	}
	
	public static int32 StartDragDistance()
	{
		return CQt.QApplication_StartDragDistance();
	}
	
	public static bool IsEffectEnabled(int64 param1)
	{
		return CQt.QApplication_IsEffectEnabled(param1);
	}
	
	public static void SetEffectEnabled(int64 param1)
	{
		CQt.QApplication_SetEffectEnabled(param1);
	}
	
	public static int32 Exec()
	{
		return CQt.QApplication_Exec();
	}
	
	public virtual bool Notify(void* param1, void* param2)
	{
		return CQt.QApplication_Notify(this.nativePtr, param1, param2);
	}
	
	public void* ResolveInterface(char8[] name, int32 revision)
	{
		return CQt.QApplication_ResolveInterface(this.nativePtr, name, revision);
	}
	
	public libqt_string StyleSheet()
	{
		return CQt.QApplication_StyleSheet(this.nativePtr);
	}
	
	public void SetStyleSheet(libqt_string sheet)
	{
		CQt.QApplication_SetStyleSheet(this.nativePtr, sheet);
	}
	
	public void SetAutoSipEnabled(bool enabled)
	{
		CQt.QApplication_SetAutoSipEnabled(this.nativePtr, enabled);
	}
	
	public bool AutoSipEnabled()
	{
		return CQt.QApplication_AutoSipEnabled(this.nativePtr);
	}
	
	public static void CloseAllWindows()
	{
		CQt.QApplication_CloseAllWindows();
	}
	
	public static void AboutQt()
	{
		CQt.QApplication_AboutQt();
	}
	
	public virtual bool Event(void* param1)
	{
		return CQt.QApplication_Event(this.nativePtr, param1);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QApplication_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QApplication_Tr3(s, c, n);
	}
	
	public static void SetPalette2(void* param1, char8[] className)
	{
		CQt.QApplication_SetPalette2(param1, className);
	}
	
	public static void SetFont2(void* param1, char8[] className)
	{
		CQt.QApplication_SetFont2(param1, className);
	}
	
	public static void Alert2(void* widget, int32 duration)
	{
		CQt.QApplication_Alert2(widget, duration);
	}
	
	public static void SetEffectEnabled2(int64 param1, bool enable)
	{
		CQt.QApplication_SetEffectEnabled2(param1, enable);
	}
	
	public static void SetApplicationDisplayName(libqt_string name)
	{
		CQt.QGuiApplication_SetApplicationDisplayName(name);
	}
	
	public static libqt_string ApplicationDisplayName()
	{
		return CQt.QGuiApplication_ApplicationDisplayName();
	}
	
	public static void SetDesktopFileName(libqt_string name)
	{
		CQt.QGuiApplication_SetDesktopFileName(name);
	}
	
	public static libqt_string DesktopFileName()
	{
		return CQt.QGuiApplication_DesktopFileName();
	}
	
	public static void*[] AllWindows()
	{
		return CQt.QGuiApplication_AllWindows();
	}
	
	public static void*[] TopLevelWindows()
	{
		return CQt.QGuiApplication_TopLevelWindows();
	}
	
	public static void SetWindowIcon(void* icon)
	{
		CQt.QGuiApplication_SetWindowIcon(icon);
	}
	
	public static void WindowIcon()
	{
		CQt.QGuiApplication_WindowIcon();
	}
	
	public static libqt_string PlatformName()
	{
		return CQt.QGuiApplication_PlatformName();
	}
	
	public static void* ModalWindow()
	{
		return CQt.QGuiApplication_ModalWindow();
	}
	
	public static void* FocusWindow()
	{
		return CQt.QGuiApplication_FocusWindow();
	}
	
	public static void* FocusObject()
	{
		return CQt.QGuiApplication_FocusObject();
	}
	
	public static void* PrimaryScreen()
	{
		return CQt.QGuiApplication_PrimaryScreen();
	}
	
	public static void*[] Screens()
	{
		return CQt.QGuiApplication_Screens();
	}
	
	public static void* ScreenAt(void* point)
	{
		return CQt.QGuiApplication_ScreenAt(point);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QGuiApplication_DevicePixelRatio(this.nativePtr);
	}
	
	public static void* OverrideCursor()
	{
		return CQt.QGuiApplication_OverrideCursor();
	}
	
	public static void SetOverrideCursor(void* overrideCursor)
	{
		CQt.QGuiApplication_SetOverrideCursor(overrideCursor);
	}
	
	public static void ChangeOverrideCursor(void* param1)
	{
		CQt.QGuiApplication_ChangeOverrideCursor(param1);
	}
	
	public static void RestoreOverrideCursor()
	{
		CQt.QGuiApplication_RestoreOverrideCursor();
	}
	
	public static void* Clipboard()
	{
		return CQt.QGuiApplication_Clipboard();
	}
	
	public static int64 KeyboardModifiers()
	{
		return CQt.QGuiApplication_KeyboardModifiers();
	}
	
	public static int64 QueryKeyboardModifiers()
	{
		return CQt.QGuiApplication_QueryKeyboardModifiers();
	}
	
	public static int64 MouseButtons()
	{
		return CQt.QGuiApplication_MouseButtons();
	}
	
	public static void SetLayoutDirection(int64 direction)
	{
		CQt.QGuiApplication_SetLayoutDirection(direction);
	}
	
	public static int64 LayoutDirection()
	{
		return CQt.QGuiApplication_LayoutDirection();
	}
	
	public static bool IsRightToLeft()
	{
		return CQt.QGuiApplication_IsRightToLeft();
	}
	
	public static bool IsLeftToRight()
	{
		return CQt.QGuiApplication_IsLeftToRight();
	}
	
	public static void* StyleHints()
	{
		return CQt.QGuiApplication_StyleHints();
	}
	
	public static void SetDesktopSettingsAware(bool on)
	{
		CQt.QGuiApplication_SetDesktopSettingsAware(on);
	}
	
	public static bool DesktopSettingsAware()
	{
		return CQt.QGuiApplication_DesktopSettingsAware();
	}
	
	public static void* InputMethod()
	{
		return CQt.QGuiApplication_InputMethod();
	}
	
	public static void SetQuitOnLastWindowClosed(bool quit)
	{
		CQt.QGuiApplication_SetQuitOnLastWindowClosed(quit);
	}
	
	public static bool QuitOnLastWindowClosed()
	{
		return CQt.QGuiApplication_QuitOnLastWindowClosed();
	}
	
	public static int64 ApplicationState()
	{
		return CQt.QGuiApplication_ApplicationState();
	}
	
	public static void SetHighDpiScaleFactorRoundingPolicy(int64 policy)
	{
		CQt.QGuiApplication_SetHighDpiScaleFactorRoundingPolicy(policy);
	}
	
	public static int64 HighDpiScaleFactorRoundingPolicy()
	{
		return CQt.QGuiApplication_HighDpiScaleFactorRoundingPolicy();
	}
	
	public bool IsSessionRestored()
	{
		return CQt.QGuiApplication_IsSessionRestored(this.nativePtr);
	}
	
	public libqt_string SessionId()
	{
		return CQt.QGuiApplication_SessionId(this.nativePtr);
	}
	
	public libqt_string SessionKey()
	{
		return CQt.QGuiApplication_SessionKey(this.nativePtr);
	}
	
	public bool IsSavingSession()
	{
		return CQt.QGuiApplication_IsSavingSession(this.nativePtr);
	}
	
	public static void Sync()
	{
		CQt.QGuiApplication_Sync();
	}
	
	public static libqt_string[] Arguments()
	{
		return CQt.QCoreApplication_Arguments();
	}
	
	public static void SetAttribute(int64 attribute)
	{
		CQt.QCoreApplication_SetAttribute(attribute);
	}
	
	public static bool TestAttribute(int64 attribute)
	{
		return CQt.QCoreApplication_TestAttribute(attribute);
	}
	
	public static void SetOrganizationDomain(libqt_string orgDomain)
	{
		CQt.QCoreApplication_SetOrganizationDomain(orgDomain);
	}
	
	public static libqt_string OrganizationDomain()
	{
		return CQt.QCoreApplication_OrganizationDomain();
	}
	
	public static void SetOrganizationName(libqt_string orgName)
	{
		CQt.QCoreApplication_SetOrganizationName(orgName);
	}
	
	public static libqt_string OrganizationName()
	{
		return CQt.QCoreApplication_OrganizationName();
	}
	
	public static void SetApplicationName(libqt_string application)
	{
		CQt.QCoreApplication_SetApplicationName(application);
	}
	
	public static libqt_string ApplicationName()
	{
		return CQt.QCoreApplication_ApplicationName();
	}
	
	public static void SetApplicationVersion(libqt_string version)
	{
		CQt.QCoreApplication_SetApplicationVersion(version);
	}
	
	public static libqt_string ApplicationVersion()
	{
		return CQt.QCoreApplication_ApplicationVersion();
	}
	
	public static void SetSetuidAllowed(bool allow)
	{
		CQt.QCoreApplication_SetSetuidAllowed(allow);
	}
	
	public static bool IsSetuidAllowed()
	{
		return CQt.QCoreApplication_IsSetuidAllowed();
	}
	
	public static void* Instance()
	{
		return CQt.QCoreApplication_Instance();
	}
	
	public static void ProcessEvents()
	{
		CQt.QCoreApplication_ProcessEvents();
	}
	
	public static void ProcessEvents2(int64 flags, int32 maxtime)
	{
		CQt.QCoreApplication_ProcessEvents2(flags, maxtime);
	}
	
	public static bool SendEvent(void* receiver, void* event)
	{
		return CQt.QCoreApplication_SendEvent(receiver, event);
	}
	
	public static void PostEvent(void* receiver, void* event)
	{
		CQt.QCoreApplication_PostEvent(receiver, event);
	}
	
	public static void SendPostedEvents()
	{
		CQt.QCoreApplication_SendPostedEvents();
	}
	
	public static void RemovePostedEvents(void* receiver)
	{
		CQt.QCoreApplication_RemovePostedEvents(receiver);
	}
	
	public static void* EventDispatcher()
	{
		return CQt.QCoreApplication_EventDispatcher();
	}
	
	public static void SetEventDispatcher(void* eventDispatcher)
	{
		CQt.QCoreApplication_SetEventDispatcher(eventDispatcher);
	}
	
	public static bool StartingUp()
	{
		return CQt.QCoreApplication_StartingUp();
	}
	
	public static bool ClosingDown()
	{
		return CQt.QCoreApplication_ClosingDown();
	}
	
	public static libqt_string ApplicationDirPath()
	{
		return CQt.QCoreApplication_ApplicationDirPath();
	}
	
	public static libqt_string ApplicationFilePath()
	{
		return CQt.QCoreApplication_ApplicationFilePath();
	}
	
	public static int64 ApplicationPid()
	{
		return CQt.QCoreApplication_ApplicationPid();
	}
	
	public static void SetLibraryPaths(libqt_string[] libraryPaths)
	{
		CQt.QCoreApplication_SetLibraryPaths(libraryPaths);
	}
	
	public static libqt_string[] LibraryPaths()
	{
		return CQt.QCoreApplication_LibraryPaths();
	}
	
	public static void AddLibraryPath(libqt_string param1)
	{
		CQt.QCoreApplication_AddLibraryPath(param1);
	}
	
	public static void RemoveLibraryPath(libqt_string param1)
	{
		CQt.QCoreApplication_RemoveLibraryPath(param1);
	}
	
	public static bool InstallTranslator(void* messageFile)
	{
		return CQt.QCoreApplication_InstallTranslator(messageFile);
	}
	
	public static bool RemoveTranslator(void* messageFile)
	{
		return CQt.QCoreApplication_RemoveTranslator(messageFile);
	}
	
	public static libqt_string Translate(char8[] context, char8[] key)
	{
		return CQt.QCoreApplication_Translate(context, key);
	}
	
	public static bool IsQuitLockEnabled()
	{
		return CQt.QCoreApplication_IsQuitLockEnabled();
	}
	
	public static void SetQuitLockEnabled(bool enabled)
	{
		CQt.QCoreApplication_SetQuitLockEnabled(enabled);
	}
	
	public static void Quit()
	{
		CQt.QCoreApplication_Quit();
	}
	
	public static void Exit()
	{
		CQt.QCoreApplication_Exit();
	}
	
	public static void SetAttribute2(int64 attribute, bool on)
	{
		CQt.QCoreApplication_SetAttribute2(attribute, on);
	}
	
	public static void ProcessEvents1(int64 flags)
	{
		CQt.QCoreApplication_ProcessEvents1(flags);
	}
	
	public static void PostEvent3(void* receiver, void* event, int32 priority)
	{
		CQt.QCoreApplication_PostEvent3(receiver, event, priority);
	}
	
	public static void SendPostedEvents1(void* receiver)
	{
		CQt.QCoreApplication_SendPostedEvents1(receiver);
	}
	
	public static void SendPostedEvents2(void* receiver, int32 event_type)
	{
		CQt.QCoreApplication_SendPostedEvents2(receiver, event_type);
	}
	
	public static void RemovePostedEvents2(void* receiver, int32 eventType)
	{
		CQt.QCoreApplication_RemovePostedEvents2(receiver, eventType);
	}
	
	public static libqt_string Translate3(char8[] context, char8[] key, char8[] disambiguation)
	{
		return CQt.QCoreApplication_Translate3(context, key, disambiguation);
	}
	
	public static libqt_string Translate4(char8[] context, char8[] key, char8[] disambiguation, int32 n)
	{
		return CQt.QCoreApplication_Translate4(context, key, disambiguation, n);
	}
	
	public static void Exit1(int32 retcode)
	{
		CQt.QCoreApplication_Exit1(retcode);
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
	[LinkName("QApplication_new")]
	public static extern void* QApplication_new(int32* argc, char8[] argv);
	[LinkName("QApplication_new2")]
	public static extern void* QApplication_new2(int32* argc, char8[] argv, int32 param3);
	[LinkName("QApplication_MetaObject")]
	public static extern void* QApplication_MetaObject(void* c_this);
	[LinkName("QApplication_Metacast")]
	public static extern void* QApplication_Metacast(void* c_this, char8[] param1);
	[LinkName("QApplication_Metacall")]
	public static extern int32 QApplication_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QApplication_Tr")]
	public static extern libqt_string QApplication_Tr(char8[] s);
	[LinkName("QApplication_Style")]
	public static extern void* QApplication_Style();
	[LinkName("QApplication_SetStyle")]
	public static extern void QApplication_SetStyle(void* style);
	[LinkName("QApplication_SetStyleWithStyle")]
	public static extern void* QApplication_SetStyleWithStyle(libqt_string style);
	[LinkName("QApplication_Palette")]
	public static extern void QApplication_Palette(void* param1);
	[LinkName("QApplication_PaletteWithClassName")]
	public static extern void QApplication_PaletteWithClassName(char8[] className);
	[LinkName("QApplication_SetPalette")]
	public static extern void QApplication_SetPalette(void* param1);
	[LinkName("QApplication_Font")]
	public static extern void QApplication_Font();
	[LinkName("QApplication_FontWithQWidget")]
	public static extern void QApplication_FontWithQWidget(void* param1);
	[LinkName("QApplication_FontWithClassName")]
	public static extern void QApplication_FontWithClassName(char8[] className);
	[LinkName("QApplication_SetFont")]
	public static extern void QApplication_SetFont(void* param1);
	[LinkName("QApplication_FontMetrics")]
	public static extern void QApplication_FontMetrics();
	[LinkName("QApplication_AllWidgets")]
	public static extern void*[] QApplication_AllWidgets();
	[LinkName("QApplication_TopLevelWidgets")]
	public static extern void*[] QApplication_TopLevelWidgets();
	[LinkName("QApplication_ActivePopupWidget")]
	public static extern void* QApplication_ActivePopupWidget();
	[LinkName("QApplication_ActiveModalWidget")]
	public static extern void* QApplication_ActiveModalWidget();
	[LinkName("QApplication_FocusWidget")]
	public static extern void* QApplication_FocusWidget();
	[LinkName("QApplication_ActiveWindow")]
	public static extern void* QApplication_ActiveWindow();
	[LinkName("QApplication_SetActiveWindow")]
	public static extern void QApplication_SetActiveWindow(void* act);
	[LinkName("QApplication_WidgetAt")]
	public static extern void* QApplication_WidgetAt(void* p);
	[LinkName("QApplication_WidgetAt2")]
	public static extern void* QApplication_WidgetAt2(int32 x, int32 y);
	[LinkName("QApplication_TopLevelAt")]
	public static extern void* QApplication_TopLevelAt(void* p);
	[LinkName("QApplication_TopLevelAt2")]
	public static extern void* QApplication_TopLevelAt2(int32 x, int32 y);
	[LinkName("QApplication_Beep")]
	public static extern void QApplication_Beep();
	[LinkName("QApplication_Alert")]
	public static extern void QApplication_Alert(void* widget);
	[LinkName("QApplication_SetCursorFlashTime")]
	public static extern void QApplication_SetCursorFlashTime(int32 cursorFlashTime);
	[LinkName("QApplication_CursorFlashTime")]
	public static extern int32 QApplication_CursorFlashTime();
	[LinkName("QApplication_SetDoubleClickInterval")]
	public static extern void QApplication_SetDoubleClickInterval(int32 doubleClickInterval);
	[LinkName("QApplication_DoubleClickInterval")]
	public static extern int32 QApplication_DoubleClickInterval();
	[LinkName("QApplication_SetKeyboardInputInterval")]
	public static extern void QApplication_SetKeyboardInputInterval(int32 keyboardInputInterval);
	[LinkName("QApplication_KeyboardInputInterval")]
	public static extern int32 QApplication_KeyboardInputInterval();
	[LinkName("QApplication_SetWheelScrollLines")]
	public static extern void QApplication_SetWheelScrollLines(int32 wheelScrollLines);
	[LinkName("QApplication_WheelScrollLines")]
	public static extern int32 QApplication_WheelScrollLines();
	[LinkName("QApplication_SetStartDragTime")]
	public static extern void QApplication_SetStartDragTime(int32 ms);
	[LinkName("QApplication_StartDragTime")]
	public static extern int32 QApplication_StartDragTime();
	[LinkName("QApplication_SetStartDragDistance")]
	public static extern void QApplication_SetStartDragDistance(int32 l);
	[LinkName("QApplication_StartDragDistance")]
	public static extern int32 QApplication_StartDragDistance();
	[LinkName("QApplication_IsEffectEnabled")]
	public static extern bool QApplication_IsEffectEnabled(int64 param1);
	[LinkName("QApplication_SetEffectEnabled")]
	public static extern void QApplication_SetEffectEnabled(int64 param1);
	[LinkName("QApplication_Exec")]
	public static extern int32 QApplication_Exec();
	[LinkName("QApplication_Notify")]
	public static extern bool QApplication_Notify(void* c_this, void* param1, void* param2);
	[LinkName("QApplication_ResolveInterface")]
	public static extern void* QApplication_ResolveInterface(void* c_this, char8[] name, int32 revision);
	[LinkName("QApplication_Connect_FocusChanged")]
	public static extern void QApplication_Connect_FocusChanged(void* c_this, c_intptr slot);
	[LinkName("QApplication_StyleSheet")]
	public static extern libqt_string QApplication_StyleSheet(void* c_this);
	[LinkName("QApplication_SetStyleSheet")]
	public static extern void QApplication_SetStyleSheet(void* c_this, libqt_string sheet);
	[LinkName("QApplication_SetAutoSipEnabled")]
	public static extern void QApplication_SetAutoSipEnabled(void* c_this, bool enabled);
	[LinkName("QApplication_AutoSipEnabled")]
	public static extern bool QApplication_AutoSipEnabled(void* c_this);
	[LinkName("QApplication_CloseAllWindows")]
	public static extern void QApplication_CloseAllWindows();
	[LinkName("QApplication_AboutQt")]
	public static extern void QApplication_AboutQt();
	[LinkName("QApplication_Event")]
	public static extern bool QApplication_Event(void* c_this, void* param1);
	[LinkName("QApplication_Tr2")]
	public static extern libqt_string QApplication_Tr2(char8[] s, char8[] c);
	[LinkName("QApplication_Tr3")]
	public static extern libqt_string QApplication_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QApplication_SetPalette2")]
	public static extern void QApplication_SetPalette2(void* param1, char8[] className);
	[LinkName("QApplication_SetFont2")]
	public static extern void QApplication_SetFont2(void* param1, char8[] className);
	[LinkName("QApplication_Alert2")]
	public static extern void QApplication_Alert2(void* widget, int32 duration);
	[LinkName("QApplication_SetEffectEnabled2")]
	public static extern void QApplication_SetEffectEnabled2(int64 param1, bool enable);
	/// Delete this object from C++ memory
	[LinkName("QApplication_Delete")]
	public static extern void QApplication_Delete(void* self);
}