using System;
using System.Interop;
namespace Qt;

public class QSyntaxHighlighter
{
	protected void* nativePtr;
	
	public this(void* parent)
	{
		this.nativePtr = CQt.QSyntaxHighlighter_new(parent);
	}
	
	public ~this()
	{
		CQt.QSyntaxHighlighter_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QSyntaxHighlighter_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QSyntaxHighlighter_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QSyntaxHighlighter_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QSyntaxHighlighter_Tr(s);
	}
	
	public void SetDocument(void* doc)
	{
		CQt.QSyntaxHighlighter_SetDocument(this.nativePtr, doc);
	}
	
	public void* Document()
	{
		return CQt.QSyntaxHighlighter_Document(this.nativePtr);
	}
	
	public void Rehighlight()
	{
		CQt.QSyntaxHighlighter_Rehighlight(this.nativePtr);
	}
	
	public void RehighlightBlock(void* block)
	{
		CQt.QSyntaxHighlighter_RehighlightBlock(this.nativePtr, block);
	}
	
	public virtual void HighlightBlock(libqt_string text)
	{
		CQt.QSyntaxHighlighter_HighlightBlock(this.nativePtr, text);
	}
	
	public void SetFormat(int32 start, int32 count, void* format)
	{
		CQt.QSyntaxHighlighter_SetFormat(this.nativePtr, start, count, format);
	}
	
	public void SetFormat2(int32 start, int32 count, void* color)
	{
		CQt.QSyntaxHighlighter_SetFormat2(this.nativePtr, start, count, color);
	}
	
	public void SetFormat3(int32 start, int32 count, void* font)
	{
		CQt.QSyntaxHighlighter_SetFormat3(this.nativePtr, start, count, font);
	}
	
	public void Format(int32 pos)
	{
		CQt.QSyntaxHighlighter_Format(this.nativePtr, pos);
	}
	
	public int32 PreviousBlockState()
	{
		return CQt.QSyntaxHighlighter_PreviousBlockState(this.nativePtr);
	}
	
	public int32 CurrentBlockState()
	{
		return CQt.QSyntaxHighlighter_CurrentBlockState(this.nativePtr);
	}
	
	public void SetCurrentBlockState(int32 newState)
	{
		CQt.QSyntaxHighlighter_SetCurrentBlockState(this.nativePtr, newState);
	}
	
	public void SetCurrentBlockUserData(void* data)
	{
		CQt.QSyntaxHighlighter_SetCurrentBlockUserData(this.nativePtr, data);
	}
	
	public void* CurrentBlockUserData()
	{
		return CQt.QSyntaxHighlighter_CurrentBlockUserData(this.nativePtr);
	}
	
	public void CurrentBlock()
	{
		CQt.QSyntaxHighlighter_CurrentBlock(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QSyntaxHighlighter_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QSyntaxHighlighter_Tr3(s, c, n);
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
	[LinkName("QSyntaxHighlighter_new")]
	public static extern void* QSyntaxHighlighter_new(void* parent);
	[LinkName("QSyntaxHighlighter_new2")]
	public static extern void* QSyntaxHighlighter_new2(void* parent);
	[LinkName("QSyntaxHighlighter_MetaObject")]
	public static extern void* QSyntaxHighlighter_MetaObject(void* c_this);
	[LinkName("QSyntaxHighlighter_Metacast")]
	public static extern void* QSyntaxHighlighter_Metacast(void* c_this, char8[] param1);
	[LinkName("QSyntaxHighlighter_Metacall")]
	public static extern int32 QSyntaxHighlighter_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSyntaxHighlighter_Tr")]
	public static extern libqt_string QSyntaxHighlighter_Tr(char8[] s);
	[LinkName("QSyntaxHighlighter_SetDocument")]
	public static extern void QSyntaxHighlighter_SetDocument(void* c_this, void* doc);
	[LinkName("QSyntaxHighlighter_Document")]
	public static extern void* QSyntaxHighlighter_Document(void* c_this);
	[LinkName("QSyntaxHighlighter_Rehighlight")]
	public static extern void QSyntaxHighlighter_Rehighlight(void* c_this);
	[LinkName("QSyntaxHighlighter_RehighlightBlock")]
	public static extern void QSyntaxHighlighter_RehighlightBlock(void* c_this, void* block);
	[LinkName("QSyntaxHighlighter_HighlightBlock")]
	public static extern void QSyntaxHighlighter_HighlightBlock(void* c_this, libqt_string text);
	[LinkName("QSyntaxHighlighter_SetFormat")]
	public static extern void QSyntaxHighlighter_SetFormat(void* c_this, int32 start, int32 count, void* format);
	[LinkName("QSyntaxHighlighter_SetFormat2")]
	public static extern void QSyntaxHighlighter_SetFormat2(void* c_this, int32 start, int32 count, void* color);
	[LinkName("QSyntaxHighlighter_SetFormat3")]
	public static extern void QSyntaxHighlighter_SetFormat3(void* c_this, int32 start, int32 count, void* font);
	[LinkName("QSyntaxHighlighter_Format")]
	public static extern void QSyntaxHighlighter_Format(void* c_this, int32 pos);
	[LinkName("QSyntaxHighlighter_PreviousBlockState")]
	public static extern int32 QSyntaxHighlighter_PreviousBlockState(void* c_this);
	[LinkName("QSyntaxHighlighter_CurrentBlockState")]
	public static extern int32 QSyntaxHighlighter_CurrentBlockState(void* c_this);
	[LinkName("QSyntaxHighlighter_SetCurrentBlockState")]
	public static extern void QSyntaxHighlighter_SetCurrentBlockState(void* c_this, int32 newState);
	[LinkName("QSyntaxHighlighter_SetCurrentBlockUserData")]
	public static extern void QSyntaxHighlighter_SetCurrentBlockUserData(void* c_this, void* data);
	[LinkName("QSyntaxHighlighter_CurrentBlockUserData")]
	public static extern void* QSyntaxHighlighter_CurrentBlockUserData(void* c_this);
	[LinkName("QSyntaxHighlighter_CurrentBlock")]
	public static extern void QSyntaxHighlighter_CurrentBlock(void* c_this);
	[LinkName("QSyntaxHighlighter_Tr2")]
	public static extern libqt_string QSyntaxHighlighter_Tr2(char8[] s, char8[] c);
	[LinkName("QSyntaxHighlighter_Tr3")]
	public static extern libqt_string QSyntaxHighlighter_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QSyntaxHighlighter_Delete")]
	public static extern void QSyntaxHighlighter_Delete(void* self);
}