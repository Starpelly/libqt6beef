using System;
using System.Interop;
namespace Qt;

public interface IQLoggingCategory
{
	void* NativePtr { get; }
}
public struct QLoggingCategoryPtr : IQLoggingCategory, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(char8* category)
	{
		return .(CQt.QLoggingCategory_new(category));
	}
	
	public void Dispose()
	{
		CQt.QLoggingCategory_Delete(this.nativePtr);
	}
	
	public bool IsDebugEnabled()
	{
		return CQt.QLoggingCategory_IsDebugEnabled(this.nativePtr);
	}
	
	public bool IsInfoEnabled()
	{
		return CQt.QLoggingCategory_IsInfoEnabled(this.nativePtr);
	}
	
	public bool IsWarningEnabled()
	{
		return CQt.QLoggingCategory_IsWarningEnabled(this.nativePtr);
	}
	
	public bool IsCriticalEnabled()
	{
		return CQt.QLoggingCategory_IsCriticalEnabled(this.nativePtr);
	}
	
	public char8* CategoryName()
	{
		return CQt.QLoggingCategory_CategoryName(this.nativePtr);
	}
	
	public void* OperatorCall()
	{
		return CQt.QLoggingCategory_OperatorCall(this.nativePtr);
	}
	
	public void* OperatorCall2()
	{
		return CQt.QLoggingCategory_OperatorCall2(this.nativePtr);
	}
	
	public static void* DefaultCategory()
	{
		return CQt.QLoggingCategory_DefaultCategory();
	}
	
	public static void SetFilterRules(String rules)
	{
		CQt.QLoggingCategory_SetFilterRules(libqt_string(rules));
	}
	
}
public class QLoggingCategory
{
	public QLoggingCategoryPtr handle;
	
	public static implicit operator QLoggingCategoryPtr(Self self)
	{
		return self.handle;
	}
	
	public this(char8* category)
	{
		this.handle = QLoggingCategoryPtr.New(category);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool IsDebugEnabled()
	{
		return this.handle.IsDebugEnabled();
	}
	
	public bool IsInfoEnabled()
	{
		return this.handle.IsInfoEnabled();
	}
	
	public bool IsWarningEnabled()
	{
		return this.handle.IsWarningEnabled();
	}
	
	public bool IsCriticalEnabled()
	{
		return this.handle.IsCriticalEnabled();
	}
	
	public char8* CategoryName()
	{
		return this.handle.CategoryName();
	}
	
	public void* OperatorCall()
	{
		return this.handle.OperatorCall();
	}
	
	public void* OperatorCall2()
	{
		return this.handle.OperatorCall2();
	}
	
	public static void* DefaultCategory()
	{
		return QLoggingCategoryPtr.DefaultCategory();
	}
	
	public static void SetFilterRules(String rules)
	{
		QLoggingCategoryPtr.SetFilterRules(rules);
	}
	
}
extension CQt
{
	[LinkName("QLoggingCategory_new")]
	public static extern void* QLoggingCategory_new(char8* category);
	[LinkName("QLoggingCategory_IsDebugEnabled")]
	public static extern bool QLoggingCategory_IsDebugEnabled(void* c_this);
	[LinkName("QLoggingCategory_IsInfoEnabled")]
	public static extern bool QLoggingCategory_IsInfoEnabled(void* c_this);
	[LinkName("QLoggingCategory_IsWarningEnabled")]
	public static extern bool QLoggingCategory_IsWarningEnabled(void* c_this);
	[LinkName("QLoggingCategory_IsCriticalEnabled")]
	public static extern bool QLoggingCategory_IsCriticalEnabled(void* c_this);
	[LinkName("QLoggingCategory_CategoryName")]
	public static extern char8* QLoggingCategory_CategoryName(void* c_this);
	[LinkName("QLoggingCategory_OperatorCall")]
	public static extern void* QLoggingCategory_OperatorCall(void* c_this);
	[LinkName("QLoggingCategory_OperatorCall2")]
	public static extern void* QLoggingCategory_OperatorCall2(void* c_this);
	[LinkName("QLoggingCategory_DefaultCategory")]
	public static extern void* QLoggingCategory_DefaultCategory();
	[LinkName("QLoggingCategory_SetFilterRules")]
	public static extern void QLoggingCategory_SetFilterRules(libqt_string rules);
	/// Delete this object from C++ memory
	[LinkName("QLoggingCategory_Delete")]
	public static extern void QLoggingCategory_Delete(void* self);
}