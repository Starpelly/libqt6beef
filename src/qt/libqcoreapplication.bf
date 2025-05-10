using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QCoreApplication__
{
	ApplicationFlags = 394242,
}
public class QCoreApplication
{
	protected void* nativePtr;
	
	public this(int32* argc, char8[] argv)
	{
		this.nativePtr = CQt.QCoreApplication_new(argc, argv);
	}
	
	public ~this()
	{
		CQt.QCoreApplication_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QCoreApplication_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QCoreApplication_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QCoreApplication_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QCoreApplication_Tr(s);
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
	
	public static int32 Exec()
	{
		return CQt.QCoreApplication_Exec();
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
	
	public virtual bool Notify(void* param1, void* param2)
	{
		return CQt.QCoreApplication_Notify(this.nativePtr, param1, param2);
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
	
	public void* ResolveInterface(char8[] name, int32 revision)
	{
		return CQt.QCoreApplication_ResolveInterface(this.nativePtr, name, revision);
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
	
	public virtual bool Event(void* param1)
	{
		return CQt.QCoreApplication_Event(this.nativePtr, param1);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QCoreApplication_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QCoreApplication_Tr3(s, c, n);
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
	[LinkName("QCoreApplication_new")]
	public static extern void* QCoreApplication_new(int32* argc, char8[] argv);
	[LinkName("QCoreApplication_new2")]
	public static extern void* QCoreApplication_new2(int32* argc, char8[] argv, int32 param3);
	[LinkName("QCoreApplication_MetaObject")]
	public static extern void* QCoreApplication_MetaObject(void* c_this);
	[LinkName("QCoreApplication_Metacast")]
	public static extern void* QCoreApplication_Metacast(void* c_this, char8[] param1);
	[LinkName("QCoreApplication_Metacall")]
	public static extern int32 QCoreApplication_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QCoreApplication_Tr")]
	public static extern libqt_string QCoreApplication_Tr(char8[] s);
	[LinkName("QCoreApplication_Arguments")]
	public static extern libqt_string[] QCoreApplication_Arguments();
	[LinkName("QCoreApplication_SetAttribute")]
	public static extern void QCoreApplication_SetAttribute(int64 attribute);
	[LinkName("QCoreApplication_TestAttribute")]
	public static extern bool QCoreApplication_TestAttribute(int64 attribute);
	[LinkName("QCoreApplication_SetOrganizationDomain")]
	public static extern void QCoreApplication_SetOrganizationDomain(libqt_string orgDomain);
	[LinkName("QCoreApplication_OrganizationDomain")]
	public static extern libqt_string QCoreApplication_OrganizationDomain();
	[LinkName("QCoreApplication_SetOrganizationName")]
	public static extern void QCoreApplication_SetOrganizationName(libqt_string orgName);
	[LinkName("QCoreApplication_OrganizationName")]
	public static extern libqt_string QCoreApplication_OrganizationName();
	[LinkName("QCoreApplication_SetApplicationName")]
	public static extern void QCoreApplication_SetApplicationName(libqt_string application);
	[LinkName("QCoreApplication_ApplicationName")]
	public static extern libqt_string QCoreApplication_ApplicationName();
	[LinkName("QCoreApplication_SetApplicationVersion")]
	public static extern void QCoreApplication_SetApplicationVersion(libqt_string version);
	[LinkName("QCoreApplication_ApplicationVersion")]
	public static extern libqt_string QCoreApplication_ApplicationVersion();
	[LinkName("QCoreApplication_SetSetuidAllowed")]
	public static extern void QCoreApplication_SetSetuidAllowed(bool allow);
	[LinkName("QCoreApplication_IsSetuidAllowed")]
	public static extern bool QCoreApplication_IsSetuidAllowed();
	[LinkName("QCoreApplication_Instance")]
	public static extern void* QCoreApplication_Instance();
	[LinkName("QCoreApplication_Exec")]
	public static extern int32 QCoreApplication_Exec();
	[LinkName("QCoreApplication_ProcessEvents")]
	public static extern void QCoreApplication_ProcessEvents();
	[LinkName("QCoreApplication_ProcessEvents2")]
	public static extern void QCoreApplication_ProcessEvents2(int64 flags, int32 maxtime);
	[LinkName("QCoreApplication_SendEvent")]
	public static extern bool QCoreApplication_SendEvent(void* receiver, void* event);
	[LinkName("QCoreApplication_PostEvent")]
	public static extern void QCoreApplication_PostEvent(void* receiver, void* event);
	[LinkName("QCoreApplication_SendPostedEvents")]
	public static extern void QCoreApplication_SendPostedEvents();
	[LinkName("QCoreApplication_RemovePostedEvents")]
	public static extern void QCoreApplication_RemovePostedEvents(void* receiver);
	[LinkName("QCoreApplication_EventDispatcher")]
	public static extern void* QCoreApplication_EventDispatcher();
	[LinkName("QCoreApplication_SetEventDispatcher")]
	public static extern void QCoreApplication_SetEventDispatcher(void* eventDispatcher);
	[LinkName("QCoreApplication_Notify")]
	public static extern bool QCoreApplication_Notify(void* c_this, void* param1, void* param2);
	[LinkName("QCoreApplication_StartingUp")]
	public static extern bool QCoreApplication_StartingUp();
	[LinkName("QCoreApplication_ClosingDown")]
	public static extern bool QCoreApplication_ClosingDown();
	[LinkName("QCoreApplication_ApplicationDirPath")]
	public static extern libqt_string QCoreApplication_ApplicationDirPath();
	[LinkName("QCoreApplication_ApplicationFilePath")]
	public static extern libqt_string QCoreApplication_ApplicationFilePath();
	[LinkName("QCoreApplication_ApplicationPid")]
	public static extern int64 QCoreApplication_ApplicationPid();
	[LinkName("QCoreApplication_SetLibraryPaths")]
	public static extern void QCoreApplication_SetLibraryPaths(libqt_string[] libraryPaths);
	[LinkName("QCoreApplication_LibraryPaths")]
	public static extern libqt_string[] QCoreApplication_LibraryPaths();
	[LinkName("QCoreApplication_AddLibraryPath")]
	public static extern void QCoreApplication_AddLibraryPath(libqt_string param1);
	[LinkName("QCoreApplication_RemoveLibraryPath")]
	public static extern void QCoreApplication_RemoveLibraryPath(libqt_string param1);
	[LinkName("QCoreApplication_InstallTranslator")]
	public static extern bool QCoreApplication_InstallTranslator(void* messageFile);
	[LinkName("QCoreApplication_RemoveTranslator")]
	public static extern bool QCoreApplication_RemoveTranslator(void* messageFile);
	[LinkName("QCoreApplication_Translate")]
	public static extern libqt_string QCoreApplication_Translate(char8[] context, char8[] key);
	[LinkName("QCoreApplication_ResolveInterface")]
	public static extern void* QCoreApplication_ResolveInterface(void* c_this, char8[] name, int32 revision);
	[LinkName("QCoreApplication_Connect_InstallNativeEventFilter")]
	public static extern void QCoreApplication_Connect_InstallNativeEventFilter(void* c_this, c_intptr slot);
	[LinkName("QCoreApplication_Connect_RemoveNativeEventFilter")]
	public static extern void QCoreApplication_Connect_RemoveNativeEventFilter(void* c_this, c_intptr slot);
	[LinkName("QCoreApplication_IsQuitLockEnabled")]
	public static extern bool QCoreApplication_IsQuitLockEnabled();
	[LinkName("QCoreApplication_SetQuitLockEnabled")]
	public static extern void QCoreApplication_SetQuitLockEnabled(bool enabled);
	[LinkName("QCoreApplication_Quit")]
	public static extern void QCoreApplication_Quit();
	[LinkName("QCoreApplication_Exit")]
	public static extern void QCoreApplication_Exit();
	[LinkName("QCoreApplication_Connect_OrganizationNameChanged")]
	public static extern void QCoreApplication_Connect_OrganizationNameChanged(void* c_this, c_intptr slot);
	[LinkName("QCoreApplication_Connect_OrganizationDomainChanged")]
	public static extern void QCoreApplication_Connect_OrganizationDomainChanged(void* c_this, c_intptr slot);
	[LinkName("QCoreApplication_Connect_ApplicationNameChanged")]
	public static extern void QCoreApplication_Connect_ApplicationNameChanged(void* c_this, c_intptr slot);
	[LinkName("QCoreApplication_Connect_ApplicationVersionChanged")]
	public static extern void QCoreApplication_Connect_ApplicationVersionChanged(void* c_this, c_intptr slot);
	[LinkName("QCoreApplication_Event")]
	public static extern bool QCoreApplication_Event(void* c_this, void* param1);
	[LinkName("QCoreApplication_Tr2")]
	public static extern libqt_string QCoreApplication_Tr2(char8[] s, char8[] c);
	[LinkName("QCoreApplication_Tr3")]
	public static extern libqt_string QCoreApplication_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QCoreApplication_SetAttribute2")]
	public static extern void QCoreApplication_SetAttribute2(int64 attribute, bool on);
	[LinkName("QCoreApplication_ProcessEvents1")]
	public static extern void QCoreApplication_ProcessEvents1(int64 flags);
	[LinkName("QCoreApplication_PostEvent3")]
	public static extern void QCoreApplication_PostEvent3(void* receiver, void* event, int32 priority);
	[LinkName("QCoreApplication_SendPostedEvents1")]
	public static extern void QCoreApplication_SendPostedEvents1(void* receiver);
	[LinkName("QCoreApplication_SendPostedEvents2")]
	public static extern void QCoreApplication_SendPostedEvents2(void* receiver, int32 event_type);
	[LinkName("QCoreApplication_RemovePostedEvents2")]
	public static extern void QCoreApplication_RemovePostedEvents2(void* receiver, int32 eventType);
	[LinkName("QCoreApplication_Translate3")]
	public static extern libqt_string QCoreApplication_Translate3(char8[] context, char8[] key, char8[] disambiguation);
	[LinkName("QCoreApplication_Translate4")]
	public static extern libqt_string QCoreApplication_Translate4(char8[] context, char8[] key, char8[] disambiguation, int32 n);
	[LinkName("QCoreApplication_Exit1")]
	public static extern void QCoreApplication_Exit1(int32 retcode);
	/// Delete this object from C++ memory
	[LinkName("QCoreApplication_Delete")]
	public static extern void QCoreApplication_Delete(void* self);
}