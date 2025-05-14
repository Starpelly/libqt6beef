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
public interface IQCryptographicHash
{
	void* NativePtr { get; }
}
public struct QCryptographicHashPtr : IQCryptographicHash, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 method)
	{
		return .(CQt.QCryptographicHash_new((int64)method));
	}
	
	public void Dispose()
	{
		CQt.QCryptographicHash_Delete(this.nativePtr);
	}
	
	public void Reset()
	{
		CQt.QCryptographicHash_Reset(this.nativePtr);
	}
	
	public void AddData(char8* data, int32 length)
	{
		CQt.QCryptographicHash_AddData(this.nativePtr, data, length);
	}
	
	public void AddDataWithData(char8* data)
	{
		CQt.QCryptographicHash_AddDataWithData(this.nativePtr, data);
	}
	
	public bool AddDataWithDevice(IQIODevice device)
	{
		return CQt.QCryptographicHash_AddDataWithDevice(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr);
	}
	
	public libqt_string Result()
	{
		return CQt.QCryptographicHash_Result(this.nativePtr);
	}
	
	public char8* ResultView()
	{
		return CQt.QCryptographicHash_ResultView(this.nativePtr);
	}
	
	public static libqt_string Hash(char8* data, int64 method)
	{
		return CQt.QCryptographicHash_Hash(data, (int64)method);
	}
	
	public static int32 HashLength(int64 method)
	{
		return CQt.QCryptographicHash_HashLength((int64)method);
	}
	
}
public class QCryptographicHash
{
	public QCryptographicHashPtr handle;
	
	public static implicit operator QCryptographicHashPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 method)
	{
		this.handle = QCryptographicHashPtr.New(method);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Reset()
	{
		this.handle.Reset();
	}
	
	public void AddData(char8* data, int32 length)
	{
		this.handle.AddData(data, length);
	}
	
	public void AddDataWithData(char8* data)
	{
		this.handle.AddDataWithData(data);
	}
	
	public bool AddDataWithDevice(IQIODevice device)
	{
		return this.handle.AddDataWithDevice(device);
	}
	
	public libqt_string Result()
	{
		return this.handle.Result();
	}
	
	public char8* ResultView()
	{
		return this.handle.ResultView();
	}
	
	public static libqt_string Hash(char8* data, int64 method)
	{
		return QCryptographicHashPtr.Hash(data, method);
	}
	
	public static int32 HashLength(int64 method)
	{
		return QCryptographicHashPtr.HashLength(method);
	}
	
}
extension CQt
{
	[LinkName("QCryptographicHash_new")]
	public static extern void* QCryptographicHash_new(int64 method);
	[LinkName("QCryptographicHash_Reset")]
	public static extern void QCryptographicHash_Reset(void* c_this);
	[LinkName("QCryptographicHash_AddData")]
	public static extern void QCryptographicHash_AddData(void* c_this, char8* data, int32 length);
	[LinkName("QCryptographicHash_AddDataWithData")]
	public static extern void QCryptographicHash_AddDataWithData(void* c_this, char8* data);
	[LinkName("QCryptographicHash_AddDataWithDevice")]
	public static extern bool QCryptographicHash_AddDataWithDevice(void* c_this, void* device);
	[LinkName("QCryptographicHash_Result")]
	public static extern libqt_string QCryptographicHash_Result(void* c_this);
	[LinkName("QCryptographicHash_ResultView")]
	public static extern char8* QCryptographicHash_ResultView(void* c_this);
	[LinkName("QCryptographicHash_Hash")]
	public static extern libqt_string QCryptographicHash_Hash(char8* data, int64 method);
	[LinkName("QCryptographicHash_HashLength")]
	public static extern int32 QCryptographicHash_HashLength(int64 method);
	/// Delete this object from C++ memory
	[LinkName("QCryptographicHash_Delete")]
	public static extern void QCryptographicHash_Delete(void* self);
}