using System;
using System.Interop;
namespace Qt;

public interface IQAccessibleWidget
{
	void* NativePtr { get; }
}
public class QAccessibleWidget : IQAccessibleWidget, IQAccessibleObject, IQAccessibleActionInterface
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQWidget o)
	{
		this.nativePtr = CQt.QAccessibleWidget_new((o == null) ? null : (void*)o.NativePtr);
	}
	
	public virtual bool IsValid()
	{
		return CQt.QAccessibleWidget_IsValid(this.nativePtr);
	}
	
	public virtual void* Window()
	{
		return CQt.QAccessibleWidget_Window(this.nativePtr);
	}
	
	public virtual int32 ChildCount()
	{
		return CQt.QAccessibleWidget_ChildCount(this.nativePtr);
	}
	
	public virtual int32 IndexOfChild(IQAccessibleInterface child)
	{
		return CQt.QAccessibleWidget_IndexOfChild(this.nativePtr, (child == null) ? null : (void*)child.NativePtr);
	}
	
	public virtual void*[] Relations(int64 match)
	{
		return CQt.QAccessibleWidget_Relations(this.nativePtr, match);
	}
	
	public virtual void* FocusChild()
	{
		return CQt.QAccessibleWidget_FocusChild(this.nativePtr);
	}
	
	public virtual void Rect()
	{
		CQt.QAccessibleWidget_Rect(this.nativePtr);
	}
	
	public virtual void* Parent()
	{
		return CQt.QAccessibleWidget_Parent(this.nativePtr);
	}
	
	public virtual void* Child(int32 index)
	{
		return CQt.QAccessibleWidget_Child(this.nativePtr, index);
	}
	
	public virtual libqt_string Text(int64 t)
	{
		return CQt.QAccessibleWidget_Text(this.nativePtr, t);
	}
	
	public virtual int64 Role()
	{
		return CQt.QAccessibleWidget_Role(this.nativePtr);
	}
	
	public virtual void State()
	{
		CQt.QAccessibleWidget_State(this.nativePtr);
	}
	
	public virtual void ForegroundColor()
	{
		CQt.QAccessibleWidget_ForegroundColor(this.nativePtr);
	}
	
	public virtual void BackgroundColor()
	{
		CQt.QAccessibleWidget_BackgroundColor(this.nativePtr);
	}
	
	public virtual void* InterfaceCast(int64 t)
	{
		return CQt.QAccessibleWidget_InterfaceCast(this.nativePtr, t);
	}
	
	public virtual libqt_string[] ActionNames()
	{
		return CQt.QAccessibleWidget_ActionNames(this.nativePtr);
	}
	
	public virtual void DoAction(String actionName)
	{
		CQt.QAccessibleWidget_DoAction(this.nativePtr, libqt_string(actionName));
	}
	
	public virtual libqt_string[] KeyBindingsForAction(String actionName)
	{
		return CQt.QAccessibleWidget_KeyBindingsForAction(this.nativePtr, libqt_string(actionName));
	}
	
	public virtual void* Object()
	{
		return CQt.QAccessibleObject_Object(this.nativePtr);
	}
	
	public virtual void SetText(int64 t, String text)
	{
		CQt.QAccessibleObject_SetText(this.nativePtr, t, libqt_string(text));
	}
	
	public virtual void* ChildAt(int32 x, int32 y)
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
	
	public virtual void VirtualHook(int32 id, void* data)
	{
		CQt.QAccessibleInterface_VirtualHook(this.nativePtr, id, data);
	}
	
	public static libqt_string Tr(char8* sourceText)
	{
		return CQt.QAccessibleActionInterface_Tr(sourceText);
	}
	
	public virtual libqt_string LocalizedActionName(String name)
	{
		return CQt.QAccessibleActionInterface_LocalizedActionName(this.nativePtr, libqt_string(name));
	}
	
	public virtual libqt_string LocalizedActionDescription(String name)
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