using System;
using System.Interop;
namespace Qt;

public class QTextObject
{
	protected void* nativePtr;
	
	public virtual void* MetaObject()
	{
		return CQt.QTextObject_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QTextObject_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTextObject_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
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
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QTextObject_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QTextObject_Tr3(s, c, n);
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
	[LinkName("QTextObject_MetaObject")]
	public static extern void* QTextObject_MetaObject(void* c_this);
	[LinkName("QTextObject_Metacast")]
	public static extern void* QTextObject_Metacast(void* c_this, char8[] param1);
	[LinkName("QTextObject_Metacall")]
	public static extern int32 QTextObject_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTextObject_Tr")]
	public static extern libqt_string QTextObject_Tr(char8[] s);
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
	public static extern libqt_string QTextObject_Tr2(char8[] s, char8[] c);
	[LinkName("QTextObject_Tr3")]
	public static extern libqt_string QTextObject_Tr3(char8[] s, char8[] c, int32 n);
}
public class QTextBlockGroup
{
	protected void* nativePtr;
	
	public virtual void* MetaObject()
	{
		return CQt.QTextBlockGroup_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QTextBlockGroup_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTextBlockGroup_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QTextBlockGroup_Tr(s);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QTextBlockGroup_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
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
	[LinkName("QTextBlockGroup_MetaObject")]
	public static extern void* QTextBlockGroup_MetaObject(void* c_this);
	[LinkName("QTextBlockGroup_Metacast")]
	public static extern void* QTextBlockGroup_Metacast(void* c_this, char8[] param1);
	[LinkName("QTextBlockGroup_Metacall")]
	public static extern int32 QTextBlockGroup_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTextBlockGroup_Tr")]
	public static extern libqt_string QTextBlockGroup_Tr(char8[] s);
	[LinkName("QTextBlockGroup_BlockInserted")]
	public static extern void QTextBlockGroup_BlockInserted(void* c_this, void* block);
	[LinkName("QTextBlockGroup_BlockRemoved")]
	public static extern void QTextBlockGroup_BlockRemoved(void* c_this, void* block);
	[LinkName("QTextBlockGroup_BlockFormatChanged")]
	public static extern void QTextBlockGroup_BlockFormatChanged(void* c_this, void* block);
	[LinkName("QTextBlockGroup_BlockList")]
	public static extern void[] QTextBlockGroup_BlockList(void* c_this);
	[LinkName("QTextBlockGroup_Tr2")]
	public static extern libqt_string QTextBlockGroup_Tr2(char8[] s, char8[] c);
	[LinkName("QTextBlockGroup_Tr3")]
	public static extern libqt_string QTextBlockGroup_Tr3(char8[] s, char8[] c, int32 n);
}
public class QTextFrameLayoutData
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QTextFrameLayoutData_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QTextFrameLayoutData_OperatorAssign(this.nativePtr, param1);
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
public class QTextFrame
{
	protected void* nativePtr;
	
	public this(void* doc)
	{
		this.nativePtr = CQt.QTextFrame_new(doc);
	}
	
	public ~this()
	{
		CQt.QTextFrame_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QTextFrame_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QTextFrame_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTextFrame_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QTextFrame_Tr(s);
	}
	
