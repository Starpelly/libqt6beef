using System;
using System.Interop;
namespace Qt;

public interface IQRasterWindow
{
	void* NativePtr { get; }
}
public struct QRasterWindowPtr : IQRasterWindow, IDisposable, IQPaintDeviceWindow
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QRasterWindow_new());
	}
	
	public void Dispose()
	{
		CQt.QRasterWindow_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QRasterWindow_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QRasterWindow_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QRasterWindow_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QRasterWindow_Tr(s);
	}
	
	public int32 Metric(int64 metric)
	{
		return CQt.QRasterWindow_Metric(this.nativePtr, (int64)metric);
	}
	
	public void* Redirected(IQPoint param1)
	{
		return CQt.QRasterWindow_Redirected(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QRasterWindow_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QRasterWindow_Tr3(s, c, n);
	}
	
	public void Update(IQRect rect)
	{
		CQt.QPaintDeviceWindow_Update(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void UpdateWithRegion(IQRegion region)
	{
		CQt.QPaintDeviceWindow_UpdateWithRegion(this.nativePtr, (region == default || region.NativePtr == default) ? default : region.NativePtr);
	}
	
	public void Update2()
	{
		CQt.QPaintDeviceWindow_Update2(this.nativePtr);
	}
	
	public void SetSurfaceType(int64 surfaceType)
	{
		CQt.QWindow_SetSurfaceType(this.nativePtr, (int64)surfaceType);
	}
	
	public int64 SurfaceType()
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
		CQt.QWindow_SetVisibility(this.nativePtr, (int64)v);
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
	
	public void SetParent(IQWindow parent)
	{
		CQt.QWindow_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
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
		CQt.QWindow_SetModality(this.nativePtr, (int64)modality);
	}
	
	public void SetFormat(IQSurfaceFormat format)
	{
		CQt.QWindow_SetFormat(this.nativePtr, (format == default || format.NativePtr == default) ? default : format.NativePtr);
	}
	
	public void Format()
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
		CQt.QWindow_SetFlag(this.nativePtr, (int64)param1);
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
	
	public void SetMask(IQRegion region)
	{
		CQt.QWindow_SetMask(this.nativePtr, (region == default || region.NativePtr == default) ? default : region.NativePtr);
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
		CQt.QWindow_ReportContentOrientationChange(this.nativePtr, (int64)orientation);
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
		CQt.QWindow_SetWindowState(this.nativePtr, (int64)state);
	}
	
	public void SetWindowStates(int64 states)
	{
		CQt.QWindow_SetWindowStates(this.nativePtr, states);
	}
	
	public void SetTransientParent(IQWindow parent)
	{
		CQt.QWindow_SetTransientParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void* TransientParent()
	{
		return CQt.QWindow_TransientParent(this.nativePtr);
	}
	
	public bool IsAncestorOf(IQWindow child)
	{
		return CQt.QWindow_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
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
	
	public void SetMinimumSize(IQSize size)
	{
		CQt.QWindow_SetMinimumSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void SetMaximumSize(IQSize size)
	{
		CQt.QWindow_SetMaximumSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void SetBaseSize(IQSize size)
	{
		CQt.QWindow_SetBaseSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void SetSizeIncrement(IQSize size)
	{
		CQt.QWindow_SetSizeIncrement(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
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
	
	public void SetFramePosition(IQPoint point)
	{
		CQt.QWindow_SetFramePosition(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
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
	
	public void Size()
	{
		CQt.QWindow_Size(this.nativePtr);
	}
	
	public void Position()
	{
		CQt.QWindow_Position(this.nativePtr);
	}
	
	public void SetPosition(IQPoint pt)
	{
		CQt.QWindow_SetPosition(this.nativePtr, (pt == default || pt.NativePtr == default) ? default : pt.NativePtr);
	}
	
	public void SetPosition2(int32 posx, int32 posy)
	{
		CQt.QWindow_SetPosition2(this.nativePtr, posx, posy);
	}
	
	public void Resize(IQSize newSize)
	{
		CQt.QWindow_Resize(this.nativePtr, (newSize == default || newSize.NativePtr == default) ? default : newSize.NativePtr);
	}
	
	public void Resize2(int32 w, int32 h)
	{
		CQt.QWindow_Resize2(this.nativePtr, w, h);
	}
	
	public void SetFilePath(String filePath)
	{
		CQt.QWindow_SetFilePath(this.nativePtr, libqt_string(filePath));
	}
	
	public libqt_string FilePath()
	{
		return CQt.QWindow_FilePath(this.nativePtr);
	}
	
	public void SetIcon(IQIcon icon)
	{
		CQt.QWindow_SetIcon(this.nativePtr, (icon == default || icon.NativePtr == default) ? default : icon.NativePtr);
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
	
	public void SetScreen(IQScreen screen)
	{
		CQt.QWindow_SetScreen(this.nativePtr, (screen == default || screen.NativePtr == default) ? default : screen.NativePtr);
	}
	
	public void* AccessibleRoot()
	{
		return CQt.QWindow_AccessibleRoot(this.nativePtr);
	}
	
	public void* FocusObject()
	{
		return CQt.QWindow_FocusObject(this.nativePtr);
	}
	
	public void MapToGlobal(IQPointF pos)
	{
		CQt.QWindow_MapToGlobal(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void MapFromGlobal(IQPointF pos)
	{
		CQt.QWindow_MapFromGlobal(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void MapToGlobalWithPos(IQPoint pos)
	{
		CQt.QWindow_MapToGlobalWithPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void MapFromGlobalWithPos(IQPoint pos)
	{
		CQt.QWindow_MapFromGlobalWithPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void Cursor()
	{
		CQt.QWindow_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QWindow_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
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
	
	public void SetTitle(String title)
	{
		CQt.QWindow_SetTitle(this.nativePtr, libqt_string(title));
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
	
	public void SetGeometryWithRect(IQRect rect)
	{
		CQt.QWindow_SetGeometryWithRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
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
		return CQt.QWindow_Parent1(this.nativePtr, (int64)mode);
	}
	
	public void SetFlag2(int64 param1, bool on)
	{
		CQt.QWindow_SetFlag2(this.nativePtr, (int64)param1, on);
	}
	
	public bool IsAncestorOf2(IQWindow child, int64 mode)
	{
		return CQt.QWindow_IsAncestorOf2(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr, (int64)mode);
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
	
	public int64 SurfaceClass()
	{
		return CQt.QSurface_SurfaceClass(this.nativePtr);
	}
	
	public bool SupportsOpenGL()
	{
		return CQt.QSurface_SupportsOpenGL(this.nativePtr);
	}
	
	public int32 DevType()
	{
		return CQt.QPaintDevice_DevType(this.nativePtr);
	}
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public void* PaintEngine()
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
public class QRasterWindow
{
	public QRasterWindowPtr handle;
	
	public static implicit operator QRasterWindowPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QRasterWindowPtr.New();
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
		return QRasterWindowPtr.Tr(s);
	}
	
	public virtual int32 Metric(int64 metric)
	{
		return this.handle.Metric(metric);
	}
	
	public virtual void* Redirected(IQPoint param1)
	{
		return this.handle.Redirected(param1);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QRasterWindowPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QRasterWindowPtr.Tr3(s, c, n);
	}
	
	public void Update(IQRect rect)
	{
		this.handle.Update(rect);
	}
	
	public void UpdateWithRegion(IQRegion region)
	{
		this.handle.UpdateWithRegion(region);
	}
	
	public void Update2()
	{
		this.handle.Update2();
	}
	
	public void SetSurfaceType(int64 surfaceType)
	{
		this.handle.SetSurfaceType(surfaceType);
	}
	
	public virtual int64 SurfaceType()
	{
		return this.handle.SurfaceType();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public int64 Visibility()
	{
		return this.handle.Visibility();
	}
	
	public void SetVisibility(int64 v)
	{
		this.handle.SetVisibility(v);
	}
	
	public void Create()
	{
		this.handle.Create();
	}
	
	public c_uintptr WinId()
	{
		return this.handle.WinId();
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public void SetParent(IQWindow parent)
	{
		this.handle.SetParent(parent);
	}
	
	public bool IsTopLevel()
	{
		return this.handle.IsTopLevel();
	}
	
	public bool IsModal()
	{
		return this.handle.IsModal();
	}
	
	public int64 Modality()
	{
		return this.handle.Modality();
	}
	
	public void SetModality(int64 modality)
	{
		this.handle.SetModality(modality);
	}
	
	public void SetFormat(IQSurfaceFormat format)
	{
		this.handle.SetFormat(format);
	}
	
	public virtual void Format()
	{
		this.handle.Format();
	}
	
	public void RequestedFormat()
	{
		this.handle.RequestedFormat();
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlag(int64 param1)
	{
		this.handle.SetFlag(param1);
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public libqt_string Title()
	{
		return this.handle.Title();
	}
	
	public void SetOpacity(double level)
	{
		this.handle.SetOpacity(level);
	}
	
	public double Opacity()
	{
		return this.handle.Opacity();
	}
	
	public void SetMask(IQRegion region)
	{
		this.handle.SetMask(region);
	}
	
	public void Mask()
	{
		this.handle.Mask();
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void ReportContentOrientationChange(int64 orientation)
	{
		this.handle.ReportContentOrientationChange(orientation);
	}
	
	public int64 ContentOrientation()
	{
		return this.handle.ContentOrientation();
	}
	
	public double DevicePixelRatio()
	{
		return this.handle.DevicePixelRatio();
	}
	
	public int64 WindowState()
	{
		return this.handle.WindowState();
	}
	
	public int64 WindowStates()
	{
		return this.handle.WindowStates();
	}
	
	public void SetWindowState(int64 state)
	{
		this.handle.SetWindowState(state);
	}
	
	public void SetWindowStates(int64 states)
	{
		this.handle.SetWindowStates(states);
	}
	
	public void SetTransientParent(IQWindow parent)
	{
		this.handle.SetTransientParent(parent);
	}
	
	public void* TransientParent()
	{
		return this.handle.TransientParent();
	}
	
	public bool IsAncestorOf(IQWindow child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public bool IsExposed()
	{
		return this.handle.IsExposed();
	}
	
	public int32 MinimumWidth()
	{
		return this.handle.MinimumWidth();
	}
	
	public int32 MinimumHeight()
	{
		return this.handle.MinimumHeight();
	}
	
	public int32 MaximumWidth()
	{
		return this.handle.MaximumWidth();
	}
	
	public int32 MaximumHeight()
	{
		return this.handle.MaximumHeight();
	}
	
	public void MinimumSize()
	{
		this.handle.MinimumSize();
	}
	
	public void MaximumSize()
	{
		this.handle.MaximumSize();
	}
	
	public void BaseSize()
	{
		this.handle.BaseSize();
	}
	
	public void SizeIncrement()
	{
		this.handle.SizeIncrement();
	}
	
	public void SetMinimumSize(IQSize size)
	{
		this.handle.SetMinimumSize(size);
	}
	
	public void SetMaximumSize(IQSize size)
	{
		this.handle.SetMaximumSize(size);
	}
	
	public void SetBaseSize(IQSize size)
	{
		this.handle.SetBaseSize(size);
	}
	
	public void SetSizeIncrement(IQSize size)
	{
		this.handle.SetSizeIncrement(size);
	}
	
	public void Geometry()
	{
		this.handle.Geometry();
	}
	
	public void FrameMargins()
	{
		this.handle.FrameMargins();
	}
	
	public void FrameGeometry()
	{
		this.handle.FrameGeometry();
	}
	
	public void FramePosition()
	{
		this.handle.FramePosition();
	}
	
	public void SetFramePosition(IQPoint point)
	{
		this.handle.SetFramePosition(point);
	}
	
	public int32 Width()
	{
		return this.handle.Width();
	}
	
	public int32 Height()
	{
		return this.handle.Height();
	}
	
	public int32 X()
	{
		return this.handle.X();
	}
	
	public int32 Y()
	{
		return this.handle.Y();
	}
	
	public virtual void Size()
	{
		this.handle.Size();
	}
	
	public void Position()
	{
		this.handle.Position();
	}
	
	public void SetPosition(IQPoint pt)
	{
		this.handle.SetPosition(pt);
	}
	
	public void SetPosition2(int32 posx, int32 posy)
	{
		this.handle.SetPosition2(posx, posy);
	}
	
	public void Resize(IQSize newSize)
	{
		this.handle.Resize(newSize);
	}
	
	public void Resize2(int32 w, int32 h)
	{
		this.handle.Resize2(w, h);
	}
	
	public void SetFilePath(String filePath)
	{
		this.handle.SetFilePath(filePath);
	}
	
	public libqt_string FilePath()
	{
		return this.handle.FilePath();
	}
	
	public void SetIcon(IQIcon icon)
	{
		this.handle.SetIcon(icon);
	}
	
	public void Icon()
	{
		this.handle.Icon();
	}
	
	public void Destroy()
	{
		this.handle.Destroy();
	}
	
	public bool SetKeyboardGrabEnabled(bool grab)
	{
		return this.handle.SetKeyboardGrabEnabled(grab);
	}
	
	public bool SetMouseGrabEnabled(bool grab)
	{
		return this.handle.SetMouseGrabEnabled(grab);
	}
	
	public void* Screen()
	{
		return this.handle.Screen();
	}
	
	public void SetScreen(IQScreen screen)
	{
		this.handle.SetScreen(screen);
	}
	
	public virtual void* AccessibleRoot()
	{
		return this.handle.AccessibleRoot();
	}
	
	public virtual void* FocusObject()
	{
		return this.handle.FocusObject();
	}
	
	public void MapToGlobal(IQPointF pos)
	{
		this.handle.MapToGlobal(pos);
	}
	
	public void MapFromGlobal(IQPointF pos)
	{
		this.handle.MapFromGlobal(pos);
	}
	
	public void MapToGlobalWithPos(IQPoint pos)
	{
		this.handle.MapToGlobalWithPos(pos);
	}
	
	public void MapFromGlobalWithPos(IQPoint pos)
	{
		this.handle.MapFromGlobalWithPos(pos);
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public static void* FromWinId(c_uintptr id)
	{
		return QRasterWindowPtr.FromWinId(id);
	}
	
	public void RequestActivate()
	{
		this.handle.RequestActivate();
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void ShowMinimized()
	{
		this.handle.ShowMinimized();
	}
	
	public void ShowMaximized()
	{
		this.handle.ShowMaximized();
	}
	
	public void ShowFullScreen()
	{
		this.handle.ShowFullScreen();
	}
	
	public void ShowNormal()
	{
		this.handle.ShowNormal();
	}
	
	public bool Close()
	{
		return this.handle.Close();
	}
	
	public void Raise()
	{
		this.handle.Raise();
	}
	
	public void Lower()
	{
		this.handle.Lower();
	}
	
	public bool StartSystemResize(int64 edges)
	{
		return this.handle.StartSystemResize(edges);
	}
	
	public bool StartSystemMove()
	{
		return this.handle.StartSystemMove();
	}
	
	public void SetTitle(String title)
	{
		this.handle.SetTitle(title);
	}
	
	public void SetX(int32 arg)
	{
		this.handle.SetX(arg);
	}
	
	public void SetY(int32 arg)
	{
		this.handle.SetY(arg);
	}
	
	public void SetWidth(int32 arg)
	{
		this.handle.SetWidth(arg);
	}
	
	public void SetHeight(int32 arg)
	{
		this.handle.SetHeight(arg);
	}
	
	public void SetGeometry(int32 posx, int32 posy, int32 w, int32 h)
	{
		this.handle.SetGeometry(posx, posy, w, h);
	}
	
	public void SetGeometryWithRect(IQRect rect)
	{
		this.handle.SetGeometryWithRect(rect);
	}
	
	public void SetMinimumWidth(int32 w)
	{
		this.handle.SetMinimumWidth(w);
	}
	
	public void SetMinimumHeight(int32 h)
	{
		this.handle.SetMinimumHeight(h);
	}
	
	public void SetMaximumWidth(int32 w)
	{
		this.handle.SetMaximumWidth(w);
	}
	
	public void SetMaximumHeight(int32 h)
	{
		this.handle.SetMaximumHeight(h);
	}
	
	public void Alert(int32 msec)
	{
		this.handle.Alert(msec);
	}
	
	public void RequestUpdate()
	{
		this.handle.RequestUpdate();
	}
	
	public void* Parent1(int64 mode)
	{
		return this.handle.Parent1(mode);
	}
	
	public void SetFlag2(int64 param1, bool on)
	{
		this.handle.SetFlag2(param1, on);
	}
	
	public bool IsAncestorOf2(IQWindow child, int64 mode)
	{
		return this.handle.IsAncestorOf2(child, mode);
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
		QRasterWindowPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QRasterWindowPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QRasterWindowPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QRasterWindowPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
	public int64 SurfaceClass()
	{
		return this.handle.SurfaceClass();
	}
	
	public bool SupportsOpenGL()
	{
		return this.handle.SupportsOpenGL();
	}
	
	public virtual int32 DevType()
	{
		return this.handle.DevType();
	}
	
	public bool PaintingActive()
	{
		return this.handle.PaintingActive();
	}
	
	public virtual void* PaintEngine()
	{
		return this.handle.PaintEngine();
	}
	
	public int32 WidthMM()
	{
		return this.handle.WidthMM();
	}
	
	public int32 HeightMM()
	{
		return this.handle.HeightMM();
	}
	
	public int32 LogicalDpiX()
	{
		return this.handle.LogicalDpiX();
	}
	
	public int32 LogicalDpiY()
	{
		return this.handle.LogicalDpiY();
	}
	
	public int32 PhysicalDpiX()
	{
		return this.handle.PhysicalDpiX();
	}
	
	public int32 PhysicalDpiY()
	{
		return this.handle.PhysicalDpiY();
	}
	
	public double DevicePixelRatioF()
	{
		return this.handle.DevicePixelRatioF();
	}
	
	public int32 ColorCount()
	{
		return this.handle.ColorCount();
	}
	
	public int32 Depth()
	{
		return this.handle.Depth();
	}
	
	public static double DevicePixelRatioFScale()
	{
		return QRasterWindowPtr.DevicePixelRatioFScale();
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
	public static extern void* QRasterWindow_Metacast(void* c_this, char8* param1);
	[LinkName("QRasterWindow_Metacall")]
	public static extern int32 QRasterWindow_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QRasterWindow_Tr")]
	public static extern libqt_string QRasterWindow_Tr(char8* s);
	[LinkName("QRasterWindow_Metric")]
	public static extern int32 QRasterWindow_Metric(void* c_this, int64 metric);
	[LinkName("QRasterWindow_Redirected")]
	public static extern void* QRasterWindow_Redirected(void* c_this, void* param1);
	[LinkName("QRasterWindow_Tr2")]
	public static extern libqt_string QRasterWindow_Tr2(char8* s, char8* c);
	[LinkName("QRasterWindow_Tr3")]
	public static extern libqt_string QRasterWindow_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QRasterWindow_Delete")]
	public static extern void QRasterWindow_Delete(void* self);
}