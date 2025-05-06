using System;
using System.Interop;
namespace Qt;

public struct QScreen : QObject
{
	[LinkName("QScreen_MetaObject")]
	public static extern QMetaObject* QScreen_MetaObject(Self* c_this);
	[LinkName("QScreen_Metacast")]
	public static extern void* QScreen_Metacast(Self* c_this, char8[] param1);
	[LinkName("QScreen_Metacall")]
	public static extern int32 QScreen_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QScreen_Tr")]
	public static extern libqt_string QScreen_Tr(char8[] s);
	[LinkName("QScreen_Name")]
	public static extern libqt_string QScreen_Name(Self* c_this);
	[LinkName("QScreen_Manufacturer")]
	public static extern libqt_string QScreen_Manufacturer(Self* c_this);
	[LinkName("QScreen_Model")]
	public static extern libqt_string QScreen_Model(Self* c_this);
	[LinkName("QScreen_SerialNumber")]
	public static extern libqt_string QScreen_SerialNumber(Self* c_this);
	[LinkName("QScreen_Depth")]
	public static extern int32 QScreen_Depth(Self* c_this);
	[LinkName("QScreen_Size")]
	public static extern QSize QScreen_Size(Self* c_this);
	[LinkName("QScreen_Geometry")]
	public static extern QRect QScreen_Geometry(Self* c_this);
	[LinkName("QScreen_PhysicalSize")]
	public static extern QSizeF QScreen_PhysicalSize(Self* c_this);
	[LinkName("QScreen_PhysicalDotsPerInchX")]
	public static extern double QScreen_PhysicalDotsPerInchX(Self* c_this);
	[LinkName("QScreen_PhysicalDotsPerInchY")]
	public static extern double QScreen_PhysicalDotsPerInchY(Self* c_this);
	[LinkName("QScreen_PhysicalDotsPerInch")]
	public static extern double QScreen_PhysicalDotsPerInch(Self* c_this);
	[LinkName("QScreen_LogicalDotsPerInchX")]
	public static extern double QScreen_LogicalDotsPerInchX(Self* c_this);
	[LinkName("QScreen_LogicalDotsPerInchY")]
	public static extern double QScreen_LogicalDotsPerInchY(Self* c_this);
	[LinkName("QScreen_LogicalDotsPerInch")]
	public static extern double QScreen_LogicalDotsPerInch(Self* c_this);
	[LinkName("QScreen_DevicePixelRatio")]
	public static extern double QScreen_DevicePixelRatio(Self* c_this);
	[LinkName("QScreen_AvailableSize")]
	public static extern QSize QScreen_AvailableSize(Self* c_this);
	[LinkName("QScreen_AvailableGeometry")]
	public static extern QRect QScreen_AvailableGeometry(Self* c_this);
	[LinkName("QScreen_VirtualSiblings")]
	public static extern QScreen*[] QScreen_VirtualSiblings(Self* c_this);
	[LinkName("QScreen_VirtualSiblingAt")]
	public static extern QScreen* QScreen_VirtualSiblingAt(Self* c_this, QPoint point);
	[LinkName("QScreen_VirtualSize")]
	public static extern QSize QScreen_VirtualSize(Self* c_this);
	[LinkName("QScreen_VirtualGeometry")]
	public static extern QRect QScreen_VirtualGeometry(Self* c_this);
	[LinkName("QScreen_AvailableVirtualSize")]
	public static extern QSize QScreen_AvailableVirtualSize(Self* c_this);
	[LinkName("QScreen_AvailableVirtualGeometry")]
	public static extern QRect QScreen_AvailableVirtualGeometry(Self* c_this);
	[LinkName("QScreen_PrimaryOrientation")]
	public static extern int64 QScreen_PrimaryOrientation(Self* c_this);
	[LinkName("QScreen_Orientation")]
	public static extern int64 QScreen_Orientation(Self* c_this);
	[LinkName("QScreen_NativeOrientation")]
	public static extern int64 QScreen_NativeOrientation(Self* c_this);
	[LinkName("QScreen_AngleBetween")]
	public static extern int32 QScreen_AngleBetween(Self* c_this, int64 a, int64 b);
	[LinkName("QScreen_TransformBetween")]
	public static extern QTransform QScreen_TransformBetween(Self* c_this, int64 a, int64 b, QRect* target);
	[LinkName("QScreen_MapBetween")]
	public static extern QRect QScreen_MapBetween(Self* c_this, int64 a, int64 b, QRect* rect);
	[LinkName("QScreen_IsPortrait")]
	public static extern bool QScreen_IsPortrait(Self* c_this, int64 orientation);
	[LinkName("QScreen_IsLandscape")]
	public static extern bool QScreen_IsLandscape(Self* c_this, int64 orientation);
	[LinkName("QScreen_GrabWindow")]
	public static extern QPixmap QScreen_GrabWindow(Self* c_this);
	[LinkName("QScreen_RefreshRate")]
	public static extern double QScreen_RefreshRate(Self* c_this);
	[LinkName("QScreen_ResolveInterface")]
	public static extern void* QScreen_ResolveInterface(Self* c_this, char8[] name, int32 revision);
	[LinkName("QScreen_Connect_GeometryChanged")]
	public static extern void QScreen_Connect_GeometryChanged(Self* c_this, c_intptr slot);
	[LinkName("QScreen_Connect_AvailableGeometryChanged")]
	public static extern void QScreen_Connect_AvailableGeometryChanged(Self* c_this, c_intptr slot);
	[LinkName("QScreen_Connect_PhysicalSizeChanged")]
	public static extern void QScreen_Connect_PhysicalSizeChanged(Self* c_this, c_intptr slot);
	[LinkName("QScreen_Connect_PhysicalDotsPerInchChanged")]
	public static extern void QScreen_Connect_PhysicalDotsPerInchChanged(Self* c_this, c_intptr slot);
	[LinkName("QScreen_Connect_LogicalDotsPerInchChanged")]
	public static extern void QScreen_Connect_LogicalDotsPerInchChanged(Self* c_this, c_intptr slot);
	[LinkName("QScreen_Connect_VirtualGeometryChanged")]
	public static extern void QScreen_Connect_VirtualGeometryChanged(Self* c_this, c_intptr slot);
	[LinkName("QScreen_Connect_PrimaryOrientationChanged")]
	public static extern void QScreen_Connect_PrimaryOrientationChanged(Self* c_this, c_intptr slot);
	[LinkName("QScreen_Connect_OrientationChanged")]
	public static extern void QScreen_Connect_OrientationChanged(Self* c_this, c_intptr slot);
	[LinkName("QScreen_Connect_RefreshRateChanged")]
	public static extern void QScreen_Connect_RefreshRateChanged(Self* c_this, c_intptr slot);
	[LinkName("QScreen_Tr2")]
	public static extern libqt_string QScreen_Tr2(char8[] s, char8[] c);
	[LinkName("QScreen_Tr3")]
	public static extern libqt_string QScreen_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QScreen_GrabWindow1")]
	public static extern QPixmap QScreen_GrabWindow1(Self* c_this, c_uintptr window);
	[LinkName("QScreen_GrabWindow2")]
	public static extern QPixmap QScreen_GrabWindow2(Self* c_this, c_uintptr window, int32 x);
	[LinkName("QScreen_GrabWindow3")]
	public static extern QPixmap QScreen_GrabWindow3(Self* c_this, c_uintptr window, int32 x, int32 y);
	[LinkName("QScreen_GrabWindow4")]
	public static extern QPixmap QScreen_GrabWindow4(Self* c_this, c_uintptr window, int32 x, int32 y, int32 w);
	[LinkName("QScreen_GrabWindow5")]
	public static extern QPixmap QScreen_GrabWindow5(Self* c_this, c_uintptr window, int32 x, int32 y, int32 w, int32 h);
}