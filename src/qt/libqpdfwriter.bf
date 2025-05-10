using System;
using System.Interop;
namespace Qt;

public interface IQPdfWriter
{
	void* NativePtr { get; }
}
public class QPdfWriter : IQPdfWriter, IQObject, IQPagedPaintDevice
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(String filename)
	{
		this.nativePtr = CQt.QPdfWriter_new(libqt_string(filename));
	}
	
	public ~this()
	{
		CQt.QPdfWriter_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QPdfWriter_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QPdfWriter_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QPdfWriter_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QPdfWriter_Tr(s);
	}
	
	public void SetPdfVersion(int64 version)
	{
		CQt.QPdfWriter_SetPdfVersion(this.nativePtr, version);
	}
	
	public int64 PdfVersion()
	{
		return CQt.QPdfWriter_PdfVersion(this.nativePtr);
	}
	
	public libqt_string Title()
	{
		return CQt.QPdfWriter_Title(this.nativePtr);
	}
	
	public void SetTitle(String title)
	{
		CQt.QPdfWriter_SetTitle(this.nativePtr, libqt_string(title));
	}
	
	public libqt_string Creator()
	{
		return CQt.QPdfWriter_Creator(this.nativePtr);
	}
	
	public void SetCreator(String creator)
	{
		CQt.QPdfWriter_SetCreator(this.nativePtr, libqt_string(creator));
	}
	
	public virtual bool NewPage()
	{
		return CQt.QPdfWriter_NewPage(this.nativePtr);
	}
	
	public void SetResolution(int32 resolution)
	{
		CQt.QPdfWriter_SetResolution(this.nativePtr, resolution);
	}
	
	public int32 Resolution()
	{
		return CQt.QPdfWriter_Resolution(this.nativePtr);
	}
	
	public void SetDocumentXmpMetadata(String xmpMetadata)
	{
		CQt.QPdfWriter_SetDocumentXmpMetadata(this.nativePtr, libqt_string(xmpMetadata));
	}
	
	public libqt_string DocumentXmpMetadata()
	{
		return CQt.QPdfWriter_DocumentXmpMetadata(this.nativePtr);
	}
	
	public void AddFileAttachment(String fileName, String data)
	{
		CQt.QPdfWriter_AddFileAttachment(this.nativePtr, libqt_string(fileName), libqt_string(data));
	}
	
	public virtual void* PaintEngine()
	{
		return CQt.QPdfWriter_PaintEngine(this.nativePtr);
	}
	
	public virtual int32 Metric(int64 id)
	{
		return CQt.QPdfWriter_Metric(this.nativePtr, id);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QPdfWriter_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QPdfWriter_Tr3(s, c, n);
	}
	
	public void AddFileAttachment3(String fileName, String data, String mimeType)
	{
		CQt.QPdfWriter_AddFileAttachment3(this.nativePtr, libqt_string(fileName), libqt_string(data), libqt_string(mimeType));
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(IQAnyStringView name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, (name == default) ? default : (char8*)name.NativePtr);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == null) ? null : (void*)thread.NativePtr);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (member == default) ? default : (void*)member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void Property(char8* name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8* classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member, typeVal);
	}
	
	public virtual bool SetPageLayout(IQPageLayout pageLayout)
	{
		return CQt.QPagedPaintDevice_SetPageLayout(this.nativePtr, (pageLayout == default) ? default : (void*)pageLayout.NativePtr);
	}
	
	public virtual bool SetPageSize(IQPageSize pageSize)
	{
		return CQt.QPagedPaintDevice_SetPageSize(this.nativePtr, (pageSize == default) ? default : (void*)pageSize.NativePtr);
	}
	
	public virtual bool SetPageOrientation(int64 orientation)
	{
		return CQt.QPagedPaintDevice_SetPageOrientation(this.nativePtr, orientation);
	}
	
	public virtual bool SetPageMargins(IQMarginsF margins, int64 units)
	{
		return CQt.QPagedPaintDevice_SetPageMargins(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr, units);
	}
	
	public void PageLayout()
	{
		CQt.QPagedPaintDevice_PageLayout(this.nativePtr);
	}
	
	public virtual void SetPageRanges(IQPageRanges ranges)
	{
		CQt.QPagedPaintDevice_SetPageRanges(this.nativePtr, (ranges == default) ? default : (void*)ranges.NativePtr);
	}
	
	public void PageRanges()
	{
		CQt.QPagedPaintDevice_PageRanges(this.nativePtr);
	}
	
	public virtual int32 DevType()
	{
		return CQt.QPaintDevice_DevType(this.nativePtr);
	}
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QPaintDevice_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QPaintDevice_Height(this.nativePtr);
	}
	
	public int32 WidthMM()
	{
		return CQt.QPaintDevice_WidthMM(this.nativePtr);
	}
	
	public int32 HeightMM()
	{
		return CQt.QPaintDevice_HeightMM(this.nativePtr);
	}
	
	public int32 LogicalDpiX()
	{
		return CQt.QPaintDevice_LogicalDpiX(this.nativePtr);
	}
	
	public int32 LogicalDpiY()
	{
		return CQt.QPaintDevice_LogicalDpiY(this.nativePtr);
	}
	
	public int32 PhysicalDpiX()
	{
		return CQt.QPaintDevice_PhysicalDpiX(this.nativePtr);
	}
	
	public int32 PhysicalDpiY()
	{
		return CQt.QPaintDevice_PhysicalDpiY(this.nativePtr);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QPaintDevice_DevicePixelRatio(this.nativePtr);
	}
	
	public double DevicePixelRatioF()
	{
		return CQt.QPaintDevice_DevicePixelRatioF(this.nativePtr);
	}
	
	public int32 ColorCount()
	{
		return CQt.QPaintDevice_ColorCount(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QPaintDevice_Depth(this.nativePtr);
	}
	
	public static double DevicePixelRatioFScale()
	{
		return CQt.QPaintDevice_DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QPdfWriter_new")]
	public static extern void* QPdfWriter_new(libqt_string filename);
	[LinkName("QPdfWriter_new2")]
	public static extern void* QPdfWriter_new2(void* device);
	[LinkName("QPdfWriter_MetaObject")]
	public static extern void* QPdfWriter_MetaObject(void* c_this);
	[LinkName("QPdfWriter_Metacast")]
	public static extern void* QPdfWriter_Metacast(void* c_this, char8* param1);
	[LinkName("QPdfWriter_Metacall")]
	public static extern int32 QPdfWriter_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QPdfWriter_Tr")]
	public static extern libqt_string QPdfWriter_Tr(char8* s);
	[LinkName("QPdfWriter_SetPdfVersion")]
	public static extern void QPdfWriter_SetPdfVersion(void* c_this, int64 version);
	[LinkName("QPdfWriter_PdfVersion")]
	public static extern int64 QPdfWriter_PdfVersion(void* c_this);
	[LinkName("QPdfWriter_Title")]
	public static extern libqt_string QPdfWriter_Title(void* c_this);
	[LinkName("QPdfWriter_SetTitle")]
	public static extern void QPdfWriter_SetTitle(void* c_this, libqt_string title);
	[LinkName("QPdfWriter_Creator")]
	public static extern libqt_string QPdfWriter_Creator(void* c_this);
	[LinkName("QPdfWriter_SetCreator")]
	public static extern void QPdfWriter_SetCreator(void* c_this, libqt_string creator);
	[LinkName("QPdfWriter_NewPage")]
	public static extern bool QPdfWriter_NewPage(void* c_this);
	[LinkName("QPdfWriter_SetResolution")]
	public static extern void QPdfWriter_SetResolution(void* c_this, int32 resolution);
	[LinkName("QPdfWriter_Resolution")]
	public static extern int32 QPdfWriter_Resolution(void* c_this);
	[LinkName("QPdfWriter_SetDocumentXmpMetadata")]
	public static extern void QPdfWriter_SetDocumentXmpMetadata(void* c_this, libqt_string xmpMetadata);
	[LinkName("QPdfWriter_DocumentXmpMetadata")]
	public static extern libqt_string QPdfWriter_DocumentXmpMetadata(void* c_this);
	[LinkName("QPdfWriter_AddFileAttachment")]
	public static extern void QPdfWriter_AddFileAttachment(void* c_this, libqt_string fileName, libqt_string data);
	[LinkName("QPdfWriter_PaintEngine")]
	public static extern void* QPdfWriter_PaintEngine(void* c_this);
	[LinkName("QPdfWriter_Metric")]
	public static extern int32 QPdfWriter_Metric(void* c_this, int64 id);
	[LinkName("QPdfWriter_Tr2")]
	public static extern libqt_string QPdfWriter_Tr2(char8* s, char8* c);
	[LinkName("QPdfWriter_Tr3")]
	public static extern libqt_string QPdfWriter_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QPdfWriter_AddFileAttachment3")]
	public static extern void QPdfWriter_AddFileAttachment3(void* c_this, libqt_string fileName, libqt_string data, libqt_string mimeType);
	/// Delete this object from C++ memory
	[LinkName("QPdfWriter_Delete")]
	public static extern void QPdfWriter_Delete(void* self);
}