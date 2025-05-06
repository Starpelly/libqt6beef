using System;
using System.Interop;
namespace Qt;

public struct QShortcut
{
	[LinkName("QShortcut_new")]
	public static extern void* QShortcut_new(QObject parent);
	[LinkName("QShortcut_new2")]
	public static extern void* QShortcut_new2(QKeySequence key, QObject parent);
	[LinkName("QShortcut_new3")]
	public static extern void* QShortcut_new3(int64 key, QObject parent);
	[LinkName("QShortcut_new4")]
	public static extern void* QShortcut_new4(QKeySequence key, QObject parent, char8[] member);
	[LinkName("QShortcut_new5")]
	public static extern void* QShortcut_new5(QKeySequence key, QObject parent, char8[] member, char8[] ambiguousMember);
	[LinkName("QShortcut_new6")]
	public static extern void* QShortcut_new6(QKeySequence key, QObject parent, char8[] member, char8[] ambiguousMember, int64 context);
	[LinkName("QShortcut_new7")]
	public static extern void* QShortcut_new7(int64 key, QObject parent, char8[] member);
	[LinkName("QShortcut_new8")]
	public static extern void* QShortcut_new8(int64 key, QObject parent, char8[] member, char8[] ambiguousMember);
	[LinkName("QShortcut_new9")]
	public static extern void* QShortcut_new9(int64 key, QObject parent, char8[] member, char8[] ambiguousMember, int64 context);
	[LinkName("QShortcut_MetaObject")]
	public static extern QMetaObject QShortcut_MetaObject(void* c_this);
	[LinkName("QShortcut_Metacast")]
	public static extern void QShortcut_Metacast(void* c_this, char8[] param1);
	[LinkName("QShortcut_Metacall")]
	public static extern int32 QShortcut_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QShortcut_Tr")]
	public static extern char8[] QShortcut_Tr(char8[] s);
	[LinkName("QShortcut_SetKey")]
	public static extern void QShortcut_SetKey(void* c_this, QKeySequence key);
	[LinkName("QShortcut_Key")]
	public static extern QKeySequence QShortcut_Key(void* c_this);
	[LinkName("QShortcut_SetKeys")]
	public static extern void QShortcut_SetKeys(void* c_this, int64 key);
	[LinkName("QShortcut_SetKeysWithKeys")]
	public static extern void QShortcut_SetKeysWithKeys(void* c_this, QKeySequence[] keys);
	[LinkName("QShortcut_Keys")]
	public static extern QKeySequence[] QShortcut_Keys(void* c_this);
	[LinkName("QShortcut_SetEnabled")]
	public static extern void QShortcut_SetEnabled(void* c_this, bool enable);
	[LinkName("QShortcut_IsEnabled")]
	public static extern bool QShortcut_IsEnabled(void* c_this);
	[LinkName("QShortcut_SetContext")]
	public static extern void QShortcut_SetContext(void* c_this, int64 context);
	[LinkName("QShortcut_Context")]
	public static extern int64 QShortcut_Context(void* c_this);
	[LinkName("QShortcut_SetAutoRepeat")]
	public static extern void QShortcut_SetAutoRepeat(void* c_this, bool on);
	[LinkName("QShortcut_AutoRepeat")]
	public static extern bool QShortcut_AutoRepeat(void* c_this);
	[LinkName("QShortcut_Id")]
	public static extern int32 QShortcut_Id(void* c_this);
	[LinkName("QShortcut_SetWhatsThis")]
	public static extern void QShortcut_SetWhatsThis(void* c_this, char8[] text);
	[LinkName("QShortcut_WhatsThis")]
	public static extern char8[] QShortcut_WhatsThis(void* c_this);
	[LinkName("QShortcut_Activated")]
	public static extern void QShortcut_Activated(void* c_this);
	[LinkName("QShortcut_ActivatedAmbiguously")]
	public static extern void QShortcut_ActivatedAmbiguously(void* c_this);
	[LinkName("QShortcut_Event")]
	public static extern bool QShortcut_Event(void* c_this, QEvent e);
	[LinkName("QShortcut_Tr2")]
	public static extern char8[] QShortcut_Tr2(char8[] s, char8[] c);
	[LinkName("QShortcut_Tr3")]
	public static extern char8[] QShortcut_Tr3(char8[] s, char8[] c, int32 n);
}