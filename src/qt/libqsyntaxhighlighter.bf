using System;
using System.Interop;
namespace Qt;

public interface IQSyntaxHighlighter
{
	void* NativePtr { get; }
}
public struct QSyntaxHighlighterPtr : IQSyntaxHighlighter, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQObject parent)
	{
		return .(CQt.QSyntaxHighlighter_new((parent == default || parent.NativePtr == default) ? default : parent.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QSyntaxHighlighter_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QSyntaxHighlighter_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QSyntaxHighlighter_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QSyntaxHighlighter_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QSyntaxHighlighter_Tr(s);
	}
	
	public void SetDocument(IQTextDocument doc)
	{
		CQt.QSyntaxHighlighter_SetDocument(this.nativePtr, (doc == default || doc.NativePtr == default) ? default : doc.NativePtr);
	}
	
	public void* Document()
	{
		return CQt.QSyntaxHighlighter_Document(this.nativePtr);
	}
	
	public void Rehighlight()
	{
		CQt.QSyntaxHighlighter_Rehighlight(this.nativePtr);
	}
	
	public void RehighlightBlock(IQTextBlock block)
	{
		CQt.QSyntaxHighlighter_RehighlightBlock(this.nativePtr, (block == default || block.NativePtr == default) ? default : block.NativePtr);
	}
	
	public void HighlightBlock(String text)
	{
		CQt.QSyntaxHighlighter_HighlightBlock(this.nativePtr, libqt_string(text));
	}
	
	public void SetFormat(int32 start, int32 count, IQTextCharFormat format)
	{
		CQt.QSyntaxHighlighter_SetFormat(this.nativePtr, start, count, (format == default || format.NativePtr == default) ? default : format.NativePtr);
	}
	
	public void SetFormat2(int32 start, int32 count, IQColor color)
	{
		CQt.QSyntaxHighlighter_SetFormat2(this.nativePtr, start, count, (color == default || color.NativePtr == default) ? default : color.NativePtr);
	}
	
	public void SetFormat3(int32 start, int32 count, IQFont font)
	{
		CQt.QSyntaxHighlighter_SetFormat3(this.nativePtr, start, count, (font == default || font.NativePtr == default) ? default : font.NativePtr);
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
	
	public void SetCurrentBlockUserData(IQTextBlockUserData data)
	{
		CQt.QSyntaxHighlighter_SetCurrentBlockUserData(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr);
	}
	
	public void* CurrentBlockUserData()
	{
		return CQt.QSyntaxHighlighter_CurrentBlockUserData(this.nativePtr);
	}
	
	public void CurrentBlock()
	{
		CQt.QSyntaxHighlighter_CurrentBlock(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QSyntaxHighlighter_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QSyntaxHighlighter_Tr3(s, c, n);
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
public class QSyntaxHighlighter
{
	public QSyntaxHighlighterPtr handle;
	
	public static implicit operator QSyntaxHighlighterPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQObject parent)
	{
		this.handle = QSyntaxHighlighterPtr.New(parent);
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
		return QSyntaxHighlighterPtr.Tr(s);
	}
	
	public void SetDocument(IQTextDocument doc)
	{
		this.handle.SetDocument(doc);
	}
	
	public void* Document()
	{
		return this.handle.Document();
	}
	
	public void Rehighlight()
	{
		this.handle.Rehighlight();
	}
	
	public void RehighlightBlock(IQTextBlock block)
	{
		this.handle.RehighlightBlock(block);
	}
	
	public virtual void HighlightBlock(String text)
	{
		this.handle.HighlightBlock(text);
	}
	
	public void SetFormat(int32 start, int32 count, IQTextCharFormat format)
	{
		this.handle.SetFormat(start, count, format);
	}
	
	public void SetFormat2(int32 start, int32 count, IQColor color)
	{
		this.handle.SetFormat2(start, count, color);
	}
	
	public void SetFormat3(int32 start, int32 count, IQFont font)
	{
		this.handle.SetFormat3(start, count, font);
	}
	
	public void Format(int32 pos)
	{
		this.handle.Format(pos);
	}
	
	public int32 PreviousBlockState()
	{
		return this.handle.PreviousBlockState();
	}
	
	public int32 CurrentBlockState()
	{
		return this.handle.CurrentBlockState();
	}
	
	public void SetCurrentBlockState(int32 newState)
	{
		this.handle.SetCurrentBlockState(newState);
	}
	
	public void SetCurrentBlockUserData(IQTextBlockUserData data)
	{
		this.handle.SetCurrentBlockUserData(data);
	}
	
	public void* CurrentBlockUserData()
	{
		return this.handle.CurrentBlockUserData();
	}
	
	public void CurrentBlock()
	{
		this.handle.CurrentBlock();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QSyntaxHighlighterPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QSyntaxHighlighterPtr.Tr3(s, c, n);
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
		QSyntaxHighlighterPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QSyntaxHighlighterPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QSyntaxHighlighterPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QSyntaxHighlighterPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
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
	public static extern void* QSyntaxHighlighter_Metacast(void* c_this, char8* param1);
	[LinkName("QSyntaxHighlighter_Metacall")]
	public static extern int32 QSyntaxHighlighter_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QSyntaxHighlighter_Tr")]
	public static extern libqt_string QSyntaxHighlighter_Tr(char8* s);
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
	public static extern libqt_string QSyntaxHighlighter_Tr2(char8* s, char8* c);
	[LinkName("QSyntaxHighlighter_Tr3")]
	public static extern libqt_string QSyntaxHighlighter_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QSyntaxHighlighter_Delete")]
	public static extern void QSyntaxHighlighter_Delete(void* self);
}