using System;
using System.Interop;
namespace Qt;

public class QSvgRenderer
{
	protected void* nativePtr;
	
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
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QSvgRenderer_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QSvgRenderer_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
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
	
	public void SetViewBox(void* viewbox)
	{
		CQt.QSvgRenderer_SetViewBox(this.nativePtr, viewbox);
	}
	
	public void SetViewBoxWithViewbox(void* viewbox)
	{
		CQt.QSvgRenderer_SetViewBoxWithViewbox(this.nativePtr, viewbox);
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
	
	public void BoundsOnElement(libqt_string id)
	{
		CQt.QSvgRenderer_BoundsOnElement(this.nativePtr, id);
	}
	
	public bool ElementExists(libqt_string id)
	{
		return CQt.QSvgRenderer_ElementExists(this.nativePtr, id);
	}
	
	public void TransformForElement(libqt_string id)
	{
		CQt.QSvgRenderer_TransformForElement(this.nativePtr, id);
	}
	
	public bool Load(libqt_string filename)
	{
		return CQt.QSvgRenderer_Load(this.nativePtr, filename);
	}
	
	public bool LoadWithContents(libqt_string contents)
	{
		return CQt.QSvgRenderer_LoadWithContents(this.nativePtr, contents);
	}
	
	public bool Load2(void* contents)
	{
		return CQt.QSvgRenderer_Load2(this.nativePtr, contents);
	}
	
	public void Render(void* p)
	{
		CQt.QSvgRenderer_Render(this.nativePtr, p);
	}
	
	public void Render2(void* p, void* bounds)
	{
		CQt.QSvgRenderer_Render2(this.nativePtr, p, bounds);
	}
	
	public void Render3(void* p, libqt_string elementId)
	{
		CQt.QSvgRenderer_Render3(this.nativePtr, p, elementId);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QSvgRenderer_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QSvgRenderer_Tr3(s, c, n);
	}
	
	public void Render32(void* p, libqt_string elementId, void* bounds)
	{
		CQt.QSvgRenderer_Render32(this.nativePtr, p, elementId, bounds);
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
	public static extern void* QSvgRenderer_Metacast(void* c_this, char8[] param1);
	[LinkName("QSvgRenderer_Metacall")]
	public static extern int32 QSvgRenderer_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSvgRenderer_Tr")]
	public static extern libqt_string QSvgRenderer_Tr(char8[] s);
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
	public static extern libqt_string QSvgRenderer_Tr2(char8[] s, char8[] c);
	[LinkName("QSvgRenderer_Tr3")]
	public static extern libqt_string QSvgRenderer_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSvgRenderer_Render32")]
	public static extern void QSvgRenderer_Render32(void* c_this, void* p, libqt_string elementId, void* bounds);
	/// Delete this object from C++ memory
	[LinkName("QSvgRenderer_Delete")]
	public static extern void QSvgRenderer_Delete(void* self);
}