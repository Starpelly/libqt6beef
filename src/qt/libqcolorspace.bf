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
public interface IQColorSpace
{
	void* NativePtr { get; }
}
public class QColorSpace : IQColorSpace
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QColorSpace_new();
	}
	
	public ~this()
	{
		CQt.QColorSpace_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQColorSpace colorSpace)
	{
		CQt.QColorSpace_OperatorAssign(this.nativePtr, (colorSpace == default) ? default : (void*)colorSpace.NativePtr);
	}
	
	public void Swap(IQColorSpace colorSpace)
	{
		CQt.QColorSpace_Swap(this.nativePtr, (colorSpace == default) ? default : (void*)colorSpace.NativePtr);
	}
	
	public int64 Primaries()
	{
		return CQt.QColorSpace_Primaries(this.nativePtr);
	}
	
	public int64 TransferFunction()
	{
		return CQt.QColorSpace_TransferFunction(this.nativePtr);
	}
	
	public float Gamma()
	{
		return CQt.QColorSpace_Gamma(this.nativePtr);
	}
	
	public libqt_string Description()
	{
		return CQt.QColorSpace_Description(this.nativePtr);
	}
	
	public void SetDescription(String description)
	{
		CQt.QColorSpace_SetDescription(this.nativePtr, libqt_string(description));
	}
	
	public void SetTransferFunction(int64 transferFunction)
	{
		CQt.QColorSpace_SetTransferFunction(this.nativePtr, transferFunction);
	}
	
	public void SetTransferFunctionWithTransferFunctionTable(uint16[] transferFunctionTable)
	{
		CQt.QColorSpace_SetTransferFunctionWithTransferFunctionTable(this.nativePtr, null);
	}
	
	public void SetTransferFunctions(uint16[] redTransferFunctionTable, uint16[] greenTransferFunctionTable, uint16[] blueTransferFunctionTable)
	{
		CQt.QColorSpace_SetTransferFunctions(this.nativePtr, null, null, null);
	}
	
	public void WithTransferFunction(int64 transferFunction)
	{
		CQt.QColorSpace_WithTransferFunction(this.nativePtr, transferFunction);
	}
	
	public void WithTransferFunctionWithTransferFunctionTable(uint16[] transferFunctionTable)
	{
		CQt.QColorSpace_WithTransferFunctionWithTransferFunctionTable(this.nativePtr, null);
	}
	
	public void WithTransferFunctions(uint16[] redTransferFunctionTable, uint16[] greenTransferFunctionTable, uint16[] blueTransferFunctionTable)
	{
		CQt.QColorSpace_WithTransferFunctions(this.nativePtr, null, null, null);
	}
	
	public void SetPrimaries(int64 primariesId)
	{
		CQt.QColorSpace_SetPrimaries(this.nativePtr, primariesId);
	}
	
	public void SetPrimaries2(IQPointF whitePoint, IQPointF redPoint, IQPointF greenPoint, IQPointF bluePoint)
	{
		CQt.QColorSpace_SetPrimaries2(this.nativePtr, (whitePoint == default) ? default : (void*)whitePoint.NativePtr, (redPoint == default) ? default : (void*)redPoint.NativePtr, (greenPoint == default) ? default : (void*)greenPoint.NativePtr, (bluePoint == default) ? default : (void*)bluePoint.NativePtr);
	}
	
	public void Detach()
	{
		CQt.QColorSpace_Detach(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QColorSpace_IsValid(this.nativePtr);
	}
	
	public static void FromIccProfile(String iccProfile)
	{
		CQt.QColorSpace_FromIccProfile(libqt_string(iccProfile));
	}
	
	public libqt_string IccProfile()
	{
		return CQt.QColorSpace_IccProfile(this.nativePtr);
	}
	
	public void TransformationToColorSpace(IQColorSpace colorspace)
	{
		CQt.QColorSpace_TransformationToColorSpace(this.nativePtr, (colorspace == default) ? default : (void*)colorspace.NativePtr);
	}
	
	public void ToQVariant()
	{
		CQt.QColorSpace_ToQVariant(this.nativePtr);
	}
	
	public void SetTransferFunction2(int64 transferFunction, float gamma)
	{
		CQt.QColorSpace_SetTransferFunction2(this.nativePtr, transferFunction, gamma);
	}
	
	public void WithTransferFunction2(int64 transferFunction, float gamma)
	{
		CQt.QColorSpace_WithTransferFunction2(this.nativePtr, transferFunction, gamma);
	}
	
}
extension CQt
{
	[LinkName("QColorSpace_new")]
	public static extern void* QColorSpace_new();
	[LinkName("QColorSpace_new2")]
	public static extern void* QColorSpace_new2(int64 namedColorSpace);
	[LinkName("QColorSpace_new3")]
	public static extern void* QColorSpace_new3(int64 primaries, int64 transferFunction);
	[LinkName("QColorSpace_new4")]
	public static extern void* QColorSpace_new4(int64 primaries, float gamma);
	[LinkName("QColorSpace_new5")]
	public static extern void* QColorSpace_new5(int64 primaries, uint16[] transferFunctionTable);
	[LinkName("QColorSpace_new6")]
	public static extern void* QColorSpace_new6(void* whitePoint, void* redPoint, void* greenPoint, void* bluePoint, int64 transferFunction);
	[LinkName("QColorSpace_new7")]
	public static extern void* QColorSpace_new7(void* whitePoint, void* redPoint, void* greenPoint, void* bluePoint, uint16[] transferFunctionTable);
	[LinkName("QColorSpace_new8")]
	public static extern void* QColorSpace_new8(void* whitePoint, void* redPoint, void* greenPoint, void* bluePoint, uint16[] redTransferFunctionTable, uint16[] greenTransferFunctionTable, uint16[] blueTransferFunctionTable);
	[LinkName("QColorSpace_new9")]
	public static extern void* QColorSpace_new9(void* colorSpace);
	[LinkName("QColorSpace_new10")]
	public static extern void* QColorSpace_new10(int64 primaries, int64 transferFunction, float gamma);
	[LinkName("QColorSpace_new11")]
	public static extern void* QColorSpace_new11(void* whitePoint, void* redPoint, void* greenPoint, void* bluePoint, int64 transferFunction, float gamma);
	[LinkName("QColorSpace_OperatorAssign")]
	public static extern void QColorSpace_OperatorAssign(void* c_this, void* colorSpace);
	[LinkName("QColorSpace_Swap")]
	public static extern void QColorSpace_Swap(void* c_this, void* colorSpace);
	[LinkName("QColorSpace_Primaries")]
	public static extern int64 QColorSpace_Primaries(void* c_this);
	[LinkName("QColorSpace_TransferFunction")]
	public static extern int64 QColorSpace_TransferFunction(void* c_this);
	[LinkName("QColorSpace_Gamma")]
	public static extern float QColorSpace_Gamma(void* c_this);
	[LinkName("QColorSpace_Description")]
	public static extern libqt_string QColorSpace_Description(void* c_this);
	[LinkName("QColorSpace_SetDescription")]
	public static extern void QColorSpace_SetDescription(void* c_this, libqt_string description);
	[LinkName("QColorSpace_SetTransferFunction")]
	public static extern void QColorSpace_SetTransferFunction(void* c_this, int64 transferFunction);
	[LinkName("QColorSpace_SetTransferFunctionWithTransferFunctionTable")]
	public static extern void QColorSpace_SetTransferFunctionWithTransferFunctionTable(void* c_this, uint16[] transferFunctionTable);
	[LinkName("QColorSpace_SetTransferFunctions")]
	public static extern void QColorSpace_SetTransferFunctions(void* c_this, uint16[] redTransferFunctionTable, uint16[] greenTransferFunctionTable, uint16[] blueTransferFunctionTable);
	[LinkName("QColorSpace_WithTransferFunction")]
	public static extern void QColorSpace_WithTransferFunction(void* c_this, int64 transferFunction);
	[LinkName("QColorSpace_WithTransferFunctionWithTransferFunctionTable")]
	public static extern void QColorSpace_WithTransferFunctionWithTransferFunctionTable(void* c_this, uint16[] transferFunctionTable);
	[LinkName("QColorSpace_WithTransferFunctions")]
	public static extern void QColorSpace_WithTransferFunctions(void* c_this, uint16[] redTransferFunctionTable, uint16[] greenTransferFunctionTable, uint16[] blueTransferFunctionTable);
	[LinkName("QColorSpace_SetPrimaries")]
	public static extern void QColorSpace_SetPrimaries(void* c_this, int64 primariesId);
	[LinkName("QColorSpace_SetPrimaries2")]
	public static extern void QColorSpace_SetPrimaries2(void* c_this, void* whitePoint, void* redPoint, void* greenPoint, void* bluePoint);
	[LinkName("QColorSpace_Detach")]
	public static extern void QColorSpace_Detach(void* c_this);
	[LinkName("QColorSpace_IsValid")]
	public static extern bool QColorSpace_IsValid(void* c_this);
	[LinkName("QColorSpace_FromIccProfile")]
	public static extern void QColorSpace_FromIccProfile(libqt_string iccProfile);
	[LinkName("QColorSpace_IccProfile")]
	public static extern libqt_string QColorSpace_IccProfile(void* c_this);
	[LinkName("QColorSpace_TransformationToColorSpace")]
	public static extern void QColorSpace_TransformationToColorSpace(void* c_this, void* colorspace);
	[LinkName("QColorSpace_ToQVariant")]
	public static extern void QColorSpace_ToQVariant(void* c_this);
	[LinkName("QColorSpace_SetTransferFunction2")]
	public static extern void QColorSpace_SetTransferFunction2(void* c_this, int64 transferFunction, float gamma);
	[LinkName("QColorSpace_WithTransferFunction2")]
	public static extern void QColorSpace_WithTransferFunction2(void* c_this, int64 transferFunction, float gamma);
	/// Delete this object from C++ memory
	[LinkName("QColorSpace_Delete")]
	public static extern void QColorSpace_Delete(void* self);
}