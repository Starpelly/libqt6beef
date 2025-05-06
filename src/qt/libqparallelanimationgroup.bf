using System;
using System.Interop;
namespace Qt;

public struct QParallelAnimationGroup : QAnimationGroup
{
	[LinkName("QParallelAnimationGroup_new")]
	public static extern QParallelAnimationGroup* QParallelAnimationGroup_new();
	[LinkName("QParallelAnimationGroup_new2")]
	public static extern QParallelAnimationGroup* QParallelAnimationGroup_new2(QObject* parent);
	[LinkName("QParallelAnimationGroup_MetaObject")]
	public static extern QMetaObject* QParallelAnimationGroup_MetaObject(Self* c_this);
	[LinkName("QParallelAnimationGroup_Metacast")]
	public static extern void* QParallelAnimationGroup_Metacast(Self* c_this, char8[] param1);
	[LinkName("QParallelAnimationGroup_Metacall")]
	public static extern int32 QParallelAnimationGroup_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QParallelAnimationGroup_Tr")]
	public static extern libqt_string QParallelAnimationGroup_Tr(char8[] s);
	[LinkName("QParallelAnimationGroup_Duration")]
	public static extern int32 QParallelAnimationGroup_Duration(Self* c_this);
	[LinkName("QParallelAnimationGroup_Event")]
	public static extern bool QParallelAnimationGroup_Event(Self* c_this, QEvent* event);
	[LinkName("QParallelAnimationGroup_UpdateCurrentTime")]
	public static extern void QParallelAnimationGroup_UpdateCurrentTime(Self* c_this, int32 currentTime);
	[LinkName("QParallelAnimationGroup_UpdateState")]
	public static extern void QParallelAnimationGroup_UpdateState(Self* c_this, int64 newState, int64 oldState);
	[LinkName("QParallelAnimationGroup_UpdateDirection")]
	public static extern void QParallelAnimationGroup_UpdateDirection(Self* c_this, int64 direction);
	[LinkName("QParallelAnimationGroup_Tr2")]
	public static extern libqt_string QParallelAnimationGroup_Tr2(char8[] s, char8[] c);
	[LinkName("QParallelAnimationGroup_Tr3")]
	public static extern libqt_string QParallelAnimationGroup_Tr3(char8[] s, char8[] c, int32 n);
}