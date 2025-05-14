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
public struct QTreeWidgetItemPtr : IQTreeWidgetItem, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QTreeWidgetItem_new());
	}
	
	public void Dispose()
	{
		CQt.QTreeWidgetItem_Delete(this.nativePtr);
	}
	
	public void* Clone()
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
		CQt.QTreeWidgetItem_SetChildIndicatorPolicy(this.nativePtr, (int64)policy);
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
		CQt.QTreeWidgetItem_SetIcon(this.nativePtr, column, (icon == default || icon.NativePtr == default) ? default : icon.NativePtr);
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
		CQt.QTreeWidgetItem_SetFont(this.nativePtr, column, (font == default || font.NativePtr == default) ? default : font.NativePtr);
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
		CQt.QTreeWidgetItem_SetTextAlignment2(this.nativePtr, column, (int64)alignment);
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
		CQt.QTreeWidgetItem_SetBackground(this.nativePtr, column, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void Foreground(int32 column)
	{
		CQt.QTreeWidgetItem_Foreground(this.nativePtr, column);
	}
	
	public void SetForeground(int32 column, IQBrush brush)
	{
		CQt.QTreeWidgetItem_SetForeground(this.nativePtr, column, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public int64 CheckState(int32 column)
	{
		return CQt.QTreeWidgetItem_CheckState(this.nativePtr, column);
	}
	
	public void SetCheckState(int32 column, int64 state)
	{
		CQt.QTreeWidgetItem_SetCheckState(this.nativePtr, column, (int64)state);
	}
	
	public void SizeHint(int32 column)
	{
		CQt.QTreeWidgetItem_SizeHint(this.nativePtr, column);
	}
	
	public void SetSizeHint(int32 column, IQSize size)
	{
		CQt.QTreeWidgetItem_SetSizeHint(this.nativePtr, column, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void Data(int32 column, int32 role)
	{
		CQt.QTreeWidgetItem_Data(this.nativePtr, column, role);
	}
	
	public void SetData(int32 column, int32 role, IQVariant value)
	{
		CQt.QTreeWidgetItem_SetData(this.nativePtr, column, role, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public bool OperatorLesser(IQTreeWidgetItem other)
	{
		return CQt.QTreeWidgetItem_OperatorLesser(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Read(IQDataStream _in)
	{
		CQt.QTreeWidgetItem_Read(this.nativePtr, (_in == default || _in.NativePtr == default) ? default : _in.NativePtr);
	}
	
	public void Write(IQDataStream _out)
	{
		CQt.QTreeWidgetItem_Write(this.nativePtr, (_out == default || _out.NativePtr == default) ? default : _out.NativePtr);
	}
	
	public void OperatorAssign(IQTreeWidgetItem other)
	{
		CQt.QTreeWidgetItem_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
		return CQt.QTreeWidgetItem_IndexOfChild(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void AddChild(IQTreeWidgetItem child)
	{
		CQt.QTreeWidgetItem_AddChild(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void InsertChild(int32 index, IQTreeWidgetItem child)
	{
		CQt.QTreeWidgetItem_InsertChild(this.nativePtr, index, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void RemoveChild(IQTreeWidgetItem child)
	{
		CQt.QTreeWidgetItem_RemoveChild(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
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
		CQt.QTreeWidgetItem_SortChildren(this.nativePtr, column, (int64)order);
	}
	
	public void EmitDataChanged()
	{
		CQt.QTreeWidgetItem_EmitDataChanged(this.nativePtr);
	}
	
}
public class QTreeWidgetItem
{
	public QTreeWidgetItemPtr handle;
	
	public static implicit operator QTreeWidgetItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QTreeWidgetItemPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void* TreeWidget()
	{
		return this.handle.TreeWidget();
	}
	
	public void SetSelected(bool selectVal)
	{
		this.handle.SetSelected(selectVal);
	}
	
	public bool IsSelected()
	{
		return this.handle.IsSelected();
	}
	
	public void SetHidden(bool hide)
	{
		this.handle.SetHidden(hide);
	}
	
	public bool IsHidden()
	{
		return this.handle.IsHidden();
	}
	
	public void SetExpanded(bool expand)
	{
		this.handle.SetExpanded(expand);
	}
	
	public bool IsExpanded()
	{
		return this.handle.IsExpanded();
	}
	
	public void SetFirstColumnSpanned(bool span)
	{
		this.handle.SetFirstColumnSpanned(span);
	}
	
	public bool IsFirstColumnSpanned()
	{
		return this.handle.IsFirstColumnSpanned();
	}
	
	public void SetDisabled(bool disabled)
	{
		this.handle.SetDisabled(disabled);
	}
	
	public bool IsDisabled()
	{
		return this.handle.IsDisabled();
	}
	
	public void SetChildIndicatorPolicy(int64 policy)
	{
		this.handle.SetChildIndicatorPolicy(policy);
	}
	
	public int64 ChildIndicatorPolicy()
	{
		return this.handle.ChildIndicatorPolicy();
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public libqt_string Text(int32 column)
	{
		return this.handle.Text(column);
	}
	
	public void SetText(int32 column, String text)
	{
		this.handle.SetText(column, text);
	}
	
	public void Icon(int32 column)
	{
		this.handle.Icon(column);
	}
	
	public void SetIcon(int32 column, IQIcon icon)
	{
		this.handle.SetIcon(column, icon);
	}
	
	public libqt_string StatusTip(int32 column)
	{
		return this.handle.StatusTip(column);
	}
	
	public void SetStatusTip(int32 column, String statusTip)
	{
		this.handle.SetStatusTip(column, statusTip);
	}
	
	public libqt_string ToolTip(int32 column)
	{
		return this.handle.ToolTip(column);
	}
	
	public void SetToolTip(int32 column, String toolTip)
	{
		this.handle.SetToolTip(column, toolTip);
	}
	
	public libqt_string WhatsThis(int32 column)
	{
		return this.handle.WhatsThis(column);
	}
	
	public void SetWhatsThis(int32 column, String whatsThis)
	{
		this.handle.SetWhatsThis(column, whatsThis);
	}
	
	public void Font(int32 column)
	{
		this.handle.Font(column);
	}
	
	public void SetFont(int32 column, IQFont font)
	{
		this.handle.SetFont(column, font);
	}
	
	public int32 TextAlignment(int32 column)
	{
		return this.handle.TextAlignment(column);
	}
	
	public void SetTextAlignment(int32 column, int32 alignment)
	{
		this.handle.SetTextAlignment(column, alignment);
	}
	
	public void SetTextAlignment2(int32 column, int64 alignment)
	{
		this.handle.SetTextAlignment2(column, alignment);
	}
	
	public void SetTextAlignment3(int32 column, int64 alignment)
	{
		this.handle.SetTextAlignment3(column, alignment);
	}
	
	public void Background(int32 column)
	{
		this.handle.Background(column);
	}
	
	public void SetBackground(int32 column, IQBrush brush)
	{
		this.handle.SetBackground(column, brush);
	}
	
	public void Foreground(int32 column)
	{
		this.handle.Foreground(column);
	}
	
	public void SetForeground(int32 column, IQBrush brush)
	{
		this.handle.SetForeground(column, brush);
	}
	
	public int64 CheckState(int32 column)
	{
		return this.handle.CheckState(column);
	}
	
	public void SetCheckState(int32 column, int64 state)
	{
		this.handle.SetCheckState(column, state);
	}
	
	public void SizeHint(int32 column)
	{
		this.handle.SizeHint(column);
	}
	
	public void SetSizeHint(int32 column, IQSize size)
	{
		this.handle.SetSizeHint(column, size);
	}
	
	public virtual void Data(int32 column, int32 role)
	{
		this.handle.Data(column, role);
	}
	
	public virtual void SetData(int32 column, int32 role, IQVariant value)
	{
		this.handle.SetData(column, role, value);
	}
	
	public virtual bool OperatorLesser(IQTreeWidgetItem other)
	{
		return this.handle.OperatorLesser(other);
	}
	
	public virtual void Read(IQDataStream _in)
	{
		this.handle.Read(_in);
	}
	
	public virtual void Write(IQDataStream _out)
	{
		this.handle.Write(_out);
	}
	
	public void OperatorAssign(IQTreeWidgetItem other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public void* Child(int32 index)
	{
		return this.handle.Child(index);
	}
	
	public int32 ChildCount()
	{
		return this.handle.ChildCount();
	}
	
	public int32 ColumnCount()
	{
		return this.handle.ColumnCount();
	}
	
	public int32 IndexOfChild(IQTreeWidgetItem child)
	{
		return this.handle.IndexOfChild(child);
	}
	
	public void AddChild(IQTreeWidgetItem child)
	{
		this.handle.AddChild(child);
	}
	
	public void InsertChild(int32 index, IQTreeWidgetItem child)
	{
		this.handle.InsertChild(index, child);
	}
	
	public void RemoveChild(IQTreeWidgetItem child)
	{
		this.handle.RemoveChild(child);
	}
	
	public void* TakeChild(int32 index)
	{
		return this.handle.TakeChild(index);
	}
	
	public void AddChildren(IQTreeWidgetItem[] children)
	{
		this.handle.AddChildren(null);
	}
	
	public void InsertChildren(int32 index, IQTreeWidgetItem[] children)
	{
		this.handle.InsertChildren(index, null);
	}
	
	public void*[] TakeChildren()
	{
		return this.handle.TakeChildren();
	}
	
	public int32 Type()
	{
		return this.handle.Type();
	}
	
	public void SortChildren(int32 column, int64 order)
	{
		this.handle.SortChildren(column, order);
	}
	
	public void EmitDataChanged()
	{
		this.handle.EmitDataChanged();
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
public struct QTreeWidgetPtr : IQTreeWidget, IDisposable, IQTreeView
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQWidget parent)
	{
		return .(CQt.QTreeWidget_new((parent == default || parent.NativePtr == default) ? default : parent.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QTreeWidget_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QTreeWidget_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QTreeWidget_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QTreeWidget_Metacall(this.nativePtr, (int64)param1, param2, param3);
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
		CQt.QTreeWidget_InsertTopLevelItem(this.nativePtr, index, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void AddTopLevelItem(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_AddTopLevelItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* TakeTopLevelItem(int32 index)
	{
		return CQt.QTreeWidget_TakeTopLevelItem(this.nativePtr, index);
	}
	
	public int32 IndexOfTopLevelItem(IQTreeWidgetItem item)
	{
		return CQt.QTreeWidget_IndexOfTopLevelItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
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
		CQt.QTreeWidget_SetHeaderItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
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
		CQt.QTreeWidget_SetCurrentItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void SetCurrentItem2(IQTreeWidgetItem item, int32 column)
	{
		CQt.QTreeWidget_SetCurrentItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, column);
	}
	
	public void SetCurrentItem3(IQTreeWidgetItem item, int32 column, int64 command)
	{
		CQt.QTreeWidget_SetCurrentItem3(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, column, command);
	}
	
	public void* ItemAt(IQPoint p)
	{
		return CQt.QTreeWidget_ItemAt(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public void* ItemAt2(int32 x, int32 y)
	{
		return CQt.QTreeWidget_ItemAt2(this.nativePtr, x, y);
	}
	
	public void VisualItemRect(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_VisualItemRect(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public int32 SortColumn()
	{
		return CQt.QTreeWidget_SortColumn(this.nativePtr);
	}
	
	public void SortItems(int32 column, int64 order)
	{
		CQt.QTreeWidget_SortItems(this.nativePtr, column, (int64)order);
	}
	
	public void EditItem(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_EditItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void OpenPersistentEditor(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_OpenPersistentEditor(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void ClosePersistentEditor(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_ClosePersistentEditor(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public bool IsPersistentEditorOpen(IQTreeWidgetItem item)
	{
		return CQt.QTreeWidget_IsPersistentEditorOpen(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* ItemWidget(IQTreeWidgetItem item, int32 column)
	{
		return CQt.QTreeWidget_ItemWidget(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, column);
	}
	
	public void SetItemWidget(IQTreeWidgetItem item, int32 column, IQWidget widget)
	{
		CQt.QTreeWidget_SetItemWidget(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, column, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void RemoveItemWidget(IQTreeWidgetItem item, int32 column)
	{
		CQt.QTreeWidget_RemoveItemWidget(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, column);
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
		return CQt.QTreeWidget_ItemAbove(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* ItemBelow(IQTreeWidgetItem item)
	{
		return CQt.QTreeWidget_ItemBelow(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void IndexFromItem(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_IndexFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* ItemFromIndex(IQModelIndex index)
	{
		return CQt.QTreeWidget_ItemFromIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void SetSelectionModel(IQItemSelectionModel selectionModel)
	{
		CQt.QTreeWidget_SetSelectionModel(this.nativePtr, (selectionModel == default || selectionModel.NativePtr == default) ? default : selectionModel.NativePtr);
	}
	
	public void ScrollToItem(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_ScrollToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void ExpandItem(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_ExpandItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void CollapseItem(IQTreeWidgetItem item)
	{
		CQt.QTreeWidget_CollapseItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void Clear()
	{
		CQt.QTreeWidget_Clear(this.nativePtr);
	}
	
	public bool Event(IQEvent e)
	{
		return CQt.QTreeWidget_Event(this.nativePtr, (e == default || e.NativePtr == default) ? default : e.NativePtr);
	}
	
	public libqt_string[] MimeTypes()
	{
		return CQt.QTreeWidget_MimeTypes(this.nativePtr);
	}
	
	public void* MimeData(IQTreeWidgetItem[] items)
	{
		return CQt.QTreeWidget_MimeData(this.nativePtr, null);
	}
	
	public bool DropMimeData(IQTreeWidgetItem parent, int32 index, IQMimeData data, int64 action)
	{
		return CQt.QTreeWidget_DropMimeData(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, index, (data == default || data.NativePtr == default) ? default : data.NativePtr, (int64)action);
	}
	
	public int64 SupportedDropActions()
	{
		return CQt.QTreeWidget_SupportedDropActions(this.nativePtr);
	}
	
	public void DropEvent(IQDropEvent event)
	{
		CQt.QTreeWidget_DropEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
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
		CQt.QTreeWidget_EditItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, column);
	}
	
	public void OpenPersistentEditor2(IQTreeWidgetItem item, int32 column)
	{
		CQt.QTreeWidget_OpenPersistentEditor2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, column);
	}
	
	public void ClosePersistentEditor2(IQTreeWidgetItem item, int32 column)
	{
		CQt.QTreeWidget_ClosePersistentEditor2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, column);
	}
	
	public bool IsPersistentEditorOpen2(IQTreeWidgetItem item, int32 column)
	{
		return CQt.QTreeWidget_IsPersistentEditorOpen2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, column);
	}
	
	public void*[] FindItems3(String text, int64 flags, int32 column)
	{
		return CQt.QTreeWidget_FindItems3(this.nativePtr, libqt_string(text), flags, column);
	}
	
	public void IndexFromItem2(IQTreeWidgetItem item, int32 column)
	{
		CQt.QTreeWidget_IndexFromItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, column);
	}
	
	public void ScrollToItem2(IQTreeWidgetItem item, int64 hint)
	{
		CQt.QTreeWidget_ScrollToItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (int64)hint);
	}
	
	public void SetModel(IQAbstractItemModel model)
	{
		CQt.QTreeView_SetModel(this.nativePtr, (model == default || model.NativePtr == default) ? default : model.NativePtr);
	}
	
	public void SetRootIndex(IQModelIndex index)
	{
		CQt.QTreeView_SetRootIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void* Header()
	{
		return CQt.QTreeView_Header(this.nativePtr);
	}
	
	public void SetHeader(IQHeaderView header)
	{
		CQt.QTreeView_SetHeader(this.nativePtr, (header == default || header.NativePtr == default) ? default : header.NativePtr);
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
		return CQt.QTreeView_IsRowHidden(this.nativePtr, row, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetRowHidden(int32 row, IQModelIndex parent, bool hide)
	{
		CQt.QTreeView_SetRowHidden(this.nativePtr, row, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, hide);
	}
	
	public bool IsFirstColumnSpanned(int32 row, IQModelIndex parent)
	{
		return CQt.QTreeView_IsFirstColumnSpanned(this.nativePtr, row, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetFirstColumnSpanned(int32 row, IQModelIndex parent, bool span)
	{
		CQt.QTreeView_SetFirstColumnSpanned(this.nativePtr, row, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, span);
	}
	
	public bool IsExpanded(IQModelIndex index)
	{
		return CQt.QTreeView_IsExpanded(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void SetExpanded(IQModelIndex index, bool expand)
	{
		CQt.QTreeView_SetExpanded(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, expand);
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
	
	public void KeyboardSearch(String search)
	{
		CQt.QTreeView_KeyboardSearch(this.nativePtr, libqt_string(search));
	}
	
	public void VisualRect(IQModelIndex index)
	{
		CQt.QTreeView_VisualRect(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void ScrollTo(IQModelIndex index, int64 hint)
	{
		CQt.QTreeView_ScrollTo(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, (int64)hint);
	}
	
	public void IndexAt(IQPoint p)
	{
		CQt.QTreeView_IndexAt(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public void IndexAbove(IQModelIndex index)
	{
		CQt.QTreeView_IndexAbove(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void IndexBelow(IQModelIndex index)
	{
		CQt.QTreeView_IndexBelow(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void DoItemsLayout()
	{
		CQt.QTreeView_DoItemsLayout(this.nativePtr);
	}
	
	public void Reset()
	{
		CQt.QTreeView_Reset(this.nativePtr);
	}
	
	public void DataChanged(IQModelIndex topLeft, IQModelIndex bottomRight, int32[] roles)
	{
		CQt.QTreeView_DataChanged(this.nativePtr, (topLeft == default || topLeft.NativePtr == default) ? default : topLeft.NativePtr, (bottomRight == default || bottomRight.NativePtr == default) ? default : bottomRight.NativePtr, null);
	}
	
	public void SelectAll()
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
		CQt.QTreeView_Expand(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void Collapse(IQModelIndex index)
	{
		CQt.QTreeView_Collapse(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void ResizeColumnToContents(int32 column)
	{
		CQt.QTreeView_ResizeColumnToContents(this.nativePtr, column);
	}
	
	public void SortByColumn(int32 column, int64 order)
	{
		CQt.QTreeView_SortByColumn(this.nativePtr, column, (int64)order);
	}
	
	public void ExpandAll()
	{
		CQt.QTreeView_ExpandAll(this.nativePtr);
	}
	
	public void ExpandRecursively(IQModelIndex index)
	{
		CQt.QTreeView_ExpandRecursively(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
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
		CQt.QTreeView_ExpandRecursively2(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, depth);
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
		CQt.QAbstractItemView_SetItemDelegate(this.nativePtr, (_delegate == default || _delegate.NativePtr == default) ? default : _delegate.NativePtr);
	}
	
	public void* ItemDelegate()
	{
		return CQt.QAbstractItemView_ItemDelegate(this.nativePtr);
	}
	
	public void SetSelectionMode(int64 mode)
	{
		CQt.QAbstractItemView_SetSelectionMode(this.nativePtr, (int64)mode);
	}
	
	public int64 SelectionMode()
	{
		return CQt.QAbstractItemView_SelectionMode(this.nativePtr);
	}
	
	public void SetSelectionBehavior(int64 behavior)
	{
		CQt.QAbstractItemView_SetSelectionBehavior(this.nativePtr, (int64)behavior);
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
		CQt.QAbstractItemView_SetVerticalScrollMode(this.nativePtr, (int64)mode);
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
		CQt.QAbstractItemView_SetHorizontalScrollMode(this.nativePtr, (int64)mode);
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
		CQt.QAbstractItemView_SetDragDropMode(this.nativePtr, (int64)behavior);
	}
	
	public int64 DragDropMode()
	{
		return CQt.QAbstractItemView_DragDropMode(this.nativePtr);
	}
	
	public void SetDefaultDropAction(int64 dropAction)
	{
		CQt.QAbstractItemView_SetDefaultDropAction(this.nativePtr, (int64)dropAction);
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
		CQt.QAbstractItemView_SetIconSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void IconSize()
	{
		CQt.QAbstractItemView_IconSize(this.nativePtr);
	}
	
	public void SetTextElideMode(int64 mode)
	{
		CQt.QAbstractItemView_SetTextElideMode(this.nativePtr, (int64)mode);
	}
	
	public int64 TextElideMode()
	{
		return CQt.QAbstractItemView_TextElideMode(this.nativePtr);
	}
	
	public void SizeHintForIndex(IQModelIndex index)
	{
		CQt.QAbstractItemView_SizeHintForIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public int32 SizeHintForRow(int32 row)
	{
		return CQt.QAbstractItemView_SizeHintForRow(this.nativePtr, row);
	}
	
	public int32 SizeHintForColumn(int32 column)
	{
		return CQt.QAbstractItemView_SizeHintForColumn(this.nativePtr, column);
	}
	
	public void SetIndexWidget(IQModelIndex index, IQWidget widget)
	{
		CQt.QAbstractItemView_SetIndexWidget(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void* IndexWidget(IQModelIndex index)
	{
		return CQt.QAbstractItemView_IndexWidget(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void SetItemDelegateForRow(int32 row, IQAbstractItemDelegate _delegate)
	{
		CQt.QAbstractItemView_SetItemDelegateForRow(this.nativePtr, row, (_delegate == default || _delegate.NativePtr == default) ? default : _delegate.NativePtr);
	}
	
	public void* ItemDelegateForRow(int32 row)
	{
		return CQt.QAbstractItemView_ItemDelegateForRow(this.nativePtr, row);
	}
	
	public void SetItemDelegateForColumn(int32 column, IQAbstractItemDelegate _delegate)
	{
		CQt.QAbstractItemView_SetItemDelegateForColumn(this.nativePtr, column, (_delegate == default || _delegate.NativePtr == default) ? default : _delegate.NativePtr);
	}
	
	public void* ItemDelegateForColumn(int32 column)
	{
		return CQt.QAbstractItemView_ItemDelegateForColumn(this.nativePtr, column);
	}
	
	public void* ItemDelegateWithIndex(IQModelIndex index)
	{
		return CQt.QAbstractItemView_ItemDelegateWithIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void* ItemDelegateForIndex(IQModelIndex index)
	{
		return CQt.QAbstractItemView_ItemDelegateForIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void InputMethodQuery(int64 query)
	{
		CQt.QAbstractItemView_InputMethodQuery(this.nativePtr, (int64)query);
	}
	
	public void Edit(IQModelIndex index)
	{
		CQt.QAbstractItemView_Edit(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void ClearSelection()
	{
		CQt.QAbstractItemView_ClearSelection(this.nativePtr);
	}
	
	public void SetCurrentIndex(IQModelIndex index)
	{
		CQt.QAbstractItemView_SetCurrentIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
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
		CQt.QAbstractItemView_Update(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public int64 VerticalScrollBarPolicy()
	{
		return CQt.QAbstractScrollArea_VerticalScrollBarPolicy(this.nativePtr);
	}
	
	public void SetVerticalScrollBarPolicy(int64 verticalScrollBarPolicy)
	{
		CQt.QAbstractScrollArea_SetVerticalScrollBarPolicy(this.nativePtr, (int64)verticalScrollBarPolicy);
	}
	
	public void* VerticalScrollBar()
	{
		return CQt.QAbstractScrollArea_VerticalScrollBar(this.nativePtr);
	}
	
	public void SetVerticalScrollBar(IQScrollBar scrollbar)
	{
		CQt.QAbstractScrollArea_SetVerticalScrollBar(this.nativePtr, (scrollbar == default || scrollbar.NativePtr == default) ? default : scrollbar.NativePtr);
	}
	
	public int64 HorizontalScrollBarPolicy()
	{
		return CQt.QAbstractScrollArea_HorizontalScrollBarPolicy(this.nativePtr);
	}
	
	public void SetHorizontalScrollBarPolicy(int64 horizontalScrollBarPolicy)
	{
		CQt.QAbstractScrollArea_SetHorizontalScrollBarPolicy(this.nativePtr, (int64)horizontalScrollBarPolicy);
	}
	
	public void* HorizontalScrollBar()
	{
		return CQt.QAbstractScrollArea_HorizontalScrollBar(this.nativePtr);
	}
	
	public void SetHorizontalScrollBar(IQScrollBar scrollbar)
	{
		CQt.QAbstractScrollArea_SetHorizontalScrollBar(this.nativePtr, (scrollbar == default || scrollbar.NativePtr == default) ? default : scrollbar.NativePtr);
	}
	
	public void* CornerWidget()
	{
		return CQt.QAbstractScrollArea_CornerWidget(this.nativePtr);
	}
	
	public void SetCornerWidget(IQWidget widget)
	{
		CQt.QAbstractScrollArea_SetCornerWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void AddScrollBarWidget(IQWidget widget, int64 alignment)
	{
		CQt.QAbstractScrollArea_AddScrollBarWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr, alignment);
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
		CQt.QAbstractScrollArea_SetViewport(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void MaximumViewportSize()
	{
		CQt.QAbstractScrollArea_MaximumViewportSize(this.nativePtr);
	}
	
	public void MinimumSizeHint()
	{
		CQt.QAbstractScrollArea_MinimumSizeHint(this.nativePtr);
	}
	
	public void SizeHint()
	{
		CQt.QAbstractScrollArea_SizeHint(this.nativePtr);
	}
	
	public void SetupViewport(IQWidget viewport)
	{
		CQt.QAbstractScrollArea_SetupViewport(this.nativePtr, (viewport == default || viewport.NativePtr == default) ? default : viewport.NativePtr);
	}
	
	public int64 SizeAdjustPolicy()
	{
		return CQt.QAbstractScrollArea_SizeAdjustPolicy(this.nativePtr);
	}
	
	public void SetSizeAdjustPolicy(int64 policy)
	{
		CQt.QAbstractScrollArea_SetSizeAdjustPolicy(this.nativePtr, (int64)policy);
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
		CQt.QFrame_SetFrameShape(this.nativePtr, (int64)frameShape);
	}
	
	public int64 FrameShadow()
	{
		return CQt.QFrame_FrameShadow(this.nativePtr);
	}
	
	public void SetFrameShadow(int64 frameShadow)
	{
		CQt.QFrame_SetFrameShadow(this.nativePtr, (int64)frameShadow);
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
		CQt.QFrame_SetFrameRect(this.nativePtr, (frameRect == default || frameRect.NativePtr == default) ? default : frameRect.NativePtr);
	}
	
	public int32 DevType()
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
		CQt.QWidget_SetStyle(this.nativePtr, (style == default || style.NativePtr == default) ? default : style.NativePtr);
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
		CQt.QWidget_SetWindowModality(this.nativePtr, (int64)windowModality);
	}
	
	public bool IsEnabled()
	{
		return CQt.QWidget_IsEnabled(this.nativePtr);
	}
	
	public bool IsEnabledTo(IQWidget param1)
	{
		return CQt.QWidget_IsEnabledTo(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
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
		CQt.QWidget_SetMinimumSize(this.nativePtr, (minimumSize == default || minimumSize.NativePtr == default) ? default : minimumSize.NativePtr);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		CQt.QWidget_SetMinimumSize2(this.nativePtr, minw, minh);
	}
	
	public void SetMaximumSize(IQSize maximumSize)
	{
		CQt.QWidget_SetMaximumSize(this.nativePtr, (maximumSize == default || maximumSize.NativePtr == default) ? default : maximumSize.NativePtr);
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
		CQt.QWidget_SetSizeIncrement(this.nativePtr, (sizeIncrement == default || sizeIncrement.NativePtr == default) ? default : sizeIncrement.NativePtr);
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
		CQt.QWidget_SetBaseSize(this.nativePtr, (baseSize == default || baseSize.NativePtr == default) ? default : baseSize.NativePtr);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		CQt.QWidget_SetBaseSize2(this.nativePtr, basew, baseh);
	}
	
	public void SetFixedSize(IQSize fixedSize)
	{
		CQt.QWidget_SetFixedSize(this.nativePtr, (fixedSize == default || fixedSize.NativePtr == default) ? default : fixedSize.NativePtr);
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
		CQt.QWidget_MapToGlobal(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapToGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToGlobalWithQPoint(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapFromGlobal(IQPointF param1)
	{
		CQt.QWidget_MapFromGlobal(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapFromGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromGlobalWithQPoint(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapToParent(IQPointF param1)
	{
		CQt.QWidget_MapToParent(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapToParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToParentWithQPoint(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapFromParent(IQPointF param1)
	{
		CQt.QWidget_MapFromParent(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapFromParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromParentWithQPoint(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapTo(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapTo(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void MapTo2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapTo2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void MapFrom(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapFrom(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void MapFrom2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapFrom2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
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
		CQt.QWidget_SetPalette(this.nativePtr, (palette == default || palette.NativePtr == default) ? default : palette.NativePtr);
	}
	
	public void SetBackgroundRole(int64 backgroundRole)
	{
		CQt.QWidget_SetBackgroundRole(this.nativePtr, (int64)backgroundRole);
	}
	
	public int64 BackgroundRole()
	{
		return CQt.QWidget_BackgroundRole(this.nativePtr);
	}
	
	public void SetForegroundRole(int64 foregroundRole)
	{
		CQt.QWidget_SetForegroundRole(this.nativePtr, (int64)foregroundRole);
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
		CQt.QWidget_SetFont(this.nativePtr, (font == default || font.NativePtr == default) ? default : font.NativePtr);
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
		CQt.QWidget_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
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
		CQt.QWidget_SetMask(this.nativePtr, (mask == default || mask.NativePtr == default) ? default : mask.NativePtr);
	}
	
	public void SetMaskWithMask(IQRegion mask)
	{
		CQt.QWidget_SetMaskWithMask(this.nativePtr, (mask == default || mask.NativePtr == default) ? default : mask.NativePtr);
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
		CQt.QWidget_Render(this.nativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr);
	}
	
	public void RenderWithPainter(IQPainter painter)
	{
		CQt.QWidget_RenderWithPainter(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr);
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
		CQt.QWidget_SetGraphicsEffect(this.nativePtr, (effect == default || effect.NativePtr == default) ? default : effect.NativePtr);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QWidget_GrabGesture(this.nativePtr, (int64)typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QWidget_UngrabGesture(this.nativePtr, (int64)typeVal);
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
		CQt.QWidget_SetWindowIcon(this.nativePtr, (icon == default || icon.NativePtr == default) ? default : icon.NativePtr);
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
		CQt.QWidget_SetLayoutDirection(this.nativePtr, (int64)direction);
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
		CQt.QWidget_SetLocale(this.nativePtr, (locale == default || locale.NativePtr == default) ? default : locale.NativePtr);
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
		CQt.QWidget_SetFocusWithReason(this.nativePtr, (int64)reason);
	}
	
	public int64 FocusPolicy()
	{
		return CQt.QWidget_FocusPolicy(this.nativePtr);
	}
	
	public void SetFocusPolicy(int64 policy)
	{
		CQt.QWidget_SetFocusPolicy(this.nativePtr, (int64)policy);
	}
	
	public bool HasFocus()
	{
		return CQt.QWidget_HasFocus(this.nativePtr);
	}
	
	public static void SetTabOrder(IQWidget param1, IQWidget param2)
	{
		CQt.QWidget_SetTabOrder((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void SetFocusProxy(IQWidget focusProxy)
	{
		CQt.QWidget_SetFocusProxy(this.nativePtr, (focusProxy == default || focusProxy.NativePtr == default) ? default : focusProxy.NativePtr);
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
		CQt.QWidget_SetContextMenuPolicy(this.nativePtr, (int64)policy);
	}
	
	public void GrabMouse()
	{
		CQt.QWidget_GrabMouse(this.nativePtr);
	}
	
	public void GrabMouseWithQCursor(IQCursor param1)
	{
		CQt.QWidget_GrabMouseWithQCursor(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
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
		return CQt.QWidget_GrabShortcut(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr);
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
		CQt.QWidget_UpdateWithQRect(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void UpdateWithQRegion(IQRegion param1)
	{
		CQt.QWidget_UpdateWithQRegion(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Repaint2(this.nativePtr, x, y, w, h);
	}
	
	public void RepaintWithQRect(IQRect param1)
	{
		CQt.QWidget_RepaintWithQRect(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void RepaintWithQRegion(IQRegion param1)
	{
		CQt.QWidget_RepaintWithQRegion(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void SetVisible(bool visible)
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
		CQt.QWidget_StackUnder(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Move(int32 x, int32 y)
	{
		CQt.QWidget_Move(this.nativePtr, x, y);
	}
	
	public void MoveWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MoveWithQPoint(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Resize(int32 w, int32 h)
	{
		CQt.QWidget_Resize(this.nativePtr, w, h);
	}
	
	public void ResizeWithQSize(IQSize param1)
	{
		CQt.QWidget_ResizeWithQSize(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_SetGeometry(this.nativePtr, x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(IQRect geometry)
	{
		CQt.QWidget_SetGeometryWithGeometry(this.nativePtr, (geometry == default || geometry.NativePtr == default) ? default : geometry.NativePtr);
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
		return CQt.QWidget_IsVisibleTo(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
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
		CQt.QWidget_SetSizePolicy(this.nativePtr, default);
	}
	
	public void SetSizePolicy2(int64 horizontal, int64 vertical)
	{
		CQt.QWidget_SetSizePolicy2(this.nativePtr, (int64)horizontal, (int64)vertical);
	}
	
	public int32 HeightForWidth(int32 param1)
	{
		return CQt.QWidget_HeightForWidth(this.nativePtr, param1);
	}
	
	public bool HasHeightForWidth()
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
		CQt.QWidget_SetContentsMarginsWithMargins(this.nativePtr, (margins == default || margins.NativePtr == default) ? default : margins.NativePtr);
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
		CQt.QWidget_SetLayout(this.nativePtr, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr);
	}
	
	public void UpdateGeometry()
	{
		CQt.QWidget_UpdateGeometry(this.nativePtr);
	}
	
	public void SetParent(IQWidget parent)
	{
		CQt.QWidget_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetParent2(IQWidget parent, int64 f)
	{
		CQt.QWidget_SetParent2(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		CQt.QWidget_Scroll(this.nativePtr, dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, IQRect param3)
	{
		CQt.QWidget_Scroll2(this.nativePtr, dx, dy, (param3 == default || param3.NativePtr == default) ? default : param3.NativePtr);
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
		CQt.QWidget_AddAction(this.nativePtr, (action == default || action.NativePtr == default) ? default : action.NativePtr);
	}
	
	public void AddActions(IQAction[] actions)
	{
		CQt.QWidget_AddActions(this.nativePtr, null);
	}
	
	public void InsertActions(IQAction before, IQAction[] actions)
	{
		CQt.QWidget_InsertActions(this.nativePtr, (before == default || before.NativePtr == default) ? default : before.NativePtr, null);
	}
	
	public void InsertAction(IQAction before, IQAction action)
	{
		CQt.QWidget_InsertAction(this.nativePtr, (before == default || before.NativePtr == default) ? default : before.NativePtr, (action == default || action.NativePtr == default) ? default : action.NativePtr);
	}
	
	public void RemoveAction(IQAction action)
	{
		CQt.QWidget_RemoveAction(this.nativePtr, (action == default || action.NativePtr == default) ? default : action.NativePtr);
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
		return CQt.QWidget_AddAction2(this.nativePtr, (icon == default || icon.NativePtr == default) ? default : icon.NativePtr, libqt_string(text));
	}
	
	public void* AddAction3(String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction3(this.nativePtr, libqt_string(text), (shortcut == default || shortcut.NativePtr == default) ? default : shortcut.NativePtr);
	}
	
	public void* AddAction4(IQIcon icon, String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction4(this.nativePtr, (icon == default || icon.NativePtr == default) ? default : icon.NativePtr, libqt_string(text), (shortcut == default || shortcut.NativePtr == default) ? default : shortcut.NativePtr);
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
		CQt.QWidget_SetWindowFlag(this.nativePtr, (int64)param1);
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
		return CQt.QWidget_ChildAtWithQPoint(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public void SetAttribute(int64 param1)
	{
		CQt.QWidget_SetAttribute(this.nativePtr, (int64)param1);
	}
	
	public bool TestAttribute(int64 param1)
	{
		return CQt.QWidget_TestAttribute(this.nativePtr, (int64)param1);
	}
	
	public void* PaintEngine()
	{
		return CQt.QWidget_PaintEngine(this.nativePtr);
	}
	
	public void EnsurePolished()
	{
		CQt.QWidget_EnsurePolished(this.nativePtr);
	}
	
	public bool IsAncestorOf(IQWidget child)
	{
		return CQt.QWidget_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
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
		CQt.QWidget_SetScreen(this.nativePtr, (screen == default || screen.NativePtr == default) ? default : screen.NativePtr);
	}
	
	public static void* CreateWindowContainer(IQWindow window)
	{
		return CQt.QWidget_CreateWindowContainer((window == default || window.NativePtr == default) ? default : window.NativePtr);
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
		CQt.QWidget_Render2(this.nativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr);
	}
	
	public void Render3(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render3(this.nativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr, (sourceRegion == default || sourceRegion.NativePtr == default) ? default : sourceRegion.NativePtr);
	}
	
	public void Render4(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render4(this.nativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr, (sourceRegion == default || sourceRegion.NativePtr == default) ? default : sourceRegion.NativePtr, renderFlags);
	}
	
	public void Render22(IQPainter painter, IQPoint targetOffset)
	{
		CQt.QWidget_Render22(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr);
	}
	
	public void Render32(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render32(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr, (sourceRegion == default || sourceRegion.NativePtr == default) ? default : sourceRegion.NativePtr);
	}
	
	public void Render42(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render42(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr, (sourceRegion == default || sourceRegion.NativePtr == default) ? default : sourceRegion.NativePtr, renderFlags);
	}
	
	public void Grab1(IQRect rectangle)
	{
		CQt.QWidget_Grab1(this.nativePtr, (rectangle == default || rectangle.NativePtr == default) ? default : rectangle.NativePtr);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QWidget_GrabGesture2(this.nativePtr, (int64)typeVal, flags);
	}
	
	public int32 GrabShortcut2(IQKeySequence key, int64 context)
	{
		return CQt.QWidget_GrabShortcut2(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr, (int64)context);
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
		CQt.QWidget_SetWindowFlag2(this.nativePtr, (int64)param1, on);
	}
	
	public void SetAttribute2(int64 param1, bool on)
	{
		CQt.QWidget_SetAttribute2(this.nativePtr, (int64)param1, on);
	}
	
	public static void* CreateWindowContainer2(IQWindow window, IQWidget parent)
	{
		return CQt.QWidget_CreateWindowContainer2((window == default || window.NativePtr == default) ? default : window.NativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public static void* CreateWindowContainer3(IQWindow window, IQWidget parent, int64 flags)
	{
		return CQt.QWidget_CreateWindowContainer3((window == default || window.NativePtr == default) ? default : window.NativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, flags);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(char8* name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
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
		CQt.QObject_MoveToThread(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
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
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (member == default || member.NativePtr == default) ? default : member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
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
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default || value.NativePtr == default) ? default : value.NativePtr);
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
		return CQt.QObject_StartTimer2(this.nativePtr, interval, (int64)timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr, (int64)typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member, (int64)typeVal);
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
public class QTreeWidget
{
	public QTreeWidgetPtr handle;
	
	public static implicit operator QTreeWidgetPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQWidget parent)
	{
		this.handle = QTreeWidgetPtr.New(parent);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* MetaObject()
	{
		return this.handle.MetaObject();
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return this.handle.Metacast(param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return this.handle.Metacall(param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return QTreeWidgetPtr.Tr(s);
	}
	
	public int32 ColumnCount()
	{
		return this.handle.ColumnCount();
	}
	
	public void SetColumnCount(int32 columns)
	{
		this.handle.SetColumnCount(columns);
	}
	
	public void* InvisibleRootItem()
	{
		return this.handle.InvisibleRootItem();
	}
	
	public void* TopLevelItem(int32 index)
	{
		return this.handle.TopLevelItem(index);
	}
	
	public int32 TopLevelItemCount()
	{
		return this.handle.TopLevelItemCount();
	}
	
	public void InsertTopLevelItem(int32 index, IQTreeWidgetItem item)
	{
		this.handle.InsertTopLevelItem(index, item);
	}
	
	public void AddTopLevelItem(IQTreeWidgetItem item)
	{
		this.handle.AddTopLevelItem(item);
	}
	
	public void* TakeTopLevelItem(int32 index)
	{
		return this.handle.TakeTopLevelItem(index);
	}
	
	public int32 IndexOfTopLevelItem(IQTreeWidgetItem item)
	{
		return this.handle.IndexOfTopLevelItem(item);
	}
	
	public void InsertTopLevelItems(int32 index, IQTreeWidgetItem[] items)
	{
		this.handle.InsertTopLevelItems(index, null);
	}
	
	public void AddTopLevelItems(IQTreeWidgetItem[] items)
	{
		this.handle.AddTopLevelItems(null);
	}
	
	public void* HeaderItem()
	{
		return this.handle.HeaderItem();
	}
	
	public void SetHeaderItem(IQTreeWidgetItem item)
	{
		this.handle.SetHeaderItem(item);
	}
	
	public void SetHeaderLabels(String[] labels)
	{
		this.handle.SetHeaderLabels(null);
	}
	
	public void SetHeaderLabel(String label)
	{
		this.handle.SetHeaderLabel(label);
	}
	
	public void* CurrentItem()
	{
		return this.handle.CurrentItem();
	}
	
	public int32 CurrentColumn()
	{
		return this.handle.CurrentColumn();
	}
	
	public void SetCurrentItem(IQTreeWidgetItem item)
	{
		this.handle.SetCurrentItem(item);
	}
	
	public void SetCurrentItem2(IQTreeWidgetItem item, int32 column)
	{
		this.handle.SetCurrentItem2(item, column);
	}
	
	public void SetCurrentItem3(IQTreeWidgetItem item, int32 column, int64 command)
	{
		this.handle.SetCurrentItem3(item, column, command);
	}
	
	public void* ItemAt(IQPoint p)
	{
		return this.handle.ItemAt(p);
	}
	
	public void* ItemAt2(int32 x, int32 y)
	{
		return this.handle.ItemAt2(x, y);
	}
	
	public void VisualItemRect(IQTreeWidgetItem item)
	{
		this.handle.VisualItemRect(item);
	}
	
	public int32 SortColumn()
	{
		return this.handle.SortColumn();
	}
	
	public void SortItems(int32 column, int64 order)
	{
		this.handle.SortItems(column, order);
	}
	
	public void EditItem(IQTreeWidgetItem item)
	{
		this.handle.EditItem(item);
	}
	
	public void OpenPersistentEditor(IQTreeWidgetItem item)
	{
		this.handle.OpenPersistentEditor(item);
	}
	
	public void ClosePersistentEditor(IQTreeWidgetItem item)
	{
		this.handle.ClosePersistentEditor(item);
	}
	
	public bool IsPersistentEditorOpen(IQTreeWidgetItem item)
	{
		return this.handle.IsPersistentEditorOpen(item);
	}
	
	public void* ItemWidget(IQTreeWidgetItem item, int32 column)
	{
		return this.handle.ItemWidget(item, column);
	}
	
	public void SetItemWidget(IQTreeWidgetItem item, int32 column, IQWidget widget)
	{
		this.handle.SetItemWidget(item, column, widget);
	}
	
	public void RemoveItemWidget(IQTreeWidgetItem item, int32 column)
	{
		this.handle.RemoveItemWidget(item, column);
	}
	
	public void*[] SelectedItems()
	{
		return this.handle.SelectedItems();
	}
	
	public void*[] FindItems(String text, int64 flags)
	{
		return this.handle.FindItems(text, flags);
	}
	
	public void* ItemAbove(IQTreeWidgetItem item)
	{
		return this.handle.ItemAbove(item);
	}
	
	public void* ItemBelow(IQTreeWidgetItem item)
	{
		return this.handle.ItemBelow(item);
	}
	
	public void IndexFromItem(IQTreeWidgetItem item)
	{
		this.handle.IndexFromItem(item);
	}
	
	public void* ItemFromIndex(IQModelIndex index)
	{
		return this.handle.ItemFromIndex(index);
	}
	
	public virtual void SetSelectionModel(IQItemSelectionModel selectionModel)
	{
		this.handle.SetSelectionModel(selectionModel);
	}
	
	public void ScrollToItem(IQTreeWidgetItem item)
	{
		this.handle.ScrollToItem(item);
	}
	
	public void ExpandItem(IQTreeWidgetItem item)
	{
		this.handle.ExpandItem(item);
	}
	
	public void CollapseItem(IQTreeWidgetItem item)
	{
		this.handle.CollapseItem(item);
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
	public virtual bool Event(IQEvent e)
	{
		return this.handle.Event(e);
	}
	
	public virtual libqt_string[] MimeTypes()
	{
		return this.handle.MimeTypes();
	}
	
	public virtual void* MimeData(IQTreeWidgetItem[] items)
	{
		return this.handle.MimeData(null);
	}
	
	public virtual bool DropMimeData(IQTreeWidgetItem parent, int32 index, IQMimeData data, int64 action)
	{
		return this.handle.DropMimeData(parent, index, data, action);
	}
	
	public virtual int64 SupportedDropActions()
	{
		return this.handle.SupportedDropActions();
	}
	
	public virtual void DropEvent(IQDropEvent event)
	{
		this.handle.DropEvent(event);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QTreeWidgetPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QTreeWidgetPtr.Tr3(s, c, n);
	}
	
	public void EditItem2(IQTreeWidgetItem item, int32 column)
	{
		this.handle.EditItem2(item, column);
	}
	
	public void OpenPersistentEditor2(IQTreeWidgetItem item, int32 column)
	{
		this.handle.OpenPersistentEditor2(item, column);
	}
	
	public void ClosePersistentEditor2(IQTreeWidgetItem item, int32 column)
	{
		this.handle.ClosePersistentEditor2(item, column);
	}
	
	public bool IsPersistentEditorOpen2(IQTreeWidgetItem item, int32 column)
	{
		return this.handle.IsPersistentEditorOpen2(item, column);
	}
	
	public void*[] FindItems3(String text, int64 flags, int32 column)
	{
		return this.handle.FindItems3(text, flags, column);
	}
	
	public void IndexFromItem2(IQTreeWidgetItem item, int32 column)
	{
		this.handle.IndexFromItem2(item, column);
	}
	
	public void ScrollToItem2(IQTreeWidgetItem item, int64 hint)
	{
		this.handle.ScrollToItem2(item, hint);
	}
	
	public virtual void SetModel(IQAbstractItemModel model)
	{
		this.handle.SetModel(model);
	}
	
	public virtual void SetRootIndex(IQModelIndex index)
	{
		this.handle.SetRootIndex(index);
	}
	
	public void* Header()
	{
		return this.handle.Header();
	}
	
	public void SetHeader(IQHeaderView header)
	{
		this.handle.SetHeader(header);
	}
	
	public int32 AutoExpandDelay()
	{
		return this.handle.AutoExpandDelay();
	}
	
	public void SetAutoExpandDelay(int32 delay)
	{
		this.handle.SetAutoExpandDelay(delay);
	}
	
	public int32 Indentation()
	{
		return this.handle.Indentation();
	}
	
	public void SetIndentation(int32 i)
	{
		this.handle.SetIndentation(i);
	}
	
	public void ResetIndentation()
	{
		this.handle.ResetIndentation();
	}
	
	public bool RootIsDecorated()
	{
		return this.handle.RootIsDecorated();
	}
	
	public void SetRootIsDecorated(bool show)
	{
		this.handle.SetRootIsDecorated(show);
	}
	
	public bool UniformRowHeights()
	{
		return this.handle.UniformRowHeights();
	}
	
	public void SetUniformRowHeights(bool uniform)
	{
		this.handle.SetUniformRowHeights(uniform);
	}
	
	public bool ItemsExpandable()
	{
		return this.handle.ItemsExpandable();
	}
	
	public void SetItemsExpandable(bool enable)
	{
		this.handle.SetItemsExpandable(enable);
	}
	
	public bool ExpandsOnDoubleClick()
	{
		return this.handle.ExpandsOnDoubleClick();
	}
	
	public void SetExpandsOnDoubleClick(bool enable)
	{
		this.handle.SetExpandsOnDoubleClick(enable);
	}
	
	public int32 ColumnViewportPosition(int32 column)
	{
		return this.handle.ColumnViewportPosition(column);
	}
	
	public int32 ColumnWidth(int32 column)
	{
		return this.handle.ColumnWidth(column);
	}
	
	public void SetColumnWidth(int32 column, int32 width)
	{
		this.handle.SetColumnWidth(column, width);
	}
	
	public int32 ColumnAt(int32 x)
	{
		return this.handle.ColumnAt(x);
	}
	
	public bool IsColumnHidden(int32 column)
	{
		return this.handle.IsColumnHidden(column);
	}
	
	public void SetColumnHidden(int32 column, bool hide)
	{
		this.handle.SetColumnHidden(column, hide);
	}
	
	public bool IsHeaderHidden()
	{
		return this.handle.IsHeaderHidden();
	}
	
	public void SetHeaderHidden(bool hide)
	{
		this.handle.SetHeaderHidden(hide);
	}
	
	public bool IsRowHidden(int32 row, IQModelIndex parent)
	{
		return this.handle.IsRowHidden(row, parent);
	}
	
	public void SetRowHidden(int32 row, IQModelIndex parent, bool hide)
	{
		this.handle.SetRowHidden(row, parent, hide);
	}
	
	public bool IsFirstColumnSpanned(int32 row, IQModelIndex parent)
	{
		return this.handle.IsFirstColumnSpanned(row, parent);
	}
	
	public void SetFirstColumnSpanned(int32 row, IQModelIndex parent, bool span)
	{
		this.handle.SetFirstColumnSpanned(row, parent, span);
	}
	
	public bool IsExpanded(IQModelIndex index)
	{
		return this.handle.IsExpanded(index);
	}
	
	public void SetExpanded(IQModelIndex index, bool expand)
	{
		this.handle.SetExpanded(index, expand);
	}
	
	public void SetSortingEnabled(bool enable)
	{
		this.handle.SetSortingEnabled(enable);
	}
	
	public bool IsSortingEnabled()
	{
		return this.handle.IsSortingEnabled();
	}
	
	public void SetAnimated(bool enable)
	{
		this.handle.SetAnimated(enable);
	}
	
	public bool IsAnimated()
	{
		return this.handle.IsAnimated();
	}
	
	public void SetAllColumnsShowFocus(bool enable)
	{
		this.handle.SetAllColumnsShowFocus(enable);
	}
	
	public bool AllColumnsShowFocus()
	{
		return this.handle.AllColumnsShowFocus();
	}
	
	public void SetWordWrap(bool on)
	{
		this.handle.SetWordWrap(on);
	}
	
	public bool WordWrap()
	{
		return this.handle.WordWrap();
	}
	
	public void SetTreePosition(int32 logicalIndex)
	{
		this.handle.SetTreePosition(logicalIndex);
	}
	
	public int32 TreePosition()
	{
		return this.handle.TreePosition();
	}
	
	public virtual void KeyboardSearch(String search)
	{
		this.handle.KeyboardSearch(search);
	}
	
	public virtual void VisualRect(IQModelIndex index)
	{
		this.handle.VisualRect(index);
	}
	
	public virtual void ScrollTo(IQModelIndex index, int64 hint)
	{
		this.handle.ScrollTo(index, hint);
	}
	
	public virtual void IndexAt(IQPoint p)
	{
		this.handle.IndexAt(p);
	}
	
	public void IndexAbove(IQModelIndex index)
	{
		this.handle.IndexAbove(index);
	}
	
	public void IndexBelow(IQModelIndex index)
	{
		this.handle.IndexBelow(index);
	}
	
	public virtual void DoItemsLayout()
	{
		this.handle.DoItemsLayout();
	}
	
	public virtual void Reset()
	{
		this.handle.Reset();
	}
	
	public virtual void DataChanged(IQModelIndex topLeft, IQModelIndex bottomRight, int32[] roles)
	{
		this.handle.DataChanged(topLeft, bottomRight, null);
	}
	
	public virtual void SelectAll()
	{
		this.handle.SelectAll();
	}
	
	public void HideColumn(int32 column)
	{
		this.handle.HideColumn(column);
	}
	
	public void ShowColumn(int32 column)
	{
		this.handle.ShowColumn(column);
	}
	
	public void Expand(IQModelIndex index)
	{
		this.handle.Expand(index);
	}
	
	public void Collapse(IQModelIndex index)
	{
		this.handle.Collapse(index);
	}
	
	public void ResizeColumnToContents(int32 column)
	{
		this.handle.ResizeColumnToContents(column);
	}
	
	public void SortByColumn(int32 column, int64 order)
	{
		this.handle.SortByColumn(column, order);
	}
	
	public void ExpandAll()
	{
		this.handle.ExpandAll();
	}
	
	public void ExpandRecursively(IQModelIndex index)
	{
		this.handle.ExpandRecursively(index);
	}
	
	public void CollapseAll()
	{
		this.handle.CollapseAll();
	}
	
	public void ExpandToDepth(int32 depth)
	{
		this.handle.ExpandToDepth(depth);
	}
	
	public void ExpandRecursively2(IQModelIndex index, int32 depth)
	{
		this.handle.ExpandRecursively2(index, depth);
	}
	
	public void* Model()
	{
		return this.handle.Model();
	}
	
	public void* SelectionModel()
	{
		return this.handle.SelectionModel();
	}
	
	public void SetItemDelegate(IQAbstractItemDelegate _delegate)
	{
		this.handle.SetItemDelegate(_delegate);
	}
	
	public void* ItemDelegate()
	{
		return this.handle.ItemDelegate();
	}
	
	public void SetSelectionMode(int64 mode)
	{
		this.handle.SetSelectionMode(mode);
	}
	
	public int64 SelectionMode()
	{
		return this.handle.SelectionMode();
	}
	
	public void SetSelectionBehavior(int64 behavior)
	{
		this.handle.SetSelectionBehavior(behavior);
	}
	
	public int64 SelectionBehavior()
	{
		return this.handle.SelectionBehavior();
	}
	
	public void CurrentIndex()
	{
		this.handle.CurrentIndex();
	}
	
	public void RootIndex()
	{
		this.handle.RootIndex();
	}
	
	public void SetEditTriggers(int64 triggers)
	{
		this.handle.SetEditTriggers(triggers);
	}
	
	public int64 EditTriggers()
	{
		return this.handle.EditTriggers();
	}
	
	public void SetVerticalScrollMode(int64 mode)
	{
		this.handle.SetVerticalScrollMode(mode);
	}
	
	public int64 VerticalScrollMode()
	{
		return this.handle.VerticalScrollMode();
	}
	
	public void ResetVerticalScrollMode()
	{
		this.handle.ResetVerticalScrollMode();
	}
	
	public void SetHorizontalScrollMode(int64 mode)
	{
		this.handle.SetHorizontalScrollMode(mode);
	}
	
	public int64 HorizontalScrollMode()
	{
		return this.handle.HorizontalScrollMode();
	}
	
	public void ResetHorizontalScrollMode()
	{
		this.handle.ResetHorizontalScrollMode();
	}
	
	public void SetAutoScroll(bool enable)
	{
		this.handle.SetAutoScroll(enable);
	}
	
	public bool HasAutoScroll()
	{
		return this.handle.HasAutoScroll();
	}
	
	public void SetAutoScrollMargin(int32 margin)
	{
		this.handle.SetAutoScrollMargin(margin);
	}
	
	public int32 AutoScrollMargin()
	{
		return this.handle.AutoScrollMargin();
	}
	
	public void SetTabKeyNavigation(bool enable)
	{
		this.handle.SetTabKeyNavigation(enable);
	}
	
	public bool TabKeyNavigation()
	{
		return this.handle.TabKeyNavigation();
	}
	
	public void SetDropIndicatorShown(bool enable)
	{
		this.handle.SetDropIndicatorShown(enable);
	}
	
	public bool ShowDropIndicator()
	{
		return this.handle.ShowDropIndicator();
	}
	
	public void SetDragEnabled(bool enable)
	{
		this.handle.SetDragEnabled(enable);
	}
	
	public bool DragEnabled()
	{
		return this.handle.DragEnabled();
	}
	
	public void SetDragDropOverwriteMode(bool overwrite)
	{
		this.handle.SetDragDropOverwriteMode(overwrite);
	}
	
	public bool DragDropOverwriteMode()
	{
		return this.handle.DragDropOverwriteMode();
	}
	
	public void SetDragDropMode(int64 behavior)
	{
		this.handle.SetDragDropMode(behavior);
	}
	
	public int64 DragDropMode()
	{
		return this.handle.DragDropMode();
	}
	
	public void SetDefaultDropAction(int64 dropAction)
	{
		this.handle.SetDefaultDropAction(dropAction);
	}
	
	public int64 DefaultDropAction()
	{
		return this.handle.DefaultDropAction();
	}
	
	public void SetAlternatingRowColors(bool enable)
	{
		this.handle.SetAlternatingRowColors(enable);
	}
	
	public bool AlternatingRowColors()
	{
		return this.handle.AlternatingRowColors();
	}
	
	public void SetIconSize(IQSize size)
	{
		this.handle.SetIconSize(size);
	}
	
	public void IconSize()
	{
		this.handle.IconSize();
	}
	
	public void SetTextElideMode(int64 mode)
	{
		this.handle.SetTextElideMode(mode);
	}
	
	public int64 TextElideMode()
	{
		return this.handle.TextElideMode();
	}
	
	public void SizeHintForIndex(IQModelIndex index)
	{
		this.handle.SizeHintForIndex(index);
	}
	
	public virtual int32 SizeHintForRow(int32 row)
	{
		return this.handle.SizeHintForRow(row);
	}
	
	public virtual int32 SizeHintForColumn(int32 column)
	{
		return this.handle.SizeHintForColumn(column);
	}
	
	public void SetIndexWidget(IQModelIndex index, IQWidget widget)
	{
		this.handle.SetIndexWidget(index, widget);
	}
	
	public void* IndexWidget(IQModelIndex index)
	{
		return this.handle.IndexWidget(index);
	}
	
	public void SetItemDelegateForRow(int32 row, IQAbstractItemDelegate _delegate)
	{
		this.handle.SetItemDelegateForRow(row, _delegate);
	}
	
	public void* ItemDelegateForRow(int32 row)
	{
		return this.handle.ItemDelegateForRow(row);
	}
	
	public void SetItemDelegateForColumn(int32 column, IQAbstractItemDelegate _delegate)
	{
		this.handle.SetItemDelegateForColumn(column, _delegate);
	}
	
	public void* ItemDelegateForColumn(int32 column)
	{
		return this.handle.ItemDelegateForColumn(column);
	}
	
	public void* ItemDelegateWithIndex(IQModelIndex index)
	{
		return this.handle.ItemDelegateWithIndex(index);
	}
	
	public virtual void* ItemDelegateForIndex(IQModelIndex index)
	{
		return this.handle.ItemDelegateForIndex(index);
	}
	
	public virtual void InputMethodQuery(int64 query)
	{
		this.handle.InputMethodQuery(query);
	}
	
	public void Edit(IQModelIndex index)
	{
		this.handle.Edit(index);
	}
	
	public void ClearSelection()
	{
		this.handle.ClearSelection();
	}
	
	public void SetCurrentIndex(IQModelIndex index)
	{
		this.handle.SetCurrentIndex(index);
	}
	
	public void ScrollToTop()
	{
		this.handle.ScrollToTop();
	}
	
	public void ScrollToBottom()
	{
		this.handle.ScrollToBottom();
	}
	
	public void Update(IQModelIndex index)
	{
		this.handle.Update(index);
	}
	
	public int64 VerticalScrollBarPolicy()
	{
		return this.handle.VerticalScrollBarPolicy();
	}
	
	public void SetVerticalScrollBarPolicy(int64 verticalScrollBarPolicy)
	{
		this.handle.SetVerticalScrollBarPolicy(verticalScrollBarPolicy);
	}
	
	public void* VerticalScrollBar()
	{
		return this.handle.VerticalScrollBar();
	}
	
	public void SetVerticalScrollBar(IQScrollBar scrollbar)
	{
		this.handle.SetVerticalScrollBar(scrollbar);
	}
	
	public int64 HorizontalScrollBarPolicy()
	{
		return this.handle.HorizontalScrollBarPolicy();
	}
	
	public void SetHorizontalScrollBarPolicy(int64 horizontalScrollBarPolicy)
	{
		this.handle.SetHorizontalScrollBarPolicy(horizontalScrollBarPolicy);
	}
	
	public void* HorizontalScrollBar()
	{
		return this.handle.HorizontalScrollBar();
	}
	
	public void SetHorizontalScrollBar(IQScrollBar scrollbar)
	{
		this.handle.SetHorizontalScrollBar(scrollbar);
	}
	
	public void* CornerWidget()
	{
		return this.handle.CornerWidget();
	}
	
	public void SetCornerWidget(IQWidget widget)
	{
		this.handle.SetCornerWidget(widget);
	}
	
	public void AddScrollBarWidget(IQWidget widget, int64 alignment)
	{
		this.handle.AddScrollBarWidget(widget, alignment);
	}
	
	public void*[] ScrollBarWidgets(int64 alignment)
	{
		return this.handle.ScrollBarWidgets(alignment);
	}
	
	public void* Viewport()
	{
		return this.handle.Viewport();
	}
	
	public void SetViewport(IQWidget widget)
	{
		this.handle.SetViewport(widget);
	}
	
	public void MaximumViewportSize()
	{
		this.handle.MaximumViewportSize();
	}
	
	public virtual void MinimumSizeHint()
	{
		this.handle.MinimumSizeHint();
	}
	
	public virtual void SizeHint()
	{
		this.handle.SizeHint();
	}
	
	public virtual void SetupViewport(IQWidget viewport)
	{
		this.handle.SetupViewport(viewport);
	}
	
	public int64 SizeAdjustPolicy()
	{
		return this.handle.SizeAdjustPolicy();
	}
	
	public void SetSizeAdjustPolicy(int64 policy)
	{
		this.handle.SetSizeAdjustPolicy(policy);
	}
	
	public int32 FrameStyle()
	{
		return this.handle.FrameStyle();
	}
	
	public void SetFrameStyle(int32 frameStyle)
	{
		this.handle.SetFrameStyle(frameStyle);
	}
	
	public int32 FrameWidth()
	{
		return this.handle.FrameWidth();
	}
	
	public int64 FrameShape()
	{
		return this.handle.FrameShape();
	}
	
	public void SetFrameShape(int64 frameShape)
	{
		this.handle.SetFrameShape(frameShape);
	}
	
	public int64 FrameShadow()
	{
		return this.handle.FrameShadow();
	}
	
	public void SetFrameShadow(int64 frameShadow)
	{
		this.handle.SetFrameShadow(frameShadow);
	}
	
	public int32 LineWidth()
	{
		return this.handle.LineWidth();
	}
	
	public void SetLineWidth(int32 lineWidth)
	{
		this.handle.SetLineWidth(lineWidth);
	}
	
	public int32 MidLineWidth()
	{
		return this.handle.MidLineWidth();
	}
	
	public void SetMidLineWidth(int32 midLineWidth)
	{
		this.handle.SetMidLineWidth(midLineWidth);
	}
	
	public void FrameRect()
	{
		this.handle.FrameRect();
	}
	
	public void SetFrameRect(IQRect frameRect)
	{
		this.handle.SetFrameRect(frameRect);
	}
	
	public virtual int32 DevType()
	{
		return this.handle.DevType();
	}
	
	public c_uintptr WinId()
	{
		return this.handle.WinId();
	}
	
	public void CreateWinId()
	{
		this.handle.CreateWinId();
	}
	
	public c_uintptr InternalWinId()
	{
		return this.handle.InternalWinId();
	}
	
	public c_uintptr EffectiveWinId()
	{
		return this.handle.EffectiveWinId();
	}
	
	public void* Style()
	{
		return this.handle.Style();
	}
	
	public void SetStyle(IQStyle style)
	{
		this.handle.SetStyle(style);
	}
	
	public bool IsTopLevel()
	{
		return this.handle.IsTopLevel();
	}
	
	public bool IsWindow()
	{
		return this.handle.IsWindow();
	}
	
	public bool IsModal()
	{
		return this.handle.IsModal();
	}
	
	public int64 WindowModality()
	{
		return this.handle.WindowModality();
	}
	
	public void SetWindowModality(int64 windowModality)
	{
		this.handle.SetWindowModality(windowModality);
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public bool IsEnabledTo(IQWidget param1)
	{
		return this.handle.IsEnabledTo(param1);
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public void SetDisabled(bool disabled)
	{
		this.handle.SetDisabled(disabled);
	}
	
	public void SetWindowModified(bool windowModified)
	{
		this.handle.SetWindowModified(windowModified);
	}
	
	public void FrameGeometry()
	{
		this.handle.FrameGeometry();
	}
	
	public void* Geometry()
	{
		return this.handle.Geometry();
	}
	
	public void NormalGeometry()
	{
		this.handle.NormalGeometry();
	}
	
	public int32 X()
	{
		return this.handle.X();
	}
	
	public int32 Y()
	{
		return this.handle.Y();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public void FrameSize()
	{
		this.handle.FrameSize();
	}
	
	public void Size()
	{
		this.handle.Size();
	}
	
	public int32 Width()
	{
		return this.handle.Width();
	}
	
	public int32 Height()
	{
		return this.handle.Height();
	}
	
	public void Rect()
	{
		this.handle.Rect();
	}
	
	public void ChildrenRect()
	{
		this.handle.ChildrenRect();
	}
	
	public void ChildrenRegion()
	{
		this.handle.ChildrenRegion();
	}
	
	public void MinimumSize()
	{
		this.handle.MinimumSize();
	}
	
	public void MaximumSize()
	{
		this.handle.MaximumSize();
	}
	
	public int32 MinimumWidth()
	{
		return this.handle.MinimumWidth();
	}
	
	public int32 MinimumHeight()
	{
		return this.handle.MinimumHeight();
	}
	
	public int32 MaximumWidth()
	{
		return this.handle.MaximumWidth();
	}
	
	public int32 MaximumHeight()
	{
		return this.handle.MaximumHeight();
	}
	
	public void SetMinimumSize(IQSize minimumSize)
	{
		this.handle.SetMinimumSize(minimumSize);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		this.handle.SetMinimumSize2(minw, minh);
	}
	
	public void SetMaximumSize(IQSize maximumSize)
	{
		this.handle.SetMaximumSize(maximumSize);
	}
	
	public void SetMaximumSize2(int32 maxw, int32 maxh)
	{
		this.handle.SetMaximumSize2(maxw, maxh);
	}
	
	public void SetMinimumWidth(int32 minw)
	{
		this.handle.SetMinimumWidth(minw);
	}
	
	public void SetMinimumHeight(int32 minh)
	{
		this.handle.SetMinimumHeight(minh);
	}
	
	public void SetMaximumWidth(int32 maxw)
	{
		this.handle.SetMaximumWidth(maxw);
	}
	
	public void SetMaximumHeight(int32 maxh)
	{
		this.handle.SetMaximumHeight(maxh);
	}
	
	public void SizeIncrement()
	{
		this.handle.SizeIncrement();
	}
	
	public void SetSizeIncrement(IQSize sizeIncrement)
	{
		this.handle.SetSizeIncrement(sizeIncrement);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		this.handle.SetSizeIncrement2(w, h);
	}
	
	public void BaseSize()
	{
		this.handle.BaseSize();
	}
	
	public void SetBaseSize(IQSize baseSize)
	{
		this.handle.SetBaseSize(baseSize);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		this.handle.SetBaseSize2(basew, baseh);
	}
	
	public void SetFixedSize(IQSize fixedSize)
	{
		this.handle.SetFixedSize(fixedSize);
	}
	
	public void SetFixedSize2(int32 w, int32 h)
	{
		this.handle.SetFixedSize2(w, h);
	}
	
	public void SetFixedWidth(int32 w)
	{
		this.handle.SetFixedWidth(w);
	}
	
	public void SetFixedHeight(int32 h)
	{
		this.handle.SetFixedHeight(h);
	}
	
	public void MapToGlobal(IQPointF param1)
	{
		this.handle.MapToGlobal(param1);
	}
	
	public void MapToGlobalWithQPoint(IQPoint param1)
	{
		this.handle.MapToGlobalWithQPoint(param1);
	}
	
	public void MapFromGlobal(IQPointF param1)
	{
		this.handle.MapFromGlobal(param1);
	}
	
	public void MapFromGlobalWithQPoint(IQPoint param1)
	{
		this.handle.MapFromGlobalWithQPoint(param1);
	}
	
	public void MapToParent(IQPointF param1)
	{
		this.handle.MapToParent(param1);
	}
	
	public void MapToParentWithQPoint(IQPoint param1)
	{
		this.handle.MapToParentWithQPoint(param1);
	}
	
	public void MapFromParent(IQPointF param1)
	{
		this.handle.MapFromParent(param1);
	}
	
	public void MapFromParentWithQPoint(IQPoint param1)
	{
		this.handle.MapFromParentWithQPoint(param1);
	}
	
	public void MapTo(IQWidget param1, IQPointF param2)
	{
		this.handle.MapTo(param1, param2);
	}
	
	public void MapTo2(IQWidget param1, IQPoint param2)
	{
		this.handle.MapTo2(param1, param2);
	}
	
	public void MapFrom(IQWidget param1, IQPointF param2)
	{
		this.handle.MapFrom(param1, param2);
	}
	
	public void MapFrom2(IQWidget param1, IQPoint param2)
	{
		this.handle.MapFrom2(param1, param2);
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* NativeParentWidget()
	{
		return this.handle.NativeParentWidget();
	}
	
	public void* TopLevelWidget()
	{
		return this.handle.TopLevelWidget();
	}
	
	public void* Palette()
	{
		return this.handle.Palette();
	}
	
	public void SetPalette(IQPalette palette)
	{
		this.handle.SetPalette(palette);
	}
	
	public void SetBackgroundRole(int64 backgroundRole)
	{
		this.handle.SetBackgroundRole(backgroundRole);
	}
	
	public int64 BackgroundRole()
	{
		return this.handle.BackgroundRole();
	}
	
	public void SetForegroundRole(int64 foregroundRole)
	{
		this.handle.SetForegroundRole(foregroundRole);
	}
	
	public int64 ForegroundRole()
	{
		return this.handle.ForegroundRole();
	}
	
	public void* Font()
	{
		return this.handle.Font();
	}
	
	public void SetFont(IQFont font)
	{
		this.handle.SetFont(font);
	}
	
	public void FontMetrics()
	{
		this.handle.FontMetrics();
	}
	
	public void FontInfo()
	{
		this.handle.FontInfo();
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public void SetMouseTracking(bool enable)
	{
		this.handle.SetMouseTracking(enable);
	}
	
	public bool HasMouseTracking()
	{
		return this.handle.HasMouseTracking();
	}
	
	public bool UnderMouse()
	{
		return this.handle.UnderMouse();
	}
	
	public void SetTabletTracking(bool enable)
	{
		this.handle.SetTabletTracking(enable);
	}
	
	public bool HasTabletTracking()
	{
		return this.handle.HasTabletTracking();
	}
	
	public void SetMask(IQBitmap mask)
	{
		this.handle.SetMask(mask);
	}
	
	public void SetMaskWithMask(IQRegion mask)
	{
		this.handle.SetMaskWithMask(mask);
	}
	
	public void Mask()
	{
		this.handle.Mask();
	}
	
	public void ClearMask()
	{
		this.handle.ClearMask();
	}
	
	public void Render(IQPaintDevice target)
	{
		this.handle.Render(target);
	}
	
	public void RenderWithPainter(IQPainter painter)
	{
		this.handle.RenderWithPainter(painter);
	}
	
	public void Grab()
	{
		this.handle.Grab();
	}
	
	public void* GraphicsEffect()
	{
		return this.handle.GraphicsEffect();
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		this.handle.SetGraphicsEffect(effect);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		this.handle.GrabGesture(typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		this.handle.UngrabGesture(typeVal);
	}
	
	public void SetWindowTitle(String windowTitle)
	{
		this.handle.SetWindowTitle(windowTitle);
	}
	
	public void SetStyleSheet(String styleSheet)
	{
		this.handle.SetStyleSheet(styleSheet);
	}
	
	public libqt_string StyleSheet()
	{
		return this.handle.StyleSheet();
	}
	
	public libqt_string WindowTitle()
	{
		return this.handle.WindowTitle();
	}
	
	public void SetWindowIcon(IQIcon icon)
	{
		this.handle.SetWindowIcon(icon);
	}
	
	public void WindowIcon()
	{
		this.handle.WindowIcon();
	}
	
	public void SetWindowIconText(String windowIconText)
	{
		this.handle.SetWindowIconText(windowIconText);
	}
	
	public libqt_string WindowIconText()
	{
		return this.handle.WindowIconText();
	}
	
	public void SetWindowRole(String windowRole)
	{
		this.handle.SetWindowRole(windowRole);
	}
	
	public libqt_string WindowRole()
	{
		return this.handle.WindowRole();
	}
	
	public void SetWindowFilePath(String filePath)
	{
		this.handle.SetWindowFilePath(filePath);
	}
	
	public libqt_string WindowFilePath()
	{
		return this.handle.WindowFilePath();
	}
	
	public void SetWindowOpacity(double level)
	{
		this.handle.SetWindowOpacity(level);
	}
	
	public double WindowOpacity()
	{
		return this.handle.WindowOpacity();
	}
	
	public bool IsWindowModified()
	{
		return this.handle.IsWindowModified();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTipDuration(int32 msec)
	{
		this.handle.SetToolTipDuration(msec);
	}
	
	public int32 ToolTipDuration()
	{
		return this.handle.ToolTipDuration();
	}
	
	public void SetStatusTip(String statusTip)
	{
		this.handle.SetStatusTip(statusTip);
	}
	
	public libqt_string StatusTip()
	{
		return this.handle.StatusTip();
	}
	
	public void SetWhatsThis(String whatsThis)
	{
		this.handle.SetWhatsThis(whatsThis);
	}
	
	public libqt_string WhatsThis()
	{
		return this.handle.WhatsThis();
	}
	
	public libqt_string AccessibleName()
	{
		return this.handle.AccessibleName();
	}
	
	public void SetAccessibleName(String name)
	{
		this.handle.SetAccessibleName(name);
	}
	
	public libqt_string AccessibleDescription()
	{
		return this.handle.AccessibleDescription();
	}
	
	public void SetAccessibleDescription(String description)
	{
		this.handle.SetAccessibleDescription(description);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		this.handle.SetLayoutDirection(direction);
	}
	
	public int64 LayoutDirection()
	{
		return this.handle.LayoutDirection();
	}
	
	public void UnsetLayoutDirection()
	{
		this.handle.UnsetLayoutDirection();
	}
	
	public void SetLocale(IQLocale locale)
	{
		this.handle.SetLocale(locale);
	}
	
	public void Locale()
	{
		this.handle.Locale();
	}
	
	public void UnsetLocale()
	{
		this.handle.UnsetLocale();
	}
	
	public bool IsRightToLeft()
	{
		return this.handle.IsRightToLeft();
	}
	
	public bool IsLeftToRight()
	{
		return this.handle.IsLeftToRight();
	}
	
	public void SetFocus()
	{
		this.handle.SetFocus();
	}
	
	public bool IsActiveWindow()
	{
		return this.handle.IsActiveWindow();
	}
	
	public void ActivateWindow()
	{
		this.handle.ActivateWindow();
	}
	
	public void ClearFocus()
	{
		this.handle.ClearFocus();
	}
	
	public void SetFocusWithReason(int64 reason)
	{
		this.handle.SetFocusWithReason(reason);
	}
	
	public int64 FocusPolicy()
	{
		return this.handle.FocusPolicy();
	}
	
	public void SetFocusPolicy(int64 policy)
	{
		this.handle.SetFocusPolicy(policy);
	}
	
	public bool HasFocus()
	{
		return this.handle.HasFocus();
	}
	
	public static void SetTabOrder(IQWidget param1, IQWidget param2)
	{
		QTreeWidgetPtr.SetTabOrder(param1, param2);
	}
	
	public void SetFocusProxy(IQWidget focusProxy)
	{
		this.handle.SetFocusProxy(focusProxy);
	}
	
	public void* FocusProxy()
	{
		return this.handle.FocusProxy();
	}
	
	public int64 ContextMenuPolicy()
	{
		return this.handle.ContextMenuPolicy();
	}
	
	public void SetContextMenuPolicy(int64 policy)
	{
		this.handle.SetContextMenuPolicy(policy);
	}
	
	public void GrabMouse()
	{
		this.handle.GrabMouse();
	}
	
	public void GrabMouseWithQCursor(IQCursor param1)
	{
		this.handle.GrabMouseWithQCursor(param1);
	}
	
	public void ReleaseMouse()
	{
		this.handle.ReleaseMouse();
	}
	
	public void GrabKeyboard()
	{
		this.handle.GrabKeyboard();
	}
	
	public void ReleaseKeyboard()
	{
		this.handle.ReleaseKeyboard();
	}
	
	public int32 GrabShortcut(IQKeySequence key)
	{
		return this.handle.GrabShortcut(key);
	}
	
	public void ReleaseShortcut(int32 id)
	{
		this.handle.ReleaseShortcut(id);
	}
	
	public void SetShortcutEnabled(int32 id)
	{
		this.handle.SetShortcutEnabled(id);
	}
	
	public void SetShortcutAutoRepeat(int32 id)
	{
		this.handle.SetShortcutAutoRepeat(id);
	}
	
	public static void* MouseGrabber()
	{
		return QTreeWidgetPtr.MouseGrabber();
	}
	
	public static void* KeyboardGrabber()
	{
		return QTreeWidgetPtr.KeyboardGrabber();
	}
	
	public bool UpdatesEnabled()
	{
		return this.handle.UpdatesEnabled();
	}
	
	public void SetUpdatesEnabled(bool enable)
	{
		this.handle.SetUpdatesEnabled(enable);
	}
	
	public void* GraphicsProxyWidget()
	{
		return this.handle.GraphicsProxyWidget();
	}
	
	public void Repaint()
	{
		this.handle.Repaint();
	}
	
	public void Update2(int32 x, int32 y, int32 w, int32 h)
	{
		this.handle.Update2(x, y, w, h);
	}
	
	public void UpdateWithQRect(IQRect param1)
	{
		this.handle.UpdateWithQRect(param1);
	}
	
	public void UpdateWithQRegion(IQRegion param1)
	{
		this.handle.UpdateWithQRegion(param1);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		this.handle.Repaint2(x, y, w, h);
	}
	
	public void RepaintWithQRect(IQRect param1)
	{
		this.handle.RepaintWithQRect(param1);
	}
	
	public void RepaintWithQRegion(IQRegion param1)
	{
		this.handle.RepaintWithQRegion(param1);
	}
	
	public virtual void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void SetHidden(bool hidden)
	{
		this.handle.SetHidden(hidden);
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void ShowMinimized()
	{
		this.handle.ShowMinimized();
	}
	
	public void ShowMaximized()
	{
		this.handle.ShowMaximized();
	}
	
	public void ShowFullScreen()
	{
		this.handle.ShowFullScreen();
	}
	
	public void ShowNormal()
	{
		this.handle.ShowNormal();
	}
	
	public bool Close()
	{
		return this.handle.Close();
	}
	
	public void Raise()
	{
		this.handle.Raise();
	}
	
	public void Lower()
	{
		this.handle.Lower();
	}
	
	public void StackUnder(IQWidget param1)
	{
		this.handle.StackUnder(param1);
	}
	
	public void Move(int32 x, int32 y)
	{
		this.handle.Move(x, y);
	}
	
	public void MoveWithQPoint(IQPoint param1)
	{
		this.handle.MoveWithQPoint(param1);
	}
	
	public void Resize(int32 w, int32 h)
	{
		this.handle.Resize(w, h);
	}
	
	public void ResizeWithQSize(IQSize param1)
	{
		this.handle.ResizeWithQSize(param1);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		this.handle.SetGeometry(x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(IQRect geometry)
	{
		this.handle.SetGeometryWithGeometry(geometry);
	}
	
	public libqt_string SaveGeometry()
	{
		return this.handle.SaveGeometry();
	}
	
	public bool RestoreGeometry(String geometry)
	{
		return this.handle.RestoreGeometry(geometry);
	}
	
	public void AdjustSize()
	{
		this.handle.AdjustSize();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public bool IsVisibleTo(IQWidget param1)
	{
		return this.handle.IsVisibleTo(param1);
	}
	
	public bool IsHidden()
	{
		return this.handle.IsHidden();
	}
	
	public bool IsMinimized()
	{
		return this.handle.IsMinimized();
	}
	
	public bool IsMaximized()
	{
		return this.handle.IsMaximized();
	}
	
	public bool IsFullScreen()
	{
		return this.handle.IsFullScreen();
	}
	
	public int64 WindowState()
	{
		return this.handle.WindowState();
	}
	
	public void SetWindowState(int64 state)
	{
		this.handle.SetWindowState(state);
	}
	
	public void OverrideWindowState(int64 state)
	{
		this.handle.OverrideWindowState(state);
	}
	
	public void SizePolicy()
	{
		this.handle.SizePolicy();
	}
	
	public void SetSizePolicy(IQSizePolicy sizePolicy)
	{
		this.handle.SetSizePolicy(default);
	}
	
	public void SetSizePolicy2(int64 horizontal, int64 vertical)
	{
		this.handle.SetSizePolicy2(horizontal, vertical);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return this.handle.HeightForWidth(param1);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return this.handle.HasHeightForWidth();
	}
	
	public void VisibleRegion()
	{
		this.handle.VisibleRegion();
	}
	
	public void SetContentsMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		this.handle.SetContentsMargins(left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(IQMargins margins)
	{
		this.handle.SetContentsMarginsWithMargins(margins);
	}
	
	public void ContentsMargins()
	{
		this.handle.ContentsMargins();
	}
	
	public void ContentsRect()
	{
		this.handle.ContentsRect();
	}
	
	public void* Layout()
	{
		return this.handle.Layout();
	}
	
	public void SetLayout(IQLayout layout)
	{
		this.handle.SetLayout(layout);
	}
	
	public void UpdateGeometry()
	{
		this.handle.UpdateGeometry();
	}
	
	public void SetParent(IQWidget parent)
	{
		this.handle.SetParent(parent);
	}
	
	public void SetParent2(IQWidget parent, int64 f)
	{
		this.handle.SetParent2(parent, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		this.handle.Scroll(dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, IQRect param3)
	{
		this.handle.Scroll2(dx, dy, param3);
	}
	
	public void* FocusWidget()
	{
		return this.handle.FocusWidget();
	}
	
	public void* NextInFocusChain()
	{
		return this.handle.NextInFocusChain();
	}
	
	public void* PreviousInFocusChain()
	{
		return this.handle.PreviousInFocusChain();
	}
	
	public bool AcceptDrops()
	{
		return this.handle.AcceptDrops();
	}
	
	public void SetAcceptDrops(bool on)
	{
		this.handle.SetAcceptDrops(on);
	}
	
	public void AddAction(IQAction action)
	{
		this.handle.AddAction(action);
	}
	
	public void AddActions(IQAction[] actions)
	{
		this.handle.AddActions(null);
	}
	
	public void InsertActions(IQAction before, IQAction[] actions)
	{
		this.handle.InsertActions(before, null);
	}
	
	public void InsertAction(IQAction before, IQAction action)
	{
		this.handle.InsertAction(before, action);
	}
	
	public void RemoveAction(IQAction action)
	{
		this.handle.RemoveAction(action);
	}
	
	public void*[] Actions()
	{
		return this.handle.Actions();
	}
	
	public void* AddActionWithText(String text)
	{
		return this.handle.AddActionWithText(text);
	}
	
	public void* AddAction2(IQIcon icon, String text)
	{
		return this.handle.AddAction2(icon, text);
	}
	
	public void* AddAction3(String text, IQKeySequence shortcut)
	{
		return this.handle.AddAction3(text, shortcut);
	}
	
	public void* AddAction4(IQIcon icon, String text, IQKeySequence shortcut)
	{
		return this.handle.AddAction4(icon, text, shortcut);
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public void SetWindowFlags(int64 typeVal)
	{
		this.handle.SetWindowFlags(typeVal);
	}
	
	public int64 WindowFlags()
	{
		return this.handle.WindowFlags();
	}
	
	public void SetWindowFlag(int64 param1)
	{
		this.handle.SetWindowFlag(param1);
	}
	
	public void OverrideWindowFlags(int64 typeVal)
	{
		this.handle.OverrideWindowFlags(typeVal);
	}
	
	public int64 WindowType()
	{
		return this.handle.WindowType();
	}
	
	public static void* Find(uint64 param1)
	{
		return QTreeWidgetPtr.Find(param1);
	}
	
	public void* ChildAt(int32 x, int32 y)
	{
		return this.handle.ChildAt(x, y);
	}
	
	public void* ChildAtWithQPoint(IQPoint p)
	{
		return this.handle.ChildAtWithQPoint(p);
	}
	
	public void SetAttribute(int64 param1)
	{
		this.handle.SetAttribute(param1);
	}
	
	public bool TestAttribute(int64 param1)
	{
		return this.handle.TestAttribute(param1);
	}
	
	public virtual void* PaintEngine()
	{
		return this.handle.PaintEngine();
	}
	
	public void EnsurePolished()
	{
		this.handle.EnsurePolished();
	}
	
	public bool IsAncestorOf(IQWidget child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public bool AutoFillBackground()
	{
		return this.handle.AutoFillBackground();
	}
	
	public void SetAutoFillBackground(bool enabled)
	{
		this.handle.SetAutoFillBackground(enabled);
	}
	
	public void* BackingStore()
	{
		return this.handle.BackingStore();
	}
	
	public void* WindowHandle()
	{
		return this.handle.WindowHandle();
	}
	
	public void* Screen()
	{
		return this.handle.Screen();
	}
	
	public void SetScreen(IQScreen screen)
	{
		this.handle.SetScreen(screen);
	}
	
	public static void* CreateWindowContainer(IQWindow window)
	{
		return QTreeWidgetPtr.CreateWindowContainer(window);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
	}
	
	public void Render2(IQPaintDevice target, IQPoint targetOffset)
	{
		this.handle.Render2(target, targetOffset);
	}
	
	public void Render3(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion)
	{
		this.handle.Render3(target, targetOffset, sourceRegion);
	}
	
	public void Render4(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		this.handle.Render4(target, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Render22(IQPainter painter, IQPoint targetOffset)
	{
		this.handle.Render22(painter, targetOffset);
	}
	
	public void Render32(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion)
	{
		this.handle.Render32(painter, targetOffset, sourceRegion);
	}
	
	public void Render42(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		this.handle.Render42(painter, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Grab1(IQRect rectangle)
	{
		this.handle.Grab1(rectangle);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		this.handle.GrabGesture2(typeVal, flags);
	}
	
	public int32 GrabShortcut2(IQKeySequence key, int64 context)
	{
		return this.handle.GrabShortcut2(key, context);
	}
	
	public void SetShortcutEnabled2(int32 id, bool enable)
	{
		this.handle.SetShortcutEnabled2(id, enable);
	}
	
	public void SetShortcutAutoRepeat2(int32 id, bool enable)
	{
		this.handle.SetShortcutAutoRepeat2(id, enable);
	}
	
	public void SetWindowFlag2(int64 param1, bool on)
	{
		this.handle.SetWindowFlag2(param1, on);
	}
	
	public void SetAttribute2(int64 param1, bool on)
	{
		this.handle.SetAttribute2(param1, on);
	}
	
	public static void* CreateWindowContainer2(IQWindow window, IQWidget parent)
	{
		return QTreeWidgetPtr.CreateWindowContainer2(window, parent);
	}
	
	public static void* CreateWindowContainer3(IQWindow window, IQWidget parent, int64 flags)
	{
		return QTreeWidgetPtr.CreateWindowContainer3(window, parent, flags);
	}
	
	public libqt_string ObjectName()
	{
		return this.handle.ObjectName();
	}
	
	public void SetObjectName(char8* name)
	{
		this.handle.SetObjectName(name);
	}
	
	public bool IsWidgetType()
	{
		return this.handle.IsWidgetType();
	}
	
	public bool IsWindowType()
	{
		return this.handle.IsWindowType();
	}
	
	public bool IsQuickItemType()
	{
		return this.handle.IsQuickItemType();
	}
	
	public bool SignalsBlocked()
	{
		return this.handle.SignalsBlocked();
	}
	
	public bool BlockSignals(bool b)
	{
		return this.handle.BlockSignals(b);
	}
	
	public void* Thread()
	{
		return this.handle.Thread();
	}
	
	public void MoveToThread(IQThread thread)
	{
		this.handle.MoveToThread(thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return this.handle.StartTimer(interval);
	}
	
	public void KillTimer(int32 id)
	{
		this.handle.KillTimer(id);
	}
	
	public void*[] Children()
	{
		return this.handle.Children();
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		this.handle.InstallEventFilter(filterObj);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		this.handle.RemoveEventFilter(obj);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		QTreeWidgetPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QTreeWidgetPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QTreeWidgetPtr.DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		this.handle.DumpObjectTree();
	}
	
	public void DumpObjectInfo()
	{
		this.handle.DumpObjectInfo();
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return this.handle.SetProperty(name, value);
	}
	
	public void Property(char8* name)
	{
		this.handle.Property(name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return this.handle.DynamicPropertyNames();
	}
	
	public void* BindingStorage()
	{
		return this.handle.BindingStorage();
	}
	
	public void* BindingStorage2()
	{
		return this.handle.BindingStorage2();
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public bool Inherits(char8* classname)
	{
		return this.handle.Inherits(classname);
	}
	
	public void DeleteLater()
	{
		this.handle.DeleteLater();
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return this.handle.StartTimer2(interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		QTreeWidgetPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
	public bool PaintingActive()
	{
		return this.handle.PaintingActive();
	}
	
	public int32 WidthMM()
	{
		return this.handle.WidthMM();
	}
	
	public int32 HeightMM()
	{
		return this.handle.HeightMM();
	}
	
	public int32 LogicalDpiX()
	{
		return this.handle.LogicalDpiX();
	}
	
	public int32 LogicalDpiY()
	{
		return this.handle.LogicalDpiY();
	}
	
	public int32 PhysicalDpiX()
	{
		return this.handle.PhysicalDpiX();
	}
	
	public int32 PhysicalDpiY()
	{
		return this.handle.PhysicalDpiY();
	}
	
	public double DevicePixelRatio()
	{
		return this.handle.DevicePixelRatio();
	}
	
	public double DevicePixelRatioF()
	{
		return this.handle.DevicePixelRatioF();
	}
	
	public int32 ColorCount()
	{
		return this.handle.ColorCount();
	}
	
	public int32 Depth()
	{
		return this.handle.Depth();
	}
	
	public static double DevicePixelRatioFScale()
	{
		return QTreeWidgetPtr.DevicePixelRatioFScale();
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