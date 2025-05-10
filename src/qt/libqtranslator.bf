using System;
using System.Interop;
namespace Qt;

public class QTranslator
{
	protected void* nativePtr;
	
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
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QTranslator_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTranslator_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QTranslator_Tr(s);
	}
	
	public virtual libqt_string Translate(char8[] context, char8[] sourceText, char8[] disambiguation, int32 n)
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
	
	public bool Load(libqt_string filename)
	{
		return CQt.QTranslator_Load(this.nativePtr, filename);
	}
	
	public bool Load2(void* locale, libqt_string filename)
	{
		return CQt.QTranslator_Load2(this.nativePtr, locale, filename);
	}
	
	public bool Load3(uint8* data, int32 lenVal)
	{
		return CQt.QTranslator_Load3(this.nativePtr, data, lenVal);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QTranslator_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QTranslator_Tr3(s, c, n);
	}
	
	public bool Load22(libqt_string filename, libqt_string directory)
	{
		return CQt.QTranslator_Load22(this.nativePtr, filename, directory);
	}
	
	public bool Load32(libqt_string filename, libqt_string directory, libqt_string search_delimiters)
	{
		return CQt.QTranslator_Load32(this.nativePtr, filename, directory, search_delimiters);
	}
	
	public bool Load4(libqt_string filename, libqt_string directory, libqt_string search_delimiters, libqt_string suffix)
	{
		return CQt.QTranslator_Load4(this.nativePtr, filename, directory, search_delimiters, suffix);
	}
	
	public bool Load33(void* locale, libqt_string filename, libqt_string prefix)
	{
		return CQt.QTranslator_Load33(this.nativePtr, locale, filename, prefix);
	}
	
	public bool Load42(void* locale, libqt_string filename, libqt_string prefix, libqt_string directory)
	{
		return CQt.QTranslator_Load42(this.nativePtr, locale, filename, prefix, directory);
	}
	
	public bool Load5(void* locale, libqt_string filename, libqt_string prefix, libqt_string directory, libqt_string suffix)
	{
		return CQt.QTranslator_Load5(this.nativePtr, locale, filename, prefix, directory, suffix);
	}
	
	public bool Load34(uint8* data, int32 lenVal, libqt_string directory)
	{
		return CQt.QTranslator_Load34(this.nativePtr, data, lenVal, directory);
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
	[LinkName("QTranslator_new")]
	public static extern void* QTranslator_new();
	[LinkName("QTranslator_new2")]
	public static extern void* QTranslator_new2(void* parent);
	[LinkName("QTranslator_MetaObject")]
	public static extern void* QTranslator_MetaObject(void* c_this);
	[LinkName("QTranslator_Metacast")]
	public static extern void* QTranslator_Metacast(void* c_this, char8[] param1);
	[LinkName("QTranslator_Metacall")]
	public static extern int32 QTranslator_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTranslator_Tr")]
	public static extern libqt_string QTranslator_Tr(char8[] s);
	[LinkName("QTranslator_Translate")]
	public static extern libqt_string QTranslator_Translate(void* c_this, char8[] context, char8[] sourceText, char8[] disambiguation, int32 n);
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
	public static extern libqt_string QTranslator_Tr2(char8[] s, char8[] c);
	[LinkName("QTranslator_Tr3")]
	public static extern libqt_string QTranslator_Tr3(char8[] s, char8[] c, int32 n);
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