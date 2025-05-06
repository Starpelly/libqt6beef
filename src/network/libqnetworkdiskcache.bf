using System;
using System.Interop;
namespace Qt;

public struct QNetworkDiskCache
{
	[LinkName("QNetworkDiskCache_new")]
	public static extern void* QNetworkDiskCache_new();
	[LinkName("QNetworkDiskCache_new2")]
	public static extern void* QNetworkDiskCache_new2(QObject parent);
	[LinkName("QNetworkDiskCache_MetaObject")]
	public static extern QMetaObject QNetworkDiskCache_MetaObject(void* c_this);
	[LinkName("QNetworkDiskCache_Metacast")]
	public static extern void QNetworkDiskCache_Metacast(void* c_this, char8[] param1);
	[LinkName("QNetworkDiskCache_Metacall")]
	public static extern int32 QNetworkDiskCache_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QNetworkDiskCache_Tr")]
	public static extern char8[] QNetworkDiskCache_Tr(char8[] s);
	[LinkName("QNetworkDiskCache_CacheDirectory")]
	public static extern char8[] QNetworkDiskCache_CacheDirectory(void* c_this);
	[LinkName("QNetworkDiskCache_SetCacheDirectory")]
	public static extern void QNetworkDiskCache_SetCacheDirectory(void* c_this, char8[] cacheDir);
	[LinkName("QNetworkDiskCache_MaximumCacheSize")]
	public static extern int64 QNetworkDiskCache_MaximumCacheSize(void* c_this);
	[LinkName("QNetworkDiskCache_SetMaximumCacheSize")]
	public static extern void QNetworkDiskCache_SetMaximumCacheSize(void* c_this, int64 size);
	[LinkName("QNetworkDiskCache_CacheSize")]
	public static extern int64 QNetworkDiskCache_CacheSize(void* c_this);
	[LinkName("QNetworkDiskCache_MetaData")]
	public static extern QNetworkCacheMetaData QNetworkDiskCache_MetaData(void* c_this, QUrl url);
	[LinkName("QNetworkDiskCache_UpdateMetaData")]
	public static extern void QNetworkDiskCache_UpdateMetaData(void* c_this, QNetworkCacheMetaData metaData);
	[LinkName("QNetworkDiskCache_Data")]
	public static extern QIODevice QNetworkDiskCache_Data(void* c_this, QUrl url);
	[LinkName("QNetworkDiskCache_Remove")]
	public static extern bool QNetworkDiskCache_Remove(void* c_this, QUrl url);
	[LinkName("QNetworkDiskCache_Prepare")]
	public static extern QIODevice QNetworkDiskCache_Prepare(void* c_this, QNetworkCacheMetaData metaData);
	[LinkName("QNetworkDiskCache_Insert")]
	public static extern void QNetworkDiskCache_Insert(void* c_this, QIODevice device);
	[LinkName("QNetworkDiskCache_FileMetaData")]
	public static extern QNetworkCacheMetaData QNetworkDiskCache_FileMetaData(void* c_this, char8[] fileName);
	[LinkName("QNetworkDiskCache_Clear")]
	public static extern void QNetworkDiskCache_Clear(void* c_this);
	[LinkName("QNetworkDiskCache_Expire")]
	public static extern int64 QNetworkDiskCache_Expire(void* c_this);
	[LinkName("QNetworkDiskCache_Tr2")]
	public static extern char8[] QNetworkDiskCache_Tr2(char8[] s, char8[] c);
	[LinkName("QNetworkDiskCache_Tr3")]
	public static extern char8[] QNetworkDiskCache_Tr3(char8[] s, char8[] c, int32 n);
}