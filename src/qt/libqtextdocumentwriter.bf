using System;
using System.Interop;
namespace Qt;

public struct QTextDocumentWriter
{
	[LinkName("QTextDocumentWriter_new")]
	public static extern QTextDocumentWriter* QTextDocumentWriter_new();
	[LinkName("QTextDocumentWriter_new2")]
	public static extern QTextDocumentWriter* QTextDocumentWriter_new2(QIODevice* device, libqt_string format);
	[LinkName("QTextDocumentWriter_new3")]
	public static extern QTextDocumentWriter* QTextDocumentWriter_new3(libqt_string fileName);
	[LinkName("QTextDocumentWriter_new4")]
	public static extern QTextDocumentWriter* QTextDocumentWriter_new4(libqt_string fileName, libqt_string format);
	[LinkName("QTextDocumentWriter_SetFormat")]
	public static extern void QTextDocumentWriter_SetFormat(Self* c_this, libqt_string format);
	[LinkName("QTextDocumentWriter_Format")]
	public static extern libqt_string QTextDocumentWriter_Format(Self* c_this);
	[LinkName("QTextDocumentWriter_SetDevice")]
	public static extern void QTextDocumentWriter_SetDevice(Self* c_this, QIODevice* device);
	[LinkName("QTextDocumentWriter_Device")]
	public static extern QIODevice* QTextDocumentWriter_Device(Self* c_this);
	[LinkName("QTextDocumentWriter_SetFileName")]
	public static extern void QTextDocumentWriter_SetFileName(Self* c_this, libqt_string fileName);
	[LinkName("QTextDocumentWriter_FileName")]
	public static extern libqt_string QTextDocumentWriter_FileName(Self* c_this);
	[LinkName("QTextDocumentWriter_Write")]
	public static extern bool QTextDocumentWriter_Write(Self* c_this, QTextDocument* document);
	[LinkName("QTextDocumentWriter_WriteWithFragment")]
	public static extern bool QTextDocumentWriter_WriteWithFragment(Self* c_this, QTextDocumentFragment* fragment);
	[LinkName("QTextDocumentWriter_SupportedDocumentFormats")]
	public static extern libqt_string[] QTextDocumentWriter_SupportedDocumentFormats();
}