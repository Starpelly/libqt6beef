using System;
using System.Interop;
namespace Qt;

public interface IQAccessibleObject
{
	void* NativePtr { get; }
}
public class QAccessibleObject : IQAccessibleObject, IQAccessibleInterface
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public virtual bool IsValid()
	{
		return CQt.QAccessibleObject_IsValid(this.nativePtr);
	}
	
	public virtual void* Object()
	{
		return CQt.QAccessibleObject_Object(this.nativePtr);
	}
	
	public virtual void Rect()
	{
		CQt.QAccessibleObject_Rect(this.nativePtr);
	}
	
	public virtual void SetText(int64 t, String text)
	{
		CQt.QAccessibleObject_SetText(this.nativePtr, t, libqt_string(text));
	}
	
	public virtual void* ChildAt(int32 x, int32 y)
	{
		return CQt.QAccessibleObject_ChildAt(this.nativePtr, x, y);
	}
	
	public virtual void* Window()
	{
		return CQt.QAccessibleInterface_Window(this.nativePtr);
	}
	
	public virtual void*[] Relations(int64 match)
	{
		return CQt.QAccessibleInterface_Relations(this.nativePtr, match);
	}
	
	public virtual void* FocusChild()
	{
		return CQt.QAccessibleInterface_FocusChild(this.nativePtr);
	}
	
	public virtual void* Parent()
	{
		return CQt.QAccessibleInterface_Parent(this.nativePtr);
	}
	
	public virtual void* Child(int32 index)
	{
		return CQt.QAccessibleInterface_Child(this.nativePtr, index);
	}
	
	public virtual int32 ChildCount()
	{
		return CQt.QAccessibleInterface_ChildCount(this.nativePtr);
	}
	
	public virtual int32 IndexOfChild(IQAccessibleInterface param1)
	{
		return CQt.QAccessibleInterface_IndexOfChild(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual libqt_string Text(int64 t)
	{
		return CQt.QAccessibleInterface_Text(this.nativePtr, t);
	}
	
	public virtual int64 Role()
	{
		return CQt.QAccessibleInterface_Role(this.nativePtr);
	}
	
	public virtual void State()
	{
		CQt.QAccessibleInterface_State(this.nativePtr);
	}
	
	public virtual void ForegroundColor()
	{
		CQt.QAccessibleInterface_ForegroundColor(this.nativePtr);
	}
	
	public virtual void BackgroundColor()
	{
		CQt.QAccessibleInterface_BackgroundColor(this.nativePtr);
	}
	
	public void* TextInterface()
	{
		return CQt.QAccessibleInterface_TextInterface(this.nativePtr);
	}
	
	public void* EditableTextInterface()
	{
		return CQt.QAccessibleInterface_EditableTextInterface(this.nativePtr);
	}
	
	public void* ValueInterface()
	{
		return CQt.QAccessibleInterface_ValueInterface(this.nativePtr);
	}
	
	public void* ActionInterface()
	{
		return CQt.QAccessibleInterface_ActionInterface(this.nativePtr);
	}
	
	public void* ImageInterface()
	{
		return CQt.QAccessibleInterface_ImageInterface(this.nativePtr);
	}
	
	public void* TableInterface()
	{
		return CQt.QAccessibleInterface_TableInterface(this.nativePtr);
	}
	
	public void* TableCellInterface()
	{
		return CQt.QAccessibleInterface_TableCellInterface(this.nativePtr);
	}
	
	public void* HyperlinkInterface()
	{
		return CQt.QAccessibleInterface_HyperlinkInterface(this.nativePtr);
	}
	
	public virtual void VirtualHook(int32 id, void* data)
	{
		CQt.QAccessibleInterface_VirtualHook(this.nativePtr, id, data);
	}
	
	public virtual void* InterfaceCast(int64 param1)
	{
		return CQt.QAccessibleInterface_InterfaceCast(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleObject_IsValid")]
	public static extern bool QAccessibleObject_IsValid(void* c_this);
	[LinkName("QAccessibleObject_Object")]
	public static extern void* QAccessibleObject_Object(void* c_this);
	[LinkName("QAccessibleObject_Rect")]
	public static extern void QAccessibleObject_Rect(void* c_this);
	[LinkName("QAccessibleObject_SetText")]
	public static extern void QAccessibleObject_SetText(void* c_this, int64 t, libqt_string text);
	[LinkName("QAccessibleObject_ChildAt")]
	public static extern void* QAccessibleObject_ChildAt(void* c_this, int32 x, int32 y);
}
public interface IQAccessibleApplication
{
	void* NativePtr { get; }
}
public class QAccessibleApplication : IQAccessibleApplication, IQAccessibleObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAccessibleApplication_new();
	}
	
	public ~this()
	{
		CQt.QAccessibleApplication_Delete(this.nativePtr);
	}
	
	public virtual void* Window()
	{
		return CQt.QAccessibleApplication_Window(this.nativePtr);
	}
	
	public virtual int32 ChildCount()
	{
		return CQt.QAccessibleApplication_ChildCount(this.nativePtr);
	}
	
	public virtual int32 IndexOfChild(IQAccessibleInterface param1)
	{
		return CQt.QAccessibleApplication_IndexOfChild(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void* FocusChild()
	{
		return CQt.QAccessibleApplication_FocusChild(this.nativePtr);
	}
	
	public virtual void* Parent()
	{
		return CQt.QAccessibleApplication_Parent(this.nativePtr);
	}
	
	public virtual void* Child(int32 index)
	{
		return CQt.QAccessibleApplication_Child(this.nativePtr, index);
	}
	
	public virtual libqt_string Text(int64 t)
	{
		return CQt.QAccessibleApplication_Text(this.nativePtr, t);
	}
	
	public virtual int64 Role()
	{
		return CQt.QAccessibleApplication_Role(this.nativePtr);
	}
	
	public virtual void State()
	{
		CQt.QAccessibleApplication_State(this.nativePtr);
	}
	
	public virtual bool IsValid()
	{
		return CQt.QAccessibleObject_IsValid(this.nativePtr);
	}
	
	public virtual void* Object()
	{
		return CQt.QAccessibleObject_Object(this.nativePtr);
	}
	
	public virtual void Rect()
	{
		CQt.QAccessibleObject_Rect(this.nativePtr);
	}
	
	public virtual void SetText(int64 t, String text)
	{
		CQt.QAccessibleObject_SetText(this.nativePtr, t, libqt_string(text));
	}
	
	public virtual void* ChildAt(int32 x, int32 y)
	{
		return CQt.QAccessibleObject_ChildAt(this.nativePtr, x, y);
	}
	
	public virtual void*[] Relations(int64 match)
	{
		return CQt.QAccessibleInterface_Relations(this.nativePtr, match);
	}
	
	public virtual void ForegroundColor()
	{
		CQt.QAccessibleInterface_ForegroundColor(this.nativePtr);
	}
	
	public virtual void BackgroundColor()
	{
		CQt.QAccessibleInterface_BackgroundColor(this.nativePtr);
	}
	
	public void* TextInterface()
	{
		return CQt.QAccessibleInterface_TextInterface(this.nativePtr);
	}
	
	public void* EditableTextInterface()
	{
		return CQt.QAccessibleInterface_EditableTextInterface(this.nativePtr);
	}
	
	public void* ValueInterface()
	{
		return CQt.QAccessibleInterface_ValueInterface(this.nativePtr);
	}
	
	public void* ActionInterface()
	{
		return CQt.QAccessibleInterface_ActionInterface(this.nativePtr);
	}
	
	public void* ImageInterface()
	{
		return CQt.QAccessibleInterface_ImageInterface(this.nativePtr);
	}
	
	public void* TableInterface()
	{
		return CQt.QAccessibleInterface_TableInterface(this.nativePtr);
	}
	
	public void* TableCellInterface()
	{
		return CQt.QAccessibleInterface_TableCellInterface(this.nativePtr);
	}
	
	public void* HyperlinkInterface()
	{
		return CQt.QAccessibleInterface_HyperlinkInterface(this.nativePtr);
	}
	
	public virtual void VirtualHook(int32 id, void* data)
	{
		CQt.QAccessibleInterface_VirtualHook(this.nativePtr, id, data);
	}
	
	public virtual void* InterfaceCast(int64 param1)
	{
		return CQt.QAccessibleInterface_InterfaceCast(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleApplication_new")]
	public static extern void* QAccessibleApplication_new();
	[LinkName("QAccessibleApplication_Window")]
	public static extern void* QAccessibleApplication_Window(void* c_this);
	[LinkName("QAccessibleApplication_ChildCount")]
	public static extern int32 QAccessibleApplication_ChildCount(void* c_this);
	[LinkName("QAccessibleApplication_IndexOfChild")]
	public static extern int32 QAccessibleApplication_IndexOfChild(void* c_this, void* param1);
	[LinkName("QAccessibleApplication_FocusChild")]
	public static extern void* QAccessibleApplication_FocusChild(void* c_this);
	[LinkName("QAccessibleApplication_Parent")]
	public static extern void* QAccessibleApplication_Parent(void* c_this);
	[LinkName("QAccessibleApplication_Child")]
	public static extern void* QAccessibleApplication_Child(void* c_this, int32 index);
	[LinkName("QAccessibleApplication_Text")]
	public static extern libqt_string QAccessibleApplication_Text(void* c_this, int64 t);
	[LinkName("QAccessibleApplication_Role")]
	public static extern int64 QAccessibleApplication_Role(void* c_this);
	[LinkName("QAccessibleApplication_State")]
	public static extern void QAccessibleApplication_State(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleApplication_Delete")]
	public static extern void QAccessibleApplication_Delete(void* self);
}