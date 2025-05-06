using System;
using System.Interop;
namespace Qt;

public struct QTextDocumentWriter
{
	[LinkName("QTextDocumentWriter_new")]
	public static extern void* QTextDocumentWriter_new();
	[LinkName("QTextDocumentWriter_new2")]
	public static extern void* QTextDocumentWriter_new2(QIODevice device, uint8[] format);
	[LinkName("QTextDocumentWriter_new3")]
	public static extern void* QTextDocumentWriter_new3(char8[] fileName);
	[LinkName("QTextDocumentWriter_new4")]
	public static extern void* QTextDocumentWriter_new4(char8[] fileName, uint8[] format);
	[LinkName("QTextDocumentWriter_SetFormat")]
	public static extern void QTextDocumentWriter_SetFormat(void* c_this, uint8[] format);
	[LinkName("QTextDocumentWriter_Format")]
	public static extern uint8[] QTextDocumentWriter_Format(void* c_this);
	[LinkName("QTextDocumentWriter_SetDevice")]
	public static extern void QTextDocumentWriter_SetDevice(void* c_this, QIODevice device);
	[LinkName("QTextDocumentWriter_Device")]
	public static extern QIODevice QTextDocumentWriter_Device(void* c_this);
	[LinkName("QTextDocumentWriter_SetFileName")]
	public static extern void QTextDocumentWriter_SetFileName(void* c_this, char8[] fileName);
	[LinkName("QTextDocumentWriter_FileName")]
	public static extern char8[] QTextDocumentWriter_FileName(void* c_this);
	[LinkName("QTextDocumentWriter_Write")]
	public static extern bool QTextDocumentWriter_Write(void* c_this, QTextDocument document);
	[LinkName("QTextDocumentWriter_WriteWithFragment")]
	public static extern bool QTextDocumentWriter_WriteWithFragment(void* c_this, QTextDocumentFragment fragment);
	[LinkName("QTextDocumentWriter_SupportedDocumentFormats")]
	public static extern uint8[][] QTextDocumentWriter_SupportedDocumentFormats();
}