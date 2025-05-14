using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QClipboard__Mode
{
	Clipboard = 0,
	Selection = 1,
	FindBuffer = 2,
	LastMode = 2,
}
public interface IQClipboard
{
	void* NativePtr { get; }
}
public struct QClipboardPtr : IQClipboard, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void* MetaObject()
	{
		return CQt.QClipboard_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QClipboard_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QClipboard_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QClipboard_Tr(s);
	}
	
	public void Clear()
	{
		CQt.QClipboard_Clear(this.nativePtr);
	}
	
	public bool SupportsSelection()
	{
		return CQt.QClipboard_SupportsSelection(this.nativePtr);
	}
	
	public bool SupportsFindBuffer()
	{
		return CQt.QClipboard_SupportsFindBuffer(this.nativePtr);
	}
	
	public bool OwnsSelection()
	{
		return CQt.QClipboard_OwnsSelection(this.nativePtr);
	}
	
	public bool OwnsClipboard()
	{
		return CQt.QClipboard_OwnsClipboard(this.nativePtr);
	}
	
	public bool OwnsFindBuffer()
	{
		return CQt.QClipboard_OwnsFindBuffer(this.nativePtr);
	}
	
	public libqt_string Text()
	{
		return CQt.QClipboard_Text(this.nativePtr);
	}
	
	public libqt_string TextWithSubtype(String subtype)
	{
		return CQt.QClipboard_TextWithSubtype(this.nativePtr, libqt_string(subtype));
	}
	
	public void SetText(String param1)
	{
		CQt.QClipboard_SetText(this.nativePtr, libqt_string(param1));
	}
	
	public void* MimeData()
	{
		return CQt.QClipboard_MimeData(this.nativePtr);
	}
	
	public void SetMimeData(IQMimeData data)
	{
		CQt.QClipboard_SetMimeData(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr);
	}
	
	public void Image()
	{
		CQt.QClipboard_Image(this.nativePtr);
	}
	
	public void Pixmap()
	{
		CQt.QClipboard_Pixmap(this.nativePtr);
	}
	
	public void SetImage(IQImage param1)
	{
		CQt.QClipboard_SetImage(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void SetPixmap(IQPixmap param1)
	{
		CQt.QClipboard_SetPixmap(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QClipboard_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QClipboard_Tr3(s, c, n);
	}
	
	public void Clear1(int64 mode)
	{
		CQt.QClipboard_Clear1(this.nativePtr, (int64)mode);
	}
	
	public libqt_string Text1(int64 mode)
	{
		return CQt.QClipboard_Text1(this.nativePtr, (int64)mode);
	}
	
	public libqt_string Text2(String subtype, int64 mode)
	{
		return CQt.QClipboard_Text2(this.nativePtr, libqt_string(subtype), (int64)mode);
	}
	
	public void SetText2(String param1, int64 mode)
	{
		CQt.QClipboard_SetText2(this.nativePtr, libqt_string(param1), (int64)mode);
	}
	
	public void* MimeData1(int64 mode)
	{
		return CQt.QClipboard_MimeData1(this.nativePtr, (int64)mode);
	}
	
	public void SetMimeData2(IQMimeData data, int64 mode)
	{
		CQt.QClipboard_SetMimeData2(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr, (int64)mode);
	}
	
	public void Image1(int64 mode)
	{
		CQt.QClipboard_Image1(this.nativePtr, (int64)mode);
	}
	
	public void Pixmap1(int64 mode)
	{
		CQt.QClipboard_Pixmap1(this.nativePtr, (int64)mode);
	}
	
	public void SetImage2(IQImage param1, int64 mode)
	{
		CQt.QClipboard_SetImage2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (int64)mode);
	}
	
	public void SetPixmap2(IQPixmap param1, int64 mode)
	{
		CQt.QClipboard_SetPixmap2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (int64)mode);
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
public class QClipboard
{
	public QClipboardPtr handle;
	
	public static implicit operator QClipboardPtr(Self self)
	{
		return self.handle;
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
		return QClipboardPtr.Tr(s);
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
	public bool SupportsSelection()
	{
		return this.handle.SupportsSelection();
	}
	
	public bool SupportsFindBuffer()
	{
		return this.handle.SupportsFindBuffer();
	}
	
	public bool OwnsSelection()
	{
		return this.handle.OwnsSelection();
	}
	
	public bool OwnsClipboard()
	{
		return this.handle.OwnsClipboard();
	}
	
	public bool OwnsFindBuffer()
	{
		return this.handle.OwnsFindBuffer();
	}
	
	public libqt_string Text()
	{
		return this.handle.Text();
	}
	
	public libqt_string TextWithSubtype(String subtype)
	{
		return this.handle.TextWithSubtype(subtype);
	}
	
	public void SetText(String param1)
	{
		this.handle.SetText(param1);
	}
	
	public void* MimeData()
	{
		return this.handle.MimeData();
	}
	
	public void SetMimeData(IQMimeData data)
	{
		this.handle.SetMimeData(data);
	}
	
	public void Image()
	{
		this.handle.Image();
	}
	
	public void Pixmap()
	{
		this.handle.Pixmap();
	}
	
	public void SetImage(IQImage param1)
	{
		this.handle.SetImage(param1);
	}
	
	public void SetPixmap(IQPixmap param1)
	{
		this.handle.SetPixmap(param1);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QClipboardPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QClipboardPtr.Tr3(s, c, n);
	}
	
	public void Clear1(int64 mode)
	{
		this.handle.Clear1(mode);
	}
	
	public libqt_string Text1(int64 mode)
	{
		return this.handle.Text1(mode);
	}
	
	public libqt_string Text2(String subtype, int64 mode)
	{
		return this.handle.Text2(subtype, mode);
	}
	
	public void SetText2(String param1, int64 mode)
	{
		this.handle.SetText2(param1, mode);
	}
	
	public void* MimeData1(int64 mode)
	{
		return this.handle.MimeData1(mode);
	}
	
	public void SetMimeData2(IQMimeData data, int64 mode)
	{
		this.handle.SetMimeData2(data, mode);
	}
	
	public void Image1(int64 mode)
	{
		this.handle.Image1(mode);
	}
	
	public void Pixmap1(int64 mode)
	{
		this.handle.Pixmap1(mode);
	}
	
	public void SetImage2(IQImage param1, int64 mode)
	{
		this.handle.SetImage2(param1, mode);
	}
	
	public void SetPixmap2(IQPixmap param1, int64 mode)
	{
		this.handle.SetPixmap2(param1, mode);
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
		QClipboardPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QClipboardPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QClipboardPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QClipboardPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QClipboard_MetaObject")]
	public static extern void* QClipboard_MetaObject(void* c_this);
	[LinkName("QClipboard_Metacast")]
	public static extern void* QClipboard_Metacast(void* c_this, char8* param1);
	[LinkName("QClipboard_Metacall")]
	public static extern int32 QClipboard_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QClipboard_Tr")]
	public static extern libqt_string QClipboard_Tr(char8* s);
	[LinkName("QClipboard_Clear")]
	public static extern void QClipboard_Clear(void* c_this);
	[LinkName("QClipboard_SupportsSelection")]
	public static extern bool QClipboard_SupportsSelection(void* c_this);
	[LinkName("QClipboard_SupportsFindBuffer")]
	public static extern bool QClipboard_SupportsFindBuffer(void* c_this);
	[LinkName("QClipboard_OwnsSelection")]
	public static extern bool QClipboard_OwnsSelection(void* c_this);
	[LinkName("QClipboard_OwnsClipboard")]
	public static extern bool QClipboard_OwnsClipboard(void* c_this);
	[LinkName("QClipboard_OwnsFindBuffer")]
	public static extern bool QClipboard_OwnsFindBuffer(void* c_this);
	[LinkName("QClipboard_Text")]
	public static extern libqt_string QClipboard_Text(void* c_this);
	[LinkName("QClipboard_TextWithSubtype")]
	public static extern libqt_string QClipboard_TextWithSubtype(void* c_this, libqt_string subtype);
	[LinkName("QClipboard_SetText")]
	public static extern void QClipboard_SetText(void* c_this, libqt_string param1);
	[LinkName("QClipboard_MimeData")]
	public static extern void* QClipboard_MimeData(void* c_this);
	[LinkName("QClipboard_SetMimeData")]
	public static extern void QClipboard_SetMimeData(void* c_this, void* data);
	[LinkName("QClipboard_Image")]
	public static extern void QClipboard_Image(void* c_this);
	[LinkName("QClipboard_Pixmap")]
	public static extern void QClipboard_Pixmap(void* c_this);
	[LinkName("QClipboard_SetImage")]
	public static extern void QClipboard_SetImage(void* c_this, void* param1);
	[LinkName("QClipboard_SetPixmap")]
	public static extern void QClipboard_SetPixmap(void* c_this, void* param1);
	[LinkName("QClipboard_Connect_Changed")]
	public static extern void QClipboard_Connect_Changed(void* c_this, c_intptr slot);
	[LinkName("QClipboard_Connect_SelectionChanged")]
	public static extern void QClipboard_Connect_SelectionChanged(void* c_this, c_intptr slot);
	[LinkName("QClipboard_Connect_FindBufferChanged")]
	public static extern void QClipboard_Connect_FindBufferChanged(void* c_this, c_intptr slot);
	[LinkName("QClipboard_Connect_DataChanged")]
	public static extern void QClipboard_Connect_DataChanged(void* c_this, c_intptr slot);
	[LinkName("QClipboard_Tr2")]
	public static extern libqt_string QClipboard_Tr2(char8* s, char8* c);
	[LinkName("QClipboard_Tr3")]
	public static extern libqt_string QClipboard_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QClipboard_Clear1")]
	public static extern void QClipboard_Clear1(void* c_this, int64 mode);
	[LinkName("QClipboard_Text1")]
	public static extern libqt_string QClipboard_Text1(void* c_this, int64 mode);
	[LinkName("QClipboard_Text2")]
	public static extern libqt_string QClipboard_Text2(void* c_this, libqt_string subtype, int64 mode);
	[LinkName("QClipboard_SetText2")]
	public static extern void QClipboard_SetText2(void* c_this, libqt_string param1, int64 mode);
	[LinkName("QClipboard_MimeData1")]
	public static extern void* QClipboard_MimeData1(void* c_this, int64 mode);
	[LinkName("QClipboard_SetMimeData2")]
	public static extern void QClipboard_SetMimeData2(void* c_this, void* data, int64 mode);
	[LinkName("QClipboard_Image1")]
	public static extern void QClipboard_Image1(void* c_this, int64 mode);
	[LinkName("QClipboard_Pixmap1")]
	public static extern void QClipboard_Pixmap1(void* c_this, int64 mode);
	[LinkName("QClipboard_SetImage2")]
	public static extern void QClipboard_SetImage2(void* c_this, void* param1, int64 mode);
	[LinkName("QClipboard_SetPixmap2")]
	public static extern void QClipboard_SetPixmap2(void* c_this, void* param1, int64 mode);
}