using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDataWidgetMapper__SubmitPolicy
{
	AutoSubmit = 0,
	ManualSubmit = 1,
}
public interface IQDataWidgetMapper
{
	void* NativePtr { get; }
}
public struct QDataWidgetMapperPtr : IQDataWidgetMapper, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QDataWidgetMapper_new());
	}
	
	public void Dispose()
	{
		CQt.QDataWidgetMapper_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QDataWidgetMapper_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QDataWidgetMapper_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QDataWidgetMapper_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QDataWidgetMapper_Tr(s);
	}
	
	public void SetModel(IQAbstractItemModel model)
	{
		CQt.QDataWidgetMapper_SetModel(this.nativePtr, (model == default || model.NativePtr == default) ? default : model.NativePtr);
	}
	
	public void* Model()
	{
		return CQt.QDataWidgetMapper_Model(this.nativePtr);
	}
	
	public void SetItemDelegate(IQAbstractItemDelegate _delegate)
	{
		CQt.QDataWidgetMapper_SetItemDelegate(this.nativePtr, (_delegate == default || _delegate.NativePtr == default) ? default : _delegate.NativePtr);
	}
	
	public void* ItemDelegate()
	{
		return CQt.QDataWidgetMapper_ItemDelegate(this.nativePtr);
	}
	
	public void SetRootIndex(IQModelIndex index)
	{
		CQt.QDataWidgetMapper_SetRootIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void RootIndex()
	{
		CQt.QDataWidgetMapper_RootIndex(this.nativePtr);
	}
	
	public void SetOrientation(int64 aOrientation)
	{
		CQt.QDataWidgetMapper_SetOrientation(this.nativePtr, (int64)aOrientation);
	}
	
	public int64 Orientation()
	{
		return CQt.QDataWidgetMapper_Orientation(this.nativePtr);
	}
	
	public void SetSubmitPolicy(int64 policy)
	{
		CQt.QDataWidgetMapper_SetSubmitPolicy(this.nativePtr, (int64)policy);
	}
	
	public int64 SubmitPolicy()
	{
		return CQt.QDataWidgetMapper_SubmitPolicy(this.nativePtr);
	}
	
	public void AddMapping(IQWidget widget, int32 section)
	{
		CQt.QDataWidgetMapper_AddMapping(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr, section);
	}
	
	public void AddMapping2(IQWidget widget, int32 section, String propertyName)
	{
		CQt.QDataWidgetMapper_AddMapping2(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr, section, libqt_string(propertyName));
	}
	
	public void RemoveMapping(IQWidget widget)
	{
		CQt.QDataWidgetMapper_RemoveMapping(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public int32 MappedSection(IQWidget widget)
	{
		return CQt.QDataWidgetMapper_MappedSection(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public libqt_string MappedPropertyName(IQWidget widget)
	{
		return CQt.QDataWidgetMapper_MappedPropertyName(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void* MappedWidgetAt(int32 section)
	{
		return CQt.QDataWidgetMapper_MappedWidgetAt(this.nativePtr, section);
	}
	
	public void ClearMapping()
	{
		CQt.QDataWidgetMapper_ClearMapping(this.nativePtr);
	}
	
	public int32 CurrentIndex()
	{
		return CQt.QDataWidgetMapper_CurrentIndex(this.nativePtr);
	}
	
	public void Revert()
	{
		CQt.QDataWidgetMapper_Revert(this.nativePtr);
	}
	
	public bool Submit()
	{
		return CQt.QDataWidgetMapper_Submit(this.nativePtr);
	}
	
	public void ToFirst()
	{
		CQt.QDataWidgetMapper_ToFirst(this.nativePtr);
	}
	
	public void ToLast()
	{
		CQt.QDataWidgetMapper_ToLast(this.nativePtr);
	}
	
	public void ToNext()
	{
		CQt.QDataWidgetMapper_ToNext(this.nativePtr);
	}
	
	public void ToPrevious()
	{
		CQt.QDataWidgetMapper_ToPrevious(this.nativePtr);
	}
	
	public void SetCurrentIndex(int32 index)
	{
		CQt.QDataWidgetMapper_SetCurrentIndex(this.nativePtr, index);
	}
	
	public void SetCurrentModelIndex(IQModelIndex index)
	{
		CQt.QDataWidgetMapper_SetCurrentModelIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QDataWidgetMapper_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QDataWidgetMapper_Tr3(s, c, n);
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
public class QDataWidgetMapper
{
	public QDataWidgetMapperPtr handle;
	
	public static implicit operator QDataWidgetMapperPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QDataWidgetMapperPtr.New();
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
		return QDataWidgetMapperPtr.Tr(s);
	}
	
	public void SetModel(IQAbstractItemModel model)
	{
		this.handle.SetModel(model);
	}
	
	public void* Model()
	{
		return this.handle.Model();
	}
	
	public void SetItemDelegate(IQAbstractItemDelegate _delegate)
	{
		this.handle.SetItemDelegate(_delegate);
	}
	
	public void* ItemDelegate()
	{
		return this.handle.ItemDelegate();
	}
	
	public void SetRootIndex(IQModelIndex index)
	{
		this.handle.SetRootIndex(index);
	}
	
	public void RootIndex()
	{
		this.handle.RootIndex();
	}
	
	public void SetOrientation(int64 aOrientation)
	{
		this.handle.SetOrientation(aOrientation);
	}
	
	public int64 Orientation()
	{
		return this.handle.Orientation();
	}
	
	public void SetSubmitPolicy(int64 policy)
	{
		this.handle.SetSubmitPolicy(policy);
	}
	
	public int64 SubmitPolicy()
	{
		return this.handle.SubmitPolicy();
	}
	
	public void AddMapping(IQWidget widget, int32 section)
	{
		this.handle.AddMapping(widget, section);
	}
	
	public void AddMapping2(IQWidget widget, int32 section, String propertyName)
	{
		this.handle.AddMapping2(widget, section, propertyName);
	}
	
	public void RemoveMapping(IQWidget widget)
	{
		this.handle.RemoveMapping(widget);
	}
	
	public int32 MappedSection(IQWidget widget)
	{
		return this.handle.MappedSection(widget);
	}
	
	public libqt_string MappedPropertyName(IQWidget widget)
	{
		return this.handle.MappedPropertyName(widget);
	}
	
	public void* MappedWidgetAt(int32 section)
	{
		return this.handle.MappedWidgetAt(section);
	}
	
	public void ClearMapping()
	{
		this.handle.ClearMapping();
	}
	
	public int32 CurrentIndex()
	{
		return this.handle.CurrentIndex();
	}
	
	public void Revert()
	{
		this.handle.Revert();
	}
	
	public bool Submit()
	{
		return this.handle.Submit();
	}
	
	public void ToFirst()
	{
		this.handle.ToFirst();
	}
	
	public void ToLast()
	{
		this.handle.ToLast();
	}
	
	public void ToNext()
	{
		this.handle.ToNext();
	}
	
	public void ToPrevious()
	{
		this.handle.ToPrevious();
	}
	
	public virtual void SetCurrentIndex(int32 index)
	{
		this.handle.SetCurrentIndex(index);
	}
	
	public void SetCurrentModelIndex(IQModelIndex index)
	{
		this.handle.SetCurrentModelIndex(index);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QDataWidgetMapperPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QDataWidgetMapperPtr.Tr3(s, c, n);
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
		QDataWidgetMapperPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QDataWidgetMapperPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QDataWidgetMapperPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QDataWidgetMapperPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QDataWidgetMapper_new")]
	public static extern void* QDataWidgetMapper_new();
	[LinkName("QDataWidgetMapper_new2")]
	public static extern void* QDataWidgetMapper_new2(void* parent);
	[LinkName("QDataWidgetMapper_MetaObject")]
	public static extern void* QDataWidgetMapper_MetaObject(void* c_this);
	[LinkName("QDataWidgetMapper_Metacast")]
	public static extern void* QDataWidgetMapper_Metacast(void* c_this, char8* param1);
	[LinkName("QDataWidgetMapper_Metacall")]
	public static extern int32 QDataWidgetMapper_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QDataWidgetMapper_Tr")]
	public static extern libqt_string QDataWidgetMapper_Tr(char8* s);
	[LinkName("QDataWidgetMapper_SetModel")]
	public static extern void QDataWidgetMapper_SetModel(void* c_this, void* model);
	[LinkName("QDataWidgetMapper_Model")]
	public static extern void* QDataWidgetMapper_Model(void* c_this);
	[LinkName("QDataWidgetMapper_SetItemDelegate")]
	public static extern void QDataWidgetMapper_SetItemDelegate(void* c_this, void* _delegate);
	[LinkName("QDataWidgetMapper_ItemDelegate")]
	public static extern void* QDataWidgetMapper_ItemDelegate(void* c_this);
	[LinkName("QDataWidgetMapper_SetRootIndex")]
	public static extern void QDataWidgetMapper_SetRootIndex(void* c_this, void* index);
	[LinkName("QDataWidgetMapper_RootIndex")]
	public static extern void QDataWidgetMapper_RootIndex(void* c_this);
	[LinkName("QDataWidgetMapper_SetOrientation")]
	public static extern void QDataWidgetMapper_SetOrientation(void* c_this, int64 aOrientation);
	[LinkName("QDataWidgetMapper_Orientation")]
	public static extern int64 QDataWidgetMapper_Orientation(void* c_this);
	[LinkName("QDataWidgetMapper_SetSubmitPolicy")]
	public static extern void QDataWidgetMapper_SetSubmitPolicy(void* c_this, int64 policy);
	[LinkName("QDataWidgetMapper_SubmitPolicy")]
	public static extern int64 QDataWidgetMapper_SubmitPolicy(void* c_this);
	[LinkName("QDataWidgetMapper_AddMapping")]
	public static extern void QDataWidgetMapper_AddMapping(void* c_this, void* widget, int32 section);
	[LinkName("QDataWidgetMapper_AddMapping2")]
	public static extern void QDataWidgetMapper_AddMapping2(void* c_this, void* widget, int32 section, libqt_string propertyName);
	[LinkName("QDataWidgetMapper_RemoveMapping")]
	public static extern void QDataWidgetMapper_RemoveMapping(void* c_this, void* widget);
	[LinkName("QDataWidgetMapper_MappedSection")]
	public static extern int32 QDataWidgetMapper_MappedSection(void* c_this, void* widget);
	[LinkName("QDataWidgetMapper_MappedPropertyName")]
	public static extern libqt_string QDataWidgetMapper_MappedPropertyName(void* c_this, void* widget);
	[LinkName("QDataWidgetMapper_MappedWidgetAt")]
	public static extern void* QDataWidgetMapper_MappedWidgetAt(void* c_this, int32 section);
	[LinkName("QDataWidgetMapper_ClearMapping")]
	public static extern void QDataWidgetMapper_ClearMapping(void* c_this);
	[LinkName("QDataWidgetMapper_CurrentIndex")]
	public static extern int32 QDataWidgetMapper_CurrentIndex(void* c_this);
	[LinkName("QDataWidgetMapper_Revert")]
	public static extern void QDataWidgetMapper_Revert(void* c_this);
	[LinkName("QDataWidgetMapper_Submit")]
	public static extern bool QDataWidgetMapper_Submit(void* c_this);
	[LinkName("QDataWidgetMapper_ToFirst")]
	public static extern void QDataWidgetMapper_ToFirst(void* c_this);
	[LinkName("QDataWidgetMapper_ToLast")]
	public static extern void QDataWidgetMapper_ToLast(void* c_this);
	[LinkName("QDataWidgetMapper_ToNext")]
	public static extern void QDataWidgetMapper_ToNext(void* c_this);
	[LinkName("QDataWidgetMapper_ToPrevious")]
	public static extern void QDataWidgetMapper_ToPrevious(void* c_this);
	[LinkName("QDataWidgetMapper_SetCurrentIndex")]
	public static extern void QDataWidgetMapper_SetCurrentIndex(void* c_this, int32 index);
	[LinkName("QDataWidgetMapper_SetCurrentModelIndex")]
	public static extern void QDataWidgetMapper_SetCurrentModelIndex(void* c_this, void* index);
	[LinkName("QDataWidgetMapper_Connect_CurrentIndexChanged")]
	public static extern void QDataWidgetMapper_Connect_CurrentIndexChanged(void* c_this, c_intptr slot);
	[LinkName("QDataWidgetMapper_Tr2")]
	public static extern libqt_string QDataWidgetMapper_Tr2(char8* s, char8* c);
	[LinkName("QDataWidgetMapper_Tr3")]
	public static extern libqt_string QDataWidgetMapper_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QDataWidgetMapper_Delete")]
	public static extern void QDataWidgetMapper_Delete(void* self);
}