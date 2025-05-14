using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QRegion__RegionType
{
	Rectangle = 0,
	Ellipse = 1,
}
public interface IQRegion
{
	void* NativePtr { get; }
}
public struct QRegionPtr : IQRegion, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QRegion_new());
	}
	
	public void Dispose()
	{
		CQt.QRegion_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQRegion param1)
	{
		CQt.QRegion_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Swap(IQRegion other)
	{
		CQt.QRegion_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QRegion_IsEmpty(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QRegion_IsNull(this.nativePtr);
	}
	
	public void* Begin()
	{
		return CQt.QRegion_Begin(this.nativePtr);
	}
	
	public void* Cbegin()
	{
		return CQt.QRegion_Cbegin(this.nativePtr);
	}
	
	public void* End()
	{
		return CQt.QRegion_End(this.nativePtr);
	}
	
	public void* Cend()
	{
		return CQt.QRegion_Cend(this.nativePtr);
	}
	
	public bool Contains(IQPoint p)
	{
		return CQt.QRegion_Contains(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public bool ContainsWithQRect(IQRect r)
	{
		return CQt.QRegion_ContainsWithQRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void Translate(int32 dx, int32 dy)
	{
		CQt.QRegion_Translate(this.nativePtr, dx, dy);
	}
	
	public void TranslateWithQPoint(IQPoint p)
	{
		CQt.QRegion_TranslateWithQPoint(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public void Translated(int32 dx, int32 dy)
	{
		CQt.QRegion_Translated(this.nativePtr, dx, dy);
	}
	
	public void TranslatedWithQPoint(IQPoint p)
	{
		CQt.QRegion_TranslatedWithQPoint(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public void United(IQRegion r)
	{
		CQt.QRegion_United(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void UnitedWithQRect(IQRect r)
	{
		CQt.QRegion_UnitedWithQRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void Intersected(IQRegion r)
	{
		CQt.QRegion_Intersected(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void IntersectedWithQRect(IQRect r)
	{
		CQt.QRegion_IntersectedWithQRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void Subtracted(IQRegion r)
	{
		CQt.QRegion_Subtracted(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void Xored(IQRegion r)
	{
		CQt.QRegion_Xored(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public bool Intersects(IQRegion r)
	{
		return CQt.QRegion_Intersects(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public bool IntersectsWithQRect(IQRect r)
	{
		return CQt.QRegion_IntersectsWithQRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void BoundingRect()
	{
		CQt.QRegion_BoundingRect(this.nativePtr);
	}
	
	public void SetRects(IQRect rect, int32 num)
	{
		CQt.QRegion_SetRects(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, num);
	}
	
	public int32 RectCount()
	{
		return CQt.QRegion_RectCount(this.nativePtr);
	}
	
	public void OperatorBitwiseOr(IQRegion r)
	{
		CQt.QRegion_OperatorBitwiseOr(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void OperatorPlus(IQRegion r)
	{
		CQt.QRegion_OperatorPlus(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void OperatorPlusWithQRect(IQRect r)
	{
		CQt.QRegion_OperatorPlusWithQRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void OperatorBitwiseAnd(IQRegion r)
	{
		CQt.QRegion_OperatorBitwiseAnd(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void OperatorBitwiseAndWithQRect(IQRect r)
	{
		CQt.QRegion_OperatorBitwiseAndWithQRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void OperatorMinus(IQRegion r)
	{
		CQt.QRegion_OperatorMinus(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void OperatorBitwiseNot(IQRegion r)
	{
		CQt.QRegion_OperatorBitwiseNot(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void OperatorBitwiseOrAssign(IQRegion r)
	{
		CQt.QRegion_OperatorBitwiseOrAssign(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void* OperatorPlusAssign(IQRegion r)
	{
		return CQt.QRegion_OperatorPlusAssign(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void* OperatorPlusAssignWithQRect(IQRect r)
	{
		return CQt.QRegion_OperatorPlusAssignWithQRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void OperatorBitwiseAndAssign(IQRegion r)
	{
		CQt.QRegion_OperatorBitwiseAndAssign(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void OperatorBitwiseAndAssignWithQRect(IQRect r)
	{
		CQt.QRegion_OperatorBitwiseAndAssignWithQRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void* OperatorMinusAssign(IQRegion r)
	{
		return CQt.QRegion_OperatorMinusAssign(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void OperatorBitwiseNotAssign(IQRegion r)
	{
		CQt.QRegion_OperatorBitwiseNotAssign(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public bool OperatorEqual(IQRegion r)
	{
		return CQt.QRegion_OperatorEqual(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public bool OperatorNotEqual(IQRegion r)
	{
		return CQt.QRegion_OperatorNotEqual(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void ToQVariant()
	{
		CQt.QRegion_ToQVariant(this.nativePtr);
	}
	
}
public class QRegion
{
	public QRegionPtr handle;
	
	public static implicit operator QRegionPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QRegionPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQRegion param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
	public void Swap(IQRegion other)
	{
		this.handle.Swap(other);
	}
	
	public bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public void* Begin()
	{
		return this.handle.Begin();
	}
	
	public void* Cbegin()
	{
		return this.handle.Cbegin();
	}
	
	public void* End()
	{
		return this.handle.End();
	}
	
	public void* Cend()
	{
		return this.handle.Cend();
	}
	
	public bool Contains(IQPoint p)
	{
		return this.handle.Contains(p);
	}
	
	public bool ContainsWithQRect(IQRect r)
	{
		return this.handle.ContainsWithQRect(r);
	}
	
	public void Translate(int32 dx, int32 dy)
	{
		this.handle.Translate(dx, dy);
	}
	
	public void TranslateWithQPoint(IQPoint p)
	{
		this.handle.TranslateWithQPoint(p);
	}
	
	public void Translated(int32 dx, int32 dy)
	{
		this.handle.Translated(dx, dy);
	}
	
	public void TranslatedWithQPoint(IQPoint p)
	{
		this.handle.TranslatedWithQPoint(p);
	}
	
	public void United(IQRegion r)
	{
		this.handle.United(r);
	}
	
	public void UnitedWithQRect(IQRect r)
	{
		this.handle.UnitedWithQRect(r);
	}
	
	public void Intersected(IQRegion r)
	{
		this.handle.Intersected(r);
	}
	
	public void IntersectedWithQRect(IQRect r)
	{
		this.handle.IntersectedWithQRect(r);
	}
	
	public void Subtracted(IQRegion r)
	{
		this.handle.Subtracted(r);
	}
	
	public void Xored(IQRegion r)
	{
		this.handle.Xored(r);
	}
	
	public bool Intersects(IQRegion r)
	{
		return this.handle.Intersects(r);
	}
	
	public bool IntersectsWithQRect(IQRect r)
	{
		return this.handle.IntersectsWithQRect(r);
	}
	
	public void BoundingRect()
	{
		this.handle.BoundingRect();
	}
	
	public void SetRects(IQRect rect, int32 num)
	{
		this.handle.SetRects(rect, num);
	}
	
	public int32 RectCount()
	{
		return this.handle.RectCount();
	}
	
	public void OperatorBitwiseOr(IQRegion r)
	{
		this.handle.OperatorBitwiseOr(r);
	}
	
	public void OperatorPlus(IQRegion r)
	{
		this.handle.OperatorPlus(r);
	}
	
	public void OperatorPlusWithQRect(IQRect r)
	{
		this.handle.OperatorPlusWithQRect(r);
	}
	
	public void OperatorBitwiseAnd(IQRegion r)
	{
		this.handle.OperatorBitwiseAnd(r);
	}
	
	public void OperatorBitwiseAndWithQRect(IQRect r)
	{
		this.handle.OperatorBitwiseAndWithQRect(r);
	}
	
	public void OperatorMinus(IQRegion r)
	{
		this.handle.OperatorMinus(r);
	}
	
	public void OperatorBitwiseNot(IQRegion r)
	{
		this.handle.OperatorBitwiseNot(r);
	}
	
	public void OperatorBitwiseOrAssign(IQRegion r)
	{
		this.handle.OperatorBitwiseOrAssign(r);
	}
	
	public void* OperatorPlusAssign(IQRegion r)
	{
		return this.handle.OperatorPlusAssign(r);
	}
	
	public void* OperatorPlusAssignWithQRect(IQRect r)
	{
		return this.handle.OperatorPlusAssignWithQRect(r);
	}
	
	public void OperatorBitwiseAndAssign(IQRegion r)
	{
		this.handle.OperatorBitwiseAndAssign(r);
	}
	
	public void OperatorBitwiseAndAssignWithQRect(IQRect r)
	{
		this.handle.OperatorBitwiseAndAssignWithQRect(r);
	}
	
	public void* OperatorMinusAssign(IQRegion r)
	{
		return this.handle.OperatorMinusAssign(r);
	}
	
	public void OperatorBitwiseNotAssign(IQRegion r)
	{
		this.handle.OperatorBitwiseNotAssign(r);
	}
	
	public bool OperatorEqual(IQRegion r)
	{
		return this.handle.OperatorEqual(r);
	}
	
	public bool OperatorNotEqual(IQRegion r)
	{
		return this.handle.OperatorNotEqual(r);
	}
	
	public void ToQVariant()
	{
		this.handle.ToQVariant();
	}
	
}
extension CQt
{
	[LinkName("QRegion_new")]
	public static extern void* QRegion_new();
	[LinkName("QRegion_new2")]
	public static extern void* QRegion_new2(int32 x, int32 y, int32 w, int32 h);
	[LinkName("QRegion_new3")]
	public static extern void* QRegion_new3(void* r);
	[LinkName("QRegion_new4")]
	public static extern void* QRegion_new4(void* region);
	[LinkName("QRegion_new5")]
	public static extern void* QRegion_new5(void* bitmap);
	[LinkName("QRegion_new6")]
	public static extern void* QRegion_new6(int32 x, int32 y, int32 w, int32 h, int64 t);
	[LinkName("QRegion_new7")]
	public static extern void* QRegion_new7(void* r, int64 t);
	[LinkName("QRegion_OperatorAssign")]
	public static extern void QRegion_OperatorAssign(void* c_this, void* param1);
	[LinkName("QRegion_Swap")]
	public static extern void QRegion_Swap(void* c_this, void* other);
	[LinkName("QRegion_IsEmpty")]
	public static extern bool QRegion_IsEmpty(void* c_this);
	[LinkName("QRegion_IsNull")]
	public static extern bool QRegion_IsNull(void* c_this);
	[LinkName("QRegion_Begin")]
	public static extern void* QRegion_Begin(void* c_this);
	[LinkName("QRegion_Cbegin")]
	public static extern void* QRegion_Cbegin(void* c_this);
	[LinkName("QRegion_End")]
	public static extern void* QRegion_End(void* c_this);
	[LinkName("QRegion_Cend")]
	public static extern void* QRegion_Cend(void* c_this);
	[LinkName("QRegion_Contains")]
	public static extern bool QRegion_Contains(void* c_this, void* p);
	[LinkName("QRegion_ContainsWithQRect")]
	public static extern bool QRegion_ContainsWithQRect(void* c_this, void* r);
	[LinkName("QRegion_Translate")]
	public static extern void QRegion_Translate(void* c_this, int32 dx, int32 dy);
	[LinkName("QRegion_TranslateWithQPoint")]
	public static extern void QRegion_TranslateWithQPoint(void* c_this, void* p);
	[LinkName("QRegion_Translated")]
	public static extern void QRegion_Translated(void* c_this, int32 dx, int32 dy);
	[LinkName("QRegion_TranslatedWithQPoint")]
	public static extern void QRegion_TranslatedWithQPoint(void* c_this, void* p);
	[LinkName("QRegion_United")]
	public static extern void QRegion_United(void* c_this, void* r);
	[LinkName("QRegion_UnitedWithQRect")]
	public static extern void QRegion_UnitedWithQRect(void* c_this, void* r);
	[LinkName("QRegion_Intersected")]
	public static extern void QRegion_Intersected(void* c_this, void* r);
	[LinkName("QRegion_IntersectedWithQRect")]
	public static extern void QRegion_IntersectedWithQRect(void* c_this, void* r);
	[LinkName("QRegion_Subtracted")]
	public static extern void QRegion_Subtracted(void* c_this, void* r);
	[LinkName("QRegion_Xored")]
	public static extern void QRegion_Xored(void* c_this, void* r);
	[LinkName("QRegion_Intersects")]
	public static extern bool QRegion_Intersects(void* c_this, void* r);
	[LinkName("QRegion_IntersectsWithQRect")]
	public static extern bool QRegion_IntersectsWithQRect(void* c_this, void* r);
	[LinkName("QRegion_BoundingRect")]
	public static extern void QRegion_BoundingRect(void* c_this);
	[LinkName("QRegion_SetRects")]
	public static extern void QRegion_SetRects(void* c_this, void* rect, int32 num);
	[LinkName("QRegion_RectCount")]
	public static extern int32 QRegion_RectCount(void* c_this);
	[LinkName("QRegion_OperatorBitwiseOr")]
	public static extern void QRegion_OperatorBitwiseOr(void* c_this, void* r);
	[LinkName("QRegion_OperatorPlus")]
	public static extern void QRegion_OperatorPlus(void* c_this, void* r);
	[LinkName("QRegion_OperatorPlusWithQRect")]
	public static extern void QRegion_OperatorPlusWithQRect(void* c_this, void* r);
	[LinkName("QRegion_OperatorBitwiseAnd")]
	public static extern void QRegion_OperatorBitwiseAnd(void* c_this, void* r);
	[LinkName("QRegion_OperatorBitwiseAndWithQRect")]
	public static extern void QRegion_OperatorBitwiseAndWithQRect(void* c_this, void* r);
	[LinkName("QRegion_OperatorMinus")]
	public static extern void QRegion_OperatorMinus(void* c_this, void* r);
	[LinkName("QRegion_OperatorBitwiseNot")]
	public static extern void QRegion_OperatorBitwiseNot(void* c_this, void* r);
	[LinkName("QRegion_OperatorBitwiseOrAssign")]
	public static extern void QRegion_OperatorBitwiseOrAssign(void* c_this, void* r);
	[LinkName("QRegion_OperatorPlusAssign")]
	public static extern void* QRegion_OperatorPlusAssign(void* c_this, void* r);
	[LinkName("QRegion_OperatorPlusAssignWithQRect")]
	public static extern void* QRegion_OperatorPlusAssignWithQRect(void* c_this, void* r);
	[LinkName("QRegion_OperatorBitwiseAndAssign")]
	public static extern void QRegion_OperatorBitwiseAndAssign(void* c_this, void* r);
	[LinkName("QRegion_OperatorBitwiseAndAssignWithQRect")]
	public static extern void QRegion_OperatorBitwiseAndAssignWithQRect(void* c_this, void* r);
	[LinkName("QRegion_OperatorMinusAssign")]
	public static extern void* QRegion_OperatorMinusAssign(void* c_this, void* r);
	[LinkName("QRegion_OperatorBitwiseNotAssign")]
	public static extern void QRegion_OperatorBitwiseNotAssign(void* c_this, void* r);
	[LinkName("QRegion_OperatorEqual")]
	public static extern bool QRegion_OperatorEqual(void* c_this, void* r);
	[LinkName("QRegion_OperatorNotEqual")]
	public static extern bool QRegion_OperatorNotEqual(void* c_this, void* r);
	[LinkName("QRegion_ToQVariant")]
	public static extern void QRegion_ToQVariant(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QRegion_Delete")]
	public static extern void QRegion_Delete(void* self);
}