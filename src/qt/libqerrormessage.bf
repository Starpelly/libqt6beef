using System;
using System.Interop;
namespace Qt;

public struct QErrorMessage : QDialog
{
	[LinkName("QErrorMessage_new")]
	public static extern QErrorMessage* QErrorMessage_new(QWidget* parent);
	[LinkName("QErrorMessage_new2")]
	public static extern QErrorMessage* QErrorMessage_new2();
	[LinkName("QErrorMessage_MetaObject")]
	public static extern QMetaObject* QErrorMessage_MetaObject(Self* c_this);
	[LinkName("QErrorMessage_Metacast")]
	public static extern void* QErrorMessage_Metacast(Self* c_this, char8[] param1);
	[LinkName("QErrorMessage_Metacall")]
	public static extern int32 QErrorMessage_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QErrorMessage_Tr")]
	public static extern libqt_string QErrorMessage_Tr(char8[] s);
	[LinkName("QErrorMessage_QtHandler")]
	public static extern QErrorMessage* QErrorMessage_QtHandler();
	[LinkName("QErrorMessage_ShowMessage")]
	public static extern void QErrorMessage_ShowMessage(Self* c_this, libqt_string message);
	[LinkName("QErrorMessage_ShowMessage2")]
	public static extern void QErrorMessage_ShowMessage2(Self* c_this, libqt_string message, libqt_string typeVal);
	[LinkName("QErrorMessage_Done")]
	public static extern void QErrorMessage_Done(Self* c_this, int32 param1);
	[LinkName("QErrorMessage_ChangeEvent")]
	public static extern void QErrorMessage_ChangeEvent(Self* c_this, QEvent* e);
	[LinkName("QErrorMessage_Tr2")]
	public static extern libqt_string QErrorMessage_Tr2(char8[] s, char8[] c);
	[LinkName("QErrorMessage_Tr3")]
	public static extern libqt_string QErrorMessage_Tr3(char8[] s, char8[] c, int32 n);
}