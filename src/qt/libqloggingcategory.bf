using System;
using System.Interop;
namespace Qt;

public struct QLoggingCategory
{
	[LinkName("QLoggingCategory_new")]
	public static extern QLoggingCategory* QLoggingCategory_new(char8[] category);
	[LinkName("QLoggingCategory_IsDebugEnabled")]
	public static extern bool QLoggingCategory_IsDebugEnabled(Self* c_this);
	[LinkName("QLoggingCategory_IsInfoEnabled")]
	public static extern bool QLoggingCategory_IsInfoEnabled(Self* c_this);
	[LinkName("QLoggingCategory_IsWarningEnabled")]
	public static extern bool QLoggingCategory_IsWarningEnabled(Self* c_this);
	[LinkName("QLoggingCategory_IsCriticalEnabled")]
	public static extern bool QLoggingCategory_IsCriticalEnabled(Self* c_this);
	[LinkName("QLoggingCategory_CategoryName")]
	public static extern char8[] QLoggingCategory_CategoryName(Self* c_this);
	[LinkName("QLoggingCategory_OperatorCall")]
	public static extern QLoggingCategory* QLoggingCategory_OperatorCall(Self* c_this);
	[LinkName("QLoggingCategory_OperatorCall2")]
	public static extern QLoggingCategory* QLoggingCategory_OperatorCall2(Self* c_this);
	[LinkName("QLoggingCategory_DefaultCategory")]
	public static extern QLoggingCategory* QLoggingCategory_DefaultCategory();
	[LinkName("QLoggingCategory_SetFilterRules")]
	public static extern void QLoggingCategory_SetFilterRules(libqt_string rules);
}