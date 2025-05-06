using System;
using System.Interop;
namespace Qt;

public struct QProgressDialog
{
	[LinkName("QProgressDialog_new")]
	public static extern void* QProgressDialog_new(QWidget parent);
	[LinkName("QProgressDialog_new2")]
	public static extern void* QProgressDialog_new2();
	[LinkName("QProgressDialog_new3")]
	public static extern void* QProgressDialog_new3(char8[] labelText, char8[] cancelButtonText, int32 minimum, int32 maximum);
	[LinkName("QProgressDialog_new4")]
	public static extern void* QProgressDialog_new4(QWidget parent, int64 flags);
	[LinkName("QProgressDialog_new5")]
	public static extern void* QProgressDialog_new5(char8[] labelText, char8[] cancelButtonText, int32 minimum, int32 maximum, QWidget parent);
	[LinkName("QProgressDialog_new6")]
	public static extern void* QProgressDialog_new6(char8[] labelText, char8[] cancelButtonText, int32 minimum, int32 maximum, QWidget parent, int64 flags);
	[LinkName("QProgressDialog_MetaObject")]
	public static extern QMetaObject QProgressDialog_MetaObject(void* c_this);
	[LinkName("QProgressDialog_Metacast")]
	public static extern void QProgressDialog_Metacast(void* c_this, char8[] param1);
	[LinkName("QProgressDialog_Metacall")]
	public static extern int32 QProgressDialog_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QProgressDialog_Tr")]
	public static extern char8[] QProgressDialog_Tr(char8[] s);
	[LinkName("QProgressDialog_SetLabel")]
	public static extern void QProgressDialog_SetLabel(void* c_this, QLabel label);
	[LinkName("QProgressDialog_SetCancelButton")]
	public static extern void QProgressDialog_SetCancelButton(void* c_this, QPushButton button);
	[LinkName("QProgressDialog_SetBar")]
	public static extern void QProgressDialog_SetBar(void* c_this, QProgressBar bar);
	[LinkName("QProgressDialog_WasCanceled")]
	public static extern bool QProgressDialog_WasCanceled(void* c_this);
	[LinkName("QProgressDialog_Minimum")]
	public static extern int32 QProgressDialog_Minimum(void* c_this);
	[LinkName("QProgressDialog_Maximum")]
	public static extern int32 QProgressDialog_Maximum(void* c_this);
	[LinkName("QProgressDialog_Value")]
	public static extern int32 QProgressDialog_Value(void* c_this);
	[LinkName("QProgressDialog_SizeHint")]
	public static extern QSize QProgressDialog_SizeHint(void* c_this);
	[LinkName("QProgressDialog_LabelText")]
	public static extern char8[] QProgressDialog_LabelText(void* c_this);
	[LinkName("QProgressDialog_MinimumDuration")]
	public static extern int32 QProgressDialog_MinimumDuration(void* c_this);
	[LinkName("QProgressDialog_SetAutoReset")]
	public static extern void QProgressDialog_SetAutoReset(void* c_this, bool reset);
	[LinkName("QProgressDialog_AutoReset")]
	public static extern bool QProgressDialog_AutoReset(void* c_this);
	[LinkName("QProgressDialog_SetAutoClose")]
	public static extern void QProgressDialog_SetAutoClose(void* c_this, bool close);
	[LinkName("QProgressDialog_AutoClose")]
	public static extern bool QProgressDialog_AutoClose(void* c_this);
	[LinkName("QProgressDialog_Cancel")]
	public static extern void QProgressDialog_Cancel(void* c_this);
	[LinkName("QProgressDialog_Reset")]
	public static extern void QProgressDialog_Reset(void* c_this);
	[LinkName("QProgressDialog_SetMaximum")]
	public static extern void QProgressDialog_SetMaximum(void* c_this, int32 maximum);
	[LinkName("QProgressDialog_SetMinimum")]
	public static extern void QProgressDialog_SetMinimum(void* c_this, int32 minimum);
	[LinkName("QProgressDialog_SetRange")]
	public static extern void QProgressDialog_SetRange(void* c_this, int32 minimum, int32 maximum);
	[LinkName("QProgressDialog_SetValue")]
	public static extern void QProgressDialog_SetValue(void* c_this, int32 progress);
	[LinkName("QProgressDialog_SetLabelText")]
	public static extern void QProgressDialog_SetLabelText(void* c_this, char8[] text);
	[LinkName("QProgressDialog_SetCancelButtonText")]
	public static extern void QProgressDialog_SetCancelButtonText(void* c_this, char8[] text);
	[LinkName("QProgressDialog_SetMinimumDuration")]
	public static extern void QProgressDialog_SetMinimumDuration(void* c_this, int32 ms);
	[LinkName("QProgressDialog_Canceled")]
	public static extern void QProgressDialog_Canceled(void* c_this);
	[LinkName("QProgressDialog_ResizeEvent")]
	public static extern void QProgressDialog_ResizeEvent(void* c_this, QResizeEvent event);
	[LinkName("QProgressDialog_CloseEvent")]
	public static extern void QProgressDialog_CloseEvent(void* c_this, QCloseEvent event);
	[LinkName("QProgressDialog_ChangeEvent")]
	public static extern void QProgressDialog_ChangeEvent(void* c_this, QEvent event);
	[LinkName("QProgressDialog_ShowEvent")]
	public static extern void QProgressDialog_ShowEvent(void* c_this, QShowEvent event);
	[LinkName("QProgressDialog_ForceShow")]
	public static extern void QProgressDialog_ForceShow(void* c_this);
	[LinkName("QProgressDialog_Tr2")]
	public static extern char8[] QProgressDialog_Tr2(char8[] s, char8[] c);
	[LinkName("QProgressDialog_Tr3")]
	public static extern char8[] QProgressDialog_Tr3(char8[] s, char8[] c, int32 n);
}