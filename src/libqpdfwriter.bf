using System;
using System.Interop;
namespace Qt;

public struct QPdfWriter
{
	[LinkName("QPdfWriter_new")]
	public static extern void* QPdfWriter_new(char8[] filename);
	[LinkName("QPdfWriter_new2")]
	public static extern void* QPdfWriter_new2(QIODevice device);
	[LinkName("QPdfWriter_MetaObject")]
	public static extern QMetaObject QPdfWriter_MetaObject(void* c_this);
	[LinkName("QPdfWriter_Metacast")]
	public static extern void QPdfWriter_Metacast(void* c_this, char8[] param1);
	[LinkName("QPdfWriter_Metacall")]
	public static extern int32 QPdfWriter_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QPdfWriter_Tr")]
	public static extern char8[] QPdfWriter_Tr(char8[] s);
	[LinkName("QPdfWriter_SetPdfVersion")]
	public static extern void QPdfWriter_SetPdfVersion(void* c_this, int64 version);
	[LinkName("QPdfWriter_PdfVersion")]
	public static extern int64 QPdfWriter_PdfVersion(void* c_this);
	[LinkName("QPdfWriter_Title")]
	public static extern char8[] QPdfWriter_Title(void* c_this);
	[LinkName("QPdfWriter_SetTitle")]
	public static extern void QPdfWriter_SetTitle(void* c_this, char8[] title);
	[LinkName("QPdfWriter_Creator")]
	public static extern char8[] QPdfWriter_Creator(void* c_this);
	[LinkName("QPdfWriter_SetCreator")]
	public static extern void QPdfWriter_SetCreator(void* c_this, char8[] creator);
	[LinkName("QPdfWriter_NewPage")]
	public static extern bool QPdfWriter_NewPage(void* c_this);
	[LinkName("QPdfWriter_SetResolution")]
	public static extern void QPdfWriter_SetResolution(void* c_this, int32 resolution);
	[LinkName("QPdfWriter_Resolution")]
	public static extern int32 QPdfWriter_Resolution(void* c_this);
	[LinkName("QPdfWriter_SetDocumentXmpMetadata")]
	public static extern void QPdfWriter_SetDocumentXmpMetadata(void* c_this, uint8[] xmpMetadata);
	[LinkName("QPdfWriter_DocumentXmpMetadata")]
	public static extern uint8[] QPdfWriter_DocumentXmpMetadata(void* c_this);
	[LinkName("QPdfWriter_AddFileAttachment")]
	public static extern void QPdfWriter_AddFileAttachment(void* c_this, char8[] fileName, uint8[] data);
	[LinkName("QPdfWriter_PaintEngine")]
	public static extern QPaintEngine QPdfWriter_PaintEngine(void* c_this);
	[LinkName("QPdfWriter_Metric")]
	public static extern int32 QPdfWriter_Metric(void* c_this, int64 id);
	[LinkName("QPdfWriter_Tr2")]
	public static extern char8[] QPdfWriter_Tr2(char8[] s, char8[] c);
	[LinkName("QPdfWriter_Tr3")]
	public static extern char8[] QPdfWriter_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QPdfWriter_AddFileAttachment3")]
	public static extern void QPdfWriter_AddFileAttachment3(void* c_this, char8[] fileName, uint8[] data, char8[] mimeType);
}