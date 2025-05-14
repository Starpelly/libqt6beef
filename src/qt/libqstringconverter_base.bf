using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QStringConverterBase__Flag
{
	Default = 0,
	Stateless = 1,
	ConvertInvalidToNull = 2,
	WriteBom = 4,
	ConvertInitialBom = 8,
	UsesIcu = 16,
}
[AllowDuplicates]
public enum QStringConverter__Encoding
{
	Utf8 = 0,
	Utf16 = 1,
	Utf16LE = 2,
	Utf16BE = 3,
	Utf32 = 4,
	Utf32LE = 5,
	Utf32BE = 6,
	Latin1 = 7,
	System = 8,
	LastEncoding = 8,
}
public interface IQStringConverterBase
{
	void* NativePtr { get; }
}
public struct QStringConverterBasePtr : IQStringConverterBase
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
}
public class QStringConverterBase
{
	public QStringConverterBasePtr handle;
	
	public static implicit operator QStringConverterBasePtr(Self self)
	{
		return self.handle;
	}
}
extension CQt
{
}
public interface IQStringConverter
{
	void* NativePtr { get; }
}
public struct QStringConverterPtr : IQStringConverter, IQStringConverterBase
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public bool IsValid()
	{
		return CQt.QStringConverter_IsValid(this.nativePtr);
	}
	
	public void ResetState()
	{
		CQt.QStringConverter_ResetState(this.nativePtr);
	}
	
	public bool HasError()
	{
		return CQt.QStringConverter_HasError(this.nativePtr);
	}
	
	public char8* Name()
	{
		return CQt.QStringConverter_Name(this.nativePtr);
	}
	
	public static char8* NameForEncoding(int64 e)
	{
		return CQt.QStringConverter_NameForEncoding((int64)e);
	}
	
}
public class QStringConverter
{
	public QStringConverterPtr handle;
	
	public static implicit operator QStringConverterPtr(Self self)
	{
		return self.handle;
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public void ResetState()
	{
		this.handle.ResetState();
	}
	
	public bool HasError()
	{
		return this.handle.HasError();
	}
	
	public char8* Name()
	{
		return this.handle.Name();
	}
	
	public static char8* NameForEncoding(int64 e)
	{
		return QStringConverterPtr.NameForEncoding(e);
	}
	
}
extension CQt
{
	[LinkName("QStringConverter_IsValid")]
	public static extern bool QStringConverter_IsValid(void* c_this);
	[LinkName("QStringConverter_ResetState")]
	public static extern void QStringConverter_ResetState(void* c_this);
	[LinkName("QStringConverter_HasError")]
	public static extern bool QStringConverter_HasError(void* c_this);
	[LinkName("QStringConverter_Name")]
	public static extern char8* QStringConverter_Name(void* c_this);
	[LinkName("QStringConverter_NameForEncoding")]
	public static extern char8* QStringConverter_NameForEncoding(int64 e);
}
public interface IQStringConverterBase__State
{
	void* NativePtr { get; }
}
public struct QStringConverterBase__StatePtr : IQStringConverterBase__State, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QStringConverterBase__State_new());
	}
	
	public void Dispose()
	{
		CQt.QStringConverterBase__State_Delete(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QStringConverterBase__State_Clear(this.nativePtr);
	}
	
	public void Reset()
	{
		CQt.QStringConverterBase__State_Reset(this.nativePtr);
	}
	
}
public class QStringConverterBase__State
{
	public QStringConverterBase__StatePtr handle;
	
	public static implicit operator QStringConverterBase__StatePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QStringConverterBase__StatePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
	public void Reset()
	{
		this.handle.Reset();
	}
	
}
extension CQt
{
	[LinkName("QStringConverterBase__State_new")]
	public static extern void* QStringConverterBase__State_new();
	[LinkName("QStringConverterBase__State_new2")]
	public static extern void* QStringConverterBase__State_new2(int64 f);
	[LinkName("QStringConverterBase__State_Clear")]
	public static extern void QStringConverterBase__State_Clear(void* c_this);
	[LinkName("QStringConverterBase__State_Reset")]
	public static extern void QStringConverterBase__State_Reset(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QStringConverterBase__State_Delete")]
	public static extern void QStringConverterBase__State_Delete(void* self);
}