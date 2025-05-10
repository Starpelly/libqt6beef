using System;
using System.Interop;
namespace Qt;

public class QGraphicsItemAnimation
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsItemAnimation_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsItemAnimation_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QGraphicsItemAnimation_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QGraphicsItemAnimation_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QGraphicsItemAnimation_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QGraphicsItemAnimation_Tr(s);
	}
	
	public void* Item()
	{
		return CQt.QGraphicsItemAnimation_Item(this.nativePtr);
	}
	
	public void SetItem(void* item)
	{
		CQt.QGraphicsItemAnimation_SetItem(this.nativePtr, item);
	}
	
	public void* TimeLine()
	{
		return CQt.QGraphicsItemAnimation_TimeLine(this.nativePtr);
	}
	
	public void SetTimeLine(void* timeLine)
	{
		CQt.QGraphicsItemAnimation_SetTimeLine(this.nativePtr, timeLine);
	}
	
	public void PosAt(double step)
	{
		CQt.QGraphicsItemAnimation_PosAt(this.nativePtr, step);
	}
	
	public void*[] PosList()
	{
		return CQt.QGraphicsItemAnimation_PosList(this.nativePtr);
	}
	
	public void SetPosAt(double step, void* pos)
	{
		CQt.QGraphicsItemAnimation_SetPosAt(this.nativePtr, step, pos);
	}
	
	public void TransformAt(double step)
	{
		CQt.QGraphicsItemAnimation_TransformAt(this.nativePtr, step);
	}
	
	public double RotationAt(double step)
	{
		return CQt.QGraphicsItemAnimation_RotationAt(this.nativePtr, step);
	}
	
	public void*[] RotationList()
	{
		return CQt.QGraphicsItemAnimation_RotationList(this.nativePtr);
	}
	
	public void SetRotationAt(double step, double angle)
	{
		CQt.QGraphicsItemAnimation_SetRotationAt(this.nativePtr, step, angle);
	}
	
	public double XTranslationAt(double step)
	{
		return CQt.QGraphicsItemAnimation_XTranslationAt(this.nativePtr, step);
	}
	
	public double YTranslationAt(double step)
	{
		return CQt.QGraphicsItemAnimation_YTranslationAt(this.nativePtr, step);
	}
	
	public void*[] TranslationList()
	{
		return CQt.QGraphicsItemAnimation_TranslationList(this.nativePtr);
	}
	
	public void SetTranslationAt(double step, double dx, double dy)
	{
		CQt.QGraphicsItemAnimation_SetTranslationAt(this.nativePtr, step, dx, dy);
	}
	
	public double VerticalScaleAt(double step)
	{
		return CQt.QGraphicsItemAnimation_VerticalScaleAt(this.nativePtr, step);
	}
	
	public double HorizontalScaleAt(double step)
	{
		return CQt.QGraphicsItemAnimation_HorizontalScaleAt(this.nativePtr, step);
	}
	
	public void*[] ScaleList()
	{
		return CQt.QGraphicsItemAnimation_ScaleList(this.nativePtr);
	}
	
	public void SetScaleAt(double step, double sx, double sy)
	{
		CQt.QGraphicsItemAnimation_SetScaleAt(this.nativePtr, step, sx, sy);
	}
	
	public double VerticalShearAt(double step)
	{
		return CQt.QGraphicsItemAnimation_VerticalShearAt(this.nativePtr, step);
	}
	
	public double HorizontalShearAt(double step)
	{
		return CQt.QGraphicsItemAnimation_HorizontalShearAt(this.nativePtr, step);
	}
	
	public void*[] ShearList()
	{
		return CQt.QGraphicsItemAnimation_ShearList(this.nativePtr);
	}
	
	public void SetShearAt(double step, double sh, double sv)
	{
		CQt.QGraphicsItemAnimation_SetShearAt(this.nativePtr, step, sh, sv);
	}
	
	public void Clear()
	{
		CQt.QGraphicsItemAnimation_Clear(this.nativePtr);
	}
	
	public void SetStep(double x)
	{
		CQt.QGraphicsItemAnimation_SetStep(this.nativePtr, x);
	}
	
	public virtual void BeforeAnimationStep(double step)
	{
		CQt.QGraphicsItemAnimation_BeforeAnimationStep(this.nativePtr, step);
	}
	
	public virtual void AfterAnimationStep(double step)
	{
		CQt.QGraphicsItemAnimation_AfterAnimationStep(this.nativePtr, step);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QGraphicsItemAnimation_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QGraphicsItemAnimation_Tr3(s, c, n);
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
	[LinkName("QGraphicsItemAnimation_new")]
	public static extern void* QGraphicsItemAnimation_new();
	[LinkName("QGraphicsItemAnimation_new2")]
	public static extern void* QGraphicsItemAnimation_new2(void* parent);
	[LinkName("QGraphicsItemAnimation_MetaObject")]
	public static extern void* QGraphicsItemAnimation_MetaObject(void* c_this);
	[LinkName("QGraphicsItemAnimation_Metacast")]
	public static extern void* QGraphicsItemAnimation_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsItemAnimation_Metacall")]
	public static extern int32 QGraphicsItemAnimation_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsItemAnimation_Tr")]
	public static extern libqt_string QGraphicsItemAnimation_Tr(char8[] s);
	[LinkName("QGraphicsItemAnimation_Item")]
	public static extern void* QGraphicsItemAnimation_Item(void* c_this);
	[LinkName("QGraphicsItemAnimation_SetItem")]
	public static extern void QGraphicsItemAnimation_SetItem(void* c_this, void* item);
	[LinkName("QGraphicsItemAnimation_TimeLine")]
	public static extern void* QGraphicsItemAnimation_TimeLine(void* c_this);
	[LinkName("QGraphicsItemAnimation_SetTimeLine")]
	public static extern void QGraphicsItemAnimation_SetTimeLine(void* c_this, void* timeLine);
	[LinkName("QGraphicsItemAnimation_PosAt")]
	public static extern void QGraphicsItemAnimation_PosAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_PosList")]
	public static extern void*[] QGraphicsItemAnimation_PosList(void* c_this);
	[LinkName("QGraphicsItemAnimation_SetPosAt")]
	public static extern void QGraphicsItemAnimation_SetPosAt(void* c_this, double step, void* pos);
	[LinkName("QGraphicsItemAnimation_TransformAt")]
	public static extern void QGraphicsItemAnimation_TransformAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_RotationAt")]
	public static extern double QGraphicsItemAnimation_RotationAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_RotationList")]
	public static extern void*[] QGraphicsItemAnimation_RotationList(void* c_this);
	[LinkName("QGraphicsItemAnimation_SetRotationAt")]
	public static extern void QGraphicsItemAnimation_SetRotationAt(void* c_this, double step, double angle);
	[LinkName("QGraphicsItemAnimation_XTranslationAt")]
	public static extern double QGraphicsItemAnimation_XTranslationAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_YTranslationAt")]
	public static extern double QGraphicsItemAnimation_YTranslationAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_TranslationList")]
	public static extern void*[] QGraphicsItemAnimation_TranslationList(void* c_this);
	[LinkName("QGraphicsItemAnimation_SetTranslationAt")]
	public static extern void QGraphicsItemAnimation_SetTranslationAt(void* c_this, double step, double dx, double dy);
	[LinkName("QGraphicsItemAnimation_VerticalScaleAt")]
	public static extern double QGraphicsItemAnimation_VerticalScaleAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_HorizontalScaleAt")]
	public static extern double QGraphicsItemAnimation_HorizontalScaleAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_ScaleList")]
	public static extern void*[] QGraphicsItemAnimation_ScaleList(void* c_this);
	[LinkName("QGraphicsItemAnimation_SetScaleAt")]
	public static extern void QGraphicsItemAnimation_SetScaleAt(void* c_this, double step, double sx, double sy);
	[LinkName("QGraphicsItemAnimation_VerticalShearAt")]
	public static extern double QGraphicsItemAnimation_VerticalShearAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_HorizontalShearAt")]
	public static extern double QGraphicsItemAnimation_HorizontalShearAt(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_ShearList")]
	public static extern void*[] QGraphicsItemAnimation_ShearList(void* c_this);
	[LinkName("QGraphicsItemAnimation_SetShearAt")]
	public static extern void QGraphicsItemAnimation_SetShearAt(void* c_this, double step, double sh, double sv);
	[LinkName("QGraphicsItemAnimation_Clear")]
	public static extern void QGraphicsItemAnimation_Clear(void* c_this);
	[LinkName("QGraphicsItemAnimation_SetStep")]
	public static extern void QGraphicsItemAnimation_SetStep(void* c_this, double x);
	[LinkName("QGraphicsItemAnimation_BeforeAnimationStep")]
	public static extern void QGraphicsItemAnimation_BeforeAnimationStep(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_AfterAnimationStep")]
	public static extern void QGraphicsItemAnimation_AfterAnimationStep(void* c_this, double step);
	[LinkName("QGraphicsItemAnimation_Tr2")]
	public static extern libqt_string QGraphicsItemAnimation_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsItemAnimation_Tr3")]
	public static extern libqt_string QGraphicsItemAnimation_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsItemAnimation_Delete")]
	public static extern void QGraphicsItemAnimation_Delete(void* self);
}