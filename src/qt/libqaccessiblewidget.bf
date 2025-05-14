using System;
using System.Interop;
namespace Qt;

public interface IQAccessibleWidget
{
	void* NativePtr { get; }
}
public struct QAccessibleWidgetPtr : IQAccessibleWidget, IQAccessibleObject, IQAccessibleActionInterface
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQWidget o)
	{
		return .(CQt.QAccessibleWidget_new((o == default || o.NativePtr == default) ? default : o.NativePtr));
	}
	
	public bool IsValid()
	{
		return CQt.QAccessibleWidget_IsValid(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QAccessibleWidget_Window(this.nativePtr);
	}
	
	public int32 ChildCount()
	{
		return CQt.QAccessibleWidget_ChildCount(this.nativePtr);
	}
	
	public int32 IndexOfChild(IQAccessibleInterface child)
	{
		return CQt.QAccessibleWidget_IndexOfChild(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void*[] Relations(int64 match)
	{
		return CQt.QAccessibleWidget_Relations(this.nativePtr, match);
	}
	
	public void* FocusChild()
	{
		return CQt.QAccessibleWidget_FocusChild(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QAccessibleWidget_Rect(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QAccessibleWidget_Parent(this.nativePtr);
	}
	
	public void* Child(int32 index)
	{
		return CQt.QAccessibleWidget_Child(this.nativePtr, index);
	}
	
	public libqt_string Text(int64 t)
	{
		return CQt.QAccessibleWidget_Text(this.nativePtr, (int64)t);
	}
	
	public int64 Role()
	{
		return CQt.QAccessibleWidget_Role(this.nativePtr);
	}
	
	public void State()
	{
		CQt.QAccessibleWidget_State(this.nativePtr);
	}
	
	public void ForegroundColor()
	{
		CQt.QAccessibleWidget_ForegroundColor(this.nativePtr);
	}
	
	public void BackgroundColor()
	{
		CQt.QAccessibleWidget_BackgroundColor(this.nativePtr);
	}
	
	public void* InterfaceCast(int64 t)
	{
		return CQt.QAccessibleWidget_InterfaceCast(this.nativePtr, (int64)t);
	}
	
	public libqt_string[] ActionNames()
	{
		return CQt.QAccessibleWidget_ActionNames(this.nativePtr);
	}
	
	public void DoAction(String actionName)
	{
		CQt.QAccessibleWidget_DoAction(this.nativePtr, libqt_string(actionName));
	}
	
	public libqt_string[] KeyBindingsForAction(String actionName)
	{
		return CQt.QAccessibleWidget_KeyBindingsForAction(this.nativePtr, libqt_string(actionName));
	}
	
	public void* Object()
	{
		return CQt.QAccessibleObject_Object(this.nativePtr);
	}
	
	public void SetText(int64 t, String text)
	{
		CQt.QAccessibleObject_SetText(this.nativePtr, (int64)t, libqt_string(text));
	}
	
	public void* ChildAt(int32 x, int32 y)
	{
		return CQt.QAccessibleObject_ChildAt(this.nativePtr, x, y);
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
	
	public static libqt_string Tr(char8* sourceText)
	{
		return CQt.QAccessibleActionInterface_Tr(sourceText);
	}
	
	public libqt_string LocalizedActionName(String name)
	{
		return CQt.QAccessibleActionInterface_LocalizedActionName(this.nativePtr, libqt_string(name));
	}
	
	public libqt_string LocalizedActionDescription(String name)
	{
		return CQt.QAccessibleActionInterface_LocalizedActionDescription(this.nativePtr, libqt_string(name));
	}
	
	public static libqt_string PressAction()
	{
		return CQt.QAccessibleActionInterface_PressAction();
	}
	
	public static libqt_string IncreaseAction()
	{
		return CQt.QAccessibleActionInterface_IncreaseAction();
	}
	
	public static libqt_string DecreaseAction()
	{
		return CQt.QAccessibleActionInterface_DecreaseAction();
	}
	
	public static libqt_string ShowMenuAction()
	{
		return CQt.QAccessibleActionInterface_ShowMenuAction();
	}
	
	public static libqt_string SetFocusAction()
	{
		return CQt.QAccessibleActionInterface_SetFocusAction();
	}
	
	public static libqt_string ToggleAction()
	{
		return CQt.QAccessibleActionInterface_ToggleAction();
	}
	
	public static libqt_string ScrollLeftAction()
	{
		return CQt.QAccessibleActionInterface_ScrollLeftAction();
	}
	
	public static libqt_string ScrollRightAction()
	{
		return CQt.QAccessibleActionInterface_ScrollRightAction();
	}
	
	public static libqt_string ScrollUpAction()
	{
		return CQt.QAccessibleActionInterface_ScrollUpAction();
	}
	
	public static libqt_string ScrollDownAction()
	{
		return CQt.QAccessibleActionInterface_ScrollDownAction();
	}
	
	public static libqt_string NextPageAction()
	{
		return CQt.QAccessibleActionInterface_NextPageAction();
	}
	
	public static libqt_string PreviousPageAction()
	{
		return CQt.QAccessibleActionInterface_PreviousPageAction();
	}
	
	public static libqt_string Tr2(char8* sourceText, char8* disambiguation)
	{
		return CQt.QAccessibleActionInterface_Tr2(sourceText, disambiguation);
	}
	
	public static libqt_string Tr3(char8* sourceText, char8* disambiguation, int32 n)
	{
		return CQt.QAccessibleActionInterface_Tr3(sourceText, disambiguation, n);
	}
	
}
public class QAccessibleWidget
{
	public QAccessibleWidgetPtr handle;
	
	public static implicit operator QAccessibleWidgetPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQWidget o)
	{
		this.handle = QAccessibleWidgetPtr.New(o);
	}
	
	public virtual bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public virtual void* Window()
	{
		return this.handle.Window();
	}
	
	public virtual int32 ChildCount()
	{
		return this.handle.ChildCount();
	}
	
	public virtual int32 IndexOfChild(IQAccessibleInterface child)
	{
		return this.handle.IndexOfChild(child);
	}
	
	public virtual void*[] Relations(int64 match)
	{
		return this.handle.Relations(match);
	}
	
	public virtual void* FocusChild()
	{
		return this.handle.FocusChild();
	}
	
	public virtual void Rect()
	{
		this.handle.Rect();
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
	
	public virtual void ForegroundColor()
	{
		this.handle.ForegroundColor();
	}
	
	public virtual void BackgroundColor()
	{
		this.handle.BackgroundColor();
	}
	
	public virtual void* InterfaceCast(int64 t)
	{
		return this.handle.InterfaceCast(t);
	}
	
	public virtual libqt_string[] ActionNames()
	{
		return this.handle.ActionNames();
	}
	
	public virtual void DoAction(String actionName)
	{
		this.handle.DoAction(actionName);
	}
	
	public virtual libqt_string[] KeyBindingsForAction(String actionName)
	{
		return this.handle.KeyBindingsForAction(actionName);
	}
	
	public virtual void* Object()
	{
		return this.handle.Object();
	}
	
	public virtual void SetText(int64 t, String text)
	{
		this.handle.SetText(t, text);
	}
	
	public virtual void* ChildAt(int32 x, int32 y)
	{
		return this.handle.ChildAt(x, y);
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
	
	public static libqt_string Tr(char8* sourceText)
	{
		return QAccessibleWidgetPtr.Tr(sourceText);
	}
	
	public virtual libqt_string LocalizedActionName(String name)
	{
		return this.handle.LocalizedActionName(name);
	}
	
	public virtual libqt_string LocalizedActionDescription(String name)
	{
		return this.handle.LocalizedActionDescription(name);
	}
	
	public static libqt_string PressAction()
	{
		return QAccessibleWidgetPtr.PressAction();
	}
	
	public static libqt_string IncreaseAction()
	{
		return QAccessibleWidgetPtr.IncreaseAction();
	}
	
	public static libqt_string DecreaseAction()
	{
		return QAccessibleWidgetPtr.DecreaseAction();
	}
	
	public static libqt_string ShowMenuAction()
	{
		return QAccessibleWidgetPtr.ShowMenuAction();
	}
	
	public static libqt_string SetFocusAction()
	{
		return QAccessibleWidgetPtr.SetFocusAction();
	}
	
	public static libqt_string ToggleAction()
	{
		return QAccessibleWidgetPtr.ToggleAction();
	}
	
	public static libqt_string ScrollLeftAction()
	{
		return QAccessibleWidgetPtr.ScrollLeftAction();
	}
	
	public static libqt_string ScrollRightAction()
	{
		return QAccessibleWidgetPtr.ScrollRightAction();
	}
	
	public static libqt_string ScrollUpAction()
	{
		return QAccessibleWidgetPtr.ScrollUpAction();
	}
	
	public static libqt_string ScrollDownAction()
	{
		return QAccessibleWidgetPtr.ScrollDownAction();
	}
	
	public static libqt_string NextPageAction()
	{
		return QAccessibleWidgetPtr.NextPageAction();
	}
	
	public static libqt_string PreviousPageAction()
	{
		return QAccessibleWidgetPtr.PreviousPageAction();
	}
	
	public static libqt_string Tr2(char8* sourceText, char8* disambiguation)
	{
		return QAccessibleWidgetPtr.Tr2(sourceText, disambiguation);
	}
	
	public static libqt_string Tr3(char8* sourceText, char8* disambiguation, int32 n)
	{
		return QAccessibleWidgetPtr.Tr3(sourceText, disambiguation, n);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleWidget_new")]
	public static extern void* QAccessibleWidget_new(void* o);
	[LinkName("QAccessibleWidget_new2")]
	public static extern void* QAccessibleWidget_new2(void* o, int64 r);
	[LinkName("QAccessibleWidget_new3")]
	public static extern void* QAccessibleWidget_new3(void* o, int64 r, libqt_string name);
	[LinkName("QAccessibleWidget_IsValid")]
	public static extern bool QAccessibleWidget_IsValid(void* c_this);
	[LinkName("QAccessibleWidget_Window")]
	public static extern void* QAccessibleWidget_Window(void* c_this);
	[LinkName("QAccessibleWidget_ChildCount")]
	public static extern int32 QAccessibleWidget_ChildCount(void* c_this);
	[LinkName("QAccessibleWidget_IndexOfChild")]
	public static extern int32 QAccessibleWidget_IndexOfChild(void* c_this, void* child);
	[LinkName("QAccessibleWidget_Relations")]
	public static extern void*[] QAccessibleWidget_Relations(void* c_this, int64 match);
	[LinkName("QAccessibleWidget_FocusChild")]
	public static extern void* QAccessibleWidget_FocusChild(void* c_this);
	[LinkName("QAccessibleWidget_Rect")]
	public static extern void QAccessibleWidget_Rect(void* c_this);
	[LinkName("QAccessibleWidget_Parent")]
	public static extern void* QAccessibleWidget_Parent(void* c_this);
	[LinkName("QAccessibleWidget_Child")]
	public static extern void* QAccessibleWidget_Child(void* c_this, int32 index);
	[LinkName("QAccessibleWidget_Text")]
	public static extern libqt_string QAccessibleWidget_Text(void* c_this, int64 t);
	[LinkName("QAccessibleWidget_Role")]
	public static extern int64 QAccessibleWidget_Role(void* c_this);
	[LinkName("QAccessibleWidget_State")]
	public static extern void QAccessibleWidget_State(void* c_this);
	[LinkName("QAccessibleWidget_ForegroundColor")]
	public static extern void QAccessibleWidget_ForegroundColor(void* c_this);
	[LinkName("QAccessibleWidget_BackgroundColor")]
	public static extern void QAccessibleWidget_BackgroundColor(void* c_this);
	[LinkName("QAccessibleWidget_InterfaceCast")]
	public static extern void* QAccessibleWidget_InterfaceCast(void* c_this, int64 t);
	[LinkName("QAccessibleWidget_ActionNames")]
	public static extern libqt_string[] QAccessibleWidget_ActionNames(void* c_this);
	[LinkName("QAccessibleWidget_DoAction")]
	public static extern void QAccessibleWidget_DoAction(void* c_this, libqt_string actionName);
	[LinkName("QAccessibleWidget_KeyBindingsForAction")]
	public static extern libqt_string[] QAccessibleWidget_KeyBindingsForAction(void* c_this, libqt_string actionName);
	[LinkName("QAccessibleWidget_Widget")]
	public static extern void* QAccessibleWidget_Widget(void* c_this);
	[LinkName("QAccessibleWidget_ParentObject")]
	public static extern void* QAccessibleWidget_ParentObject(void* c_this);
	[LinkName("QAccessibleWidget_AddControllingSignal")]
	public static extern void QAccessibleWidget_AddControllingSignal(void* c_this, libqt_string signal);
}