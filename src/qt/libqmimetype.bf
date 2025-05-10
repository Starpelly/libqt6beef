using System;
using System.Interop;
namespace Qt;

public class QMimeType
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QMimeType_new();
	}
	
	public ~this()
	{
		CQt.QMimeType_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QMimeType_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QMimeType_Swap(this.nativePtr, other);
	}
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QMimeType_OperatorEqual(this.nativePtr, other);
	}
	
	public bool OperatorNotEqual(void* other)
	{
		return CQt.QMimeType_OperatorNotEqual(this.nativePtr, other);
	}
	
	public bool IsValid()
	{
		return CQt.QMimeType_IsValid(this.nativePtr);
	}
	
	public bool IsDefault()
	{
		return CQt.QMimeType_IsDefault(this.nativePtr);
	}
	
	public libqt_string Name()
	{
		return CQt.QMimeType_Name(this.nativePtr);
	}
	
	public libqt_string Comment()
	{
		return CQt.QMimeType_Comment(this.nativePtr);
	}
	
	public libqt_string GenericIconName()
	{
		return CQt.QMimeType_GenericIconName(this.nativePtr);
	}
	
	public libqt_string IconName()
	{
		return CQt.QMimeType_IconName(this.nativePtr);
	}
	
	public libqt_string[] GlobPatterns()
	{
		return CQt.QMimeType_GlobPatterns(this.nativePtr);
	}
	
	public libqt_string[] ParentMimeTypes()
	{
		return CQt.QMimeType_ParentMimeTypes(this.nativePtr);
	}
	
	public libqt_string[] AllAncestors()
	{
		return CQt.QMimeType_AllAncestors(this.nativePtr);
	}
	
	public libqt_string[] Aliases()
	{
		return CQt.QMimeType_Aliases(this.nativePtr);
	}
	
	public libqt_string[] Suffixes()
	{
		return CQt.QMimeType_Suffixes(this.nativePtr);
	}
	
	public libqt_string PreferredSuffix()
	{
		return CQt.QMimeType_PreferredSuffix(this.nativePtr);
	}
	
	public bool Inherits(libqt_string mimeTypeName)
	{
		return CQt.QMimeType_Inherits(this.nativePtr, mimeTypeName);
	}
	
	public libqt_string FilterString()
	{
		return CQt.QMimeType_FilterString(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QMimeType_new")]
	public static extern void* QMimeType_new();
	[LinkName("QMimeType_new2")]
	public static extern void* QMimeType_new2(void* other);
	[LinkName("QMimeType_OperatorAssign")]
	public static extern void QMimeType_OperatorAssign(void* c_this, void* other);
	[LinkName("QMimeType_Swap")]
	public static extern void QMimeType_Swap(void* c_this, void* other);
	[LinkName("QMimeType_OperatorEqual")]
	public static extern bool QMimeType_OperatorEqual(void* c_this, void* other);
	[LinkName("QMimeType_OperatorNotEqual")]
	public static extern bool QMimeType_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QMimeType_IsValid")]
	public static extern bool QMimeType_IsValid(void* c_this);
	[LinkName("QMimeType_IsDefault")]
	public static extern bool QMimeType_IsDefault(void* c_this);
	[LinkName("QMimeType_Name")]
	public static extern libqt_string QMimeType_Name(void* c_this);
	[LinkName("QMimeType_Comment")]
	public static extern libqt_string QMimeType_Comment(void* c_this);
	[LinkName("QMimeType_GenericIconName")]
	public static extern libqt_string QMimeType_GenericIconName(void* c_this);
	[LinkName("QMimeType_IconName")]
	public static extern libqt_string QMimeType_IconName(void* c_this);
	[LinkName("QMimeType_GlobPatterns")]
	public static extern libqt_string[] QMimeType_GlobPatterns(void* c_this);
	[LinkName("QMimeType_ParentMimeTypes")]
	public static extern libqt_string[] QMimeType_ParentMimeTypes(void* c_this);
	[LinkName("QMimeType_AllAncestors")]
	public static extern libqt_string[] QMimeType_AllAncestors(void* c_this);
	[LinkName("QMimeType_Aliases")]
	public static extern libqt_string[] QMimeType_Aliases(void* c_this);
	[LinkName("QMimeType_Suffixes")]
	public static extern libqt_string[] QMimeType_Suffixes(void* c_this);
	[LinkName("QMimeType_PreferredSuffix")]
	public static extern libqt_string QMimeType_PreferredSuffix(void* c_this);
	[LinkName("QMimeType_Inherits")]
	public static extern bool QMimeType_Inherits(void* c_this, libqt_string mimeTypeName);
	[LinkName("QMimeType_FilterString")]
	public static extern libqt_string QMimeType_FilterString(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QMimeType_Delete")]
	public static extern void QMimeType_Delete(void* self);
}