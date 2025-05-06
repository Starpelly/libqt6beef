using System;
using System.Interop;
namespace Qt;

public struct QUrlQuery
{
	[LinkName("QUrlQuery_new")]
	public static extern void* QUrlQuery_new();
	[LinkName("QUrlQuery_new2")]
	public static extern void* QUrlQuery_new2(QUrl url);
	[LinkName("QUrlQuery_new3")]
	public static extern void* QUrlQuery_new3(char8[] queryString);
	[LinkName("QUrlQuery_new4")]
	public static extern void* QUrlQuery_new4(QUrlQuery other);
	[LinkName("QUrlQuery_OperatorAssign")]
	public static extern void QUrlQuery_OperatorAssign(void* c_this, QUrlQuery other);
	[LinkName("QUrlQuery_OperatorEqual")]
	public static extern bool QUrlQuery_OperatorEqual(void* c_this, QUrlQuery other);
	[LinkName("QUrlQuery_OperatorNotEqual")]
	public static extern bool QUrlQuery_OperatorNotEqual(void* c_this, QUrlQuery other);
	[LinkName("QUrlQuery_Swap")]
	public static extern void QUrlQuery_Swap(void* c_this, QUrlQuery other);
	[LinkName("QUrlQuery_IsEmpty")]
	public static extern bool QUrlQuery_IsEmpty(void* c_this);
	[LinkName("QUrlQuery_IsDetached")]
	public static extern bool QUrlQuery_IsDetached(void* c_this);
	[LinkName("QUrlQuery_Clear")]
	public static extern void QUrlQuery_Clear(void* c_this);
	[LinkName("QUrlQuery_Query")]
	public static extern char8[] QUrlQuery_Query(void* c_this);
	[LinkName("QUrlQuery_SetQuery")]
	public static extern void QUrlQuery_SetQuery(void* c_this, char8[] queryString);
	[LinkName("QUrlQuery_ToString")]
	public static extern char8[] QUrlQuery_ToString(void* c_this);
	[LinkName("QUrlQuery_SetQueryDelimiters")]
	public static extern void QUrlQuery_SetQueryDelimiters(void* c_this, QChar valueDelimiter, QChar pairDelimiter);
	[LinkName("QUrlQuery_QueryValueDelimiter")]
	public static extern QChar QUrlQuery_QueryValueDelimiter(void* c_this);
	[LinkName("QUrlQuery_QueryPairDelimiter")]
	public static extern QChar QUrlQuery_QueryPairDelimiter(void* c_this);
	[LinkName("QUrlQuery_SetQueryItems")]
	public static extern void QUrlQuery_SetQueryItems(void* c_this, void*[] query);
	[LinkName("QUrlQuery_QueryItems")]
	public static extern void*[] QUrlQuery_QueryItems(void* c_this);
	[LinkName("QUrlQuery_HasQueryItem")]
	public static extern bool QUrlQuery_HasQueryItem(void* c_this, char8[] key);
	[LinkName("QUrlQuery_AddQueryItem")]
	public static extern void QUrlQuery_AddQueryItem(void* c_this, char8[] key, char8[] value);
	[LinkName("QUrlQuery_RemoveQueryItem")]
	public static extern void QUrlQuery_RemoveQueryItem(void* c_this, char8[] key);
	[LinkName("QUrlQuery_QueryItemValue")]
	public static extern char8[] QUrlQuery_QueryItemValue(void* c_this, char8[] key);
	[LinkName("QUrlQuery_AllQueryItemValues")]
	public static extern char8[][] QUrlQuery_AllQueryItemValues(void* c_this, char8[] key);
	[LinkName("QUrlQuery_RemoveAllQueryItems")]
	public static extern void QUrlQuery_RemoveAllQueryItems(void* c_this, char8[] key);
	[LinkName("QUrlQuery_Query1")]
	public static extern char8[] QUrlQuery_Query1(void* c_this, int64 encoding);
	[LinkName("QUrlQuery_ToString1")]
	public static extern char8[] QUrlQuery_ToString1(void* c_this, int64 encoding);
	[LinkName("QUrlQuery_QueryItems1")]
	public static extern void*[] QUrlQuery_QueryItems1(void* c_this, int64 encoding);
	[LinkName("QUrlQuery_QueryItemValue2")]
	public static extern char8[] QUrlQuery_QueryItemValue2(void* c_this, char8[] key, int64 encoding);
	[LinkName("QUrlQuery_AllQueryItemValues2")]
	public static extern char8[][] QUrlQuery_AllQueryItemValues2(void* c_this, char8[] key, int64 encoding);
}