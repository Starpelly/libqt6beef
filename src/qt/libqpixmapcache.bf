using System;
using System.Interop;
namespace Qt;

public interface IQPixmapCache
{
	void* NativePtr { get; }
}
public class QPixmapCache : IQPixmapCache
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQPixmapCache other)
	{
		this.nativePtr = CQt.QPixmapCache_new((other == default) ? default : (void*)other.NativePtr);
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
	
	public static bool Find(String key, IQPixmap pixmap)
	{
		return CQt.QPixmapCache_Find(libqt_string(key), (pixmap == null) ? null : (void*)pixmap.NativePtr);
	}
	
	public static bool Find2(QPixmapCache__Key key, IQPixmap pixmap)
	{
		return CQt.QPixmapCache_Find2((key == default) ? default : (void*)key.NativePtr, (pixmap == null) ? null : (void*)pixmap.NativePtr);
	}
	
	public static bool Insert(String key, IQPixmap pixmap)
	{
		return CQt.QPixmapCache_Insert(libqt_string(key), (pixmap == default) ? default : (void*)pixmap.NativePtr);
	}
	
	public static void InsertWithPixmap(IQPixmap pixmap)
	{
		CQt.QPixmapCache_InsertWithPixmap((pixmap == default) ? default : (void*)pixmap.NativePtr);
	}
	
	public static bool Replace(QPixmapCache__Key key, IQPixmap pixmap)
	{
		return CQt.QPixmapCache_Replace((key == default) ? default : (void*)key.NativePtr, (pixmap == default) ? default : (void*)pixmap.NativePtr);
	}
	
	public static void Remove(String key)
	{
		CQt.QPixmapCache_Remove(libqt_string(key));
	}
	
	public static void RemoveWithKey(QPixmapCache__Key key)
	{
		CQt.QPixmapCache_RemoveWithKey((key == default) ? default : (void*)key.NativePtr);
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
	public static extern bool QPixmapCache_Find2(void* key, void* pixmap);
	[LinkName("QPixmapCache_Insert")]
	public static extern bool QPixmapCache_Insert(libqt_string key, void* pixmap);
	[LinkName("QPixmapCache_InsertWithPixmap")]
	public static extern void QPixmapCache_InsertWithPixmap(void* pixmap);
	[LinkName("QPixmapCache_Replace")]
	public static extern bool QPixmapCache_Replace(void* key, void* pixmap);
	[LinkName("QPixmapCache_Remove")]
	public static extern void QPixmapCache_Remove(libqt_string key);
	[LinkName("QPixmapCache_RemoveWithKey")]
	public static extern void QPixmapCache_RemoveWithKey(void* key);
	[LinkName("QPixmapCache_Clear")]
	public static extern void QPixmapCache_Clear();
	/// Delete this object from C++ memory
	[LinkName("QPixmapCache_Delete")]
	public static extern void QPixmapCache_Delete(void* self);
}
public interface IQPixmapCache__Key
{
	void* NativePtr { get; }
}
public class QPixmapCache__Key : IQPixmapCache__Key
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPixmapCache__Key_new();
	}
	
	public ~this()
	{
		CQt.QPixmapCache__Key_Delete(this.nativePtr);
	}
	
	public bool OperatorEqual(QPixmapCache__Key key)
	{
		return CQt.QPixmapCache__Key_OperatorEqual(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
	}
	
	public bool OperatorNotEqual(QPixmapCache__Key key)
	{
		return CQt.QPixmapCache__Key_OperatorNotEqual(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
	}
	
	public void OperatorAssign(QPixmapCache__Key other)
	{
		CQt.QPixmapCache__Key_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Swap(QPixmapCache__Key other)
	{
		CQt.QPixmapCache__Key_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
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
	public static extern void* QPixmapCache__Key_new2(void* other);
	[LinkName("QPixmapCache__Key_OperatorEqual")]
	public static extern bool QPixmapCache__Key_OperatorEqual(void* c_this, void* key);
	[LinkName("QPixmapCache__Key_OperatorNotEqual")]
	public static extern bool QPixmapCache__Key_OperatorNotEqual(void* c_this, void* key);
	[LinkName("QPixmapCache__Key_OperatorAssign")]
	public static extern void QPixmapCache__Key_OperatorAssign(void* c_this, void* other);
	[LinkName("QPixmapCache__Key_Swap")]
	public static extern void QPixmapCache__Key_Swap(void* c_this, void* other);
	[LinkName("QPixmapCache__Key_IsValid")]
	public static extern bool QPixmapCache__Key_IsValid(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QPixmapCache__Key_Delete")]
	public static extern void QPixmapCache__Key_Delete(void* self);
}