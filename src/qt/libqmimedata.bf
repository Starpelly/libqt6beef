using System;
using System.Interop;
namespace Qt;

public interface IQMimeData
{
	void* NativePtr { get; }
}
public class QMimeData : IQMimeData, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QMimeData_new();
	}
	
	public ~this()
	{
		CQt.QMimeData_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QMimeData_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QMimeData_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QMimeData_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QMimeData_Tr(s);
	}
	
	public void[] Urls()
	{
		return CQt.QMimeData_Urls(this.nativePtr);
	}
	
	public void SetUrls(IQUrl[] urls)
	{
		CQt.QMimeData_SetUrls(this.nativePtr, null);
	}
	
	public bool HasUrls()
	{
		return CQt.QMimeData_HasUrls(this.nativePtr);
	}
	
	public libqt_string Text()
	{
		return CQt.QMimeData_Text(this.nativePtr);
	}
	
	public void SetText(String text)
	{
		CQt.QMimeData_SetText(this.nativePtr, libqt_string(text));
	}
	
	public bool HasText()
	{
		return CQt.QMimeData_HasText(this.nativePtr);
	}
	
	public libqt_string Html()
	{
		return CQt.QMimeData_Html(this.nativePtr);
	}
	
	public void SetHtml(String html)
	{
		CQt.QMimeData_SetHtml(this.nativePtr, libqt_string(html));
	}
	
	public bool HasHtml()
	{
		return CQt.QMimeData_HasHtml(this.nativePtr);
	}
	
	public void ImageData()
	{
		CQt.QMimeData_ImageData(this.nativePtr);
	}
	
	public void SetImageData(IQVariant image)
	{
		CQt.QMimeData_SetImageData(this.nativePtr, (image == default) ? default : (void*)image.NativePtr);
	}
	
	public bool HasImage()
	{
		return CQt.QMimeData_HasImage(this.nativePtr);
	}
	
	public void ColorData()
	{
		CQt.QMimeData_ColorData(this.nativePtr);
	}
	
	public void SetColorData(IQVariant color)
	{
		CQt.QMimeData_SetColorData(this.nativePtr, (color == default) ? default : (void*)color.NativePtr);
	}
	
	public bool HasColor()
	{
		return CQt.QMimeData_HasColor(this.nativePtr);
	}
	
	public libqt_string Data(String mimetype)
	{
		return CQt.QMimeData_Data(this.nativePtr, libqt_string(mimetype));
	}
	
	public void SetData(String mimetype, String data)
	{
		CQt.QMimeData_SetData(this.nativePtr, libqt_string(mimetype), libqt_string(data));
	}
	
	public void RemoveFormat(String mimetype)
	{
		CQt.QMimeData_RemoveFormat(this.nativePtr, libqt_string(mimetype));
	}
	
	public virtual bool HasFormat(String mimetype)
	{
		return CQt.QMimeData_HasFormat(this.nativePtr, libqt_string(mimetype));
	}
	
	public virtual libqt_string[] Formats()
	{
		return CQt.QMimeData_Formats(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QMimeData_Clear(this.nativePtr);
	}
	
	public virtual void RetrieveData(String mimetype, IQMetaType preferredType)
	{
		CQt.QMimeData_RetrieveData(this.nativePtr, libqt_string(mimetype), (preferredType == default) ? default : (void)preferredType.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QMimeData_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QMimeData_Tr3(s, c, n);
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
	[LinkName("QMimeData_new")]
	public static extern void* QMimeData_new();
	[LinkName("QMimeData_MetaObject")]
	public static extern void* QMimeData_MetaObject(void* c_this);
	[LinkName("QMimeData_Metacast")]
	public static extern void* QMimeData_Metacast(void* c_this, char8* param1);
	[LinkName("QMimeData_Metacall")]
	public static extern int32 QMimeData_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QMimeData_Tr")]
	public static extern libqt_string QMimeData_Tr(char8* s);
	[LinkName("QMimeData_Urls")]
	public static extern void[] QMimeData_Urls(void* c_this);
	[LinkName("QMimeData_SetUrls")]
	public static extern void QMimeData_SetUrls(void* c_this, void[] urls);
	[LinkName("QMimeData_HasUrls")]
	public static extern bool QMimeData_HasUrls(void* c_this);
	[LinkName("QMimeData_Text")]
	public static extern libqt_string QMimeData_Text(void* c_this);
	[LinkName("QMimeData_SetText")]
	public static extern void QMimeData_SetText(void* c_this, libqt_string text);
	[LinkName("QMimeData_HasText")]
	public static extern bool QMimeData_HasText(void* c_this);
	[LinkName("QMimeData_Html")]
	public static extern libqt_string QMimeData_Html(void* c_this);
	[LinkName("QMimeData_SetHtml")]
	public static extern void QMimeData_SetHtml(void* c_this, libqt_string html);
	[LinkName("QMimeData_HasHtml")]
	public static extern bool QMimeData_HasHtml(void* c_this);
	[LinkName("QMimeData_ImageData")]
	public static extern void QMimeData_ImageData(void* c_this);
	[LinkName("QMimeData_SetImageData")]
	public static extern void QMimeData_SetImageData(void* c_this, void* image);
	[LinkName("QMimeData_HasImage")]
	public static extern bool QMimeData_HasImage(void* c_this);
	[LinkName("QMimeData_ColorData")]
	public static extern void QMimeData_ColorData(void* c_this);
	[LinkName("QMimeData_SetColorData")]
	public static extern void QMimeData_SetColorData(void* c_this, void* color);
	[LinkName("QMimeData_HasColor")]
	public static extern bool QMimeData_HasColor(void* c_this);
	[LinkName("QMimeData_Data")]
	public static extern libqt_string QMimeData_Data(void* c_this, libqt_string mimetype);
	[LinkName("QMimeData_SetData")]
	public static extern void QMimeData_SetData(void* c_this, libqt_string mimetype, libqt_string data);
	[LinkName("QMimeData_RemoveFormat")]
	public static extern void QMimeData_RemoveFormat(void* c_this, libqt_string mimetype);
	[LinkName("QMimeData_HasFormat")]
	public static extern bool QMimeData_HasFormat(void* c_this, libqt_string mimetype);
	[LinkName("QMimeData_Formats")]
	public static extern libqt_string[] QMimeData_Formats(void* c_this);
	[LinkName("QMimeData_Clear")]
	public static extern void QMimeData_Clear(void* c_this);
	[LinkName("QMimeData_RetrieveData")]
	public static extern void QMimeData_RetrieveData(void* c_this, libqt_string mimetype, void preferredType);
	[LinkName("QMimeData_Tr2")]
	public static extern libqt_string QMimeData_Tr2(char8* s, char8* c);
	[LinkName("QMimeData_Tr3")]
	public static extern libqt_string QMimeData_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QMimeData_Delete")]
	public static extern void QMimeData_Delete(void* self);
}