using System;
using System.Interop;
namespace Qt;

public interface IQSvgRenderer
{
	void* NativePtr { get; }
}
public class QSvgRenderer : IQSvgRenderer, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QSvgRenderer_new();
	}
	
	public ~this()
	{
		CQt.QSvgRenderer_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QSvgRenderer_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QSvgRenderer_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QSvgRenderer_Metacall(this.nativePtr, param1, param2, param3);
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
		CQt.QSvgRenderer_SetViewBox(this.nativePtr, (viewbox == default) ? default : (void*)viewbox.NativePtr);
	}
	
	public void SetViewBoxWithViewbox(IQRectF viewbox)
	{
		CQt.QSvgRenderer_SetViewBoxWithViewbox(this.nativePtr, (viewbox == default) ? default : (void*)viewbox.NativePtr);
	}
	
	public int64 AspectRatioMode()
	{
		return CQt.QSvgRenderer_AspectRatioMode(this.nativePtr);
	}
	
	public void SetAspectRatioMode(int64 mode)
	{
		CQt.QSvgRenderer_SetAspectRatioMode(this.nativePtr, mode);
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
		return CQt.QSvgRenderer_Load2(this.nativePtr, (contents == null) ? null : (void*)contents.NativePtr);
	}
	
	public void Render(IQPainter p)
	{
		CQt.QSvgRenderer_Render(this.nativePtr, (p == null) ? null : (void*)p.NativePtr);
	}
	
	public void Render2(IQPainter p, IQRectF bounds)
	{
		CQt.QSvgRenderer_Render2(this.nativePtr, (p == null) ? null : (void*)p.NativePtr, (bounds == default) ? default : (void*)bounds.NativePtr);
	}
	
	public void Render3(IQPainter p, String elementId)
	{
		CQt.QSvgRenderer_Render3(this.nativePtr, (p == null) ? null : (void*)p.NativePtr, libqt_string(elementId));
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
		CQt.QSvgRenderer_Render32(this.nativePtr, (p == null) ? null : (void*)p.NativePtr, libqt_string(elementId), (bounds == default) ? default : (void*)bounds.NativePtr);
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