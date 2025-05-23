using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDebug__VerbosityLevel
{
	MinimumVerbosity = 0,
	DefaultVerbosity = 2,
	MaximumVerbosity = 7,
}
public interface IQDebug
{
	void* NativePtr { get; }
}
public struct QDebugPtr : IQDebug, IDisposable, IQIODeviceBase
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQIODevice device)
	{
		return .(CQt.QDebug_new((device == default || device.NativePtr == default) ? default : device.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QDebug_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQDebug other)
	{
		CQt.QDebug_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQDebug other)
	{
		CQt.QDebug_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void* ResetFormat()
	{
		return CQt.QDebug_ResetFormat(this.nativePtr);
	}
	
	public void* Space()
	{
		return CQt.QDebug_Space(this.nativePtr);
	}
	
	public void* Nospace()
	{
		return CQt.QDebug_Nospace(this.nativePtr);
	}
	
	public void* MaybeSpace()
	{
		return CQt.QDebug_MaybeSpace(this.nativePtr);
	}
	
	public void* Verbosity(int32 verbosityLevel)
	{
		return CQt.QDebug_Verbosity(this.nativePtr, verbosityLevel);
	}
	
	public int32 Verbosity2()
	{
		return CQt.QDebug_Verbosity2(this.nativePtr);
	}
	
	public void SetVerbosity(int32 verbosityLevel)
	{
		CQt.QDebug_SetVerbosity(this.nativePtr, verbosityLevel);
	}
	
	public bool AutoInsertSpaces()
	{
		return CQt.QDebug_AutoInsertSpaces(this.nativePtr);
	}
	
	public void SetAutoInsertSpaces(bool b)
	{
		CQt.QDebug_SetAutoInsertSpaces(this.nativePtr, b);
	}
	
	public void* Quote()
	{
		return CQt.QDebug_Quote(this.nativePtr);
	}
	
	public void* Noquote()
	{
		return CQt.QDebug_Noquote(this.nativePtr);
	}
	
	public void* MaybeQuote()
	{
		return CQt.QDebug_MaybeQuote(this.nativePtr);
	}
	
	public void* OperatorShiftLeft(IQChar t)
	{
		return CQt.QDebug_OperatorShiftLeft(this.nativePtr, default);
	}
	
	public void* OperatorShiftLeftWithBool(bool t)
	{
		return CQt.QDebug_OperatorShiftLeftWithBool(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeftWithChar(int8 t)
	{
		return CQt.QDebug_OperatorShiftLeftWithChar(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeftWithShort(int16 t)
	{
		return CQt.QDebug_OperatorShiftLeftWithShort(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeftWithUnsignedshort(uint16 t)
	{
		return CQt.QDebug_OperatorShiftLeftWithUnsignedshort(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeftWithInt(int32 t)
	{
		return CQt.QDebug_OperatorShiftLeftWithInt(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeftWithUnsignedint(uint32 t)
	{
		return CQt.QDebug_OperatorShiftLeftWithUnsignedint(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeftWithLong(c_long t)
	{
		return CQt.QDebug_OperatorShiftLeftWithLong(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeftWithUnsignedlong(c_ulong t)
	{
		return CQt.QDebug_OperatorShiftLeftWithUnsignedlong(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeftWithQint64(int64 t)
	{
		return CQt.QDebug_OperatorShiftLeftWithQint64(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeftWithQuint64(uint64 t)
	{
		return CQt.QDebug_OperatorShiftLeftWithQuint64(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeftWithFloat(float t)
	{
		return CQt.QDebug_OperatorShiftLeftWithFloat(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeftWithDouble(double t)
	{
		return CQt.QDebug_OperatorShiftLeftWithDouble(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeft2(char8* t)
	{
		return CQt.QDebug_OperatorShiftLeft2(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeftWithQString(String t)
	{
		return CQt.QDebug_OperatorShiftLeftWithQString(this.nativePtr, libqt_string(t));
	}
	
	public void* OperatorShiftLeftWithQByteArray(String t)
	{
		return CQt.QDebug_OperatorShiftLeftWithQByteArray(this.nativePtr, libqt_string(t));
	}
	
	public void* OperatorShiftLeftWithQByteArrayView(char8* t)
	{
		return CQt.QDebug_OperatorShiftLeftWithQByteArrayView(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeftWithVoid(void* t)
	{
		return CQt.QDebug_OperatorShiftLeftWithVoid(this.nativePtr, t);
	}
	
	public void* MaybeQuote1(int8 c)
	{
		return CQt.QDebug_MaybeQuote1(this.nativePtr, c);
	}
	
}
public class QDebug
{
	public QDebugPtr handle;
	
	public static implicit operator QDebugPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQIODevice device)
	{
		this.handle = QDebugPtr.New(device);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQDebug other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(IQDebug other)
	{
		this.handle.Swap(other);
	}
	
	public void* ResetFormat()
	{
		return this.handle.ResetFormat();
	}
	
	public void* Space()
	{
		return this.handle.Space();
	}
	
	public void* Nospace()
	{
		return this.handle.Nospace();
	}
	
	public void* MaybeSpace()
	{
		return this.handle.MaybeSpace();
	}
	
	public void* Verbosity(int32 verbosityLevel)
	{
		return this.handle.Verbosity(verbosityLevel);
	}
	
	public int32 Verbosity2()
	{
		return this.handle.Verbosity2();
	}
	
	public void SetVerbosity(int32 verbosityLevel)
	{
		this.handle.SetVerbosity(verbosityLevel);
	}
	
	public bool AutoInsertSpaces()
	{
		return this.handle.AutoInsertSpaces();
	}
	
	public void SetAutoInsertSpaces(bool b)
	{
		this.handle.SetAutoInsertSpaces(b);
	}
	
	public void* Quote()
	{
		return this.handle.Quote();
	}
	
	public void* Noquote()
	{
		return this.handle.Noquote();
	}
	
	public void* MaybeQuote()
	{
		return this.handle.MaybeQuote();
	}
	
	public void* OperatorShiftLeft(IQChar t)
	{
		return this.handle.OperatorShiftLeft(default);
	}
	
	public void* OperatorShiftLeftWithBool(bool t)
	{
		return this.handle.OperatorShiftLeftWithBool(t);
	}
	
	public void* OperatorShiftLeftWithChar(int8 t)
	{
		return this.handle.OperatorShiftLeftWithChar(t);
	}
	
	public void* OperatorShiftLeftWithShort(int16 t)
	{
		return this.handle.OperatorShiftLeftWithShort(t);
	}
	
	public void* OperatorShiftLeftWithUnsignedshort(uint16 t)
	{
		return this.handle.OperatorShiftLeftWithUnsignedshort(t);
	}
	
	public void* OperatorShiftLeftWithInt(int32 t)
	{
		return this.handle.OperatorShiftLeftWithInt(t);
	}
	
	public void* OperatorShiftLeftWithUnsignedint(uint32 t)
	{
		return this.handle.OperatorShiftLeftWithUnsignedint(t);
	}
	
	public void* OperatorShiftLeftWithLong(c_long t)
	{
		return this.handle.OperatorShiftLeftWithLong(t);
	}
	
	public void* OperatorShiftLeftWithUnsignedlong(c_ulong t)
	{
		return this.handle.OperatorShiftLeftWithUnsignedlong(t);
	}
	
	public void* OperatorShiftLeftWithQint64(int64 t)
	{
		return this.handle.OperatorShiftLeftWithQint64(t);
	}
	
	public void* OperatorShiftLeftWithQuint64(uint64 t)
	{
		return this.handle.OperatorShiftLeftWithQuint64(t);
	}
	
	public void* OperatorShiftLeftWithFloat(float t)
	{
		return this.handle.OperatorShiftLeftWithFloat(t);
	}
	
	public void* OperatorShiftLeftWithDouble(double t)
	{
		return this.handle.OperatorShiftLeftWithDouble(t);
	}
	
	public void* OperatorShiftLeft2(char8* t)
	{
		return this.handle.OperatorShiftLeft2(t);
	}
	
	public void* OperatorShiftLeftWithQString(String t)
	{
		return this.handle.OperatorShiftLeftWithQString(t);
	}
	
	public void* OperatorShiftLeftWithQByteArray(String t)
	{
		return this.handle.OperatorShiftLeftWithQByteArray(t);
	}
	
	public void* OperatorShiftLeftWithQByteArrayView(char8* t)
	{
		return this.handle.OperatorShiftLeftWithQByteArrayView(t);
	}
	
	public void* OperatorShiftLeftWithVoid(void* t)
	{
		return this.handle.OperatorShiftLeftWithVoid(t);
	}
	
	public void* MaybeQuote1(int8 c)
	{
		return this.handle.MaybeQuote1(c);
	}
	
}
extension CQt
{
	[LinkName("QDebug_new")]
	public static extern void* QDebug_new(void* device);
	[LinkName("QDebug_new2")]
	public static extern void* QDebug_new2(void* o);
	[LinkName("QDebug_OperatorAssign")]
	public static extern void QDebug_OperatorAssign(void* c_this, void* other);
	[LinkName("QDebug_Swap")]
	public static extern void QDebug_Swap(void* c_this, void* other);
	[LinkName("QDebug_ResetFormat")]
	public static extern void* QDebug_ResetFormat(void* c_this);
	[LinkName("QDebug_Space")]
	public static extern void* QDebug_Space(void* c_this);
	[LinkName("QDebug_Nospace")]
	public static extern void* QDebug_Nospace(void* c_this);
	[LinkName("QDebug_MaybeSpace")]
	public static extern void* QDebug_MaybeSpace(void* c_this);
	[LinkName("QDebug_Verbosity")]
	public static extern void* QDebug_Verbosity(void* c_this, int32 verbosityLevel);
	[LinkName("QDebug_Verbosity2")]
	public static extern int32 QDebug_Verbosity2(void* c_this);
	[LinkName("QDebug_SetVerbosity")]
	public static extern void QDebug_SetVerbosity(void* c_this, int32 verbosityLevel);
	[LinkName("QDebug_AutoInsertSpaces")]
	public static extern bool QDebug_AutoInsertSpaces(void* c_this);
	[LinkName("QDebug_SetAutoInsertSpaces")]
	public static extern void QDebug_SetAutoInsertSpaces(void* c_this, bool b);
	[LinkName("QDebug_Quote")]
	public static extern void* QDebug_Quote(void* c_this);
	[LinkName("QDebug_Noquote")]
	public static extern void* QDebug_Noquote(void* c_this);
	[LinkName("QDebug_MaybeQuote")]
	public static extern void* QDebug_MaybeQuote(void* c_this);
	[LinkName("QDebug_OperatorShiftLeft")]
	public static extern void* QDebug_OperatorShiftLeft(void* c_this, void t);
	[LinkName("QDebug_OperatorShiftLeftWithBool")]
	public static extern void* QDebug_OperatorShiftLeftWithBool(void* c_this, bool t);
	[LinkName("QDebug_OperatorShiftLeftWithChar")]
	public static extern void* QDebug_OperatorShiftLeftWithChar(void* c_this, int8 t);
	[LinkName("QDebug_OperatorShiftLeftWithShort")]
	public static extern void* QDebug_OperatorShiftLeftWithShort(void* c_this, int16 t);
	[LinkName("QDebug_OperatorShiftLeftWithUnsignedshort")]
	public static extern void* QDebug_OperatorShiftLeftWithUnsignedshort(void* c_this, uint16 t);
	[LinkName("QDebug_OperatorShiftLeftWithInt")]
	public static extern void* QDebug_OperatorShiftLeftWithInt(void* c_this, int32 t);
	[LinkName("QDebug_OperatorShiftLeftWithUnsignedint")]
	public static extern void* QDebug_OperatorShiftLeftWithUnsignedint(void* c_this, uint32 t);
	[LinkName("QDebug_OperatorShiftLeftWithLong")]
	public static extern void* QDebug_OperatorShiftLeftWithLong(void* c_this, c_long t);
	[LinkName("QDebug_OperatorShiftLeftWithUnsignedlong")]
	public static extern void* QDebug_OperatorShiftLeftWithUnsignedlong(void* c_this, c_ulong t);
	[LinkName("QDebug_OperatorShiftLeftWithQint64")]
	public static extern void* QDebug_OperatorShiftLeftWithQint64(void* c_this, int64 t);
	[LinkName("QDebug_OperatorShiftLeftWithQuint64")]
	public static extern void* QDebug_OperatorShiftLeftWithQuint64(void* c_this, uint64 t);
	[LinkName("QDebug_OperatorShiftLeftWithFloat")]
	public static extern void* QDebug_OperatorShiftLeftWithFloat(void* c_this, float t);
	[LinkName("QDebug_OperatorShiftLeftWithDouble")]
	public static extern void* QDebug_OperatorShiftLeftWithDouble(void* c_this, double t);
	[LinkName("QDebug_OperatorShiftLeft2")]
	public static extern void* QDebug_OperatorShiftLeft2(void* c_this, char8* t);
	[LinkName("QDebug_OperatorShiftLeftWithQString")]
	public static extern void* QDebug_OperatorShiftLeftWithQString(void* c_this, libqt_string t);
	[LinkName("QDebug_OperatorShiftLeftWithQByteArray")]
	public static extern void* QDebug_OperatorShiftLeftWithQByteArray(void* c_this, libqt_string t);
	[LinkName("QDebug_OperatorShiftLeftWithQByteArrayView")]
	public static extern void* QDebug_OperatorShiftLeftWithQByteArrayView(void* c_this, char8* t);
	[LinkName("QDebug_OperatorShiftLeftWithVoid")]
	public static extern void* QDebug_OperatorShiftLeftWithVoid(void* c_this, void* t);
	[LinkName("QDebug_MaybeQuote1")]
	public static extern void* QDebug_MaybeQuote1(void* c_this, int8 c);
	/// Delete this object from C++ memory
	[LinkName("QDebug_Delete")]
	public static extern void QDebug_Delete(void* self);
}
public interface IQDebugStateSaver
{
	void* NativePtr { get; }
}
public struct QDebugStateSaverPtr : IQDebugStateSaver, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQDebug dbg)
	{
		return .(CQt.QDebugStateSaver_new((dbg == default || dbg.NativePtr == default) ? default : dbg.NativePtr));
	}
	public void Dispose()
	{
		CQt.QDebugStateSaver_Delete(this.nativePtr);
	}
}
public class QDebugStateSaver
{
	public QDebugStateSaverPtr handle;
	
	public static implicit operator QDebugStateSaverPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQDebug dbg)
	{
		this.handle = QDebugStateSaverPtr.New(dbg);
	}
	public ~this()
	{
		this.handle.Dispose();
	}
}
extension CQt
{
	[LinkName("QDebugStateSaver_new")]
	public static extern void* QDebugStateSaver_new(void* dbg);
	/// Delete this object from C++ memory
	[LinkName("QDebugStateSaver_Delete")]
	public static extern void QDebugStateSaver_Delete(void* self);
}
public interface IQNoDebug
{
	void* NativePtr { get; }
}
public struct QNoDebugPtr : IQNoDebug, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQNoDebug other)
	{
		return .(CQt.QNoDebug_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QNoDebug_Delete(this.nativePtr);
	}
	
	public void* Space()
	{
		return CQt.QNoDebug_Space(this.nativePtr);
	}
	
	public void* Nospace()
	{
		return CQt.QNoDebug_Nospace(this.nativePtr);
	}
	
	public void* MaybeSpace()
	{
		return CQt.QNoDebug_MaybeSpace(this.nativePtr);
	}
	
	public void* Quote()
	{
		return CQt.QNoDebug_Quote(this.nativePtr);
	}
	
	public void* Noquote()
	{
		return CQt.QNoDebug_Noquote(this.nativePtr);
	}
	
	public void* MaybeQuote()
	{
		return CQt.QNoDebug_MaybeQuote(this.nativePtr);
	}
	
	public void* Verbosity(int32 param1)
	{
		return CQt.QNoDebug_Verbosity(this.nativePtr, param1);
	}
	
	public void* MaybeQuote1(int8 param1)
	{
		return CQt.QNoDebug_MaybeQuote1(this.nativePtr, param1);
	}
	
}
public class QNoDebug
{
	public QNoDebugPtr handle;
	
	public static implicit operator QNoDebugPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQNoDebug other)
	{
		this.handle = QNoDebugPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void* Space()
	{
		return this.handle.Space();
	}
	
	public void* Nospace()
	{
		return this.handle.Nospace();
	}
	
	public void* MaybeSpace()
	{
		return this.handle.MaybeSpace();
	}
	
	public void* Quote()
	{
		return this.handle.Quote();
	}
	
	public void* Noquote()
	{
		return this.handle.Noquote();
	}
	
	public void* MaybeQuote()
	{
		return this.handle.MaybeQuote();
	}
	
	public void* Verbosity(int32 param1)
	{
		return this.handle.Verbosity(param1);
	}
	
	public void* MaybeQuote1(int8 param1)
	{
		return this.handle.MaybeQuote1(param1);
	}
	
}
extension CQt
{
	[LinkName("QNoDebug_new")]
	public static extern void* QNoDebug_new(void* other);
	[LinkName("QNoDebug_new2")]
	public static extern void* QNoDebug_new2(void* other);
	[LinkName("QNoDebug_Space")]
	public static extern void* QNoDebug_Space(void* c_this);
	[LinkName("QNoDebug_Nospace")]
	public static extern void* QNoDebug_Nospace(void* c_this);
	[LinkName("QNoDebug_MaybeSpace")]
	public static extern void* QNoDebug_MaybeSpace(void* c_this);
	[LinkName("QNoDebug_Quote")]
	public static extern void* QNoDebug_Quote(void* c_this);
	[LinkName("QNoDebug_Noquote")]
	public static extern void* QNoDebug_Noquote(void* c_this);
	[LinkName("QNoDebug_MaybeQuote")]
	public static extern void* QNoDebug_MaybeQuote(void* c_this);
	[LinkName("QNoDebug_Verbosity")]
	public static extern void* QNoDebug_Verbosity(void* c_this, int32 param1);
	[LinkName("QNoDebug_MaybeQuote1")]
	public static extern void* QNoDebug_MaybeQuote1(void* c_this, int8 param1);
	/// Delete this object from C++ memory
	[LinkName("QNoDebug_Delete")]
	public static extern void QNoDebug_Delete(void* self);
}