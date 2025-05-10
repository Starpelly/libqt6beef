using System;
using System.Interop;
namespace Qt;

public class QTextList
{
	protected void* nativePtr;
	
	public this(void* doc)
	{
		this.nativePtr = CQt.QTextList_new(doc);
	}
	
	public ~this()
	{
		CQt.QTextList_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QTextList_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QTextList_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTextList_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QTextList_Tr(s);
	}
	
	public int32 Count()
	{
		return CQt.QTextList_Count(this.nativePtr);
	}
	
	public void Item(int32 i)
	{
		CQt.QTextList_Item(this.nativePtr, i);
	}
	
	public int32 ItemNumber(void* param1)
	{
		return CQt.QTextList_ItemNumber(this.nativePtr, param1);
	}
	
	public libqt_string ItemText(void* param1)
	{
		return CQt.QTextList_ItemText(this.nativePtr, param1);
	}
	
	public void RemoveItem(int32 i)
	{
		CQt.QTextList_RemoveItem(this.nativePtr, i);
	}
	
	public void Remove(void* param1)
	{
		CQt.QTextList_Remove(this.nativePtr, param1);
	}
	
	public void Add(void* block)
	{
		CQt.QTextList_Add(this.nativePtr, block);
	}
	
	public void SetFormat(void* format)
	{
		CQt.QTextList_SetFormat(this.nativePtr, format);
	}
	
	public void Format()
	{
		CQt.QTextList_Format(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QTextList_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QTextList_Tr3(s, c, n);
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
	[LinkName("QTextList_new")]
	public static extern void* QTextList_new(void* doc);
	[LinkName("QTextList_MetaObject")]
	public static extern void* QTextList_MetaObject(void* c_this);
	[LinkName("QTextList_Metacast")]
	public static extern void* QTextList_Metacast(void* c_this, char8[] param1);
	[LinkName("QTextList_Metacall")]
	public static extern int32 QTextList_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTextList_Tr")]
	public static extern libqt_string QTextList_Tr(char8[] s);
	[LinkName("QTextList_Count")]
	public static extern int32 QTextList_Count(void* c_this);
	[LinkName("QTextList_Item")]
	public static extern void QTextList_Item(void* c_this, int32 i);
	[LinkName("QTextList_ItemNumber")]
	public static extern int32 QTextList_ItemNumber(void* c_this, void* param1);
	[LinkName("QTextList_ItemText")]
	public static extern libqt_string QTextList_ItemText(void* c_this, void* param1);
	[LinkName("QTextList_RemoveItem")]
	public static extern void QTextList_RemoveItem(void* c_this, int32 i);
	[LinkName("QTextList_Remove")]
	public static extern void QTextList_Remove(void* c_this, void* param1);
	[LinkName("QTextList_Add")]
	public static extern void QTextList_Add(void* c_this, void* block);
	[LinkName("QTextList_SetFormat")]
	public static extern void QTextList_SetFormat(void* c_this, void* format);
	[LinkName("QTextList_Format")]
	public static extern void QTextList_Format(void* c_this);
	[LinkName("QTextList_Tr2")]
	public static extern libqt_string QTextList_Tr2(char8[] s, char8[] c);
	[LinkName("QTextList_Tr3")]
	public static extern libqt_string QTextList_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QTextList_Delete")]
	public static extern void QTextList_Delete(void* self);
}