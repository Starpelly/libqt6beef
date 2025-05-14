using System;
using System.Interop;
namespace Qt;

public interface IQMimeType
{
	void* NativePtr { get; }
}
public struct QMimeTypePtr : IQMimeType, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QMimeType_new());
	}
	
	public void Dispose()
	{
		CQt.QMimeType_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQMimeType other)
	{
		CQt.QMimeType_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQMimeType other)
	{
		CQt.QMimeType_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorEqual(IQMimeType other)
	{
		return CQt.QMimeType_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQMimeType other)
	{
		return CQt.QMimeType_OperatorNotEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
	
	public bool Inherits(String mimeTypeName)
	{
		return CQt.QMimeType_Inherits(this.nativePtr, libqt_string(mimeTypeName));
	}
	
	public libqt_string FilterString()
	{
		return CQt.QMimeType_FilterString(this.nativePtr);
	}
	
}
public class QMimeType
{
	public QMimeTypePtr handle;
	
	public static implicit operator QMimeTypePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QMimeTypePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQMimeType other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(IQMimeType other)
	{
		this.handle.Swap(other);
	}
	
	public bool OperatorEqual(IQMimeType other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public bool OperatorNotEqual(IQMimeType other)
	{
		return this.handle.OperatorNotEqual(other);
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public bool IsDefault()
	{
		return this.handle.IsDefault();
	}
	
	public libqt_string Name()
	{
		return this.handle.Name();
	}
	
	public libqt_string Comment()
	{
		return this.handle.Comment();
	}
	
	public libqt_string GenericIconName()
	{
		return this.handle.GenericIconName();
	}
	
	public libqt_string IconName()
	{
		return this.handle.IconName();
	}
	
	public libqt_string[] GlobPatterns()
	{
		return this.handle.GlobPatterns();
	}
	
	public libqt_string[] ParentMimeTypes()
	{
		return this.handle.ParentMimeTypes();
	}
	
	public libqt_string[] AllAncestors()
	{
		return this.handle.AllAncestors();
	}
	
	public libqt_string[] Aliases()
	{
		return this.handle.Aliases();
	}
	
	public libqt_string[] Suffixes()
	{
		return this.handle.Suffixes();
	}
	
	public libqt_string PreferredSuffix()
	{
		return this.handle.PreferredSuffix();
	}
	
	public bool Inherits(String mimeTypeName)
	{
		return this.handle.Inherits(mimeTypeName);
	}
	
	public libqt_string FilterString()
	{
		return this.handle.FilterString();
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