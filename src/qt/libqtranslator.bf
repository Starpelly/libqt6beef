using System;
using System.Interop;
namespace Qt;

public interface IQTranslator
{
	void* NativePtr { get; }
}
public struct QTranslatorPtr : IQTranslator, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QTranslator_new());
	}
	
	public void Dispose()
	{
		CQt.QTranslator_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QTranslator_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QTranslator_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QTranslator_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QTranslator_Tr(s);
	}
	
	public libqt_string Translate(char8* context, char8* sourceText, char8* disambiguation, int32 n)
	{
		return CQt.QTranslator_Translate(this.nativePtr, context, sourceText, disambiguation, n);
	}
	
	public bool IsEmpty()
	{
		return CQt.QTranslator_IsEmpty(this.nativePtr);
	}
	
	public libqt_string Language()
	{
		return CQt.QTranslator_Language(this.nativePtr);
	}
	
	public libqt_string FilePath()
	{
		return CQt.QTranslator_FilePath(this.nativePtr);
	}
	
	public bool Load(String filename)
	{
		return CQt.QTranslator_Load(this.nativePtr, libqt_string(filename));
	}
	
	public bool Load2(IQLocale locale, String filename)
	{
		return CQt.QTranslator_Load2(this.nativePtr, (locale == default || locale.NativePtr == default) ? default : locale.NativePtr, libqt_string(filename));
	}
	
	public bool Load3(uint8* data, int32 lenVal)
	{
		return CQt.QTranslator_Load3(this.nativePtr, data, lenVal);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QTranslator_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QTranslator_Tr3(s, c, n);
	}
	
	public bool Load22(String filename, String directory)
	{
		return CQt.QTranslator_Load22(this.nativePtr, libqt_string(filename), libqt_string(directory));
	}
	
	public bool Load32(String filename, String directory, String search_delimiters)
	{
		return CQt.QTranslator_Load32(this.nativePtr, libqt_string(filename), libqt_string(directory), libqt_string(search_delimiters));
	}
	
	public bool Load4(String filename, String directory, String search_delimiters, String suffix)
	{
		return CQt.QTranslator_Load4(this.nativePtr, libqt_string(filename), libqt_string(directory), libqt_string(search_delimiters), libqt_string(suffix));
	}
	
	public bool Load33(IQLocale locale, String filename, String prefix)
	{
		return CQt.QTranslator_Load33(this.nativePtr, (locale == default || locale.NativePtr == default) ? default : locale.NativePtr, libqt_string(filename), libqt_string(prefix));
	}
	
	public bool Load42(IQLocale locale, String filename, String prefix, String directory)
	{
		return CQt.QTranslator_Load42(this.nativePtr, (locale == default || locale.NativePtr == default) ? default : locale.NativePtr, libqt_string(filename), libqt_string(prefix), libqt_string(directory));
	}
	
	public bool Load5(IQLocale locale, String filename, String prefix, String directory, String suffix)
	{
		return CQt.QTranslator_Load5(this.nativePtr, (locale == default || locale.NativePtr == default) ? default : locale.NativePtr, libqt_string(filename), libqt_string(prefix), libqt_string(directory), libqt_string(suffix));
	}
	
	public bool Load34(uint8* data, int32 lenVal, String directory)
	{
		return CQt.QTranslator_Load34(this.nativePtr, data, lenVal, libqt_string(directory));
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
public class QTranslator
{
	public QTranslatorPtr handle;
	
	public static implicit operator QTranslatorPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QTranslatorPtr.New();
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
		return QTranslatorPtr.Tr(s);
	}
	
	public virtual libqt_string Translate(char8* context, char8* sourceText, char8* disambiguation, int32 n)
	{
		return this.handle.Translate(context, sourceText, disambiguation, n);
	}
	
	public virtual bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public libqt_string Language()
	{
		return this.handle.Language();
	}
	
	public libqt_string FilePath()
	{
		return this.handle.FilePath();
	}
	
	public bool Load(String filename)
	{
		return this.handle.Load(filename);
	}
	
	public bool Load2(IQLocale locale, String filename)
	{
		return this.handle.Load2(locale, filename);
	}
	
	public bool Load3(uint8* data, int32 lenVal)
	{
		return this.handle.Load3(data, lenVal);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QTranslatorPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QTranslatorPtr.Tr3(s, c, n);
	}
	
	public bool Load22(String filename, String directory)
	{
		return this.handle.Load22(filename, directory);
	}
	
	public bool Load32(String filename, String directory, String search_delimiters)
	{
		return this.handle.Load32(filename, directory, search_delimiters);
	}
	
	public bool Load4(String filename, String directory, String search_delimiters, String suffix)
	{
		return this.handle.Load4(filename, directory, search_delimiters, suffix);
	}
	
	public bool Load33(IQLocale locale, String filename, String prefix)
	{
		return this.handle.Load33(locale, filename, prefix);
	}
	
	public bool Load42(IQLocale locale, String filename, String prefix, String directory)
	{
		return this.handle.Load42(locale, filename, prefix, directory);
	}
	
	public bool Load5(IQLocale locale, String filename, String prefix, String directory, String suffix)
	{
		return this.handle.Load5(locale, filename, prefix, directory, suffix);
	}
	
	public bool Load34(uint8* data, int32 lenVal, String directory)
	{
		return this.handle.Load34(data, lenVal, directory);
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
		QTranslatorPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QTranslatorPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QTranslatorPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QTranslatorPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QTranslator_new")]
	public static extern void* QTranslator_new();
	[LinkName("QTranslator_new2")]
	public static extern void* QTranslator_new2(void* parent);
	[LinkName("QTranslator_MetaObject")]
	public static extern void* QTranslator_MetaObject(void* c_this);
	[LinkName("QTranslator_Metacast")]
	public static extern void* QTranslator_Metacast(void* c_this, char8* param1);
	[LinkName("QTranslator_Metacall")]
	public static extern int32 QTranslator_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QTranslator_Tr")]
	public static extern libqt_string QTranslator_Tr(char8* s);
	[LinkName("QTranslator_Translate")]
	public static extern libqt_string QTranslator_Translate(void* c_this, char8* context, char8* sourceText, char8* disambiguation, int32 n);
	[LinkName("QTranslator_IsEmpty")]
	public static extern bool QTranslator_IsEmpty(void* c_this);
	[LinkName("QTranslator_Language")]
	public static extern libqt_string QTranslator_Language(void* c_this);
	[LinkName("QTranslator_FilePath")]
	public static extern libqt_string QTranslator_FilePath(void* c_this);
	[LinkName("QTranslator_Load")]
	public static extern bool QTranslator_Load(void* c_this, libqt_string filename);
	[LinkName("QTranslator_Load2")]
	public static extern bool QTranslator_Load2(void* c_this, void* locale, libqt_string filename);
	[LinkName("QTranslator_Load3")]
	public static extern bool QTranslator_Load3(void* c_this, uint8* data, int32 lenVal);
	[LinkName("QTranslator_Tr2")]
	public static extern libqt_string QTranslator_Tr2(char8* s, char8* c);
	[LinkName("QTranslator_Tr3")]
	public static extern libqt_string QTranslator_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QTranslator_Load22")]
	public static extern bool QTranslator_Load22(void* c_this, libqt_string filename, libqt_string directory);
	[LinkName("QTranslator_Load32")]
	public static extern bool QTranslator_Load32(void* c_this, libqt_string filename, libqt_string directory, libqt_string search_delimiters);
	[LinkName("QTranslator_Load4")]
	public static extern bool QTranslator_Load4(void* c_this, libqt_string filename, libqt_string directory, libqt_string search_delimiters, libqt_string suffix);
	[LinkName("QTranslator_Load33")]
	public static extern bool QTranslator_Load33(void* c_this, void* locale, libqt_string filename, libqt_string prefix);
	[LinkName("QTranslator_Load42")]
	public static extern bool QTranslator_Load42(void* c_this, void* locale, libqt_string filename, libqt_string prefix, libqt_string directory);
	[LinkName("QTranslator_Load5")]
	public static extern bool QTranslator_Load5(void* c_this, void* locale, libqt_string filename, libqt_string prefix, libqt_string directory, libqt_string suffix);
	[LinkName("QTranslator_Load34")]
	public static extern bool QTranslator_Load34(void* c_this, uint8* data, int32 lenVal, libqt_string directory);
	/// Delete this object from C++ memory
	[LinkName("QTranslator_Delete")]
	public static extern void QTranslator_Delete(void* self);
}