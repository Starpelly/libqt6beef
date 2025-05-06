using System;
using System.Interop;
namespace Qt;

public struct QSequentialAnimationGroup
{
	[LinkName("QSequentialAnimationGroup_new")]
	public static extern void* QSequentialAnimationGroup_new();
	[LinkName("QSequentialAnimationGroup_new2")]
	public static extern void* QSequentialAnimationGroup_new2(QObject parent);
	[LinkName("QSequentialAnimationGroup_MetaObject")]
	public static extern QMetaObject QSequentialAnimationGroup_MetaObject(void* c_this);
	[LinkName("QSequentialAnimationGroup_Metacast")]
	public static extern void QSequentialAnimationGroup_Metacast(void* c_this, char8[] param1);
	[LinkName("QSequentialAnimationGroup_Metacall")]
	public static extern int32 QSequentialAnimationGroup_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSequentialAnimationGroup_Tr")]
	public static extern char8[] QSequentialAnimationGroup_Tr(char8[] s);
	[LinkName("QSequentialAnimationGroup_AddPause")]
	public static extern QPauseAnimation QSequentialAnimationGroup_AddPause(void* c_this, int32 msecs);
	[LinkName("QSequentialAnimationGroup_InsertPause")]
	public static extern QPauseAnimation QSequentialAnimationGroup_InsertPause(void* c_this, int32 index, int32 msecs);
	[LinkName("QSequentialAnimationGroup_CurrentAnimation")]
	public static extern QAbstractAnimation QSequentialAnimationGroup_CurrentAnimation(void* c_this);
	[LinkName("QSequentialAnimationGroup_Duration")]
	public static extern int32 QSequentialAnimationGroup_Duration(void* c_this);
	[LinkName("QSequentialAnimationGroup_CurrentAnimationChanged")]
	public static extern void QSequentialAnimationGroup_CurrentAnimationChanged(void* c_this, QAbstractAnimation current);
	[LinkName("QSequentialAnimationGroup_Event")]
	public static extern bool QSequentialAnimationGroup_Event(void* c_this, QEvent event);
	[LinkName("QSequentialAnimationGroup_UpdateCurrentTime")]
	public static extern void QSequentialAnimationGroup_UpdateCurrentTime(void* c_this, int32 param1);
	[LinkName("QSequentialAnimationGroup_UpdateState")]
	public static extern void QSequentialAnimationGroup_UpdateState(void* c_this, int64 newState, int64 oldState);
	[LinkName("QSequentialAnimationGroup_UpdateDirection")]
	public static extern void QSequentialAnimationGroup_UpdateDirection(void* c_this, int64 direction);
	[LinkName("QSequentialAnimationGroup_Tr2")]
	public static extern char8[] QSequentialAnimationGroup_Tr2(char8[] s, char8[] c);
	[LinkName("QSequentialAnimationGroup_Tr3")]
	public static extern char8[] QSequentialAnimationGroup_Tr3(char8[] s, char8[] c, int32 n);
}