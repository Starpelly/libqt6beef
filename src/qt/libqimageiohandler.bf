using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QImageIOHandler__ImageOption
{
	Size = 0,
	ClipRect = 1,
	Description = 2,
	ScaledClipRect = 3,
	ScaledSize = 4,
	CompressionRatio = 5,
	Gamma = 6,
	Quality = 7,
	Name = 8,
	SubType = 9,
	IncrementalReading = 10,
	Endianness = 11,
	Animation = 12,
	BackgroundColor = 13,
	ImageFormat = 14,
	SupportedSubTypes = 15,
	OptimizedWrite = 16,
	ProgressiveScanWrite = 17,
	ImageTransformation = 18,
}
[AllowDuplicates]
public enum QImageIOHandler__Transformation
{
	TransformationNone = 0,
	TransformationMirror = 1,
	TransformationFlip = 2,
	TransformationRotate180 = 3,
	TransformationRotate90 = 4,
	TransformationMirrorAndRotate90 = 5,
	TransformationFlipAndRotate90 = 6,
	TransformationRotate270 = 7,
}
[AllowDuplicates]
public enum QImageIOPlugin__Capability
{
	CanRead = 1,
	CanWrite = 2,
	CanReadIncremental = 4,
}
public interface IQImageIOHandler
{
	void* NativePtr { get; }
}
public class QImageIOHandler : IQImageIOHandler
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QImageIOHandler_new();
	}
	
	public ~this()
	{
		CQt.QImageIOHandler_Delete(this.nativePtr);
	}
	
	public void SetDevice(IQIODevice device)
	{
		CQt.QImageIOHandler_SetDevice(this.nativePtr, (device == null) ? null : (void*)device.NativePtr);
	}
	
	public void* Device()
	{
		return CQt.QImageIOHandler_Device(this.nativePtr);
	}
	
	public void SetFormat(String format)
	{
		CQt.QImageIOHandler_SetFormat(this.nativePtr, libqt_string(format));
	}
	
	public void SetFormatWithFormat(String format)
	{
		CQt.QImageIOHandler_SetFormatWithFormat(this.nativePtr, libqt_string(format));
	}
	
	public libqt_string Format()
	{
		return CQt.QImageIOHandler_Format(this.nativePtr);
	}
	
	public virtual bool CanRead()
	{
		return CQt.QImageIOHandler_CanRead(this.nativePtr);
	}
	
	public virtual bool Read(IQImage image)
	{
		return CQt.QImageIOHandler_Read(this.nativePtr, (image == null) ? null : (void*)image.NativePtr);
	}
	
	public virtual bool Write(IQImage image)
	{
		return CQt.QImageIOHandler_Write(this.nativePtr, (image == default) ? default : (void*)image.NativePtr);
	}
	
	public virtual void Option(int64 option)
	{
		CQt.QImageIOHandler_Option(this.nativePtr, option);
	}
	
	public virtual void SetOption(int64 option, IQVariant value)
	{
		CQt.QImageIOHandler_SetOption(this.nativePtr, option, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public virtual bool SupportsOption(int64 option)
	{
		return CQt.QImageIOHandler_SupportsOption(this.nativePtr, option);
	}
	
	public virtual bool JumpToNextImage()
	{
		return CQt.QImageIOHandler_JumpToNextImage(this.nativePtr);
	}
	
	public virtual bool JumpToImage(int32 imageNumber)
	{
		return CQt.QImageIOHandler_JumpToImage(this.nativePtr, imageNumber);
	}
	
	public virtual int32 LoopCount()
	{
		return CQt.QImageIOHandler_LoopCount(this.nativePtr);
	}
	
	public virtual int32 ImageCount()
	{
		return CQt.QImageIOHandler_ImageCount(this.nativePtr);
	}
	
	public virtual int32 NextImageDelay()
	{
		return CQt.QImageIOHandler_NextImageDelay(this.nativePtr);
	}
	
	public virtual int32 CurrentImageNumber()
	{
		return CQt.QImageIOHandler_CurrentImageNumber(this.nativePtr);
	}
	
	public virtual void CurrentImageRect()
	{
		CQt.QImageIOHandler_CurrentImageRect(this.nativePtr);
	}
	
	public static bool AllocateImage(IQSize size, int64 format, IQImage image)
	{
		return CQt.QImageIOHandler_AllocateImage((size == default) ? default : (void)size.NativePtr, format, (image == null) ? null : (void*)image.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QImageIOHandler_new")]
	public static extern void* QImageIOHandler_new();
	[LinkName("QImageIOHandler_SetDevice")]
	public static extern void QImageIOHandler_SetDevice(void* c_this, void* device);
	[LinkName("QImageIOHandler_Device")]
	public static extern void* QImageIOHandler_Device(void* c_this);
	[LinkName("QImageIOHandler_SetFormat")]
	public static extern void QImageIOHandler_SetFormat(void* c_this, libqt_string format);
	[LinkName("QImageIOHandler_SetFormatWithFormat")]
	public static extern void QImageIOHandler_SetFormatWithFormat(void* c_this, libqt_string format);
	[LinkName("QImageIOHandler_Format")]
	public static extern libqt_string QImageIOHandler_Format(void* c_this);
	[LinkName("QImageIOHandler_CanRead")]
	public static extern bool QImageIOHandler_CanRead(void* c_this);
	[LinkName("QImageIOHandler_Read")]
	public static extern bool QImageIOHandler_Read(void* c_this, void* image);
	[LinkName("QImageIOHandler_Write")]
	public static extern bool QImageIOHandler_Write(void* c_this, void* image);
	[LinkName("QImageIOHandler_Option")]
	public static extern void QImageIOHandler_Option(void* c_this, int64 option);
	[LinkName("QImageIOHandler_SetOption")]
	public static extern void QImageIOHandler_SetOption(void* c_this, int64 option, void* value);
	[LinkName("QImageIOHandler_SupportsOption")]
	public static extern bool QImageIOHandler_SupportsOption(void* c_this, int64 option);
	[LinkName("QImageIOHandler_JumpToNextImage")]
	public static extern bool QImageIOHandler_JumpToNextImage(void* c_this);
	[LinkName("QImageIOHandler_JumpToImage")]
	public static extern bool QImageIOHandler_JumpToImage(void* c_this, int32 imageNumber);
	[LinkName("QImageIOHandler_LoopCount")]
	public static extern int32 QImageIOHandler_LoopCount(void* c_this);
	[LinkName("QImageIOHandler_ImageCount")]
	public static extern int32 QImageIOHandler_ImageCount(void* c_this);
	[LinkName("QImageIOHandler_NextImageDelay")]
	public static extern int32 QImageIOHandler_NextImageDelay(void* c_this);
	[LinkName("QImageIOHandler_CurrentImageNumber")]
	public static extern int32 QImageIOHandler_CurrentImageNumber(void* c_this);
	[LinkName("QImageIOHandler_CurrentImageRect")]
	public static extern void QImageIOHandler_CurrentImageRect(void* c_this);
	[LinkName("QImageIOHandler_AllocateImage")]
	public static extern bool QImageIOHandler_AllocateImage(void size, int64 format, void* image);
	/// Delete this object from C++ memory
	[LinkName("QImageIOHandler_Delete")]
	public static extern void QImageIOHandler_Delete(void* self);
}
public interface IQImageIOPlugin
{
	void* NativePtr { get; }
}
public class QImageIOPlugin : IQImageIOPlugin, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QImageIOPlugin_new();
	}
	
	public ~this()
	{
		CQt.QImageIOPlugin_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QImageIOPlugin_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QImageIOPlugin_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QImageIOPlugin_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QImageIOPlugin_Tr(s);
	}
	
	public virtual int64 Capabilities(IQIODevice device, String format)
	{
		return CQt.QImageIOPlugin_Capabilities(this.nativePtr, (device == null) ? null : (void*)device.NativePtr, libqt_string(format));
	}
	
	public virtual void* Create(IQIODevice device, String format)
	{
		return CQt.QImageIOPlugin_Create(this.nativePtr, (device == null) ? null : (void*)device.NativePtr, libqt_string(format));
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QImageIOPlugin_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QImageIOPlugin_Tr3(s, c, n);
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
	
}
extension CQt
{
	[LinkName("QImageIOPlugin_new")]
	public static extern void* QImageIOPlugin_new();
	[LinkName("QImageIOPlugin_new2")]
	public static extern void* QImageIOPlugin_new2(void* parent);
	[LinkName("QImageIOPlugin_MetaObject")]
	public static extern void* QImageIOPlugin_MetaObject(void* c_this);
	[LinkName("QImageIOPlugin_Metacast")]
	public static extern void* QImageIOPlugin_Metacast(void* c_this, char8* param1);
	[LinkName("QImageIOPlugin_Metacall")]
	public static extern int32 QImageIOPlugin_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QImageIOPlugin_Tr")]
	public static extern libqt_string QImageIOPlugin_Tr(char8* s);
	[LinkName("QImageIOPlugin_Capabilities")]
	public static extern int64 QImageIOPlugin_Capabilities(void* c_this, void* device, libqt_string format);
	[LinkName("QImageIOPlugin_Create")]
	public static extern void* QImageIOPlugin_Create(void* c_this, void* device, libqt_string format);
	[LinkName("QImageIOPlugin_Tr2")]
	public static extern libqt_string QImageIOPlugin_Tr2(char8* s, char8* c);
	[LinkName("QImageIOPlugin_Tr3")]
	public static extern libqt_string QImageIOPlugin_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QImageIOPlugin_Delete")]
	public static extern void QImageIOPlugin_Delete(void* self);
}