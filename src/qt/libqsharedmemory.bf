using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSharedMemory__AccessMode
{
	ReadOnly = 0,
	ReadWrite = 1,
}
[AllowDuplicates]
public enum QSharedMemory__SharedMemoryError
{
	NoError = 0,
	PermissionDenied = 1,
	InvalidSize = 2,
	KeyError = 3,
	AlreadyExists = 4,
	NotFound = 5,
	LockError = 6,
	OutOfResources = 7,
	UnknownError = 8,
}
public struct QSharedMemory : QObject
{
	[LinkName("QSharedMemory_new")]
	public static extern QSharedMemory* QSharedMemory_new();
	[LinkName("QSharedMemory_new2")]
	public static extern QSharedMemory* QSharedMemory_new2(libqt_string key);
	[LinkName("QSharedMemory_new3")]
	public static extern QSharedMemory* QSharedMemory_new3(QObject* parent);
	[LinkName("QSharedMemory_new4")]
	public static extern QSharedMemory* QSharedMemory_new4(libqt_string key, QObject* parent);
	[LinkName("QSharedMemory_MetaObject")]
	public static extern QMetaObject* QSharedMemory_MetaObject(Self* c_this);
	[LinkName("QSharedMemory_Metacast")]
	public static extern void* QSharedMemory_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSharedMemory_Metacall")]
	public static extern int32 QSharedMemory_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSharedMemory_Tr")]
	public static extern libqt_string QSharedMemory_Tr(char8[] s);
	[LinkName("QSharedMemory_SetKey")]
	public static extern void QSharedMemory_SetKey(Self* c_this, libqt_string key);
	[LinkName("QSharedMemory_Key")]
	public static extern libqt_string QSharedMemory_Key(Self* c_this);
	[LinkName("QSharedMemory_SetNativeKey")]
	public static extern void QSharedMemory_SetNativeKey(Self* c_this, libqt_string key);
	[LinkName("QSharedMemory_NativeKey")]
	public static extern libqt_string QSharedMemory_NativeKey(Self* c_this);
	[LinkName("QSharedMemory_Create")]
	public static extern bool QSharedMemory_Create(Self* c_this, int32 size);
	[LinkName("QSharedMemory_Size")]
	public static extern int32 QSharedMemory_Size(Self* c_this);
	[LinkName("QSharedMemory_Attach")]
	public static extern bool QSharedMemory_Attach(Self* c_this);
	[LinkName("QSharedMemory_IsAttached")]
	public static extern bool QSharedMemory_IsAttached(Self* c_this);
	[LinkName("QSharedMemory_Detach")]
	public static extern bool QSharedMemory_Detach(Self* c_this);
	[LinkName("QSharedMemory_Data")]
	public static extern void* QSharedMemory_Data(Self* c_this);
	[LinkName("QSharedMemory_ConstData")]
	public static extern void* QSharedMemory_ConstData(Self* c_this);
	[LinkName("QSharedMemory_Data2")]
	public static extern void* QSharedMemory_Data2(Self* c_this);
	[LinkName("QSharedMemory_Lock")]
	public static extern bool QSharedMemory_Lock(Self* c_this);
	[LinkName("QSharedMemory_Unlock")]
	public static extern bool QSharedMemory_Unlock(Self* c_this);
	[LinkName("QSharedMemory_Error")]
	public static extern int64 QSharedMemory_Error(Self* c_this);
	[LinkName("QSharedMemory_ErrorString")]
	public static extern libqt_string QSharedMemory_ErrorString(Self* c_this);
	[LinkName("QSharedMemory_Tr2")]
	public static extern libqt_string QSharedMemory_Tr2(char8[] s, char8[] c);
	[LinkName("QSharedMemory_Tr3")]
	public static extern libqt_string QSharedMemory_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSharedMemory_Create2")]
	public static extern bool QSharedMemory_Create2(Self* c_this, int32 size, int64 mode);
	[LinkName("QSharedMemory_Attach1")]
	public static extern bool QSharedMemory_Attach1(Self* c_this, int64 mode);
}