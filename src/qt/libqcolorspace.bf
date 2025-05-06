using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QColorSpace__NamedColorSpace
{
	SRgb = 1,
	SRgbLinear = 2,
	AdobeRgb = 3,
	DisplayP3 = 4,
	ProPhotoRgb = 5,
}
[AllowDuplicates]
public enum QColorSpace__Primaries
{
	Custom = 0,
	SRgb = 1,
	AdobeRgb = 2,
	DciP3D65 = 3,
	ProPhotoRgb = 4,
}
[AllowDuplicates]
public enum QColorSpace__TransferFunction
{
	Custom = 0,
	Linear = 1,
	Gamma = 2,
	SRgb = 3,
	ProPhotoRgb = 4,
}
public struct QColorSpace
{
	[LinkName("QColorSpace_new")]
	public static extern QColorSpace* QColorSpace_new();
	[LinkName("QColorSpace_new2")]
	public static extern QColorSpace* QColorSpace_new2(int64 namedColorSpace);
	[LinkName("QColorSpace_new3")]
	public static extern QColorSpace* QColorSpace_new3(int64 primaries, int64 transferFunction);
	[LinkName("QColorSpace_new4")]
	public static extern QColorSpace* QColorSpace_new4(int64 primaries, float gamma);
	[LinkName("QColorSpace_new5")]
	public static extern QColorSpace* QColorSpace_new5(int64 primaries, uint16[] transferFunctionTable);
	[LinkName("QColorSpace_new6")]
	public static extern QColorSpace* QColorSpace_new6(QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint, int64 transferFunction);
	[LinkName("QColorSpace_new7")]
	public static extern QColorSpace* QColorSpace_new7(QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint, uint16[] transferFunctionTable);
	[LinkName("QColorSpace_new8")]
	public static extern QColorSpace* QColorSpace_new8(QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint, uint16[] redTransferFunctionTable, uint16[] greenTransferFunctionTable, uint16[] blueTransferFunctionTable);
	[LinkName("QColorSpace_new9")]
	public static extern QColorSpace* QColorSpace_new9(QColorSpace* colorSpace);
	[LinkName("QColorSpace_new10")]
	public static extern QColorSpace* QColorSpace_new10(int64 primaries, int64 transferFunction, float gamma);
	[LinkName("QColorSpace_new11")]
	public static extern QColorSpace* QColorSpace_new11(QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint, int64 transferFunction, float gamma);
	[LinkName("QColorSpace_OperatorAssign")]
	public static extern void QColorSpace_OperatorAssign(Self* c_this, QColorSpace* colorSpace);
	[LinkName("QColorSpace_Swap")]
	public static extern void QColorSpace_Swap(Self* c_this, QColorSpace* colorSpace);
	[LinkName("QColorSpace_Primaries")]
	public static extern int64 QColorSpace_Primaries(Self* c_this);
	[LinkName("QColorSpace_TransferFunction")]
	public static extern int64 QColorSpace_TransferFunction(Self* c_this);
	[LinkName("QColorSpace_Gamma")]
	public static extern float QColorSpace_Gamma(Self* c_this);
	[LinkName("QColorSpace_Description")]
	public static extern libqt_string QColorSpace_Description(Self* c_this);
	[LinkName("QColorSpace_SetDescription")]
	public static extern void QColorSpace_SetDescription(Self* c_this, libqt_string description);
	[LinkName("QColorSpace_SetTransferFunction")]
	public static extern void QColorSpace_SetTransferFunction(Self* c_this, int64 transferFunction);
	[LinkName("QColorSpace_SetTransferFunctionWithTransferFunctionTable")]
	public static extern void QColorSpace_SetTransferFunctionWithTransferFunctionTable(Self* c_this, uint16[] transferFunctionTable);
	[LinkName("QColorSpace_SetTransferFunctions")]
	public static extern void QColorSpace_SetTransferFunctions(Self* c_this, uint16[] redTransferFunctionTable, uint16[] greenTransferFunctionTable, uint16[] blueTransferFunctionTable);
	[LinkName("QColorSpace_WithTransferFunction")]
	public static extern QColorSpace QColorSpace_WithTransferFunction(Self* c_this, int64 transferFunction);
	[LinkName("QColorSpace_WithTransferFunctionWithTransferFunctionTable")]
	public static extern QColorSpace QColorSpace_WithTransferFunctionWithTransferFunctionTable(Self* c_this, uint16[] transferFunctionTable);
	[LinkName("QColorSpace_WithTransferFunctions")]
	public static extern QColorSpace QColorSpace_WithTransferFunctions(Self* c_this, uint16[] redTransferFunctionTable, uint16[] greenTransferFunctionTable, uint16[] blueTransferFunctionTable);
	[LinkName("QColorSpace_SetPrimaries")]
	public static extern void QColorSpace_SetPrimaries(Self* c_this, int64 primariesId);
	[LinkName("QColorSpace_SetPrimaries2")]
	public static extern void QColorSpace_SetPrimaries2(Self* c_this, QPointF* whitePoint, QPointF* redPoint, QPointF* greenPoint, QPointF* bluePoint);
	[LinkName("QColorSpace_Detach")]
	public static extern void QColorSpace_Detach(Self* c_this);
	[LinkName("QColorSpace_IsValid")]
	public static extern bool QColorSpace_IsValid(Self* c_this);
	[LinkName("QColorSpace_FromIccProfile")]
	public static extern QColorSpace QColorSpace_FromIccProfile(libqt_string iccProfile);
	[LinkName("QColorSpace_IccProfile")]
	public static extern libqt_string QColorSpace_IccProfile(Self* c_this);
	[LinkName("QColorSpace_TransformationToColorSpace")]
	public static extern QColorTransform QColorSpace_TransformationToColorSpace(Self* c_this, QColorSpace* colorspace);
	[LinkName("QColorSpace_ToQVariant")]
	public static extern QVariant QColorSpace_ToQVariant(Self* c_this);
	[LinkName("QColorSpace_SetTransferFunction2")]
	public static extern void QColorSpace_SetTransferFunction2(Self* c_this, int64 transferFunction, float gamma);
	[LinkName("QColorSpace_WithTransferFunction2")]
	public static extern QColorSpace QColorSpace_WithTransferFunction2(Self* c_this, int64 transferFunction, float gamma);
}