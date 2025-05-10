using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QValidator__State
{
	Invalid = 0,
	Intermediate = 1,
	Acceptable = 2,
}
[AllowDuplicates]
public enum QDoubleValidator__Notation
{
	StandardNotation = 0,
	ScientificNotation = 1,
}
public class QValidator
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QValidator_new();
	}
	
	public ~this()
	{
		CQt.QValidator_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QValidator_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QValidator_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QValidator_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QValidator_Tr(s);
	}
	
	public void SetLocale(void* locale)
	{
		CQt.QValidator_SetLocale(this.nativePtr, locale);
	}
	
	public void Locale()
	{
		CQt.QValidator_Locale(this.nativePtr);
	}
	
	public virtual int64 Validate(libqt_string param1, int32* param2)
	{
		return CQt.QValidator_Validate(this.nativePtr, param1, param2);
	}
	
	public virtual void Fixup(libqt_string param1)
	{
		CQt.QValidator_Fixup(this.nativePtr, param1);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QValidator_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QValidator_Tr3(s, c, n);
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
	[LinkName("QValidator_new")]
	public static extern void* QValidator_new();
	[LinkName("QValidator_new2")]
	public static extern void* QValidator_new2(void* parent);
	[LinkName("QValidator_MetaObject")]
	public static extern void* QValidator_MetaObject(void* c_this);
	[LinkName("QValidator_Metacast")]
	public static extern void* QValidator_Metacast(void* c_this, char8[] param1);
	[LinkName("QValidator_Metacall")]
	public static extern int32 QValidator_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QValidator_Tr")]
	public static extern libqt_string QValidator_Tr(char8[] s);
	[LinkName("QValidator_SetLocale")]
	public static extern void QValidator_SetLocale(void* c_this, void* locale);
	[LinkName("QValidator_Locale")]
	public static extern void QValidator_Locale(void* c_this);
	[LinkName("QValidator_Validate")]
	public static extern int64 QValidator_Validate(void* c_this, libqt_string param1, int32* param2);
	[LinkName("QValidator_Fixup")]
	public static extern void QValidator_Fixup(void* c_this, libqt_string param1);
	[LinkName("QValidator_Connect_Changed")]
	public static extern void QValidator_Connect_Changed(void* c_this, c_intptr slot);
	[LinkName("QValidator_Tr2")]
	public static extern libqt_string QValidator_Tr2(char8[] s, char8[] c);
	[LinkName("QValidator_Tr3")]
	public static extern libqt_string QValidator_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QValidator_Delete")]
	public static extern void QValidator_Delete(void* self);
}
public class QIntValidator
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QIntValidator_new();
	}
	
	public ~this()
	{
		CQt.QIntValidator_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QIntValidator_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QIntValidator_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QIntValidator_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QIntValidator_Tr(s);
	}
	
	public virtual int64 Validate(libqt_string param1, int32* param2)
	{
		return CQt.QIntValidator_Validate(this.nativePtr, param1, param2);
	}
	
	public virtual void Fixup(libqt_string input)
	{
		CQt.QIntValidator_Fixup(this.nativePtr, input);
	}
	
	public void SetBottom(int32 bottom)
	{
		CQt.QIntValidator_SetBottom(this.nativePtr, bottom);
	}
	
	public void SetTop(int32 top)
	{
		CQt.QIntValidator_SetTop(this.nativePtr, top);
	}
	
	public void SetRange(int32 bottom, int32 top)
	{
		CQt.QIntValidator_SetRange(this.nativePtr, bottom, top);
	}
	
	public int32 Bottom()
	{
		return CQt.QIntValidator_Bottom(this.nativePtr);
	}
	
	public int32 Top()
	{
		return CQt.QIntValidator_Top(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QIntValidator_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QIntValidator_Tr3(s, c, n);
	}
	
	public void SetLocale(void* locale)
	{
		CQt.QValidator_SetLocale(this.nativePtr, locale);
	}
	
	public void Locale()
	{
		CQt.QValidator_Locale(this.nativePtr);
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
	[LinkName("QIntValidator_new")]
	public static extern void* QIntValidator_new();
	[LinkName("QIntValidator_new2")]
	public static extern void* QIntValidator_new2(int32 bottom, int32 top);
	[LinkName("QIntValidator_new3")]
	public static extern void* QIntValidator_new3(void* parent);
	[LinkName("QIntValidator_new4")]
	public static extern void* QIntValidator_new4(int32 bottom, int32 top, void* parent);
	[LinkName("QIntValidator_MetaObject")]
	public static extern void* QIntValidator_MetaObject(void* c_this);
	[LinkName("QIntValidator_Metacast")]
	public static extern void* QIntValidator_Metacast(void* c_this, char8[] param1);
	[LinkName("QIntValidator_Metacall")]
	public static extern int32 QIntValidator_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QIntValidator_Tr")]
	public static extern libqt_string QIntValidator_Tr(char8[] s);
	[LinkName("QIntValidator_Validate")]
	public static extern int64 QIntValidator_Validate(void* c_this, libqt_string param1, int32* param2);
	[LinkName("QIntValidator_Fixup")]
	public static extern void QIntValidator_Fixup(void* c_this, libqt_string input);
	[LinkName("QIntValidator_SetBottom")]
	public static extern void QIntValidator_SetBottom(void* c_this, int32 bottom);
	[LinkName("QIntValidator_SetTop")]
	public static extern void QIntValidator_SetTop(void* c_this, int32 top);
	[LinkName("QIntValidator_SetRange")]
	public static extern void QIntValidator_SetRange(void* c_this, int32 bottom, int32 top);
	[LinkName("QIntValidator_Bottom")]
	public static extern int32 QIntValidator_Bottom(void* c_this);
	[LinkName("QIntValidator_Top")]
	public static extern int32 QIntValidator_Top(void* c_this);
	[LinkName("QIntValidator_Connect_BottomChanged")]
	public static extern void QIntValidator_Connect_BottomChanged(void* c_this, c_intptr slot);
	[LinkName("QIntValidator_Connect_TopChanged")]
	public static extern void QIntValidator_Connect_TopChanged(void* c_this, c_intptr slot);
	[LinkName("QIntValidator_Tr2")]
	public static extern libqt_string QIntValidator_Tr2(char8[] s, char8[] c);
	[LinkName("QIntValidator_Tr3")]
	public static extern libqt_string QIntValidator_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QIntValidator_Delete")]
	public static extern void QIntValidator_Delete(void* self);
}
public class QDoubleValidator
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QDoubleValidator_new();
	}
	
	public ~this()
	{
		CQt.QDoubleValidator_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QDoubleValidator_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QDoubleValidator_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QDoubleValidator_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QDoubleValidator_Tr(s);
	}
	
	public virtual int64 Validate(libqt_string param1, int32* param2)
	{
		return CQt.QDoubleValidator_Validate(this.nativePtr, param1, param2);
	}
	
	public virtual void Fixup(libqt_string input)
	{
		CQt.QDoubleValidator_Fixup(this.nativePtr, input);
	}
	
	public void SetRange(double bottom, double top, int32 decimals)
	{
		CQt.QDoubleValidator_SetRange(this.nativePtr, bottom, top, decimals);
	}
	
	public void SetRange2(double bottom, double top)
	{
		CQt.QDoubleValidator_SetRange2(this.nativePtr, bottom, top);
	}
	
	public void SetBottom(double bottom)
	{
		CQt.QDoubleValidator_SetBottom(this.nativePtr, bottom);
	}
	
	public void SetTop(double top)
	{
		CQt.QDoubleValidator_SetTop(this.nativePtr, top);
	}
	
	public void SetDecimals(int32 decimals)
	{
		CQt.QDoubleValidator_SetDecimals(this.nativePtr, decimals);
	}
	
	public void SetNotation(int64 notation)
	{
		CQt.QDoubleValidator_SetNotation(this.nativePtr, notation);
	}
	
	public double Bottom()
	{
		return CQt.QDoubleValidator_Bottom(this.nativePtr);
	}
	
	public double Top()
	{
		return CQt.QDoubleValidator_Top(this.nativePtr);
	}
	
	public int32 Decimals()
	{
		return CQt.QDoubleValidator_Decimals(this.nativePtr);
	}
	
	public int64 Notation()
	{
		return CQt.QDoubleValidator_Notation(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QDoubleValidator_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QDoubleValidator_Tr3(s, c, n);
	}
	
	public void SetLocale(void* locale)
	{
		CQt.QValidator_SetLocale(this.nativePtr, locale);
	}
	
	public void Locale()
	{
		CQt.QValidator_Locale(this.nativePtr);
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
	[LinkName("QDoubleValidator_new")]
	public static extern void* QDoubleValidator_new();
	[LinkName("QDoubleValidator_new2")]
	public static extern void* QDoubleValidator_new2(double bottom, double top, int32 decimals);
	[LinkName("QDoubleValidator_new3")]
	public static extern void* QDoubleValidator_new3(void* parent);
	[LinkName("QDoubleValidator_new4")]
	public static extern void* QDoubleValidator_new4(double bottom, double top, int32 decimals, void* parent);
	[LinkName("QDoubleValidator_MetaObject")]
	public static extern void* QDoubleValidator_MetaObject(void* c_this);
	[LinkName("QDoubleValidator_Metacast")]
	public static extern void* QDoubleValidator_Metacast(void* c_this, char8[] param1);
	[LinkName("QDoubleValidator_Metacall")]
	public static extern int32 QDoubleValidator_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QDoubleValidator_Tr")]
	public static extern libqt_string QDoubleValidator_Tr(char8[] s);
	[LinkName("QDoubleValidator_Validate")]
	public static extern int64 QDoubleValidator_Validate(void* c_this, libqt_string param1, int32* param2);
	[LinkName("QDoubleValidator_Fixup")]
	public static extern void QDoubleValidator_Fixup(void* c_this, libqt_string input);
	[LinkName("QDoubleValidator_SetRange")]
	public static extern void QDoubleValidator_SetRange(void* c_this, double bottom, double top, int32 decimals);
	[LinkName("QDoubleValidator_SetRange2")]
	public static extern void QDoubleValidator_SetRange2(void* c_this, double bottom, double top);
	[LinkName("QDoubleValidator_SetBottom")]
	public static extern void QDoubleValidator_SetBottom(void* c_this, double bottom);
	[LinkName("QDoubleValidator_SetTop")]
	public static extern void QDoubleValidator_SetTop(void* c_this, double top);
	[LinkName("QDoubleValidator_SetDecimals")]
	public static extern void QDoubleValidator_SetDecimals(void* c_this, int32 decimals);
	[LinkName("QDoubleValidator_SetNotation")]
	public static extern void QDoubleValidator_SetNotation(void* c_this, int64 notation);
	[LinkName("QDoubleValidator_Bottom")]
	public static extern double QDoubleValidator_Bottom(void* c_this);
	[LinkName("QDoubleValidator_Top")]
	public static extern double QDoubleValidator_Top(void* c_this);
	[LinkName("QDoubleValidator_Decimals")]
	public static extern int32 QDoubleValidator_Decimals(void* c_this);
	[LinkName("QDoubleValidator_Notation")]
	public static extern int64 QDoubleValidator_Notation(void* c_this);
	[LinkName("QDoubleValidator_Connect_BottomChanged")]
	public static extern void QDoubleValidator_Connect_BottomChanged(void* c_this, c_intptr slot);
	[LinkName("QDoubleValidator_Connect_TopChanged")]
	public static extern void QDoubleValidator_Connect_TopChanged(void* c_this, c_intptr slot);
	[LinkName("QDoubleValidator_Connect_DecimalsChanged")]
	public static extern void QDoubleValidator_Connect_DecimalsChanged(void* c_this, c_intptr slot);
	[LinkName("QDoubleValidator_Connect_NotationChanged")]
	public static extern void QDoubleValidator_Connect_NotationChanged(void* c_this, c_intptr slot);
	[LinkName("QDoubleValidator_Tr2")]
	public static extern libqt_string QDoubleValidator_Tr2(char8[] s, char8[] c);
	[LinkName("QDoubleValidator_Tr3")]
	public static extern libqt_string QDoubleValidator_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QDoubleValidator_Delete")]
	public static extern void QDoubleValidator_Delete(void* self);
}
public class QRegularExpressionValidator
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QRegularExpressionValidator_new();
	}
	
	public ~this()
	{
		CQt.QRegularExpressionValidator_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QRegularExpressionValidator_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QRegularExpressionValidator_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QRegularExpressionValidator_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QRegularExpressionValidator_Tr(s);
	}
	
	public virtual int64 Validate(libqt_string input, int32* pos)
	{
		return CQt.QRegularExpressionValidator_Validate(this.nativePtr, input, pos);
	}
	
	public void RegularExpression()
	{
		CQt.QRegularExpressionValidator_RegularExpression(this.nativePtr);
	}
	
	public void SetRegularExpression(void* re)
	{
		CQt.QRegularExpressionValidator_SetRegularExpression(this.nativePtr, re);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QRegularExpressionValidator_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QRegularExpressionValidator_Tr3(s, c, n);
	}
	
	public void SetLocale(void* locale)
	{
		CQt.QValidator_SetLocale(this.nativePtr, locale);
	}
	
	public void Locale()
	{
		CQt.QValidator_Locale(this.nativePtr);
	}
	
	public virtual void Fixup(libqt_string param1)
	{
		CQt.QValidator_Fixup(this.nativePtr, param1);
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
	[LinkName("QRegularExpressionValidator_new")]
	public static extern void* QRegularExpressionValidator_new();
	[LinkName("QRegularExpressionValidator_new2")]
	public static extern void* QRegularExpressionValidator_new2(void* re);
	[LinkName("QRegularExpressionValidator_new3")]
	public static extern void* QRegularExpressionValidator_new3(void* parent);
	[LinkName("QRegularExpressionValidator_new4")]
	public static extern void* QRegularExpressionValidator_new4(void* re, void* parent);
	[LinkName("QRegularExpressionValidator_MetaObject")]
	public static extern void* QRegularExpressionValidator_MetaObject(void* c_this);
	[LinkName("QRegularExpressionValidator_Metacast")]
	public static extern void* QRegularExpressionValidator_Metacast(void* c_this, char8[] param1);
	[LinkName("QRegularExpressionValidator_Metacall")]
	public static extern int32 QRegularExpressionValidator_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QRegularExpressionValidator_Tr")]
	public static extern libqt_string QRegularExpressionValidator_Tr(char8[] s);
	[LinkName("QRegularExpressionValidator_Validate")]
	public static extern int64 QRegularExpressionValidator_Validate(void* c_this, libqt_string input, int32* pos);
	[LinkName("QRegularExpressionValidator_RegularExpression")]
	public static extern void QRegularExpressionValidator_RegularExpression(void* c_this);
	[LinkName("QRegularExpressionValidator_SetRegularExpression")]
	public static extern void QRegularExpressionValidator_SetRegularExpression(void* c_this, void* re);
	[LinkName("QRegularExpressionValidator_Connect_RegularExpressionChanged")]
	public static extern void QRegularExpressionValidator_Connect_RegularExpressionChanged(void* c_this, c_intptr slot);
	[LinkName("QRegularExpressionValidator_Tr2")]
	public static extern libqt_string QRegularExpressionValidator_Tr2(char8[] s, char8[] c);
	[LinkName("QRegularExpressionValidator_Tr3")]
	public static extern libqt_string QRegularExpressionValidator_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QRegularExpressionValidator_Delete")]
	public static extern void QRegularExpressionValidator_Delete(void* self);
}