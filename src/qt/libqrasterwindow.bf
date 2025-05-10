using System;
using System.Interop;
namespace Qt;

public class QRasterWindow
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QRasterWindow_new();
	}
	
	public ~this()
	{
		CQt.QRasterWindow_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QRasterWindow_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QRasterWindow_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QRasterWindow_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QRasterWindow_Tr(s);
	}
	
	public virtual int32 Metric(int64 metric)
	{
		return CQt.QRasterWindow_Metric(this.nativePtr, metric);
	}
	
	public virtual void* Redirected(void* param1)
	{
		return CQt.QRasterWindow_Redirected(this.nativePtr, param1);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QRasterWindow_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QRasterWindow_Tr3(s, c, n);
	}
	
	public void Update(void* rect)
	{
		CQt.QPaintDeviceWindow_Update(this.nativePtr, rect);
	}
	
	public void UpdateWithRegion(void* region)
	{
		CQt.QPaintDeviceWindow_UpdateWithRegion(this.nativePtr, region);
	}
	
	public void Update2()
	{
		CQt.QPaintDeviceWindow_Update2(this.nativePtr);
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
	
	public virtual int32 DevType()
	{
		return CQt.QPaintDevice_DevType(this.nativePtr);
	}
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public virtual void* PaintEngine()
	{
		return CQt.QPaintDevice_PaintEngine(this.nativePtr);
	}
	
	public int32 WidthMM()
	{
		return CQt.QPaintDevice_WidthMM(this.nativePtr);
	}
	
	public int32 HeightMM()
	{
		return CQt.QPaintDevice_HeightMM(this.nativePtr);
	}
	
	public int32 LogicalDpiX()
	{
		return CQt.QPaintDevice_LogicalDpiX(this.nativePtr);
	}
	
	public int32 LogicalDpiY()
	{
		return CQt.QPaintDevice_LogicalDpiY(this.nativePtr);
	}
	
	public int32 PhysicalDpiX()
	{
		return CQt.QPaintDevice_PhysicalDpiX(this.nativePtr);
	}
	
	public int32 PhysicalDpiY()
	{
		return CQt.QPaintDevice_PhysicalDpiY(this.nativePtr);
	}
	
	public double DevicePixelRatioF()
	{
		return CQt.QPaintDevice_DevicePixelRatioF(this.nativePtr);
	}
	
	public int32 ColorCount()
	{
		return CQt.QPaintDevice_ColorCount(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QPaintDevice_Depth(this.nativePtr);
	}
	
	public static double DevicePixelRatioFScale()
	{
		return CQt.QPaintDevice_DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QRasterWindow_new")]
	public static extern void* QRasterWindow_new();
	[LinkName("QRasterWindow_new2")]
	public static extern void* QRasterWindow_new2(void* parent);
	[LinkName("QRasterWindow_MetaObject")]
	public static extern void* QRasterWindow_MetaObject(void* c_this);
	[LinkName("QRasterWindow_Metacast")]
	public static extern void* QRasterWindow_Metacast(void* c_this, char8[] param1);
	[LinkName("QRasterWindow_Metacall")]
	public static extern int32 QRasterWindow_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QRasterWindow_Tr")]
	public static extern libqt_string QRasterWindow_Tr(char8[] s);
	[LinkName("QRasterWindow_Metric")]
	public static extern int32 QRasterWindow_Metric(void* c_this, int64 metric);
	[LinkName("QRasterWindow_Redirected")]
	public static extern void* QRasterWindow_Redirected(void* c_this, void* param1);
	[LinkName("QRasterWindow_Tr2")]
	public static extern libqt_string QRasterWindow_Tr2(char8[] s, char8[] c);
	[LinkName("QRasterWindow_Tr3")]
	public static extern libqt_string QRasterWindow_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QRasterWindow_Delete")]
	public static extern void QRasterWindow_Delete(void* self);
}