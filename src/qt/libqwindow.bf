using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QWindow__Visibility
{
	Hidden = 0,
	AutomaticVisibility = 1,
	Windowed = 2,
	Minimized = 3,
	Maximized = 4,
	FullScreen = 5,
}
[AllowDuplicates]
public enum QWindow__AncestorMode
{
	ExcludeTransients = 0,
	IncludeTransients = 1,
}
public class QWindow
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QWindow_new();
	}
	
	public ~this()
	{
		CQt.QWindow_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QWindow_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QWindow_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QWindow_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QWindow_Tr(s);
	}
	
	public void SetSurfaceType(int64 surfaceType)
	{
		CQt.QWindow_SetSurfaceType(this.nativePtr, surfaceType);
	}
	
	public virtual int64 SurfaceType()
	{
		return CQt.QWindow_SurfaceType(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QWindow_IsVisible(this.nativePtr);
	}
	
	public int64 Visibility()
	{
		return CQt.QWindow_Visibility(this.nativePtr);
	}
	
	public void SetVisibility(int64 v)
	{
		CQt.QWindow_SetVisibility(this.nativePtr, v);
	}
	
	public void Create()
	{
		CQt.QWindow_Create(this.nativePtr);
	}
	
	public c_uintptr WinId()
	{
		return CQt.QWindow_WinId(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QWindow_Parent(this.nativePtr);
	}
	
	public void SetParent(void* parent)
	{
		CQt.QWindow_SetParent(this.nativePtr, parent);
	}
	
	public bool IsTopLevel()
	{
		return CQt.QWindow_IsTopLevel(this.nativePtr);
	}
	
	public bool IsModal()
	{
		return CQt.QWindow_IsModal(this.nativePtr);
	}
	
	public int64 Modality()
	{
		return CQt.QWindow_Modality(this.nativePtr);
	}
	
	public void SetModality(int64 modality)
	{
		CQt.QWindow_SetModality(this.nativePtr, modality);
	}
	
	public void SetFormat(void* format)
	{
		CQt.QWindow_SetFormat(this.nativePtr, format);
	}
	
	public virtual void Format()
	{
		CQt.QWindow_Format(this.nativePtr);
	}
	
	public void RequestedFormat()
	{
		CQt.QWindow_RequestedFormat(this.nativePtr);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QWindow_SetFlags(this.nativePtr, flags);
	}
	
	public int64 Flags()
	{
		return CQt.QWindow_Flags(this.nativePtr);
	}
	
	public void SetFlag(int64 param1)
	{
		CQt.QWindow_SetFlag(this.nativePtr, param1);
	}
	
	public int64 Type()
	{
		return CQt.QWindow_Type(this.nativePtr);
	}
	
	public libqt_string Title()
	{
		return CQt.QWindow_Title(this.nativePtr);
	}
	
	public void SetOpacity(double level)
	{
		CQt.QWindow_SetOpacity(this.nativePtr, level);
	}
	
	public double Opacity()
	{
		return CQt.QWindow_Opacity(this.nativePtr);
	}
	
	public void SetMask(void* region)
	{
		CQt.QWindow_SetMask(this.nativePtr, region);
	}
	
	public void Mask()
	{
		CQt.QWindow_Mask(this.nativePtr);
	}
	
	public bool IsActive()
	{
		return CQt.QWindow_IsActive(this.nativePtr);
	}
	
	public void ReportContentOrientationChange(int64 orientation)
	{
		CQt.QWindow_ReportContentOrientationChange(this.nativePtr, orientation);
	}
	
	public int64 ContentOrientation()
	{
		return CQt.QWindow_ContentOrientation(this.nativePtr);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QWindow_DevicePixelRatio(this.nativePtr);
	}
	
	public int64 WindowState()
	{
		return CQt.QWindow_WindowState(this.nativePtr);
	}
	
	public int64 WindowStates()
	{
		return CQt.QWindow_WindowStates(this.nativePtr);
	}
	
	public void SetWindowState(int64 state)
	{
		CQt.QWindow_SetWindowState(this.nativePtr, state);
	}
	
	public void SetWindowStates(int64 states)
	{
		CQt.QWindow_SetWindowStates(this.nativePtr, states);
	}
	
	public void SetTransientParent(void* parent)
	{
		CQt.QWindow_SetTransientParent(this.nativePtr, parent);
	}
	
	public void* TransientParent()
	{
		return CQt.QWindow_TransientParent(this.nativePtr);
	}
	
	public bool IsAncestorOf(void* child)
	{
		return CQt.QWindow_IsAncestorOf(this.nativePtr, child);
	}
	
	public bool IsExposed()
	{
		return CQt.QWindow_IsExposed(this.nativePtr);
	}
	
	public int32 MinimumWidth()
	{
		return CQt.QWindow_MinimumWidth(this.nativePtr);
	}
	
	public int32 MinimumHeight()
	{
		return CQt.QWindow_MinimumHeight(this.nativePtr);
	}
	
	public int32 MaximumWidth()
	{
		return CQt.QWindow_MaximumWidth(this.nativePtr);
	}
	
	public int32 MaximumHeight()
	{
		return CQt.QWindow_MaximumHeight(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QWindow_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QWindow_MaximumSize(this.nativePtr);
	}
	
	public void BaseSize()
	{
		CQt.QWindow_BaseSize(this.nativePtr);
	}
	
	public void SizeIncrement()
	{
		CQt.QWindow_SizeIncrement(this.nativePtr);
	}
	
	public void SetMinimumSize(void* size)
	{
		CQt.QWindow_SetMinimumSize(this.nativePtr, size);
	}
	
	public void SetMaximumSize(void* size)
	{
		CQt.QWindow_SetMaximumSize(this.nativePtr, size);
	}
	
	public void SetBaseSize(void* size)
	{
		CQt.QWindow_SetBaseSize(this.nativePtr, size);
	}
	
	public void SetSizeIncrement(void* size)
	{
		CQt.QWindow_SetSizeIncrement(this.nativePtr, size);
	}
	
	public void Geometry()
	{
		CQt.QWindow_Geometry(this.nativePtr);
	}
	
	public void FrameMargins()
	{
		CQt.QWindow_FrameMargins(this.nativePtr);
	}
	
	public void FrameGeometry()
	{
		CQt.QWindow_FrameGeometry(this.nativePtr);
	}
	
	public void FramePosition()
	{
		CQt.QWindow_FramePosition(this.nativePtr);
	}
	
	public void SetFramePosition(void* point)
	{
		CQt.QWindow_SetFramePosition(this.nativePtr, point);
	}
	
	public int32 Width()
	{
		return CQt.QWindow_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QWindow_Height(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QWindow_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QWindow_Y(this.nativePtr);
	}
	
	public virtual void Size()
	{
		CQt.QWindow_Size(this.nativePtr);
	}
	
	public void Position()
	{
		CQt.QWindow_Position(this.nativePtr);
	}
	
	public void SetPosition(void* pt)
	{
		CQt.QWindow_SetPosition(this.nativePtr, pt);
	}
	
	public void SetPosition2(int32 posx, int32 posy)
	{
		CQt.QWindow_SetPosition2(this.nativePtr, posx, posy);
	}
	
	public void Resize(void* newSize)
	{
		CQt.QWindow_Resize(this.nativePtr, newSize);
	}
	
	public void Resize2(int32 w, int32 h)
	{
		CQt.QWindow_Resize2(this.nativePtr, w, h);
	}
	
	public void SetFilePath(libqt_string filePath)
	{
		CQt.QWindow_SetFilePath(this.nativePtr, filePath);
	}
	
	public libqt_string FilePath()
	{
		return CQt.QWindow_FilePath(this.nativePtr);
	}
	
	public void SetIcon(void* icon)
	{
		CQt.QWindow_SetIcon(this.nativePtr, icon);
	}
	
	public void Icon()
	{
		CQt.QWindow_Icon(this.nativePtr);
	}
	
	public void Destroy()
	{
		CQt.QWindow_Destroy(this.nativePtr);
	}
	
	public bool SetKeyboardGrabEnabled(bool grab)
	{
		return CQt.QWindow_SetKeyboardGrabEnabled(this.nativePtr, grab);
	}
	
	public bool SetMouseGrabEnabled(bool grab)
	{
		return CQt.QWindow_SetMouseGrabEnabled(this.nativePtr, grab);
	}
	
	public void* Screen()
	{
		return CQt.QWindow_Screen(this.nativePtr);
	}
	
	public void SetScreen(void* screen)
	{
		CQt.QWindow_SetScreen(this.nativePtr, screen);
	}
	
	public virtual void* AccessibleRoot()
	{
		return CQt.QWindow_AccessibleRoot(this.nativePtr);
	}
	
	public virtual void* FocusObject()
	{
		return CQt.QWindow_FocusObject(this.nativePtr);
	}
	
	public void MapToGlobal(void* pos)
	{
		CQt.QWindow_MapToGlobal(this.nativePtr, pos);
	}
	
	public void MapFromGlobal(void* pos)
	{
		CQt.QWindow_MapFromGlobal(this.nativePtr, pos);
	}
	
	public void MapToGlobalWithPos(void* pos)
	{
		CQt.QWindow_MapToGlobalWithPos(this.nativePtr, pos);
	}
	
	public void MapFromGlobalWithPos(void* pos)
	{
		CQt.QWindow_MapFromGlobalWithPos(this.nativePtr, pos);
	}
	
	public void Cursor()
	{
		CQt.QWindow_Cursor(this.nativePtr);
	}
	
	public void SetCursor(void* cursor)
	{
		CQt.QWindow_SetCursor(this.nativePtr, cursor);
	}
	
	public void UnsetCursor()
	{
		CQt.QWindow_UnsetCursor(this.nativePtr);
	}
	
	public static void* FromWinId(c_uintptr id)
	{
		return CQt.QWindow_FromWinId(id);
	}
	
	public void* ResolveInterface(char8[] name, int32 revision)
	{
		return CQt.QWindow_ResolveInterface(this.nativePtr, name, revision);
	}
	
	public void RequestActivate()
	{
		CQt.QWindow_RequestActivate(this.nativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QWindow_SetVisible(this.nativePtr, visible);
	}
	
	public void Show()
	{
		CQt.QWindow_Show(this.nativePtr);
	}
	
	public void Hide()
	{
		CQt.QWindow_Hide(this.nativePtr);
	}
	
	public void ShowMinimized()
	{
		CQt.QWindow_ShowMinimized(this.nativePtr);
	}
	
	public void ShowMaximized()
	{
		CQt.QWindow_ShowMaximized(this.nativePtr);
	}
	
	public void ShowFullScreen()
	{
		CQt.QWindow_ShowFullScreen(this.nativePtr);
	}
	
	public void ShowNormal()
	{
		CQt.QWindow_ShowNormal(this.nativePtr);
	}
	
	public bool Close()
	{
		return CQt.QWindow_Close(this.nativePtr);
	}
	
	public void Raise()
	{
		CQt.QWindow_Raise(this.nativePtr);
	}
	
	public void Lower()
	{
		CQt.QWindow_Lower(this.nativePtr);
	}
	
	public bool StartSystemResize(int64 edges)
	{
		return CQt.QWindow_StartSystemResize(this.nativePtr, edges);
	}
	
	public bool StartSystemMove()
	{
		return CQt.QWindow_StartSystemMove(this.nativePtr);
	}
	
	public void SetTitle(libqt_string title)
	{
		CQt.QWindow_SetTitle(this.nativePtr, title);
	}
	
	public void SetX(int32 arg)
	{
		CQt.QWindow_SetX(this.nativePtr, arg);
	}
	
	public void SetY(int32 arg)
	{
		CQt.QWindow_SetY(this.nativePtr, arg);
	}
	
	public void SetWidth(int32 arg)
	{
		CQt.QWindow_SetWidth(this.nativePtr, arg);
	}
	
	public void SetHeight(int32 arg)
	{
		CQt.QWindow_SetHeight(this.nativePtr, arg);
	}
	
	public void SetGeometry(int32 posx, int32 posy, int32 w, int32 h)
	{
		CQt.QWindow_SetGeometry(this.nativePtr, posx, posy, w, h);
	}
	
	public void SetGeometryWithRect(void* rect)
	{
		CQt.QWindow_SetGeometryWithRect(this.nativePtr, rect);
	}
	
	public void SetMinimumWidth(int32 w)
	{
		CQt.QWindow_SetMinimumWidth(this.nativePtr, w);
	}
	
	public void SetMinimumHeight(int32 h)
	{
		CQt.QWindow_SetMinimumHeight(this.nativePtr, h);
	}
	
	public void SetMaximumWidth(int32 w)
	{
		CQt.QWindow_SetMaximumWidth(this.nativePtr, w);
	}
	
	public void SetMaximumHeight(int32 h)
	{
		CQt.QWindow_SetMaximumHeight(this.nativePtr, h);
	}
	
	public void Alert(int32 msec)
	{
		CQt.QWindow_Alert(this.nativePtr, msec);
	}
	
	public void RequestUpdate()
	{
		CQt.QWindow_RequestUpdate(this.nativePtr);
	}
	
	public virtual void ExposeEvent(void* param1)
	{
		CQt.QWindow_ExposeEvent(this.nativePtr, param1);
	}
	
	public virtual void ResizeEvent(void* param1)
	{
		CQt.QWindow_ResizeEvent(this.nativePtr, param1);
	}
	
	public virtual void PaintEvent(void* param1)
	{
		CQt.QWindow_PaintEvent(this.nativePtr, param1);
	}
	
	public virtual void MoveEvent(void* param1)
	{
		CQt.QWindow_MoveEvent(this.nativePtr, param1);
	}
	
	public virtual void FocusInEvent(void* param1)
	{
		CQt.QWindow_FocusInEvent(this.nativePtr, param1);
	}
	
	public virtual void FocusOutEvent(void* param1)
	{
		CQt.QWindow_FocusOutEvent(this.nativePtr, param1);
	}
	
	public virtual void ShowEvent(void* param1)
	{
		CQt.QWindow_ShowEvent(this.nativePtr, param1);
	}
	
	public virtual void HideEvent(void* param1)
	{
		CQt.QWindow_HideEvent(this.nativePtr, param1);
	}
	
	public virtual void CloseEvent(void* param1)
	{
		CQt.QWindow_CloseEvent(this.nativePtr, param1);
	}
	
	public virtual bool Event(void* param1)
	{
		return CQt.QWindow_Event(this.nativePtr, param1);
	}
	
	public virtual void KeyPressEvent(void* param1)
	{
		CQt.QWindow_KeyPressEvent(this.nativePtr, param1);
	}
	
	public virtual void KeyReleaseEvent(void* param1)
	{
		CQt.QWindow_KeyReleaseEvent(this.nativePtr, param1);
	}
	
	public virtual void MousePressEvent(void* param1)
	{
		CQt.QWindow_MousePressEvent(this.nativePtr, param1);
	}
	
	public virtual void MouseReleaseEvent(void* param1)
	{
		CQt.QWindow_MouseReleaseEvent(this.nativePtr, param1);
	}
	
	public virtual void MouseDoubleClickEvent(void* param1)
	{
		CQt.QWindow_MouseDoubleClickEvent(this.nativePtr, param1);
	}
	
	public virtual void MouseMoveEvent(void* param1)
	{
		CQt.QWindow_MouseMoveEvent(this.nativePtr, param1);
	}
	
	public virtual void WheelEvent(void* param1)
	{
		CQt.QWindow_WheelEvent(this.nativePtr, param1);
	}
	
	public virtual void TouchEvent(void* param1)
	{
		CQt.QWindow_TouchEvent(this.nativePtr, param1);
	}
	
	public virtual void TabletEvent(void* param1)
	{
		CQt.QWindow_TabletEvent(this.nativePtr, param1);
	}
	
	public virtual bool NativeEvent(libqt_string eventType, void* message, c_uintptr* result)
	{
		return CQt.QWindow_NativeEvent(this.nativePtr, eventType, message, result);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QWindow_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QWindow_Tr3(s, c, n);
	}
	
	public void* Parent1(int64 mode)
	{
		return CQt.QWindow_Parent1(this.nativePtr, mode);
	}
	
	public void SetFlag2(int64 param1, bool on)
	{
		CQt.QWindow_SetFlag2(this.nativePtr, param1, on);
	}
	
	public bool IsAncestorOf2(void* child, int64 mode)
	{
		return CQt.QWindow_IsAncestorOf2(this.nativePtr, child, mode);
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
	
	public int64 SurfaceClass()
	{
		return CQt.QSurface_SurfaceClass(this.nativePtr);
	}
	
	public bool SupportsOpenGL()
	{
		return CQt.QSurface_SupportsOpenGL(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QWindow_new")]
	public static extern void* QWindow_new();
	[LinkName("QWindow_new2")]
	public static extern void* QWindow_new2(void* parent);
	[LinkName("QWindow_new3")]
	public static extern void* QWindow_new3(void* screen);
	[LinkName("QWindow_MetaObject")]
	public static extern void* QWindow_MetaObject(void* c_this);
	[LinkName("QWindow_Metacast")]
	public static extern void* QWindow_Metacast(void* c_this, char8[] param1);
	[LinkName("QWindow_Metacall")]
	public static extern int32 QWindow_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QWindow_Tr")]
	public static extern libqt_string QWindow_Tr(char8[] s);
	[LinkName("QWindow_SetSurfaceType")]
	public static extern void QWindow_SetSurfaceType(void* c_this, int64 surfaceType);
	[LinkName("QWindow_SurfaceType")]
	public static extern int64 QWindow_SurfaceType(void* c_this);
	[LinkName("QWindow_IsVisible")]
	public static extern bool QWindow_IsVisible(void* c_this);
	[LinkName("QWindow_Visibility")]
	public static extern int64 QWindow_Visibility(void* c_this);
	[LinkName("QWindow_SetVisibility")]
	public static extern void QWindow_SetVisibility(void* c_this, int64 v);
	[LinkName("QWindow_Create")]
	public static extern void QWindow_Create(void* c_this);
	[LinkName("QWindow_WinId")]
	public static extern c_uintptr QWindow_WinId(void* c_this);
	[LinkName("QWindow_Parent")]
	public static extern void* QWindow_Parent(void* c_this);
	[LinkName("QWindow_SetParent")]
	public static extern void QWindow_SetParent(void* c_this, void* parent);
	[LinkName("QWindow_IsTopLevel")]
	public static extern bool QWindow_IsTopLevel(void* c_this);
	[LinkName("QWindow_IsModal")]
	public static extern bool QWindow_IsModal(void* c_this);
	[LinkName("QWindow_Modality")]
	public static extern int64 QWindow_Modality(void* c_this);
	[LinkName("QWindow_SetModality")]
	public static extern void QWindow_SetModality(void* c_this, int64 modality);
	[LinkName("QWindow_SetFormat")]
	public static extern void QWindow_SetFormat(void* c_this, void* format);
	[LinkName("QWindow_Format")]
	public static extern void QWindow_Format(void* c_this);
	[LinkName("QWindow_RequestedFormat")]
	public static extern void QWindow_RequestedFormat(void* c_this);
	[LinkName("QWindow_SetFlags")]
	public static extern void QWindow_SetFlags(void* c_this, int64 flags);
	[LinkName("QWindow_Flags")]
	public static extern int64 QWindow_Flags(void* c_this);
	[LinkName("QWindow_SetFlag")]
	public static extern void QWindow_SetFlag(void* c_this, int64 param1);
	[LinkName("QWindow_Type")]
	public static extern int64 QWindow_Type(void* c_this);
	[LinkName("QWindow_Title")]
	public static extern libqt_string QWindow_Title(void* c_this);
	[LinkName("QWindow_SetOpacity")]
	public static extern void QWindow_SetOpacity(void* c_this, double level);
	[LinkName("QWindow_Opacity")]
	public static extern double QWindow_Opacity(void* c_this);
	[LinkName("QWindow_SetMask")]
	public static extern void QWindow_SetMask(void* c_this, void* region);
	[LinkName("QWindow_Mask")]
	public static extern void QWindow_Mask(void* c_this);
	[LinkName("QWindow_IsActive")]
	public static extern bool QWindow_IsActive(void* c_this);
	[LinkName("QWindow_ReportContentOrientationChange")]
	public static extern void QWindow_ReportContentOrientationChange(void* c_this, int64 orientation);
	[LinkName("QWindow_ContentOrientation")]
	public static extern int64 QWindow_ContentOrientation(void* c_this);
	[LinkName("QWindow_DevicePixelRatio")]
	public static extern double QWindow_DevicePixelRatio(void* c_this);
	[LinkName("QWindow_WindowState")]
	public static extern int64 QWindow_WindowState(void* c_this);
	[LinkName("QWindow_WindowStates")]
	public static extern int64 QWindow_WindowStates(void* c_this);
	[LinkName("QWindow_SetWindowState")]
	public static extern void QWindow_SetWindowState(void* c_this, int64 state);
	[LinkName("QWindow_SetWindowStates")]
	public static extern void QWindow_SetWindowStates(void* c_this, int64 states);
	[LinkName("QWindow_SetTransientParent")]
	public static extern void QWindow_SetTransientParent(void* c_this, void* parent);
	[LinkName("QWindow_TransientParent")]
	public static extern void* QWindow_TransientParent(void* c_this);
	[LinkName("QWindow_IsAncestorOf")]
	public static extern bool QWindow_IsAncestorOf(void* c_this, void* child);
	[LinkName("QWindow_IsExposed")]
	public static extern bool QWindow_IsExposed(void* c_this);
	[LinkName("QWindow_MinimumWidth")]
	public static extern int32 QWindow_MinimumWidth(void* c_this);
	[LinkName("QWindow_MinimumHeight")]
	public static extern int32 QWindow_MinimumHeight(void* c_this);
	[LinkName("QWindow_MaximumWidth")]
	public static extern int32 QWindow_MaximumWidth(void* c_this);
	[LinkName("QWindow_MaximumHeight")]
	public static extern int32 QWindow_MaximumHeight(void* c_this);
	[LinkName("QWindow_MinimumSize")]
	public static extern void QWindow_MinimumSize(void* c_this);
	[LinkName("QWindow_MaximumSize")]
	public static extern void QWindow_MaximumSize(void* c_this);
	[LinkName("QWindow_BaseSize")]
	public static extern void QWindow_BaseSize(void* c_this);
	[LinkName("QWindow_SizeIncrement")]
	public static extern void QWindow_SizeIncrement(void* c_this);
	[LinkName("QWindow_SetMinimumSize")]
	public static extern void QWindow_SetMinimumSize(void* c_this, void* size);
	[LinkName("QWindow_SetMaximumSize")]
	public static extern void QWindow_SetMaximumSize(void* c_this, void* size);
	[LinkName("QWindow_SetBaseSize")]
	public static extern void QWindow_SetBaseSize(void* c_this, void* size);
	[LinkName("QWindow_SetSizeIncrement")]
	public static extern void QWindow_SetSizeIncrement(void* c_this, void* size);
	[LinkName("QWindow_Geometry")]
	public static extern void QWindow_Geometry(void* c_this);
	[LinkName("QWindow_FrameMargins")]
	public static extern void QWindow_FrameMargins(void* c_this);
	[LinkName("QWindow_FrameGeometry")]
	public static extern void QWindow_FrameGeometry(void* c_this);
	[LinkName("QWindow_FramePosition")]
	public static extern void QWindow_FramePosition(void* c_this);
	[LinkName("QWindow_SetFramePosition")]
	public static extern void QWindow_SetFramePosition(void* c_this, void* point);
	[LinkName("QWindow_Width")]
	public static extern int32 QWindow_Width(void* c_this);
	[LinkName("QWindow_Height")]
	public static extern int32 QWindow_Height(void* c_this);
	[LinkName("QWindow_X")]
	public static extern int32 QWindow_X(void* c_this);
	[LinkName("QWindow_Y")]
	public static extern int32 QWindow_Y(void* c_this);
	[LinkName("QWindow_Size")]
	public static extern void QWindow_Size(void* c_this);
	[LinkName("QWindow_Position")]
	public static extern void QWindow_Position(void* c_this);
	[LinkName("QWindow_SetPosition")]
	public static extern void QWindow_SetPosition(void* c_this, void* pt);
	[LinkName("QWindow_SetPosition2")]
	public static extern void QWindow_SetPosition2(void* c_this, int32 posx, int32 posy);
	[LinkName("QWindow_Resize")]
	public static extern void QWindow_Resize(void* c_this, void* newSize);
	[LinkName("QWindow_Resize2")]
	public static extern void QWindow_Resize2(void* c_this, int32 w, int32 h);
	[LinkName("QWindow_SetFilePath")]
	public static extern void QWindow_SetFilePath(void* c_this, libqt_string filePath);
	[LinkName("QWindow_FilePath")]
	public static extern libqt_string QWindow_FilePath(void* c_this);
	[LinkName("QWindow_SetIcon")]
	public static extern void QWindow_SetIcon(void* c_this, void* icon);
	[LinkName("QWindow_Icon")]
	public static extern void QWindow_Icon(void* c_this);
	[LinkName("QWindow_Destroy")]
	public static extern void QWindow_Destroy(void* c_this);
	[LinkName("QWindow_SetKeyboardGrabEnabled")]
	public static extern bool QWindow_SetKeyboardGrabEnabled(void* c_this, bool grab);
	[LinkName("QWindow_SetMouseGrabEnabled")]
	public static extern bool QWindow_SetMouseGrabEnabled(void* c_this, bool grab);
	[LinkName("QWindow_Screen")]
	public static extern void* QWindow_Screen(void* c_this);
	[LinkName("QWindow_SetScreen")]
	public static extern void QWindow_SetScreen(void* c_this, void* screen);
	[LinkName("QWindow_AccessibleRoot")]
	public static extern void* QWindow_AccessibleRoot(void* c_this);
	[LinkName("QWindow_FocusObject")]
	public static extern void* QWindow_FocusObject(void* c_this);
	[LinkName("QWindow_MapToGlobal")]
	public static extern void QWindow_MapToGlobal(void* c_this, void* pos);
	[LinkName("QWindow_MapFromGlobal")]
	public static extern void QWindow_MapFromGlobal(void* c_this, void* pos);
	[LinkName("QWindow_MapToGlobalWithPos")]
	public static extern void QWindow_MapToGlobalWithPos(void* c_this, void* pos);
	[LinkName("QWindow_MapFromGlobalWithPos")]
	public static extern void QWindow_MapFromGlobalWithPos(void* c_this, void* pos);
	[LinkName("QWindow_Cursor")]
	public static extern void QWindow_Cursor(void* c_this);
	[LinkName("QWindow_SetCursor")]
	public static extern void QWindow_SetCursor(void* c_this, void* cursor);
	[LinkName("QWindow_UnsetCursor")]
	public static extern void QWindow_UnsetCursor(void* c_this);
	[LinkName("QWindow_FromWinId")]
	public static extern void* QWindow_FromWinId(c_uintptr id);
	[LinkName("QWindow_ResolveInterface")]
	public static extern void* QWindow_ResolveInterface(void* c_this, char8[] name, int32 revision);
	[LinkName("QWindow_RequestActivate")]
	public static extern void QWindow_RequestActivate(void* c_this);
	[LinkName("QWindow_SetVisible")]
	public static extern void QWindow_SetVisible(void* c_this, bool visible);
	[LinkName("QWindow_Show")]
	public static extern void QWindow_Show(void* c_this);
	[LinkName("QWindow_Hide")]
	public static extern void QWindow_Hide(void* c_this);
	[LinkName("QWindow_ShowMinimized")]
	public static extern void QWindow_ShowMinimized(void* c_this);
	[LinkName("QWindow_ShowMaximized")]
	public static extern void QWindow_ShowMaximized(void* c_this);
	[LinkName("QWindow_ShowFullScreen")]
	public static extern void QWindow_ShowFullScreen(void* c_this);
	[LinkName("QWindow_ShowNormal")]
	public static extern void QWindow_ShowNormal(void* c_this);
	[LinkName("QWindow_Close")]
	public static extern bool QWindow_Close(void* c_this);
	[LinkName("QWindow_Raise")]
	public static extern void QWindow_Raise(void* c_this);
	[LinkName("QWindow_Lower")]
	public static extern void QWindow_Lower(void* c_this);
	[LinkName("QWindow_StartSystemResize")]
	public static extern bool QWindow_StartSystemResize(void* c_this, int64 edges);
	[LinkName("QWindow_StartSystemMove")]
	public static extern bool QWindow_StartSystemMove(void* c_this);
	[LinkName("QWindow_SetTitle")]
	public static extern void QWindow_SetTitle(void* c_this, libqt_string title);
	[LinkName("QWindow_SetX")]
	public static extern void QWindow_SetX(void* c_this, int32 arg);
	[LinkName("QWindow_SetY")]
	public static extern void QWindow_SetY(void* c_this, int32 arg);
	[LinkName("QWindow_SetWidth")]
	public static extern void QWindow_SetWidth(void* c_this, int32 arg);
	[LinkName("QWindow_SetHeight")]
	public static extern void QWindow_SetHeight(void* c_this, int32 arg);
	[LinkName("QWindow_SetGeometry")]
	public static extern void QWindow_SetGeometry(void* c_this, int32 posx, int32 posy, int32 w, int32 h);
	[LinkName("QWindow_SetGeometryWithRect")]
	public static extern void QWindow_SetGeometryWithRect(void* c_this, void* rect);
	[LinkName("QWindow_SetMinimumWidth")]
	public static extern void QWindow_SetMinimumWidth(void* c_this, int32 w);
	[LinkName("QWindow_SetMinimumHeight")]
	public static extern void QWindow_SetMinimumHeight(void* c_this, int32 h);
	[LinkName("QWindow_SetMaximumWidth")]
	public static extern void QWindow_SetMaximumWidth(void* c_this, int32 w);
	[LinkName("QWindow_SetMaximumHeight")]
	public static extern void QWindow_SetMaximumHeight(void* c_this, int32 h);
	[LinkName("QWindow_Alert")]
	public static extern void QWindow_Alert(void* c_this, int32 msec);
	[LinkName("QWindow_RequestUpdate")]
	public static extern void QWindow_RequestUpdate(void* c_this);
	[LinkName("QWindow_Connect_ScreenChanged")]
	public static extern void QWindow_Connect_ScreenChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_ModalityChanged")]
	public static extern void QWindow_Connect_ModalityChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_WindowStateChanged")]
	public static extern void QWindow_Connect_WindowStateChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_WindowTitleChanged")]
	public static extern void QWindow_Connect_WindowTitleChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_XChanged")]
	public static extern void QWindow_Connect_XChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_YChanged")]
	public static extern void QWindow_Connect_YChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_WidthChanged")]
	public static extern void QWindow_Connect_WidthChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_HeightChanged")]
	public static extern void QWindow_Connect_HeightChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_MinimumWidthChanged")]
	public static extern void QWindow_Connect_MinimumWidthChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_MinimumHeightChanged")]
	public static extern void QWindow_Connect_MinimumHeightChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_MaximumWidthChanged")]
	public static extern void QWindow_Connect_MaximumWidthChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_MaximumHeightChanged")]
	public static extern void QWindow_Connect_MaximumHeightChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_VisibleChanged")]
	public static extern void QWindow_Connect_VisibleChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_VisibilityChanged")]
	public static extern void QWindow_Connect_VisibilityChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_ActiveChanged")]
	public static extern void QWindow_Connect_ActiveChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_ContentOrientationChanged")]
	public static extern void QWindow_Connect_ContentOrientationChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_FocusObjectChanged")]
	public static extern void QWindow_Connect_FocusObjectChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_OpacityChanged")]
	public static extern void QWindow_Connect_OpacityChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_Connect_TransientParentChanged")]
	public static extern void QWindow_Connect_TransientParentChanged(void* c_this, c_intptr slot);
	[LinkName("QWindow_ExposeEvent")]
	public static extern void QWindow_ExposeEvent(void* c_this, void* param1);
	[LinkName("QWindow_ResizeEvent")]
	public static extern void QWindow_ResizeEvent(void* c_this, void* param1);
	[LinkName("QWindow_PaintEvent")]
	public static extern void QWindow_PaintEvent(void* c_this, void* param1);
	[LinkName("QWindow_MoveEvent")]
	public static extern void QWindow_MoveEvent(void* c_this, void* param1);
	[LinkName("QWindow_FocusInEvent")]
	public static extern void QWindow_FocusInEvent(void* c_this, void* param1);
	[LinkName("QWindow_FocusOutEvent")]
	public static extern void QWindow_FocusOutEvent(void* c_this, void* param1);
	[LinkName("QWindow_ShowEvent")]
	public static extern void QWindow_ShowEvent(void* c_this, void* param1);
	[LinkName("QWindow_HideEvent")]
	public static extern void QWindow_HideEvent(void* c_this, void* param1);
	[LinkName("QWindow_CloseEvent")]
	public static extern void QWindow_CloseEvent(void* c_this, void* param1);
	[LinkName("QWindow_Event")]
	public static extern bool QWindow_Event(void* c_this, void* param1);
	[LinkName("QWindow_KeyPressEvent")]
	public static extern void QWindow_KeyPressEvent(void* c_this, void* param1);
	[LinkName("QWindow_KeyReleaseEvent")]
	public static extern void QWindow_KeyReleaseEvent(void* c_this, void* param1);
	[LinkName("QWindow_MousePressEvent")]
	public static extern void QWindow_MousePressEvent(void* c_this, void* param1);
	[LinkName("QWindow_MouseReleaseEvent")]
	public static extern void QWindow_MouseReleaseEvent(void* c_this, void* param1);
	[LinkName("QWindow_MouseDoubleClickEvent")]
	public static extern void QWindow_MouseDoubleClickEvent(void* c_this, void* param1);
	[LinkName("QWindow_MouseMoveEvent")]
	public static extern void QWindow_MouseMoveEvent(void* c_this, void* param1);
	[LinkName("QWindow_WheelEvent")]
	public static extern void QWindow_WheelEvent(void* c_this, void* param1);
	[LinkName("QWindow_TouchEvent")]
	public static extern void QWindow_TouchEvent(void* c_this, void* param1);
	[LinkName("QWindow_TabletEvent")]
	public static extern void QWindow_TabletEvent(void* c_this, void* param1);
	[LinkName("QWindow_NativeEvent")]
	public static extern bool QWindow_NativeEvent(void* c_this, libqt_string eventType, void* message, c_uintptr* result);
	[LinkName("QWindow_Tr2")]
	public static extern libqt_string QWindow_Tr2(char8[] s, char8[] c);
	[LinkName("QWindow_Tr3")]
	public static extern libqt_string QWindow_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QWindow_Parent1")]
	public static extern void* QWindow_Parent1(void* c_this, int64 mode);
	[LinkName("QWindow_SetFlag2")]
	public static extern void QWindow_SetFlag2(void* c_this, int64 param1, bool on);
	[LinkName("QWindow_IsAncestorOf2")]
	public static extern bool QWindow_IsAncestorOf2(void* c_this, void* child, int64 mode);
	/// Delete this object from C++ memory
	[LinkName("QWindow_Delete")]
	public static extern void QWindow_Delete(void* self);
}