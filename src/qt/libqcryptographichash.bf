using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QCryptographicHash__Algorithm
{
	Md4 = 0,
	Md5 = 1,
	Sha1 = 2,
	Sha224 = 3,
	Sha256 = 4,
	Sha384 = 5,
	Sha512 = 6,
	Keccak_224 = 7,
	Keccak_256 = 8,
	Keccak_384 = 9,
	Keccak_512 = 10,
	RealSha3_224 = 11,
	RealSha3_256 = 12,
	RealSha3_384 = 13,
	RealSha3_512 = 14,
	Sha3_224 = 11,
	Sha3_256 = 12,
	Sha3_384 = 13,
	Sha3_512 = 14,
	Blake2b_160 = 15,
	Blake2b_256 = 16,
	Blake2b_384 = 17,
	Blake2b_512 = 18,
	Blake2s_128 = 19,
	Blake2s_160 = 20,
	Blake2s_224 = 21,
	Blake2s_256 = 22,
}
public struct QCryptographicHash
{
	[LinkName("QCryptographicHash_new")]
	public static extern QCryptographicHash* QCryptographicHash_new(int64 method);
	[LinkName("QCryptographicHash_Reset")]
	public static extern void QCryptographicHash_Reset(Self* c_this);
	[LinkName("QCryptographicHash_AddData")]
	public static extern void QCryptographicHash_AddData(Self* c_this, char8[] data, int32 length);
	[LinkName("QCryptographicHash_AddDataWithData")]
	public static extern void QCryptographicHash_AddDataWithData(Self* c_this, QByteArrayView data);
	[LinkName("QCryptographicHash_AddDataWithDevice")]
	public static extern bool QCryptographicHash_AddDataWithDevice(Self* c_this, QIODevice* device);
	[LinkName("QCryptographicHash_Result")]
	public static extern libqt_string QCryptographicHash_Result(Self* c_this);
	[LinkName("QCryptographicHash_ResultView")]
	public static extern QByteArrayView QCryptographicHash_ResultView(Self* c_this);
	[LinkName("QCryptographicHash_Hash")]
	public static extern libqt_string QCryptographicHash_Hash(QByteArrayView data, int64 method);
	[LinkName("QCryptographicHash_HashLength")]
	public static extern int32 QCryptographicHash_HashLength(int64 method);
}