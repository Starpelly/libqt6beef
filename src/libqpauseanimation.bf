using System;
using System.Interop;
namespace Qt;

public struct QPauseAnimation
{
	[LinkName("QPauseAnimation_new")]
	public static extern void* QPauseAnimation_new();
	[LinkName("QPauseAnimation_new2")]
	public static extern void* QPauseAnimation_new2(int32 msecs);
	[LinkName("QPauseAnimation_new3")]
	public static extern void* QPauseAnimation_new3(QObject parent);
	[LinkName("QPauseAnimation_new4")]
	public static extern void* QPauseAnimation_new4(int32 msecs, QObject parent);
	[LinkName("QPauseAnimation_MetaObject")]
	public static extern QMetaObject QPauseAnimation_MetaObject(void* c_this);
	[LinkName("QPauseAnimation_Metacast")]
	public static extern void QPauseAnimation_Metacast(void* c_this, char8[] param1);
	[LinkName("QPauseAnimation_Metacall")]
	public static extern int32 QPauseAnimation_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QPauseAnimation_Tr")]
	public static extern char8[] QPauseAnimation_Tr(char8[] s);
	[LinkName("QPauseAnimation_Duration")]
	public static extern int32 QPauseAnimation_Duration(void* c_this);
	[LinkName("QPauseAnimation_SetDuration")]
	public static extern void QPauseAnimation_SetDuration(void* c_this, int32 msecs);
	[LinkName("QPauseAnimation_Event")]
	public static extern bool QPauseAnimation_Event(void* c_this, QEvent e);
	[LinkName("QPauseAnimation_UpdateCurrentTime")]
	public static extern void QPauseAnimation_UpdateCurrentTime(void* c_this, int32 param1);
	[LinkName("QPauseAnimation_Tr2")]
	public static extern char8[] QPauseAnimation_Tr2(char8[] s, char8[] c);
	[LinkName("QPauseAnimation_Tr3")]
	public static extern char8[] QPauseAnimation_Tr3(char8[] s, char8[] c, int32 n);
}