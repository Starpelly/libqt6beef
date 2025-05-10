using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QCompleter__CompletionMode
{
	PopupCompletion = 0,
	UnfilteredPopupCompletion = 1,
	InlineCompletion = 2,
}
[AllowDuplicates]
public enum QCompleter__ModelSorting
{
	UnsortedModel = 0,
	CaseSensitivelySortedModel = 1,
	CaseInsensitivelySortedModel = 2,
}
public interface IQCompleter
{
	void* NativePtr { get; }
}
public class QCompleter : IQCompleter, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QCompleter_new();
	}
	
	public ~this()
	{
		CQt.QCompleter_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QCompleter_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QCompleter_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QCompleter_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QCompleter_Tr(s);
	}
	
	public void SetWidget(IQWidget widget)
	{
		CQt.QCompleter_SetWidget(this.nativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public void* Widget()
	{
		return CQt.QCompleter_Widget(this.nativePtr);
	}
	
	public void SetModel(IQAbstractItemModel c)
	{
		CQt.QCompleter_SetModel(this.nativePtr, (c == null) ? null : (void*)c.NativePtr);
	}
	
	public void* Model()
	{
		return CQt.QCompleter_Model(this.nativePtr);
	}
	
	public void SetCompletionMode(int64 mode)
	{
		CQt.QCompleter_SetCompletionMode(this.nativePtr, mode);
	}
	
	public int64 CompletionMode()
	{
		return CQt.QCompleter_CompletionMode(this.nativePtr);
	}
	
	public void SetFilterMode(int64 filterMode)
	{
		CQt.QCompleter_SetFilterMode(this.nativePtr, filterMode);
	}
	
	public int64 FilterMode()
	{
		return CQt.QCompleter_FilterMode(this.nativePtr);
	}
	
	public void* Popup()
	{
		return CQt.QCompleter_Popup(this.nativePtr);
	}
	
	public void SetPopup(IQAbstractItemView popup)
	{
		CQt.QCompleter_SetPopup(this.nativePtr, (popup == null) ? null : (void*)popup.NativePtr);
	}
	
	public void SetCaseSensitivity(int64 caseSensitivity)
	{
		CQt.QCompleter_SetCaseSensitivity(this.nativePtr, caseSensitivity);
	}
	
	public int64 CaseSensitivity()
	{
		return CQt.QCompleter_CaseSensitivity(this.nativePtr);
	}
	
	public void SetModelSorting(int64 sorting)
	{
		CQt.QCompleter_SetModelSorting(this.nativePtr, sorting);
	}
	
	public int64 ModelSorting()
	{
		return CQt.QCompleter_ModelSorting(this.nativePtr);
	}
	
	public void SetCompletionColumn(int32 column)
	{
		CQt.QCompleter_SetCompletionColumn(this.nativePtr, column);
	}
	
	public int32 CompletionColumn()
	{
		return CQt.QCompleter_CompletionColumn(this.nativePtr);
	}
	
	public void SetCompletionRole(int32 role)
	{
		CQt.QCompleter_SetCompletionRole(this.nativePtr, role);
	}
	
	public int32 CompletionRole()
	{
		return CQt.QCompleter_CompletionRole(this.nativePtr);
	}
	
	public bool WrapAround()
	{
		return CQt.QCompleter_WrapAround(this.nativePtr);
	}
	
	public int32 MaxVisibleItems()
	{
		return CQt.QCompleter_MaxVisibleItems(this.nativePtr);
	}
	
	public void SetMaxVisibleItems(int32 maxItems)
	{
		CQt.QCompleter_SetMaxVisibleItems(this.nativePtr, maxItems);
	}
	
	public int32 CompletionCount()
	{
		return CQt.QCompleter_CompletionCount(this.nativePtr);
	}
	
	public bool SetCurrentRow(int32 row)
	{
		return CQt.QCompleter_SetCurrentRow(this.nativePtr, row);
	}
	
	public int32 CurrentRow()
	{
		return CQt.QCompleter_CurrentRow(this.nativePtr);
	}
	
	public void CurrentIndex()
	{
		CQt.QCompleter_CurrentIndex(this.nativePtr);
	}
	
	public libqt_string CurrentCompletion()
	{
		return CQt.QCompleter_CurrentCompletion(this.nativePtr);
	}
	
	public void* CompletionModel()
	{
		return CQt.QCompleter_CompletionModel(this.nativePtr);
	}
	
	public libqt_string CompletionPrefix()
	{
		return CQt.QCompleter_CompletionPrefix(this.nativePtr);
	}
	
	public void SetCompletionPrefix(String prefix)
	{
		CQt.QCompleter_SetCompletionPrefix(this.nativePtr, libqt_string(prefix));
	}
	
	public void Complete()
	{
		CQt.QCompleter_Complete(this.nativePtr);
	}
	
	public void SetWrapAround(bool wrap)
	{
		CQt.QCompleter_SetWrapAround(this.nativePtr, wrap);
	}
	
	public virtual libqt_string PathFromIndex(IQModelIndex index)
	{
		return CQt.QCompleter_PathFromIndex(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual libqt_string[] SplitPath(String path)
	{
		return CQt.QCompleter_SplitPath(this.nativePtr, libqt_string(path));
	}
	
	public virtual bool EventFilter(IQObject o, IQEvent e)
	{
		return CQt.QCompleter_EventFilter(this.nativePtr, (o == null) ? null : (void*)o.NativePtr, (e == null) ? null : (void*)e.NativePtr);
	}
	
	public virtual bool Event(IQEvent param1)
	{
		return CQt.QCompleter_Event(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QCompleter_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QCompleter_Tr3(s, c, n);
	}
	
	public void Complete1(IQRect rect)
	{
		CQt.QCompleter_Complete1(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr);
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
	[LinkName("QCompleter_new")]
	public static extern void* QCompleter_new();
	[LinkName("QCompleter_new2")]
	public static extern void* QCompleter_new2(void* model);
	[LinkName("QCompleter_new3")]
	public static extern void* QCompleter_new3(libqt_string[] completions);
	[LinkName("QCompleter_new4")]
	public static extern void* QCompleter_new4(void* parent);
	[LinkName("QCompleter_new5")]
	public static extern void* QCompleter_new5(void* model, void* parent);
	[LinkName("QCompleter_new6")]
	public static extern void* QCompleter_new6(libqt_string[] completions, void* parent);
	[LinkName("QCompleter_MetaObject")]
	public static extern void* QCompleter_MetaObject(void* c_this);
	[LinkName("QCompleter_Metacast")]
	public static extern void* QCompleter_Metacast(void* c_this, char8* param1);
	[LinkName("QCompleter_Metacall")]
	public static extern int32 QCompleter_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QCompleter_Tr")]
	public static extern libqt_string QCompleter_Tr(char8* s);
	[LinkName("QCompleter_SetWidget")]
	public static extern void QCompleter_SetWidget(void* c_this, void* widget);
	[LinkName("QCompleter_Widget")]
	public static extern void* QCompleter_Widget(void* c_this);
	[LinkName("QCompleter_SetModel")]
	public static extern void QCompleter_SetModel(void* c_this, void* c);
	[LinkName("QCompleter_Model")]
	public static extern void* QCompleter_Model(void* c_this);
	[LinkName("QCompleter_SetCompletionMode")]
	public static extern void QCompleter_SetCompletionMode(void* c_this, int64 mode);
	[LinkName("QCompleter_CompletionMode")]
	public static extern int64 QCompleter_CompletionMode(void* c_this);
	[LinkName("QCompleter_SetFilterMode")]
	public static extern void QCompleter_SetFilterMode(void* c_this, int64 filterMode);
	[LinkName("QCompleter_FilterMode")]
	public static extern int64 QCompleter_FilterMode(void* c_this);
	[LinkName("QCompleter_Popup")]
	public static extern void* QCompleter_Popup(void* c_this);
	[LinkName("QCompleter_SetPopup")]
	public static extern void QCompleter_SetPopup(void* c_this, void* popup);
	[LinkName("QCompleter_SetCaseSensitivity")]
	public static extern void QCompleter_SetCaseSensitivity(void* c_this, int64 caseSensitivity);
	[LinkName("QCompleter_CaseSensitivity")]
	public static extern int64 QCompleter_CaseSensitivity(void* c_this);
	[LinkName("QCompleter_SetModelSorting")]
	public static extern void QCompleter_SetModelSorting(void* c_this, int64 sorting);
	[LinkName("QCompleter_ModelSorting")]
	public static extern int64 QCompleter_ModelSorting(void* c_this);
	[LinkName("QCompleter_SetCompletionColumn")]
	public static extern void QCompleter_SetCompletionColumn(void* c_this, int32 column);
	[LinkName("QCompleter_CompletionColumn")]
	public static extern int32 QCompleter_CompletionColumn(void* c_this);
	[LinkName("QCompleter_SetCompletionRole")]
	public static extern void QCompleter_SetCompletionRole(void* c_this, int32 role);
	[LinkName("QCompleter_CompletionRole")]
	public static extern int32 QCompleter_CompletionRole(void* c_this);
	[LinkName("QCompleter_WrapAround")]
	public static extern bool QCompleter_WrapAround(void* c_this);
	[LinkName("QCompleter_MaxVisibleItems")]
	public static extern int32 QCompleter_MaxVisibleItems(void* c_this);
	[LinkName("QCompleter_SetMaxVisibleItems")]
	public static extern void QCompleter_SetMaxVisibleItems(void* c_this, int32 maxItems);
	[LinkName("QCompleter_CompletionCount")]
	public static extern int32 QCompleter_CompletionCount(void* c_this);
	[LinkName("QCompleter_SetCurrentRow")]
	public static extern bool QCompleter_SetCurrentRow(void* c_this, int32 row);
	[LinkName("QCompleter_CurrentRow")]
	public static extern int32 QCompleter_CurrentRow(void* c_this);
	[LinkName("QCompleter_CurrentIndex")]
	public static extern void QCompleter_CurrentIndex(void* c_this);
	[LinkName("QCompleter_CurrentCompletion")]
	public static extern libqt_string QCompleter_CurrentCompletion(void* c_this);
	[LinkName("QCompleter_CompletionModel")]
	public static extern void* QCompleter_CompletionModel(void* c_this);
	[LinkName("QCompleter_CompletionPrefix")]
	public static extern libqt_string QCompleter_CompletionPrefix(void* c_this);
	[LinkName("QCompleter_SetCompletionPrefix")]
	public static extern void QCompleter_SetCompletionPrefix(void* c_this, libqt_string prefix);
	[LinkName("QCompleter_Complete")]
	public static extern void QCompleter_Complete(void* c_this);
	[LinkName("QCompleter_SetWrapAround")]
	public static extern void QCompleter_SetWrapAround(void* c_this, bool wrap);
	[LinkName("QCompleter_PathFromIndex")]
	public static extern libqt_string QCompleter_PathFromIndex(void* c_this, void* index);
	[LinkName("QCompleter_SplitPath")]
	public static extern libqt_string[] QCompleter_SplitPath(void* c_this, libqt_string path);
	[LinkName("QCompleter_EventFilter")]
	public static extern bool QCompleter_EventFilter(void* c_this, void* o, void* e);
	[LinkName("QCompleter_Event")]
	public static extern bool QCompleter_Event(void* c_this, void* param1);
	[LinkName("QCompleter_Tr2")]
	public static extern libqt_string QCompleter_Tr2(char8* s, char8* c);
	[LinkName("QCompleter_Tr3")]
	public static extern libqt_string QCompleter_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QCompleter_Complete1")]
	public static extern void QCompleter_Complete1(void* c_this, void* rect);
	/// Delete this object from C++ memory
	[LinkName("QCompleter_Delete")]
	public static extern void QCompleter_Delete(void* self);
}