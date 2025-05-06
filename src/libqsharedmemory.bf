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
public struct QSharedMemory
{
	[LinkName("QSharedMemory_new")]
	public static extern void* QSharedMemory_new();
	[LinkName("QSharedMemory_new2")]
	public static extern void* QSharedMemory_new2(char8[] key);
	[LinkName("QSharedMemory_new3")]
	public static extern void* QSharedMemory_new3(QObject parent);
	[LinkName("QSharedMemory_new4")]
	public static extern void* QSharedMemory_new4(char8[] key, QObject parent);
	[LinkName("QSharedMemory_MetaObject")]
	public static extern QMetaObject QSharedMemory_MetaObject(void* c_this);
	[LinkName("QSharedMemory_Metacast")]
	public static extern void QSharedMemory_Metacast(void* c_this, char8[] param1);
	[LinkName("QSharedMemory_Metacall")]
	public static extern int32 QSharedMemory_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSharedMemory_Tr")]
	public static extern char8[] QSharedMemory_Tr(char8[] s);
	[LinkName("QSharedMemory_SetKey")]
	public static extern void QSharedMemory_SetKey(void* c_this, char8[] key);
	[LinkName("QSharedMemory_Key")]
	public static extern char8[] QSharedMemory_Key(void* c_this);
	[LinkName("QSharedMemory_SetNativeKey")]
	public static extern void QSharedMemory_SetNativeKey(void* c_this, char8[] key);
	[LinkName("QSharedMemory_NativeKey")]
	public static extern char8[] QSharedMemory_NativeKey(void* c_this);
	[LinkName("QSharedMemory_Create")]
	public static extern bool QSharedMemory_Create(void* c_this, int32 size);
	[LinkName("QSharedMemory_Size")]
	public static extern int32 QSharedMemory_Size(void* c_this);
	[LinkName("QSharedMemory_Attach")]
	public static extern bool QSharedMemory_Attach(void* c_this);
	[LinkName("QSharedMemory_IsAttached")]
	public static extern bool QSharedMemory_IsAttached(void* c_this);
	[LinkName("QSharedMemory_Detach")]
	public static extern bool QSharedMemory_Detach(void* c_this);
	[LinkName("QSharedMemory_Data")]
	public static extern void QSharedMemory_Data(void* c_this);
	[LinkName("QSharedMemory_ConstData")]
	public static extern void QSharedMemory_ConstData(void* c_this);
	[LinkName("QSharedMemory_Data2")]
	public static extern void QSharedMemory_Data2(void* c_this);
	[LinkName("QSharedMemory_Lock")]
	public static extern bool QSharedMemory_Lock(void* c_this);
	[LinkName("QSharedMemory_Unlock")]
	public static extern bool QSharedMemory_Unlock(void* c_this);
	[LinkName("QSharedMemory_Error")]
	public static extern int64 QSharedMemory_Error(void* c_this);
	[LinkName("QSharedMemory_ErrorString")]
	public static extern char8[] QSharedMemory_ErrorString(void* c_this);
	[LinkName("QSharedMemory_Tr2")]
	public static extern char8[] QSharedMemory_Tr2(char8[] s, char8[] c);
	[LinkName("QSharedMemory_Tr3")]
	public static extern char8[] QSharedMemory_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSharedMemory_Create2")]
	public static extern bool QSharedMemory_Create2(void* c_this, int32 size, int64 mode);
	[LinkName("QSharedMemory_Attach1")]
	public static extern bool QSharedMemory_Attach1(void* c_this, int64 mode);
}