using System;
using System.Interop;
namespace Qt;

public class QMimeData
{
	protected void* nativePtr;
	
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
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QMimeData_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QMimeData_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QMimeData_Tr(s);
	}
	
	public void[] Urls()
	{
		return CQt.QMimeData_Urls(this.nativePtr);
	}
	
	public void SetUrls(void[] urls)
	{
		CQt.QMimeData_SetUrls(this.nativePtr, urls);
	}
	
	public bool HasUrls()
	{
		return CQt.QMimeData_HasUrls(this.nativePtr);
	}
	
	public libqt_string Text()
	{
		return CQt.QMimeData_Text(this.nativePtr);
	}
	
	public void SetText(libqt_string text)
	{
		CQt.QMimeData_SetText(this.nativePtr, text);
	}
	
	public bool HasText()
	{
		return CQt.QMimeData_HasText(this.nativePtr);
	}
	
	public libqt_string Html()
	{
		return CQt.QMimeData_Html(this.nativePtr);
	}
	
	public void SetHtml(libqt_string html)
	{
		CQt.QMimeData_SetHtml(this.nativePtr, html);
	}
	
	public bool HasHtml()
	{
		return CQt.QMimeData_HasHtml(this.nativePtr);
	}
	
	public void ImageData()
	{
		CQt.QMimeData_ImageData(this.nativePtr);
	}
	
	public void SetImageData(void* image)
	{
		CQt.QMimeData_SetImageData(this.nativePtr, image);
	}
	
	public bool HasImage()
	{
		return CQt.QMimeData_HasImage(this.nativePtr);
	}
	
	public void ColorData()
	{
		CQt.QMimeData_ColorData(this.nativePtr);
	}
	
	public void SetColorData(void* color)
	{
		CQt.QMimeData_SetColorData(this.nativePtr, color);
	}
	
	public bool HasColor()
	{
		return CQt.QMimeData_HasColor(this.nativePtr);
	}
	
	public libqt_string Data(libqt_string mimetype)
	{
		return CQt.QMimeData_Data(this.nativePtr, mimetype);
	}
	
	public void SetData(libqt_string mimetype, libqt_string data)
	{
		CQt.QMimeData_SetData(this.nativePtr, mimetype, data);
	}
	
	public void RemoveFormat(libqt_string mimetype)
	{
		CQt.QMimeData_RemoveFormat(this.nativePtr, mimetype);
	}
	
	public virtual bool HasFormat(libqt_string mimetype)
	{
		return CQt.QMimeData_HasFormat(this.nativePtr, mimetype);
	}
	
	public virtual libqt_string[] Formats()
	{
		return CQt.QMimeData_Formats(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QMimeData_Clear(this.nativePtr);
	}
	
	public virtual void RetrieveData(libqt_string mimetype, void preferredType)
	{
		CQt.QMimeData_RetrieveData(this.nativePtr, mimetype, preferredType);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QMimeData_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QMimeData_Tr3(s, c, n);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QObject_Event(this.nativePtr, event);
	}
	
	public virtual bool EventFilter(void* watched, void* event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(void name)
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
	
	public void MoveToThread(void* thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, thread);
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
	
	public void SetParent(void* parent)
	{
		CQt.QObject_SetParent(this.nativePtr, parent);
	}
	
	public void InstallEventFilter(void* filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveEventFilter(void* obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, obj);
	}
	
	public static QMetaObject__Connection Connect(void* sender, void* signal, void* receiver, void* method)
	{
		return CQt.QObject_Connect(sender, signal, receiver, method);
	}
	
	public QMetaObject__Connection Connect2(void* sender, char8[] signal, char8[] member)
	{
		return CQt.QObject_Connect2(this.nativePtr, sender, signal, member);
	}
	
	public static bool Disconnect(void* sender, void* signal, void* receiver, void* member)
	{
		return CQt.QObject_Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8[] name, void* value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, value);
	}
	
	public void Property(char8[] name)
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
	
	public bool Inherits(char8[] classname)
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
	
	public static QMetaObject__Connection Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal)
	{
		return CQt.QObject_Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public QMetaObject__Connection Connect4(void* sender, char8[] signal, char8[] member, int64 typeVal)
	{
		return CQt.QObject_Connect4(this.nativePtr, sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QMimeData_new")]
	public static extern void* QMimeData_new();
	[LinkName("QMimeData_MetaObject")]
	public static extern void* QMimeData_MetaObject(void* c_this);
	[LinkName("QMimeData_Metacast")]
	public static extern void* QMimeData_Metacast(void* c_this, char8[] param1);
	[LinkName("QMimeData_Metacall")]
	public static extern int32 QMimeData_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QMimeData_Tr")]
	public static extern libqt_string QMimeData_Tr(char8[] s);
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
	public static extern libqt_string QMimeData_Tr2(char8[] s, char8[] c);
	[LinkName("QMimeData_Tr3")]
	public static extern libqt_string QMimeData_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QMimeData_Delete")]
	public static extern void QMimeData_Delete(void* self);
}