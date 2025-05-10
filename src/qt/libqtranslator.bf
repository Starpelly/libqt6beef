using System;
using System.Interop;
namespace Qt;

public interface IQTranslator
{
	void* NativePtr { get; }
}
public class QTranslator : IQTranslator, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTranslator_new();
	}
	
	public ~this()
	{
		CQt.QTranslator_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QTranslator_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QTranslator_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTranslator_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QTranslator_Tr(s);
	}
	
	public virtual libqt_string Translate(char8* context, char8* sourceText, char8* disambiguation, int32 n)
	{
		return CQt.QTranslator_Translate(this.nativePtr, context, sourceText, disambiguation, n);
	}
	
	public virtual bool IsEmpty()
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
		return CQt.QTranslator_Load2(this.nativePtr, (locale == default) ? default : (void*)locale.NativePtr, libqt_string(filename));
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
		return CQt.QTranslator_Load33(this.nativePtr, (locale == default) ? default : (void*)locale.NativePtr, libqt_string(filename), libqt_string(prefix));
	}
	
	public bool Load42(IQLocale locale, String filename, String prefix, String directory)
	{
		return CQt.QTranslator_Load42(this.nativePtr, (locale == default) ? default : (void*)locale.NativePtr, libqt_string(filename), libqt_string(prefix), libqt_string(directory));
	}
	
	public bool Load5(IQLocale locale, String filename, String prefix, String directory, String suffix)
	{
		return CQt.QTranslator_Load5(this.nativePtr, (locale == default) ? default : (void*)locale.NativePtr, libqt_string(filename), libqt_string(prefix), libqt_string(directory), libqt_string(suffix));
	}
	
	public bool Load34(uint8* data, int32 lenVal, String directory)
	{
		return CQt.QTranslator_Load34(this.nativePtr, data, lenVal, libqt_string(directory));
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