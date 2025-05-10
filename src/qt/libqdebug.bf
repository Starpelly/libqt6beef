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
public class QDebug
{
	protected void* nativePtr;
	
	public this(void* device)
	{
		this.nativePtr = CQt.QDebug_new(device);
	}
	
	public ~this()
	{
		CQt.QDebug_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QDebug_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QDebug_Swap(this.nativePtr, other);
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
	
	public void* OperatorShiftLeft(void t)
	{
		return CQt.QDebug_OperatorShiftLeft(this.nativePtr, t);
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
	
	public void* OperatorShiftLeft2(char8[] t)
	{
		return CQt.QDebug_OperatorShiftLeft2(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeftWithQString(libqt_string t)
	{
		return CQt.QDebug_OperatorShiftLeftWithQString(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeftWithQByteArray(libqt_string t)
	{
		return CQt.QDebug_OperatorShiftLeftWithQByteArray(this.nativePtr, t);
	}
	
	public void* OperatorShiftLeftWithQByteArrayView(void t)
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
	public static extern void* QDebug_OperatorShiftLeft2(void* c_this, char8[] t);
	[LinkName("QDebug_OperatorShiftLeftWithQString")]
	public static extern void* QDebug_OperatorShiftLeftWithQString(void* c_this, libqt_string t);
	[LinkName("QDebug_OperatorShiftLeftWithQByteArray")]
	public static extern void* QDebug_OperatorShiftLeftWithQByteArray(void* c_this, libqt_string t);
	[LinkName("QDebug_OperatorShiftLeftWithQByteArrayView")]
	public static extern void* QDebug_OperatorShiftLeftWithQByteArrayView(void* c_this, void t);
	[LinkName("QDebug_OperatorShiftLeftWithVoid")]
	public static extern void* QDebug_OperatorShiftLeftWithVoid(void* c_this, void* t);
	[LinkName("QDebug_MaybeQuote1")]
	public static extern void* QDebug_MaybeQuote1(void* c_this, int8 c);
	/// Delete this object from C++ memory
	[LinkName("QDebug_Delete")]
	public static extern void QDebug_Delete(void* self);
}
public class QDebugStateSaver
{
	protected void* nativePtr;
	
	public this(void* dbg)
	{
		this.nativePtr = CQt.QDebugStateSaver_new(dbg);
	}
	public ~this()
	{
		CQt.QDebugStateSaver_Delete(this.nativePtr);
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
public class QNoDebug
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QNoDebug_new(other);
	}
	
	public ~this()
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