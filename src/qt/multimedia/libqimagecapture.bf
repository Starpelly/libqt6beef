using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QImageCapture__Error
{
	NoError = 0,
	NotReadyError = 1,
	ResourceError = 2,
	OutOfSpaceError = 3,
	NotSupportedFeatureError = 4,
	FormatError = 5,
}
[AllowDuplicates]
public enum QImageCapture__Quality
{
	VeryLowQuality = 0,
	LowQuality = 1,
	NormalQuality = 2,
	HighQuality = 3,
	VeryHighQuality = 4,
}
[AllowDuplicates]
public enum QImageCapture__FileFormat
{
	UnspecifiedFormat = 0,
	JPEG = 1,
	PNG = 2,
	WebP = 3,
	Tiff = 4,
	LastFileFormat = 4,
}
public interface IQImageCapture
{
	void* NativePtr { get; }
}
public struct QImageCapturePtr : IQImageCapture, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QImageCapture_new());
	}
	
	public void Dispose()
	{
		CQt.QImageCapture_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QImageCapture_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QImageCapture_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QImageCapture_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QImageCapture_Tr(s);
	}
	
	public bool IsAvailable()
	{
		return CQt.QImageCapture_IsAvailable(this.nativePtr);
	}
	
	public void* CaptureSession()
	{
		return CQt.QImageCapture_CaptureSession(this.nativePtr);
	}
	
	public int64 Error()
	{
		return CQt.QImageCapture_Error(this.nativePtr);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QImageCapture_ErrorString(this.nativePtr);
	}
	
	public bool IsReadyForCapture()
	{
		return CQt.QImageCapture_IsReadyForCapture(this.nativePtr);
	}
	
	public int64 FileFormat()
	{
		return CQt.QImageCapture_FileFormat(this.nativePtr);
	}
	
	public void SetFileFormat(int64 format)
	{
		CQt.QImageCapture_SetFileFormat(this.nativePtr, (int64)format);
	}
	
	public static int64[] SupportedFormats()
	{
		return CQt.QImageCapture_SupportedFormats();
	}
	
	public static libqt_string FileFormatName(int64 c)
	{
		return CQt.QImageCapture_FileFormatName((int64)c);
	}
	
	public static libqt_string FileFormatDescription(int64 c)
	{
		return CQt.QImageCapture_FileFormatDescription((int64)c);
	}
	
	public void Resolution()
	{
		CQt.QImageCapture_Resolution(this.nativePtr);
	}
	
	public void SetResolution(IQSize resolution)
	{
		CQt.QImageCapture_SetResolution(this.nativePtr, (resolution == default || resolution.NativePtr == default) ? default : resolution.NativePtr);
	}
	
	public void SetResolution2(int32 width, int32 height)
	{
		CQt.QImageCapture_SetResolution2(this.nativePtr, width, height);
	}
	
	public int64 Quality()
	{
		return CQt.QImageCapture_Quality(this.nativePtr);
	}
	
	public void SetQuality(int64 quality)
	{
		CQt.QImageCapture_SetQuality(this.nativePtr, (int64)quality);
	}
	
	public void MetaData()
	{
		CQt.QImageCapture_MetaData(this.nativePtr);
	}
	
	public void SetMetaData(IQMediaMetaData metaData)
	{
		CQt.QImageCapture_SetMetaData(this.nativePtr, (metaData == default || metaData.NativePtr == default) ? default : metaData.NativePtr);
	}
	
	public void AddMetaData(IQMediaMetaData metaData)
	{
		CQt.QImageCapture_AddMetaData(this.nativePtr, (metaData == default || metaData.NativePtr == default) ? default : metaData.NativePtr);
	}
	
	public int32 CaptureToFile()
	{
		return CQt.QImageCapture_CaptureToFile(this.nativePtr);
	}
	
	public int32 Capture()
	{
		return CQt.QImageCapture_Capture(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QImageCapture_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QImageCapture_Tr3(s, c, n);
	}
	
	public int32 CaptureToFile1(String location)
	{
		return CQt.QImageCapture_CaptureToFile1(this.nativePtr, libqt_string(location));
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
	
}
public class QImageCapture
{
	public QImageCapturePtr handle;
	
	public static implicit operator QImageCapturePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QImageCapturePtr.New();
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
		return QImageCapturePtr.Tr(s);
	}
	
	public bool IsAvailable()
	{
		return this.handle.IsAvailable();
	}
	
	public void* CaptureSession()
	{
		return this.handle.CaptureSession();
	}
	
	public int64 Error()
	{
		return this.handle.Error();
	}
	
	public libqt_string ErrorString()
	{
		return this.handle.ErrorString();
	}
	
	public bool IsReadyForCapture()
	{
		return this.handle.IsReadyForCapture();
	}
	
	public int64 FileFormat()
	{
		return this.handle.FileFormat();
	}
	
	public void SetFileFormat(int64 format)
	{
		this.handle.SetFileFormat(format);
	}
	
	public static int64[] SupportedFormats()
	{
		return QImageCapturePtr.SupportedFormats();
	}
	
	public static libqt_string FileFormatName(int64 c)
	{
		return QImageCapturePtr.FileFormatName(c);
	}
	
	public static libqt_string FileFormatDescription(int64 c)
	{
		return QImageCapturePtr.FileFormatDescription(c);
	}
	
	public void Resolution()
	{
		this.handle.Resolution();
	}
	
	public void SetResolution(IQSize resolution)
	{
		this.handle.SetResolution(resolution);
	}
	
	public void SetResolution2(int32 width, int32 height)
	{
		this.handle.SetResolution2(width, height);
	}
	
	public int64 Quality()
	{
		return this.handle.Quality();
	}
	
	public void SetQuality(int64 quality)
	{
		this.handle.SetQuality(quality);
	}
	
	public void MetaData()
	{
		this.handle.MetaData();
	}
	
	public void SetMetaData(IQMediaMetaData metaData)
	{
		this.handle.SetMetaData(metaData);
	}
	
	public void AddMetaData(IQMediaMetaData metaData)
	{
		this.handle.AddMetaData(metaData);
	}
	
	public int32 CaptureToFile()
	{
		return this.handle.CaptureToFile();
	}
	
	public int32 Capture()
	{
		return this.handle.Capture();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QImageCapturePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QImageCapturePtr.Tr3(s, c, n);
	}
	
	public int32 CaptureToFile1(String location)
	{
		return this.handle.CaptureToFile1(location);
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
		QImageCapturePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QImageCapturePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QImageCapturePtr.DisconnectWithQMetaObjectConnection(param1);
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
		QImageCapturePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QImageCapture_new")]
	public static extern void* QImageCapture_new();
	[LinkName("QImageCapture_new2")]
	public static extern void* QImageCapture_new2(void* parent);
	[LinkName("QImageCapture_MetaObject")]
	public static extern void* QImageCapture_MetaObject(void* c_this);
	[LinkName("QImageCapture_Metacast")]
	public static extern void* QImageCapture_Metacast(void* c_this, char8* param1);
	[LinkName("QImageCapture_Metacall")]
	public static extern int32 QImageCapture_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QImageCapture_Tr")]
	public static extern libqt_string QImageCapture_Tr(char8* s);
	[LinkName("QImageCapture_IsAvailable")]
	public static extern bool QImageCapture_IsAvailable(void* c_this);
	[LinkName("QImageCapture_CaptureSession")]
	public static extern void* QImageCapture_CaptureSession(void* c_this);
	[LinkName("QImageCapture_Error")]
	public static extern int64 QImageCapture_Error(void* c_this);
	[LinkName("QImageCapture_ErrorString")]
	public static extern libqt_string QImageCapture_ErrorString(void* c_this);
	[LinkName("QImageCapture_IsReadyForCapture")]
	public static extern bool QImageCapture_IsReadyForCapture(void* c_this);
	[LinkName("QImageCapture_FileFormat")]
	public static extern int64 QImageCapture_FileFormat(void* c_this);
	[LinkName("QImageCapture_SetFileFormat")]
	public static extern void QImageCapture_SetFileFormat(void* c_this, int64 format);
	[LinkName("QImageCapture_SupportedFormats")]
	public static extern int64[] QImageCapture_SupportedFormats();
	[LinkName("QImageCapture_FileFormatName")]
	public static extern libqt_string QImageCapture_FileFormatName(int64 c);
	[LinkName("QImageCapture_FileFormatDescription")]
	public static extern libqt_string QImageCapture_FileFormatDescription(int64 c);
	[LinkName("QImageCapture_Resolution")]
	public static extern void QImageCapture_Resolution(void* c_this);
	[LinkName("QImageCapture_SetResolution")]
	public static extern void QImageCapture_SetResolution(void* c_this, void* resolution);
	[LinkName("QImageCapture_SetResolution2")]
	public static extern void QImageCapture_SetResolution2(void* c_this, int32 width, int32 height);
	[LinkName("QImageCapture_Quality")]
	public static extern int64 QImageCapture_Quality(void* c_this);
	[LinkName("QImageCapture_SetQuality")]
	public static extern void QImageCapture_SetQuality(void* c_this, int64 quality);
	[LinkName("QImageCapture_MetaData")]
	public static extern void QImageCapture_MetaData(void* c_this);
	[LinkName("QImageCapture_SetMetaData")]
	public static extern void QImageCapture_SetMetaData(void* c_this, void* metaData);
	[LinkName("QImageCapture_AddMetaData")]
	public static extern void QImageCapture_AddMetaData(void* c_this, void* metaData);
	[LinkName("QImageCapture_CaptureToFile")]
	public static extern int32 QImageCapture_CaptureToFile(void* c_this);
	[LinkName("QImageCapture_Capture")]
	public static extern int32 QImageCapture_Capture(void* c_this);
	[LinkName("QImageCapture_Connect_ErrorChanged")]
	public static extern void QImageCapture_Connect_ErrorChanged(void* c_this, c_intptr slot);
	[LinkName("QImageCapture_Connect_ErrorOccurred")]
	public static extern void QImageCapture_Connect_ErrorOccurred(void* c_this, c_intptr slot);
	[LinkName("QImageCapture_Connect_ReadyForCaptureChanged")]
	public static extern void QImageCapture_Connect_ReadyForCaptureChanged(void* c_this, c_intptr slot);
	[LinkName("QImageCapture_Connect_MetaDataChanged")]
	public static extern void QImageCapture_Connect_MetaDataChanged(void* c_this, c_intptr slot);
	[LinkName("QImageCapture_Connect_FileFormatChanged")]
	public static extern void QImageCapture_Connect_FileFormatChanged(void* c_this, c_intptr slot);
	[LinkName("QImageCapture_Connect_QualityChanged")]
	public static extern void QImageCapture_Connect_QualityChanged(void* c_this, c_intptr slot);
	[LinkName("QImageCapture_Connect_ResolutionChanged")]
	public static extern void QImageCapture_Connect_ResolutionChanged(void* c_this, c_intptr slot);
	[LinkName("QImageCapture_Connect_ImageExposed")]
	public static extern void QImageCapture_Connect_ImageExposed(void* c_this, c_intptr slot);
	[LinkName("QImageCapture_Connect_ImageCaptured")]
	public static extern void QImageCapture_Connect_ImageCaptured(void* c_this, c_intptr slot);
	[LinkName("QImageCapture_Connect_ImageMetadataAvailable")]
	public static extern void QImageCapture_Connect_ImageMetadataAvailable(void* c_this, c_intptr slot);
	[LinkName("QImageCapture_Connect_ImageAvailable")]
	public static extern void QImageCapture_Connect_ImageAvailable(void* c_this, c_intptr slot);
	[LinkName("QImageCapture_Connect_ImageSaved")]
	public static extern void QImageCapture_Connect_ImageSaved(void* c_this, c_intptr slot);
	[LinkName("QImageCapture_Tr2")]
	public static extern libqt_string QImageCapture_Tr2(char8* s, char8* c);
	[LinkName("QImageCapture_Tr3")]
	public static extern libqt_string QImageCapture_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QImageCapture_CaptureToFile1")]
	public static extern int32 QImageCapture_CaptureToFile1(void* c_this, libqt_string location);
	/// Delete this object from C++ memory
	[LinkName("QImageCapture_Delete")]
	public static extern void QImageCapture_Delete(void* self);
}