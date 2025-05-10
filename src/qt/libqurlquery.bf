using System;
using System.Interop;
namespace Qt;

public class QUrlQuery
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QUrlQuery_new();
	}
	
	public ~this()
	{
		CQt.QUrlQuery_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QUrlQuery_OperatorAssign(this.nativePtr, other);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QUrlQuery_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QUrlQuery_OperatorNotEqual(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QUrlQuery_Swap(this.nativePtr, other);
	}
	
	public bool IsEmpty()
	{
		return CQt.QUrlQuery_IsEmpty(this.nativePtr);
	}
	
	public bool IsDetached()
	{
		return CQt.QUrlQuery_IsDetached(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QUrlQuery_Clear(this.nativePtr);
	}
	
	public libqt_string Query()
	{
		return CQt.QUrlQuery_Query(this.nativePtr);
	}
	
	public void SetQuery(libqt_string queryString)
	{
		CQt.QUrlQuery_SetQuery(this.nativePtr, queryString);
	}
	
	public libqt_string ToString()
	{
		return CQt.QUrlQuery_ToString(this.nativePtr);
	}
	
	public void SetQueryDelimiters(void valueDelimiter, void pairDelimiter)
	{
		CQt.QUrlQuery_SetQueryDelimiters(this.nativePtr, valueDelimiter, pairDelimiter);
	}
	
	public void QueryValueDelimiter()
	{
		CQt.QUrlQuery_QueryValueDelimiter(this.nativePtr);
	}
	
	public void QueryPairDelimiter()
	{
		CQt.QUrlQuery_QueryPairDelimiter(this.nativePtr);
	}
	
	public void SetQueryItems(void*[] query)
	{
		CQt.QUrlQuery_SetQueryItems(this.nativePtr, query);
	}
	
	public void*[] QueryItems()
	{
		return CQt.QUrlQuery_QueryItems(this.nativePtr);
	}
	
	public bool HasQueryItem(libqt_string key)
	{
		return CQt.QUrlQuery_HasQueryItem(this.nativePtr, key);
	}
	
	public void AddQueryItem(libqt_string key, libqt_string value)
	{
		CQt.QUrlQuery_AddQueryItem(this.nativePtr, key, value);
	}
	
	public void RemoveQueryItem(libqt_string key)
	{
		CQt.QUrlQuery_RemoveQueryItem(this.nativePtr, key);
	}
	
	public libqt_string QueryItemValue(libqt_string key)
	{
		return CQt.QUrlQuery_QueryItemValue(this.nativePtr, key);
	}
	
	public libqt_string[] AllQueryItemValues(libqt_string key)
	{
		return CQt.QUrlQuery_AllQueryItemValues(this.nativePtr, key);
	}
	
	public void RemoveAllQueryItems(libqt_string key)
	{
		CQt.QUrlQuery_RemoveAllQueryItems(this.nativePtr, key);
	}
	
	public libqt_string Query1(int64 encoding)
	{
		return CQt.QUrlQuery_Query1(this.nativePtr, encoding);
	}
	
	public libqt_string ToString1(int64 encoding)
	{
		return CQt.QUrlQuery_ToString1(this.nativePtr, encoding);
	}
	
	public void*[] QueryItems1(int64 encoding)
	{
		return CQt.QUrlQuery_QueryItems1(this.nativePtr, encoding);
	}
	
	public libqt_string QueryItemValue2(libqt_string key, int64 encoding)
	{
		return CQt.QUrlQuery_QueryItemValue2(this.nativePtr, key, encoding);
	}
	
	public libqt_string[] AllQueryItemValues2(libqt_string key, int64 encoding)
	{
		return CQt.QUrlQuery_AllQueryItemValues2(this.nativePtr, key, encoding);
	}
	
}
extension CQt
{
	[LinkName("QUrlQuery_new")]
	public static extern void* QUrlQuery_new();
	[LinkName("QUrlQuery_new2")]
	public static extern void* QUrlQuery_new2(void* url);
	[LinkName("QUrlQuery_new3")]
	public static extern void* QUrlQuery_new3(libqt_string queryString);
	[LinkName("QUrlQuery_new4")]
	public static extern void* QUrlQuery_new4(void* other);
	[LinkName("QUrlQuery_OperatorAssign")]
	public static extern void QUrlQuery_OperatorAssign(void* c_this, void* other);
	[LinkName("QUrlQuery_OperatorEqual")]
	public static extern bool QUrlQuery_OperatorEqual(void* c_this, void* other);
	[LinkName("QUrlQuery_OperatorNotEqual")]
	public static extern bool QUrlQuery_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QUrlQuery_Swap")]
	public static extern void QUrlQuery_Swap(void* c_this, void* other);
	[LinkName("QUrlQuery_IsEmpty")]
	public static extern bool QUrlQuery_IsEmpty(void* c_this);
	[LinkName("QUrlQuery_IsDetached")]
	public static extern bool QUrlQuery_IsDetached(void* c_this);
	[LinkName("QUrlQuery_Clear")]
	public static extern void QUrlQuery_Clear(void* c_this);
	[LinkName("QUrlQuery_Query")]
	public static extern libqt_string QUrlQuery_Query(void* c_this);
	[LinkName("QUrlQuery_SetQuery")]
	public static extern void QUrlQuery_SetQuery(void* c_this, libqt_string queryString);
	[LinkName("QUrlQuery_ToString")]
	public static extern libqt_string QUrlQuery_ToString(void* c_this);
	[LinkName("QUrlQuery_SetQueryDelimiters")]
	public static extern void QUrlQuery_SetQueryDelimiters(void* c_this, void valueDelimiter, void pairDelimiter);
	[LinkName("QUrlQuery_QueryValueDelimiter")]
	public static extern void QUrlQuery_QueryValueDelimiter(void* c_this);
	[LinkName("QUrlQuery_QueryPairDelimiter")]
	public static extern void QUrlQuery_QueryPairDelimiter(void* c_this);
	[LinkName("QUrlQuery_SetQueryItems")]
	public static extern void QUrlQuery_SetQueryItems(void* c_this, void*[] query);
	[LinkName("QUrlQuery_QueryItems")]
	public static extern void*[] QUrlQuery_QueryItems(void* c_this);
	[LinkName("QUrlQuery_HasQueryItem")]
	public static extern bool QUrlQuery_HasQueryItem(void* c_this, libqt_string key);
	[LinkName("QUrlQuery_AddQueryItem")]
	public static extern void QUrlQuery_AddQueryItem(void* c_this, libqt_string key, libqt_string value);
	[LinkName("QUrlQuery_RemoveQueryItem")]
	public static extern void QUrlQuery_RemoveQueryItem(void* c_this, libqt_string key);
	[LinkName("QUrlQuery_QueryItemValue")]
	public static extern libqt_string QUrlQuery_QueryItemValue(void* c_this, libqt_string key);
	[LinkName("QUrlQuery_AllQueryItemValues")]
	public static extern libqt_string[] QUrlQuery_AllQueryItemValues(void* c_this, libqt_string key);
	[LinkName("QUrlQuery_RemoveAllQueryItems")]
	public static extern void QUrlQuery_RemoveAllQueryItems(void* c_this, libqt_string key);
	[LinkName("QUrlQuery_Query1")]
	public static extern libqt_string QUrlQuery_Query1(void* c_this, int64 encoding);
	[LinkName("QUrlQuery_ToString1")]
	public static extern libqt_string QUrlQuery_ToString1(void* c_this, int64 encoding);
	[LinkName("QUrlQuery_QueryItems1")]
	public static extern void*[] QUrlQuery_QueryItems1(void* c_this, int64 encoding);
	[LinkName("QUrlQuery_QueryItemValue2")]
	public static extern libqt_string QUrlQuery_QueryItemValue2(void* c_this, libqt_string key, int64 encoding);
	[LinkName("QUrlQuery_AllQueryItemValues2")]
	public static extern libqt_string[] QUrlQuery_AllQueryItemValues2(void* c_this, libqt_string key, int64 encoding);
	/// Delete this object from C++ memory
	[LinkName("QUrlQuery_Delete")]
	public static extern void QUrlQuery_Delete(void* self);
}