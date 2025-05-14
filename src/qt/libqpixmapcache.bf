using System;
using System.Interop;
namespace Qt;

public interface IQPixmapCache
{
	void* NativePtr { get; }
}
public struct QPixmapCachePtr : IQPixmapCache, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQPixmapCache other)
	{
		return .(CQt.QPixmapCache_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
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
		return CQt.QPixmapCache_Find(libqt_string(key), (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public static bool Find2(QPixmapCache__KeyPtr key, IQPixmap pixmap)
	{
		return CQt.QPixmapCache_Find2((key == default || key.NativePtr == default) ? default : key.NativePtr, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public static bool Insert(String key, IQPixmap pixmap)
	{
		return CQt.QPixmapCache_Insert(libqt_string(key), (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public static void InsertWithPixmap(IQPixmap pixmap)
	{
		CQt.QPixmapCache_InsertWithPixmap((pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public static bool Replace(QPixmapCache__KeyPtr key, IQPixmap pixmap)
	{
		return CQt.QPixmapCache_Replace((key == default || key.NativePtr == default) ? default : key.NativePtr, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public static void Remove(String key)
	{
		CQt.QPixmapCache_Remove(libqt_string(key));
	}
	
	public static void RemoveWithKey(QPixmapCache__KeyPtr key)
	{
		CQt.QPixmapCache_RemoveWithKey((key == default || key.NativePtr == default) ? default : key.NativePtr);
	}
	
	public static void Clear()
	{
		CQt.QPixmapCache_Clear();
	}
	
}
public class QPixmapCache
{
	public QPixmapCachePtr handle;
	
	public static implicit operator QPixmapCachePtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQPixmapCache other)
	{
		this.handle = QPixmapCachePtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public static int32 CacheLimit()
	{
		return QPixmapCachePtr.CacheLimit();
	}
	
	public static void SetCacheLimit(int32 cacheLimit)
	{
		QPixmapCachePtr.SetCacheLimit(cacheLimit);
	}
	
	public static bool Find(String key, IQPixmap pixmap)
	{
		return QPixmapCachePtr.Find(key, pixmap);
	}
	
	public static bool Find2(QPixmapCache__KeyPtr key, IQPixmap pixmap)
	{
		return QPixmapCachePtr.Find2(key, pixmap);
	}
	
	public static bool Insert(String key, IQPixmap pixmap)
	{
		return QPixmapCachePtr.Insert(key, pixmap);
	}
	
	public static void InsertWithPixmap(IQPixmap pixmap)
	{
		QPixmapCachePtr.InsertWithPixmap(pixmap);
	}
	
	public static bool Replace(QPixmapCache__KeyPtr key, IQPixmap pixmap)
	{
		return QPixmapCachePtr.Replace(key, pixmap);
	}
	
	public static void Remove(String key)
	{
		QPixmapCachePtr.Remove(key);
	}
	
	public static void RemoveWithKey(QPixmapCache__KeyPtr key)
	{
		QPixmapCachePtr.RemoveWithKey(key);
	}
	
	public static void Clear()
	{
		QPixmapCachePtr.Clear();
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
public struct QPixmapCache__KeyPtr : IQPixmapCache__Key, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QPixmapCache__Key_new());
	}
	
	public void Dispose()
	{
		CQt.QPixmapCache__Key_Delete(this.nativePtr);
	}
	
	public bool OperatorEqual(QPixmapCache__KeyPtr key)
	{
		return CQt.QPixmapCache__Key_OperatorEqual(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr);
	}
	
	public bool OperatorNotEqual(QPixmapCache__KeyPtr key)
	{
		return CQt.QPixmapCache__Key_OperatorNotEqual(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr);
	}
	
	public void OperatorAssign(QPixmapCache__KeyPtr other)
	{
		CQt.QPixmapCache__Key_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(QPixmapCache__KeyPtr other)
	{
		CQt.QPixmapCache__Key_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QPixmapCache__Key_IsValid(this.nativePtr);
	}
	
}
public class QPixmapCache__Key
{
	public QPixmapCache__KeyPtr handle;
	
	public static implicit operator QPixmapCache__KeyPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QPixmapCache__KeyPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool OperatorEqual(QPixmapCache__KeyPtr key)
	{
		return this.handle.OperatorEqual(key);
	}
	
	public bool OperatorNotEqual(QPixmapCache__KeyPtr key)
	{
		return this.handle.OperatorNotEqual(key);
	}
	
	public void OperatorAssign(QPixmapCache__KeyPtr other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(QPixmapCache__KeyPtr other)
	{
		this.handle.Swap(other);
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
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