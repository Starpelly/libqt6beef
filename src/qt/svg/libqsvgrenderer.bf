using System;
using System.Interop;
namespace Qt;

public interface IQSvgRenderer
{
	void* NativePtr { get; }
}
public struct QSvgRendererPtr : IQSvgRenderer, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QSvgRenderer_new());
	}
	
	public void Dispose()
	{
		CQt.QSvgRenderer_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QSvgRenderer_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QSvgRenderer_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QSvgRenderer_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QSvgRenderer_Tr(s);
	}
	
	public bool IsValid()
	{
		return CQt.QSvgRenderer_IsValid(this.nativePtr);
	}
	
	public void DefaultSize()
	{
		CQt.QSvgRenderer_DefaultSize(this.nativePtr);
	}
	
	public void ViewBox()
	{
		CQt.QSvgRenderer_ViewBox(this.nativePtr);
	}
	
	public void ViewBoxF()
	{
		CQt.QSvgRenderer_ViewBoxF(this.nativePtr);
	}
	
	public void SetViewBox(IQRect viewbox)
	{
		CQt.QSvgRenderer_SetViewBox(this.nativePtr, (viewbox == default || viewbox.NativePtr == default) ? default : viewbox.NativePtr);
	}
	
	public void SetViewBoxWithViewbox(IQRectF viewbox)
	{
		CQt.QSvgRenderer_SetViewBoxWithViewbox(this.nativePtr, (viewbox == default || viewbox.NativePtr == default) ? default : viewbox.NativePtr);
	}
	
	public int64 AspectRatioMode()
	{
		return CQt.QSvgRenderer_AspectRatioMode(this.nativePtr);
	}
	
	public void SetAspectRatioMode(int64 mode)
	{
		CQt.QSvgRenderer_SetAspectRatioMode(this.nativePtr, (int64)mode);
	}
	
	public bool Animated()
	{
		return CQt.QSvgRenderer_Animated(this.nativePtr);
	}
	
	public int32 FramesPerSecond()
	{
		return CQt.QSvgRenderer_FramesPerSecond(this.nativePtr);
	}
	
	public void SetFramesPerSecond(int32 num)
	{
		CQt.QSvgRenderer_SetFramesPerSecond(this.nativePtr, num);
	}
	
	public int32 CurrentFrame()
	{
		return CQt.QSvgRenderer_CurrentFrame(this.nativePtr);
	}
	
	public void SetCurrentFrame(int32 currentFrame)
	{
		CQt.QSvgRenderer_SetCurrentFrame(this.nativePtr, currentFrame);
	}
	
	public int32 AnimationDuration()
	{
		return CQt.QSvgRenderer_AnimationDuration(this.nativePtr);
	}
	
	public void BoundsOnElement(String id)
	{
		CQt.QSvgRenderer_BoundsOnElement(this.nativePtr, libqt_string(id));
	}
	
	public bool ElementExists(String id)
	{
		return CQt.QSvgRenderer_ElementExists(this.nativePtr, libqt_string(id));
	}
	
	public void TransformForElement(String id)
	{
		CQt.QSvgRenderer_TransformForElement(this.nativePtr, libqt_string(id));
	}
	
	public bool Load(String filename)
	{
		return CQt.QSvgRenderer_Load(this.nativePtr, libqt_string(filename));
	}
	
	public bool LoadWithContents(String contents)
	{
		return CQt.QSvgRenderer_LoadWithContents(this.nativePtr, libqt_string(contents));
	}
	
	public bool Load2(IQXmlStreamReader contents)
	{
		return CQt.QSvgRenderer_Load2(this.nativePtr, (contents == default || contents.NativePtr == default) ? default : contents.NativePtr);
	}
	
	public void Render(IQPainter p)
	{
		CQt.QSvgRenderer_Render(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public void Render2(IQPainter p, IQRectF bounds)
	{
		CQt.QSvgRenderer_Render2(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, (bounds == default || bounds.NativePtr == default) ? default : bounds.NativePtr);
	}
	
	public void Render3(IQPainter p, String elementId)
	{
		CQt.QSvgRenderer_Render3(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, libqt_string(elementId));
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QSvgRenderer_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QSvgRenderer_Tr3(s, c, n);
	}
	
	public void Render32(IQPainter p, String elementId, IQRectF bounds)
	{
		CQt.QSvgRenderer_Render32(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr, libqt_string(elementId), (bounds == default || bounds.NativePtr == default) ? default : bounds.NativePtr);
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
public class QSvgRenderer
{
	public QSvgRendererPtr handle;
	
	public static implicit operator QSvgRendererPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QSvgRendererPtr.New();
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
		return QSvgRendererPtr.Tr(s);
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public void DefaultSize()
	{
		this.handle.DefaultSize();
	}
	
	public void ViewBox()
	{
		this.handle.ViewBox();
	}
	
	public void ViewBoxF()
	{
		this.handle.ViewBoxF();
	}
	
	public void SetViewBox(IQRect viewbox)
	{
		this.handle.SetViewBox(viewbox);
	}
	
	public void SetViewBoxWithViewbox(IQRectF viewbox)
	{
		this.handle.SetViewBoxWithViewbox(viewbox);
	}
	
	public int64 AspectRatioMode()
	{
		return this.handle.AspectRatioMode();
	}
	
	public void SetAspectRatioMode(int64 mode)
	{
		this.handle.SetAspectRatioMode(mode);
	}
	
	public bool Animated()
	{
		return this.handle.Animated();
	}
	
	public int32 FramesPerSecond()
	{
		return this.handle.FramesPerSecond();
	}
	
	public void SetFramesPerSecond(int32 num)
	{
		this.handle.SetFramesPerSecond(num);
	}
	
	public int32 CurrentFrame()
	{
		return this.handle.CurrentFrame();
	}
	
	public void SetCurrentFrame(int32 currentFrame)
	{
		this.handle.SetCurrentFrame(currentFrame);
	}
	
	public int32 AnimationDuration()
	{
		return this.handle.AnimationDuration();
	}
	
	public void BoundsOnElement(String id)
	{
		this.handle.BoundsOnElement(id);
	}
	
	public bool ElementExists(String id)
	{
		return this.handle.ElementExists(id);
	}
	
	public void TransformForElement(String id)
	{
		this.handle.TransformForElement(id);
	}
	
	public bool Load(String filename)
	{
		return this.handle.Load(filename);
	}
	
	public bool LoadWithContents(String contents)
	{
		return this.handle.LoadWithContents(contents);
	}
	
	public bool Load2(IQXmlStreamReader contents)
	{
		return this.handle.Load2(contents);
	}
	
	public void Render(IQPainter p)
	{
		this.handle.Render(p);
	}
	
	public void Render2(IQPainter p, IQRectF bounds)
	{
		this.handle.Render2(p, bounds);
	}
	
	public void Render3(IQPainter p, String elementId)
	{
		this.handle.Render3(p, elementId);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QSvgRendererPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QSvgRendererPtr.Tr3(s, c, n);
	}
	
	public void Render32(IQPainter p, String elementId, IQRectF bounds)
	{
		this.handle.Render32(p, elementId, bounds);
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
		QSvgRendererPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QSvgRendererPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QSvgRendererPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QSvgRendererPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QSvgRenderer_new")]
	public static extern void* QSvgRenderer_new();
	[LinkName("QSvgRenderer_new2")]
	public static extern void* QSvgRenderer_new2(libqt_string filename);
	[LinkName("QSvgRenderer_new3")]
	public static extern void* QSvgRenderer_new3(libqt_string contents);
	[LinkName("QSvgRenderer_new4")]
	public static extern void* QSvgRenderer_new4(void* contents);
	[LinkName("QSvgRenderer_new5")]
	public static extern void* QSvgRenderer_new5(void* parent);
	[LinkName("QSvgRenderer_new6")]
	public static extern void* QSvgRenderer_new6(libqt_string filename, void* parent);
	[LinkName("QSvgRenderer_new7")]
	public static extern void* QSvgRenderer_new7(libqt_string contents, void* parent);
	[LinkName("QSvgRenderer_new8")]
	public static extern void* QSvgRenderer_new8(void* contents, void* parent);
	[LinkName("QSvgRenderer_MetaObject")]
	public static extern void* QSvgRenderer_MetaObject(void* c_this);
	[LinkName("QSvgRenderer_Metacast")]
	public static extern void* QSvgRenderer_Metacast(void* c_this, char8* param1);
	[LinkName("QSvgRenderer_Metacall")]
	public static extern int32 QSvgRenderer_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QSvgRenderer_Tr")]
	public static extern libqt_string QSvgRenderer_Tr(char8* s);
	[LinkName("QSvgRenderer_IsValid")]
	public static extern bool QSvgRenderer_IsValid(void* c_this);
	[LinkName("QSvgRenderer_DefaultSize")]
	public static extern void QSvgRenderer_DefaultSize(void* c_this);
	[LinkName("QSvgRenderer_ViewBox")]
	public static extern void QSvgRenderer_ViewBox(void* c_this);
	[LinkName("QSvgRenderer_ViewBoxF")]
	public static extern void QSvgRenderer_ViewBoxF(void* c_this);
	[LinkName("QSvgRenderer_SetViewBox")]
	public static extern void QSvgRenderer_SetViewBox(void* c_this, void* viewbox);
	[LinkName("QSvgRenderer_SetViewBoxWithViewbox")]
	public static extern void QSvgRenderer_SetViewBoxWithViewbox(void* c_this, void* viewbox);
	[LinkName("QSvgRenderer_AspectRatioMode")]
	public static extern int64 QSvgRenderer_AspectRatioMode(void* c_this);
	[LinkName("QSvgRenderer_SetAspectRatioMode")]
	public static extern void QSvgRenderer_SetAspectRatioMode(void* c_this, int64 mode);
	[LinkName("QSvgRenderer_Animated")]
	public static extern bool QSvgRenderer_Animated(void* c_this);
	[LinkName("QSvgRenderer_FramesPerSecond")]
	public static extern int32 QSvgRenderer_FramesPerSecond(void* c_this);
	[LinkName("QSvgRenderer_SetFramesPerSecond")]
	public static extern void QSvgRenderer_SetFramesPerSecond(void* c_this, int32 num);
	[LinkName("QSvgRenderer_CurrentFrame")]
	public static extern int32 QSvgRenderer_CurrentFrame(void* c_this);
	[LinkName("QSvgRenderer_SetCurrentFrame")]
	public static extern void QSvgRenderer_SetCurrentFrame(void* c_this, int32 currentFrame);
	[LinkName("QSvgRenderer_AnimationDuration")]
	public static extern int32 QSvgRenderer_AnimationDuration(void* c_this);
	[LinkName("QSvgRenderer_BoundsOnElement")]
	public static extern void QSvgRenderer_BoundsOnElement(void* c_this, libqt_string id);
	[LinkName("QSvgRenderer_ElementExists")]
	public static extern bool QSvgRenderer_ElementExists(void* c_this, libqt_string id);
	[LinkName("QSvgRenderer_TransformForElement")]
	public static extern void QSvgRenderer_TransformForElement(void* c_this, libqt_string id);
	[LinkName("QSvgRenderer_Load")]
	public static extern bool QSvgRenderer_Load(void* c_this, libqt_string filename);
	[LinkName("QSvgRenderer_LoadWithContents")]
	public static extern bool QSvgRenderer_LoadWithContents(void* c_this, libqt_string contents);
	[LinkName("QSvgRenderer_Load2")]
	public static extern bool QSvgRenderer_Load2(void* c_this, void* contents);
	[LinkName("QSvgRenderer_Render")]
	public static extern void QSvgRenderer_Render(void* c_this, void* p);
	[LinkName("QSvgRenderer_Render2")]
	public static extern void QSvgRenderer_Render2(void* c_this, void* p, void* bounds);
	[LinkName("QSvgRenderer_Render3")]
	public static extern void QSvgRenderer_Render3(void* c_this, void* p, libqt_string elementId);
	[LinkName("QSvgRenderer_Connect_RepaintNeeded")]
	public static extern void QSvgRenderer_Connect_RepaintNeeded(void* c_this, c_intptr slot);
	[LinkName("QSvgRenderer_Tr2")]
	public static extern libqt_string QSvgRenderer_Tr2(char8* s, char8* c);
	[LinkName("QSvgRenderer_Tr3")]
	public static extern libqt_string QSvgRenderer_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QSvgRenderer_Render32")]
	public static extern void QSvgRenderer_Render32(void* c_this, void* p, libqt_string elementId, void* bounds);
	/// Delete this object from C++ memory
	[LinkName("QSvgRenderer_Delete")]
	public static extern void QSvgRenderer_Delete(void* self);
}