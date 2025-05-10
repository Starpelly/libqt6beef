using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTreeWidgetItem__ItemType
{
	Type = 0,
	UserType = 1000,
}
[AllowDuplicates]
public enum QTreeWidgetItem__ChildIndicatorPolicy
{
	ShowIndicator = 0,
	DontShowIndicator = 1,
	DontShowIndicatorWhenChildless = 2,
}
public interface IQTreeWidgetItem
{
	void* NativePtr { get; }
}
public class QTreeWidgetItem : IQTreeWidgetItem
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTreeWidgetItem_new();
	}
	
	public ~this()
	{
		CQt.QTreeWidgetItem_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
	{
		return CQt.QTreeWidgetItem_Clone(this.nativePtr);
	}
	
	public void* TreeWidget()
	{
		return CQt.QTreeWidgetItem_TreeWidget(this.nativePtr);
	}
	
	public void SetSelected(bool selectVal)
	{
		CQt.QTreeWidgetItem_SetSelected(this.nativePtr, selectVal);
	}
	
	public bool IsSelected()
	{
		return CQt.QTreeWidgetItem_IsSelected(this.nativePtr);
	}
	
	public void SetHidden(bool hide)
	{
		CQt.QTreeWidgetItem_SetHidden(this.nativePtr, hide);
	}
	
	public bool IsHidden()
	{
		return CQt.QTreeWidgetItem_IsHidden(this.nativePtr);
	}
	
	public void SetExpanded(bool expand)
	{
		CQt.QTreeWidgetItem_SetExpanded(this.nativePtr, expand);
	}
	
	public bool IsExpanded()
	{
		return CQt.QTreeWidgetItem_IsExpanded(this.nativePtr);
	}
	
	public void SetFirstColumnSpanned(bool span)
	{
		CQt.QTreeWidgetItem_SetFirstColumnSpanned(this.nativePtr, span);
	}
	
	public bool IsFirstColumnSpanned()
	{
		return CQt.QTreeWidgetItem_IsFirstColumnSpanned(this.nativePtr);
	}
	
	public void SetDisabled(bool disabled)
	{
		CQt.QTreeWidgetItem_SetDisabled(this.nativePtr, disabled);
	}
	
	public bool IsDisabled()
	{
		return CQt.QTreeWidgetItem_IsDisabled(this.nativePtr);
	}
	
	public void SetChildIndicatorPolicy(int64 policy)
	{
		CQt.QTreeWidgetItem_SetChildIndicatorPolicy(this.nativePtr, policy);
	}
	
	public int64 ChildIndicatorPolicy()
	{
		return CQt.QTreeWidgetItem_ChildIndicatorPolicy(this.nativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QTreeWidgetItem_Flags(this.nativePtr);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QTreeWidgetItem_SetFlags(this.nativePtr, flags);
	}
	
	public libqt_string Text(int32 column)
	{
		return CQt.QTreeWidgetItem_Text(this.nativePtr, column);
	}
	
	public void SetText(int32 column, String text)
	{
		CQt.QTreeWidgetItem_SetText(this.nativePtr, column, libqt_string(text));
	}
	
	public void Icon(int32 column)
	{
		CQt.QTreeWidgetItem_Icon(this.nativePtr, column);
	}
	
	public void SetIcon(int32 column, IQIcon icon)
	{
		CQt.QTreeWidgetItem_SetIcon(this.nativePtr, column, (icon == default) ? default : (void*)icon.NativePtr);
	}
	
	public libqt_string StatusTip(int32 column)
	{
		return CQt.QTreeWidgetItem_StatusTip(this.nativePtr, column);
	}
	
	public void SetStatusTip(int32 column, String statusTip)
	{
		CQt.QTreeWidgetItem_SetStatusTip(this.nativePtr, column, libqt_string(statusTip));
	}
	
	public libqt_string ToolTip(int32 column)
	{
		return CQt.QTreeWidgetItem_ToolTip(this.nativePtr, column);
	}
	
	public void SetToolTip(int32 column, String toolTip)
	{
		CQt.QTreeWidgetItem_SetToolTip(this.nativePtr, column, libqt_string(toolTip));
	}
	
	public libqt_string WhatsThis(int32 column)
	{
		return CQt.QTreeWidgetItem_WhatsThis(this.nativePtr, column);
	}
	
	public void SetWhatsThis(int32 column, String whatsThis)
	{
		CQt.QTreeWidgetItem_SetWhatsThis(this.nativePtr, column, libqt_string(whatsThis));
	}
	
	public void Font(int32 column)
	{
		CQt.QTreeWidgetItem_Font(this.nativePtr, column);
	}
	
	public void SetFont(int32 column, IQFont font)
	{
		CQt.QTreeWidgetItem_SetFont(this.nativePtr, column, (font == default) ? default : (void*)font.NativePtr);
	}
	
	public int32 TextAlignment(int32 column)
	{
		return CQt.QTreeWidgetItem_TextAlignment(this.nativePtr, column);
	}
	
	public void SetTextAlignment(int32 column, int32 alignment)
	{
		CQt.QTreeWidgetItem_SetTextAlignment(this.nativePtr, column, alignment);
	}
	
	public void SetTextAlignment2(int32 column, int64 alignment)
	{
		CQt.QTreeWidgetItem_SetTextAlignment2(this.nativePtr, column, alignment);
	}
	
	public void SetTextAlignment3(int32 column, int64 alignment)
	{
		CQt.QTreeWidgetItem_SetTextAlignment3(this.nativePtr, column, alignment);
	}
	
	public void Background(int32 column)
	{
		CQt.QTreeWidgetItem_Background(this.nativePtr, column);
	}
	
	public void SetBackground(int32 column, IQBrush brush)
	{
		CQt.QTreeWidgetItem_SetBackground(this.nativePtr, column, (brush == default) ? default : (void*)brush.NativePtr);
	}
	
	public void Foreground(int32 column)
	{
		CQt.QTreeWidgetItem_Foreground(this.nativePtr, column);
	}
	
	public void SetForeground(int32 column, IQBrush brush)
	{
		CQt.QTreeWidgetItem_SetForeground(this.nativePtr, column, (brush == default) ? default : (void*)brush.NativePtr);
	}
	
	public int64 CheckState(int32 column)
	{
		return CQt.QTreeWidgetItem_CheckState(this.nativePtr, column);
	}
	
	public void SetCheckState(int32 column, int64 state)
	{
		CQt.QTreeWidgetItem_SetCheckState(this.nativePtr, column, state);
	}
	
	public void SizeHint(int32 column)
	{
		CQt.QTreeWidgetItem_SizeHint(this.nativePtr, column);
	}
	
	public void SetSizeHint(int32 column, IQSize size)
	{
		CQt.QTreeWidgetItem_SetSizeHint(this.nativePtr, column, (size == default) ? default : (void*)size.NativePtr);
	}
	
	public virtual void Data(int32 column, int32 role)
	{
		CQt.QTreeWidgetItem_Data(this.nativePtr, column, role);
	}
	
	public virtual void SetData(int32 column, int32 role, IQVariant value)
	{
		CQt.QTreeWidgetItem_SetData(this.nativePtr, column, role, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public virtual bool OperatorLesser(IQTreeWidgetItem other)
	{
		return CQt.QTreeWidgetItem_OperatorLesser(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public virtual void Read(IQDataStream _in)
	{
		CQt.QTreeWidgetItem_Read(this.nativePtr, (_in == default) ? default : (void*)_in.NativePtr);
	}
	
	public virtual void Write(IQDataStream _out)
	{
		CQt.QTreeWidgetItem_Write(this.nativePtr, (_out == default) ? default : (void*)_out.NativePtr);
	}
	
	public void OperatorAssign(IQTreeWidgetItem other)
	{
		CQt.QTreeWidgetItem_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QTreeWidgetItem_Parent(this.nativePtr);
	}
	
	public void* Child(int32 index)
	{
		return CQt.QTreeWidgetItem_Child(this.nativePtr, index);
	}
	
	public int32 ChildCount()
	{
		return CQt.QTreeWidgetItem_ChildCount(this.nativePtr);
	}
	
	public int32 ColumnCount()
	{
		return CQt.QTreeWidgetItem_ColumnCount(this.nativePtr);
	}
	
	public int32 IndexOfChild(IQTreeWidgetItem child)
	{
		return CQt.QTreeWidgetItem_IndexOfChild(this.nativePtr, (child == null) ? null : (void*)child.NativePtr);
	}
	
	public void AddChild(IQTreeWidgetItem child)
	{
		CQt.QTreeWidgetItem_AddChild(this.nativePtr, (child == null) ? null : (void*)child.NativePtr);
	}
	
	public void InsertChild(int32 index, IQTreeWidgetItem child)
	{
		CQt.QTreeWidgetItem_InsertChild(this.nativePtr, index, (child == null) ? null : (void*)child.NativePtr);
	}
	
	public void RemoveChild(IQTreeWidgetItem child)
	{
		CQt.QTreeWidgetItem_RemoveChild(this.nativePtr, (child == null) ? null : (void*)child.NativePtr);
	}
	
	public void* TakeChild(int32 index)
	{
		return CQt.QTreeWidgetItem_TakeChild(this.nativePtr, index);
	}
	
	public void AddChildren(IQTreeWidgetItem[] children)
	{
		CQt.QTreeWidgetItem_AddChildren(this.nativePtr, null);
	}
	
	public void InsertChildren(int32 index, IQTreeWidgetItem[] children)
	{
		CQt.QTreeWidgetItem_InsertChildren(this.nativePtr, index, null);
	}
	
	public void*[] TakeChildren()
	{
		return CQt.QTreeWidgetItem_TakeChildren(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QTreeWidgetItem_Type(this.nativePtr);
	}
	
	public void SortChildren(int32 column, int64 order)
	{
		CQt.QTreeWidgetItem_SortChildren(this.nativePtr, column, order);
	}
	
	public void EmitDataChanged()
	{
		CQt.QTreeWidgetItem_EmitDataChanged(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTreeWidgetItem_new")]
	public static extern void* QTreeWidgetItem_new();
	[LinkName("QTreeWidgetItem_new2")]
	public static extern void* QTreeWidgetItem_new2(libqt_string[] strings);
	[LinkName("QTreeWidgetItem_new3")]
	public static extern void* QTreeWidgetItem_new3(void* treeview);
	[LinkName("QTreeWidgetItem_new4")]
	public static extern void* QTreeWidgetItem_new4(void* treeview, libqt_string[] strings);
	[LinkName("QTreeWidgetItem_new5")]
	public static extern void* QTreeWidgetItem_new5(void* treeview, void* after);
	[LinkName("QTreeWidgetItem_new6")]
	public static extern void* QTreeWidgetItem_new6(void* parent);
	[LinkName("QTreeWidgetItem_new7")]
	public static extern void* QTreeWidgetItem_new7(void* parent, libqt_string[] strings);
	[LinkName("QTreeWidgetItem_new8")]
	public static extern void* QTreeWidgetItem_new8(void* parent, void* after);
	[LinkName("QTreeWidgetItem_new9")]
	public static extern void* QTreeWidgetItem_new9(void* other);
	[LinkName("QTreeWidgetItem_new10")]
	public static extern void* QTreeWidgetItem_new10(int32 typeVal);
	[LinkName("QTreeWidgetItem_new11")]
	public static extern void* QTreeWidgetItem_new11(libqt_string[] strings, int32 typeVal);
	[LinkName("QTreeWidgetItem_new12")]
	public static extern void* QTreeWidgetItem_new12(void* treeview, int32 typeVal);
	[LinkName("QTreeWidgetItem_new13")]
	public static extern void* QTreeWidgetItem_new13(void* treeview, libqt_string[] strings, int32 typeVal);
	[LinkName("QTreeWidgetItem_new14")]
	public static extern void* QTreeWidgetItem_new14(void* treeview, void* after, int32 typeVal);
	[LinkName("QTreeWidgetItem_new15")]
	public static extern void* QTreeWidgetItem_new15(void* parent, int32 typeVal);
	[LinkName("QTreeWidgetItem_new16")]
	public static extern void* QTreeWidgetItem_new16(void* parent, libqt_string[] strings, int32 typeVal);
	[LinkName("QTreeWidgetItem_new17")]
	public static extern void* QTreeWidgetItem_new17(void* parent, void* after, int32 typeVal);
	[LinkName("QTreeWidgetItem_Clone")]
	public static extern void* QTreeWidgetItem_Clone(void* c_this);
	[LinkName("QTreeWidgetItem_TreeWidget")]
	public static extern void* QTreeWidgetItem_TreeWidget(void* c_this);
	[LinkName("QTreeWidgetItem_SetSelected")]
	public static extern void QTreeWidgetItem_SetSelected(void* c_this, bool selectVal);
	[LinkName("QTreeWidgetItem_IsSelected")]
	public static extern bool QTreeWidgetItem_IsSelected(void* c_this);
	[LinkName("QTreeWidgetItem_SetHidden")]
	public static extern void QTreeWidgetItem_SetHidden(void* c_this, bool hide);
	[LinkName("QTreeWidgetItem_IsHidden")]
	public static extern bool QTreeWidgetItem_IsHidden(void* c_this);
	[LinkName("QTreeWidgetItem_SetExpanded")]
	public static extern void QTreeWidgetItem_SetExpanded(void* c_this, bool expand);
	[LinkName("QTreeWidgetItem_IsExpanded")]
	public static extern bool QTreeWidgetItem_IsExpanded(void* c_this);
	[LinkName("QTreeWidgetItem_SetFirstColumnSpanned")]
	public static extern void QTreeWidgetItem_SetFirstColumnSpanned(void* c_this, bool span);
	[LinkName("QTreeWidgetItem_IsFirstColumnSpanned")]
	public static extern bool QTreeWidgetItem_IsFirstColumnSpanned(void* c_this);
	[LinkName("QTreeWidgetItem_SetDisabled")]
	public static extern void QTreeWidgetItem_SetDisabled(void* c_this, bool disabled);
	[LinkName("QTreeWidgetItem_IsDisabled")]
	public static extern bool QTreeWidgetItem_IsDisabled(void* c_this);
	[LinkName("QTreeWidgetItem_SetChildIndicatorPolicy")]
	public static extern void QTreeWidgetItem_SetChildIndicatorPolicy(void* c_this, int64 policy);
	[LinkName("QTreeWidgetItem_ChildIndicatorPolicy")]
	public static extern int64 QTreeWidgetItem_ChildIndicatorPolicy(void* c_this);
	[LinkName("QTreeWidgetItem_Flags")]
	public static extern int64 QTreeWidgetItem_Flags(void* c_this);
	[LinkName("QTreeWidgetItem_SetFlags")]
	public static extern void QTreeWidgetItem_SetFlags(void* c_this, int64 flags);
	[LinkName("QTreeWidgetItem_Text")]
	public static extern libqt_string QTreeWidgetItem_Text(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetText")]
	public static extern void QTreeWidgetItem_SetText(void* c_this, int32 column, libqt_string text);
	[LinkName("QTreeWidgetItem_Icon")]
	public static extern void QTreeWidgetItem_Icon(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetIcon")]
	public static extern void QTreeWidgetItem_SetIcon(void* c_this, int32 column, void* icon);
	[LinkName("QTreeWidgetItem_StatusTip")]
	public static extern libqt_string QTreeWidgetItem_StatusTip(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetStatusTip")]
	public static extern void QTreeWidgetItem_SetStatusTip(void* c_this, int32 column, libqt_string statusTip);
	[LinkName("QTreeWidgetItem_ToolTip")]
	public static extern libqt_string QTreeWidgetItem_ToolTip(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetToolTip")]
	public static extern void QTreeWidgetItem_SetToolTip(void* c_this, int32 column, libqt_string toolTip);
	[LinkName("QTreeWidgetItem_WhatsThis")]
	public static extern libqt_string QTreeWidgetItem_WhatsThis(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetWhatsThis")]
	public static extern void QTreeWidgetItem_SetWhatsThis(void* c_this, int32 column, libqt_string whatsThis);
	[LinkName("QTreeWidgetItem_Font")]
	public static extern void QTreeWidgetItem_Font(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetFont")]
	public static extern void QTreeWidgetItem_SetFont(void* c_this, int32 column, void* font);
	[LinkName("QTreeWidgetItem_TextAlignment")]
	public static extern int32 QTreeWidgetItem_TextAlignment(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetTextAlignment")]
	public static extern void QTreeWidgetItem_SetTextAlignment(void* c_this, int32 column, int32 alignment);
	[LinkName("QTreeWidgetItem_SetTextAlignment2")]
	public static extern void QTreeWidgetItem_SetTextAlignment2(void* c_this, int32 column, int64 alignment);
	[LinkName("QTreeWidgetItem_SetTextAlignment3")]
	public static extern void QTreeWidgetItem_SetTextAlignment3(void* c_this, int32 column, int64 alignment);
	[LinkName("QTreeWidgetItem_Background")]
	public static extern void QTreeWidgetItem_Background(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetBackground")]
	public static extern void QTreeWidgetItem_SetBackground(void* c_this, int32 column, void* brush);
	[LinkName("QTreeWidgetItem_Foreground")]
	public static extern void QTreeWidgetItem_Foreground(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetForeground")]
	public static extern void QTreeWidgetItem_SetForeground(void* c_this, int32 column, void* brush);
	[LinkName("QTreeWidgetItem_CheckState")]
	public static extern int64 QTreeWidgetItem_CheckState(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetCheckState")]
	public static extern void QTreeWidgetItem_SetCheckState(void* c_this, int32 column, int64 state);
	[LinkName("QTreeWidgetItem_SizeHint")]
	public static extern void QTreeWidgetItem_SizeHint(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetSizeHint")]
	public static extern void QTreeWidgetItem_SetSizeHint(void* c_this, int32 column, void* size);
	[LinkName("QTreeWidgetItem_Data")]
	public static extern void QTreeWidgetItem_Data(void* c_this, int32 column, int32 role);
	[LinkName("QTreeWidgetItem_SetData")]
	public static extern void QTreeWidgetItem_SetData(void* c_this, int32 column, int32 role, void* value);
	[LinkName("QTreeWidgetItem_OperatorLesser")]
	public static extern bool QTreeWidgetItem_OperatorLesser(void* c_this, void* other);
	[LinkName("QTreeWidgetItem_Read")]
	public static extern void QTreeWidgetItem_Read(void* c_this, void* _in);
	[LinkName("QTreeWidgetItem_Write")]
	public static extern void QTreeWidgetItem_Write(void* c_this, void* _out);
	[LinkName("QTreeWidgetItem_OperatorAssign")]
	public static extern void QTreeWidgetItem_OperatorAssign(void* c_this, void* other);
	[LinkName("QTreeWidgetItem_Parent")]
	public static extern void* QTreeWidgetItem_Parent(void* c_this);
	[LinkName("QTreeWidgetItem_Child")]
	public static extern void* QTreeWidgetItem_Child(void* c_this, int32 index);
	[LinkName("QTreeWidgetItem_ChildCount")]
	public static extern int32 QTreeWidgetItem_ChildCount(void* c_this);
	[LinkName("QTreeWidgetItem_ColumnCount")]
	public static extern int32 QTreeWidgetItem_ColumnCount(void* c_this);
	[LinkName("QTreeWidgetItem_IndexOfChild")]
	public static extern int32 QTreeWidgetItem_IndexOfChild(void* c_this, void* child);
	[LinkName("QTreeWidgetItem_AddChild")]
	public static extern void QTreeWidgetItem_AddChild(void* c_this, void* child);
	[LinkName("QTreeWidgetItem_InsertChild")]
	public static extern void QTreeWidgetItem_InsertChild(void* c_this, int32 index, void* child);
	[LinkName("QTreeWidgetItem_RemoveChild")]
	public static extern void QTreeWidgetItem_RemoveChild(void* c_this, void* child);
	[LinkName("QTreeWidgetItem_TakeChild")]
	public static extern void* QTreeWidgetItem_TakeChild(void* c_this, int32 index);
	[LinkName("QTreeWidgetItem_AddChildren")]
	public static extern void QTreeWidgetItem_AddChildren(void* c_this, void*[] children);
	[LinkName("QTreeWidgetItem_InsertChildren")]
	public static extern void QTreeWidgetItem_InsertChildren(void* c_this, int32 index, void*[] children);
	[LinkName("QTreeWidgetItem_TakeChildren")]
	public static extern void*[] QTreeWidgetItem_TakeChildren(void* c_this);
	[LinkName("QTreeWidgetItem_Type")]
	public static extern int32 QTreeWidgetItem_Type(void* c_this);
	[LinkName("QTreeWidgetItem_SortChildren")]
	public static extern void QTreeWidgetItem_SortChildren(void* c_this, int32 column, int64 order);
	[LinkName("QTreeWidgetItem_EmitDataChanged")]
	public static extern void QTreeWidgetItem_EmitDataChanged(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTreeWidgetItem_Delete")]
	public static extern void QTreeWidgetItem_Delete(void* self);
}
public interface IQTreeWidget
{
	void* NativePtr { get; }
}
public class QTreeWidget : IQTreeWidget, IQTreeView
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQWidget parent)
	{
		this.nativePtr = CQt.QTreeWidget_new((parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public ~this()
	{
		CQt.QTreeWidget_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QTreeWidget_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QTreeWidget_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTreeWidget_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QTreeWidget_Tr(s);
	}
	
	public int32 ColumnCount()
	{
		return CQt.QTreeWidget_ColumnCount(this.nativePtr);
	}
	
	public void SetColumnCount(int32 columns)
	{
		CQt.QTreeWidget_SetColumnCount(this.nativePtr, columns);
	}
	
	public void* InvisibleRootItem()
	{
		return CQt.QTreeWidget_InvisibleRootItem(this.nativePtr);
	}
	
	public void* TopLevelItem(int32 index)
	{
		return CQt.QTreeWidget_TopLevelItem(this.nativePtr, index);
	}
	
	public int32 TopLevelItemCount()
	{
		return CQt.QTreeWidget_TopLevelItemCount(this.nativePtr);
	}
	
	public void InsertTopLevelItem(int32 index, IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_InsertTopLevelItem(this.nativePtr, index, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public void AddTopLevelItem(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_AddTopLevelItem(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public void* TakeTopLevelItem(int32 index)
	{
		return CQt.QTreeWidget_TakeTopLevelItem(this.nativePtr, index);
	}
	
	public int32 IndexOfTopLevelItem(IQTreeWidgetItem item)
	{
		return CQt.QTreeWidget_IndexOfTopLevelItem(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public void InsertTopLevelItems(int32 index, IQTreeWidgetItem[] items)
	{
		CQt.QTreeWidget_InsertTopLevelItems(this.nativePtr, index, null);
	}
	
	public void AddTopLevelItems(IQTreeWidgetItem[] items)
	{
		CQt.QTreeWidget_AddTopLevelItems(this.nativePtr, null);
	}
	
	public void* HeaderItem()
	{
		return CQt.QTreeWidget_HeaderItem(this.nativePtr);
	}
	
	public void SetHeaderItem(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_SetHeaderItem(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public void SetHeaderLabels(String[] labels)
	{
		CQt.QTreeWidget_SetHeaderLabels(this.nativePtr, null);
	}
	
	public void SetHeaderLabel(String label)
	{
		CQt.QTreeWidget_SetHeaderLabel(this.nativePtr, libqt_string(label));
	}
	
	public void* CurrentItem()
	{
		return CQt.QTreeWidget_CurrentItem(this.nativePtr);
	}
	
	public int32 CurrentColumn()
	{
		return CQt.QTreeWidget_CurrentColumn(this.nativePtr);
	}
	
	public void SetCurrentItem(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_SetCurrentItem(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public void SetCurrentItem2(IQTreeWidgetItem item, int32 column)
	{
		CQt.QTreeWidget_SetCurrentItem2(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, column);
	}
	
	public void SetCurrentItem3(IQTreeWidgetItem item, int32 column, int64 command)
	{
		CQt.QTreeWidget_SetCurrentItem3(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, column, command);
	}
	
	public void* ItemAt(IQPoint p)
	{
		return CQt.QTreeWidget_ItemAt(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void* ItemAt2(int32 x, int32 y)
	{
		return CQt.QTreeWidget_ItemAt2(this.nativePtr, x, y);
	}
	
	public void VisualItemRect(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_VisualItemRect(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public int32 SortColumn()
	{
		return CQt.QTreeWidget_SortColumn(this.nativePtr);
	}
	
	public void SortItems(int32 column, int64 order)
	{
		CQt.QTreeWidget_SortItems(this.nativePtr, column, order);
	}
	
	public void EditItem(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_EditItem(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public void OpenPersistentEditor(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_OpenPersistentEditor(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public void ClosePersistentEditor(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_ClosePersistentEditor(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public bool IsPersistentEditorOpen(IQTreeWidgetItem item)
	{
		return CQt.QTreeWidget_IsPersistentEditorOpen(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public void* ItemWidget(IQTreeWidgetItem item, int32 column)
	{
		return CQt.QTreeWidget_ItemWidget(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, column);
	}
	
	public void SetItemWidget(IQTreeWidgetItem item, int32 column, IQWidget widget)
	{
		CQt.QTreeWidget_SetItemWidget(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, column, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public void RemoveItemWidget(IQTreeWidgetItem item, int32 column)
	{
		CQt.QTreeWidget_RemoveItemWidget(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, column);
	}
	
	public void*[] SelectedItems()
	{
		return CQt.QTreeWidget_SelectedItems(this.nativePtr);
	}
	
	public void*[] FindItems(String text, int64 flags)
	{
		return CQt.QTreeWidget_FindItems(this.nativePtr, libqt_string(text), flags);
	}
	
	public void* ItemAbove(IQTreeWidgetItem item)
	{
		return CQt.QTreeWidget_ItemAbove(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public void* ItemBelow(IQTreeWidgetItem item)
	{
		return CQt.QTreeWidget_ItemBelow(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public void IndexFromItem(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_IndexFromItem(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public void* ItemFromIndex(IQModelIndex index)
	{
		return CQt.QTreeWidget_ItemFromIndex(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void SetSelectionModel(IQItemSelectionModel selectionModel)
	{
		CQt.QTreeWidget_SetSelectionModel(this.nativePtr, (selectionModel == null) ? null : (void*)selectionModel.NativePtr);
	}
	
	public void ScrollToItem(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_ScrollToItem(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public void ExpandItem(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_ExpandItem(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public void CollapseItem(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_CollapseItem(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public void Clear()
	{
		CQt.QTreeWidget_Clear(this.nativePtr);
	}
	
	public virtual bool Event(IQEvent e)
	{
		return CQt.QTreeWidget_Event(this.nativePtr, (e == null) ? null : (void*)e.NativePtr);
	}
	
	public virtual libqt_string[] MimeTypes()
	{
		return CQt.QTreeWidget_MimeTypes(this.nativePtr);
	}
	
	public virtual void* MimeData(IQTreeWidgetItem[] items)
	{
		return CQt.QTreeWidget_MimeData(this.nativePtr, null);
	}
	
	public virtual bool DropMimeData(IQTreeWidgetItem parent, int32 index, IQMimeData data, int64 action)
	{
		return CQt.QTreeWidget_DropMimeData(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr, index, (data == null) ? null : (void*)data.NativePtr, action);
	}
	
	public virtual int64 SupportedDropActions()
	{
		return CQt.QTreeWidget_SupportedDropActions(this.nativePtr);
	}
	
	public virtual void DropEvent(IQDropEvent event)
	{
		CQt.QTreeWidget_DropEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QTreeWidget_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QTreeWidget_Tr3(s, c, n);
	}
	
	public void EditItem2(IQTreeWidgetItem item, int32 column)
	{
		CQt.QTreeWidget_EditItem2(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, column);
	}
	
	public void OpenPersistentEditor2(IQTreeWidgetItem item, int32 column)
	{
		CQt.QTreeWidget_OpenPersistentEditor2(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, column);
	}
	
	public void ClosePersistentEditor2(IQTreeWidgetItem item, int32 column)
	{
		CQt.QTreeWidget_ClosePersistentEditor2(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, column);
	}
	
	public bool IsPersistentEditorOpen2(IQTreeWidgetItem item, int32 column)
	{
		return CQt.QTreeWidget_IsPersistentEditorOpen2(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, column);
	}
	
	public void*[] FindItems3(String text, int64 flags, int32 column)
	{
		return CQt.QTreeWidget_FindItems3(this.nativePtr, libqt_string(text), flags, column);
	}
	
	public void IndexFromItem2(IQTreeWidgetItem item, int32 column)
	{
		CQt.QTreeWidget_IndexFromItem2(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, column);
	}
	
	public void ScrollToItem2(IQTreeWidgetItem item, int64 hint)
	{
		CQt.QTreeWidget_ScrollToItem2(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, hint);
	}
	
	public virtual void SetModel(IQAbstractItemModel model)
	{
		CQt.QTreeView_SetModel(this.nativePtr, (model == null) ? null : (void*)model.NativePtr);
	}
	
	public virtual void SetRootIndex(IQModelIndex index)
	{
		CQt.QTreeView_SetRootIndex(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public void* Header()
	{
		return CQt.QTreeView_Header(this.nativePtr);
	}
	
	public void SetHeader(IQHeaderView header)
	{
		CQt.QTreeView_SetHeader(this.nativePtr, (header == null) ? null : (void*)header.NativePtr);
	}
	
	public int32 AutoExpandDelay()
	{
		return CQt.QTreeView_AutoExpandDelay(this.nativePtr);
	}
	
	public void SetAutoExpandDelay(int32 delay)
	{
		CQt.QTreeView_SetAutoExpandDelay(this.nativePtr, delay);
	}
	
	public int32 Indentation()
	{
		return CQt.QTreeView_Indentation(this.nativePtr);
	}
	
	public void SetIndentation(int32 i)
	{
		CQt.QTreeView_SetIndentation(this.nativePtr, i);
	}
	
	public void ResetIndentation()
	{
		CQt.QTreeView_ResetIndentation(this.nativePtr);
	}
	
	public bool RootIsDecorated()
	{
		return CQt.QTreeView_RootIsDecorated(this.nativePtr);
	}
	
	public void SetRootIsDecorated(bool show)
	{
		CQt.QTreeView_SetRootIsDecorated(this.nativePtr, show);
	}
	
	public bool UniformRowHeights()
	{
		return CQt.QTreeView_UniformRowHeights(this.nativePtr);
	}
	
	public void SetUniformRowHeights(bool uniform)
	{
		CQt.QTreeView_SetUniformRowHeights(this.nativePtr, uniform);
	}
	
	public bool ItemsExpandable()
	{
		return CQt.QTreeView_ItemsExpandable(this.nativePtr);
	}
	
	public void SetItemsExpandable(bool enable)
	{
		CQt.QTreeView_SetItemsExpandable(this.nativePtr, enable);
	}
	
	public bool ExpandsOnDoubleClick()
	{
		return CQt.QTreeView_ExpandsOnDoubleClick(this.nativePtr);
	}
	
	public void SetExpandsOnDoubleClick(bool enable)
	{
		CQt.QTreeView_SetExpandsOnDoubleClick(this.nativePtr, enable);
	}
	
	public int32 ColumnViewportPosition(int32 column)
	{
		return CQt.QTreeView_ColumnViewportPosition(this.nativePtr, column);
	}
	
	public int32 ColumnWidth(int32 column)
	{
		return CQt.QTreeView_ColumnWidth(this.nativePtr, column);
	}
	
	public void SetColumnWidth(int32 column, int32 width)
	{
		CQt.QTreeView_SetColumnWidth(this.nativePtr, column, width);
	}
	
	public int32 ColumnAt(int32 x)
	{
		return CQt.QTreeView_ColumnAt(this.nativePtr, x);
	}
	
	public bool IsColumnHidden(int32 column)
	{
		return CQt.QTreeView_IsColumnHidden(this.nativePtr, column);
	}
	
	public void SetColumnHidden(int32 column, bool hide)
	{
		CQt.QTreeView_SetColumnHidden(this.nativePtr, column, hide);
	}
	
	public bool IsHeaderHidden()
	{
		return CQt.QTreeView_IsHeaderHidden(this.nativePtr);
	}
	
	public void SetHeaderHidden(bool hide)
	{
		CQt.QTreeView_SetHeaderHidden(this.nativePtr, hide);
	}
	
	public bool IsRowHidden(int32 row, IQModelIndex parent)
	{
		return CQt.QTreeView_IsRowHidden(this.nativePtr, row, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public void SetRowHidden(int32 row, IQModelIndex parent, bool hide)
	{
		CQt.QTreeView_SetRowHidden(this.nativePtr, row, (parent == default) ? default : (void*)parent.NativePtr, hide);
	}
	
	public bool IsFirstColumnSpanned(int32 row, IQModelIndex parent)
	{
		return CQt.QTreeView_IsFirstColumnSpanned(this.nativePtr, row, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public void SetFirstColumnSpanned(int32 row, IQModelIndex parent, bool span)
	{
		CQt.QTreeView_SetFirstColumnSpanned(this.nativePtr, row, (parent == default) ? default : (void*)parent.NativePtr, span);
	}
	
	public bool IsExpanded(IQModelIndex index)
	{
		return CQt.QTreeView_IsExpanded(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public void SetExpanded(IQModelIndex index, bool expand)
	{
		CQt.QTreeView_SetExpanded(this.nativePtr, (index == default) ? default : (void*)index.NativePtr, expand);
	}
	
	public void SetSortingEnabled(bool enable)
	{
		CQt.QTreeView_SetSortingEnabled(this.nativePtr, enable);
	}
	
	public bool IsSortingEnabled()
	{
		return CQt.QTreeView_IsSortingEnabled(this.nativePtr);
	}
	
	public void SetAnimated(bool enable)
	{
		CQt.QTreeView_SetAnimated(this.nativePtr, enable);
	}
	
	public bool IsAnimated()
	{
		return CQt.QTreeView_IsAnimated(this.nativePtr);
	}
	
	public void SetAllColumnsShowFocus(bool enable)
	{
		CQt.QTreeView_SetAllColumnsShowFocus(this.nativePtr, enable);
	}
	
	public bool AllColumnsShowFocus()
	{
		return CQt.QTreeView_AllColumnsShowFocus(this.nativePtr);
	}
	
	public void SetWordWrap(bool on)
	{
		CQt.QTreeView_SetWordWrap(this.nativePtr, on);
	}
	
	public bool WordWrap()
	{
		return CQt.QTreeView_WordWrap(this.nativePtr);
	}
	
	public void SetTreePosition(int32 logicalIndex)
	{
		CQt.QTreeView_SetTreePosition(this.nativePtr, logicalIndex);
	}
	
	public int32 TreePosition()
	{
		return CQt.QTreeView_TreePosition(this.nativePtr);
	}
	
	public virtual void KeyboardSearch(String search)
	{
		CQt.QTreeView_KeyboardSearch(this.nativePtr, libqt_string(search));
	}
	
	public virtual void VisualRect(IQModelIndex index)
	{
		CQt.QTreeView_VisualRect(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void ScrollTo(IQModelIndex index, int64 hint)
	{
		CQt.QTreeView_ScrollTo(this.nativePtr, (index == default) ? default : (void*)index.NativePtr, hint);
	}
	
	public virtual void IndexAt(IQPoint p)
	{
		CQt.QTreeView_IndexAt(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void IndexAbove(IQModelIndex index)
	{
		CQt.QTreeView_IndexAbove(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public void IndexBelow(IQModelIndex index)
	{
		CQt.QTreeView_IndexBelow(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void DoItemsLayout()
	{
		CQt.QTreeView_DoItemsLayout(this.nativePtr);
	}
	
	public virtual void Reset()
	{
		CQt.QTreeView_Reset(this.nativePtr);
	}
	
	public virtual void DataChanged(IQModelIndex topLeft, IQModelIndex bottomRight, int32[] roles)
	{
		CQt.QTreeView_DataChanged(this.nativePtr, (topLeft == default) ? default : (void*)topLeft.NativePtr, (bottomRight == default) ? default : (void*)bottomRight.NativePtr, null);
	}
	
	public virtual void SelectAll()
	{
		CQt.QTreeView_SelectAll(this.nativePtr);
	}
	
	public void HideColumn(int32 column)
	{
		CQt.QTreeView_HideColumn(this.nativePtr, column);
	}
	
	public void ShowColumn(int32 column)
	{
		CQt.QTreeView_ShowColumn(this.nativePtr, column);
	}
	
	public void Expand(IQModelIndex index)
	{
		CQt.QTreeView_Expand(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public void Collapse(IQModelIndex index)
	{
		CQt.QTreeView_Collapse(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public void ResizeColumnToContents(int32 column)
	{
		CQt.QTreeView_ResizeColumnToContents(this.nativePtr, column);
	}
	
	public void SortByColumn(int32 column, int64 order)
	{
		CQt.QTreeView_SortByColumn(this.nativePtr, column, order);
	}
	
	public void ExpandAll()
	{
		CQt.QTreeView_ExpandAll(this.nativePtr);
	}
	
	public void ExpandRecursively(IQModelIndex index)
	{
		CQt.QTreeView_ExpandRecursively(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public void CollapseAll()
	{
		CQt.QTreeView_CollapseAll(this.nativePtr);
	}
	
	public void ExpandToDepth(int32 depth)
	{
		CQt.QTreeView_ExpandToDepth(this.nativePtr, depth);
	}
	
	public void ExpandRecursively2(IQModelIndex index, int32 depth)
	{
		CQt.QTreeView_ExpandRecursively2(this.nativePtr, (index == default) ? default : (void*)index.NativePtr, depth);
	}
	
	public void* Model()
	{
		return CQt.QAbstractItemView_Model(this.nativePtr);
	}
	
	public void* SelectionModel()
	{
		return CQt.QAbstractItemView_SelectionModel(this.nativePtr);
	}
	
	public void SetItemDelegate(IQAbstractItemDelegate _delegate)
	{
		CQt.QAbstractItemView_SetItemDelegate(this.nativePtr, (_delegate == null) ? null : (void*)_delegate.NativePtr);
	}
	
	public void* ItemDelegate()
	{
		return CQt.QAbstractItemView_ItemDelegate(this.nativePtr);
	}
	
	public void SetSelectionMode(int64 mode)
	{
		CQt.QAbstractItemView_SetSelectionMode(this.nativePtr, mode);
	}
	
	public int64 SelectionMode()
	{
		return CQt.QAbstractItemView_SelectionMode(this.nativePtr);
	}
	
	public void SetSelectionBehavior(int64 behavior)
	{
		CQt.QAbstractItemView_SetSelectionBehavior(this.nativePtr, behavior);
	}
	
	public int64 SelectionBehavior()
	{
		return CQt.QAbstractItemView_SelectionBehavior(this.nativePtr);
	}
	
	public void CurrentIndex()
	{
		CQt.QAbstractItemView_CurrentIndex(this.nativePtr);
	}
	
	public void RootIndex()
	{
		CQt.QAbstractItemView_RootIndex(this.nativePtr);
	}
	
	public void SetEditTriggers(int64 triggers)
	{
		CQt.QAbstractItemView_SetEditTriggers(this.nativePtr, triggers);
	}
	
	public int64 EditTriggers()
	{
		return CQt.QAbstractItemView_EditTriggers(this.nativePtr);
	}
	
	public void SetVerticalScrollMode(int64 mode)
	{
		CQt.QAbstractItemView_SetVerticalScrollMode(this.nativePtr, mode);
	}
	
	public int64 VerticalScrollMode()
	{
		return CQt.QAbstractItemView_VerticalScrollMode(this.nativePtr);
	}
	
	public void ResetVerticalScrollMode()
	{
		CQt.QAbstractItemView_ResetVerticalScrollMode(this.nativePtr);
	}
	
	public void SetHorizontalScrollMode(int64 mode)
	{
		CQt.QAbstractItemView_SetHorizontalScrollMode(this.nativePtr, mode);
	}
	
	public int64 HorizontalScrollMode()
	{
		return CQt.QAbstractItemView_HorizontalScrollMode(this.nativePtr);
	}
	
	public void ResetHorizontalScrollMode()
	{
		CQt.QAbstractItemView_ResetHorizontalScrollMode(this.nativePtr);
	}
	
	public void SetAutoScroll(bool enable)
	{
		CQt.QAbstractItemView_SetAutoScroll(this.nativePtr, enable);
	}
	
	public bool HasAutoScroll()
	{
		return CQt.QAbstractItemView_HasAutoScroll(this.nativePtr);
	}
	
	public void SetAutoScrollMargin(int32 margin)
	{
		CQt.QAbstractItemView_SetAutoScrollMargin(this.nativePtr, margin);
	}
	
	public int32 AutoScrollMargin()
	{
		return CQt.QAbstractItemView_AutoScrollMargin(this.nativePtr);
	}
	
	public void SetTabKeyNavigation(bool enable)
	{
		CQt.QAbstractItemView_SetTabKeyNavigation(this.nativePtr, enable);
	}
	
	public bool TabKeyNavigation()
	{
		return CQt.QAbstractItemView_TabKeyNavigation(this.nativePtr);
	}
	
	public void SetDropIndicatorShown(bool enable)
	{
		CQt.QAbstractItemView_SetDropIndicatorShown(this.nativePtr, enable);
	}
	
	public bool ShowDropIndicator()
	{
		return CQt.QAbstractItemView_ShowDropIndicator(this.nativePtr);
	}
	
	public void SetDragEnabled(bool enable)
	{
		CQt.QAbstractItemView_SetDragEnabled(this.nativePtr, enable);
	}
	
	public bool DragEnabled()
	{
		return CQt.QAbstractItemView_DragEnabled(this.nativePtr);
	}
	
	public void SetDragDropOverwriteMode(bool overwrite)
	{
		CQt.QAbstractItemView_SetDragDropOverwriteMode(this.nativePtr, overwrite);
	}
	
	public bool DragDropOverwriteMode()
	{
		return CQt.QAbstractItemView_DragDropOverwriteMode(this.nativePtr);
	}
	
	public void SetDragDropMode(int64 behavior)
	{
		CQt.QAbstractItemView_SetDragDropMode(this.nativePtr, behavior);
	}
	
	public int64 DragDropMode()
	{
		return CQt.QAbstractItemView_DragDropMode(this.nativePtr);
	}
	
	public void SetDefaultDropAction(int64 dropAction)
	{
		CQt.QAbstractItemView_SetDefaultDropAction(this.nativePtr, dropAction);
	}
	
	public int64 DefaultDropAction()
	{
		return CQt.QAbstractItemView_DefaultDropAction(this.nativePtr);
	}
	
	public void SetAlternatingRowColors(bool enable)
	{
		CQt.QAbstractItemView_SetAlternatingRowColors(this.nativePtr, enable);
	}
	
	public bool AlternatingRowColors()
	{
		return CQt.QAbstractItemView_AlternatingRowColors(this.nativePtr);
	}
	
	public void SetIconSize(IQSize size)
	{
		CQt.QAbstractItemView_SetIconSize(this.nativePtr, (size == default) ? default : (void*)size.NativePtr);
	}
	
	public void IconSize()
	{
		CQt.QAbstractItemView_IconSize(this.nativePtr);
	}
	
	public void SetTextElideMode(int64 mode)
	{
		CQt.QAbstractItemView_SetTextElideMode(this.nativePtr, mode);
	}
	
	public int64 TextElideMode()
	{
		return CQt.QAbstractItemView_TextElideMode(this.nativePtr);
	}
	
	public void SizeHintForIndex(IQModelIndex index)
	{
		CQt.QAbstractItemView_SizeHintForIndex(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual int32 SizeHintForRow(int32 row)
	{
		return CQt.QAbstractItemView_SizeHintForRow(this.nativePtr, row);
	}
	
	public virtual int32 SizeHintForColumn(int32 column)
	{
		return CQt.QAbstractItemView_SizeHintForColumn(this.nativePtr, column);
	}
	
	public void SetIndexWidget(IQModelIndex index, IQWidget widget)
	{
		CQt.QAbstractItemView_SetIndexWidget(this.nativePtr, (index == default) ? default : (void*)index.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public void* IndexWidget(IQModelIndex index)
	{
		return CQt.QAbstractItemView_IndexWidget(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public void SetItemDelegateForRow(int32 row, IQAbstractItemDelegate _delegate)
	{
		CQt.QAbstractItemView_SetItemDelegateForRow(this.nativePtr, row, (_delegate == null) ? null : (void*)_delegate.NativePtr);
	}
	
	public void* ItemDelegateForRow(int32 row)
	{
		return CQt.QAbstractItemView_ItemDelegateForRow(this.nativePtr, row);
	}
	
	public void SetItemDelegateForColumn(int32 column, IQAbstractItemDelegate _delegate)
	{
		CQt.QAbstractItemView_SetItemDelegateForColumn(this.nativePtr, column, (_delegate == null) ? null : (void*)_delegate.NativePtr);
	}
	
	public void* ItemDelegateForColumn(int32 column)
	{
		return CQt.QAbstractItemView_ItemDelegateForColumn(this.nativePtr, column);
	}
	
	public void* ItemDelegateWithIndex(IQModelIndex index)
	{
		return CQt.QAbstractItemView_ItemDelegateWithIndex(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void* ItemDelegateForIndex(IQModelIndex index)
	{
		return CQt.QAbstractItemView_ItemDelegateForIndex(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void InputMethodQuery(int64 query)
	{
		CQt.QAbstractItemView_InputMethodQuery(this.nativePtr, query);
	}
	
	public void Edit(IQModelIndex index)
	{
		CQt.QAbstractItemView_Edit(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public void ClearSelection()
	{
		CQt.QAbstractItemView_ClearSelection(this.nativePtr);
	}
	
	public void SetCurrentIndex(IQModelIndex index)
	{
		CQt.QAbstractItemView_SetCurrentIndex(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public void ScrollToTop()
	{
		CQt.QAbstractItemView_ScrollToTop(this.nativePtr);
	}
	
	public void ScrollToBottom()
	{
		CQt.QAbstractItemView_ScrollToBottom(this.nativePtr);
	}
	
	public void Update(IQModelIndex index)
	{
		CQt.QAbstractItemView_Update(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public int64 VerticalScrollBarPolicy()
	{
		return CQt.QAbstractScrollArea_VerticalScrollBarPolicy(this.nativePtr);
	}
	
	public void SetVerticalScrollBarPolicy(int64 verticalScrollBarPolicy)
	{
		CQt.QAbstractScrollArea_SetVerticalScrollBarPolicy(this.nativePtr, verticalScrollBarPolicy);
	}
	
	public void* VerticalScrollBar()
	{
		return CQt.QAbstractScrollArea_VerticalScrollBar(this.nativePtr);
	}
	
	public void SetVerticalScrollBar(IQScrollBar scrollbar)
	{
		CQt.QAbstractScrollArea_SetVerticalScrollBar(this.nativePtr, (scrollbar == null) ? null : (void*)scrollbar.NativePtr);
	}
	
	public int64 HorizontalScrollBarPolicy()
	{
		return CQt.QAbstractScrollArea_HorizontalScrollBarPolicy(this.nativePtr);
	}
	
	public void SetHorizontalScrollBarPolicy(int64 horizontalScrollBarPolicy)
	{
		CQt.QAbstractScrollArea_SetHorizontalScrollBarPolicy(this.nativePtr, horizontalScrollBarPolicy);
	}
	
	public void* HorizontalScrollBar()
	{
		return CQt.QAbstractScrollArea_HorizontalScrollBar(this.nativePtr);
	}
	
	public void SetHorizontalScrollBar(IQScrollBar scrollbar)
	{
		CQt.QAbstractScrollArea_SetHorizontalScrollBar(this.nativePtr, (scrollbar == null) ? null : (void*)scrollbar.NativePtr);
	}
	
	public void* CornerWidget()
	{
		return CQt.QAbstractScrollArea_CornerWidget(this.nativePtr);
	}
	
	public void SetCornerWidget(IQWidget widget)
	{
		CQt.QAbstractScrollArea_SetCornerWidget(this.nativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public void AddScrollBarWidget(IQWidget widget, int64 alignment)
	{
		CQt.QAbstractScrollArea_AddScrollBarWidget(this.nativePtr, (widget == null) ? null : (void*)widget.NativePtr, alignment);
	}
	
	public void*[] ScrollBarWidgets(int64 alignment)
	{
		return CQt.QAbstractScrollArea_ScrollBarWidgets(this.nativePtr, alignment);
	}
	
	public void* Viewport()
	{
		return CQt.QAbstractScrollArea_Viewport(this.nativePtr);
	}
	
	public void SetViewport(IQWidget widget)
	{
		CQt.QAbstractScrollArea_SetViewport(this.nativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public void MaximumViewportSize()
	{
		CQt.QAbstractScrollArea_MaximumViewportSize(this.nativePtr);
	}
	
	public virtual void MinimumSizeHint()
	{
		CQt.QAbstractScrollArea_MinimumSizeHint(this.nativePtr);
	}
	
	public virtual void SizeHint()
	{
		CQt.QAbstractScrollArea_SizeHint(this.nativePtr);
	}
	
	public virtual void SetupViewport(IQWidget viewport)
	{
		CQt.QAbstractScrollArea_SetupViewport(this.nativePtr, (viewport == null) ? null : (void*)viewport.NativePtr);
	}
	
	public int64 SizeAdjustPolicy()
	{
		return CQt.QAbstractScrollArea_SizeAdjustPolicy(this.nativePtr);
	}
	
	public void SetSizeAdjustPolicy(int64 policy)
	{
		CQt.QAbstractScrollArea_SetSizeAdjustPolicy(this.nativePtr, policy);
	}
	
	public int32 FrameStyle()
	{
		return CQt.QFrame_FrameStyle(this.nativePtr);
	}
	
	public void SetFrameStyle(int32 frameStyle)
	{
		CQt.QFrame_SetFrameStyle(this.nativePtr, frameStyle);
	}
	
	public int32 FrameWidth()
	{
		return CQt.QFrame_FrameWidth(this.nativePtr);
	}
	
	public int64 FrameShape()
	{
		return CQt.QFrame_FrameShape(this.nativePtr);
	}
	
	public void SetFrameShape(int64 frameShape)
	{
		CQt.QFrame_SetFrameShape(this.nativePtr, frameShape);
	}
	
	public int64 FrameShadow()
	{
		return CQt.QFrame_FrameShadow(this.nativePtr);
	}
	
	public void SetFrameShadow(int64 frameShadow)
	{
		CQt.QFrame_SetFrameShadow(this.nativePtr, frameShadow);
	}
	
	public int32 LineWidth()
	{
		return CQt.QFrame_LineWidth(this.nativePtr);
	}
	
	public void SetLineWidth(int32 lineWidth)
	{
		CQt.QFrame_SetLineWidth(this.nativePtr, lineWidth);
	}
	
	public int32 MidLineWidth()
	{
		return CQt.QFrame_MidLineWidth(this.nativePtr);
	}
	
	public void SetMidLineWidth(int32 midLineWidth)
	{
		CQt.QFrame_SetMidLineWidth(this.nativePtr, midLineWidth);
	}
	
	public void FrameRect()
	{
		CQt.QFrame_FrameRect(this.nativePtr);
	}
	
	public void SetFrameRect(IQRect frameRect)
	{
		CQt.QFrame_SetFrameRect(this.nativePtr, (frameRect == default) ? default : (void*)frameRect.NativePtr);
	}
	
	public virtual int32 DevType()
	{
		return CQt.QWidget_DevType(this.nativePtr);
	}
	
	public c_uintptr WinId()
	{
		return CQt.QWidget_WinId(this.nativePtr);
	}
	
	public void CreateWinId()
	{
		CQt.QWidget_CreateWinId(this.nativePtr);
	}
	
	public c_uintptr InternalWinId()
	{
		return CQt.QWidget_InternalWinId(this.nativePtr);
	}
	
	public c_uintptr EffectiveWinId()
	{
		return CQt.QWidget_EffectiveWinId(this.nativePtr);
	}
	
	public void* Style()
	{
		return CQt.QWidget_Style(this.nativePtr);
	}
	
	public void SetStyle(IQStyle style)
	{
		CQt.QWidget_SetStyle(this.nativePtr, (style == null) ? null : (void*)style.NativePtr);
	}
	
	public bool IsTopLevel()
	{
		return CQt.QWidget_IsTopLevel(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QWidget_IsWindow(this.nativePtr);
	}
	
	public bool IsModal()
	{
		return CQt.QWidget_IsModal(this.nativePtr);
	}
	
	public int64 WindowModality()
	{
		return CQt.QWidget_WindowModality(this.nativePtr);
	}
	
	public void SetWindowModality(int64 windowModality)
	{
		CQt.QWidget_SetWindowModality(this.nativePtr, windowModality);
	}
	
	public bool IsEnabled()
	{
		return CQt.QWidget_IsEnabled(this.nativePtr);
	}
	
	public bool IsEnabledTo(IQWidget param1)
	{
		return CQt.QWidget_IsEnabledTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QWidget_SetEnabled(this.nativePtr, enabled);
	}
	
	public void SetDisabled(bool disabled)
	{
		CQt.QWidget_SetDisabled(this.nativePtr, disabled);
	}
	
	public void SetWindowModified(bool windowModified)
	{
		CQt.QWidget_SetWindowModified(this.nativePtr, windowModified);
	}
	
	public void FrameGeometry()
	{
		CQt.QWidget_FrameGeometry(this.nativePtr);
	}
	
	public void* Geometry()
	{
		return CQt.QWidget_Geometry(this.nativePtr);
	}
	
	public void NormalGeometry()
	{
		CQt.QWidget_NormalGeometry(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QWidget_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QWidget_Y(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QWidget_Pos(this.nativePtr);
	}
	
	public void FrameSize()
	{
		CQt.QWidget_FrameSize(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QWidget_Size(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QWidget_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QWidget_Height(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QWidget_Rect(this.nativePtr);
	}
	
	public void ChildrenRect()
	{
		CQt.QWidget_ChildrenRect(this.nativePtr);
	}
	
	public void ChildrenRegion()
	{
		CQt.QWidget_ChildrenRegion(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QWidget_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QWidget_MaximumSize(this.nativePtr);
	}
	
	public int32 MinimumWidth()
	{
		return CQt.QWidget_MinimumWidth(this.nativePtr);
	}
	
	public int32 MinimumHeight()
	{
		return CQt.QWidget_MinimumHeight(this.nativePtr);
	}
	
	public int32 MaximumWidth()
	{
		return CQt.QWidget_MaximumWidth(this.nativePtr);
	}
	
	public int32 MaximumHeight()
	{
		return CQt.QWidget_MaximumHeight(this.nativePtr);
	}
	
	public void SetMinimumSize(IQSize minimumSize)
	{
		CQt.QWidget_SetMinimumSize(this.nativePtr, (minimumSize == default) ? default : (void*)minimumSize.NativePtr);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		CQt.QWidget_SetMinimumSize2(this.nativePtr, minw, minh);
	}
	
	public void SetMaximumSize(IQSize maximumSize)
	{
		CQt.QWidget_SetMaximumSize(this.nativePtr, (maximumSize == default) ? default : (void*)maximumSize.NativePtr);
	}
	
	public void SetMaximumSize2(int32 maxw, int32 maxh)
	{
		CQt.QWidget_SetMaximumSize2(this.nativePtr, maxw, maxh);
	}
	
	public void SetMinimumWidth(int32 minw)
	{
		CQt.QWidget_SetMinimumWidth(this.nativePtr, minw);
	}
	
	public void SetMinimumHeight(int32 minh)
	{
		CQt.QWidget_SetMinimumHeight(this.nativePtr, minh);
	}
	
	public void SetMaximumWidth(int32 maxw)
	{
		CQt.QWidget_SetMaximumWidth(this.nativePtr, maxw);
	}
	
	public void SetMaximumHeight(int32 maxh)
	{
		CQt.QWidget_SetMaximumHeight(this.nativePtr, maxh);
	}
	
	public void SizeIncrement()
	{
		CQt.QWidget_SizeIncrement(this.nativePtr);
	}
	
	public void SetSizeIncrement(IQSize sizeIncrement)
	{
		CQt.QWidget_SetSizeIncrement(this.nativePtr, (sizeIncrement == default) ? default : (void*)sizeIncrement.NativePtr);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		CQt.QWidget_SetSizeIncrement2(this.nativePtr, w, h);
	}
	
	public void BaseSize()
	{
		CQt.QWidget_BaseSize(this.nativePtr);
	}
	
	public void SetBaseSize(IQSize baseSize)
	{
		CQt.QWidget_SetBaseSize(this.nativePtr, (baseSize == default) ? default : (void*)baseSize.NativePtr);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		CQt.QWidget_SetBaseSize2(this.nativePtr, basew, baseh);
	}
	
	public void SetFixedSize(IQSize fixedSize)
	{
		CQt.QWidget_SetFixedSize(this.nativePtr, (fixedSize == default) ? default : (void*)fixedSize.NativePtr);
	}
	
	public void SetFixedSize2(int32 w, int32 h)
	{
		CQt.QWidget_SetFixedSize2(this.nativePtr, w, h);
	}
	
	public void SetFixedWidth(int32 w)
	{
		CQt.QWidget_SetFixedWidth(this.nativePtr, w);
	}
	
	public void SetFixedHeight(int32 h)
	{
		CQt.QWidget_SetFixedHeight(this.nativePtr, h);
	}
	
	public void MapToGlobal(IQPointF param1)
	{
		CQt.QWidget_MapToGlobal(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToGlobalWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromGlobal(IQPointF param1)
	{
		CQt.QWidget_MapFromGlobal(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromGlobalWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToParent(IQPointF param1)
	{
		CQt.QWidget_MapToParent(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapToParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToParentWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromParent(IQPointF param1)
	{
		CQt.QWidget_MapFromParent(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapFromParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromParentWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void MapTo(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapTo2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapTo2(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapFrom(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapFrom(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void MapFrom2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapFrom2(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, (param2 == default) ? default : (void*)param2.NativePtr);
	}
	
	public void* Window()
	{
		return CQt.QWidget_Window(this.nativePtr);
	}
	
	public void* NativeParentWidget()
	{
		return CQt.QWidget_NativeParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QWidget_TopLevelWidget(this.nativePtr);
	}
	
	public void* Palette()
	{
		return CQt.QWidget_Palette(this.nativePtr);
	}
	
	public void SetPalette(IQPalette palette)
	{
		CQt.QWidget_SetPalette(this.nativePtr, (palette == default) ? default : (void*)palette.NativePtr);
	}
	
	public void SetBackgroundRole(int64 backgroundRole)
	{
		CQt.QWidget_SetBackgroundRole(this.nativePtr, backgroundRole);
	}
	
	public int64 BackgroundRole()
	{
		return CQt.QWidget_BackgroundRole(this.nativePtr);
	}
	
	public void SetForegroundRole(int64 foregroundRole)
	{
		CQt.QWidget_SetForegroundRole(this.nativePtr, foregroundRole);
	}
	
	public int64 ForegroundRole()
	{
		return CQt.QWidget_ForegroundRole(this.nativePtr);
	}
	
	public void* Font()
	{
		return CQt.QWidget_Font(this.nativePtr);
	}
	
	public void SetFont(IQFont font)
	{
		CQt.QWidget_SetFont(this.nativePtr, (font == default) ? default : (void*)font.NativePtr);
	}
	
	public void FontMetrics()
	{
		CQt.QWidget_FontMetrics(this.nativePtr);
	}
	
	public void FontInfo()
	{
		CQt.QWidget_FontInfo(this.nativePtr);
	}
	
	public void Cursor()
	{
		CQt.QWidget_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QWidget_SetCursor(this.nativePtr, (cursor == default) ? default : (void*)cursor.NativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QWidget_UnsetCursor(this.nativePtr);
	}
	
	public void SetMouseTracking(bool enable)
	{
		CQt.QWidget_SetMouseTracking(this.nativePtr, enable);
	}
	
	public bool HasMouseTracking()
	{
		return CQt.QWidget_HasMouseTracking(this.nativePtr);
	}
	
	public bool UnderMouse()
	{
		return CQt.QWidget_UnderMouse(this.nativePtr);
	}
	
	public void SetTabletTracking(bool enable)
	{
		CQt.QWidget_SetTabletTracking(this.nativePtr, enable);
	}
	
	public bool HasTabletTracking()
	{
		return CQt.QWidget_HasTabletTracking(this.nativePtr);
	}
	
	public void SetMask(IQBitmap mask)
	{
		CQt.QWidget_SetMask(this.nativePtr, (mask == default) ? default : (void*)mask.NativePtr);
	}
	
	public void SetMaskWithMask(IQRegion mask)
	{
		CQt.QWidget_SetMaskWithMask(this.nativePtr, (mask == default) ? default : (void*)mask.NativePtr);
	}
	
	public void Mask()
	{
		CQt.QWidget_Mask(this.nativePtr);
	}
	
	public void ClearMask()
	{
		CQt.QWidget_ClearMask(this.nativePtr);
	}
	
	public void Render(IQPaintDevice target)
	{
		CQt.QWidget_Render(this.nativePtr, (target == null) ? null : (void*)target.NativePtr);
	}
	
	public void RenderWithPainter(IQPainter painter)
	{
		CQt.QWidget_RenderWithPainter(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr);
	}
	
	public void Grab()
	{
		CQt.QWidget_Grab(this.nativePtr);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QWidget_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QWidget_SetGraphicsEffect(this.nativePtr, (effect == null) ? null : (void*)effect.NativePtr);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QWidget_GrabGesture(this.nativePtr, typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QWidget_UngrabGesture(this.nativePtr, typeVal);
	}
	
	public void SetWindowTitle(String windowTitle)
	{
		CQt.QWidget_SetWindowTitle(this.nativePtr, libqt_string(windowTitle));
	}
	
	public void SetStyleSheet(String styleSheet)
	{
		CQt.QWidget_SetStyleSheet(this.nativePtr, libqt_string(styleSheet));
	}
	
	public libqt_string StyleSheet()
	{
		return CQt.QWidget_StyleSheet(this.nativePtr);
	}
	
	public libqt_string WindowTitle()
	{
		return CQt.QWidget_WindowTitle(this.nativePtr);
	}
	
	public void SetWindowIcon(IQIcon icon)
	{
		CQt.QWidget_SetWindowIcon(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr);
	}
	
	public void WindowIcon()
	{
		CQt.QWidget_WindowIcon(this.nativePtr);
	}
	
	public void SetWindowIconText(String windowIconText)
	{
		CQt.QWidget_SetWindowIconText(this.nativePtr, libqt_string(windowIconText));
	}
	
	public libqt_string WindowIconText()
	{
		return CQt.QWidget_WindowIconText(this.nativePtr);
	}
	
	public void SetWindowRole(String windowRole)
	{
		CQt.QWidget_SetWindowRole(this.nativePtr, libqt_string(windowRole));
	}
	
	public libqt_string WindowRole()
	{
		return CQt.QWidget_WindowRole(this.nativePtr);
	}
	
	public void SetWindowFilePath(String filePath)
	{
		CQt.QWidget_SetWindowFilePath(this.nativePtr, libqt_string(filePath));
	}
	
	public libqt_string WindowFilePath()
	{
		return CQt.QWidget_WindowFilePath(this.nativePtr);
	}
	
	public void SetWindowOpacity(double level)
	{
		CQt.QWidget_SetWindowOpacity(this.nativePtr, level);
	}
	
	public double WindowOpacity()
	{
		return CQt.QWidget_WindowOpacity(this.nativePtr);
	}
	
	public bool IsWindowModified()
	{
		return CQt.QWidget_IsWindowModified(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QWidget_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QWidget_ToolTip(this.nativePtr);
	}
	
	public void SetToolTipDuration(int32 msec)
	{
		CQt.QWidget_SetToolTipDuration(this.nativePtr, msec);
	}
	
	public int32 ToolTipDuration()
	{
		return CQt.QWidget_ToolTipDuration(this.nativePtr);
	}
	
	public void SetStatusTip(String statusTip)
	{
		CQt.QWidget_SetStatusTip(this.nativePtr, libqt_string(statusTip));
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QWidget_StatusTip(this.nativePtr);
	}
	
	public void SetWhatsThis(String whatsThis)
	{
		CQt.QWidget_SetWhatsThis(this.nativePtr, libqt_string(whatsThis));
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QWidget_WhatsThis(this.nativePtr);
	}
	
	public libqt_string AccessibleName()
	{
		return CQt.QWidget_AccessibleName(this.nativePtr);
	}
	
	public void SetAccessibleName(String name)
	{
		CQt.QWidget_SetAccessibleName(this.nativePtr, libqt_string(name));
	}
	
	public libqt_string AccessibleDescription()
	{
		return CQt.QWidget_AccessibleDescription(this.nativePtr);
	}
	
	public void SetAccessibleDescription(String description)
	{
		CQt.QWidget_SetAccessibleDescription(this.nativePtr, libqt_string(description));
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QWidget_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QWidget_LayoutDirection(this.nativePtr);
	}
	
	public void UnsetLayoutDirection()
	{
		CQt.QWidget_UnsetLayoutDirection(this.nativePtr);
	}
	
	public void SetLocale(IQLocale locale)
	{
		CQt.QWidget_SetLocale(this.nativePtr, (locale == default) ? default : (void*)locale.NativePtr);
	}
	
	public void Locale()
	{
		CQt.QWidget_Locale(this.nativePtr);
	}
	
	public void UnsetLocale()
	{
		CQt.QWidget_UnsetLocale(this.nativePtr);
	}
	
	public bool IsRightToLeft()
	{
		return CQt.QWidget_IsRightToLeft(this.nativePtr);
	}
	
	public bool IsLeftToRight()
	{
		return CQt.QWidget_IsLeftToRight(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QWidget_SetFocus(this.nativePtr);
	}
	
	public bool IsActiveWindow()
	{
		return CQt.QWidget_IsActiveWindow(this.nativePtr);
	}
	
	public void ActivateWindow()
	{
		CQt.QWidget_ActivateWindow(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QWidget_ClearFocus(this.nativePtr);
	}
	
	public void SetFocusWithReason(int64 reason)
	{
		CQt.QWidget_SetFocusWithReason(this.nativePtr, reason);
	}
	
	public int64 FocusPolicy()
	{
		return CQt.QWidget_FocusPolicy(this.nativePtr);
	}
	
	public void SetFocusPolicy(int64 policy)
	{
		CQt.QWidget_SetFocusPolicy(this.nativePtr, policy);
	}
	
	public bool HasFocus()
	{
		return CQt.QWidget_HasFocus(this.nativePtr);
	}
	
	public static void SetTabOrder(IQWidget param1, IQWidget param2)
	{
		CQt.QWidget_SetTabOrder((param1 == null) ? null : (void*)param1.NativePtr, (param2 == null) ? null : (void*)param2.NativePtr);
	}
	
	public void SetFocusProxy(IQWidget focusProxy)
	{
		CQt.QWidget_SetFocusProxy(this.nativePtr, (focusProxy == null) ? null : (void*)focusProxy.NativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QWidget_FocusProxy(this.nativePtr);
	}
	
	public int64 ContextMenuPolicy()
	{
		return CQt.QWidget_ContextMenuPolicy(this.nativePtr);
	}
	
	public void SetContextMenuPolicy(int64 policy)
	{
		CQt.QWidget_SetContextMenuPolicy(this.nativePtr, policy);
	}
	
	public void GrabMouse()
	{
		CQt.QWidget_GrabMouse(this.nativePtr);
	}
	
	public void GrabMouseWithQCursor(IQCursor param1)
	{
		CQt.QWidget_GrabMouseWithQCursor(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void ReleaseMouse()
	{
		CQt.QWidget_ReleaseMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QWidget_GrabKeyboard(this.nativePtr);
	}
	
	public void ReleaseKeyboard()
	{
		CQt.QWidget_ReleaseKeyboard(this.nativePtr);
	}
	
	public int32 GrabShortcut(IQKeySequence key)
	{
		return CQt.QWidget_GrabShortcut(this.nativePtr, (key == default) ? default : (void*)key.NativePtr);
	}
	
	public void ReleaseShortcut(int32 id)
	{
		CQt.QWidget_ReleaseShortcut(this.nativePtr, id);
	}
	
	public void SetShortcutEnabled(int32 id)
	{
		CQt.QWidget_SetShortcutEnabled(this.nativePtr, id);
	}
	
	public void SetShortcutAutoRepeat(int32 id)
	{
		CQt.QWidget_SetShortcutAutoRepeat(this.nativePtr, id);
	}
	
	public static void* MouseGrabber()
	{
		return CQt.QWidget_MouseGrabber();
	}
	
	public static void* KeyboardGrabber()
	{
		return CQt.QWidget_KeyboardGrabber();
	}
	
	public bool UpdatesEnabled()
	{
		return CQt.QWidget_UpdatesEnabled(this.nativePtr);
	}
	
	public void SetUpdatesEnabled(bool enable)
	{
		CQt.QWidget_SetUpdatesEnabled(this.nativePtr, enable);
	}
	
	public void* GraphicsProxyWidget()
	{
		return CQt.QWidget_GraphicsProxyWidget(this.nativePtr);
	}
	
	public void Repaint()
	{
		CQt.QWidget_Repaint(this.nativePtr);
	}
	
	public void Update2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Update2(this.nativePtr, x, y, w, h);
	}
	
	public void UpdateWithQRect(IQRect param1)
	{
		CQt.QWidget_UpdateWithQRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void UpdateWithQRegion(IQRegion param1)
	{
		CQt.QWidget_UpdateWithQRegion(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Repaint2(this.nativePtr, x, y, w, h);
	}
	
	public void RepaintWithQRect(IQRect param1)
	{
		CQt.QWidget_RepaintWithQRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void RepaintWithQRegion(IQRegion param1)
	{
		CQt.QWidget_RepaintWithQRegion(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public virtual void SetVisible(bool visible)
	{
		CQt.QWidget_SetVisible(this.nativePtr, visible);
	}
	
	public void SetHidden(bool hidden)
	{
		CQt.QWidget_SetHidden(this.nativePtr, hidden);
	}
	
	public void Show()
	{
		CQt.QWidget_Show(this.nativePtr);
	}
	
	public void Hide()
	{
		CQt.QWidget_Hide(this.nativePtr);
	}
	
	public void ShowMinimized()
	{
		CQt.QWidget_ShowMinimized(this.nativePtr);
	}
	
	public void ShowMaximized()
	{
		CQt.QWidget_ShowMaximized(this.nativePtr);
	}
	
	public void ShowFullScreen()
	{
		CQt.QWidget_ShowFullScreen(this.nativePtr);
	}
	
	public void ShowNormal()
	{
		CQt.QWidget_ShowNormal(this.nativePtr);
	}
	
	public bool Close()
	{
		return CQt.QWidget_Close(this.nativePtr);
	}
	
	public void Raise()
	{
		CQt.QWidget_Raise(this.nativePtr);
	}
	
	public void Lower()
	{
		CQt.QWidget_Lower(this.nativePtr);
	}
	
	public void StackUnder(IQWidget param1)
	{
		CQt.QWidget_StackUnder(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void Move(int32 x, int32 y)
	{
		CQt.QWidget_Move(this.nativePtr, x, y);
	}
	
	public void MoveWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MoveWithQPoint(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void Resize(int32 w, int32 h)
	{
		CQt.QWidget_Resize(this.nativePtr, w, h);
	}
	
	public void ResizeWithQSize(IQSize param1)
	{
		CQt.QWidget_ResizeWithQSize(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_SetGeometry(this.nativePtr, x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(IQRect geometry)
	{
		CQt.QWidget_SetGeometryWithGeometry(this.nativePtr, (geometry == default) ? default : (void*)geometry.NativePtr);
	}
	
	public libqt_string SaveGeometry()
	{
		return CQt.QWidget_SaveGeometry(this.nativePtr);
	}
	
	public bool RestoreGeometry(String geometry)
	{
		return CQt.QWidget_RestoreGeometry(this.nativePtr, libqt_string(geometry));
	}
	
	public void AdjustSize()
	{
		CQt.QWidget_AdjustSize(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QWidget_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQWidget param1)
	{
		return CQt.QWidget_IsVisibleTo(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public bool IsHidden()
	{
		return CQt.QWidget_IsHidden(this.nativePtr);
	}
	
	public bool IsMinimized()
	{
		return CQt.QWidget_IsMinimized(this.nativePtr);
	}
	
	public bool IsMaximized()
	{
		return CQt.QWidget_IsMaximized(this.nativePtr);
	}
	
	public bool IsFullScreen()
	{
		return CQt.QWidget_IsFullScreen(this.nativePtr);
	}
	
	public int64 WindowState()
	{
		return CQt.QWidget_WindowState(this.nativePtr);
	}
	
	public void SetWindowState(int64 state)
	{
		CQt.QWidget_SetWindowState(this.nativePtr, state);
	}
	
	public void OverrideWindowState(int64 state)
	{
		CQt.QWidget_OverrideWindowState(this.nativePtr, state);
	}
	
	public void SizePolicy()
	{
		CQt.QWidget_SizePolicy(this.nativePtr);
	}
	
	public void SetSizePolicy(IQSizePolicy sizePolicy)
	{
		CQt.QWidget_SetSizePolicy(this.nativePtr, (sizePolicy == default) ? default : (void)sizePolicy.NativePtr);
	}
	
	public void SetSizePolicy2(int64 horizontal, int64 vertical)
	{
		CQt.QWidget_SetSizePolicy2(this.nativePtr, horizontal, vertical);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return CQt.QWidget_HeightForWidth(this.nativePtr, param1);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return CQt.QWidget_HasHeightForWidth(this.nativePtr);
	}
	
	public void VisibleRegion()
	{
		CQt.QWidget_VisibleRegion(this.nativePtr);
	}
	
	public void SetContentsMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		CQt.QWidget_SetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(IQMargins margins)
	{
		CQt.QWidget_SetContentsMarginsWithMargins(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr);
	}
	
	public void ContentsMargins()
	{
		CQt.QWidget_ContentsMargins(this.nativePtr);
	}
	
	public void ContentsRect()
	{
		CQt.QWidget_ContentsRect(this.nativePtr);
	}
	
	public void* Layout()
	{
		return CQt.QWidget_Layout(this.nativePtr);
	}
	
	public void SetLayout(IQLayout layout)
	{
		CQt.QWidget_SetLayout(this.nativePtr, (layout == null) ? null : (void*)layout.NativePtr);
	}
	
	public void UpdateGeometry()
	{
		CQt.QWidget_UpdateGeometry(this.nativePtr);
	}
	
	public void SetParent(IQWidget parent)
	{
		CQt.QWidget_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void SetParent2(IQWidget parent, int64 f)
	{
		CQt.QWidget_SetParent2(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		CQt.QWidget_Scroll(this.nativePtr, dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, IQRect param3)
	{
		CQt.QWidget_Scroll2(this.nativePtr, dx, dy, (param3 == default) ? default : (void*)param3.NativePtr);
	}
	
	public void* FocusWidget()
	{
		return CQt.QWidget_FocusWidget(this.nativePtr);
	}
	
	public void* NextInFocusChain()
	{
		return CQt.QWidget_NextInFocusChain(this.nativePtr);
	}
	
	public void* PreviousInFocusChain()
	{
		return CQt.QWidget_PreviousInFocusChain(this.nativePtr);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QWidget_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QWidget_SetAcceptDrops(this.nativePtr, on);
	}
	
	public void AddAction(IQAction action)
	{
		CQt.QWidget_AddAction(this.nativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void AddActions(IQAction[] actions)
	{
		CQt.QWidget_AddActions(this.nativePtr, null);
	}
	
	public void InsertActions(IQAction before, IQAction[] actions)
	{
		CQt.QWidget_InsertActions(this.nativePtr, (before == null) ? null : (void*)before.NativePtr, null);
	}
	
	public void InsertAction(IQAction before, IQAction action)
	{
		CQt.QWidget_InsertAction(this.nativePtr, (before == null) ? null : (void*)before.NativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void RemoveAction(IQAction action)
	{
		CQt.QWidget_RemoveAction(this.nativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void*[] Actions()
	{
		return CQt.QWidget_Actions(this.nativePtr);
	}
	
	public void* AddActionWithText(String text)
	{
		return CQt.QWidget_AddActionWithText(this.nativePtr, libqt_string(text));
	}
	
	public void* AddAction2(IQIcon icon, String text)
	{
		return CQt.QWidget_AddAction2(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr, libqt_string(text));
	}
	
	public void* AddAction3(String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction3(this.nativePtr, libqt_string(text), (shortcut == default) ? default : (void*)shortcut.NativePtr);
	}
	
	public void* AddAction4(IQIcon icon, String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction4(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr, libqt_string(text), (shortcut == default) ? default : (void*)shortcut.NativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QWidget_ParentWidget(this.nativePtr);
	}
	
	public void SetWindowFlags(int64 typeVal)
	{
		CQt.QWidget_SetWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowFlags()
	{
		return CQt.QWidget_WindowFlags(this.nativePtr);
	}
	
	public void SetWindowFlag(int64 param1)
	{
		CQt.QWidget_SetWindowFlag(this.nativePtr, param1);
	}
	
	public void OverrideWindowFlags(int64 typeVal)
	{
		CQt.QWidget_OverrideWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowType()
	{
		return CQt.QWidget_WindowType(this.nativePtr);
	}
	
	public static void* Find(uint64 param1)
	{
		return CQt.QWidget_Find(param1);
	}
	
	public void* ChildAt(int32 x, int32 y)
	{
		return CQt.QWidget_ChildAt(this.nativePtr, x, y);
	}
	
	public void* ChildAtWithQPoint(IQPoint p)
	{
		return CQt.QWidget_ChildAtWithQPoint(this.nativePtr, (p == default) ? default : (void*)p.NativePtr);
	}
	
	public void SetAttribute(int64 param1)
	{
		CQt.QWidget_SetAttribute(this.nativePtr, param1);
	}
	
	public bool TestAttribute(int64 param1)
	{
		return CQt.QWidget_TestAttribute(this.nativePtr, param1);
	}
	
	public virtual void* PaintEngine()
	{
		return CQt.QWidget_PaintEngine(this.nativePtr);
	}
	
	public void EnsurePolished()
	{
		CQt.QWidget_EnsurePolished(this.nativePtr);
	}
	
	public bool IsAncestorOf(IQWidget child)
	{
		return CQt.QWidget_IsAncestorOf(this.nativePtr, (child == null) ? null : (void*)child.NativePtr);
	}
	
	public bool AutoFillBackground()
	{
		return CQt.QWidget_AutoFillBackground(this.nativePtr);
	}
	
	public void SetAutoFillBackground(bool enabled)
	{
		CQt.QWidget_SetAutoFillBackground(this.nativePtr, enabled);
	}
	
	public void* BackingStore()
	{
		return CQt.QWidget_BackingStore(this.nativePtr);
	}
	
	public void* WindowHandle()
	{
		return CQt.QWidget_WindowHandle(this.nativePtr);
	}
	
	public void* Screen()
	{
		return CQt.QWidget_Screen(this.nativePtr);
	}
	
	public void SetScreen(IQScreen screen)
	{
		CQt.QWidget_SetScreen(this.nativePtr, (screen == null) ? null : (void*)screen.NativePtr);
	}
	
	public static void* CreateWindowContainer(IQWindow window)
	{
		return CQt.QWidget_CreateWindowContainer((window == null) ? null : (void*)window.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QWidget_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QWidget_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void Render2(IQPaintDevice target, IQPoint targetOffset)
	{
		CQt.QWidget_Render2(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr);
	}
	
	public void Render3(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render3(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr);
	}
	
	public void Render4(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render4(this.nativePtr, (target == null) ? null : (void*)target.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr, renderFlags);
	}
	
	public void Render22(IQPainter painter, IQPoint targetOffset)
	{
		CQt.QWidget_Render22(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr);
	}
	
	public void Render32(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render32(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr);
	}
	
	public void Render42(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render42(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (targetOffset == default) ? default : (void*)targetOffset.NativePtr, (sourceRegion == default) ? default : (void*)sourceRegion.NativePtr, renderFlags);
	}
	
	public void Grab1(IQRect rectangle)
	{
		CQt.QWidget_Grab1(this.nativePtr, (rectangle == default) ? default : (void*)rectangle.NativePtr);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QWidget_GrabGesture2(this.nativePtr, typeVal, flags);
	}
	
	public int32 GrabShortcut2(IQKeySequence key, int64 context)
	{
		return CQt.QWidget_GrabShortcut2(this.nativePtr, (key == default) ? default : (void*)key.NativePtr, context);
	}
	
	public void SetShortcutEnabled2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutEnabled2(this.nativePtr, id, enable);
	}
	
	public void SetShortcutAutoRepeat2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutAutoRepeat2(this.nativePtr, id, enable);
	}
	
	public void SetWindowFlag2(int64 param1, bool on)
	{
		CQt.QWidget_SetWindowFlag2(this.nativePtr, param1, on);
	}
	
	public void SetAttribute2(int64 param1, bool on)
	{
		CQt.QWidget_SetAttribute2(this.nativePtr, param1, on);
	}
	
	public static void* CreateWindowContainer2(IQWindow window, IQWidget parent)
	{
		return CQt.QWidget_CreateWindowContainer2((window == null) ? null : (void*)window.NativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public static void* CreateWindowContainer3(IQWindow window, IQWidget parent, int64 flags)
	{
		return CQt.QWidget_CreateWindowContainer3((window == null) ? null : (void*)window.NativePtr, (parent == null) ? null : (void*)parent.NativePtr, flags);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(IQAnyStringView name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, (name == default) ? default : (char8*)name.NativePtr);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == null) ? null : (void*)thread.NativePtr);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (member == default) ? default : (void*)member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void Property(char8* name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8* classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member, typeVal);
	}
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public int32 WidthMM()
	{
		return CQt.QPaintDevice_WidthMM(this.nativePtr);
	}
	
	public int32 HeightMM()
	{
		return CQt.QPaintDevice_HeightMM(this.nativePtr);
	}
	
	public int32 LogicalDpiX()
	{
		return CQt.QPaintDevice_LogicalDpiX(this.nativePtr);
	}
	
	public int32 LogicalDpiY()
	{
		return CQt.QPaintDevice_LogicalDpiY(this.nativePtr);
	}
	
	public int32 PhysicalDpiX()
	{
		return CQt.QPaintDevice_PhysicalDpiX(this.nativePtr);
	}
	
	public int32 PhysicalDpiY()
	{
		return CQt.QPaintDevice_PhysicalDpiY(this.nativePtr);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QPaintDevice_DevicePixelRatio(this.nativePtr);
	}
	
	public double DevicePixelRatioF()
	{
		return CQt.QPaintDevice_DevicePixelRatioF(this.nativePtr);
	}
	
	public int32 ColorCount()
	{
		return CQt.QPaintDevice_ColorCount(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QPaintDevice_Depth(this.nativePtr);
	}
	
	public static double DevicePixelRatioFScale()
	{
		return CQt.QPaintDevice_DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QTreeWidget_new")]
	public static extern void* QTreeWidget_new(void* parent);
	[LinkName("QTreeWidget_new2")]
	public static extern void* QTreeWidget_new2();
	[LinkName("QTreeWidget_MetaObject")]
	public static extern void* QTreeWidget_MetaObject(void* c_this);
	[LinkName("QTreeWidget_Metacast")]
	public static extern void* QTreeWidget_Metacast(void* c_this, char8* param1);
	[LinkName("QTreeWidget_Metacall")]
	public static extern int32 QTreeWidget_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QTreeWidget_Tr")]
	public static extern libqt_string QTreeWidget_Tr(char8* s);
	[LinkName("QTreeWidget_ColumnCount")]
	public static extern int32 QTreeWidget_ColumnCount(void* c_this);
	[LinkName("QTreeWidget_SetColumnCount")]
	public static extern void QTreeWidget_SetColumnCount(void* c_this, int32 columns);
	[LinkName("QTreeWidget_InvisibleRootItem")]
	public static extern void* QTreeWidget_InvisibleRootItem(void* c_this);
	[LinkName("QTreeWidget_TopLevelItem")]
	public static extern void* QTreeWidget_TopLevelItem(void* c_this, int32 index);
	[LinkName("QTreeWidget_TopLevelItemCount")]
	public static extern int32 QTreeWidget_TopLevelItemCount(void* c_this);
	[LinkName("QTreeWidget_InsertTopLevelItem")]
	public static extern void QTreeWidget_InsertTopLevelItem(void* c_this, int32 index, void* item);
	[LinkName("QTreeWidget_AddTopLevelItem")]
	public static extern void QTreeWidget_AddTopLevelItem(void* c_this, void* item);
	[LinkName("QTreeWidget_TakeTopLevelItem")]
	public static extern void* QTreeWidget_TakeTopLevelItem(void* c_this, int32 index);
	[LinkName("QTreeWidget_IndexOfTopLevelItem")]
	public static extern int32 QTreeWidget_IndexOfTopLevelItem(void* c_this, void* item);
	[LinkName("QTreeWidget_InsertTopLevelItems")]
	public static extern void QTreeWidget_InsertTopLevelItems(void* c_this, int32 index, void*[] items);
	[LinkName("QTreeWidget_AddTopLevelItems")]
	public static extern void QTreeWidget_AddTopLevelItems(void* c_this, void*[] items);
	[LinkName("QTreeWidget_HeaderItem")]
	public static extern void* QTreeWidget_HeaderItem(void* c_this);
	[LinkName("QTreeWidget_SetHeaderItem")]
	public static extern void QTreeWidget_SetHeaderItem(void* c_this, void* item);
	[LinkName("QTreeWidget_SetHeaderLabels")]
	public static extern void QTreeWidget_SetHeaderLabels(void* c_this, libqt_string[] labels);
	[LinkName("QTreeWidget_SetHeaderLabel")]
	public static extern void QTreeWidget_SetHeaderLabel(void* c_this, libqt_string label);
	[LinkName("QTreeWidget_CurrentItem")]
	public static extern void* QTreeWidget_CurrentItem(void* c_this);
	[LinkName("QTreeWidget_CurrentColumn")]
	public static extern int32 QTreeWidget_CurrentColumn(void* c_this);
	[LinkName("QTreeWidget_SetCurrentItem")]
	public static extern void QTreeWidget_SetCurrentItem(void* c_this, void* item);
	[LinkName("QTreeWidget_SetCurrentItem2")]
	public static extern void QTreeWidget_SetCurrentItem2(void* c_this, void* item, int32 column);
	[LinkName("QTreeWidget_SetCurrentItem3")]
	public static extern void QTreeWidget_SetCurrentItem3(void* c_this, void* item, int32 column, int64 command);
	[LinkName("QTreeWidget_ItemAt")]
	public static extern void* QTreeWidget_ItemAt(void* c_this, void* p);
	[LinkName("QTreeWidget_ItemAt2")]
	public static extern void* QTreeWidget_ItemAt2(void* c_this, int32 x, int32 y);
	[LinkName("QTreeWidget_VisualItemRect")]
	public static extern void QTreeWidget_VisualItemRect(void* c_this, void* item);
	[LinkName("QTreeWidget_SortColumn")]
	public static extern int32 QTreeWidget_SortColumn(void* c_this);
	[LinkName("QTreeWidget_SortItems")]
	public static extern void QTreeWidget_SortItems(void* c_this, int32 column, int64 order);
	[LinkName("QTreeWidget_EditItem")]
	public static extern void QTreeWidget_EditItem(void* c_this, void* item);
	[LinkName("QTreeWidget_OpenPersistentEditor")]
	public static extern void QTreeWidget_OpenPersistentEditor(void* c_this, void* item);
	[LinkName("QTreeWidget_ClosePersistentEditor")]
	public static extern void QTreeWidget_ClosePersistentEditor(void* c_this, void* item);
	[LinkName("QTreeWidget_IsPersistentEditorOpen")]
	public static extern bool QTreeWidget_IsPersistentEditorOpen(void* c_this, void* item);
	[LinkName("QTreeWidget_ItemWidget")]
	public static extern void* QTreeWidget_ItemWidget(void* c_this, void* item, int32 column);
	[LinkName("QTreeWidget_SetItemWidget")]
	public static extern void QTreeWidget_SetItemWidget(void* c_this, void* item, int32 column, void* widget);
	[LinkName("QTreeWidget_RemoveItemWidget")]
	public static extern void QTreeWidget_RemoveItemWidget(void* c_this, void* item, int32 column);
	[LinkName("QTreeWidget_SelectedItems")]
	public static extern void*[] QTreeWidget_SelectedItems(void* c_this);
	[LinkName("QTreeWidget_FindItems")]
	public static extern void*[] QTreeWidget_FindItems(void* c_this, libqt_string text, int64 flags);
	[LinkName("QTreeWidget_ItemAbove")]
	public static extern void* QTreeWidget_ItemAbove(void* c_this, void* item);
	[LinkName("QTreeWidget_ItemBelow")]
	public static extern void* QTreeWidget_ItemBelow(void* c_this, void* item);
	[LinkName("QTreeWidget_IndexFromItem")]
	public static extern void QTreeWidget_IndexFromItem(void* c_this, void* item);
	[LinkName("QTreeWidget_ItemFromIndex")]
	public static extern void* QTreeWidget_ItemFromIndex(void* c_this, void* index);
	[LinkName("QTreeWidget_SetSelectionModel")]
	public static extern void QTreeWidget_SetSelectionModel(void* c_this, void* selectionModel);
	[LinkName("QTreeWidget_ScrollToItem")]
	public static extern void QTreeWidget_ScrollToItem(void* c_this, void* item);
	[LinkName("QTreeWidget_ExpandItem")]
	public static extern void QTreeWidget_ExpandItem(void* c_this, void* item);
	[LinkName("QTreeWidget_CollapseItem")]
	public static extern void QTreeWidget_CollapseItem(void* c_this, void* item);
	[LinkName("QTreeWidget_Clear")]
	public static extern void QTreeWidget_Clear(void* c_this);
	[LinkName("QTreeWidget_Connect_ItemPressed")]
	public static extern void QTreeWidget_Connect_ItemPressed(void* c_this, c_intptr slot);
	[LinkName("QTreeWidget_Connect_ItemClicked")]
	public static extern void QTreeWidget_Connect_ItemClicked(void* c_this, c_intptr slot);
	[LinkName("QTreeWidget_Connect_ItemDoubleClicked")]
	public static extern void QTreeWidget_Connect_ItemDoubleClicked(void* c_this, c_intptr slot);
	[LinkName("QTreeWidget_Connect_ItemActivated")]
	public static extern void QTreeWidget_Connect_ItemActivated(void* c_this, c_intptr slot);
	[LinkName("QTreeWidget_Connect_ItemEntered")]
	public static extern void QTreeWidget_Connect_ItemEntered(void* c_this, c_intptr slot);
	[LinkName("QTreeWidget_Connect_ItemChanged")]
	public static extern void QTreeWidget_Connect_ItemChanged(void* c_this, c_intptr slot);
	[LinkName("QTreeWidget_Connect_ItemExpanded")]
	public static extern void QTreeWidget_Connect_ItemExpanded(void* c_this, c_intptr slot);
	[LinkName("QTreeWidget_Connect_ItemCollapsed")]
	public static extern void QTreeWidget_Connect_ItemCollapsed(void* c_this, c_intptr slot);
	[LinkName("QTreeWidget_Connect_CurrentItemChanged")]
	public static extern void QTreeWidget_Connect_CurrentItemChanged(void* c_this, c_intptr slot);
	[LinkName("QTreeWidget_Connect_ItemSelectionChanged")]
	public static extern void QTreeWidget_Connect_ItemSelectionChanged(void* c_this, c_intptr slot);
	[LinkName("QTreeWidget_Event")]
	public static extern bool QTreeWidget_Event(void* c_this, void* e);
	[LinkName("QTreeWidget_MimeTypes")]
	public static extern libqt_string[] QTreeWidget_MimeTypes(void* c_this);
	[LinkName("QTreeWidget_MimeData")]
	public static extern void* QTreeWidget_MimeData(void* c_this, void*[] items);
	[LinkName("QTreeWidget_DropMimeData")]
	public static extern bool QTreeWidget_DropMimeData(void* c_this, void* parent, int32 index, void* data, int64 action);
	[LinkName("QTreeWidget_SupportedDropActions")]
	public static extern int64 QTreeWidget_SupportedDropActions(void* c_this);
	[LinkName("QTreeWidget_DropEvent")]
	public static extern void QTreeWidget_DropEvent(void* c_this, void* event);
	[LinkName("QTreeWidget_Tr2")]
	public static extern libqt_string QTreeWidget_Tr2(char8* s, char8* c);
	[LinkName("QTreeWidget_Tr3")]
	public static extern libqt_string QTreeWidget_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QTreeWidget_EditItem2")]
	public static extern void QTreeWidget_EditItem2(void* c_this, void* item, int32 column);
	[LinkName("QTreeWidget_OpenPersistentEditor2")]
	public static extern void QTreeWidget_OpenPersistentEditor2(void* c_this, void* item, int32 column);
	[LinkName("QTreeWidget_ClosePersistentEditor2")]
	public static extern void QTreeWidget_ClosePersistentEditor2(void* c_this, void* item, int32 column);
	[LinkName("QTreeWidget_IsPersistentEditorOpen2")]
	public static extern bool QTreeWidget_IsPersistentEditorOpen2(void* c_this, void* item, int32 column);
	[LinkName("QTreeWidget_FindItems3")]
	public static extern void*[] QTreeWidget_FindItems3(void* c_this, libqt_string text, int64 flags, int32 column);
	[LinkName("QTreeWidget_IndexFromItem2")]
	public static extern void QTreeWidget_IndexFromItem2(void* c_this, void* item, int32 column);
	[LinkName("QTreeWidget_ScrollToItem2")]
	public static extern void QTreeWidget_ScrollToItem2(void* c_this, void* item, int64 hint);
	/// Delete this object from C++ memory
	[LinkName("QTreeWidget_Delete")]
	public static extern void QTreeWidget_Delete(void* self);
}