using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QCoreApplication__
{
	ApplicationFlags = 394242,
}
public struct QCoreApplication : QObject
{
	[LinkName("QCoreApplication_new")]
	public static extern QCoreApplication* QCoreApplication_new(int32* argc, char8[] argv);
	[LinkName("QCoreApplication_new2")]
	public static extern QCoreApplication* QCoreApplication_new2(int32* argc, char8[] argv, int32 param3);
	[LinkName("QCoreApplication_MetaObject")]
	public static extern QMetaObject* QCoreApplication_MetaObject(Self* c_this);
	[LinkName("QCoreApplication_Metacast")]
	public static extern void* QCoreApplication_Metacast(Self* c_this, char8[] param1);
	[LinkName("QCoreApplication_Metacall")]
	public static extern int32 QCoreApplication_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
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
	public static extern QCoreApplication* QCoreApplication_Instance();
	[LinkName("QCoreApplication_Exec")]
	public static extern int32 QCoreApplication_Exec();
	[LinkName("QCoreApplication_ProcessEvents")]
	public static extern void QCoreApplication_ProcessEvents();
	[LinkName("QCoreApplication_ProcessEvents2")]
	public static extern void QCoreApplication_ProcessEvents2(int64 flags, int32 maxtime);
	[LinkName("QCoreApplication_SendEvent")]
	public static extern bool QCoreApplication_SendEvent(QObject* receiver, QEvent* event);
	[LinkName("QCoreApplication_PostEvent")]
	public static extern void QCoreApplication_PostEvent(QObject* receiver, QEvent* event);
	[LinkName("QCoreApplication_SendPostedEvents")]
	public static extern void QCoreApplication_SendPostedEvents();
	[LinkName("QCoreApplication_RemovePostedEvents")]
	public static extern void QCoreApplication_RemovePostedEvents(QObject* receiver);
	[LinkName("QCoreApplication_EventDispatcher")]
	public static extern QAbstractEventDispatcher* QCoreApplication_EventDispatcher();
	[LinkName("QCoreApplication_SetEventDispatcher")]
	public static extern void QCoreApplication_SetEventDispatcher(QAbstractEventDispatcher* eventDispatcher);
	[LinkName("QCoreApplication_Notify")]
	public static extern bool QCoreApplication_Notify(Self* c_this, QObject* param1, QEvent* param2);
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
	public static extern bool QCoreApplication_InstallTranslator(QTranslator* messageFile);
	[LinkName("QCoreApplication_RemoveTranslator")]
	public static extern bool QCoreApplication_RemoveTranslator(QTranslator* messageFile);
	[LinkName("QCoreApplication_Translate")]
	public static extern libqt_string QCoreApplication_Translate(char8[] context, char8[] key);
	[LinkName("QCoreApplication_ResolveInterface")]
	public static extern void* QCoreApplication_ResolveInterface(Self* c_this, char8[] name, int32 revision);
	[LinkName("QCoreApplication_InstallNativeEventFilter")]
	public static extern void QCoreApplication_InstallNativeEventFilter(Self* c_this, QAbstractNativeEventFilter* filterObj);
	[LinkName("QCoreApplication_RemoveNativeEventFilter")]
	public static extern void QCoreApplication_RemoveNativeEventFilter(Self* c_this, QAbstractNativeEventFilter* filterObj);
	[LinkName("QCoreApplication_IsQuitLockEnabled")]
	public static extern bool QCoreApplication_IsQuitLockEnabled();
	[LinkName("QCoreApplication_SetQuitLockEnabled")]
	public static extern void QCoreApplication_SetQuitLockEnabled(bool enabled);
	[LinkName("QCoreApplication_Quit")]
	public static extern void QCoreApplication_Quit();
	[LinkName("QCoreApplication_Exit")]
	public static extern void QCoreApplication_Exit();
	[LinkName("QCoreApplication_OrganizationNameChanged")]
	public static extern void QCoreApplication_OrganizationNameChanged(Self* c_this);
	[LinkName("QCoreApplication_OrganizationDomainChanged")]
	public static extern void QCoreApplication_OrganizationDomainChanged(Self* c_this);
	[LinkName("QCoreApplication_ApplicationNameChanged")]
	public static extern void QCoreApplication_ApplicationNameChanged(Self* c_this);
	[LinkName("QCoreApplication_ApplicationVersionChanged")]
	public static extern void QCoreApplication_ApplicationVersionChanged(Self* c_this);
	[LinkName("QCoreApplication_Event")]
	public static extern bool QCoreApplication_Event(Self* c_this, QEvent* param1);
	[LinkName("QCoreApplication_Tr2")]
	public static extern libqt_string QCoreApplication_Tr2(char8[] s, char8[] c);
	[LinkName("QCoreApplication_Tr3")]
	public static extern libqt_string QCoreApplication_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QCoreApplication_SetAttribute2")]
	public static extern void QCoreApplication_SetAttribute2(int64 attribute, bool on);
	[LinkName("QCoreApplication_ProcessEvents1")]
	public static extern void QCoreApplication_ProcessEvents1(int64 flags);
	[LinkName("QCoreApplication_PostEvent3")]
	public static extern void QCoreApplication_PostEvent3(QObject* receiver, QEvent* event, int32 priority);
	[LinkName("QCoreApplication_SendPostedEvents1")]
	public static extern void QCoreApplication_SendPostedEvents1(QObject* receiver);
	[LinkName("QCoreApplication_SendPostedEvents2")]
	public static extern void QCoreApplication_SendPostedEvents2(QObject* receiver, int32 event_type);
	[LinkName("QCoreApplication_RemovePostedEvents2")]
	public static extern void QCoreApplication_RemovePostedEvents2(QObject* receiver, int32 eventType);
	[LinkName("QCoreApplication_Translate3")]
	public static extern libqt_string QCoreApplication_Translate3(char8[] context, char8[] key, char8[] disambiguation);
	[LinkName("QCoreApplication_Translate4")]
	public static extern libqt_string QCoreApplication_Translate4(char8[] context, char8[] key, char8[] disambiguation, int32 n);
	[LinkName("QCoreApplication_Exit1")]
	public static extern void QCoreApplication_Exit1(int32 retcode);
}