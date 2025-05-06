using System;
using System.Interop;
namespace Qt;

public struct QProgressDialog : QDialog
{
	[LinkName("QProgressDialog_new")]
	public static extern QProgressDialog* QProgressDialog_new(QWidget* parent);
	[LinkName("QProgressDialog_new2")]
	public static extern QProgressDialog* QProgressDialog_new2();
	[LinkName("QProgressDialog_new3")]
	public static extern QProgressDialog* QProgressDialog_new3(libqt_string labelText, libqt_string cancelButtonText, int32 minimum, int32 maximum);
	[LinkName("QProgressDialog_new4")]
	public static extern QProgressDialog* QProgressDialog_new4(QWidget* parent, int64 flags);
	[LinkName("QProgressDialog_new5")]
	public static extern QProgressDialog* QProgressDialog_new5(libqt_string labelText, libqt_string cancelButtonText, int32 minimum, int32 maximum, QWidget* parent);
	[LinkName("QProgressDialog_new6")]
	public static extern QProgressDialog* QProgressDialog_new6(libqt_string labelText, libqt_string cancelButtonText, int32 minimum, int32 maximum, QWidget* parent, int64 flags);
	[LinkName("QProgressDialog_MetaObject")]
	public static extern QMetaObject* QProgressDialog_MetaObject(Self* c_this);
	[LinkName("QProgressDialog_Metacast")]
	public static extern void* QProgressDialog_Metacast(Self* c_this, char8[] param1);
	[LinkName("QProgressDialog_Metacall")]
	public static extern int32 QProgressDialog_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QProgressDialog_Tr")]
	public static extern libqt_string QProgressDialog_Tr(char8[] s);
	[LinkName("QProgressDialog_SetLabel")]
	public static extern void QProgressDialog_SetLabel(Self* c_this, QLabel* label);
	[LinkName("QProgressDialog_SetCancelButton")]
	public static extern void QProgressDialog_SetCancelButton(Self* c_this, QPushButton* button);
	[LinkName("QProgressDialog_SetBar")]
	public static extern void QProgressDialog_SetBar(Self* c_this, QProgressBar* bar);
	[LinkName("QProgressDialog_WasCanceled")]
	public static extern bool QProgressDialog_WasCanceled(Self* c_this);
	[LinkName("QProgressDialog_Minimum")]
	public static extern int32 QProgressDialog_Minimum(Self* c_this);
	[LinkName("QProgressDialog_Maximum")]
	public static extern int32 QProgressDialog_Maximum(Self* c_this);
	[LinkName("QProgressDialog_Value")]
	public static extern int32 QProgressDialog_Value(Self* c_this);
	[LinkName("QProgressDialog_SizeHint")]
	public static extern QSize QProgressDialog_SizeHint(Self* c_this);
	[LinkName("QProgressDialog_LabelText")]
	public static extern libqt_string QProgressDialog_LabelText(Self* c_this);
	[LinkName("QProgressDialog_MinimumDuration")]
	public static extern int32 QProgressDialog_MinimumDuration(Self* c_this);
	[LinkName("QProgressDialog_SetAutoReset")]
	public static extern void QProgressDialog_SetAutoReset(Self* c_this, bool reset);
	[LinkName("QProgressDialog_AutoReset")]
	public static extern bool QProgressDialog_AutoReset(Self* c_this);
	[LinkName("QProgressDialog_SetAutoClose")]
	public static extern void QProgressDialog_SetAutoClose(Self* c_this, bool close);
	[LinkName("QProgressDialog_AutoClose")]
	public static extern bool QProgressDialog_AutoClose(Self* c_this);
	[LinkName("QProgressDialog_Cancel")]
	public static extern void QProgressDialog_Cancel(Self* c_this);
	[LinkName("QProgressDialog_Reset")]
	public static extern void QProgressDialog_Reset(Self* c_this);
	[LinkName("QProgressDialog_SetMaximum")]
	public static extern void QProgressDialog_SetMaximum(Self* c_this, int32 maximum);
	[LinkName("QProgressDialog_SetMinimum")]
	public static extern void QProgressDialog_SetMinimum(Self* c_this, int32 minimum);
	[LinkName("QProgressDialog_SetRange")]
	public static extern void QProgressDialog_SetRange(Self* c_this, int32 minimum, int32 maximum);
	[LinkName("QProgressDialog_SetValue")]
	public static extern void QProgressDialog_SetValue(Self* c_this, int32 progress);
	[LinkName("QProgressDialog_SetLabelText")]
	public static extern void QProgressDialog_SetLabelText(Self* c_this, libqt_string text);
	[LinkName("QProgressDialog_SetCancelButtonText")]
	public static extern void QProgressDialog_SetCancelButtonText(Self* c_this, libqt_string text);
	[LinkName("QProgressDialog_SetMinimumDuration")]
	public static extern void QProgressDialog_SetMinimumDuration(Self* c_this, int32 ms);
	[LinkName("QProgressDialog_Connect_Canceled")]
	public static extern void QProgressDialog_Connect_Canceled(Self* c_this, c_intptr slot);
	[LinkName("QProgressDialog_ResizeEvent")]
	public static extern void QProgressDialog_ResizeEvent(Self* c_this, QResizeEvent* event);
	[LinkName("QProgressDialog_CloseEvent")]
	public static extern void QProgressDialog_CloseEvent(Self* c_this, QCloseEvent* event);
	[LinkName("QProgressDialog_ChangeEvent")]
	public static extern void QProgressDialog_ChangeEvent(Self* c_this, QEvent* event);
	[LinkName("QProgressDialog_ShowEvent")]
	public static extern void QProgressDialog_ShowEvent(Self* c_this, QShowEvent* event);
	[LinkName("QProgressDialog_ForceShow")]
	public static extern void QProgressDialog_ForceShow(Self* c_this);
	[LinkName("QProgressDialog_Tr2")]
	public static extern libqt_string QProgressDialog_Tr2(char8[] s, char8[] c);
	[LinkName("QProgressDialog_Tr3")]
	public static extern libqt_string QProgressDialog_Tr3(char8[] s, char8[] c, int32 n);
}