using System;
using System.Interop;
namespace Qt;

public struct QSequentialAnimationGroup : QAnimationGroup
{
	[LinkName("QSequentialAnimationGroup_new")]
	public static extern QSequentialAnimationGroup* QSequentialAnimationGroup_new();
	[LinkName("QSequentialAnimationGroup_new2")]
	public static extern QSequentialAnimationGroup* QSequentialAnimationGroup_new2(QObject* parent);
	[LinkName("QSequentialAnimationGroup_MetaObject")]
	public static extern QMetaObject* QSequentialAnimationGroup_MetaObject(Self* c_this);
	[LinkName("QSequentialAnimationGroup_Metacast")]
	public static extern void* QSequentialAnimationGroup_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSequentialAnimationGroup_Metacall")]
	public static extern int32 QSequentialAnimationGroup_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSequentialAnimationGroup_Tr")]
	public static extern libqt_string QSequentialAnimationGroup_Tr(char8[] s);
	[LinkName("QSequentialAnimationGroup_AddPause")]
	public static extern QPauseAnimation* QSequentialAnimationGroup_AddPause(Self* c_this, int32 msecs);
	[LinkName("QSequentialAnimationGroup_InsertPause")]
	public static extern QPauseAnimation* QSequentialAnimationGroup_InsertPause(Self* c_this, int32 index, int32 msecs);
	[LinkName("QSequentialAnimationGroup_CurrentAnimation")]
	public static extern QAbstractAnimation* QSequentialAnimationGroup_CurrentAnimation(Self* c_this);
	[LinkName("QSequentialAnimationGroup_Duration")]
	public static extern int32 QSequentialAnimationGroup_Duration(Self* c_this);
	[LinkName("QSequentialAnimationGroup_Connect_CurrentAnimationChanged")]
	public static extern void QSequentialAnimationGroup_Connect_CurrentAnimationChanged(Self* c_this, c_intptr slot);
	[LinkName("QSequentialAnimationGroup_Event")]
	public static extern bool QSequentialAnimationGroup_Event(Self* c_this, QEvent* event);
	[LinkName("QSequentialAnimationGroup_UpdateCurrentTime")]
	public static extern void QSequentialAnimationGroup_UpdateCurrentTime(Self* c_this, int32 param1);
	[LinkName("QSequentialAnimationGroup_UpdateState")]
	public static extern void QSequentialAnimationGroup_UpdateState(Self* c_this, int64 newState, int64 oldState);
	[LinkName("QSequentialAnimationGroup_UpdateDirection")]
	public static extern void QSequentialAnimationGroup_UpdateDirection(Self* c_this, int64 direction);
	[LinkName("QSequentialAnimationGroup_Tr2")]
	public static extern libqt_string QSequentialAnimationGroup_Tr2(char8[] s, char8[] c);
	[LinkName("QSequentialAnimationGroup_Tr3")]
	public static extern libqt_string QSequentialAnimationGroup_Tr3(char8[] s, char8[] c, int32 n);
}