using System;
using System.Interop;
namespace Qt;

public interface IQStringEncoder
{
	void* NativePtr { get; }
}
public struct QStringEncoderPtr : IQStringEncoder, IDisposable, IQStringConverter
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QStringEncoder_new());
	}
	
	public void Dispose()
	{
		CQt.QStringEncoder_Delete(this.nativePtr);
	}
	
	public int32 RequiredSpace(int32 inputLength)
	{
		return CQt.QStringEncoder_RequiredSpace(this.nativePtr, inputLength);
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
public class QStringEncoder
{
	public QStringEncoderPtr handle;
	
	public static implicit operator QStringEncoderPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QStringEncoderPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public int32 RequiredSpace(int32 inputLength)
	{
		return this.handle.RequiredSpace(inputLength);
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
		return QStringEncoderPtr.NameForEncoding(e);
	}
	
}
extension CQt
{
	[LinkName("QStringEncoder_new")]
	public static extern void* QStringEncoder_new();
	[LinkName("QStringEncoder_new2")]
	public static extern void* QStringEncoder_new2(int64 encoding);
	[LinkName("QStringEncoder_new3")]
	public static extern void* QStringEncoder_new3(char8* name);
	[LinkName("QStringEncoder_new4")]
	public static extern void* QStringEncoder_new4(int64 encoding, int64 flags);
	[LinkName("QStringEncoder_new5")]
	public static extern void* QStringEncoder_new5(char8* name, int64 flags);
	[LinkName("QStringEncoder_RequiredSpace")]
	public static extern int32 QStringEncoder_RequiredSpace(void* c_this, int32 inputLength);
	/// Delete this object from C++ memory
	[LinkName("QStringEncoder_Delete")]
	public static extern void QStringEncoder_Delete(void* self);
}
public interface IQStringDecoder
{
	void* NativePtr { get; }
}
public struct QStringDecoderPtr : IQStringDecoder, IDisposable, IQStringConverter
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 encoding)
	{
		return .(CQt.QStringDecoder_new((int64)encoding));
	}
	
	public void Dispose()
	{
		CQt.QStringDecoder_Delete(this.nativePtr);
	}
	
	public int32 RequiredSpace(int32 inputLength)
	{
		return CQt.QStringDecoder_RequiredSpace(this.nativePtr, inputLength);
	}
	
	public void* AppendToBuffer(IQChar _out, char8* ba)
	{
		return CQt.QStringDecoder_AppendToBuffer(this.nativePtr, (_out == default || _out.NativePtr == default) ? default : _out.NativePtr, ba);
	}
	
	public static void DecoderForHtml(char8* data)
	{
		CQt.QStringDecoder_DecoderForHtml(data);
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
public class QStringDecoder
{
	public QStringDecoderPtr handle;
	
	public static implicit operator QStringDecoderPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 encoding)
	{
		this.handle = QStringDecoderPtr.New(encoding);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public int32 RequiredSpace(int32 inputLength)
	{
		return this.handle.RequiredSpace(inputLength);
	}
	
	public void* AppendToBuffer(IQChar _out, char8* ba)
	{
		return this.handle.AppendToBuffer(_out, ba);
	}
	
	public static void DecoderForHtml(char8* data)
	{
		QStringDecoderPtr.DecoderForHtml(data);
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
		return QStringDecoderPtr.NameForEncoding(e);
	}
	
}
extension CQt
{
	[LinkName("QStringDecoder_new")]
	public static extern void* QStringDecoder_new(int64 encoding);
	[LinkName("QStringDecoder_new2")]
	public static extern void* QStringDecoder_new2();
	[LinkName("QStringDecoder_new3")]
	public static extern void* QStringDecoder_new3(char8* name);
	[LinkName("QStringDecoder_new4")]
	public static extern void* QStringDecoder_new4(int64 encoding, int64 flags);
	[LinkName("QStringDecoder_new5")]
	public static extern void* QStringDecoder_new5(char8* name, int64 f);
	[LinkName("QStringDecoder_RequiredSpace")]
	public static extern int32 QStringDecoder_RequiredSpace(void* c_this, int32 inputLength);
	[LinkName("QStringDecoder_AppendToBuffer")]
	public static extern void* QStringDecoder_AppendToBuffer(void* c_this, void* _out, char8* ba);
	[LinkName("QStringDecoder_DecoderForHtml")]
	public static extern void QStringDecoder_DecoderForHtml(char8* data);
	/// Delete this object from C++ memory
	[LinkName("QStringDecoder_Delete")]
	public static extern void QStringDecoder_Delete(void* self);
}