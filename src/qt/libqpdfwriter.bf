using System;
using System.Interop;
namespace Qt;

public struct QPdfWriter : QPagedPaintDevice
{
	[LinkName("QPdfWriter_new")]
	public static extern QPdfWriter* QPdfWriter_new(libqt_string filename);
	[LinkName("QPdfWriter_new2")]
	public static extern QPdfWriter* QPdfWriter_new2(QIODevice* device);
	[LinkName("QPdfWriter_MetaObject")]
	public static extern QMetaObject* QPdfWriter_MetaObject(Self* c_this);
	[LinkName("QPdfWriter_Metacast")]
	public static extern void* QPdfWriter_Metacast(Self* c_this, char8[] param1);
	[LinkName("QPdfWriter_Metacall")]
	public static extern int32 QPdfWriter_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QPdfWriter_Tr")]
	public static extern libqt_string QPdfWriter_Tr(char8[] s);
	[LinkName("QPdfWriter_SetPdfVersion")]
	public static extern void QPdfWriter_SetPdfVersion(Self* c_this, int64 version);
	[LinkName("QPdfWriter_PdfVersion")]
	public static extern int64 QPdfWriter_PdfVersion(Self* c_this);
	[LinkName("QPdfWriter_Title")]
	public static extern libqt_string QPdfWriter_Title(Self* c_this);
	[LinkName("QPdfWriter_SetTitle")]
	public static extern void QPdfWriter_SetTitle(Self* c_this, libqt_string title);
	[LinkName("QPdfWriter_Creator")]
	public static extern libqt_string QPdfWriter_Creator(Self* c_this);
	[LinkName("QPdfWriter_SetCreator")]
	public static extern void QPdfWriter_SetCreator(Self* c_this, libqt_string creator);
	[LinkName("QPdfWriter_NewPage")]
	public static extern bool QPdfWriter_NewPage(Self* c_this);
	[LinkName("QPdfWriter_SetResolution")]
	public static extern void QPdfWriter_SetResolution(Self* c_this, int32 resolution);
	[LinkName("QPdfWriter_Resolution")]
	public static extern int32 QPdfWriter_Resolution(Self* c_this);
	[LinkName("QPdfWriter_SetDocumentXmpMetadata")]
	public static extern void QPdfWriter_SetDocumentXmpMetadata(Self* c_this, libqt_string xmpMetadata);
	[LinkName("QPdfWriter_DocumentXmpMetadata")]
	public static extern libqt_string QPdfWriter_DocumentXmpMetadata(Self* c_this);
	[LinkName("QPdfWriter_AddFileAttachment")]
	public static extern void QPdfWriter_AddFileAttachment(Self* c_this, libqt_string fileName, libqt_string data);
	[LinkName("QPdfWriter_PaintEngine")]
	public static extern QPaintEngine* QPdfWriter_PaintEngine(Self* c_this);
	[LinkName("QPdfWriter_Metric")]
	public static extern int32 QPdfWriter_Metric(Self* c_this, int64 id);
	[LinkName("QPdfWriter_Tr2")]
	public static extern libqt_string QPdfWriter_Tr2(char8[] s, char8[] c);
	[LinkName("QPdfWriter_Tr3")]
	public static extern libqt_string QPdfWriter_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QPdfWriter_AddFileAttachment3")]
	public static extern void QPdfWriter_AddFileAttachment3(Self* c_this, libqt_string fileName, libqt_string data, libqt_string mimeType);
}