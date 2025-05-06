using System;
using System.Interop;
namespace Qt;

public struct QPixmapCache
{
	[LinkName("QPixmapCache_new")]
	public static extern void* QPixmapCache_new(QPixmapCache other);
	[LinkName("QPixmapCache_new2")]
	public static extern void* QPixmapCache_new2(QPixmapCache other);
	[LinkName("QPixmapCache_CacheLimit")]
	public static extern int32 QPixmapCache_CacheLimit();
	[LinkName("QPixmapCache_SetCacheLimit")]
	public static extern void QPixmapCache_SetCacheLimit(int32 cacheLimit);
	[LinkName("QPixmapCache_Find")]
	public static extern bool QPixmapCache_Find(char8[] key, QPixmap pixmap);
	[LinkName("QPixmapCache_Find2")]
	public static extern bool QPixmapCache_Find2(QPixmapCache__Key key, QPixmap pixmap);
	[LinkName("QPixmapCache_Insert")]
	public static extern bool QPixmapCache_Insert(char8[] key, QPixmap pixmap);
	[LinkName("QPixmapCache_InsertWithPixmap")]
	public static extern QPixmapCache__Key QPixmapCache_InsertWithPixmap(QPixmap pixmap);
	[LinkName("QPixmapCache_Replace")]
	public static extern bool QPixmapCache_Replace(QPixmapCache__Key key, QPixmap pixmap);
	[LinkName("QPixmapCache_Remove")]
	public static extern void QPixmapCache_Remove(char8[] key);
	[LinkName("QPixmapCache_RemoveWithKey")]
	public static extern void QPixmapCache_RemoveWithKey(QPixmapCache__Key key);
	[LinkName("QPixmapCache_Clear")]
	public static extern void QPixmapCache_Clear();
}
public struct QPixmapCache__Key
{
	[LinkName("QPixmapCache__Key_new")]
	public static extern void* QPixmapCache__Key_new();
	[LinkName("QPixmapCache__Key_new2")]
	public static extern void* QPixmapCache__Key_new2(QPixmapCache__Key other);
	[LinkName("QPixmapCache__Key_OperatorEqual")]
	public static extern bool QPixmapCache__Key_OperatorEqual(void* c_this, QPixmapCache__Key key);
	[LinkName("QPixmapCache__Key_OperatorNotEqual")]
	public static extern bool QPixmapCache__Key_OperatorNotEqual(void* c_this, QPixmapCache__Key key);
	[LinkName("QPixmapCache__Key_OperatorAssign")]
	public static extern void QPixmapCache__Key_OperatorAssign(void* c_this, QPixmapCache__Key other);
	[LinkName("QPixmapCache__Key_Swap")]
	public static extern void QPixmapCache__Key_Swap(void* c_this, QPixmapCache__Key other);
	[LinkName("QPixmapCache__Key_IsValid")]
	public static extern bool QPixmapCache__Key_IsValid(void* c_this);
}