using System;
using System.Interop;
namespace Qt;

public struct QMimeType
{
	[LinkName("QMimeType_new")]
	public static extern QMimeType* QMimeType_new();
	[LinkName("QMimeType_new2")]
	public static extern QMimeType* QMimeType_new2(QMimeType* other);
	[LinkName("QMimeType_OperatorAssign")]
	public static extern void QMimeType_OperatorAssign(Self* c_this, QMimeType* other);
	[LinkName("QMimeType_Swap")]
	public static extern void QMimeType_Swap(Self* c_this, QMimeType* other);
	[LinkName("QMimeType_OperatorEqual")]
	public static extern bool QMimeType_OperatorEqual(Self* c_this, QMimeType* other);
	[LinkName("QMimeType_OperatorNotEqual")]
	public static extern bool QMimeType_OperatorNotEqual(Self* c_this, QMimeType* other);
	[LinkName("QMimeType_IsValid")]
	public static extern bool QMimeType_IsValid(Self* c_this);
	[LinkName("QMimeType_IsDefault")]
	public static extern bool QMimeType_IsDefault(Self* c_this);
	[LinkName("QMimeType_Name")]
	public static extern libqt_string QMimeType_Name(Self* c_this);
	[LinkName("QMimeType_Comment")]
	public static extern libqt_string QMimeType_Comment(Self* c_this);
	[LinkName("QMimeType_GenericIconName")]
	public static extern libqt_string QMimeType_GenericIconName(Self* c_this);
	[LinkName("QMimeType_IconName")]
	public static extern libqt_string QMimeType_IconName(Self* c_this);
	[LinkName("QMimeType_GlobPatterns")]
	public static extern libqt_string[] QMimeType_GlobPatterns(Self* c_this);
	[LinkName("QMimeType_ParentMimeTypes")]
	public static extern libqt_string[] QMimeType_ParentMimeTypes(Self* c_this);
	[LinkName("QMimeType_AllAncestors")]
	public static extern libqt_string[] QMimeType_AllAncestors(Self* c_this);
	[LinkName("QMimeType_Aliases")]
	public static extern libqt_string[] QMimeType_Aliases(Self* c_this);
	[LinkName("QMimeType_Suffixes")]
	public static extern libqt_string[] QMimeType_Suffixes(Self* c_this);
	[LinkName("QMimeType_PreferredSuffix")]
	public static extern libqt_string QMimeType_PreferredSuffix(Self* c_this);
	[LinkName("QMimeType_Inherits")]
	public static extern bool QMimeType_Inherits(Self* c_this, libqt_string mimeTypeName);
	[LinkName("QMimeType_FilterString")]
	public static extern libqt_string QMimeType_FilterString(Self* c_this);
}