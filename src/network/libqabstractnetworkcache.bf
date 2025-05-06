using System;
using System.Interop;
namespace Qt;

public struct QNetworkCacheMetaData
{
	[LinkName("QNetworkCacheMetaData_new")]
	public static extern void* QNetworkCacheMetaData_new();
	[LinkName("QNetworkCacheMetaData_new2")]
	public static extern void* QNetworkCacheMetaData_new2(QNetworkCacheMetaData other);
	[LinkName("QNetworkCacheMetaData_OperatorAssign")]
	public static extern void QNetworkCacheMetaData_OperatorAssign(void* c_this, QNetworkCacheMetaData other);
	[LinkName("QNetworkCacheMetaData_Swap")]
	public static extern void QNetworkCacheMetaData_Swap(void* c_this, QNetworkCacheMetaData other);
	[LinkName("QNetworkCacheMetaData_OperatorEqual")]
	public static extern bool QNetworkCacheMetaData_OperatorEqual(void* c_this, QNetworkCacheMetaData other);
	[LinkName("QNetworkCacheMetaData_OperatorNotEqual")]
	public static extern bool QNetworkCacheMetaData_OperatorNotEqual(void* c_this, QNetworkCacheMetaData other);
	[LinkName("QNetworkCacheMetaData_IsValid")]
	public static extern bool QNetworkCacheMetaData_IsValid(void* c_this);
	[LinkName("QNetworkCacheMetaData_Url")]
	public static extern QUrl QNetworkCacheMetaData_Url(void* c_this);
	[LinkName("QNetworkCacheMetaData_SetUrl")]
	public static extern void QNetworkCacheMetaData_SetUrl(void* c_this, QUrl url);
	[LinkName("QNetworkCacheMetaData_RawHeaders")]
	public static extern void*[] QNetworkCacheMetaData_RawHeaders(void* c_this);
	[LinkName("QNetworkCacheMetaData_SetRawHeaders")]
	public static extern void QNetworkCacheMetaData_SetRawHeaders(void* c_this, void*[] headers);
	[LinkName("QNetworkCacheMetaData_LastModified")]
	public static extern QDateTime QNetworkCacheMetaData_LastModified(void* c_this);
	[LinkName("QNetworkCacheMetaData_SetLastModified")]
	public static extern void QNetworkCacheMetaData_SetLastModified(void* c_this, QDateTime dateTime);
	[LinkName("QNetworkCacheMetaData_ExpirationDate")]
	public static extern QDateTime QNetworkCacheMetaData_ExpirationDate(void* c_this);
	[LinkName("QNetworkCacheMetaData_SetExpirationDate")]
	public static extern void QNetworkCacheMetaData_SetExpirationDate(void* c_this, QDateTime dateTime);
	[LinkName("QNetworkCacheMetaData_SaveToDisk")]
	public static extern bool QNetworkCacheMetaData_SaveToDisk(void* c_this);
	[LinkName("QNetworkCacheMetaData_SetSaveToDisk")]
	public static extern void QNetworkCacheMetaData_SetSaveToDisk(void* c_this, bool allow);
	[LinkName("QNetworkCacheMetaData_Attributes")]
	public static extern void* QNetworkCacheMetaData_Attributes(void* c_this);
	[LinkName("QNetworkCacheMetaData_SetAttributes")]
	public static extern void QNetworkCacheMetaData_SetAttributes(void* c_this, void* attributes);
}
public struct QAbstractNetworkCache
{
	[LinkName("QAbstractNetworkCache_MetaObject")]
	public static extern QMetaObject QAbstractNetworkCache_MetaObject(void* c_this);
	[LinkName("QAbstractNetworkCache_Metacast")]
	public static extern void QAbstractNetworkCache_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractNetworkCache_Metacall")]
	public static extern int32 QAbstractNetworkCache_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAbstractNetworkCache_Tr")]
	public static extern char8[] QAbstractNetworkCache_Tr(char8[] s);
	[LinkName("QAbstractNetworkCache_MetaData")]
	public static extern QNetworkCacheMetaData QAbstractNetworkCache_MetaData(void* c_this, QUrl url);
	[LinkName("QAbstractNetworkCache_UpdateMetaData")]
	public static extern void QAbstractNetworkCache_UpdateMetaData(void* c_this, QNetworkCacheMetaData metaData);
	[LinkName("QAbstractNetworkCache_Data")]
	public static extern QIODevice QAbstractNetworkCache_Data(void* c_this, QUrl url);
	[LinkName("QAbstractNetworkCache_Remove")]
	public static extern bool QAbstractNetworkCache_Remove(void* c_this, QUrl url);
	[LinkName("QAbstractNetworkCache_CacheSize")]
	public static extern int64 QAbstractNetworkCache_CacheSize(void* c_this);
	[LinkName("QAbstractNetworkCache_Prepare")]
	public static extern QIODevice QAbstractNetworkCache_Prepare(void* c_this, QNetworkCacheMetaData metaData);
	[LinkName("QAbstractNetworkCache_Insert")]
	public static extern void QAbstractNetworkCache_Insert(void* c_this, QIODevice device);
	[LinkName("QAbstractNetworkCache_Clear")]
	public static extern void QAbstractNetworkCache_Clear(void* c_this);
	[LinkName("QAbstractNetworkCache_Tr2")]
	public static extern char8[] QAbstractNetworkCache_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractNetworkCache_Tr3")]
	public static extern char8[] QAbstractNetworkCache_Tr3(char8[] s, char8[] c, int32 n);
}