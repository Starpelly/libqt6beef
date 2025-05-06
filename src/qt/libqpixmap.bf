using System;
using System.Interop;
namespace Qt;

public struct QPixmap : QPaintDevice
{
	[LinkName("QPixmap_new")]
	public static extern QPixmap* QPixmap_new();
	[LinkName("QPixmap_new2")]
	public static extern QPixmap* QPixmap_new2(int32 w, int32 h);
	[LinkName("QPixmap_new3")]
	public static extern QPixmap* QPixmap_new3(QSize* param1);
	[LinkName("QPixmap_new4")]
	public static extern QPixmap* QPixmap_new4(libqt_string fileName);
	[LinkName("QPixmap_new5")]
	public static extern QPixmap* QPixmap_new5(QPixmap* param1);
	[LinkName("QPixmap_new6")]
	public static extern QPixmap* QPixmap_new6(libqt_string fileName, char8[] format);
	[LinkName("QPixmap_new7")]
	public static extern QPixmap* QPixmap_new7(libqt_string fileName, char8[] format, int64 flags);
	[LinkName("QPixmap_OperatorAssign")]
	public static extern void QPixmap_OperatorAssign(Self* c_this, QPixmap* param1);
	[LinkName("QPixmap_Swap")]
	public static extern void QPixmap_Swap(Self* c_this, QPixmap* other);
	[LinkName("QPixmap_ToQVariant")]
	public static extern QVariant QPixmap_ToQVariant(Self* c_this);
	[LinkName("QPixmap_IsNull")]
	public static extern bool QPixmap_IsNull(Self* c_this);
	[LinkName("QPixmap_DevType")]
	public static extern int32 QPixmap_DevType(Self* c_this);
	[LinkName("QPixmap_Width")]
	public static extern int32 QPixmap_Width(Self* c_this);
	[LinkName("QPixmap_Height")]
	public static extern int32 QPixmap_Height(Self* c_this);
	[LinkName("QPixmap_Size")]
	public static extern QSize QPixmap_Size(Self* c_this);
	[LinkName("QPixmap_Rect")]
	public static extern QRect QPixmap_Rect(Self* c_this);
	[LinkName("QPixmap_Depth")]
	public static extern int32 QPixmap_Depth(Self* c_this);
	[LinkName("QPixmap_DefaultDepth")]
	public static extern int32 QPixmap_DefaultDepth();
	[LinkName("QPixmap_Fill")]
	public static extern void QPixmap_Fill(Self* c_this);
	[LinkName("QPixmap_Mask")]
	public static extern QBitmap QPixmap_Mask(Self* c_this);
	[LinkName("QPixmap_SetMask")]
	public static extern void QPixmap_SetMask(Self* c_this, QBitmap* mask);
	[LinkName("QPixmap_DevicePixelRatio")]
	public static extern double QPixmap_DevicePixelRatio(Self* c_this);
	[LinkName("QPixmap_SetDevicePixelRatio")]
	public static extern void QPixmap_SetDevicePixelRatio(Self* c_this, double scaleFactor);
	[LinkName("QPixmap_DeviceIndependentSize")]
	public static extern QSizeF QPixmap_DeviceIndependentSize(Self* c_this);
	[LinkName("QPixmap_HasAlpha")]
	public static extern bool QPixmap_HasAlpha(Self* c_this);
	[LinkName("QPixmap_HasAlphaChannel")]
	public static extern bool QPixmap_HasAlphaChannel(Self* c_this);
	[LinkName("QPixmap_CreateHeuristicMask")]
	public static extern QBitmap QPixmap_CreateHeuristicMask(Self* c_this);
	[LinkName("QPixmap_CreateMaskFromColor")]
	public static extern QBitmap QPixmap_CreateMaskFromColor(Self* c_this, QColor* maskColor);
	[LinkName("QPixmap_Scaled")]
	public static extern QPixmap QPixmap_Scaled(Self* c_this, int32 w, int32 h);
	[LinkName("QPixmap_ScaledWithQSize")]
	public static extern QPixmap QPixmap_ScaledWithQSize(Self* c_this, QSize* s);
	[LinkName("QPixmap_ScaledToWidth")]
	public static extern QPixmap QPixmap_ScaledToWidth(Self* c_this, int32 w);
	[LinkName("QPixmap_ScaledToHeight")]
	public static extern QPixmap QPixmap_ScaledToHeight(Self* c_this, int32 h);
	[LinkName("QPixmap_Transformed")]
	public static extern QPixmap QPixmap_Transformed(Self* c_this, QTransform* param1);
	[LinkName("QPixmap_TrueMatrix")]
	public static extern QTransform QPixmap_TrueMatrix(QTransform* m, int32 w, int32 h);
	[LinkName("QPixmap_ToImage")]
	public static extern QImage QPixmap_ToImage(Self* c_this);
	[LinkName("QPixmap_FromImage")]
	public static extern QPixmap QPixmap_FromImage(QImage* image);
	[LinkName("QPixmap_FromImageReader")]
	public static extern QPixmap QPixmap_FromImageReader(QImageReader* imageReader);
	[LinkName("QPixmap_Load")]
	public static extern bool QPixmap_Load(Self* c_this, libqt_string fileName);
	[LinkName("QPixmap_LoadFromData")]
	public static extern bool QPixmap_LoadFromData(Self* c_this, uint8* buf, uint32 lenVal);
	[LinkName("QPixmap_LoadFromDataWithData")]
	public static extern bool QPixmap_LoadFromDataWithData(Self* c_this, libqt_string data);
	[LinkName("QPixmap_Save")]
	public static extern bool QPixmap_Save(Self* c_this, libqt_string fileName);
	[LinkName("QPixmap_SaveWithDevice")]
	public static extern bool QPixmap_SaveWithDevice(Self* c_this, QIODevice* device);
	[LinkName("QPixmap_ConvertFromImage")]
	public static extern bool QPixmap_ConvertFromImage(Self* c_this, QImage* img);
	[LinkName("QPixmap_Copy")]
	public static extern QPixmap QPixmap_Copy(Self* c_this, int32 x, int32 y, int32 width, int32 height);
	[LinkName("QPixmap_Copy2")]
	public static extern QPixmap QPixmap_Copy2(Self* c_this);
	[LinkName("QPixmap_Scroll")]
	public static extern void QPixmap_Scroll(Self* c_this, int32 dx, int32 dy, int32 x, int32 y, int32 width, int32 height);
	[LinkName("QPixmap_Scroll2")]
	public static extern void QPixmap_Scroll2(Self* c_this, int32 dx, int32 dy, QRect* rect);
	[LinkName("QPixmap_CacheKey")]
	public static extern int64 QPixmap_CacheKey(Self* c_this);
	[LinkName("QPixmap_IsDetached")]
	public static extern bool QPixmap_IsDetached(Self* c_this);
	[LinkName("QPixmap_Detach")]
	public static extern void QPixmap_Detach(Self* c_this);
	[LinkName("QPixmap_IsQBitmap")]
	public static extern bool QPixmap_IsQBitmap(Self* c_this);
	[LinkName("QPixmap_PaintEngine")]
	public static extern QPaintEngine* QPixmap_PaintEngine(Self* c_this);
	[LinkName("QPixmap_OperatorNot")]
	public static extern bool QPixmap_OperatorNot(Self* c_this);
	[LinkName("QPixmap_Metric")]
	public static extern int32 QPixmap_Metric(Self* c_this, int64 param1);
	[LinkName("QPixmap_Fill1")]
	public static extern void QPixmap_Fill1(Self* c_this, QColor* fillColor);
	[LinkName("QPixmap_CreateHeuristicMask1")]
	public static extern QBitmap QPixmap_CreateHeuristicMask1(Self* c_this, bool clipTight);
	[LinkName("QPixmap_CreateMaskFromColor2")]
	public static extern QBitmap QPixmap_CreateMaskFromColor2(Self* c_this, QColor* maskColor, int64 mode);
	[LinkName("QPixmap_Scaled3")]
	public static extern QPixmap QPixmap_Scaled3(Self* c_this, int32 w, int32 h, int64 aspectMode);
	[LinkName("QPixmap_Scaled4")]
	public static extern QPixmap QPixmap_Scaled4(Self* c_this, int32 w, int32 h, int64 aspectMode, int64 mode);
	[LinkName("QPixmap_Scaled2")]
	public static extern QPixmap QPixmap_Scaled2(Self* c_this, QSize* s, int64 aspectMode);
	[LinkName("QPixmap_Scaled32")]
	public static extern QPixmap QPixmap_Scaled32(Self* c_this, QSize* s, int64 aspectMode, int64 mode);
	[LinkName("QPixmap_ScaledToWidth2")]
	public static extern QPixmap QPixmap_ScaledToWidth2(Self* c_this, int32 w, int64 mode);
	[LinkName("QPixmap_ScaledToHeight2")]
	public static extern QPixmap QPixmap_ScaledToHeight2(Self* c_this, int32 h, int64 mode);
	[LinkName("QPixmap_Transformed2")]
	public static extern QPixmap QPixmap_Transformed2(Self* c_this, QTransform* param1, int64 mode);
	[LinkName("QPixmap_FromImage2")]
	public static extern QPixmap QPixmap_FromImage2(QImage* image, int64 flags);
	[LinkName("QPixmap_FromImageReader2")]
	public static extern QPixmap QPixmap_FromImageReader2(QImageReader* imageReader, int64 flags);
	[LinkName("QPixmap_Load2")]
	public static extern bool QPixmap_Load2(Self* c_this, libqt_string fileName, char8[] format);
	[LinkName("QPixmap_Load3")]
	public static extern bool QPixmap_Load3(Self* c_this, libqt_string fileName, char8[] format, int64 flags);
	[LinkName("QPixmap_LoadFromData3")]
	public static extern bool QPixmap_LoadFromData3(Self* c_this, uint8* buf, uint32 lenVal, char8[] format);
	[LinkName("QPixmap_LoadFromData4")]
	public static extern bool QPixmap_LoadFromData4(Self* c_this, uint8* buf, uint32 lenVal, char8[] format, int64 flags);
	[LinkName("QPixmap_LoadFromData2")]
	public static extern bool QPixmap_LoadFromData2(Self* c_this, libqt_string data, char8[] format);
	[LinkName("QPixmap_LoadFromData32")]
	public static extern bool QPixmap_LoadFromData32(Self* c_this, libqt_string data, char8[] format, int64 flags);
	[LinkName("QPixmap_Save2")]
	public static extern bool QPixmap_Save2(Self* c_this, libqt_string fileName, char8[] format);
	[LinkName("QPixmap_Save3")]
	public static extern bool QPixmap_Save3(Self* c_this, libqt_string fileName, char8[] format, int32 quality);
	[LinkName("QPixmap_Save22")]
	public static extern bool QPixmap_Save22(Self* c_this, QIODevice* device, char8[] format);
	[LinkName("QPixmap_Save32")]
	public static extern bool QPixmap_Save32(Self* c_this, QIODevice* device, char8[] format, int32 quality);
	[LinkName("QPixmap_ConvertFromImage2")]
	public static extern bool QPixmap_ConvertFromImage2(Self* c_this, QImage* img, int64 flags);
	[LinkName("QPixmap_Copy1")]
	public static extern QPixmap QPixmap_Copy1(Self* c_this, QRect* rect);
	[LinkName("QPixmap_Scroll7")]
	public static extern void QPixmap_Scroll7(Self* c_this, int32 dx, int32 dy, int32 x, int32 y, int32 width, int32 height, QRegion* exposed);
	[LinkName("QPixmap_Scroll4")]
	public static extern void QPixmap_Scroll4(Self* c_this, int32 dx, int32 dy, QRect* rect, QRegion* exposed);
}