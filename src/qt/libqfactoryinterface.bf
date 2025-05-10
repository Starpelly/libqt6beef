using System;
using System.Interop;
namespace Qt;

public class QFactoryInterface
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QFactoryInterface_Delete(this.nativePtr);
	}
	
	public virtual libqt_string[] Keys()
	{
		return CQt.QFactoryInterface_Keys(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QFactoryInterface_Keys")]
	public static extern libqt_string[] QFactoryInterface_Keys(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QFactoryInterface_Delete")]
	public static extern void QFactoryInterface_Delete(void* self);
}