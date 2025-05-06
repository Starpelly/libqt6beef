using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDialog__DialogCode
{
	Rejected = 0,
	Accepted = 1,
}
public struct QDialog : QWidget
{
	[LinkName("QDialog_new")]
	public static extern QDialog* QDialog_new(QWidget* parent);
	[LinkName("QDialog_new2")]
	public static extern QDialog* QDialog_new2();
	[LinkName("QDialog_new3")]
	public static extern QDialog* QDialog_new3(QWidget* parent, int64 f);
	[LinkName("QDialog_MetaObject")]
	public static extern QMetaObject* QDialog_MetaObject(Self* c_this);
	[LinkName("QDialog_Metacast")]
	public static extern void* QDialog_Metacast(Self* c_this, char8[] param1);
	[LinkName("QDialog_Metacall")]
	public static extern int32 QDialog_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QDialog_Tr")]
	public static extern libqt_string QDialog_Tr(char8[] s);
	[LinkName("QDialog_Result")]
	public static extern int32 QDialog_Result(Self* c_this);
	[LinkName("QDialog_SetVisible")]
	public static extern void QDialog_SetVisible(Self* c_this, bool visible);
	[LinkName("QDialog_SizeHint")]
	public static extern QSize QDialog_SizeHint(Self* c_this);
	[LinkName("QDialog_MinimumSizeHint")]
	public static extern QSize QDialog_MinimumSizeHint(Self* c_this);
	[LinkName("QDialog_SetSizeGripEnabled")]
	public static extern void QDialog_SetSizeGripEnabled(Self* c_this, bool sizeGripEnabled);
	[LinkName("QDialog_IsSizeGripEnabled")]
	public static extern bool QDialog_IsSizeGripEnabled(Self* c_this);
	[LinkName("QDialog_SetModal")]
	public static extern void QDialog_SetModal(Self* c_this, bool modal);
	[LinkName("QDialog_SetResult")]
	public static extern void QDialog_SetResult(Self* c_this, int32 r);
	[LinkName("QDialog_Connect_Finished")]
	public static extern void QDialog_Connect_Finished(Self* c_this, c_intptr slot);
	[LinkName("QDialog_Connect_Accepted")]
	public static extern void QDialog_Connect_Accepted(Self* c_this, c_intptr slot);
	[LinkName("QDialog_Connect_Rejected")]
	public static extern void QDialog_Connect_Rejected(Self* c_this, c_intptr slot);
	[LinkName("QDialog_Open")]
	public static extern void QDialog_Open(Self* c_this);
	[LinkName("QDialog_Exec")]
	public static extern int32 QDialog_Exec(Self* c_this);
	[LinkName("QDialog_Done")]
	public static extern void QDialog_Done(Self* c_this, int32 param1);
	[LinkName("QDialog_Accept")]
	public static extern void QDialog_Accept(Self* c_this);
	[LinkName("QDialog_Reject")]
	public static extern void QDialog_Reject(Self* c_this);
	[LinkName("QDialog_KeyPressEvent")]
	public static extern void QDialog_KeyPressEvent(Self* c_this, QKeyEvent* param1);
	[LinkName("QDialog_CloseEvent")]
	public static extern void QDialog_CloseEvent(Self* c_this, QCloseEvent* param1);
	[LinkName("QDialog_ShowEvent")]
	public static extern void QDialog_ShowEvent(Self* c_this, QShowEvent* param1);
	[LinkName("QDialog_ResizeEvent")]
	public static extern void QDialog_ResizeEvent(Self* c_this, QResizeEvent* param1);
	[LinkName("QDialog_ContextMenuEvent")]
	public static extern void QDialog_ContextMenuEvent(Self* c_this, QContextMenuEvent* param1);
	[LinkName("QDialog_EventFilter")]
	public static extern bool QDialog_EventFilter(Self* c_this, QObject* param1, QEvent* param2);
	[LinkName("QDialog_AdjustPosition")]
	public static extern void QDialog_AdjustPosition(Self* c_this, QWidget* param1);
	[LinkName("QDialog_Tr2")]
	public static extern libqt_string QDialog_Tr2(char8[] s, char8[] c);
	[LinkName("QDialog_Tr3")]
	public static extern libqt_string QDialog_Tr3(char8[] s, char8[] c, int32 n);
}