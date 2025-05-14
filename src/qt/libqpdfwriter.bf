using System;
using System.Interop;
namespace Qt;

public interface IQPdfWriter
{
	void* NativePtr { get; }
}
public struct QPdfWriterPtr : IQPdfWriter, IDisposable, IQObject, IQPagedPaintDevice
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(String filename)
	{
		return .(CQt.QPdfWriter_new(libqt_string(filename)));
	}
	
	public void Dispose()
	{
		CQt.QPdfWriter_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QPdfWriter_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QPdfWriter_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QPdfWriter_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QPdfWriter_Tr(s);
	}
	
	public void SetPdfVersion(int64 version)
	{
		CQt.QPdfWriter_SetPdfVersion(this.nativePtr, (int64)version);
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
	
	public bool NewPage()
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
	
	public void* PaintEngine()
	{
		return CQt.QPdfWriter_PaintEngine(this.nativePtr);
	}
	
	public int32 Metric(int64 id)
	{
		return CQt.QPdfWriter_Metric(this.nativePtr, (int64)id);
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
	
	public bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(char8* name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
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
		CQt.QObject_MoveToThread(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
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
		CQt.QObject_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (member == default || member.NativePtr == default) ? default : member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
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
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default || value.NativePtr == default) ? default : value.NativePtr);
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
		return CQt.QObject_StartTimer2(this.nativePtr, interval, (int64)timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr, (int64)typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member, (int64)typeVal);
	}
	
	public bool SetPageLayout(IQPageLayout pageLayout)
	{
		return CQt.QPagedPaintDevice_SetPageLayout(this.nativePtr, (pageLayout == default || pageLayout.NativePtr == default) ? default : pageLayout.NativePtr);
	}
	
	public bool SetPageSize(IQPageSize pageSize)
	{
		return CQt.QPagedPaintDevice_SetPageSize(this.nativePtr, (pageSize == default || pageSize.NativePtr == default) ? default : pageSize.NativePtr);
	}
	
	public bool SetPageOrientation(int64 orientation)
	{
		return CQt.QPagedPaintDevice_SetPageOrientation(this.nativePtr, (int64)orientation);
	}
	
	public bool SetPageMargins(IQMarginsF margins, int64 units)
	{
		return CQt.QPagedPaintDevice_SetPageMargins(this.nativePtr, (margins == default || margins.NativePtr == default) ? default : margins.NativePtr, (int64)units);
	}
	
	public void PageLayout()
	{
		CQt.QPagedPaintDevice_PageLayout(this.nativePtr);
	}
	
	public void SetPageRanges(IQPageRanges ranges)
	{
		CQt.QPagedPaintDevice_SetPageRanges(this.nativePtr, (ranges == default || ranges.NativePtr == default) ? default : ranges.NativePtr);
	}
	
	public void PageRanges()
	{
		CQt.QPagedPaintDevice_PageRanges(this.nativePtr);
	}
	
	public int32 DevType()
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
public class QPdfWriter
{
	public QPdfWriterPtr handle;
	
	public static implicit operator QPdfWriterPtr(Self self)
	{
		return self.handle;
	}
	
	public this(String filename)
	{
		this.handle = QPdfWriterPtr.New(filename);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* MetaObject()
	{
		return this.handle.MetaObject();
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return this.handle.Metacast(param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return this.handle.Metacall(param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return QPdfWriterPtr.Tr(s);
	}
	
	public void SetPdfVersion(int64 version)
	{
		this.handle.SetPdfVersion(version);
	}
	
	public int64 PdfVersion()
	{
		return this.handle.PdfVersion();
	}
	
	public libqt_string Title()
	{
		return this.handle.Title();
	}
	
	public void SetTitle(String title)
	{
		this.handle.SetTitle(title);
	}
	
	public libqt_string Creator()
	{
		return this.handle.Creator();
	}
	
	public void SetCreator(String creator)
	{
		this.handle.SetCreator(creator);
	}
	
	public virtual bool NewPage()
	{
		return this.handle.NewPage();
	}
	
	public void SetResolution(int32 resolution)
	{
		this.handle.SetResolution(resolution);
	}
	
	public int32 Resolution()
	{
		return this.handle.Resolution();
	}
	
	public void SetDocumentXmpMetadata(String xmpMetadata)
	{
		this.handle.SetDocumentXmpMetadata(xmpMetadata);
	}
	
	public libqt_string DocumentXmpMetadata()
	{
		return this.handle.DocumentXmpMetadata();
	}
	
	public void AddFileAttachment(String fileName, String data)
	{
		this.handle.AddFileAttachment(fileName, data);
	}
	
	public virtual void* PaintEngine()
	{
		return this.handle.PaintEngine();
	}
	
	public virtual int32 Metric(int64 id)
	{
		return this.handle.Metric(id);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QPdfWriterPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QPdfWriterPtr.Tr3(s, c, n);
	}
	
	public void AddFileAttachment3(String fileName, String data, String mimeType)
	{
		this.handle.AddFileAttachment3(fileName, data, mimeType);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return this.handle.EventFilter(watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return this.handle.ObjectName();
	}
	
	public void SetObjectName(char8* name)
	{
		this.handle.SetObjectName(name);
	}
	
	public bool IsWidgetType()
	{
		return this.handle.IsWidgetType();
	}
	
	public bool IsWindowType()
	{
		return this.handle.IsWindowType();
	}
	
	public bool IsQuickItemType()
	{
		return this.handle.IsQuickItemType();
	}
	
	public bool SignalsBlocked()
	{
		return this.handle.SignalsBlocked();
	}
	
	public bool BlockSignals(bool b)
	{
		return this.handle.BlockSignals(b);
	}
	
	public void* Thread()
	{
		return this.handle.Thread();
	}
	
	public void MoveToThread(IQThread thread)
	{
		this.handle.MoveToThread(thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return this.handle.StartTimer(interval);
	}
	
	public void KillTimer(int32 id)
	{
		this.handle.KillTimer(id);
	}
	
	public void*[] Children()
	{
		return this.handle.Children();
	}
	
	public void SetParent(IQObject parent)
	{
		this.handle.SetParent(parent);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		this.handle.InstallEventFilter(filterObj);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		this.handle.RemoveEventFilter(obj);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		QPdfWriterPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QPdfWriterPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QPdfWriterPtr.DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		this.handle.DumpObjectTree();
	}
	
	public void DumpObjectInfo()
	{
		this.handle.DumpObjectInfo();
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return this.handle.SetProperty(name, value);
	}
	
	public void Property(char8* name)
	{
		this.handle.Property(name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return this.handle.DynamicPropertyNames();
	}
	
	public void* BindingStorage()
	{
		return this.handle.BindingStorage();
	}
	
	public void* BindingStorage2()
	{
		return this.handle.BindingStorage2();
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public bool Inherits(char8* classname)
	{
		return this.handle.Inherits(classname);
	}
	
	public void DeleteLater()
	{
		this.handle.DeleteLater();
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return this.handle.StartTimer2(interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		QPdfWriterPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
	public virtual bool SetPageLayout(IQPageLayout pageLayout)
	{
		return this.handle.SetPageLayout(pageLayout);
	}
	
	public virtual bool SetPageSize(IQPageSize pageSize)
	{
		return this.handle.SetPageSize(pageSize);
	}
	
	public virtual bool SetPageOrientation(int64 orientation)
	{
		return this.handle.SetPageOrientation(orientation);
	}
	
	public virtual bool SetPageMargins(IQMarginsF margins, int64 units)
	{
		return this.handle.SetPageMargins(margins, units);
	}
	
	public void PageLayout()
	{
		this.handle.PageLayout();
	}
	
	public virtual void SetPageRanges(IQPageRanges ranges)
	{
		this.handle.SetPageRanges(ranges);
	}
	
	public void PageRanges()
	{
		this.handle.PageRanges();
	}
	
	public virtual int32 DevType()
	{
		return this.handle.DevType();
	}
	
	public bool PaintingActive()
	{
		return this.handle.PaintingActive();
	}
	
	public int32 Width()
	{
		return this.handle.Width();
	}
	
	public int32 Height()
	{
		return this.handle.Height();
	}
	
	public int32 WidthMM()
	{
		return this.handle.WidthMM();
	}
	
	public int32 HeightMM()
	{
		return this.handle.HeightMM();
	}
	
	public int32 LogicalDpiX()
	{
		return this.handle.LogicalDpiX();
	}
	
	public int32 LogicalDpiY()
	{
		return this.handle.LogicalDpiY();
	}
	
	public int32 PhysicalDpiX()
	{
		return this.handle.PhysicalDpiX();
	}
	
	public int32 PhysicalDpiY()
	{
		return this.handle.PhysicalDpiY();
	}
	
	public double DevicePixelRatio()
	{
		return this.handle.DevicePixelRatio();
	}
	
	public double DevicePixelRatioF()
	{
		return this.handle.DevicePixelRatioF();
	}
	
	public int32 ColorCount()
	{
		return this.handle.ColorCount();
	}
	
	public int32 Depth()
	{
		return this.handle.Depth();
	}
	
	public static double DevicePixelRatioFScale()
	{
		return QPdfWriterPtr.DevicePixelRatioFScale();
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