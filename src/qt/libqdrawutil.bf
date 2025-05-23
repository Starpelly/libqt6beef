using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDrawBorderPixmap__DrawingHint
{
	OpaqueTopLeft = 1,
	OpaqueTop = 2,
	OpaqueTopRight = 4,
	OpaqueLeft = 8,
	OpaqueCenter = 16,
	OpaqueRight = 32,
	OpaqueBottomLeft = 64,
	OpaqueBottom = 128,
	OpaqueBottomRight = 256,
	OpaqueCorners = 325,
	OpaqueEdges = 170,
	OpaqueFrame = 495,
	OpaqueAll = 511,
}
public interface IQTileRules
{
	void* NativePtr { get; }
}
public struct QTileRulesPtr : IQTileRules, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQTileRules other)
	{
		return .(CQt.QTileRules_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	public void Dispose()
	{
		CQt.QTileRules_Delete(this.nativePtr);
	}
}
public class QTileRules
{
	public QTileRulesPtr handle;
	
	public static implicit operator QTileRulesPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQTileRules other)
	{
		this.handle = QTileRulesPtr.New(other);
	}
	public ~this()
	{
		this.handle.Dispose();
	}
}
extension CQt
{
	[LinkName("QTileRules_new")]
	public static extern void* QTileRules_new(void* other);
	[LinkName("QTileRules_new2")]
	public static extern void* QTileRules_new2(void* other);
	[LinkName("QTileRules_new3")]
	public static extern void* QTileRules_new3(int64 horizontalRule, int64 verticalRule);
	[LinkName("QTileRules_new4")]
	public static extern void* QTileRules_new4();
	[LinkName("QTileRules_new5")]
	public static extern void* QTileRules_new5(void* param1);
	[LinkName("QTileRules_new6")]
	public static extern void* QTileRules_new6(int64 rule);
	/// Delete this object from C++ memory
	[LinkName("QTileRules_Delete")]
	public static extern void QTileRules_Delete(void* self);
}