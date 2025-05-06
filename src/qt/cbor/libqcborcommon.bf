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
public struct QCborError
{
	[LinkName("QCborError_ToQCborError__Code")]
	public static extern int64 QCborError_ToQCborError__Code(Self* c_this);
	[LinkName("QCborError_ToString")]
	public static extern libqt_string QCborError_ToString(Self* c_this);
}