	public void SetFrameFormat(void* format)
	{
		CQt.QTextFrame_SetFrameFormat(this.nativePtr, format);
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
	
	public void SetLayoutData(void* data)
	{
		CQt.QTextFrame_SetLayoutData(this.nativePtr, data);
	}
	
	public void*[] ChildFrames()
	{
		return CQt.QTextFrame_ChildFrames(this.nativePtr);
	}
	
	public void* ParentFrame()
	{
		return CQt.QTextFrame_ParentFrame(this.nativePtr);
	}
	
	public QTextFrame__iterator Begin()
	{
		return CQt.QTextFrame_Begin(this.nativePtr);
	}
	
	public QTextFrame__iterator End()
	{
		return CQt.QTextFrame_End(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QTextFrame_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
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
	[LinkName("QTextFrame_new")]
	public static extern void* QTextFrame_new(void* doc);
	[LinkName("QTextFrame_MetaObject")]
	public static extern void* QTextFrame_MetaObject(void* c_this);
	[LinkName("QTextFrame_Metacast")]
	public static extern void* QTextFrame_Metacast(void* c_this, char8[] param1);
	[LinkName("QTextFrame_Metacall")]
	public static extern int32 QTextFrame_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTextFrame_Tr")]
	public static extern libqt_string QTextFrame_Tr(char8[] s);
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
	public static extern QTextFrame__iterator QTextFrame_Begin(void* c_this);
	[LinkName("QTextFrame_End")]
	public static extern QTextFrame__iterator QTextFrame_End(void* c_this);
	[LinkName("QTextFrame_Tr2")]
	public static extern libqt_string QTextFrame_Tr2(char8[] s, char8[] c);
	[LinkName("QTextFrame_Tr3")]
	public static extern libqt_string QTextFrame_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QTextFrame_Delete")]
	public static extern void QTextFrame_Delete(void* self);
}
public class QTextBlockUserData
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QTextBlockUserData_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QTextBlockUserData_OperatorAssign(this.nativePtr, param1);
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
public class QTextBlock
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextBlock_new();
	}
	
	public ~this()
	{
		CQt.QTextBlock_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* o)
	{
		CQt.QTextBlock_OperatorAssign(this.nativePtr, o);
	}
	
	public bool IsValid()
	{
		return CQt.QTextBlock_IsValid(this.nativePtr);
	}
	
	public bool OperatorEqual(void* o)
	{
		return CQt.QTextBlock_OperatorEqual(this.nativePtr, o);
	}
	
	public bool OperatorNotEqual(void* o)
	{
		return CQt.QTextBlock_OperatorNotEqual(this.nativePtr, o);
	}
	
	public bool OperatorLesser(void* o)
	{
		return CQt.QTextBlock_OperatorLesser(this.nativePtr, o);
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
	
	public QTextLayout__FormatRange[] TextFormats()
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
	
	public void SetUserData(void* data)
	{
		CQt.QTextBlock_SetUserData(this.nativePtr, data);
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
	
	public QTextBlock__iterator Begin()
	{
		return CQt.QTextBlock_Begin(this.nativePtr);
	}
	
	public QTextBlock__iterator End()
	{
		return CQt.QTextBlock_End(this.nativePtr);
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
	public static extern QTextLayout__FormatRange[] QTextBlock_TextFormats(void* c_this);
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
	public static extern QTextBlock__iterator QTextBlock_Begin(void* c_this);
	[LinkName("QTextBlock_End")]
	public static extern QTextBlock__iterator QTextBlock_End(void* c_this);
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
public class QTextFragment
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextFragment_new();
	}
	
	public ~this()
	{
		CQt.QTextFragment_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* o)
	{
		CQt.QTextFragment_OperatorAssign(this.nativePtr, o);
	}
	
	public bool IsValid()
	{
		return CQt.QTextFragment_IsValid(this.nativePtr);
	}
	
	public bool OperatorEqual(void* o)
	{
		return CQt.QTextFragment_OperatorEqual(this.nativePtr, o);
	}
	
	public bool OperatorNotEqual(void* o)
	{
		return CQt.QTextFragment_OperatorNotEqual(this.nativePtr, o);
	}
	
	public bool OperatorLesser(void* o)
	{
		return CQt.QTextFragment_OperatorLesser(this.nativePtr, o);
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
public class QTextFrame__iterator
{
	protected void* nativePtr;
	
	public this(QTextFrame__iterator* other)
	{
		this.nativePtr = CQt.QTextFrame__iterator_new(other);
	}
	
	public ~this()
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
	
	public bool OperatorEqual(QTextFrame__iterator* o)
	{
		return CQt.QTextFrame__iterator_OperatorEqual(this.nativePtr, o);
	}
	
	public bool OperatorNotEqual(QTextFrame__iterator* o)
	{
		return CQt.QTextFrame__iterator_OperatorNotEqual(this.nativePtr, o);
	}
	
	public QTextFrame__iterator* OperatorPlusPlus()
	{
		return CQt.QTextFrame__iterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public QTextFrame__iterator OperatorPlusPlusWithInt(int32 param1)
	{
		return CQt.QTextFrame__iterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public QTextFrame__iterator* OperatorMinusMinus()
	{
		return CQt.QTextFrame__iterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public QTextFrame__iterator OperatorMinusMinusWithInt(int32 param1)
	{
		return CQt.QTextFrame__iterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QTextFrame__iterator_new")]
	public static extern void* QTextFrame__iterator_new(QTextFrame__iterator* other);
	[LinkName("QTextFrame__iterator_new2")]
	public static extern void* QTextFrame__iterator_new2(QTextFrame__iterator* other);
	[LinkName("QTextFrame__iterator_new3")]
	public static extern void* QTextFrame__iterator_new3();
	[LinkName("QTextFrame__iterator_new4")]
	public static extern void* QTextFrame__iterator_new4(QTextFrame__iterator* param1);
	[LinkName("QTextFrame__iterator_ParentFrame")]
	public static extern void* QTextFrame__iterator_ParentFrame(void* c_this);
	[LinkName("QTextFrame__iterator_CurrentFrame")]
	public static extern void* QTextFrame__iterator_CurrentFrame(void* c_this);
	[LinkName("QTextFrame__iterator_CurrentBlock")]
	public static extern void QTextFrame__iterator_CurrentBlock(void* c_this);
	[LinkName("QTextFrame__iterator_AtEnd")]
	public static extern bool QTextFrame__iterator_AtEnd(void* c_this);
	[LinkName("QTextFrame__iterator_OperatorEqual")]
	public static extern bool QTextFrame__iterator_OperatorEqual(void* c_this, QTextFrame__iterator* o);
	[LinkName("QTextFrame__iterator_OperatorNotEqual")]
	public static extern bool QTextFrame__iterator_OperatorNotEqual(void* c_this, QTextFrame__iterator* o);
	[LinkName("QTextFrame__iterator_OperatorPlusPlus")]
	public static extern QTextFrame__iterator* QTextFrame__iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QTextFrame__iterator_OperatorPlusPlusWithInt")]
	public static extern QTextFrame__iterator QTextFrame__iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QTextFrame__iterator_OperatorMinusMinus")]
	public static extern QTextFrame__iterator* QTextFrame__iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QTextFrame__iterator_OperatorMinusMinusWithInt")]
	public static extern QTextFrame__iterator QTextFrame__iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	/// Delete this object from C++ memory
	[LinkName("QTextFrame__iterator_Delete")]
	public static extern void QTextFrame__iterator_Delete(void* self);
}
public class QTextBlock__iterator
{
	protected void* nativePtr;
	
	public this(QTextBlock__iterator* other)
	{
		this.nativePtr = CQt.QTextBlock__iterator_new(other);
	}
	
	public ~this()
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
	
	public bool OperatorEqual(QTextBlock__iterator* o)
	{
		return CQt.QTextBlock__iterator_OperatorEqual(this.nativePtr, o);
	}
	
	public bool OperatorNotEqual(QTextBlock__iterator* o)
	{
		return CQt.QTextBlock__iterator_OperatorNotEqual(this.nativePtr, o);
	}
	
	public QTextBlock__iterator* OperatorPlusPlus()
	{
		return CQt.QTextBlock__iterator_OperatorPlusPlus(this.nativePtr);
	}
	
	public QTextBlock__iterator OperatorPlusPlusWithInt(int32 param1)
	{
		return CQt.QTextBlock__iterator_OperatorPlusPlusWithInt(this.nativePtr, param1);
	}
	
	public QTextBlock__iterator* OperatorMinusMinus()
	{
		return CQt.QTextBlock__iterator_OperatorMinusMinus(this.nativePtr);
	}
	
	public QTextBlock__iterator OperatorMinusMinusWithInt(int32 param1)
	{
		return CQt.QTextBlock__iterator_OperatorMinusMinusWithInt(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QTextBlock__iterator_new")]
	public static extern void* QTextBlock__iterator_new(QTextBlock__iterator* other);
	[LinkName("QTextBlock__iterator_new2")]
	public static extern void* QTextBlock__iterator_new2(QTextBlock__iterator* other);
	[LinkName("QTextBlock__iterator_new3")]
	public static extern void* QTextBlock__iterator_new3();
	[LinkName("QTextBlock__iterator_new4")]
	public static extern void* QTextBlock__iterator_new4(QTextBlock__iterator* param1);
	[LinkName("QTextBlock__iterator_Fragment")]
	public static extern void QTextBlock__iterator_Fragment(void* c_this);
	[LinkName("QTextBlock__iterator_AtEnd")]
	public static extern bool QTextBlock__iterator_AtEnd(void* c_this);
	[LinkName("QTextBlock__iterator_OperatorEqual")]
	public static extern bool QTextBlock__iterator_OperatorEqual(void* c_this, QTextBlock__iterator* o);
	[LinkName("QTextBlock__iterator_OperatorNotEqual")]
	public static extern bool QTextBlock__iterator_OperatorNotEqual(void* c_this, QTextBlock__iterator* o);
	[LinkName("QTextBlock__iterator_OperatorPlusPlus")]
	public static extern QTextBlock__iterator* QTextBlock__iterator_OperatorPlusPlus(void* c_this);
	[LinkName("QTextBlock__iterator_OperatorPlusPlusWithInt")]
	public static extern QTextBlock__iterator QTextBlock__iterator_OperatorPlusPlusWithInt(void* c_this, int32 param1);
	[LinkName("QTextBlock__iterator_OperatorMinusMinus")]
	public static extern QTextBlock__iterator* QTextBlock__iterator_OperatorMinusMinus(void* c_this);
	[LinkName("QTextBlock__iterator_OperatorMinusMinusWithInt")]
	public static extern QTextBlock__iterator QTextBlock__iterator_OperatorMinusMinusWithInt(void* c_this, int32 param1);
	/// Delete this object from C++ memory
	[LinkName("QTextBlock__iterator_Delete")]
	public static extern void QTextBlock__iterator_Delete(void* self);
}