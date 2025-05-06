using System;
using System.Interop;
namespace Qt;

public struct QUrlQuery
{
	[LinkName("QUrlQuery_new")]
	public static extern QUrlQuery* QUrlQuery_new();
	[LinkName("QUrlQuery_new2")]
	public static extern QUrlQuery* QUrlQuery_new2(QUrl* url);
	[LinkName("QUrlQuery_new3")]
	public static extern QUrlQuery* QUrlQuery_new3(libqt_string queryString);
	[LinkName("QUrlQuery_new4")]
	public static extern QUrlQuery* QUrlQuery_new4(QUrlQuery* other);
	[LinkName("QUrlQuery_OperatorAssign")]
	public static extern void QUrlQuery_OperatorAssign(Self* c_this, QUrlQuery* other);
	[LinkName("QUrlQuery_OperatorEqual")]
	public static extern bool QUrlQuery_OperatorEqual(Self* c_this, QUrlQuery* other);
	[LinkName("QUrlQuery_OperatorNotEqual")]
	public static extern bool QUrlQuery_OperatorNotEqual(Self* c_this, QUrlQuery* other);
	[LinkName("QUrlQuery_Swap")]
	public static extern void QUrlQuery_Swap(Self* c_this, QUrlQuery* other);
	[LinkName("QUrlQuery_IsEmpty")]
	public static extern bool QUrlQuery_IsEmpty(Self* c_this);
	[LinkName("QUrlQuery_IsDetached")]
	public static extern bool QUrlQuery_IsDetached(Self* c_this);
	[LinkName("QUrlQuery_Clear")]
	public static extern void QUrlQuery_Clear(Self* c_this);
	[LinkName("QUrlQuery_Query")]
	public static extern libqt_string QUrlQuery_Query(Self* c_this);
	[LinkName("QUrlQuery_SetQuery")]
	public static extern void QUrlQuery_SetQuery(Self* c_this, libqt_string queryString);
	[LinkName("QUrlQuery_ToString")]
	public static extern libqt_string QUrlQuery_ToString(Self* c_this);
	[LinkName("QUrlQuery_SetQueryDelimiters")]
	public static extern void QUrlQuery_SetQueryDelimiters(Self* c_this, QChar valueDelimiter, QChar pairDelimiter);
	[LinkName("QUrlQuery_QueryValueDelimiter")]
	public static extern QChar QUrlQuery_QueryValueDelimiter(Self* c_this);
	[LinkName("QUrlQuery_QueryPairDelimiter")]
	public static extern QChar QUrlQuery_QueryPairDelimiter(Self* c_this);
	[LinkName("QUrlQuery_SetQueryItems")]
	public static extern void QUrlQuery_SetQueryItems(Self* c_this, void*[] query);
	[LinkName("QUrlQuery_QueryItems")]
	public static extern void*[] QUrlQuery_QueryItems(Self* c_this);
	[LinkName("QUrlQuery_HasQueryItem")]
	public static extern bool QUrlQuery_HasQueryItem(Self* c_this, libqt_string key);
	[LinkName("QUrlQuery_AddQueryItem")]
	public static extern void QUrlQuery_AddQueryItem(Self* c_this, libqt_string key, libqt_string value);
	[LinkName("QUrlQuery_RemoveQueryItem")]
	public static extern void QUrlQuery_RemoveQueryItem(Self* c_this, libqt_string key);
	[LinkName("QUrlQuery_QueryItemValue")]
	public static extern libqt_string QUrlQuery_QueryItemValue(Self* c_this, libqt_string key);
	[LinkName("QUrlQuery_AllQueryItemValues")]
	public static extern libqt_string[] QUrlQuery_AllQueryItemValues(Self* c_this, libqt_string key);
	[LinkName("QUrlQuery_RemoveAllQueryItems")]
	public static extern void QUrlQuery_RemoveAllQueryItems(Self* c_this, libqt_string key);
	[LinkName("QUrlQuery_Query1")]
	public static extern libqt_string QUrlQuery_Query1(Self* c_this, int64 encoding);
	[LinkName("QUrlQuery_ToString1")]
	public static extern libqt_string QUrlQuery_ToString1(Self* c_this, int64 encoding);
	[LinkName("QUrlQuery_QueryItems1")]
	public static extern void*[] QUrlQuery_QueryItems1(Self* c_this, int64 encoding);
	[LinkName("QUrlQuery_QueryItemValue2")]
	public static extern libqt_string QUrlQuery_QueryItemValue2(Self* c_this, libqt_string key, int64 encoding);
	[LinkName("QUrlQuery_AllQueryItemValues2")]
	public static extern libqt_string[] QUrlQuery_AllQueryItemValues2(Self* c_this, libqt_string key, int64 encoding);
}