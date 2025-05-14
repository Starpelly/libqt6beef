using System;
using System.Interop;
namespace Qt;

public interface IQAccessibleObject
{
	void* NativePtr { get; }
}
public struct QAccessibleObjectPtr : IQAccessibleObject, IQAccessibleInterface
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public bool IsValid()
	{
		return CQt.QAccessibleObject_IsValid(this.nativePtr);
	}
	
	public void* Object()
	{
		return CQt.QAccessibleObject_Object(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QAccessibleObject_Rect(this.nativePtr);
	}
	
	public void SetText(int64 t, String text)
	{
		CQt.QAccessibleObject_SetText(this.nativePtr, (int64)t, libqt_string(text));
	}
	
	public void* ChildAt(int32 x, int32 y)
	{
		return CQt.QAccessibleObject_ChildAt(this.nativePtr, x, y);
	}
	
	public void* Window()
	{
		return CQt.QAccessibleInterface_Window(this.nativePtr);
	}
	
	public void*[] Relations(int64 match)
	{
		return CQt.QAccessibleInterface_Relations(this.nativePtr, match);
	}
	
	public void* FocusChild()
	{
		return CQt.QAccessibleInterface_FocusChild(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QAccessibleInterface_Parent(this.nativePtr);
	}
	
	public void* Child(int32 index)
	{
		return CQt.QAccessibleInterface_Child(this.nativePtr, index);
	}
	
	public int32 ChildCount()
	{
		return CQt.QAccessibleInterface_ChildCount(this.nativePtr);
	}
	
	public int32 IndexOfChild(IQAccessibleInterface param1)
	{
		return CQt.QAccessibleInterface_IndexOfChild(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public libqt_string Text(int64 t)
	{
		return CQt.QAccessibleInterface_Text(this.nativePtr, (int64)t);
	}
	
	public int64 Role()
	{
		return CQt.QAccessibleInterface_Role(this.nativePtr);
	}
	
	public void State()
	{
		CQt.QAccessibleInterface_State(this.nativePtr);
	}
	
	public void ForegroundColor()
	{
		CQt.QAccessibleInterface_ForegroundColor(this.nativePtr);
	}
	
	public void BackgroundColor()
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
	
	public void VirtualHook(int32 id, void* data)
	{
		CQt.QAccessibleInterface_VirtualHook(this.nativePtr, id, data);
	}
	
	public void* InterfaceCast(int64 param1)
	{
		return CQt.QAccessibleInterface_InterfaceCast(this.nativePtr, (int64)param1);
	}
	
}
public class QAccessibleObject
{
	public QAccessibleObjectPtr handle;
	
	public static implicit operator QAccessibleObjectPtr(Self self)
	{
		return self.handle;
	}
	
	public virtual bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public virtual void* Object()
	{
		return this.handle.Object();
	}
	
	public virtual void Rect()
	{
		this.handle.Rect();
	}
	
	public virtual void SetText(int64 t, String text)
	{
		this.handle.SetText(t, text);
	}
	
	public virtual void* ChildAt(int32 x, int32 y)
	{
		return this.handle.ChildAt(x, y);
	}
	
	public virtual void* Window()
	{
		return this.handle.Window();
	}
	
	public virtual void*[] Relations(int64 match)
	{
		return this.handle.Relations(match);
	}
	
	public virtual void* FocusChild()
	{
		return this.handle.FocusChild();
	}
	
	public virtual void* Parent()
	{
		return this.handle.Parent();
	}
	
	public virtual void* Child(int32 index)
	{
		return this.handle.Child(index);
	}
	
	public virtual int32 ChildCount()
	{
		return this.handle.ChildCount();
	}
	
	public virtual int32 IndexOfChild(IQAccessibleInterface param1)
	{
		return this.handle.IndexOfChild(param1);
	}
	
	public virtual libqt_string Text(int64 t)
	{
		return this.handle.Text(t);
	}
	
	public virtual int64 Role()
	{
		return this.handle.Role();
	}
	
	public virtual void State()
	{
		this.handle.State();
	}
	
	public virtual void ForegroundColor()
	{
		this.handle.ForegroundColor();
	}
	
	public virtual void BackgroundColor()
	{
		this.handle.BackgroundColor();
	}
	
	public void* TextInterface()
	{
		return this.handle.TextInterface();
	}
	
	public void* EditableTextInterface()
	{
		return this.handle.EditableTextInterface();
	}
	
	public void* ValueInterface()
	{
		return this.handle.ValueInterface();
	}
	
	public void* ActionInterface()
	{
		return this.handle.ActionInterface();
	}
	
	public void* ImageInterface()
	{
		return this.handle.ImageInterface();
	}
	
	public void* TableInterface()
	{
		return this.handle.TableInterface();
	}
	
	public void* TableCellInterface()
	{
		return this.handle.TableCellInterface();
	}
	
	public void* HyperlinkInterface()
	{
		return this.handle.HyperlinkInterface();
	}
	
	public virtual void VirtualHook(int32 id, void* data)
	{
		this.handle.VirtualHook(id, data);
	}
	
	public virtual void* InterfaceCast(int64 param1)
	{
		return this.handle.InterfaceCast(param1);
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
public struct QAccessibleApplicationPtr : IQAccessibleApplication, IDisposable, IQAccessibleObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QAccessibleApplication_new());
	}
	
	public void Dispose()
	{
		CQt.QAccessibleApplication_Delete(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QAccessibleApplication_Window(this.nativePtr);
	}
	
	public int32 ChildCount()
	{
		return CQt.QAccessibleApplication_ChildCount(this.nativePtr);
	}
	
	public int32 IndexOfChild(IQAccessibleInterface param1)
	{
		return CQt.QAccessibleApplication_IndexOfChild(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void* FocusChild()
	{
		return CQt.QAccessibleApplication_FocusChild(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QAccessibleApplication_Parent(this.nativePtr);
	}
	
	public void* Child(int32 index)
	{
		return CQt.QAccessibleApplication_Child(this.nativePtr, index);
	}
	
	public libqt_string Text(int64 t)
	{
		return CQt.QAccessibleApplication_Text(this.nativePtr, (int64)t);
	}
	
	public int64 Role()
	{
		return CQt.QAccessibleApplication_Role(this.nativePtr);
	}
	
	public void State()
	{
		CQt.QAccessibleApplication_State(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QAccessibleObject_IsValid(this.nativePtr);
	}
	
	public void* Object()
	{
		return CQt.QAccessibleObject_Object(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QAccessibleObject_Rect(this.nativePtr);
	}
	
	public void SetText(int64 t, String text)
	{
		CQt.QAccessibleObject_SetText(this.nativePtr, (int64)t, libqt_string(text));
	}
	
	public void* ChildAt(int32 x, int32 y)
	{
		return CQt.QAccessibleObject_ChildAt(this.nativePtr, x, y);
	}
	
	public void*[] Relations(int64 match)
	{
		return CQt.QAccessibleInterface_Relations(this.nativePtr, match);
	}
	
	public void ForegroundColor()
	{
		CQt.QAccessibleInterface_ForegroundColor(this.nativePtr);
	}
	
	public void BackgroundColor()
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
	
	public void VirtualHook(int32 id, void* data)
	{
		CQt.QAccessibleInterface_VirtualHook(this.nativePtr, id, data);
	}
	
	public void* InterfaceCast(int64 param1)
	{
		return CQt.QAccessibleInterface_InterfaceCast(this.nativePtr, (int64)param1);
	}
	
}
public class QAccessibleApplication
{
	public QAccessibleApplicationPtr handle;
	
	public static implicit operator QAccessibleApplicationPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QAccessibleApplicationPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Window()
	{
		return this.handle.Window();
	}
	
	public virtual int32 ChildCount()
	{
		return this.handle.ChildCount();
	}
	
	public virtual int32 IndexOfChild(IQAccessibleInterface param1)
	{
		return this.handle.IndexOfChild(param1);
	}
	
	public virtual void* FocusChild()
	{
		return this.handle.FocusChild();
	}
	
	public virtual void* Parent()
	{
		return this.handle.Parent();
	}
	
	public virtual void* Child(int32 index)
	{
		return this.handle.Child(index);
	}
	
	public virtual libqt_string Text(int64 t)
	{
		return this.handle.Text(t);
	}
	
	public virtual int64 Role()
	{
		return this.handle.Role();
	}
	
	public virtual void State()
	{
		this.handle.State();
	}
	
	public virtual bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public virtual void* Object()
	{
		return this.handle.Object();
	}
	
	public virtual void Rect()
	{
		this.handle.Rect();
	}
	
	public virtual void SetText(int64 t, String text)
	{
		this.handle.SetText(t, text);
	}
	
	public virtual void* ChildAt(int32 x, int32 y)
	{
		return this.handle.ChildAt(x, y);
	}
	
	public virtual void*[] Relations(int64 match)
	{
		return this.handle.Relations(match);
	}
	
	public virtual void ForegroundColor()
	{
		this.handle.ForegroundColor();
	}
	
	public virtual void BackgroundColor()
	{
		this.handle.BackgroundColor();
	}
	
	public void* TextInterface()
	{
		return this.handle.TextInterface();
	}
	
	public void* EditableTextInterface()
	{
		return this.handle.EditableTextInterface();
	}
	
	public void* ValueInterface()
	{
		return this.handle.ValueInterface();
	}
	
	public void* ActionInterface()
	{
		return this.handle.ActionInterface();
	}
	
	public void* ImageInterface()
	{
		return this.handle.ImageInterface();
	}
	
	public void* TableInterface()
	{
		return this.handle.TableInterface();
	}
	
	public void* TableCellInterface()
	{
		return this.handle.TableCellInterface();
	}
	
	public void* HyperlinkInterface()
	{
		return this.handle.HyperlinkInterface();
	}
	
	public virtual void VirtualHook(int32 id, void* data)
	{
		this.handle.VirtualHook(id, data);
	}
	
	public virtual void* InterfaceCast(int64 param1)
	{
		return this.handle.InterfaceCast(param1);
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