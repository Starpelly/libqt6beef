using System;
using System.Interop;
namespace Qt;

public struct QMimeType
{
	[LinkName("QMimeType_new")]
	public static extern void* QMimeType_new();
	[LinkName("QMimeType_new2")]
	public static extern void* QMimeType_new2(QMimeType other);
	[LinkName("QMimeType_OperatorAssign")]
	public static extern void QMimeType_OperatorAssign(void* c_this, QMimeType other);
	[LinkName("QMimeType_Swap")]
	public static extern void QMimeType_Swap(void* c_this, QMimeType other);
	[LinkName("QMimeType_OperatorEqual")]
	public static extern bool QMimeType_OperatorEqual(void* c_this, QMimeType other);
	[LinkName("QMimeType_OperatorNotEqual")]
	public static extern bool QMimeType_OperatorNotEqual(void* c_this, QMimeType other);
	[LinkName("QMimeType_IsValid")]
	public static extern bool QMimeType_IsValid(void* c_this);
	[LinkName("QMimeType_IsDefault")]
	public static extern bool QMimeType_IsDefault(void* c_this);
	[LinkName("QMimeType_Name")]
	public static extern char8[] QMimeType_Name(void* c_this);
	[LinkName("QMimeType_Comment")]
	public static extern char8[] QMimeType_Comment(void* c_this);
	[LinkName("QMimeType_GenericIconName")]
	public static extern char8[] QMimeType_GenericIconName(void* c_this);
	[LinkName("QMimeType_IconName")]
	public static extern char8[] QMimeType_IconName(void* c_this);
	[LinkName("QMimeType_GlobPatterns")]
	public static extern char8[][] QMimeType_GlobPatterns(void* c_this);
	[LinkName("QMimeType_ParentMimeTypes")]
	public static extern char8[][] QMimeType_ParentMimeTypes(void* c_this);
	[LinkName("QMimeType_AllAncestors")]
	public static extern char8[][] QMimeType_AllAncestors(void* c_this);
	[LinkName("QMimeType_Aliases")]
	public static extern char8[][] QMimeType_Aliases(void* c_this);
	[LinkName("QMimeType_Suffixes")]
	public static extern char8[][] QMimeType_Suffixes(void* c_this);
	[LinkName("QMimeType_PreferredSuffix")]
	public static extern char8[] QMimeType_PreferredSuffix(void* c_this);
	[LinkName("QMimeType_Inherits")]
	public static extern bool QMimeType_Inherits(void* c_this, char8[] mimeTypeName);
	[LinkName("QMimeType_FilterString")]
	public static extern char8[] QMimeType_FilterString(void* c_this);
}