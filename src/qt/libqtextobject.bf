using System;
using System.Interop;
namespace Qt;

public interface IQTextObject
{
	void* NativePtr { get; }
}
public struct QTextObjectPtr : IQTextObject, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void* MetaObject()
	{
		return CQt.QTextObject_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QTextObject_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QTextObject_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QTextObject_Tr(s);
	}
	
	public void Format()
	{
		CQt.QTextObject_Format(this.nativePtr);
	}
	
	public int32 FormatIndex()
	{
		return CQt.QTextObject_FormatIndex(this.nativePtr);
	}
	
	public void* Document()
	{
		return CQt.QTextObject_Document(this.nativePtr);
	}
	
	public int32 ObjectIndex()
	{
		return CQt.QTextObject_ObjectIndex(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QTextObject_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QTextObject_Tr3(s, c, n);
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
public class QTextObject
{
	public QTextObjectPtr handle;
	
	public static implicit operator QTextObjectPtr(Self self)
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
		return QTextObjectPtr.Tr(s);
	}
	
	public void Format()
	{
		this.handle.Format();
	}
	
	public int32 FormatIndex()
	{
		return this.handle.FormatIndex();
	}
	
	public void* Document()
	{
		return this.handle.Document();
	}
	
	public int32 ObjectIndex()
	{
		return this.handle.ObjectIndex();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QTextObjectPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QTextObjectPtr.Tr3(s, c, n);
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
		QTextObjectPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QTextObjectPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QTextObjectPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QTextObjectPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QTextObject_MetaObject")]
	public static extern void* QTextObject_MetaObject(void* c_this);
	[LinkName("QTextObject_Metacast")]
	public static extern void* QTextObject_Metacast(void* c_this, char8* param1);
	[LinkName("QTextObject_Metacall")]
	public static extern int32 QTextObject_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QTextObject_Tr")]
	public static extern libqt_string QTextObject_Tr(char8* s);
	[LinkName("QTextObject_SetFormat")]
	public static extern void QTextObject_SetFormat(void* c_this, void* format);
	[LinkName("QTextObject_Format")]
	public static extern void QTextObject_Format(void* c_this);
	[LinkName("QTextObject_FormatIndex")]
	public static extern int32 QTextObject_FormatIndex(void* c_this);
	[LinkName("QTextObject_Document")]
	public static extern void* QTextObject_Document(void* c_this);
	[LinkName("QTextObject_ObjectIndex")]
	public static extern int32 QTextObject_ObjectIndex(void* c_this);
	[LinkName("QTextObject_Tr2")]
	public static extern libqt_string QTextObject_Tr2(char8* s, char8* c);
	[LinkName("QTextObject_Tr3")]
	public static extern libqt_string QTextObject_Tr3(char8* s, char8* c, int32 n);
}
public interface IQTextBlockGroup
{
	void* NativePtr { get; }
}
public struct QTextBlockGroupPtr : IQTextBlockGroup, IQTextObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void* MetaObject()
	{
		return CQt.QTextBlockGroup_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QTextBlockGroup_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QTextBlockGroup_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QTextBlockGroup_Tr(s);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QTextBlockGroup_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QTextBlockGroup_Tr3(s, c, n);
	}
	
	public void Format()
	{
		CQt.QTextObject_Format(this.nativePtr);
	}
	
	public int32 FormatIndex()
	{
		return CQt.QTextObject_FormatIndex(this.nativePtr);
	}
	
	public void* Document()
	{
		return CQt.QTextObject_Document(this.nativePtr);
	}
	
	public int32 ObjectIndex()
	{
		return CQt.QTextObject_ObjectIndex(this.nativePtr);
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
public class QTextBlockGroup
{
	public QTextBlockGroupPtr handle;
	
	public static implicit operator QTextBlockGroupPtr(Self self)
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
		return QTextBlockGroupPtr.Tr(s);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QTextBlockGroupPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QTextBlockGroupPtr.Tr3(s, c, n);
	}
	
	public void Format()
	{
		this.handle.Format();
	}
	
	public int32 FormatIndex()
	{
		return this.handle.FormatIndex();
	}
	
	public void* Document()
	{
		return this.handle.Document();
	}
	
	public int32 ObjectIndex()
	{
		return this.handle.ObjectIndex();
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
		QTextBlockGroupPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QTextBlockGroupPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QTextBlockGroupPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QTextBlockGroupPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QTextBlockGroup_MetaObject")]
	public static extern void* QTextBlockGroup_MetaObject(void* c_this);
	[LinkName("QTextBlockGroup_Metacast")]
	public static extern void* QTextBlockGroup_Metacast(void* c_this, char8* param1);
	[LinkName("QTextBlockGroup_Metacall")]
	public static extern int32 QTextBlockGroup_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QTextBlockGroup_Tr")]
	public static extern libqt_string QTextBlockGroup_Tr(char8* s);
	[LinkName("QTextBlockGroup_BlockInserted")]
	public static extern void QTextBlockGroup_BlockInserted(void* c_this, void* block);
	[LinkName("QTextBlockGroup_BlockRemoved")]
	public static extern void QTextBlockGroup_BlockRemoved(void* c_this, void* block);
	[LinkName("QTextBlockGroup_BlockFormatChanged")]
	public static extern void QTextBlockGroup_BlockFormatChanged(void* c_this, void* block);
	[LinkName("QTextBlockGroup_BlockList")]
	public static extern void[] QTextBlockGroup_BlockList(void* c_this);
	[LinkName("QTextBlockGroup_Tr2")]
	public static extern libqt_string QTextBlockGroup_Tr2(char8* s, char8* c);
	[LinkName("QTextBlockGroup_Tr3")]
	public static extern libqt_string QTextBlockGroup_Tr3(char8* s, char8* c, int32 n);
}
public interface IQTextFrameLayoutData
{
	void* NativePtr { get; }
}
public struct QTextFrameLayoutDataPtr : IQTextFrameLayoutData, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void Dispose()
	{
		CQt.QTextFrameLayoutData_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQTextFrameLayoutData param1)
	{
		CQt.QTextFrameLayoutData_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
}
public class QTextFrameLayoutData
{
	public QTextFrameLayoutDataPtr handle;
	
	public static implicit operator QTextFrameLayoutDataPtr(Self self)
	{
		return self.handle;
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQTextFrameLayoutData param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
}
extension CQt
{
	[LinkName("QTextFrameLayoutData_OperatorAssign")]
	public static extern void QTextFrameLayoutData_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QTextFrameLayoutData_Delete")]
	public static extern void QTextFrameLayoutData_Delete(void* self);
}
public interface IQTextFrame
{
	void* NativePtr { get; }
}
public struct QTextFramePtr : IQTextFrame, IDisposable, IQTextObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQTextDocument doc)
	{
		return .(CQt.QTextFrame_new((doc == default || doc.NativePtr == default) ? default : doc.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QTextFrame_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QTextFrame_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QTextFrame_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QTextFrame_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QTextFrame_Tr(s);
	}
	
	public void SetFrameFormat(IQTextFrameFormat format)
	{
		CQt.QTextFrame_SetFrameFormat(this.nativePtr, (format == default || format.NativePtr == default) ? default : format.NativePtr);
	}
	
	public void FrameFormat()
	{
		CQt.QTextFrame_FrameFormat(this.nativePtr);
	}
	
	public void FirstCursorPosition()
	{
		CQt.QTextFrame_FirstCursorPosition(this.nativePtr);
	}
	
	public void LastCursorPosition()
	{
		CQt.QTextFrame_LastCursorPosition(this.nativePtr);
	}
	
	public int32 FirstPosition()
	{
		return CQt.QTextFrame_FirstPosition(this.nativePtr);
	}
	
	public int32 LastPosition()
	{
		return CQt.QTextFrame_LastPosition(this.nativePtr);
	}
	
	public void* LayoutData()
	{
		return CQt.QTextFrame_LayoutData(this.nativePtr);
	}
	
	public void SetLayoutData(IQTextFrameLayoutData data)
	{
		CQt.QTextFrame_SetLayoutData(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr);
	}
	
	public void*[] ChildFrames()
	{
		return CQt.QTextFrame_ChildFrames(this.nativePtr);
	}
	
	public void* ParentFrame()
	{
		return CQt.QTextFrame_ParentFrame(this.nativePtr);
	}
	
	public void Begin()
	{
		CQt.QTextFrame_Begin(this.nativePtr);
	}
	
	public void End()
	{
		CQt.QTextFrame_End(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QTextFrame_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QTextFrame_Tr3(s, c, n);
	}
	
	public void Format()
	{
		CQt.QTextObject_Format(this.nativePtr);
	}
	
	public int32 FormatIndex()
	{
		return CQt.QTextObject_FormatIndex(this.nativePtr);
	}
	
	public void* Document()
	{
		return CQt.QTextObject_Document(this.nativePtr);
	}
	
	public int32 ObjectIndex()
	{
		return CQt.QTextObject_ObjectIndex(this.nativePtr);
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
public class QTextFrame
{
	public QTextFramePtr handle;
	
	public static implicit operator QTextFramePtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQTextDocument doc)
	{
		this.handle = QTextFramePtr.New(doc);
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
		return QTextFramePtr.Tr(s);
	}
	
	public void SetFrameFormat(IQTextFrameFormat format)
	{
		this.handle.SetFrameFormat(format);
	}
	
	public void FrameFormat()
	{
		this.handle.FrameFormat();
	}
	
	public void FirstCursorPosition()
	{
		this.handle.FirstCursorPosition();
	}
	
	public void LastCursorPosition()
	{
		this.handle.LastCursorPosition();
	}
	
	public int32 FirstPosition()
	{
		return this.handle.FirstPosition();
	}
	
	public int32 LastPosition()
	{
		return this.handle.LastPosition();
	}
	
	public void* LayoutData()
	{
		return this.handle.LayoutData();
	}
	
	public void SetLayoutData(IQTextFrameLayoutData data)
	{
		this.handle.SetLayoutData(data);
	}
	
	public void*[] ChildFrames()
	{
		return this.handle.ChildFrames();
	}
	
	public void* ParentFrame()
	{
		return this.handle.ParentFrame();
	}
	
	public void Begin()
	{
		this.handle.Begin();
	}
	
	public void End()
	{
		this.handle.End();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QTextFramePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QTextFramePtr.Tr3(s, c, n);
	}
	
	public void Format()
	{
		this.handle.Format();
	}
	
	public int32 FormatIndex()
	{
		return this.handle.FormatIndex();
	}
	
	public void* Document()
	{
		return this.handle.Document();
	}
	
	public int32 ObjectIndex()
	{
		return this.handle.ObjectIndex();
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
		QTextFramePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QTextFramePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QTextFramePtr.DisconnectWithQMetaObjectConnection(param1);
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
		QTextFramePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QTextFrame_new")]
	public static extern void* QTextFrame_new(void* doc);
	[LinkName("QTextFrame_MetaObject")]
	public static extern void* QTextFrame_MetaObject(void* c_this);
	[LinkName("QTextFrame_Metacast")]
	public static extern void* QTextFrame_Metacast(void* c_this, char8* param1);
	[LinkName("QTextFrame_Metacall")]
	public static extern int32 QTextFrame_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QTextFrame_Tr")]
	public static extern libqt_string QTextFrame_Tr(char8* s);
	[LinkName("QTextFrame_SetFrameFormat")]
	public static extern void QTextFrame_SetFrameFormat(void* c_this, void* format);
	[LinkName("QTextFrame_FrameFormat")]
	public static extern void QTextFrame_FrameFormat(void* c_this);
	[LinkName("QTextFrame_FirstCursorPosition")]
	public static extern void QTextFrame_FirstCursorPosition(void* c_this);
	[LinkName("QTextFrame_LastCursorPosition")]
	public static extern void QTextFrame_LastCursorPosition(void* c_this);
	[LinkName("QTextFrame_FirstPosition")]
	public static extern int32 QTextFrame_FirstPosition(void* c_this);
	[LinkName("QTextFrame_LastPosition")]
	public static extern int32 QTextFrame_LastPosition(void* c_this);
	[LinkName("QTextFrame_LayoutData")]
	public static extern void* QTextFrame_LayoutData(void* c_this);
	[LinkName("QTextFrame_SetLayoutData")]
	public static extern void QTextFrame_SetLayoutData(void* c_this, void* data);
	[LinkName("QTextFrame_ChildFrames")]
	public static extern void*[] QTextFrame_ChildFrames(void* c_this);
	[LinkName("QTextFrame_ParentFrame")]
	public static extern void* QTextFrame_ParentFrame(void* c_this);
	[LinkName("QTextFrame_Begin")]
	public static extern void QTextFrame_Begin(void* c_this);
	[LinkName("QTextFrame_End")]
	public static extern void QTextFrame_End(void* c_this);
	[LinkName("QTextFrame_Tr2")]
	public static extern libqt_string QTextFrame_Tr2(char8* s, char8* c);
	[LinkName("QTextFrame_Tr3")]
	public static extern libqt_string QTextFrame_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QTextFrame_Delete")]
	public static extern void QTextFrame_Delete(void* self);
}
public interface IQTextBlockUserData
{
	void* NativePtr { get; }
}
public struct QTextBlockUserDataPtr : IQTextBlockUserData, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void Dispose()
	{
		CQt.QTextBlockUserData_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQTextBlockUserData param1)
	{
		CQt.QTextBlockUserData_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
}
public class QTextBlockUserData
{
	public QTextBlockUserDataPtr handle;
	
	public static implicit operator QTextBlockUserDataPtr(Self self)
	{
		return self.handle;
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQTextBlockUserData param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
}
extension CQt
{
	[LinkName("QTextBlockUserData_OperatorAssign")]
	public static extern void QTextBlockUserData_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QTextBlockUserData_Delete")]
	public static extern void QTextBlockUserData_Delete(void* self);
}
public interface IQTextBlock
{
	void* NativePtr { get; }
}
public struct QTextBlockPtr : IQTextBlock, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QTextBlock_new());
	}
	
	public void Dispose()
	{
		CQt.QTextBlock_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQTextBlock o)
	{
		CQt.QTextBlock_OperatorAssign(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTextBlock_IsValid(this.nativePtr);
	}
	
	public bool OperatorEqual(IQTextBlock o)
	{
		return CQt.QTextBlock_OperatorEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorNotEqual(IQTextBlock o)
	{
		return CQt.QTextBlock_OperatorNotEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorLesser(IQTextBlock o)
	{
		return CQt.QTextBlock_OperatorLesser(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public int32 Position()
	{
		return CQt.QTextBlock_Position(this.nativePtr);
	}
	
	public int32 Length()
	{
		return CQt.QTextBlock_Length(this.nativePtr);
	}
	
	public bool Contains(int32 position)
	{
		return CQt.QTextBlock_Contains(this.nativePtr, position);
	}
	
	public void* Layout()
	{
		return CQt.QTextBlock_Layout(this.nativePtr);
	}
	
	public void ClearLayout()
	{
		CQt.QTextBlock_ClearLayout(this.nativePtr);
	}
	
	public void BlockFormat()
	{
		CQt.QTextBlock_BlockFormat(this.nativePtr);
	}
	
	public int32 BlockFormatIndex()
	{
		return CQt.QTextBlock_BlockFormatIndex(this.nativePtr);
	}
	
	public void CharFormat()
	{
		CQt.QTextBlock_CharFormat(this.nativePtr);
	}
	
	public int32 CharFormatIndex()
	{
		return CQt.QTextBlock_CharFormatIndex(this.nativePtr);
	}
	
	public int64 TextDirection()
	{
		return CQt.QTextBlock_TextDirection(this.nativePtr);
	}
	
	public libqt_string Text()
	{
		return CQt.QTextBlock_Text(this.nativePtr);
	}
	
	public void[] TextFormats()
	{
		return CQt.QTextBlock_TextFormats(this.nativePtr);
	}
	
	public void* Document()
	{
		return CQt.QTextBlock_Document(this.nativePtr);
	}
	
	public void* TextList()
	{
		return CQt.QTextBlock_TextList(this.nativePtr);
	}
	
	public void* UserData()
	{
		return CQt.QTextBlock_UserData(this.nativePtr);
	}
	
	public void SetUserData(IQTextBlockUserData data)
	{
		CQt.QTextBlock_SetUserData(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr);
	}
	
	public int32 UserState()
	{
		return CQt.QTextBlock_UserState(this.nativePtr);
	}
	
	public void SetUserState(int32 state)
	{
		CQt.QTextBlock_SetUserState(this.nativePtr, state);
	}
	
	public int32 Revision()
	{
		return CQt.QTextBlock_Revision(this.nativePtr);
	}
	
	public void SetRevision(int32 rev)
	{
		CQt.QTextBlock_SetRevision(this.nativePtr, rev);
	}
	
	public bool IsVisible()
	{
		return CQt.QTextBlock_IsVisible(this.nativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QTextBlock_SetVisible(this.nativePtr, visible);
	}
	
	public int32 BlockNumber()
	{
		return CQt.QTextBlock_BlockNumber(this.nativePtr);
	}
	
	public int32 FirstLineNumber()
	{
		return CQt.QTextBlock_FirstLineNumber(this.nativePtr);
	}
	
	public void SetLineCount(int32 count)
	{
		CQt.QTextBlock_SetLineCount(this.nativePtr, count);
	}
	
	public int32 LineCount()
	{
		return CQt.QTextBlock_LineCount(this.nativePtr);
	}
	
	public void Begin()
	{
		CQt.QTextBlock_Begin(this.nativePtr);
	}
	
	public void End()
	{
		CQt.QTextBlock_End(this.nativePtr);
	}
	
	public void Next()
	{
		CQt.QTextBlock_Next(this.nativePtr);
	}
	
	public void Previous()
	{
		CQt.QTextBlock_Previous(this.nativePtr);
	}
	
	public int32 FragmentIndex()
	{
		return CQt.QTextBlock_FragmentIndex(this.nativePtr);
	}
	
}
public class QTextBlock
{
	public QTextBlockPtr handle;
	
	public static implicit operator QTextBlockPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QTextBlockPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQTextBlock o)
	{
		this.handle.OperatorAssign(o);
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public bool OperatorEqual(IQTextBlock o)
	{
		return this.handle.OperatorEqual(o);
	}
	
	public bool OperatorNotEqual(IQTextBlock o)
	{
		return this.handle.OperatorNotEqual(o);
	}
	
	public bool OperatorLesser(IQTextBlock o)
	{
		return this.handle.OperatorLesser(o);
	}
	
	public int32 Position()
	{
		return this.handle.Position();
	}
	
	public int32 Length()
	{
		return this.handle.Length();
	}
	
	public bool Contains(int32 position)
	{
		return this.handle.Contains(position);
	}
	
	public void* Layout()
	{
		return this.handle.Layout();
	}
	
	public void ClearLayout()
	{
		this.handle.ClearLayout();
	}
	
	public void BlockFormat()
	{
		this.handle.BlockFormat();
	}
	
	public int32 BlockFormatIndex()
	{
		return this.handle.BlockFormatIndex();
	}
	
	public void CharFormat()
	{
		this.handle.CharFormat();
	}
	
	public int32 CharFormatIndex()
	{
		return this.handle.CharFormatIndex();
	}
	
	public int64 TextDirection()
	{
		return this.handle.TextDirection();
	}
	
	public libqt_string Text()
	{
		return this.handle.Text();
	}
	
	public void[] TextFormats()
	{
		return this.handle.TextFormats();
	}
	
	public void* Document()
	{
		return this.handle.Document();
	}
	
	public void* TextList()
	{
		return this.handle.TextList();
	}
	
	public void* UserData()
	{
		return this.handle.UserData();
	}
	
	public void SetUserData(IQTextBlockUserData data)
	{
		this.handle.SetUserData(data);
	}
	
	public int32 UserState()
	{
		return this.handle.UserState();
	}
	
	public void SetUserState(int32 state)
	{
		this.handle.SetUserState(state);
	}
	
	public int32 Revision()
	{
		return this.handle.Revision();
	}
	
	public void SetRevision(int32 rev)
	{
		this.handle.SetRevision(rev);
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public int32 BlockNumber()
	{
		return this.handle.BlockNumber();
	}
	
	public int32 FirstLineNumber()
	{
		return this.handle.FirstLineNumber();
	}
	
	public void SetLineCount(int32 count)
	{
		this.handle.SetLineCount(count);
	}
	
	public int32 LineCount()
	{
		return this.handle.LineCount();
	}
	
	public void Begin()
	{
		this.handle.Begin();
	}
	
	public void End()
	{
		this.handle.End();
	}
	
	public void Next()
	{
		this.handle.Next();
	}
	
	public void Previous()
	{
		this.handle.Previous();
	}
	
	public int32 FragmentIndex()
	{
		return this.handle.FragmentIndex();
	}
	
}
extension CQt
{
	[LinkName("QTextBlock_new")]
	public static extern void* QTextBlock_new();
	[LinkName("QTextBlock_new2")]
	public static extern void* QTextBlock_new2(void* o);
	[LinkName("QTextBlock_OperatorAssign")]
	public static extern void QTextBlock_OperatorAssign(void* c_this, void* o);
	[LinkName("QTextBlock_IsValid")]
	public static extern bool QTextBlock_IsValid(void* c_this);
	[LinkName("QTextBlock_OperatorEqual")]
	public static extern bool QTextBlock_OperatorEqual(void* c_this, void* o);
	[LinkName("QTextBlock_OperatorNotEqual")]
	public static extern bool QTextBlock_OperatorNotEqual(void* c_this, void* o);
	[LinkName("QTextBlock_OperatorLesser")]
	public static extern bool QTextBlock_OperatorLesser(void* c_this, void* o);
	[LinkName("QTextBlock_Position")]
	public static extern int32 QTextBlock_Position(void* c_this);
	[LinkName("QTextBlock_Length")]
	public static extern int32 QTextBlock_Length(void* c_this);
	[LinkName("QTextBlock_Contains")]
	public static extern bool QTextBlock_Contains(void* c_this, int32 position);
	[LinkName("QTextBlock_Layout")]
	public static extern void* QTextBlock_Layout(void* c_this);
	[LinkName("QTextBlock_ClearLayout")]
	public static extern void QTextBlock_ClearLayout(void* c_this);
	[LinkName("QTextBlock_BlockFormat")]
	public static extern void QTextBlock_BlockFormat(void* c_this);
	[LinkName("QTextBlock_BlockFormatIndex")]
	public static extern int32 QTextBlock_BlockFormatIndex(void* c_this);
	[LinkName("QTextBlock_CharFormat")]
	public static extern void QTextBlock_CharFormat(void* c_this);
	[LinkName("QTextBlock_CharFormatIndex")]
	public static extern int32 QTextBlock_CharFormatIndex(void* c_this);
	[LinkName("QTextBlock_TextDirection")]
	public static extern int64 QTextBlock_TextDirection(void* c_this);
	[LinkName("QTextBlock_Text")]
	public static extern libqt_string QTextBlock_Text(void* c_this);
	[LinkName("QTextBlock_TextFormats")]
	public static extern void[] QTextBlock_TextFormats(void* c_this);
	[LinkName("QTextBlock_Document")]
	public static extern void* QTextBlock_Document(void* c_this);
	[LinkName("QTextBlock_TextList")]
	public static extern void* QTextBlock_TextList(void* c_this);
	[LinkName("QTextBlock_UserData")]
	public static extern void* QTextBlock_UserData(void* c_this);
	[LinkName("QTextBlock_SetUserData")]
	public static extern void QTextBlock_SetUserData(void* c_this, void* data);
	[LinkName("QTextBlock_UserState")]
	public static extern int32 QTextBlock_UserState(void* c_this);
	[LinkName("QTextBlock_SetUserState")]
	public static extern void QTextBlock_SetUserState(void* c_this, int32 state);
	[LinkName("QTextBlock_Revision")]
	public static extern int32 QTextBlock_Revision(void* c_this);
	[LinkName("QTextBlock_SetRevision")]
	public static extern void QTextBlock_SetRevision(void* c_this, int32 rev);
	[LinkName("QTextBlock_IsVisible")]
	public static extern bool QTextBlock_IsVisible(void* c_this);
	[LinkName("QTextBlock_SetVisible")]
	public static extern void QTextBlock_SetVisible(void* c_this, bool visible);
	[LinkName("QTextBlock_BlockNumber")]
	public static extern int32 QTextBlock_BlockNumber(void* c_this);
	[LinkName("QTextBlock_FirstLineNumber")]
	public static extern int32 QTextBlock_FirstLineNumber(void* c_this);
	[LinkName("QTextBlock_SetLineCount")]
	public static extern void QTextBlock_SetLineCount(void* c_this, int32 count);
	[LinkName("QTextBlock_LineCount")]
	public static extern int32 QTextBlock_LineCount(void* c_this);
	[LinkName("QTextBlock_Begin")]
	public static extern void QTextBlock_Begin(void* c_this);
	[LinkName("QTextBlock_End")]
	public static extern void QTextBlock_End(void* c_this);
	[LinkName("QTextBlock_Next")]
	public static extern void QTextBlock_Next(void* c_this);
	[LinkName("QTextBlock_Previous")]
	public static extern void QTextBlock_Previous(void* c_this);
	[LinkName("QTextBlock_FragmentIndex")]
	public static extern int32 QTextBlock_FragmentIndex(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTextBlock_Delete")]
	public static extern void QTextBlock_Delete(void* self);
}
public interface IQTextFragment
{
	void* NativePtr { get; }
}
public struct QTextFragmentPtr : IQTextFragment, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QTextFragment_new());
	}
	
	public void Dispose()
	{
		CQt.QTextFragment_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQTextFragment o)
	{
		CQt.QTextFragment_OperatorAssign(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTextFragment_IsValid(this.nativePtr);
	}
	
	public bool OperatorEqual(IQTextFragment o)
	{
		return CQt.QTextFragment_OperatorEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorNotEqual(IQTextFragment o)
	{
		return CQt.QTextFragment_OperatorNotEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorLesser(IQTextFragment o)
	{
		return CQt.QTextFragment_OperatorLesser(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public int32 Position()
	{
		return CQt.QTextFragment_Position(this.nativePtr);
	}
	
	public int32 Length()
	{
		return CQt.QTextFragment_Length(this.nativePtr);
	}
	
	public bool Contains(int32 position)
	{
		return CQt.QTextFragment_Contains(this.nativePtr, position);
	}
	
	public void CharFormat()
	{
		CQt.QTextFragment_CharFormat(this.nativePtr);
	}
	
	public int32 CharFormatIndex()
	{
		return CQt.QTextFragment_CharFormatIndex(this.nativePtr);
	}
	
	public libqt_string Text()
	{
		return CQt.QTextFragment_Text(this.nativePtr);
	}
	
	public void[] GlyphRuns()
	{
		return CQt.QTextFragment_GlyphRuns(this.nativePtr);
	}
	
	public void[] GlyphRuns1(int32 from)
	{
		return CQt.QTextFragment_GlyphRuns1(this.nativePtr, from);
	}
	
	public void[] GlyphRuns2(int32 from, int32 length)
	{
		return CQt.QTextFragment_GlyphRuns2(this.nativePtr, from, length);
	}
	
}
public class QTextFragment
{
	public QTextFragmentPtr handle;
	
	public static implicit operator QTextFragmentPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QTextFragmentPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQTextFragment o)
	{
		this.handle.OperatorAssign(o);
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public bool OperatorEqual(IQTextFragment o)
	{
		return this.handle.OperatorEqual(o);
	}
	
	public bool OperatorNotEqual(IQTextFragment o)
	{
		return this.handle.OperatorNotEqual(o);
	}
	
	public bool OperatorLesser(IQTextFragment o)
	{
		return this.handle.OperatorLesser(o);
	}
	
	public int32 Position()
	{
		return this.handle.Position();
	}
	
	public int32 Length()
	{
		return this.handle.Length();
	}
	
	public bool Contains(int32 position)
	{
		return this.handle.Contains(position);
	}
	
	public void CharFormat()
	{
		this.handle.CharFormat();
	}
	
	public int32 CharFormatIndex()
	{
		return this.handle.CharFormatIndex();
	}
	
	public libqt_string Text()
	{
		return this.handle.Text();
	}
	
	public void[] GlyphRuns()
	{
		return this.handle.GlyphRuns();
	}
	
	public void[] GlyphRuns1(int32 from)
	{
		return this.handle.GlyphRuns1(from);
	}
	
	public void[] GlyphRuns2(int32 from, int32 length)
	{
		return this.handle.GlyphRuns2(from, length);
	}
	
}
extension CQt
{
	[LinkName("QTextFragment_new")]
	public static extern void* QTextFragment_new();
	[LinkName("QTextFragment_new2")]
	public static extern void* QTextFragment_new2(void* o);
	[LinkName("QTextFragment_OperatorAssign")]
	public static extern void QTextFragment_OperatorAssign(void* c_this, void* o);
	[LinkName("QTextFragment_IsValid")]
	public static extern bool QTextFragment_IsValid(void* c_this);
	[LinkName("QTextFragment_OperatorEqual")]
	public static extern bool QTextFragment_OperatorEqual(void* c_this, void* o);
	[LinkName("QTextFragment_OperatorNotEqual")]
	public static extern bool QTextFragment_OperatorNotEqual(void* c_this, void* o);
	[LinkName("QTextFragment_OperatorLesser")]
	public static extern bool QTextFragment_OperatorLesser(void* c_this, void* o);
	[LinkName("QTextFragment_Position")]
	public static extern int32 QTextFragment_Position(void* c_this);
	[LinkName("QTextFragment_Length")]
	public static extern int32 QTextFragment_Length(void* c_this);
	[LinkName("QTextFragment_Contains")]
	public static extern bool QTextFragment_Contains(void* c_this, int32 position);
	[LinkName("QTextFragment_CharFormat")]
	public static extern void QTextFragment_CharFormat(void* c_this);
	[LinkName("QTextFragment_CharFormatIndex")]
	public static extern int32 QTextFragment_CharFormatIndex(void* c_this);
	[LinkName("QTextFragment_Text")]
	public static extern libqt_string QTextFragment_Text(void* c_this);
	[LinkName("QTextFragment_GlyphRuns")]
	public static extern void[] QTextFragment_GlyphRuns(void* c_this);
	[LinkName("QTextFragment_GlyphRuns1")]
	public static extern void[] QTextFragment_GlyphRuns1(void* c_this, int32 from);
	[LinkName("QTextFragment_GlyphRuns2")]
	public static extern void[] QTextFragment_GlyphRuns2(void* c_this, int32 from, int32 length);
	/// Delete this object from C++ memory
	[LinkName("QTextFragment_Delete")]
	public static extern void QTextFragment_Delete(void* self);
}
public interface IQTextFrame__iterator
{
	void* NativePtr { get; }
}
public struct QTextFrame__iteratorPtr : IQTextFrame__iterator, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QTextFrame__iteratorPtr other)
	{
		return .(CQt.QTextFrame__iterator_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QTextFrame__iterator_Delete(this.nativePtr);
	}
	
	public void* ParentFrame()
	{
		return CQt.QTextFrame__iterator_ParentFrame(this.nativePtr);
	}
	
	public void* CurrentFrame()
	{
		return CQt.QTextFrame__iterator_CurrentFrame(this.nativePtr);
	}
	
	public void CurrentBlock()
	{
		CQt.QTextFrame__iterator_CurrentBlock(this.nativePtr);
	}
	
	public bool AtEnd()
	{
		return CQt.QTextFrame__iterator_AtEnd(this.nativePtr);
	}
	
	public bool OperatorEqual(QTextFrame__iteratorPtr o)
	{
		return CQt.QTextFrame__iterator_OperatorEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorNotEqual(QTextFrame__iteratorPtr o)
	{
		return CQt.QTextFrame__iterator_OperatorNotEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public void* OperatorPlusPlus()
	{
		return CQt.QTextFrame__iterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public void OperatorPlusPlusWithInt(int32 param1)
	{
		CQt.QTextFrame__iterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorMinusMinus()
	{
		return CQt.QTextFrame__iterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public void OperatorMinusMinusWithInt(int32 param1)
	{
		CQt.QTextFrame__iterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
}
public class QTextFrame__iterator
{
	public QTextFrame__iteratorPtr handle;
	
	public static implicit operator QTextFrame__iteratorPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QTextFrame__iteratorPtr other)
	{
		this.handle = QTextFrame__iteratorPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void* ParentFrame()
	{
		return this.handle.ParentFrame();
	}
	
	public void* CurrentFrame()
	{
		return this.handle.CurrentFrame();
	}
	
	public void CurrentBlock()
	{
		this.handle.CurrentBlock();
	}
	
	public bool AtEnd()
	{
		return this.handle.AtEnd();
	}
	
	public bool OperatorEqual(QTextFrame__iteratorPtr o)
	{
		return this.handle.OperatorEqual(o);
	}
	
	public bool OperatorNotEqual(QTextFrame__iteratorPtr o)
	{
		return this.handle.OperatorNotEqual(o);
	}
	
	public void* OperatorPlusPlus()
	{
		return this.handle.OperatorPlusPlus();
	}
	
	public void OperatorPlusPlusWithInt(int32 param1)
	{
		this.handle.OperatorPlusPlusWithInt(param1);
	}
	
	public void* OperatorMinusMinus()
	{
		return this.handle.OperatorMinusMinus();
	}
	
	public void OperatorMinusMinusWithInt(int32 param1)
	{
		this.handle.OperatorMinusMinusWithInt(param1);
	}
	
}
extension CQt
{
	[LinkName("QTextFrame__iterator_new")]
	public static extern void* QTextFrame__iterator_new(void* other);
	[LinkName("QTextFrame__iterator_new2")]
	public static extern void* QTextFrame__iterator_new2(void* other);
	[LinkName("QTextFrame__iterator_new3")]
	public static extern void* QTextFrame__iterator_new3();
	[LinkName("QTextFrame__iterator_new4")]
	public static extern void* QTextFrame__iterator_new4(void* param1);
	[LinkName("QTextFrame__iterator_ParentFrame")]
	public static extern void* QTextFrame__iterator_ParentFrame(void* c_this);
	[LinkName("QTextFrame__iterator_CurrentFrame")]
	public static extern void* QTextFrame__iterator_CurrentFrame(void* c_this);
	[LinkName("QTextFrame__iterator_CurrentBlock")]
	public static extern void QTextFrame__iterator_CurrentBlock(void* c_this);
	[LinkName("QTextFrame__iterator_AtEnd")]
	public static extern bool QTextFrame__iterator_AtEnd(void* c_this);
	[LinkName("QTextFrame__iterator_OperatorEqual")]
	public static extern bool QTextFrame__iterator_OperatorEqual(void* c_this, void* o);
	[LinkName("QTextFrame__iterator_OperatorNotEqual")]
	public static extern bool QTextFrame__iterator_OperatorNotEqual(void* c_this, void* o);
	[LinkName("QTextFrame__iterator_OperatorPlusPlus")]
	public static extern void* QTextFrame__iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QTextFrame__iterator_OperatorPlusPlusWithInt")]
	public static extern void QTextFrame__iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QTextFrame__iterator_OperatorMinusMinus")]
	public static extern void* QTextFrame__iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QTextFrame__iterator_OperatorMinusMinusWithInt")]
	public static extern void QTextFrame__iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	/// Delete this object from C++ memory
	[LinkName("QTextFrame__iterator_Delete")]
	public static extern void QTextFrame__iterator_Delete(void* self);
}
public interface IQTextBlock__iterator
{
	void* NativePtr { get; }
}
public struct QTextBlock__iteratorPtr : IQTextBlock__iterator, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QTextBlock__iteratorPtr other)
	{
		return .(CQt.QTextBlock__iterator_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QTextBlock__iterator_Delete(this.nativePtr);
	}
	
	public void Fragment()
	{
		CQt.QTextBlock__iterator_Fragment(this.nativePtr);
	}
	
	public bool AtEnd()
	{
		return CQt.QTextBlock__iterator_AtEnd(this.nativePtr);
	}
	
	public bool OperatorEqual(QTextBlock__iteratorPtr o)
	{
		return CQt.QTextBlock__iterator_OperatorEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public bool OperatorNotEqual(QTextBlock__iteratorPtr o)
	{
		return CQt.QTextBlock__iterator_OperatorNotEqual(this.nativePtr, (o == default || o.NativePtr == default) ? default : o.NativePtr);
	}
	
	public void* OperatorPlusPlus()
	{
		return CQt.QTextBlock__iterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public void OperatorPlusPlusWithInt(int32 param1)
	{
		CQt.QTextBlock__iterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public void* OperatorMinusMinus()
	{
		return CQt.QTextBlock__iterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public void OperatorMinusMinusWithInt(int32 param1)
	{
		CQt.QTextBlock__iterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
}
public class QTextBlock__iterator
{
	public QTextBlock__iteratorPtr handle;
	
	public static implicit operator QTextBlock__iteratorPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QTextBlock__iteratorPtr other)
	{
		this.handle = QTextBlock__iteratorPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Fragment()
	{
		this.handle.Fragment();
	}
	
	public bool AtEnd()
	{
		return this.handle.AtEnd();
	}
	
	public bool OperatorEqual(QTextBlock__iteratorPtr o)
	{
		return this.handle.OperatorEqual(o);
	}
	
	public bool OperatorNotEqual(QTextBlock__iteratorPtr o)
	{
		return this.handle.OperatorNotEqual(o);
	}
	
	public void* OperatorPlusPlus()
	{
		return this.handle.OperatorPlusPlus();
	}
	
	public void OperatorPlusPlusWithInt(int32 param1)
	{
		this.handle.OperatorPlusPlusWithInt(param1);
	}
	
	public void* OperatorMinusMinus()
	{
		return this.handle.OperatorMinusMinus();
	}
	
	public void OperatorMinusMinusWithInt(int32 param1)
	{
		this.handle.OperatorMinusMinusWithInt(param1);
	}
	
}
extension CQt
{
	[LinkName("QTextBlock__iterator_new")]
	public static extern void* QTextBlock__iterator_new(void* other);
	[LinkName("QTextBlock__iterator_new2")]
	public static extern void* QTextBlock__iterator_new2(void* other);
	[LinkName("QTextBlock__iterator_new3")]
	public static extern void* QTextBlock__iterator_new3();
	[LinkName("QTextBlock__iterator_new4")]
	public static extern void* QTextBlock__iterator_new4(void* param1);
	[LinkName("QTextBlock__iterator_Fragment")]
	public static extern void QTextBlock__iterator_Fragment(void* c_this);
	[LinkName("QTextBlock__iterator_AtEnd")]
	public static extern bool QTextBlock__iterator_AtEnd(void* c_this);
	[LinkName("QTextBlock__iterator_OperatorEqual")]
	public static extern bool QTextBlock__iterator_OperatorEqual(void* c_this, void* o);
	[LinkName("QTextBlock__iterator_OperatorNotEqual")]
	public static extern bool QTextBlock__iterator_OperatorNotEqual(void* c_this, void* o);
	[LinkName("QTextBlock__iterator_OperatorPlusPlus")]
	public static extern void* QTextBlock__iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QTextBlock__iterator_OperatorPlusPlusWithInt")]
	public static extern void QTextBlock__iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QTextBlock__iterator_OperatorMinusMinus")]
	public static extern void* QTextBlock__iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QTextBlock__iterator_OperatorMinusMinusWithInt")]
	public static extern void QTextBlock__iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	/// Delete this object from C++ memory
	[LinkName("QTextBlock__iterator_Delete")]
	public static extern void QTextBlock__iterator_Delete(void* self);
}