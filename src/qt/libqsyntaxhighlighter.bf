using System;
using System.Interop;
namespace Qt;

public interface IQSyntaxHighlighter
{
	void* NativePtr { get; }
}
public class QSyntaxHighlighter : IQSyntaxHighlighter, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQObject parent)
	{
		this.nativePtr = CQt.QSyntaxHighlighter_new((parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public ~this()
	{
		CQt.QSyntaxHighlighter_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QSyntaxHighlighter_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QSyntaxHighlighter_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QSyntaxHighlighter_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QSyntaxHighlighter_Tr(s);
	}
	
	public void SetDocument(IQTextDocument doc)
	{
		CQt.QSyntaxHighlighter_SetDocument(this.nativePtr, (doc == null) ? null : (void*)doc.NativePtr);
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
		CQt.QSyntaxHighlighter_RehighlightBlock(this.nativePtr, (block == default) ? default : (void*)block.NativePtr);
	}
	
	public virtual void HighlightBlock(String text)
	{
		CQt.QSyntaxHighlighter_HighlightBlock(this.nativePtr, libqt_string(text));
	}
	
	public void SetFormat(int32 start, int32 count, IQTextCharFormat format)
	{
		CQt.QSyntaxHighlighter_SetFormat(this.nativePtr, start, count, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public void SetFormat2(int32 start, int32 count, IQColor color)
	{
		CQt.QSyntaxHighlighter_SetFormat2(this.nativePtr, start, count, (color == default) ? default : (void*)color.NativePtr);
	}
	
	public void SetFormat3(int32 start, int32 count, IQFont font)
	{
		CQt.QSyntaxHighlighter_SetFormat3(this.nativePtr, start, count, (font == default) ? default : (void*)font.NativePtr);
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
		CQt.QSyntaxHighlighter_SetCurrentBlockUserData(this.nativePtr, (data == null) ? null : (void*)data.NativePtr);
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