using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsEffect__ChangeFlag
{
	SourceAttached = 1,
	SourceDetached = 2,
	SourceBoundingRectChanged = 4,
	SourceInvalidated = 8,
}
[AllowDuplicates]
public enum QGraphicsEffect__PixmapPadMode
{
	NoPad = 0,
	PadToTransparentBorder = 1,
	PadToEffectiveBoundingRect = 2,
}
[AllowDuplicates]
public enum QGraphicsBlurEffect__BlurHint
{
	PerformanceHint = 0,
	QualityHint = 1,
	AnimationHint = 2,
}
public class QGraphicsEffect
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsEffect_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsEffect_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QGraphicsEffect_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QGraphicsEffect_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QGraphicsEffect_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QGraphicsEffect_Tr(s);
	}
	
	public virtual void BoundingRectFor(void* sourceRect)
	{
		CQt.QGraphicsEffect_BoundingRectFor(this.nativePtr, sourceRect);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsEffect_BoundingRect(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsEffect_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enable)
	{
		CQt.QGraphicsEffect_SetEnabled(this.nativePtr, enable);
	}
	
	public void Update()
	{
		CQt.QGraphicsEffect_Update(this.nativePtr);
	}
	
	public virtual void Draw(void* painter)
	{
		CQt.QGraphicsEffect_Draw(this.nativePtr, painter);
	}
	
	public virtual void SourceChanged(int64 flags)
	{
		CQt.QGraphicsEffect_SourceChanged(this.nativePtr, flags);
	}
	
	public void UpdateBoundingRect()
	{
		CQt.QGraphicsEffect_UpdateBoundingRect(this.nativePtr);
	}
	
	public bool SourceIsPixmap()
	{
		return CQt.QGraphicsEffect_SourceIsPixmap(this.nativePtr);
	}
	
	public void SourceBoundingRect()
	{
		CQt.QGraphicsEffect_SourceBoundingRect(this.nativePtr);
	}
	
	public void DrawSource(void* painter)
	{
		CQt.QGraphicsEffect_DrawSource(this.nativePtr, painter);
	}
	
	public void SourcePixmap()
	{
		CQt.QGraphicsEffect_SourcePixmap(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QGraphicsEffect_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QGraphicsEffect_Tr3(s, c, n);
	}
	
	public void SourceBoundingRect1(int64 system)
	{
		CQt.QGraphicsEffect_SourceBoundingRect1(this.nativePtr, system);
	}
	
	public void SourcePixmap1(int64 system)
	{
		CQt.QGraphicsEffect_SourcePixmap1(this.nativePtr, system);
	}
	
	public void SourcePixmap2(int64 system, void* offset)
	{
		CQt.QGraphicsEffect_SourcePixmap2(this.nativePtr, system, offset);
	}
	
	public void SourcePixmap3(int64 system, void* offset, int64 mode)
	{
		CQt.QGraphicsEffect_SourcePixmap3(this.nativePtr, system, offset, mode);
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
	[LinkName("QGraphicsEffect_new")]
	public static extern void* QGraphicsEffect_new();
	[LinkName("QGraphicsEffect_new2")]
	public static extern void* QGraphicsEffect_new2(void* parent);
	[LinkName("QGraphicsEffect_MetaObject")]
	public static extern void* QGraphicsEffect_MetaObject(void* c_this);
	[LinkName("QGraphicsEffect_Metacast")]
	public static extern void* QGraphicsEffect_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsEffect_Metacall")]
	public static extern int32 QGraphicsEffect_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsEffect_Tr")]
	public static extern libqt_string QGraphicsEffect_Tr(char8[] s);
	[LinkName("QGraphicsEffect_BoundingRectFor")]
	public static extern void QGraphicsEffect_BoundingRectFor(void* c_this, void* sourceRect);
	[LinkName("QGraphicsEffect_BoundingRect")]
	public static extern void QGraphicsEffect_BoundingRect(void* c_this);
	[LinkName("QGraphicsEffect_IsEnabled")]
	public static extern bool QGraphicsEffect_IsEnabled(void* c_this);
	[LinkName("QGraphicsEffect_SetEnabled")]
	public static extern void QGraphicsEffect_SetEnabled(void* c_this, bool enable);
	[LinkName("QGraphicsEffect_Update")]
	public static extern void QGraphicsEffect_Update(void* c_this);
	[LinkName("QGraphicsEffect_Connect_EnabledChanged")]
	public static extern void QGraphicsEffect_Connect_EnabledChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsEffect_Draw")]
	public static extern void QGraphicsEffect_Draw(void* c_this, void* painter);
	[LinkName("QGraphicsEffect_SourceChanged")]
	public static extern void QGraphicsEffect_SourceChanged(void* c_this, int64 flags);
	[LinkName("QGraphicsEffect_UpdateBoundingRect")]
	public static extern void QGraphicsEffect_UpdateBoundingRect(void* c_this);
	[LinkName("QGraphicsEffect_SourceIsPixmap")]
	public static extern bool QGraphicsEffect_SourceIsPixmap(void* c_this);
	[LinkName("QGraphicsEffect_SourceBoundingRect")]
	public static extern void QGraphicsEffect_SourceBoundingRect(void* c_this);
	[LinkName("QGraphicsEffect_DrawSource")]
	public static extern void QGraphicsEffect_DrawSource(void* c_this, void* painter);
	[LinkName("QGraphicsEffect_SourcePixmap")]
	public static extern void QGraphicsEffect_SourcePixmap(void* c_this);
	[LinkName("QGraphicsEffect_Tr2")]
	public static extern libqt_string QGraphicsEffect_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsEffect_Tr3")]
	public static extern libqt_string QGraphicsEffect_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QGraphicsEffect_SourceBoundingRect1")]
	public static extern void QGraphicsEffect_SourceBoundingRect1(void* c_this, int64 system);
	[LinkName("QGraphicsEffect_SourcePixmap1")]
	public static extern void QGraphicsEffect_SourcePixmap1(void* c_this, int64 system);
	[LinkName("QGraphicsEffect_SourcePixmap2")]
	public static extern void QGraphicsEffect_SourcePixmap2(void* c_this, int64 system, void* offset);
	[LinkName("QGraphicsEffect_SourcePixmap3")]
	public static extern void QGraphicsEffect_SourcePixmap3(void* c_this, int64 system, void* offset, int64 mode);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsEffect_Delete")]
	public static extern void QGraphicsEffect_Delete(void* self);
}
public class QGraphicsColorizeEffect
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsColorizeEffect_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsColorizeEffect_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QGraphicsColorizeEffect_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QGraphicsColorizeEffect_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QGraphicsColorizeEffect_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QGraphicsColorizeEffect_Tr(s);
	}
	
	public void Color()
	{
		CQt.QGraphicsColorizeEffect_Color(this.nativePtr);
	}
	
	public double Strength()
	{
		return CQt.QGraphicsColorizeEffect_Strength(this.nativePtr);
	}
	
	public void SetColor(void* c)
	{
		CQt.QGraphicsColorizeEffect_SetColor(this.nativePtr, c);
	}
	
	public void SetStrength(double strength)
	{
		CQt.QGraphicsColorizeEffect_SetStrength(this.nativePtr, strength);
	}
	
	public virtual void Draw(void* painter)
	{
		CQt.QGraphicsColorizeEffect_Draw(this.nativePtr, painter);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QGraphicsColorizeEffect_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QGraphicsColorizeEffect_Tr3(s, c, n);
	}
	
	public virtual void BoundingRectFor(void* sourceRect)
	{
		CQt.QGraphicsEffect_BoundingRectFor(this.nativePtr, sourceRect);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsEffect_BoundingRect(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsEffect_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enable)
	{
		CQt.QGraphicsEffect_SetEnabled(this.nativePtr, enable);
	}
	
	public void Update()
	{
		CQt.QGraphicsEffect_Update(this.nativePtr);
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
	[LinkName("QGraphicsColorizeEffect_new")]
	public static extern void* QGraphicsColorizeEffect_new();
	[LinkName("QGraphicsColorizeEffect_new2")]
	public static extern void* QGraphicsColorizeEffect_new2(void* parent);
	[LinkName("QGraphicsColorizeEffect_MetaObject")]
	public static extern void* QGraphicsColorizeEffect_MetaObject(void* c_this);
	[LinkName("QGraphicsColorizeEffect_Metacast")]
	public static extern void* QGraphicsColorizeEffect_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsColorizeEffect_Metacall")]
	public static extern int32 QGraphicsColorizeEffect_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsColorizeEffect_Tr")]
	public static extern libqt_string QGraphicsColorizeEffect_Tr(char8[] s);
	[LinkName("QGraphicsColorizeEffect_Color")]
	public static extern void QGraphicsColorizeEffect_Color(void* c_this);
	[LinkName("QGraphicsColorizeEffect_Strength")]
	public static extern double QGraphicsColorizeEffect_Strength(void* c_this);
	[LinkName("QGraphicsColorizeEffect_SetColor")]
	public static extern void QGraphicsColorizeEffect_SetColor(void* c_this, void* c);
	[LinkName("QGraphicsColorizeEffect_SetStrength")]
	public static extern void QGraphicsColorizeEffect_SetStrength(void* c_this, double strength);
	[LinkName("QGraphicsColorizeEffect_Connect_ColorChanged")]
	public static extern void QGraphicsColorizeEffect_Connect_ColorChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsColorizeEffect_Connect_StrengthChanged")]
	public static extern void QGraphicsColorizeEffect_Connect_StrengthChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsColorizeEffect_Draw")]
	public static extern void QGraphicsColorizeEffect_Draw(void* c_this, void* painter);
	[LinkName("QGraphicsColorizeEffect_Tr2")]
	public static extern libqt_string QGraphicsColorizeEffect_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsColorizeEffect_Tr3")]
	public static extern libqt_string QGraphicsColorizeEffect_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsColorizeEffect_Delete")]
	public static extern void QGraphicsColorizeEffect_Delete(void* self);
}
public class QGraphicsBlurEffect
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsBlurEffect_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsBlurEffect_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QGraphicsBlurEffect_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QGraphicsBlurEffect_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QGraphicsBlurEffect_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QGraphicsBlurEffect_Tr(s);
	}
	
	public virtual void BoundingRectFor(void* rect)
	{
		CQt.QGraphicsBlurEffect_BoundingRectFor(this.nativePtr, rect);
	}
	
	public double BlurRadius()
	{
		return CQt.QGraphicsBlurEffect_BlurRadius(this.nativePtr);
	}
	
	public int64 BlurHints()
	{
		return CQt.QGraphicsBlurEffect_BlurHints(this.nativePtr);
	}
	
	public void SetBlurRadius(double blurRadius)
	{
		CQt.QGraphicsBlurEffect_SetBlurRadius(this.nativePtr, blurRadius);
	}
	
	public void SetBlurHints(int64 hints)
	{
		CQt.QGraphicsBlurEffect_SetBlurHints(this.nativePtr, hints);
	}
	
	public virtual void Draw(void* painter)
	{
		CQt.QGraphicsBlurEffect_Draw(this.nativePtr, painter);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QGraphicsBlurEffect_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QGraphicsBlurEffect_Tr3(s, c, n);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsEffect_BoundingRect(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsEffect_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enable)
	{
		CQt.QGraphicsEffect_SetEnabled(this.nativePtr, enable);
	}
	
	public void Update()
	{
		CQt.QGraphicsEffect_Update(this.nativePtr);
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
	[LinkName("QGraphicsBlurEffect_new")]
	public static extern void* QGraphicsBlurEffect_new();
	[LinkName("QGraphicsBlurEffect_new2")]
	public static extern void* QGraphicsBlurEffect_new2(void* parent);
	[LinkName("QGraphicsBlurEffect_MetaObject")]
	public static extern void* QGraphicsBlurEffect_MetaObject(void* c_this);
	[LinkName("QGraphicsBlurEffect_Metacast")]
	public static extern void* QGraphicsBlurEffect_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsBlurEffect_Metacall")]
	public static extern int32 QGraphicsBlurEffect_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsBlurEffect_Tr")]
	public static extern libqt_string QGraphicsBlurEffect_Tr(char8[] s);
	[LinkName("QGraphicsBlurEffect_BoundingRectFor")]
	public static extern void QGraphicsBlurEffect_BoundingRectFor(void* c_this, void* rect);
	[LinkName("QGraphicsBlurEffect_BlurRadius")]
	public static extern double QGraphicsBlurEffect_BlurRadius(void* c_this);
	[LinkName("QGraphicsBlurEffect_BlurHints")]
	public static extern int64 QGraphicsBlurEffect_BlurHints(void* c_this);
	[LinkName("QGraphicsBlurEffect_SetBlurRadius")]
	public static extern void QGraphicsBlurEffect_SetBlurRadius(void* c_this, double blurRadius);
	[LinkName("QGraphicsBlurEffect_SetBlurHints")]
	public static extern void QGraphicsBlurEffect_SetBlurHints(void* c_this, int64 hints);
	[LinkName("QGraphicsBlurEffect_Connect_BlurRadiusChanged")]
	public static extern void QGraphicsBlurEffect_Connect_BlurRadiusChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsBlurEffect_Connect_BlurHintsChanged")]
	public static extern void QGraphicsBlurEffect_Connect_BlurHintsChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsBlurEffect_Draw")]
	public static extern void QGraphicsBlurEffect_Draw(void* c_this, void* painter);
	[LinkName("QGraphicsBlurEffect_Tr2")]
	public static extern libqt_string QGraphicsBlurEffect_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsBlurEffect_Tr3")]
	public static extern libqt_string QGraphicsBlurEffect_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsBlurEffect_Delete")]
	public static extern void QGraphicsBlurEffect_Delete(void* self);
}
public class QGraphicsDropShadowEffect
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsDropShadowEffect_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsDropShadowEffect_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QGraphicsDropShadowEffect_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QGraphicsDropShadowEffect_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QGraphicsDropShadowEffect_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QGraphicsDropShadowEffect_Tr(s);
	}
	
	public virtual void BoundingRectFor(void* rect)
	{
		CQt.QGraphicsDropShadowEffect_BoundingRectFor(this.nativePtr, rect);
	}
	
	public void Offset()
	{
		CQt.QGraphicsDropShadowEffect_Offset(this.nativePtr);
	}
	
	public double XOffset()
	{
		return CQt.QGraphicsDropShadowEffect_XOffset(this.nativePtr);
	}
	
	public double YOffset()
	{
		return CQt.QGraphicsDropShadowEffect_YOffset(this.nativePtr);
	}
	
	public double BlurRadius()
	{
		return CQt.QGraphicsDropShadowEffect_BlurRadius(this.nativePtr);
	}
	
	public void Color()
	{
		CQt.QGraphicsDropShadowEffect_Color(this.nativePtr);
	}
	
	public void SetOffset(void* ofs)
	{
		CQt.QGraphicsDropShadowEffect_SetOffset(this.nativePtr, ofs);
	}
	
	public void SetOffset2(double dx, double dy)
	{
		CQt.QGraphicsDropShadowEffect_SetOffset2(this.nativePtr, dx, dy);
	}
	
	public void SetOffsetWithQreal(double d)
	{
		CQt.QGraphicsDropShadowEffect_SetOffsetWithQreal(this.nativePtr, d);
	}
	
	public void SetXOffset(double dx)
	{
		CQt.QGraphicsDropShadowEffect_SetXOffset(this.nativePtr, dx);
	}
	
	public void SetYOffset(double dy)
	{
		CQt.QGraphicsDropShadowEffect_SetYOffset(this.nativePtr, dy);
	}
	
	public void SetBlurRadius(double blurRadius)
	{
		CQt.QGraphicsDropShadowEffect_SetBlurRadius(this.nativePtr, blurRadius);
	}
	
	public void SetColor(void* color)
	{
		CQt.QGraphicsDropShadowEffect_SetColor(this.nativePtr, color);
	}
	
	public virtual void Draw(void* painter)
	{
		CQt.QGraphicsDropShadowEffect_Draw(this.nativePtr, painter);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QGraphicsDropShadowEffect_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QGraphicsDropShadowEffect_Tr3(s, c, n);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsEffect_BoundingRect(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsEffect_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enable)
	{
		CQt.QGraphicsEffect_SetEnabled(this.nativePtr, enable);
	}
	
	public void Update()
	{
		CQt.QGraphicsEffect_Update(this.nativePtr);
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
	[LinkName("QGraphicsDropShadowEffect_new")]
	public static extern void* QGraphicsDropShadowEffect_new();
	[LinkName("QGraphicsDropShadowEffect_new2")]
	public static extern void* QGraphicsDropShadowEffect_new2(void* parent);
	[LinkName("QGraphicsDropShadowEffect_MetaObject")]
	public static extern void* QGraphicsDropShadowEffect_MetaObject(void* c_this);
	[LinkName("QGraphicsDropShadowEffect_Metacast")]
	public static extern void* QGraphicsDropShadowEffect_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsDropShadowEffect_Metacall")]
	public static extern int32 QGraphicsDropShadowEffect_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsDropShadowEffect_Tr")]
	public static extern libqt_string QGraphicsDropShadowEffect_Tr(char8[] s);
	[LinkName("QGraphicsDropShadowEffect_BoundingRectFor")]
	public static extern void QGraphicsDropShadowEffect_BoundingRectFor(void* c_this, void* rect);
	[LinkName("QGraphicsDropShadowEffect_Offset")]
	public static extern void QGraphicsDropShadowEffect_Offset(void* c_this);
	[LinkName("QGraphicsDropShadowEffect_XOffset")]
	public static extern double QGraphicsDropShadowEffect_XOffset(void* c_this);
	[LinkName("QGraphicsDropShadowEffect_YOffset")]
	public static extern double QGraphicsDropShadowEffect_YOffset(void* c_this);
	[LinkName("QGraphicsDropShadowEffect_BlurRadius")]
	public static extern double QGraphicsDropShadowEffect_BlurRadius(void* c_this);
	[LinkName("QGraphicsDropShadowEffect_Color")]
	public static extern void QGraphicsDropShadowEffect_Color(void* c_this);
	[LinkName("QGraphicsDropShadowEffect_SetOffset")]
	public static extern void QGraphicsDropShadowEffect_SetOffset(void* c_this, void* ofs);
	[LinkName("QGraphicsDropShadowEffect_SetOffset2")]
	public static extern void QGraphicsDropShadowEffect_SetOffset2(void* c_this, double dx, double dy);
	[LinkName("QGraphicsDropShadowEffect_SetOffsetWithQreal")]
	public static extern void QGraphicsDropShadowEffect_SetOffsetWithQreal(void* c_this, double d);
	[LinkName("QGraphicsDropShadowEffect_SetXOffset")]
	public static extern void QGraphicsDropShadowEffect_SetXOffset(void* c_this, double dx);
	[LinkName("QGraphicsDropShadowEffect_SetYOffset")]
	public static extern void QGraphicsDropShadowEffect_SetYOffset(void* c_this, double dy);
	[LinkName("QGraphicsDropShadowEffect_SetBlurRadius")]
	public static extern void QGraphicsDropShadowEffect_SetBlurRadius(void* c_this, double blurRadius);
	[LinkName("QGraphicsDropShadowEffect_SetColor")]
	public static extern void QGraphicsDropShadowEffect_SetColor(void* c_this, void* color);
	[LinkName("QGraphicsDropShadowEffect_Connect_OffsetChanged")]
	public static extern void QGraphicsDropShadowEffect_Connect_OffsetChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsDropShadowEffect_Connect_BlurRadiusChanged")]
	public static extern void QGraphicsDropShadowEffect_Connect_BlurRadiusChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsDropShadowEffect_Connect_ColorChanged")]
	public static extern void QGraphicsDropShadowEffect_Connect_ColorChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsDropShadowEffect_Draw")]
	public static extern void QGraphicsDropShadowEffect_Draw(void* c_this, void* painter);
	[LinkName("QGraphicsDropShadowEffect_Tr2")]
	public static extern libqt_string QGraphicsDropShadowEffect_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsDropShadowEffect_Tr3")]
	public static extern libqt_string QGraphicsDropShadowEffect_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsDropShadowEffect_Delete")]
	public static extern void QGraphicsDropShadowEffect_Delete(void* self);
}
public class QGraphicsOpacityEffect
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsOpacityEffect_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsOpacityEffect_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QGraphicsOpacityEffect_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QGraphicsOpacityEffect_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QGraphicsOpacityEffect_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QGraphicsOpacityEffect_Tr(s);
	}
	
	public double Opacity()
	{
		return CQt.QGraphicsOpacityEffect_Opacity(this.nativePtr);
	}
	
	public void OpacityMask()
	{
		CQt.QGraphicsOpacityEffect_OpacityMask(this.nativePtr);
	}
	
	public void SetOpacity(double opacity)
	{
		CQt.QGraphicsOpacityEffect_SetOpacity(this.nativePtr, opacity);
	}
	
	public void SetOpacityMask(void* mask)
	{
		CQt.QGraphicsOpacityEffect_SetOpacityMask(this.nativePtr, mask);
	}
	
	public virtual void Draw(void* painter)
	{
		CQt.QGraphicsOpacityEffect_Draw(this.nativePtr, painter);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QGraphicsOpacityEffect_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QGraphicsOpacityEffect_Tr3(s, c, n);
	}
	
	public virtual void BoundingRectFor(void* sourceRect)
	{
		CQt.QGraphicsEffect_BoundingRectFor(this.nativePtr, sourceRect);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsEffect_BoundingRect(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsEffect_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enable)
	{
		CQt.QGraphicsEffect_SetEnabled(this.nativePtr, enable);
	}
	
	public void Update()
	{
		CQt.QGraphicsEffect_Update(this.nativePtr);
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
	[LinkName("QGraphicsOpacityEffect_new")]
	public static extern void* QGraphicsOpacityEffect_new();
	[LinkName("QGraphicsOpacityEffect_new2")]
	public static extern void* QGraphicsOpacityEffect_new2(void* parent);
	[LinkName("QGraphicsOpacityEffect_MetaObject")]
	public static extern void* QGraphicsOpacityEffect_MetaObject(void* c_this);
	[LinkName("QGraphicsOpacityEffect_Metacast")]
	public static extern void* QGraphicsOpacityEffect_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsOpacityEffect_Metacall")]
	public static extern int32 QGraphicsOpacityEffect_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsOpacityEffect_Tr")]
	public static extern libqt_string QGraphicsOpacityEffect_Tr(char8[] s);
	[LinkName("QGraphicsOpacityEffect_Opacity")]
	public static extern double QGraphicsOpacityEffect_Opacity(void* c_this);
	[LinkName("QGraphicsOpacityEffect_OpacityMask")]
	public static extern void QGraphicsOpacityEffect_OpacityMask(void* c_this);
	[LinkName("QGraphicsOpacityEffect_SetOpacity")]
	public static extern void QGraphicsOpacityEffect_SetOpacity(void* c_this, double opacity);
	[LinkName("QGraphicsOpacityEffect_SetOpacityMask")]
	public static extern void QGraphicsOpacityEffect_SetOpacityMask(void* c_this, void* mask);
	[LinkName("QGraphicsOpacityEffect_Connect_OpacityChanged")]
	public static extern void QGraphicsOpacityEffect_Connect_OpacityChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsOpacityEffect_Connect_OpacityMaskChanged")]
	public static extern void QGraphicsOpacityEffect_Connect_OpacityMaskChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsOpacityEffect_Draw")]
	public static extern void QGraphicsOpacityEffect_Draw(void* c_this, void* painter);
	[LinkName("QGraphicsOpacityEffect_Tr2")]
	public static extern libqt_string QGraphicsOpacityEffect_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsOpacityEffect_Tr3")]
	public static extern libqt_string QGraphicsOpacityEffect_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsOpacityEffect_Delete")]
	public static extern void QGraphicsOpacityEffect_Delete(void* self);
}