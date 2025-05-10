using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QCborSimpleType
{
	False = 20,
	True = 21,
	Null = 22,
	Undefined = 23,
}
[AllowDuplicates]
public enum QCborKnownTags
{
	DateTimeString = 0,
	UnixTime_t = 1,
	PositiveBignum = 2,
	NegativeBignum = 3,
	Decimal = 4,
	Bigfloat = 5,
	COSE_Encrypt0 = 16,
	COSE_Mac0 = 17,
	COSE_Sign1 = 18,
	ExpectedBase64url = 21,
	ExpectedBase64 = 22,
	ExpectedBase16 = 23,
	EncodedCbor = 24,
	Url = 32,
	Base64url = 33,
	Base64 = 34,
	RegularExpression = 35,
	MimeMessage = 36,
	Uuid = 37,
	COSE_Encrypt = 96,
	COSE_Mac = 97,
	COSE_Sign = 98,
	Signature = 55799,
}
[AllowDuplicates]
public enum QCborError__Code
{
	UnknownError = 1,
	AdvancePastEnd = 3,
	InputOutputError = 4,
	GarbageAtEnd = 256,
	EndOfFile = 257,
	UnexpectedBreak = 258,
	UnknownType = 259,
	IllegalType = 260,
	IllegalNumber = 261,
	IllegalSimpleType = 262,
	InvalidUtf8String = 516,
	DataTooLarge = 1024,
	NestingTooDeep = 1025,
	UnsupportedType = 1026,
	NoError = 0,
}
public interface IQCborError
{
	void* NativePtr { get; }
}
public class QCborError : IQCborError
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public ~this()
	{
		CQt.QCborError_Delete(this.nativePtr);
	}
	
	public int64 ToQCborError__Code()
	{
		return CQt.QCborError_ToQCborError__Code(this.nativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QCborError_ToString(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QCborError_ToQCborError__Code")]
	public static extern int64 QCborError_ToQCborError__Code(void* c_this);
	[LinkName("QCborError_ToString")]
	public static extern libqt_string QCborError_ToString(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QCborError_Delete")]
	public static extern void QCborError_Delete(void* self);
}