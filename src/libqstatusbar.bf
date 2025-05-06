using System;
using System.Interop;
namespace Qt;

public struct QStatusBar
{
	[LinkName("QStatusBar_new")]
	public static extern void* QStatusBar_new(QWidget parent);
	[LinkName("QStatusBar_new2")]
	public static extern void* QStatusBar_new2();
	[LinkName("QStatusBar_MetaObject")]
	public static extern QMetaObject QStatusBar_MetaObject(void* c_this);
	[LinkName("QStatusBar_Metacast")]
	public static extern void QStatusBar_Metacast(void* c_this, char8[] param1);
	[LinkName("QStatusBar_Metacall")]
	public static extern int32 QStatusBar_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QStatusBar_Tr")]
	public static extern char8[] QStatusBar_Tr(char8[] s);
	[LinkName("QStatusBar_AddWidget")]
	public static extern void QStatusBar_AddWidget(void* c_this, QWidget widget);
	[LinkName("QStatusBar_InsertWidget")]
	public static extern int32 QStatusBar_InsertWidget(void* c_this, int32 index, QWidget widget);
	[LinkName("QStatusBar_AddPermanentWidget")]
	public static extern void QStatusBar_AddPermanentWidget(void* c_this, QWidget widget);
	[LinkName("QStatusBar_InsertPermanentWidget")]
	public static extern int32 QStatusBar_InsertPermanentWidget(void* c_this, int32 index, QWidget widget);
	[LinkName("QStatusBar_RemoveWidget")]
	public static extern void QStatusBar_RemoveWidget(void* c_this, QWidget widget);
	[LinkName("QStatusBar_SetSizeGripEnabled")]
	public static extern void QStatusBar_SetSizeGripEnabled(void* c_this, bool sizeGripEnabled);
	[LinkName("QStatusBar_IsSizeGripEnabled")]
	public static extern bool QStatusBar_IsSizeGripEnabled(void* c_this);
	[LinkName("QStatusBar_CurrentMessage")]
	public static extern char8[] QStatusBar_CurrentMessage(void* c_this);
	[LinkName("QStatusBar_ShowMessage")]
	public static extern void QStatusBar_ShowMessage(void* c_this, char8[] text);
	[LinkName("QStatusBar_ClearMessage")]
	public static extern void QStatusBar_ClearMessage(void* c_this);
	[LinkName("QStatusBar_MessageChanged")]
	public static extern void QStatusBar_MessageChanged(void* c_this, char8[] text);
	[LinkName("QStatusBar_ShowEvent")]
	public static extern void QStatusBar_ShowEvent(void* c_this, QShowEvent param1);
	[LinkName("QStatusBar_PaintEvent")]
	public static extern void QStatusBar_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QStatusBar_ResizeEvent")]
	public static extern void QStatusBar_ResizeEvent(void* c_this, QResizeEvent param1);
	[LinkName("QStatusBar_Reformat")]
	public static extern void QStatusBar_Reformat(void* c_this);
	[LinkName("QStatusBar_HideOrShow")]
	public static extern void QStatusBar_HideOrShow(void* c_this);
	[LinkName("QStatusBar_Event")]
	public static extern bool QStatusBar_Event(void* c_this, QEvent param1);
	[LinkName("QStatusBar_Tr2")]
	public static extern char8[] QStatusBar_Tr2(char8[] s, char8[] c);
	[LinkName("QStatusBar_Tr3")]
	public static extern char8[] QStatusBar_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QStatusBar_AddWidget2")]
	public static extern void QStatusBar_AddWidget2(void* c_this, QWidget widget, int32 stretch);
	[LinkName("QStatusBar_InsertWidget3")]
	public static extern int32 QStatusBar_InsertWidget3(void* c_this, int32 index, QWidget widget, int32 stretch);
	[LinkName("QStatusBar_AddPermanentWidget2")]
	public static extern void QStatusBar_AddPermanentWidget2(void* c_this, QWidget widget, int32 stretch);
	[LinkName("QStatusBar_InsertPermanentWidget3")]
	public static extern int32 QStatusBar_InsertPermanentWidget3(void* c_this, int32 index, QWidget widget, int32 stretch);
	[LinkName("QStatusBar_ShowMessage2")]
	public static extern void QStatusBar_ShowMessage2(void* c_this, char8[] text, int32 timeout);
}