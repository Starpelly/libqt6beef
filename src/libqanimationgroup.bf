using System;
using System.Interop;
namespace Qt;

public struct QAnimationGroup
{
	[LinkName("QAnimationGroup_new")]
	public static extern void* QAnimationGroup_new();
	[LinkName("QAnimationGroup_new2")]
	public static extern void* QAnimationGroup_new2(QObject parent);
	[LinkName("QAnimationGroup_MetaObject")]
	public static extern QMetaObject QAnimationGroup_MetaObject(void* c_this);
	[LinkName("QAnimationGroup_Metacast")]
	public static extern void QAnimationGroup_Metacast(void* c_this, char8[] param1);
	[LinkName("QAnimationGroup_Metacall")]
	public static extern int32 QAnimationGroup_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAnimationGroup_Tr")]
	public static extern char8[] QAnimationGroup_Tr(char8[] s);
	[LinkName("QAnimationGroup_AnimationAt")]
	public static extern QAbstractAnimation QAnimationGroup_AnimationAt(void* c_this, int32 index);
	[LinkName("QAnimationGroup_AnimationCount")]
	public static extern int32 QAnimationGroup_AnimationCount(void* c_this);
	[LinkName("QAnimationGroup_IndexOfAnimation")]
	public static extern int32 QAnimationGroup_IndexOfAnimation(void* c_this, QAbstractAnimation animation);
	[LinkName("QAnimationGroup_AddAnimation")]
	public static extern void QAnimationGroup_AddAnimation(void* c_this, QAbstractAnimation animation);
	[LinkName("QAnimationGroup_InsertAnimation")]
	public static extern void QAnimationGroup_InsertAnimation(void* c_this, int32 index, QAbstractAnimation animation);
	[LinkName("QAnimationGroup_RemoveAnimation")]
	public static extern void QAnimationGroup_RemoveAnimation(void* c_this, QAbstractAnimation animation);
	[LinkName("QAnimationGroup_TakeAnimation")]
	public static extern QAbstractAnimation QAnimationGroup_TakeAnimation(void* c_this, int32 index);
	[LinkName("QAnimationGroup_Clear")]
	public static extern void QAnimationGroup_Clear(void* c_this);
	[LinkName("QAnimationGroup_Event")]
	public static extern bool QAnimationGroup_Event(void* c_this, QEvent event);
	[LinkName("QAnimationGroup_Tr2")]
	public static extern char8[] QAnimationGroup_Tr2(char8[] s, char8[] c);
	[LinkName("QAnimationGroup_Tr3")]
	public static extern char8[] QAnimationGroup_Tr3(char8[] s, char8[] c, int32 n);
}