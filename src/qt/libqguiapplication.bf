using System;
using System.Interop;
namespace Qt;

public interface IQGuiApplication
{
	void* NativePtr { get; }
}
public class QGuiApplication : IQGuiApplication, IQCoreApplication
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(int32* argc, char8* argv)
	{
		this.nativePtr = CQt.QGuiApplication_new(argc, argv);
	}
	
	public ~this()
	{
		CQt.QGuiApplication_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QGuiApplication_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QGuiApplication_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QGuiApplication_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QGuiApplication_Tr(s);
	}
	
	public static void SetApplicationDisplayName(String name)
	{
		CQt.QGuiApplication_SetApplicationDisplayName(libqt_string(name));
	}
	
	public static libqt_string ApplicationDisplayName()
	{
		return CQt.QGuiApplication_ApplicationDisplayName();
	}
	
	public static void SetDesktopFileName(String name)
	{
		CQt.QGuiApplication_SetDesktopFileName(libqt_string(name));
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
	
	public static void* TopLevelAt(IQPoint pos)
	{
		return CQt.QGuiApplication_TopLevelAt((pos == default) ? default : (void*)pos.NativePtr);
	}
	
	public static void SetWindowIcon(IQIcon icon)
	{
		CQt.QGuiApplication_SetWindowIcon((icon == default) ? default : (void*)icon.NativePtr);
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
	
	public static void* ScreenAt(IQPoint point)
	{
		return CQt.QGuiApplication_ScreenAt((point == default) ? default : (void*)point.NativePtr);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QGuiApplication_DevicePixelRatio(this.nativePtr);
	}
	
	public static void* OverrideCursor()
	{
		return CQt.QGuiApplication_OverrideCursor();
	}
	
	public static void SetOverrideCursor(IQCursor overrideCursor)
	{
		CQt.QGuiApplication_SetOverrideCursor((overrideCursor == default) ? default : (void*)overrideCursor.NativePtr);
	}
	
	public static void ChangeOverrideCursor(IQCursor param1)
	{
		CQt.QGuiApplication_ChangeOverrideCursor((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public static void RestoreOverrideCursor()
	{
		CQt.QGuiApplication_RestoreOverrideCursor();
	}
	
	public static void Font()
	{
		CQt.QGuiApplication_Font();
	}
	
	public static void SetFont(IQFont font)
	{
		CQt.QGuiApplication_SetFont((font == default) ? default : (void*)font.NativePtr);
	}
	
	public static void* Clipboard()
	{
		return CQt.QGuiApplication_Clipboard();
	}
	
	public static void Palette()
	{
		CQt.QGuiApplication_Palette();
	}
	
	public static void SetPalette(IQPalette pal)
	{
		CQt.QGuiApplication_SetPalette((pal == default) ? default : (void*)pal.NativePtr);
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
	
	public static int32 Exec()
	{
		return CQt.QGuiApplication_Exec();
	}
	
	public virtual bool Notify(IQObject param1, IQEvent param2)
	{
		return CQt.QGuiApplication_Notify(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == null) ? null : (void*)param2.NativePtr);
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
	
	public void* ResolveInterface(char8* name, int32 revision)
	{
		return CQt.QGuiApplication_ResolveInterface(this.nativePtr, name, revision);
	}
	
	public static void Sync()
	{
		CQt.QGuiApplication_Sync();
	}
	
	public virtual bool Event(IQEvent param1)
	{
		return CQt.QGuiApplication_Event(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QGuiApplication_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QGuiApplication_Tr3(s, c, n);
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
	
	public static void SetOrganizationDomain(String orgDomain)
	{
		CQt.QCoreApplication_SetOrganizationDomain(libqt_string(orgDomain));
	}
	
	public static libqt_string OrganizationDomain()
	{
		return CQt.QCoreApplication_OrganizationDomain();
	}
	
	public static void SetOrganizationName(String orgName)
	{
		CQt.QCoreApplication_SetOrganizationName(libqt_string(orgName));
	}
	
	public static libqt_string OrganizationName()
	{
		return CQt.QCoreApplication_OrganizationName();
	}
	
	public static void SetApplicationName(String application)
	{
		CQt.QCoreApplication_SetApplicationName(libqt_string(application));
	}
	
	public static libqt_string ApplicationName()
	{
		return CQt.QCoreApplication_ApplicationName();
	}
	
	public static void SetApplicationVersion(String version)
	{
		CQt.QCoreApplication_SetApplicationVersion(libqt_string(version));
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
	
	public static bool SendEvent(IQObject receiver, IQEvent event)
	{
		return CQt.QCoreApplication_SendEvent((receiver == null) ? null : (void*)receiver.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public static void PostEvent(IQObject receiver, IQEvent event)
	{
		CQt.QCoreApplication_PostEvent((receiver == null) ? null : (void*)receiver.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public static void SendPostedEvents()
	{
		CQt.QCoreApplication_SendPostedEvents();
	}
	
	public static void RemovePostedEvents(IQObject receiver)
	{
		CQt.QCoreApplication_RemovePostedEvents((receiver == null) ? null : (void*)receiver.NativePtr);
	}
	
	public static void* EventDispatcher()
	{
		return CQt.QCoreApplication_EventDispatcher();
	}
	
	public static void SetEventDispatcher(IQAbstractEventDispatcher eventDispatcher)
	{
		CQt.QCoreApplication_SetEventDispatcher((eventDispatcher == null) ? null : (void*)eventDispatcher.NativePtr);
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
	
	public static void SetLibraryPaths(String[] libraryPaths)
	{
		CQt.QCoreApplication_SetLibraryPaths(null);
	}
	
	public static libqt_string[] LibraryPaths()
	{
		return CQt.QCoreApplication_LibraryPaths();
	}
	
	public static void AddLibraryPath(String param1)
	{
		CQt.QCoreApplication_AddLibraryPath(libqt_string(param1));
	}
	
	public static void RemoveLibraryPath(String param1)
	{
		CQt.QCoreApplication_RemoveLibraryPath(libqt_string(param1));
	}
	
	public static bool InstallTranslator(IQTranslator messageFile)
	{
		return CQt.QCoreApplication_InstallTranslator((messageFile == null) ? null : (void*)messageFile.NativePtr);
	}
	
	public static bool RemoveTranslator(IQTranslator messageFile)
	{
		return CQt.QCoreApplication_RemoveTranslator((messageFile == null) ? null : (void*)messageFile.NativePtr);
	}
	
	public static libqt_string Translate(char8* context, char8* key)
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
	
	public static void PostEvent3(IQObject receiver, IQEvent event, int32 priority)
	{
		CQt.QCoreApplication_PostEvent3((receiver == null) ? null : (void*)receiver.NativePtr, (event == null) ? null : (void*)event.NativePtr, priority);
	}
	
	public static void SendPostedEvents1(IQObject receiver)
	{
		CQt.QCoreApplication_SendPostedEvents1((receiver == null) ? null : (void*)receiver.NativePtr);
	}
	
	public static void SendPostedEvents2(IQObject receiver, int32 event_type)
	{
		CQt.QCoreApplication_SendPostedEvents2((receiver == null) ? null : (void*)receiver.NativePtr, event_type);
	}
	
	public static void RemovePostedEvents2(IQObject receiver, int32 eventType)
	{
		CQt.QCoreApplication_RemovePostedEvents2((receiver == null) ? null : (void*)receiver.NativePtr, eventType);
	}
	
	public static libqt_string Translate3(char8* context, char8* key, char8* disambiguation)
	{
		return CQt.QCoreApplication_Translate3(context, key, disambiguation);
	}
	
	public static libqt_string Translate4(char8* context, char8* key, char8* disambiguation, int32 n)
	{
		return CQt.QCoreApplication_Translate4(context, key, disambiguation, n);
	}
	
	public static void Exit1(int32 retcode)
	{
		CQt.QCoreApplication_Exit1(retcode);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(IQAnyStringView name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, (name == default) ? default : (char8*)name.NativePtr);
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
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == null) ? null : (void*)thread.NativePtr);
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
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (member == default) ? default : (void*)member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void Property(char8* name)
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
	
	public bool Inherits(char8* classname)
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
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QGuiApplication_new")]
	public static extern void* QGuiApplication_new(int32* argc, char8* argv);
	[LinkName("QGuiApplication_new2")]
	public static extern void* QGuiApplication_new2(int32* argc, char8* argv, int32 param3);
	[LinkName("QGuiApplication_MetaObject")]
	public static extern void* QGuiApplication_MetaObject(void* c_this);
	[LinkName("QGuiApplication_Metacast")]
	public static extern void* QGuiApplication_Metacast(void* c_this, char8* param1);
	[LinkName("QGuiApplication_Metacall")]
	public static extern int32 QGuiApplication_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QGuiApplication_Tr")]
	public static extern libqt_string QGuiApplication_Tr(char8* s);
	[LinkName("QGuiApplication_SetApplicationDisplayName")]
	public static extern void QGuiApplication_SetApplicationDisplayName(libqt_string name);
	[LinkName("QGuiApplication_ApplicationDisplayName")]
	public static extern libqt_string QGuiApplication_ApplicationDisplayName();
	[LinkName("QGuiApplication_SetDesktopFileName")]
	public static extern void QGuiApplication_SetDesktopFileName(libqt_string name);
	[LinkName("QGuiApplication_DesktopFileName")]
	public static extern libqt_string QGuiApplication_DesktopFileName();
	[LinkName("QGuiApplication_AllWindows")]
	public static extern void*[] QGuiApplication_AllWindows();
	[LinkName("QGuiApplication_TopLevelWindows")]
	public static extern void*[] QGuiApplication_TopLevelWindows();
	[LinkName("QGuiApplication_TopLevelAt")]
	public static extern void* QGuiApplication_TopLevelAt(void* pos);
	[LinkName("QGuiApplication_SetWindowIcon")]
	public static extern void QGuiApplication_SetWindowIcon(void* icon);
	[LinkName("QGuiApplication_WindowIcon")]
	public static extern void QGuiApplication_WindowIcon();
	[LinkName("QGuiApplication_PlatformName")]
	public static extern libqt_string QGuiApplication_PlatformName();
	[LinkName("QGuiApplication_ModalWindow")]
	public static extern void* QGuiApplication_ModalWindow();
	[LinkName("QGuiApplication_FocusWindow")]
	public static extern void* QGuiApplication_FocusWindow();
	[LinkName("QGuiApplication_FocusObject")]
	public static extern void* QGuiApplication_FocusObject();
	[LinkName("QGuiApplication_PrimaryScreen")]
	public static extern void* QGuiApplication_PrimaryScreen();
	[LinkName("QGuiApplication_Screens")]
	public static extern void*[] QGuiApplication_Screens();
	[LinkName("QGuiApplication_ScreenAt")]
	public static extern void* QGuiApplication_ScreenAt(void* point);
	[LinkName("QGuiApplication_DevicePixelRatio")]
	public static extern double QGuiApplication_DevicePixelRatio(void* c_this);
	[LinkName("QGuiApplication_OverrideCursor")]
	public static extern void* QGuiApplication_OverrideCursor();
	[LinkName("QGuiApplication_SetOverrideCursor")]
	public static extern void QGuiApplication_SetOverrideCursor(void* overrideCursor);
	[LinkName("QGuiApplication_ChangeOverrideCursor")]
	public static extern void QGuiApplication_ChangeOverrideCursor(void* param1);
	[LinkName("QGuiApplication_RestoreOverrideCursor")]
	public static extern void QGuiApplication_RestoreOverrideCursor();
	[LinkName("QGuiApplication_Font")]
	public static extern void QGuiApplication_Font();
	[LinkName("QGuiApplication_SetFont")]
	public static extern void QGuiApplication_SetFont(void* font);
	[LinkName("QGuiApplication_Clipboard")]
	public static extern void* QGuiApplication_Clipboard();
	[LinkName("QGuiApplication_Palette")]
	public static extern void QGuiApplication_Palette();
	[LinkName("QGuiApplication_SetPalette")]
	public static extern void QGuiApplication_SetPalette(void* pal);
	[LinkName("QGuiApplication_KeyboardModifiers")]
	public static extern int64 QGuiApplication_KeyboardModifiers();
	[LinkName("QGuiApplication_QueryKeyboardModifiers")]
	public static extern int64 QGuiApplication_QueryKeyboardModifiers();
	[LinkName("QGuiApplication_MouseButtons")]
	public static extern int64 QGuiApplication_MouseButtons();
	[LinkName("QGuiApplication_SetLayoutDirection")]
	public static extern void QGuiApplication_SetLayoutDirection(int64 direction);
	[LinkName("QGuiApplication_LayoutDirection")]
	public static extern int64 QGuiApplication_LayoutDirection();
	[LinkName("QGuiApplication_IsRightToLeft")]
	public static extern bool QGuiApplication_IsRightToLeft();
	[LinkName("QGuiApplication_IsLeftToRight")]
	public static extern bool QGuiApplication_IsLeftToRight();
	[LinkName("QGuiApplication_StyleHints")]
	public static extern void* QGuiApplication_StyleHints();
	[LinkName("QGuiApplication_SetDesktopSettingsAware")]
	public static extern void QGuiApplication_SetDesktopSettingsAware(bool on);
	[LinkName("QGuiApplication_DesktopSettingsAware")]
	public static extern bool QGuiApplication_DesktopSettingsAware();
	[LinkName("QGuiApplication_InputMethod")]
	public static extern void* QGuiApplication_InputMethod();
	[LinkName("QGuiApplication_SetQuitOnLastWindowClosed")]
	public static extern void QGuiApplication_SetQuitOnLastWindowClosed(bool quit);
	[LinkName("QGuiApplication_QuitOnLastWindowClosed")]
	public static extern bool QGuiApplication_QuitOnLastWindowClosed();
	[LinkName("QGuiApplication_ApplicationState")]
	public static extern int64 QGuiApplication_ApplicationState();
	[LinkName("QGuiApplication_SetHighDpiScaleFactorRoundingPolicy")]
	public static extern void QGuiApplication_SetHighDpiScaleFactorRoundingPolicy(int64 policy);
	[LinkName("QGuiApplication_HighDpiScaleFactorRoundingPolicy")]
	public static extern int64 QGuiApplication_HighDpiScaleFactorRoundingPolicy();
	[LinkName("QGuiApplication_Exec")]
	public static extern int32 QGuiApplication_Exec();
	[LinkName("QGuiApplication_Notify")]
	public static extern bool QGuiApplication_Notify(void* c_this, void* param1, void* param2);
	[LinkName("QGuiApplication_IsSessionRestored")]
	public static extern bool QGuiApplication_IsSessionRestored(void* c_this);
	[LinkName("QGuiApplication_SessionId")]
	public static extern libqt_string QGuiApplication_SessionId(void* c_this);
	[LinkName("QGuiApplication_SessionKey")]
	public static extern libqt_string QGuiApplication_SessionKey(void* c_this);
	[LinkName("QGuiApplication_IsSavingSession")]
	public static extern bool QGuiApplication_IsSavingSession(void* c_this);
	[LinkName("QGuiApplication_ResolveInterface")]
	public static extern void* QGuiApplication_ResolveInterface(void* c_this, char8* name, int32 revision);
	[LinkName("QGuiApplication_Sync")]
	public static extern void QGuiApplication_Sync();
	[LinkName("QGuiApplication_Connect_FontDatabaseChanged")]
	public static extern void QGuiApplication_Connect_FontDatabaseChanged(void* c_this, c_intptr slot);
	[LinkName("QGuiApplication_Connect_ScreenAdded")]
	public static extern void QGuiApplication_Connect_ScreenAdded(void* c_this, c_intptr slot);
	[LinkName("QGuiApplication_Connect_ScreenRemoved")]
	public static extern void QGuiApplication_Connect_ScreenRemoved(void* c_this, c_intptr slot);
	[LinkName("QGuiApplication_Connect_PrimaryScreenChanged")]
	public static extern void QGuiApplication_Connect_PrimaryScreenChanged(void* c_this, c_intptr slot);
	[LinkName("QGuiApplication_Connect_LastWindowClosed")]
	public static extern void QGuiApplication_Connect_LastWindowClosed(void* c_this, c_intptr slot);
	[LinkName("QGuiApplication_Connect_FocusObjectChanged")]
	public static extern void QGuiApplication_Connect_FocusObjectChanged(void* c_this, c_intptr slot);
	[LinkName("QGuiApplication_Connect_FocusWindowChanged")]
	public static extern void QGuiApplication_Connect_FocusWindowChanged(void* c_this, c_intptr slot);
	[LinkName("QGuiApplication_Connect_ApplicationStateChanged")]
	public static extern void QGuiApplication_Connect_ApplicationStateChanged(void* c_this, c_intptr slot);
	[LinkName("QGuiApplication_Connect_LayoutDirectionChanged")]
	public static extern void QGuiApplication_Connect_LayoutDirectionChanged(void* c_this, c_intptr slot);
	[LinkName("QGuiApplication_Connect_CommitDataRequest")]
	public static extern void QGuiApplication_Connect_CommitDataRequest(void* c_this, c_intptr slot);
	[LinkName("QGuiApplication_Connect_SaveStateRequest")]
	public static extern void QGuiApplication_Connect_SaveStateRequest(void* c_this, c_intptr slot);
	[LinkName("QGuiApplication_Connect_ApplicationDisplayNameChanged")]
	public static extern void QGuiApplication_Connect_ApplicationDisplayNameChanged(void* c_this, c_intptr slot);
	[LinkName("QGuiApplication_Connect_PaletteChanged")]
	public static extern void QGuiApplication_Connect_PaletteChanged(void* c_this, c_intptr slot);
	[LinkName("QGuiApplication_Connect_FontChanged")]
	public static extern void QGuiApplication_Connect_FontChanged(void* c_this, c_intptr slot);
	[LinkName("QGuiApplication_Event")]
	public static extern bool QGuiApplication_Event(void* c_this, void* param1);
	[LinkName("QGuiApplication_Tr2")]
	public static extern libqt_string QGuiApplication_Tr2(char8* s, char8* c);
	[LinkName("QGuiApplication_Tr3")]
	public static extern libqt_string QGuiApplication_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QGuiApplication_Delete")]
	public static extern void QGuiApplication_Delete(void* self);
}