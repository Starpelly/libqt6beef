using System;
using System.Interop;
namespace Qt;

public interface IQTextDocumentWriter
{
	void* NativePtr { get; }
}
public class QTextDocumentWriter : IQTextDocumentWriter
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextDocumentWriter_new();
	}
	
	public ~this()
	{
		CQt.QTextDocumentWriter_Delete(this.nativePtr);
	}
	
	public void SetFormat(String format)
	{
		CQt.QTextDocumentWriter_SetFormat(this.nativePtr, libqt_string(format));
	}
	
	public libqt_string Format()
	{
		return CQt.QTextDocumentWriter_Format(this.nativePtr);
	}
	
	public void SetDevice(IQIODevice device)
	{
		CQt.QTextDocumentWriter_SetDevice(this.nativePtr, (device == null) ? null : (void*)device.NativePtr);
	}
	
	public void* Device()
	{
		return CQt.QTextDocumentWriter_Device(this.nativePtr);
	}
	
	public void SetFileName(String fileName)
	{
		CQt.QTextDocumentWriter_SetFileName(this.nativePtr, libqt_string(fileName));
	}
	
	public libqt_string FileName()
	{
		return CQt.QTextDocumentWriter_FileName(this.nativePtr);
	}
	
	public bool Write(IQTextDocument document)
	{
		return CQt.QTextDocumentWriter_Write(this.nativePtr, (document == null) ? null : (void*)document.NativePtr);
	}
	
	public bool WriteWithFragment(IQTextDocumentFragment fragment)
	{
		return CQt.QTextDocumentWriter_WriteWithFragment(this.nativePtr, (fragment == default) ? default : (void*)fragment.NativePtr);
	}
	
	public static libqt_string[] SupportedDocumentFormats()
	{
		return CQt.QTextDocumentWriter_SupportedDocumentFormats();
	}
	
}
extension CQt
{
	[LinkName("QTextDocumentWriter_new")]
	public static extern void* QTextDocumentWriter_new();
	[LinkName("QTextDocumentWriter_new2")]
	public static extern void* QTextDocumentWriter_new2(void* device, libqt_string format);
	[LinkName("QTextDocumentWriter_new3")]
	public static extern void* QTextDocumentWriter_new3(libqt_string fileName);
	[LinkName("QTextDocumentWriter_new4")]
	public static extern void* QTextDocumentWriter_new4(libqt_string fileName, libqt_string format);
	[LinkName("QTextDocumentWriter_SetFormat")]
	public static extern void QTextDocumentWriter_SetFormat(void* c_this, libqt_string format);
	[LinkName("QTextDocumentWriter_Format")]
	public static extern libqt_string QTextDocumentWriter_Format(void* c_this);
	[LinkName("QTextDocumentWriter_SetDevice")]
	public static extern void QTextDocumentWriter_SetDevice(void* c_this, void* device);
	[LinkName("QTextDocumentWriter_Device")]
	public static extern void* QTextDocumentWriter_Device(void* c_this);
	[LinkName("QTextDocumentWriter_SetFileName")]
	public static extern void QTextDocumentWriter_SetFileName(void* c_this, libqt_string fileName);
	[LinkName("QTextDocumentWriter_FileName")]
	public static extern libqt_string QTextDocumentWriter_FileName(void* c_this);
	[LinkName("QTextDocumentWriter_Write")]
	public static extern bool QTextDocumentWriter_Write(void* c_this, void* document);
	[LinkName("QTextDocumentWriter_WriteWithFragment")]
	public static extern bool QTextDocumentWriter_WriteWithFragment(void* c_this, void* fragment);
	[LinkName("QTextDocumentWriter_SupportedDocumentFormats")]
	public static extern libqt_string[] QTextDocumentWriter_SupportedDocumentFormats();
	/// Delete this object from C++ memory
	[LinkName("QTextDocumentWriter_Delete")]
	public static extern void QTextDocumentWriter_Delete(void* self);
}