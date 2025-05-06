using System;
using System.Interop;
namespace Qt;

public struct QScreen
{
	[LinkName("QScreen_MetaObject")]
	public static extern QMetaObject QScreen_MetaObject(void* c_this);
	[LinkName("QScreen_Metacast")]
	public static extern void QScreen_Metacast(void* c_this, char8[] param1);
	[LinkName("QScreen_Metacall")]
	public static extern int32 QScreen_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QScreen_Tr")]
	public static extern char8[] QScreen_Tr(char8[] s);
	[LinkName("QScreen_Name")]
	public static extern char8[] QScreen_Name(void* c_this);
	[LinkName("QScreen_Manufacturer")]
	public static extern char8[] QScreen_Manufacturer(void* c_this);
	[LinkName("QScreen_Model")]
	public static extern char8[] QScreen_Model(void* c_this);
	[LinkName("QScreen_SerialNumber")]
	public static extern char8[] QScreen_SerialNumber(void* c_this);
	[LinkName("QScreen_Depth")]
	public static extern int32 QScreen_Depth(void* c_this);
	[LinkName("QScreen_Size")]
	public static extern QSize QScreen_Size(void* c_this);
	[LinkName("QScreen_Geometry")]
	public static extern QRect QScreen_Geometry(void* c_this);
	[LinkName("QScreen_PhysicalSize")]
	public static extern QSizeF QScreen_PhysicalSize(void* c_this);
	[LinkName("QScreen_PhysicalDotsPerInchX")]
	public static extern double QScreen_PhysicalDotsPerInchX(void* c_this);
	[LinkName("QScreen_PhysicalDotsPerInchY")]
	public static extern double QScreen_PhysicalDotsPerInchY(void* c_this);
	[LinkName("QScreen_PhysicalDotsPerInch")]
	public static extern double QScreen_PhysicalDotsPerInch(void* c_this);
	[LinkName("QScreen_LogicalDotsPerInchX")]
	public static extern double QScreen_LogicalDotsPerInchX(void* c_this);
	[LinkName("QScreen_LogicalDotsPerInchY")]
	public static extern double QScreen_LogicalDotsPerInchY(void* c_this);
	[LinkName("QScreen_LogicalDotsPerInch")]
	public static extern double QScreen_LogicalDotsPerInch(void* c_this);
	[LinkName("QScreen_DevicePixelRatio")]
	public static extern double QScreen_DevicePixelRatio(void* c_this);
	[LinkName("QScreen_AvailableSize")]
	public static extern QSize QScreen_AvailableSize(void* c_this);
	[LinkName("QScreen_AvailableGeometry")]
	public static extern QRect QScreen_AvailableGeometry(void* c_this);
	[LinkName("QScreen_VirtualSiblings")]
	public static extern QScreen[] QScreen_VirtualSiblings(void* c_this);
	[LinkName("QScreen_VirtualSiblingAt")]
	public static extern QScreen QScreen_VirtualSiblingAt(void* c_this, QPoint point);
	[LinkName("QScreen_VirtualSize")]
	public static extern QSize QScreen_VirtualSize(void* c_this);
	[LinkName("QScreen_VirtualGeometry")]
	public static extern QRect QScreen_VirtualGeometry(void* c_this);
	[LinkName("QScreen_AvailableVirtualSize")]
	public static extern QSize QScreen_AvailableVirtualSize(void* c_this);
	[LinkName("QScreen_AvailableVirtualGeometry")]
	public static extern QRect QScreen_AvailableVirtualGeometry(void* c_this);
	[LinkName("QScreen_PrimaryOrientation")]
	public static extern int64 QScreen_PrimaryOrientation(void* c_this);
	[LinkName("QScreen_Orientation")]
	public static extern int64 QScreen_Orientation(void* c_this);
	[LinkName("QScreen_NativeOrientation")]
	public static extern int64 QScreen_NativeOrientation(void* c_this);
	[LinkName("QScreen_AngleBetween")]
	public static extern int32 QScreen_AngleBetween(void* c_this, int64 a, int64 b);
	[LinkName("QScreen_TransformBetween")]
	public static extern QTransform QScreen_TransformBetween(void* c_this, int64 a, int64 b, QRect target);
	[LinkName("QScreen_MapBetween")]
	public static extern QRect QScreen_MapBetween(void* c_this, int64 a, int64 b, QRect rect);
	[LinkName("QScreen_IsPortrait")]
	public static extern bool QScreen_IsPortrait(void* c_this, int64 orientation);
	[LinkName("QScreen_IsLandscape")]
	public static extern bool QScreen_IsLandscape(void* c_this, int64 orientation);
	[LinkName("QScreen_GrabWindow")]
	public static extern QPixmap QScreen_GrabWindow(void* c_this);
	[LinkName("QScreen_RefreshRate")]
	public static extern double QScreen_RefreshRate(void* c_this);
	[LinkName("QScreen_ResolveInterface")]
	public static extern void QScreen_ResolveInterface(void* c_this, char8[] name, int32 revision);
	[LinkName("QScreen_GeometryChanged")]
	public static extern void QScreen_GeometryChanged(void* c_this, QRect geometry);
	[LinkName("QScreen_AvailableGeometryChanged")]
	public static extern void QScreen_AvailableGeometryChanged(void* c_this, QRect geometry);
	[LinkName("QScreen_PhysicalSizeChanged")]
	public static extern void QScreen_PhysicalSizeChanged(void* c_this, QSizeF size);
	[LinkName("QScreen_PhysicalDotsPerInchChanged")]
	public static extern void QScreen_PhysicalDotsPerInchChanged(void* c_this, double dpi);
	[LinkName("QScreen_LogicalDotsPerInchChanged")]
	public static extern void QScreen_LogicalDotsPerInchChanged(void* c_this, double dpi);
	[LinkName("QScreen_VirtualGeometryChanged")]
	public static extern void QScreen_VirtualGeometryChanged(void* c_this, QRect rect);
	[LinkName("QScreen_PrimaryOrientationChanged")]
	public static extern void QScreen_PrimaryOrientationChanged(void* c_this, int64 orientation);
	[LinkName("QScreen_OrientationChanged")]
	public static extern void QScreen_OrientationChanged(void* c_this, int64 orientation);
	[LinkName("QScreen_RefreshRateChanged")]
	public static extern void QScreen_RefreshRateChanged(void* c_this, double refreshRate);
	[LinkName("QScreen_Tr2")]
	public static extern char8[] QScreen_Tr2(char8[] s, char8[] c);
	[LinkName("QScreen_Tr3")]
	public static extern char8[] QScreen_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QScreen_GrabWindow1")]
	public static extern QPixmap QScreen_GrabWindow1(void* c_this, c_uintptr window);
	[LinkName("QScreen_GrabWindow2")]
	public static extern QPixmap QScreen_GrabWindow2(void* c_this, c_uintptr window, int32 x);
	[LinkName("QScreen_GrabWindow3")]
	public static extern QPixmap QScreen_GrabWindow3(void* c_this, c_uintptr window, int32 x, int32 y);
	[LinkName("QScreen_GrabWindow4")]
	public static extern QPixmap QScreen_GrabWindow4(void* c_this, c_uintptr window, int32 x, int32 y, int32 w);
	[LinkName("QScreen_GrabWindow5")]
	public static extern QPixmap QScreen_GrabWindow5(void* c_this, c_uintptr window, int32 x, int32 y, int32 w, int32 h);
}