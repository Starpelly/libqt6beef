using System;
using System.Interop;
namespace Qt;

public interface IQGraphicsItemAnimation
{
	void* NativePtr { get; }
}
public struct QGraphicsItemAnimationPtr : IQGraphicsItemAnimation, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsItemAnimation_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsItemAnimation_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QGraphicsItemAnimation_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QGraphicsItemAnimation_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QGraphicsItemAnimation_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QGraphicsItemAnimation_Tr(s);
	}
	
	public void* Item()
	{
		return CQt.QGraphicsItemAnimation_Item(this.nativePtr);
	}
	
	public void SetItem(IQGraphicsItem item)
	{
		CQt.QGraphicsItemAnimation_SetItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* TimeLine()
	{
		return CQt.QGraphicsItemAnimation_TimeLine(this.nativePtr);
	}
	
	public void SetTimeLine(IQTimeLine timeLine)
	{
		CQt.QGraphicsItemAnimation_SetTimeLine(this.nativePtr, (timeLine == default || timeLine.NativePtr == default) ? default : timeLine.NativePtr);
	}
	
	public void PosAt(double step)
	{
		CQt.QGraphicsItemAnimation_PosAt(this.nativePtr, step);
	}
	
	public void*[] PosList()
	{
		return CQt.QGraphicsItemAnimation_PosList(this.nativePtr);
	}
	
	public void SetPosAt(double step, IQPointF pos)
	{
		CQt.QGraphicsItemAnimation_SetPosAt(this.nativePtr, step, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
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
	
	public void BeforeAnimationStep(double step)
	{
		CQt.QGraphicsItemAnimation_BeforeAnimationStep(this.nativePtr, step);
	}
	
	public void AfterAnimationStep(double step)
	{
		CQt.QGraphicsItemAnimation_AfterAnimationStep(this.nativePtr, step);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QGraphicsItemAnimation_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QGraphicsItemAnimation_Tr3(s, c, n);
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
public class QGraphicsItemAnimation
{
	public QGraphicsItemAnimationPtr handle;
	
	public static implicit operator QGraphicsItemAnimationPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsItemAnimationPtr.New();
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
		return QGraphicsItemAnimationPtr.Tr(s);
	}
	
	public void* Item()
	{
		return this.handle.Item();
	}
	
	public void SetItem(IQGraphicsItem item)
	{
		this.handle.SetItem(item);
	}
	
	public void* TimeLine()
	{
		return this.handle.TimeLine();
	}
	
	public void SetTimeLine(IQTimeLine timeLine)
	{
		this.handle.SetTimeLine(timeLine);
	}
	
	public void PosAt(double step)
	{
		this.handle.PosAt(step);
	}
	
	public void*[] PosList()
	{
		return this.handle.PosList();
	}
	
	public void SetPosAt(double step, IQPointF pos)
	{
		this.handle.SetPosAt(step, pos);
	}
	
	public void TransformAt(double step)
	{
		this.handle.TransformAt(step);
	}
	
	public double RotationAt(double step)
	{
		return this.handle.RotationAt(step);
	}
	
	public void*[] RotationList()
	{
		return this.handle.RotationList();
	}
	
	public void SetRotationAt(double step, double angle)
	{
		this.handle.SetRotationAt(step, angle);
	}
	
	public double XTranslationAt(double step)
	{
		return this.handle.XTranslationAt(step);
	}
	
	public double YTranslationAt(double step)
	{
		return this.handle.YTranslationAt(step);
	}
	
	public void*[] TranslationList()
	{
		return this.handle.TranslationList();
	}
	
	public void SetTranslationAt(double step, double dx, double dy)
	{
		this.handle.SetTranslationAt(step, dx, dy);
	}
	
	public double VerticalScaleAt(double step)
	{
		return this.handle.VerticalScaleAt(step);
	}
	
	public double HorizontalScaleAt(double step)
	{
		return this.handle.HorizontalScaleAt(step);
	}
	
	public void*[] ScaleList()
	{
		return this.handle.ScaleList();
	}
	
	public void SetScaleAt(double step, double sx, double sy)
	{
		this.handle.SetScaleAt(step, sx, sy);
	}
	
	public double VerticalShearAt(double step)
	{
		return this.handle.VerticalShearAt(step);
	}
	
	public double HorizontalShearAt(double step)
	{
		return this.handle.HorizontalShearAt(step);
	}
	
	public void*[] ShearList()
	{
		return this.handle.ShearList();
	}
	
	public void SetShearAt(double step, double sh, double sv)
	{
		this.handle.SetShearAt(step, sh, sv);
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
	public void SetStep(double x)
	{
		this.handle.SetStep(x);
	}
	
	public virtual void BeforeAnimationStep(double step)
	{
		this.handle.BeforeAnimationStep(step);
	}
	
	public virtual void AfterAnimationStep(double step)
	{
		this.handle.AfterAnimationStep(step);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QGraphicsItemAnimationPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QGraphicsItemAnimationPtr.Tr3(s, c, n);
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
		QGraphicsItemAnimationPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QGraphicsItemAnimationPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QGraphicsItemAnimationPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QGraphicsItemAnimationPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
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
	public static extern void* QGraphicsItemAnimation_Metacast(void* c_this, char8* param1);
	[LinkName("QGraphicsItemAnimation_Metacall")]
	public static extern int32 QGraphicsItemAnimation_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QGraphicsItemAnimation_Tr")]
	public static extern libqt_string QGraphicsItemAnimation_Tr(char8* s);
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
	public static extern libqt_string QGraphicsItemAnimation_Tr2(char8* s, char8* c);
	[LinkName("QGraphicsItemAnimation_Tr3")]
	public static extern libqt_string QGraphicsItemAnimation_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsItemAnimation_Delete")]
	public static extern void QGraphicsItemAnimation_Delete(void* self);
}