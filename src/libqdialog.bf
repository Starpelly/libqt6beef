using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDialog__DialogCode
{
	Rejected = 0,
	Accepted = 1,
}
public struct QDialog
{
	[LinkName("QDialog_new")]
	public static extern void* QDialog_new(QWidget parent);
	[LinkName("QDialog_new2")]
	public static extern void* QDialog_new2();
	[LinkName("QDialog_new3")]
	public static extern void* QDialog_new3(QWidget parent, int64 f);
	[LinkName("QDialog_MetaObject")]
	public static extern QMetaObject QDialog_MetaObject(void* c_this);
	[LinkName("QDialog_Metacast")]
	public static extern void QDialog_Metacast(void* c_this, char8[] param1);
	[LinkName("QDialog_Metacall")]
	public static extern int32 QDialog_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QDialog_Tr")]
	public static extern char8[] QDialog_Tr(char8[] s);
	[LinkName("QDialog_Result")]
	public static extern int32 QDialog_Result(void* c_this);
	[LinkName("QDialog_SetVisible")]
	public static extern void QDialog_SetVisible(void* c_this, bool visible);
	[LinkName("QDialog_SizeHint")]
	public static extern QSize QDialog_SizeHint(void* c_this);
	[LinkName("QDialog_MinimumSizeHint")]
	public static extern QSize QDialog_MinimumSizeHint(void* c_this);
	[LinkName("QDialog_SetSizeGripEnabled")]
	public static extern void QDialog_SetSizeGripEnabled(void* c_this, bool sizeGripEnabled);
	[LinkName("QDialog_IsSizeGripEnabled")]
	public static extern bool QDialog_IsSizeGripEnabled(void* c_this);
	[LinkName("QDialog_SetModal")]
	public static extern void QDialog_SetModal(void* c_this, bool modal);
	[LinkName("QDialog_SetResult")]
	public static extern void QDialog_SetResult(void* c_this, int32 r);
	[LinkName("QDialog_Finished")]
	public static extern void QDialog_Finished(void* c_this, int32 result);
	[LinkName("QDialog_Accepted")]
	public static extern void QDialog_Accepted(void* c_this);
	[LinkName("QDialog_Rejected")]
	public static extern void QDialog_Rejected(void* c_this);
	[LinkName("QDialog_Open")]
	public static extern void QDialog_Open(void* c_this);
	[LinkName("QDialog_Exec")]
	public static extern int32 QDialog_Exec(void* c_this);
	[LinkName("QDialog_Done")]
	public static extern void QDialog_Done(void* c_this, int32 param1);
	[LinkName("QDialog_Accept")]
	public static extern void QDialog_Accept(void* c_this);
	[LinkName("QDialog_Reject")]
	public static extern void QDialog_Reject(void* c_this);
	[LinkName("QDialog_KeyPressEvent")]
	public static extern void QDialog_KeyPressEvent(void* c_this, QKeyEvent param1);
	[LinkName("QDialog_CloseEvent")]
	public static extern void QDialog_CloseEvent(void* c_this, QCloseEvent param1);
	[LinkName("QDialog_ShowEvent")]
	public static extern void QDialog_ShowEvent(void* c_this, QShowEvent param1);
	[LinkName("QDialog_ResizeEvent")]
	public static extern void QDialog_ResizeEvent(void* c_this, QResizeEvent param1);
	[LinkName("QDialog_ContextMenuEvent")]
	public static extern void QDialog_ContextMenuEvent(void* c_this, QContextMenuEvent param1);
	[LinkName("QDialog_EventFilter")]
	public static extern bool QDialog_EventFilter(void* c_this, QObject param1, QEvent param2);
	[LinkName("QDialog_AdjustPosition")]
	public static extern void QDialog_AdjustPosition(void* c_this, QWidget param1);
	[LinkName("QDialog_Tr2")]
	public static extern char8[] QDialog_Tr2(char8[] s, char8[] c);
	[LinkName("QDialog_Tr3")]
	public static extern char8[] QDialog_Tr3(char8[] s, char8[] c, int32 n);
}