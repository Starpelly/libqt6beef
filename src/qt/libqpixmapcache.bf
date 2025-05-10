using System;
using System.Interop;
namespace Qt;

public class QPixmapCache
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QPixmapCache_new(other);
	}
	
	public ~this()
	{
		CQt.QPixmapCache_Delete(this.nativePtr);
	}
	
	public static int32 CacheLimit()
	{
		return CQt.QPixmapCache_CacheLimit();
	}
	
	public static void SetCacheLimit(int32 cacheLimit)
	{
		CQt.QPixmapCache_SetCacheLimit(cacheLimit);
	}
	
	public static bool Find(libqt_string key, void* pixmap)
	{
		return CQt.QPixmapCache_Find(key, pixmap);
	}
	
	public static bool Find2(QPixmapCache__Key* key, void* pixmap)
	{
		return CQt.QPixmapCache_Find2(key, pixmap);
	}
	
	public static bool Insert(libqt_string key, void* pixmap)
	{
		return CQt.QPixmapCache_Insert(key, pixmap);
	}
	
	public static QPixmapCache__Key InsertWithPixmap(void* pixmap)
	{
		return CQt.QPixmapCache_InsertWithPixmap(pixmap);
	}
	
	public static bool Replace(QPixmapCache__Key* key, void* pixmap)
	{
		return CQt.QPixmapCache_Replace(key, pixmap);
	}
	
	public static void Remove(libqt_string key)
	{
		CQt.QPixmapCache_Remove(key);
	}
	
	public static void RemoveWithKey(QPixmapCache__Key* key)
	{
		CQt.QPixmapCache_RemoveWithKey(key);
	}
	
	public static void Clear()
	{
		CQt.QPixmapCache_Clear();
	}
	
}
extension CQt
{
	[LinkName("QPixmapCache_new")]
	public static extern void* QPixmapCache_new(void* other);
	[LinkName("QPixmapCache_new2")]
	public static extern void* QPixmapCache_new2(void* other);
	[LinkName("QPixmapCache_CacheLimit")]
	public static extern int32 QPixmapCache_CacheLimit();
	[LinkName("QPixmapCache_SetCacheLimit")]
	public static extern void QPixmapCache_SetCacheLimit(int32 cacheLimit);
	[LinkName("QPixmapCache_Find")]
	public static extern bool QPixmapCache_Find(libqt_string key, void* pixmap);
	[LinkName("QPixmapCache_Find2")]
	public static extern bool QPixmapCache_Find2(QPixmapCache__Key* key, void* pixmap);
	[LinkName("QPixmapCache_Insert")]
	public static extern bool QPixmapCache_Insert(libqt_string key, void* pixmap);
	[LinkName("QPixmapCache_InsertWithPixmap")]
	public static extern QPixmapCache__Key QPixmapCache_InsertWithPixmap(void* pixmap);
	[LinkName("QPixmapCache_Replace")]
	public static extern bool QPixmapCache_Replace(QPixmapCache__Key* key, void* pixmap);
	[LinkName("QPixmapCache_Remove")]
	public static extern void QPixmapCache_Remove(libqt_string key);
	[LinkName("QPixmapCache_RemoveWithKey")]
	public static extern void QPixmapCache_RemoveWithKey(QPixmapCache__Key* key);
	[LinkName("QPixmapCache_Clear")]
	public static extern void QPixmapCache_Clear();
	/// Delete this object from C++ memory
	[LinkName("QPixmapCache_Delete")]
	public static extern void QPixmapCache_Delete(void* self);
}
public class QPixmapCache__Key
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPixmapCache__Key_new();
	}
	
	public ~this()
	{
		CQt.QPixmapCache__Key_Delete(this.nativePtr);
	}
	
	public bool OperatorEqual(QPixmapCache__Key* key)
	{
		return CQt.QPixmapCache__Key_OperatorEqual(this.nativePtr, key);
	}
	
	public bool OperatorNotEqual(QPixmapCache__Key* key)
	{
		return CQt.QPixmapCache__Key_OperatorNotEqual(this.nativePtr, key);
	}
	
	public void OperatorAssign(QPixmapCache__Key* other)
	{
		CQt.QPixmapCache__Key_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(QPixmapCache__Key* other)
	{
		CQt.QPixmapCache__Key_Swap(this.nativePtr, other);
	}
	
	public bool IsValid()
	{
		return CQt.QPixmapCache__Key_IsValid(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QPixmapCache__Key_new")]
	public static extern void* QPixmapCache__Key_new();
	[LinkName("QPixmapCache__Key_new2")]
	public static extern void* QPixmapCache__Key_new2(QPixmapCache__Key* other);
	[LinkName("QPixmapCache__Key_OperatorEqual")]
	public static extern bool QPixmapCache__Key_OperatorEqual(void* c_this, QPixmapCache__Key* key);
	[LinkName("QPixmapCache__Key_OperatorNotEqual")]
	public static extern bool QPixmapCache__Key_OperatorNotEqual(void* c_this, QPixmapCache__Key* key);
	[LinkName("QPixmapCache__Key_OperatorAssign")]
	public static extern void QPixmapCache__Key_OperatorAssign(void* c_this, QPixmapCache__Key* other);
	[LinkName("QPixmapCache__Key_Swap")]
	public static extern void QPixmapCache__Key_Swap(void* c_this, QPixmapCache__Key* other);
	[LinkName("QPixmapCache__Key_IsValid")]
	public static extern bool QPixmapCache__Key_IsValid(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QPixmapCache__Key_Delete")]
	public static extern void QPixmapCache__Key_Delete(void* self);
}