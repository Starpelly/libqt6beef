using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QStandardItem__ItemType
{
	Type = 0,
	UserType = 1000,
}
public interface IQStandardItem
{
	void* NativePtr { get; }
}
public struct QStandardItemPtr : IQStandardItem, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QStandardItem_new());
	}
	
	public void Dispose()
	{
		CQt.QStandardItem_Delete(this.nativePtr);
	}
	
	public void Data(int32 role)
	{
		CQt.QStandardItem_Data(this.nativePtr, role);
	}
	
	public void MultiData(IQModelRoleDataSpan roleDataSpan)
	{
		CQt.QStandardItem_MultiData(this.nativePtr, default);
	}
	
	public void SetData(IQVariant value, int32 role)
	{
		CQt.QStandardItem_SetData(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr, role);
	}
	
	public void ClearData()
	{
		CQt.QStandardItem_ClearData(this.nativePtr);
	}
	
	public libqt_string Text()
	{
		return CQt.QStandardItem_Text(this.nativePtr);
	}
	
	public void SetText(String text)
	{
		CQt.QStandardItem_SetText(this.nativePtr, libqt_string(text));
	}
	
	public void Icon()
	{
		CQt.QStandardItem_Icon(this.nativePtr);
	}
	
	public void SetIcon(IQIcon icon)
	{
		CQt.QStandardItem_SetIcon(this.nativePtr, (icon == default || icon.NativePtr == default) ? default : icon.NativePtr);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QStandardItem_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QStandardItem_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QStandardItem_StatusTip(this.nativePtr);
	}
	
	public void SetStatusTip(String statusTip)
	{
		CQt.QStandardItem_SetStatusTip(this.nativePtr, libqt_string(statusTip));
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QStandardItem_WhatsThis(this.nativePtr);
	}
	
	public void SetWhatsThis(String whatsThis)
	{
		CQt.QStandardItem_SetWhatsThis(this.nativePtr, libqt_string(whatsThis));
	}
	
	public void SizeHint()
	{
		CQt.QStandardItem_SizeHint(this.nativePtr);
	}
	
	public void SetSizeHint(IQSize sizeHint)
	{
		CQt.QStandardItem_SetSizeHint(this.nativePtr, (sizeHint == default || sizeHint.NativePtr == default) ? default : sizeHint.NativePtr);
	}
	
	public void Font()
	{
		CQt.QStandardItem_Font(this.nativePtr);
	}
	
	public void SetFont(IQFont font)
	{
		CQt.QStandardItem_SetFont(this.nativePtr, (font == default || font.NativePtr == default) ? default : font.NativePtr);
	}
	
	public int64 TextAlignment()
	{
		return CQt.QStandardItem_TextAlignment(this.nativePtr);
	}
	
	public void SetTextAlignment(int64 textAlignment)
	{
		CQt.QStandardItem_SetTextAlignment(this.nativePtr, textAlignment);
	}
	
	public void Background()
	{
		CQt.QStandardItem_Background(this.nativePtr);
	}
	
	public void SetBackground(IQBrush brush)
	{
		CQt.QStandardItem_SetBackground(this.nativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void Foreground()
	{
		CQt.QStandardItem_Foreground(this.nativePtr);
	}
	
	public void SetForeground(IQBrush brush)
	{
		CQt.QStandardItem_SetForeground(this.nativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public int64 CheckState()
	{
		return CQt.QStandardItem_CheckState(this.nativePtr);
	}
	
	public void SetCheckState(int64 checkState)
	{
		CQt.QStandardItem_SetCheckState(this.nativePtr, (int64)checkState);
	}
	
	public libqt_string AccessibleText()
	{
		return CQt.QStandardItem_AccessibleText(this.nativePtr);
	}
	
	public void SetAccessibleText(String accessibleText)
	{
		CQt.QStandardItem_SetAccessibleText(this.nativePtr, libqt_string(accessibleText));
	}
	
	public libqt_string AccessibleDescription()
	{
		return CQt.QStandardItem_AccessibleDescription(this.nativePtr);
	}
	
	public void SetAccessibleDescription(String accessibleDescription)
	{
		CQt.QStandardItem_SetAccessibleDescription(this.nativePtr, libqt_string(accessibleDescription));
	}
	
	public int64 Flags()
	{
		return CQt.QStandardItem_Flags(this.nativePtr);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QStandardItem_SetFlags(this.nativePtr, flags);
	}
	
	public bool IsEnabled()
	{
		return CQt.QStandardItem_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QStandardItem_SetEnabled(this.nativePtr, enabled);
	}
	
	public bool IsEditable()
	{
		return CQt.QStandardItem_IsEditable(this.nativePtr);
	}
	
	public void SetEditable(bool editable)
	{
		CQt.QStandardItem_SetEditable(this.nativePtr, editable);
	}
	
	public bool IsSelectable()
	{
		return CQt.QStandardItem_IsSelectable(this.nativePtr);
	}
	
	public void SetSelectable(bool selectable)
	{
		CQt.QStandardItem_SetSelectable(this.nativePtr, selectable);
	}
	
	public bool IsCheckable()
	{
		return CQt.QStandardItem_IsCheckable(this.nativePtr);
	}
	
	public void SetCheckable(bool checkable)
	{
		CQt.QStandardItem_SetCheckable(this.nativePtr, checkable);
	}
	
	public bool IsAutoTristate()
	{
		return CQt.QStandardItem_IsAutoTristate(this.nativePtr);
	}
	
	public void SetAutoTristate(bool tristate)
	{
		CQt.QStandardItem_SetAutoTristate(this.nativePtr, tristate);
	}
	
	public bool IsUserTristate()
	{
		return CQt.QStandardItem_IsUserTristate(this.nativePtr);
	}
	
	public void SetUserTristate(bool tristate)
	{
		CQt.QStandardItem_SetUserTristate(this.nativePtr, tristate);
	}
	
	public bool IsDragEnabled()
	{
		return CQt.QStandardItem_IsDragEnabled(this.nativePtr);
	}
	
	public void SetDragEnabled(bool dragEnabled)
	{
		CQt.QStandardItem_SetDragEnabled(this.nativePtr, dragEnabled);
	}
	
	public bool IsDropEnabled()
	{
		return CQt.QStandardItem_IsDropEnabled(this.nativePtr);
	}
	
	public void SetDropEnabled(bool dropEnabled)
	{
		CQt.QStandardItem_SetDropEnabled(this.nativePtr, dropEnabled);
	}
	
	public void* Parent()
	{
		return CQt.QStandardItem_Parent(this.nativePtr);
	}
	
	public int32 Row()
	{
		return CQt.QStandardItem_Row(this.nativePtr);
	}
	
	public int32 Column()
	{
		return CQt.QStandardItem_Column(this.nativePtr);
	}
	
	public void Index()
	{
		CQt.QStandardItem_Index(this.nativePtr);
	}
	
	public void* Model()
	{
		return CQt.QStandardItem_Model(this.nativePtr);
	}
	
	public int32 RowCount()
	{
		return CQt.QStandardItem_RowCount(this.nativePtr);
	}
	
	public void SetRowCount(int32 rows)
	{
		CQt.QStandardItem_SetRowCount(this.nativePtr, rows);
	}
	
	public int32 ColumnCount()
	{
		return CQt.QStandardItem_ColumnCount(this.nativePtr);
	}
	
	public void SetColumnCount(int32 columns)
	{
		CQt.QStandardItem_SetColumnCount(this.nativePtr, columns);
	}
	
	public bool HasChildren()
	{
		return CQt.QStandardItem_HasChildren(this.nativePtr);
	}
	
	public void* Child(int32 row)
	{
		return CQt.QStandardItem_Child(this.nativePtr, row);
	}
	
	public void SetChild(int32 row, int32 column, IQStandardItem item)
	{
		CQt.QStandardItem_SetChild(this.nativePtr, row, column, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void SetChild2(int32 row, IQStandardItem item)
	{
		CQt.QStandardItem_SetChild2(this.nativePtr, row, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void InsertRow(int32 row, IQStandardItem[] items)
	{
		CQt.QStandardItem_InsertRow(this.nativePtr, row, null);
	}
	
	public void InsertColumn(int32 column, IQStandardItem[] items)
	{
		CQt.QStandardItem_InsertColumn(this.nativePtr, column, null);
	}
	
	public void InsertRows(int32 row, IQStandardItem[] items)
	{
		CQt.QStandardItem_InsertRows(this.nativePtr, row, null);
	}
	
	public void InsertRows2(int32 row, int32 count)
	{
		CQt.QStandardItem_InsertRows2(this.nativePtr, row, count);
	}
	
	public void InsertColumns(int32 column, int32 count)
	{
		CQt.QStandardItem_InsertColumns(this.nativePtr, column, count);
	}
	
	public void RemoveRow(int32 row)
	{
		CQt.QStandardItem_RemoveRow(this.nativePtr, row);
	}
	
	public void RemoveColumn(int32 column)
	{
		CQt.QStandardItem_RemoveColumn(this.nativePtr, column);
	}
	
	public void RemoveRows(int32 row, int32 count)
	{
		CQt.QStandardItem_RemoveRows(this.nativePtr, row, count);
	}
	
	public void RemoveColumns(int32 column, int32 count)
	{
		CQt.QStandardItem_RemoveColumns(this.nativePtr, column, count);
	}
	
	public void AppendRow(IQStandardItem[] items)
	{
		CQt.QStandardItem_AppendRow(this.nativePtr, null);
	}
	
	public void AppendRows(IQStandardItem[] items)
	{
		CQt.QStandardItem_AppendRows(this.nativePtr, null);
	}
	
	public void AppendColumn(IQStandardItem[] items)
	{
		CQt.QStandardItem_AppendColumn(this.nativePtr, null);
	}
	
	public void InsertRow2(int32 row, IQStandardItem item)
	{
		CQt.QStandardItem_InsertRow2(this.nativePtr, row, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void AppendRowWithItem(IQStandardItem item)
	{
		CQt.QStandardItem_AppendRowWithItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* TakeChild(int32 row)
	{
		return CQt.QStandardItem_TakeChild(this.nativePtr, row);
	}
	
	public void*[] TakeRow(int32 row)
	{
		return CQt.QStandardItem_TakeRow(this.nativePtr, row);
	}
	
	public void*[] TakeColumn(int32 column)
	{
		return CQt.QStandardItem_TakeColumn(this.nativePtr, column);
	}
	
	public void SortChildren(int32 column)
	{
		CQt.QStandardItem_SortChildren(this.nativePtr, column);
	}
	
	public void* Clone()
	{
		return CQt.QStandardItem_Clone(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QStandardItem_Type(this.nativePtr);
	}
	
	public void Read(IQDataStream _in)
	{
		CQt.QStandardItem_Read(this.nativePtr, (_in == default || _in.NativePtr == default) ? default : _in.NativePtr);
	}
	
	public void Write(IQDataStream _out)
	{
		CQt.QStandardItem_Write(this.nativePtr, (_out == default || _out.NativePtr == default) ? default : _out.NativePtr);
	}
	
	public bool OperatorLesser(IQStandardItem other)
	{
		return CQt.QStandardItem_OperatorLesser(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void OperatorAssign(IQStandardItem other)
	{
		CQt.QStandardItem_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void EmitDataChanged()
	{
		CQt.QStandardItem_EmitDataChanged(this.nativePtr);
	}
	
	public void* Child2(int32 row, int32 column)
	{
		return CQt.QStandardItem_Child2(this.nativePtr, row, column);
	}
	
	public void* TakeChild2(int32 row, int32 column)
	{
		return CQt.QStandardItem_TakeChild2(this.nativePtr, row, column);
	}
	
	public void SortChildren2(int32 column, int64 order)
	{
		CQt.QStandardItem_SortChildren2(this.nativePtr, column, (int64)order);
	}
	
}
public class QStandardItem
{
	public QStandardItemPtr handle;
	
	public static implicit operator QStandardItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QStandardItemPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void Data(int32 role)
	{
		this.handle.Data(role);
	}
	
	public virtual void MultiData(IQModelRoleDataSpan roleDataSpan)
	{
		this.handle.MultiData(default);
	}
	
	public virtual void SetData(IQVariant value, int32 role)
	{
		this.handle.SetData(value, role);
	}
	
	public void ClearData()
	{
		this.handle.ClearData();
	}
	
	public libqt_string Text()
	{
		return this.handle.Text();
	}
	
	public void SetText(String text)
	{
		this.handle.SetText(text);
	}
	
	public void Icon()
	{
		this.handle.Icon();
	}
	
	public void SetIcon(IQIcon icon)
	{
		this.handle.SetIcon(icon);
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public libqt_string StatusTip()
	{
		return this.handle.StatusTip();
	}
	
	public void SetStatusTip(String statusTip)
	{
		this.handle.SetStatusTip(statusTip);
	}
	
	public libqt_string WhatsThis()
	{
		return this.handle.WhatsThis();
	}
	
	public void SetWhatsThis(String whatsThis)
	{
		this.handle.SetWhatsThis(whatsThis);
	}
	
	public void SizeHint()
	{
		this.handle.SizeHint();
	}
	
	public void SetSizeHint(IQSize sizeHint)
	{
		this.handle.SetSizeHint(sizeHint);
	}
	
	public void Font()
	{
		this.handle.Font();
	}
	
	public void SetFont(IQFont font)
	{
		this.handle.SetFont(font);
	}
	
	public int64 TextAlignment()
	{
		return this.handle.TextAlignment();
	}
	
	public void SetTextAlignment(int64 textAlignment)
	{
		this.handle.SetTextAlignment(textAlignment);
	}
	
	public void Background()
	{
		this.handle.Background();
	}
	
	public void SetBackground(IQBrush brush)
	{
		this.handle.SetBackground(brush);
	}
	
	public void Foreground()
	{
		this.handle.Foreground();
	}
	
	public void SetForeground(IQBrush brush)
	{
		this.handle.SetForeground(brush);
	}
	
	public int64 CheckState()
	{
		return this.handle.CheckState();
	}
	
	public void SetCheckState(int64 checkState)
	{
		this.handle.SetCheckState(checkState);
	}
	
	public libqt_string AccessibleText()
	{
		return this.handle.AccessibleText();
	}
	
	public void SetAccessibleText(String accessibleText)
	{
		this.handle.SetAccessibleText(accessibleText);
	}
	
	public libqt_string AccessibleDescription()
	{
		return this.handle.AccessibleDescription();
	}
	
	public void SetAccessibleDescription(String accessibleDescription)
	{
		this.handle.SetAccessibleDescription(accessibleDescription);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public bool IsEditable()
	{
		return this.handle.IsEditable();
	}
	
	public void SetEditable(bool editable)
	{
		this.handle.SetEditable(editable);
	}
	
	public bool IsSelectable()
	{
		return this.handle.IsSelectable();
	}
	
	public void SetSelectable(bool selectable)
	{
		this.handle.SetSelectable(selectable);
	}
	
	public bool IsCheckable()
	{
		return this.handle.IsCheckable();
	}
	
	public void SetCheckable(bool checkable)
	{
		this.handle.SetCheckable(checkable);
	}
	
	public bool IsAutoTristate()
	{
		return this.handle.IsAutoTristate();
	}
	
	public void SetAutoTristate(bool tristate)
	{
		this.handle.SetAutoTristate(tristate);
	}
	
	public bool IsUserTristate()
	{
		return this.handle.IsUserTristate();
	}
	
	public void SetUserTristate(bool tristate)
	{
		this.handle.SetUserTristate(tristate);
	}
	
	public bool IsDragEnabled()
	{
		return this.handle.IsDragEnabled();
	}
	
	public void SetDragEnabled(bool dragEnabled)
	{
		this.handle.SetDragEnabled(dragEnabled);
	}
	
	public bool IsDropEnabled()
	{
		return this.handle.IsDropEnabled();
	}
	
	public void SetDropEnabled(bool dropEnabled)
	{
		this.handle.SetDropEnabled(dropEnabled);
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public int32 Row()
	{
		return this.handle.Row();
	}
	
	public int32 Column()
	{
		return this.handle.Column();
	}
	
	public void Index()
	{
		this.handle.Index();
	}
	
	public void* Model()
	{
		return this.handle.Model();
	}
	
	public int32 RowCount()
	{
		return this.handle.RowCount();
	}
	
	public void SetRowCount(int32 rows)
	{
		this.handle.SetRowCount(rows);
	}
	
	public int32 ColumnCount()
	{
		return this.handle.ColumnCount();
	}
	
	public void SetColumnCount(int32 columns)
	{
		this.handle.SetColumnCount(columns);
	}
	
	public bool HasChildren()
	{
		return this.handle.HasChildren();
	}
	
	public void* Child(int32 row)
	{
		return this.handle.Child(row);
	}
	
	public void SetChild(int32 row, int32 column, IQStandardItem item)
	{
		this.handle.SetChild(row, column, item);
	}
	
	public void SetChild2(int32 row, IQStandardItem item)
	{
		this.handle.SetChild2(row, item);
	}
	
	public void InsertRow(int32 row, IQStandardItem[] items)
	{
		this.handle.InsertRow(row, null);
	}
	
	public void InsertColumn(int32 column, IQStandardItem[] items)
	{
		this.handle.InsertColumn(column, null);
	}
	
	public void InsertRows(int32 row, IQStandardItem[] items)
	{
		this.handle.InsertRows(row, null);
	}
	
	public void InsertRows2(int32 row, int32 count)
	{
		this.handle.InsertRows2(row, count);
	}
	
	public void InsertColumns(int32 column, int32 count)
	{
		this.handle.InsertColumns(column, count);
	}
	
	public void RemoveRow(int32 row)
	{
		this.handle.RemoveRow(row);
	}
	
	public void RemoveColumn(int32 column)
	{
		this.handle.RemoveColumn(column);
	}
	
	public void RemoveRows(int32 row, int32 count)
	{
		this.handle.RemoveRows(row, count);
	}
	
	public void RemoveColumns(int32 column, int32 count)
	{
		this.handle.RemoveColumns(column, count);
	}
	
	public void AppendRow(IQStandardItem[] items)
	{
		this.handle.AppendRow(null);
	}
	
	public void AppendRows(IQStandardItem[] items)
	{
		this.handle.AppendRows(null);
	}
	
	public void AppendColumn(IQStandardItem[] items)
	{
		this.handle.AppendColumn(null);
	}
	
	public void InsertRow2(int32 row, IQStandardItem item)
	{
		this.handle.InsertRow2(row, item);
	}
	
	public void AppendRowWithItem(IQStandardItem item)
	{
		this.handle.AppendRowWithItem(item);
	}
	
	public void* TakeChild(int32 row)
	{
		return this.handle.TakeChild(row);
	}
	
	public void*[] TakeRow(int32 row)
	{
		return this.handle.TakeRow(row);
	}
	
	public void*[] TakeColumn(int32 column)
	{
		return this.handle.TakeColumn(column);
	}
	
	public void SortChildren(int32 column)
	{
		this.handle.SortChildren(column);
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public virtual int32 Type()
	{
		return this.handle.Type();
	}
	
	public virtual void Read(IQDataStream _in)
	{
		this.handle.Read(_in);
	}
	
	public virtual void Write(IQDataStream _out)
	{
		this.handle.Write(_out);
	}
	
	public virtual bool OperatorLesser(IQStandardItem other)
	{
		return this.handle.OperatorLesser(other);
	}
	
	public void OperatorAssign(IQStandardItem other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void EmitDataChanged()
	{
		this.handle.EmitDataChanged();
	}
	
	public void* Child2(int32 row, int32 column)
	{
		return this.handle.Child2(row, column);
	}
	
	public void* TakeChild2(int32 row, int32 column)
	{
		return this.handle.TakeChild2(row, column);
	}
	
	public void SortChildren2(int32 column, int64 order)
	{
		this.handle.SortChildren2(column, order);
	}
	
}
extension CQt
{
	[LinkName("QStandardItem_new")]
	public static extern void* QStandardItem_new();
	[LinkName("QStandardItem_new2")]
	public static extern void* QStandardItem_new2(libqt_string text);
	[LinkName("QStandardItem_new3")]
	public static extern void* QStandardItem_new3(void* icon, libqt_string text);
	[LinkName("QStandardItem_new4")]
	public static extern void* QStandardItem_new4(int32 rows);
	[LinkName("QStandardItem_new5")]
	public static extern void* QStandardItem_new5(int32 rows, int32 columns);
	[LinkName("QStandardItem_Data")]
	public static extern void QStandardItem_Data(void* c_this, int32 role);
	[LinkName("QStandardItem_MultiData")]
	public static extern void QStandardItem_MultiData(void* c_this, void roleDataSpan);
	[LinkName("QStandardItem_SetData")]
	public static extern void QStandardItem_SetData(void* c_this, void* value, int32 role);
	[LinkName("QStandardItem_ClearData")]
	public static extern void QStandardItem_ClearData(void* c_this);
	[LinkName("QStandardItem_Text")]
	public static extern libqt_string QStandardItem_Text(void* c_this);
	[LinkName("QStandardItem_SetText")]
	public static extern void QStandardItem_SetText(void* c_this, libqt_string text);
	[LinkName("QStandardItem_Icon")]
	public static extern void QStandardItem_Icon(void* c_this);
	[LinkName("QStandardItem_SetIcon")]
	public static extern void QStandardItem_SetIcon(void* c_this, void* icon);
	[LinkName("QStandardItem_ToolTip")]
	public static extern libqt_string QStandardItem_ToolTip(void* c_this);
	[LinkName("QStandardItem_SetToolTip")]
	public static extern void QStandardItem_SetToolTip(void* c_this, libqt_string toolTip);
	[LinkName("QStandardItem_StatusTip")]
	public static extern libqt_string QStandardItem_StatusTip(void* c_this);
	[LinkName("QStandardItem_SetStatusTip")]
	public static extern void QStandardItem_SetStatusTip(void* c_this, libqt_string statusTip);
	[LinkName("QStandardItem_WhatsThis")]
	public static extern libqt_string QStandardItem_WhatsThis(void* c_this);
	[LinkName("QStandardItem_SetWhatsThis")]
	public static extern void QStandardItem_SetWhatsThis(void* c_this, libqt_string whatsThis);
	[LinkName("QStandardItem_SizeHint")]
	public static extern void QStandardItem_SizeHint(void* c_this);
	[LinkName("QStandardItem_SetSizeHint")]
	public static extern void QStandardItem_SetSizeHint(void* c_this, void* sizeHint);
	[LinkName("QStandardItem_Font")]
	public static extern void QStandardItem_Font(void* c_this);
	[LinkName("QStandardItem_SetFont")]
	public static extern void QStandardItem_SetFont(void* c_this, void* font);
	[LinkName("QStandardItem_TextAlignment")]
	public static extern int64 QStandardItem_TextAlignment(void* c_this);
	[LinkName("QStandardItem_SetTextAlignment")]
	public static extern void QStandardItem_SetTextAlignment(void* c_this, int64 textAlignment);
	[LinkName("QStandardItem_Background")]
	public static extern void QStandardItem_Background(void* c_this);
	[LinkName("QStandardItem_SetBackground")]
	public static extern void QStandardItem_SetBackground(void* c_this, void* brush);
	[LinkName("QStandardItem_Foreground")]
	public static extern void QStandardItem_Foreground(void* c_this);
	[LinkName("QStandardItem_SetForeground")]
	public static extern void QStandardItem_SetForeground(void* c_this, void* brush);
	[LinkName("QStandardItem_CheckState")]
	public static extern int64 QStandardItem_CheckState(void* c_this);
	[LinkName("QStandardItem_SetCheckState")]
	public static extern void QStandardItem_SetCheckState(void* c_this, int64 checkState);
	[LinkName("QStandardItem_AccessibleText")]
	public static extern libqt_string QStandardItem_AccessibleText(void* c_this);
	[LinkName("QStandardItem_SetAccessibleText")]
	public static extern void QStandardItem_SetAccessibleText(void* c_this, libqt_string accessibleText);
	[LinkName("QStandardItem_AccessibleDescription")]
	public static extern libqt_string QStandardItem_AccessibleDescription(void* c_this);
	[LinkName("QStandardItem_SetAccessibleDescription")]
	public static extern void QStandardItem_SetAccessibleDescription(void* c_this, libqt_string accessibleDescription);
	[LinkName("QStandardItem_Flags")]
	public static extern int64 QStandardItem_Flags(void* c_this);
	[LinkName("QStandardItem_SetFlags")]
	public static extern void QStandardItem_SetFlags(void* c_this, int64 flags);
	[LinkName("QStandardItem_IsEnabled")]
	public static extern bool QStandardItem_IsEnabled(void* c_this);
	[LinkName("QStandardItem_SetEnabled")]
	public static extern void QStandardItem_SetEnabled(void* c_this, bool enabled);
	[LinkName("QStandardItem_IsEditable")]
	public static extern bool QStandardItem_IsEditable(void* c_this);
	[LinkName("QStandardItem_SetEditable")]
	public static extern void QStandardItem_SetEditable(void* c_this, bool editable);
	[LinkName("QStandardItem_IsSelectable")]
	public static extern bool QStandardItem_IsSelectable(void* c_this);
	[LinkName("QStandardItem_SetSelectable")]
	public static extern void QStandardItem_SetSelectable(void* c_this, bool selectable);
	[LinkName("QStandardItem_IsCheckable")]
	public static extern bool QStandardItem_IsCheckable(void* c_this);
	[LinkName("QStandardItem_SetCheckable")]
	public static extern void QStandardItem_SetCheckable(void* c_this, bool checkable);
	[LinkName("QStandardItem_IsAutoTristate")]
	public static extern bool QStandardItem_IsAutoTristate(void* c_this);
	[LinkName("QStandardItem_SetAutoTristate")]
	public static extern void QStandardItem_SetAutoTristate(void* c_this, bool tristate);
	[LinkName("QStandardItem_IsUserTristate")]
	public static extern bool QStandardItem_IsUserTristate(void* c_this);
	[LinkName("QStandardItem_SetUserTristate")]
	public static extern void QStandardItem_SetUserTristate(void* c_this, bool tristate);
	[LinkName("QStandardItem_IsDragEnabled")]
	public static extern bool QStandardItem_IsDragEnabled(void* c_this);
	[LinkName("QStandardItem_SetDragEnabled")]
	public static extern void QStandardItem_SetDragEnabled(void* c_this, bool dragEnabled);
	[LinkName("QStandardItem_IsDropEnabled")]
	public static extern bool QStandardItem_IsDropEnabled(void* c_this);
	[LinkName("QStandardItem_SetDropEnabled")]
	public static extern void QStandardItem_SetDropEnabled(void* c_this, bool dropEnabled);
	[LinkName("QStandardItem_Parent")]
	public static extern void* QStandardItem_Parent(void* c_this);
	[LinkName("QStandardItem_Row")]
	public static extern int32 QStandardItem_Row(void* c_this);
	[LinkName("QStandardItem_Column")]
	public static extern int32 QStandardItem_Column(void* c_this);
	[LinkName("QStandardItem_Index")]
	public static extern void QStandardItem_Index(void* c_this);
	[LinkName("QStandardItem_Model")]
	public static extern void* QStandardItem_Model(void* c_this);
	[LinkName("QStandardItem_RowCount")]
	public static extern int32 QStandardItem_RowCount(void* c_this);
	[LinkName("QStandardItem_SetRowCount")]
	public static extern void QStandardItem_SetRowCount(void* c_this, int32 rows);
	[LinkName("QStandardItem_ColumnCount")]
	public static extern int32 QStandardItem_ColumnCount(void* c_this);
	[LinkName("QStandardItem_SetColumnCount")]
	public static extern void QStandardItem_SetColumnCount(void* c_this, int32 columns);
	[LinkName("QStandardItem_HasChildren")]
	public static extern bool QStandardItem_HasChildren(void* c_this);
	[LinkName("QStandardItem_Child")]
	public static extern void* QStandardItem_Child(void* c_this, int32 row);
	[LinkName("QStandardItem_SetChild")]
	public static extern void QStandardItem_SetChild(void* c_this, int32 row, int32 column, void* item);
	[LinkName("QStandardItem_SetChild2")]
	public static extern void QStandardItem_SetChild2(void* c_this, int32 row, void* item);
	[LinkName("QStandardItem_InsertRow")]
	public static extern void QStandardItem_InsertRow(void* c_this, int32 row, void*[] items);
	[LinkName("QStandardItem_InsertColumn")]
	public static extern void QStandardItem_InsertColumn(void* c_this, int32 column, void*[] items);
	[LinkName("QStandardItem_InsertRows")]
	public static extern void QStandardItem_InsertRows(void* c_this, int32 row, void*[] items);
	[LinkName("QStandardItem_InsertRows2")]
	public static extern void QStandardItem_InsertRows2(void* c_this, int32 row, int32 count);
	[LinkName("QStandardItem_InsertColumns")]
	public static extern void QStandardItem_InsertColumns(void* c_this, int32 column, int32 count);
	[LinkName("QStandardItem_RemoveRow")]
	public static extern void QStandardItem_RemoveRow(void* c_this, int32 row);
	[LinkName("QStandardItem_RemoveColumn")]
	public static extern void QStandardItem_RemoveColumn(void* c_this, int32 column);
	[LinkName("QStandardItem_RemoveRows")]
	public static extern void QStandardItem_RemoveRows(void* c_this, int32 row, int32 count);
	[LinkName("QStandardItem_RemoveColumns")]
	public static extern void QStandardItem_RemoveColumns(void* c_this, int32 column, int32 count);
	[LinkName("QStandardItem_AppendRow")]
	public static extern void QStandardItem_AppendRow(void* c_this, void*[] items);
	[LinkName("QStandardItem_AppendRows")]
	public static extern void QStandardItem_AppendRows(void* c_this, void*[] items);
	[LinkName("QStandardItem_AppendColumn")]
	public static extern void QStandardItem_AppendColumn(void* c_this, void*[] items);
	[LinkName("QStandardItem_InsertRow2")]
	public static extern void QStandardItem_InsertRow2(void* c_this, int32 row, void* item);
	[LinkName("QStandardItem_AppendRowWithItem")]
	public static extern void QStandardItem_AppendRowWithItem(void* c_this, void* item);
	[LinkName("QStandardItem_TakeChild")]
	public static extern void* QStandardItem_TakeChild(void* c_this, int32 row);
	[LinkName("QStandardItem_TakeRow")]
	public static extern void*[] QStandardItem_TakeRow(void* c_this, int32 row);
	[LinkName("QStandardItem_TakeColumn")]
	public static extern void*[] QStandardItem_TakeColumn(void* c_this, int32 column);
	[LinkName("QStandardItem_SortChildren")]
	public static extern void QStandardItem_SortChildren(void* c_this, int32 column);
	[LinkName("QStandardItem_Clone")]
	public static extern void* QStandardItem_Clone(void* c_this);
	[LinkName("QStandardItem_Type")]
	public static extern int32 QStandardItem_Type(void* c_this);
	[LinkName("QStandardItem_Read")]
	public static extern void QStandardItem_Read(void* c_this, void* _in);
	[LinkName("QStandardItem_Write")]
	public static extern void QStandardItem_Write(void* c_this, void* _out);
	[LinkName("QStandardItem_OperatorLesser")]
	public static extern bool QStandardItem_OperatorLesser(void* c_this, void* other);
	[LinkName("QStandardItem_OperatorAssign")]
	public static extern void QStandardItem_OperatorAssign(void* c_this, void* other);
	[LinkName("QStandardItem_EmitDataChanged")]
	public static extern void QStandardItem_EmitDataChanged(void* c_this);
	[LinkName("QStandardItem_Child2")]
	public static extern void* QStandardItem_Child2(void* c_this, int32 row, int32 column);
	[LinkName("QStandardItem_TakeChild2")]
	public static extern void* QStandardItem_TakeChild2(void* c_this, int32 row, int32 column);
	[LinkName("QStandardItem_SortChildren2")]
	public static extern void QStandardItem_SortChildren2(void* c_this, int32 column, int64 order);
	/// Delete this object from C++ memory
	[LinkName("QStandardItem_Delete")]
	public static extern void QStandardItem_Delete(void* self);
}
public interface IQStandardItemModel
{
	void* NativePtr { get; }
}
public struct QStandardItemModelPtr : IQStandardItemModel, IDisposable, IQAbstractItemModel
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QStandardItemModel_new());
	}
	
	public void Dispose()
	{
		CQt.QStandardItemModel_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QStandardItemModel_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QStandardItemModel_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QStandardItemModel_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QStandardItemModel_Tr(s);
	}
	
	public void SetItemRoleNames(void* roleNames)
	{
		CQt.QStandardItemModel_SetItemRoleNames(this.nativePtr, roleNames);
	}
	
	public void* RoleNames()
	{
		return CQt.QStandardItemModel_RoleNames(this.nativePtr);
	}
	
	public void Index(int32 row, int32 column, IQModelIndex parent)
	{
		CQt.QStandardItemModel_Index(this.nativePtr, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void Parent(IQModelIndex child)
	{
		CQt.QStandardItemModel_Parent(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public int32 RowCount(IQModelIndex parent)
	{
		return CQt.QStandardItemModel_RowCount(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public int32 ColumnCount(IQModelIndex parent)
	{
		return CQt.QStandardItemModel_ColumnCount(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool HasChildren(IQModelIndex parent)
	{
		return CQt.QStandardItemModel_HasChildren(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void Data(IQModelIndex index, int32 role)
	{
		CQt.QStandardItemModel_Data(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, role);
	}
	
	public void MultiData(IQModelIndex index, IQModelRoleDataSpan roleDataSpan)
	{
		CQt.QStandardItemModel_MultiData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, default);
	}
	
	public bool SetData(IQModelIndex index, IQVariant value, int32 role)
	{
		return CQt.QStandardItemModel_SetData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr, role);
	}
	
	public bool ClearItemData(IQModelIndex index)
	{
		return CQt.QStandardItemModel_ClearItemData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void HeaderData(int32 section, int64 orientation, int32 role)
	{
		CQt.QStandardItemModel_HeaderData(this.nativePtr, section, (int64)orientation, role);
	}
	
	public bool SetHeaderData(int32 section, int64 orientation, IQVariant value, int32 role)
	{
		return CQt.QStandardItemModel_SetHeaderData(this.nativePtr, section, (int64)orientation, (value == default || value.NativePtr == default) ? default : value.NativePtr, role);
	}
	
	public bool InsertRows(int32 row, int32 count, IQModelIndex parent)
	{
		return CQt.QStandardItemModel_InsertRows(this.nativePtr, row, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool InsertColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return CQt.QStandardItemModel_InsertColumns(this.nativePtr, column, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool RemoveRows(int32 row, int32 count, IQModelIndex parent)
	{
		return CQt.QStandardItemModel_RemoveRows(this.nativePtr, row, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool RemoveColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return CQt.QStandardItemModel_RemoveColumns(this.nativePtr, column, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public int64 Flags(IQModelIndex index)
	{
		return CQt.QStandardItemModel_Flags(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public int64 SupportedDropActions()
	{
		return CQt.QStandardItemModel_SupportedDropActions(this.nativePtr);
	}
	
	public void* ItemData(IQModelIndex index)
	{
		return CQt.QStandardItemModel_ItemData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public bool SetItemData(IQModelIndex index, void* roles)
	{
		return CQt.QStandardItemModel_SetItemData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, roles);
	}
	
	public void Clear()
	{
		CQt.QStandardItemModel_Clear(this.nativePtr);
	}
	
	public void Sort(int32 column, int64 order)
	{
		CQt.QStandardItemModel_Sort(this.nativePtr, column, (int64)order);
	}
	
	public void* ItemFromIndex(IQModelIndex index)
	{
		return CQt.QStandardItemModel_ItemFromIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void IndexFromItem(IQStandardItem item)
	{
		CQt.QStandardItemModel_IndexFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* Item(int32 row)
	{
		return CQt.QStandardItemModel_Item(this.nativePtr, row);
	}
	
	public void SetItem(int32 row, int32 column, IQStandardItem item)
	{
		CQt.QStandardItemModel_SetItem(this.nativePtr, row, column, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void SetItem2(int32 row, IQStandardItem item)
	{
		CQt.QStandardItemModel_SetItem2(this.nativePtr, row, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* InvisibleRootItem()
	{
		return CQt.QStandardItemModel_InvisibleRootItem(this.nativePtr);
	}
	
	public void* HorizontalHeaderItem(int32 column)
	{
		return CQt.QStandardItemModel_HorizontalHeaderItem(this.nativePtr, column);
	}
	
	public void SetHorizontalHeaderItem(int32 column, IQStandardItem item)
	{
		CQt.QStandardItemModel_SetHorizontalHeaderItem(this.nativePtr, column, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* VerticalHeaderItem(int32 row)
	{
		return CQt.QStandardItemModel_VerticalHeaderItem(this.nativePtr, row);
	}
	
	public void SetVerticalHeaderItem(int32 row, IQStandardItem item)
	{
		CQt.QStandardItemModel_SetVerticalHeaderItem(this.nativePtr, row, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void SetHorizontalHeaderLabels(String[] labels)
	{
		CQt.QStandardItemModel_SetHorizontalHeaderLabels(this.nativePtr, null);
	}
	
	public void SetVerticalHeaderLabels(String[] labels)
	{
		CQt.QStandardItemModel_SetVerticalHeaderLabels(this.nativePtr, null);
	}
	
	public void SetRowCount(int32 rows)
	{
		CQt.QStandardItemModel_SetRowCount(this.nativePtr, rows);
	}
	
	public void SetColumnCount(int32 columns)
	{
		CQt.QStandardItemModel_SetColumnCount(this.nativePtr, columns);
	}
	
	public void AppendRow(IQStandardItem[] items)
	{
		CQt.QStandardItemModel_AppendRow(this.nativePtr, null);
	}
	
	public void AppendColumn(IQStandardItem[] items)
	{
		CQt.QStandardItemModel_AppendColumn(this.nativePtr, null);
	}
	
	public void AppendRowWithItem(IQStandardItem item)
	{
		CQt.QStandardItemModel_AppendRowWithItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void InsertRow(int32 row, IQStandardItem[] items)
	{
		CQt.QStandardItemModel_InsertRow(this.nativePtr, row, null);
	}
	
	public void InsertColumn(int32 column, IQStandardItem[] items)
	{
		CQt.QStandardItemModel_InsertColumn(this.nativePtr, column, null);
	}
	
	public void InsertRow2(int32 row, IQStandardItem item)
	{
		CQt.QStandardItemModel_InsertRow2(this.nativePtr, row, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public bool InsertRowWithRow(int32 row)
	{
		return CQt.QStandardItemModel_InsertRowWithRow(this.nativePtr, row);
	}
	
	public bool InsertColumnWithColumn(int32 column)
	{
		return CQt.QStandardItemModel_InsertColumnWithColumn(this.nativePtr, column);
	}
	
	public void* TakeItem(int32 row)
	{
		return CQt.QStandardItemModel_TakeItem(this.nativePtr, row);
	}
	
	public void*[] TakeRow(int32 row)
	{
		return CQt.QStandardItemModel_TakeRow(this.nativePtr, row);
	}
	
	public void*[] TakeColumn(int32 column)
	{
		return CQt.QStandardItemModel_TakeColumn(this.nativePtr, column);
	}
	
	public void* TakeHorizontalHeaderItem(int32 column)
	{
		return CQt.QStandardItemModel_TakeHorizontalHeaderItem(this.nativePtr, column);
	}
	
	public void* TakeVerticalHeaderItem(int32 row)
	{
		return CQt.QStandardItemModel_TakeVerticalHeaderItem(this.nativePtr, row);
	}
	
	public void* ItemPrototype()
	{
		return CQt.QStandardItemModel_ItemPrototype(this.nativePtr);
	}
	
	public void SetItemPrototype(IQStandardItem item)
	{
		CQt.QStandardItemModel_SetItemPrototype(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void*[] FindItems(String text)
	{
		return CQt.QStandardItemModel_FindItems(this.nativePtr, libqt_string(text));
	}
	
	public int32 SortRole()
	{
		return CQt.QStandardItemModel_SortRole(this.nativePtr);
	}
	
	public void SetSortRole(int32 role)
	{
		CQt.QStandardItemModel_SetSortRole(this.nativePtr, role);
	}
	
	public libqt_string[] MimeTypes()
	{
		return CQt.QStandardItemModel_MimeTypes(this.nativePtr);
	}
	
	public void* MimeData(IQModelIndex[] indexes)
	{
		return CQt.QStandardItemModel_MimeData(this.nativePtr, null);
	}
	
	public bool DropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return CQt.QStandardItemModel_DropMimeData(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr, (int64)action, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QStandardItemModel_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QStandardItemModel_Tr3(s, c, n);
	}
	
	public void* Item2(int32 row, int32 column)
	{
		return CQt.QStandardItemModel_Item2(this.nativePtr, row, column);
	}
	
	public bool InsertRow22(int32 row, IQModelIndex parent)
	{
		return CQt.QStandardItemModel_InsertRow22(this.nativePtr, row, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool InsertColumn2(int32 column, IQModelIndex parent)
	{
		return CQt.QStandardItemModel_InsertColumn2(this.nativePtr, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void* TakeItem2(int32 row, int32 column)
	{
		return CQt.QStandardItemModel_TakeItem2(this.nativePtr, row, column);
	}
	
	public void*[] FindItems2(String text, int64 flags)
	{
		return CQt.QStandardItemModel_FindItems2(this.nativePtr, libqt_string(text), flags);
	}
	
	public void*[] FindItems3(String text, int64 flags, int32 column)
	{
		return CQt.QStandardItemModel_FindItems3(this.nativePtr, libqt_string(text), flags, column);
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return CQt.QAbstractItemModel_HasIndex(this.nativePtr, row, column);
	}
	
	public void Sibling(int32 row, int32 column, IQModelIndex idx)
	{
		CQt.QAbstractItemModel_Sibling(this.nativePtr, row, column, (idx == default || idx.NativePtr == default) ? default : idx.NativePtr);
	}
	
	public bool CanDropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_CanDropMimeData(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr, (int64)action, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public int64 SupportedDragActions()
	{
		return CQt.QAbstractItemModel_SupportedDragActions(this.nativePtr);
	}
	
	public bool MoveRows(IQModelIndex sourceParent, int32 sourceRow, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveRows(this.nativePtr, (sourceParent == default || sourceParent.NativePtr == default) ? default : sourceParent.NativePtr, sourceRow, count, (destinationParent == default || destinationParent.NativePtr == default) ? default : destinationParent.NativePtr, destinationChild);
	}
	
	public bool MoveColumns(IQModelIndex sourceParent, int32 sourceColumn, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveColumns(this.nativePtr, (sourceParent == default || sourceParent.NativePtr == default) ? default : sourceParent.NativePtr, sourceColumn, count, (destinationParent == default || destinationParent.NativePtr == default) ? default : destinationParent.NativePtr, destinationChild);
	}
	
	public bool RemoveRow(int32 row)
	{
		return CQt.QAbstractItemModel_RemoveRow(this.nativePtr, row);
	}
	
	public bool RemoveColumn(int32 column)
	{
		return CQt.QAbstractItemModel_RemoveColumn(this.nativePtr, column);
	}
	
	public bool MoveRow(IQModelIndex sourceParent, int32 sourceRow, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveRow(this.nativePtr, (sourceParent == default || sourceParent.NativePtr == default) ? default : sourceParent.NativePtr, sourceRow, (destinationParent == default || destinationParent.NativePtr == default) ? default : destinationParent.NativePtr, destinationChild);
	}
	
	public bool MoveColumn(IQModelIndex sourceParent, int32 sourceColumn, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveColumn(this.nativePtr, (sourceParent == default || sourceParent.NativePtr == default) ? default : sourceParent.NativePtr, sourceColumn, (destinationParent == default || destinationParent.NativePtr == default) ? default : destinationParent.NativePtr, destinationChild);
	}
	
	public void FetchMore(IQModelIndex parent)
	{
		CQt.QAbstractItemModel_FetchMore(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool CanFetchMore(IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_CanFetchMore(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void Buddy(IQModelIndex index)
	{
		CQt.QAbstractItemModel_Buddy(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void[] Match(IQModelIndex start, int32 role, IQVariant value, int32 hits, int64 flags)
	{
		return CQt.QAbstractItemModel_Match(this.nativePtr, (start == default || start.NativePtr == default) ? default : start.NativePtr, role, (value == default || value.NativePtr == default) ? default : value.NativePtr, hits, flags);
	}
	
	public void Span(IQModelIndex index)
	{
		CQt.QAbstractItemModel_Span(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public bool CheckIndex(IQModelIndex index)
	{
		return CQt.QAbstractItemModel_CheckIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public bool Submit()
	{
		return CQt.QAbstractItemModel_Submit(this.nativePtr);
	}
	
	public void Revert()
	{
		CQt.QAbstractItemModel_Revert(this.nativePtr);
	}
	
	public bool HasIndex3(int32 row, int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_HasIndex3(this.nativePtr, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool RemoveRow2(int32 row, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_RemoveRow2(this.nativePtr, row, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool RemoveColumn2(int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_RemoveColumn2(this.nativePtr, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool CheckIndex2(IQModelIndex index, int64 options)
	{
		return CQt.QAbstractItemModel_CheckIndex2(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, options);
	}
	
	public bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
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
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
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
	
}
public class QStandardItemModel
{
	public QStandardItemModelPtr handle;
	
	public static implicit operator QStandardItemModelPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QStandardItemModelPtr.New();
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
		return QStandardItemModelPtr.Tr(s);
	}
	
	public void SetItemRoleNames(void* roleNames)
	{
		this.handle.SetItemRoleNames(roleNames);
	}
	
	public virtual void* RoleNames()
	{
		return this.handle.RoleNames();
	}
	
	public virtual void Index(int32 row, int32 column, IQModelIndex parent)
	{
		this.handle.Index(row, column, parent);
	}
	
	public virtual void Parent(IQModelIndex child)
	{
		this.handle.Parent(child);
	}
	
	public virtual int32 RowCount(IQModelIndex parent)
	{
		return this.handle.RowCount(parent);
	}
	
	public virtual int32 ColumnCount(IQModelIndex parent)
	{
		return this.handle.ColumnCount(parent);
	}
	
	public virtual bool HasChildren(IQModelIndex parent)
	{
		return this.handle.HasChildren(parent);
	}
	
	public virtual void Data(IQModelIndex index, int32 role)
	{
		this.handle.Data(index, role);
	}
	
	public virtual void MultiData(IQModelIndex index, IQModelRoleDataSpan roleDataSpan)
	{
		this.handle.MultiData(index, default);
	}
	
	public virtual bool SetData(IQModelIndex index, IQVariant value, int32 role)
	{
		return this.handle.SetData(index, value, role);
	}
	
	public virtual bool ClearItemData(IQModelIndex index)
	{
		return this.handle.ClearItemData(index);
	}
	
	public virtual void HeaderData(int32 section, int64 orientation, int32 role)
	{
		this.handle.HeaderData(section, orientation, role);
	}
	
	public virtual bool SetHeaderData(int32 section, int64 orientation, IQVariant value, int32 role)
	{
		return this.handle.SetHeaderData(section, orientation, value, role);
	}
	
	public virtual bool InsertRows(int32 row, int32 count, IQModelIndex parent)
	{
		return this.handle.InsertRows(row, count, parent);
	}
	
	public virtual bool InsertColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return this.handle.InsertColumns(column, count, parent);
	}
	
	public virtual bool RemoveRows(int32 row, int32 count, IQModelIndex parent)
	{
		return this.handle.RemoveRows(row, count, parent);
	}
	
	public virtual bool RemoveColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return this.handle.RemoveColumns(column, count, parent);
	}
	
	public virtual int64 Flags(IQModelIndex index)
	{
		return this.handle.Flags(index);
	}
	
	public virtual int64 SupportedDropActions()
	{
		return this.handle.SupportedDropActions();
	}
	
	public virtual void* ItemData(IQModelIndex index)
	{
		return this.handle.ItemData(index);
	}
	
	public virtual bool SetItemData(IQModelIndex index, void* roles)
	{
		return this.handle.SetItemData(index, roles);
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
	public virtual void Sort(int32 column, int64 order)
	{
		this.handle.Sort(column, order);
	}
	
	public void* ItemFromIndex(IQModelIndex index)
	{
		return this.handle.ItemFromIndex(index);
	}
	
	public void IndexFromItem(IQStandardItem item)
	{
		this.handle.IndexFromItem(item);
	}
	
	public void* Item(int32 row)
	{
		return this.handle.Item(row);
	}
	
	public void SetItem(int32 row, int32 column, IQStandardItem item)
	{
		this.handle.SetItem(row, column, item);
	}
	
	public void SetItem2(int32 row, IQStandardItem item)
	{
		this.handle.SetItem2(row, item);
	}
	
	public void* InvisibleRootItem()
	{
		return this.handle.InvisibleRootItem();
	}
	
	public void* HorizontalHeaderItem(int32 column)
	{
		return this.handle.HorizontalHeaderItem(column);
	}
	
	public void SetHorizontalHeaderItem(int32 column, IQStandardItem item)
	{
		this.handle.SetHorizontalHeaderItem(column, item);
	}
	
	public void* VerticalHeaderItem(int32 row)
	{
		return this.handle.VerticalHeaderItem(row);
	}
	
	public void SetVerticalHeaderItem(int32 row, IQStandardItem item)
	{
		this.handle.SetVerticalHeaderItem(row, item);
	}
	
	public void SetHorizontalHeaderLabels(String[] labels)
	{
		this.handle.SetHorizontalHeaderLabels(null);
	}
	
	public void SetVerticalHeaderLabels(String[] labels)
	{
		this.handle.SetVerticalHeaderLabels(null);
	}
	
	public void SetRowCount(int32 rows)
	{
		this.handle.SetRowCount(rows);
	}
	
	public void SetColumnCount(int32 columns)
	{
		this.handle.SetColumnCount(columns);
	}
	
	public void AppendRow(IQStandardItem[] items)
	{
		this.handle.AppendRow(null);
	}
	
	public void AppendColumn(IQStandardItem[] items)
	{
		this.handle.AppendColumn(null);
	}
	
	public void AppendRowWithItem(IQStandardItem item)
	{
		this.handle.AppendRowWithItem(item);
	}
	
	public void InsertRow(int32 row, IQStandardItem[] items)
	{
		this.handle.InsertRow(row, null);
	}
	
	public void InsertColumn(int32 column, IQStandardItem[] items)
	{
		this.handle.InsertColumn(column, null);
	}
	
	public void InsertRow2(int32 row, IQStandardItem item)
	{
		this.handle.InsertRow2(row, item);
	}
	
	public bool InsertRowWithRow(int32 row)
	{
		return this.handle.InsertRowWithRow(row);
	}
	
	public bool InsertColumnWithColumn(int32 column)
	{
		return this.handle.InsertColumnWithColumn(column);
	}
	
	public void* TakeItem(int32 row)
	{
		return this.handle.TakeItem(row);
	}
	
	public void*[] TakeRow(int32 row)
	{
		return this.handle.TakeRow(row);
	}
	
	public void*[] TakeColumn(int32 column)
	{
		return this.handle.TakeColumn(column);
	}
	
	public void* TakeHorizontalHeaderItem(int32 column)
	{
		return this.handle.TakeHorizontalHeaderItem(column);
	}
	
	public void* TakeVerticalHeaderItem(int32 row)
	{
		return this.handle.TakeVerticalHeaderItem(row);
	}
	
	public void* ItemPrototype()
	{
		return this.handle.ItemPrototype();
	}
	
	public void SetItemPrototype(IQStandardItem item)
	{
		this.handle.SetItemPrototype(item);
	}
	
	public void*[] FindItems(String text)
	{
		return this.handle.FindItems(text);
	}
	
	public int32 SortRole()
	{
		return this.handle.SortRole();
	}
	
	public void SetSortRole(int32 role)
	{
		this.handle.SetSortRole(role);
	}
	
	public virtual libqt_string[] MimeTypes()
	{
		return this.handle.MimeTypes();
	}
	
	public virtual void* MimeData(IQModelIndex[] indexes)
	{
		return this.handle.MimeData(null);
	}
	
	public virtual bool DropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return this.handle.DropMimeData(data, action, row, column, parent);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QStandardItemModelPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QStandardItemModelPtr.Tr3(s, c, n);
	}
	
	public void* Item2(int32 row, int32 column)
	{
		return this.handle.Item2(row, column);
	}
	
	public bool InsertRow22(int32 row, IQModelIndex parent)
	{
		return this.handle.InsertRow22(row, parent);
	}
	
	public bool InsertColumn2(int32 column, IQModelIndex parent)
	{
		return this.handle.InsertColumn2(column, parent);
	}
	
	public void* TakeItem2(int32 row, int32 column)
	{
		return this.handle.TakeItem2(row, column);
	}
	
	public void*[] FindItems2(String text, int64 flags)
	{
		return this.handle.FindItems2(text, flags);
	}
	
	public void*[] FindItems3(String text, int64 flags, int32 column)
	{
		return this.handle.FindItems3(text, flags, column);
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return this.handle.HasIndex(row, column);
	}
	
	public virtual void Sibling(int32 row, int32 column, IQModelIndex idx)
	{
		this.handle.Sibling(row, column, idx);
	}
	
	public virtual bool CanDropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return this.handle.CanDropMimeData(data, action, row, column, parent);
	}
	
	public virtual int64 SupportedDragActions()
	{
		return this.handle.SupportedDragActions();
	}
	
	public virtual bool MoveRows(IQModelIndex sourceParent, int32 sourceRow, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return this.handle.MoveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
	}
	
	public virtual bool MoveColumns(IQModelIndex sourceParent, int32 sourceColumn, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return this.handle.MoveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
	}
	
	public bool RemoveRow(int32 row)
	{
		return this.handle.RemoveRow(row);
	}
	
	public bool RemoveColumn(int32 column)
	{
		return this.handle.RemoveColumn(column);
	}
	
	public bool MoveRow(IQModelIndex sourceParent, int32 sourceRow, IQModelIndex destinationParent, int32 destinationChild)
	{
		return this.handle.MoveRow(sourceParent, sourceRow, destinationParent, destinationChild);
	}
	
	public bool MoveColumn(IQModelIndex sourceParent, int32 sourceColumn, IQModelIndex destinationParent, int32 destinationChild)
	{
		return this.handle.MoveColumn(sourceParent, sourceColumn, destinationParent, destinationChild);
	}
	
	public virtual void FetchMore(IQModelIndex parent)
	{
		this.handle.FetchMore(parent);
	}
	
	public virtual bool CanFetchMore(IQModelIndex parent)
	{
		return this.handle.CanFetchMore(parent);
	}
	
	public virtual void Buddy(IQModelIndex index)
	{
		this.handle.Buddy(index);
	}
	
	public virtual void[] Match(IQModelIndex start, int32 role, IQVariant value, int32 hits, int64 flags)
	{
		return this.handle.Match(start, role, value, hits, flags);
	}
	
	public virtual void Span(IQModelIndex index)
	{
		this.handle.Span(index);
	}
	
	public bool CheckIndex(IQModelIndex index)
	{
		return this.handle.CheckIndex(index);
	}
	
	public virtual bool Submit()
	{
		return this.handle.Submit();
	}
	
	public virtual void Revert()
	{
		this.handle.Revert();
	}
	
	public bool HasIndex3(int32 row, int32 column, IQModelIndex parent)
	{
		return this.handle.HasIndex3(row, column, parent);
	}
	
	public bool RemoveRow2(int32 row, IQModelIndex parent)
	{
		return this.handle.RemoveRow2(row, parent);
	}
	
	public bool RemoveColumn2(int32 column, IQModelIndex parent)
	{
		return this.handle.RemoveColumn2(column, parent);
	}
	
	public bool CheckIndex2(IQModelIndex index, int64 options)
	{
		return this.handle.CheckIndex2(index, options);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return this.handle.EventFilter(watched, event);
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
	
	public void SetParent(IQObject parent)
	{
		this.handle.SetParent(parent);
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
		QStandardItemModelPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QStandardItemModelPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QStandardItemModelPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QStandardItemModelPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QStandardItemModel_new")]
	public static extern void* QStandardItemModel_new();
	[LinkName("QStandardItemModel_new2")]
	public static extern void* QStandardItemModel_new2(int32 rows, int32 columns);
	[LinkName("QStandardItemModel_new3")]
	public static extern void* QStandardItemModel_new3(void* parent);
	[LinkName("QStandardItemModel_new4")]
	public static extern void* QStandardItemModel_new4(int32 rows, int32 columns, void* parent);
	[LinkName("QStandardItemModel_MetaObject")]
	public static extern void* QStandardItemModel_MetaObject(void* c_this);
	[LinkName("QStandardItemModel_Metacast")]
	public static extern void* QStandardItemModel_Metacast(void* c_this, char8* param1);
	[LinkName("QStandardItemModel_Metacall")]
	public static extern int32 QStandardItemModel_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QStandardItemModel_Tr")]
	public static extern libqt_string QStandardItemModel_Tr(char8* s);
	[LinkName("QStandardItemModel_SetItemRoleNames")]
	public static extern void QStandardItemModel_SetItemRoleNames(void* c_this, void* roleNames);
	[LinkName("QStandardItemModel_RoleNames")]
	public static extern void* QStandardItemModel_RoleNames(void* c_this);
	[LinkName("QStandardItemModel_Index")]
	public static extern void QStandardItemModel_Index(void* c_this, int32 row, int32 column, void* parent);
	[LinkName("QStandardItemModel_Parent")]
	public static extern void QStandardItemModel_Parent(void* c_this, void* child);
	[LinkName("QStandardItemModel_RowCount")]
	public static extern int32 QStandardItemModel_RowCount(void* c_this, void* parent);
	[LinkName("QStandardItemModel_ColumnCount")]
	public static extern int32 QStandardItemModel_ColumnCount(void* c_this, void* parent);
	[LinkName("QStandardItemModel_HasChildren")]
	public static extern bool QStandardItemModel_HasChildren(void* c_this, void* parent);
	[LinkName("QStandardItemModel_Data")]
	public static extern void QStandardItemModel_Data(void* c_this, void* index, int32 role);
	[LinkName("QStandardItemModel_MultiData")]
	public static extern void QStandardItemModel_MultiData(void* c_this, void* index, void roleDataSpan);
	[LinkName("QStandardItemModel_SetData")]
	public static extern bool QStandardItemModel_SetData(void* c_this, void* index, void* value, int32 role);
	[LinkName("QStandardItemModel_ClearItemData")]
	public static extern bool QStandardItemModel_ClearItemData(void* c_this, void* index);
	[LinkName("QStandardItemModel_HeaderData")]
	public static extern void QStandardItemModel_HeaderData(void* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QStandardItemModel_SetHeaderData")]
	public static extern bool QStandardItemModel_SetHeaderData(void* c_this, int32 section, int64 orientation, void* value, int32 role);
	[LinkName("QStandardItemModel_InsertRows")]
	public static extern bool QStandardItemModel_InsertRows(void* c_this, int32 row, int32 count, void* parent);
	[LinkName("QStandardItemModel_InsertColumns")]
	public static extern bool QStandardItemModel_InsertColumns(void* c_this, int32 column, int32 count, void* parent);
	[LinkName("QStandardItemModel_RemoveRows")]
	public static extern bool QStandardItemModel_RemoveRows(void* c_this, int32 row, int32 count, void* parent);
	[LinkName("QStandardItemModel_RemoveColumns")]
	public static extern bool QStandardItemModel_RemoveColumns(void* c_this, int32 column, int32 count, void* parent);
	[LinkName("QStandardItemModel_Flags")]
	public static extern int64 QStandardItemModel_Flags(void* c_this, void* index);
	[LinkName("QStandardItemModel_SupportedDropActions")]
	public static extern int64 QStandardItemModel_SupportedDropActions(void* c_this);
	[LinkName("QStandardItemModel_ItemData")]
	public static extern void* QStandardItemModel_ItemData(void* c_this, void* index);
	[LinkName("QStandardItemModel_SetItemData")]
	public static extern bool QStandardItemModel_SetItemData(void* c_this, void* index, void* roles);
	[LinkName("QStandardItemModel_Clear")]
	public static extern void QStandardItemModel_Clear(void* c_this);
	[LinkName("QStandardItemModel_Sort")]
	public static extern void QStandardItemModel_Sort(void* c_this, int32 column, int64 order);
	[LinkName("QStandardItemModel_ItemFromIndex")]
	public static extern void* QStandardItemModel_ItemFromIndex(void* c_this, void* index);
	[LinkName("QStandardItemModel_IndexFromItem")]
	public static extern void QStandardItemModel_IndexFromItem(void* c_this, void* item);
	[LinkName("QStandardItemModel_Item")]
	public static extern void* QStandardItemModel_Item(void* c_this, int32 row);
	[LinkName("QStandardItemModel_SetItem")]
	public static extern void QStandardItemModel_SetItem(void* c_this, int32 row, int32 column, void* item);
	[LinkName("QStandardItemModel_SetItem2")]
	public static extern void QStandardItemModel_SetItem2(void* c_this, int32 row, void* item);
	[LinkName("QStandardItemModel_InvisibleRootItem")]
	public static extern void* QStandardItemModel_InvisibleRootItem(void* c_this);
	[LinkName("QStandardItemModel_HorizontalHeaderItem")]
	public static extern void* QStandardItemModel_HorizontalHeaderItem(void* c_this, int32 column);
	[LinkName("QStandardItemModel_SetHorizontalHeaderItem")]
	public static extern void QStandardItemModel_SetHorizontalHeaderItem(void* c_this, int32 column, void* item);
	[LinkName("QStandardItemModel_VerticalHeaderItem")]
	public static extern void* QStandardItemModel_VerticalHeaderItem(void* c_this, int32 row);
	[LinkName("QStandardItemModel_SetVerticalHeaderItem")]
	public static extern void QStandardItemModel_SetVerticalHeaderItem(void* c_this, int32 row, void* item);
	[LinkName("QStandardItemModel_SetHorizontalHeaderLabels")]
	public static extern void QStandardItemModel_SetHorizontalHeaderLabels(void* c_this, libqt_string[] labels);
	[LinkName("QStandardItemModel_SetVerticalHeaderLabels")]
	public static extern void QStandardItemModel_SetVerticalHeaderLabels(void* c_this, libqt_string[] labels);
	[LinkName("QStandardItemModel_SetRowCount")]
	public static extern void QStandardItemModel_SetRowCount(void* c_this, int32 rows);
	[LinkName("QStandardItemModel_SetColumnCount")]
	public static extern void QStandardItemModel_SetColumnCount(void* c_this, int32 columns);
	[LinkName("QStandardItemModel_AppendRow")]
	public static extern void QStandardItemModel_AppendRow(void* c_this, void*[] items);
	[LinkName("QStandardItemModel_AppendColumn")]
	public static extern void QStandardItemModel_AppendColumn(void* c_this, void*[] items);
	[LinkName("QStandardItemModel_AppendRowWithItem")]
	public static extern void QStandardItemModel_AppendRowWithItem(void* c_this, void* item);
	[LinkName("QStandardItemModel_InsertRow")]
	public static extern void QStandardItemModel_InsertRow(void* c_this, int32 row, void*[] items);
	[LinkName("QStandardItemModel_InsertColumn")]
	public static extern void QStandardItemModel_InsertColumn(void* c_this, int32 column, void*[] items);
	[LinkName("QStandardItemModel_InsertRow2")]
	public static extern void QStandardItemModel_InsertRow2(void* c_this, int32 row, void* item);
	[LinkName("QStandardItemModel_InsertRowWithRow")]
	public static extern bool QStandardItemModel_InsertRowWithRow(void* c_this, int32 row);
	[LinkName("QStandardItemModel_InsertColumnWithColumn")]
	public static extern bool QStandardItemModel_InsertColumnWithColumn(void* c_this, int32 column);
	[LinkName("QStandardItemModel_TakeItem")]
	public static extern void* QStandardItemModel_TakeItem(void* c_this, int32 row);
	[LinkName("QStandardItemModel_TakeRow")]
	public static extern void*[] QStandardItemModel_TakeRow(void* c_this, int32 row);
	[LinkName("QStandardItemModel_TakeColumn")]
	public static extern void*[] QStandardItemModel_TakeColumn(void* c_this, int32 column);
	[LinkName("QStandardItemModel_TakeHorizontalHeaderItem")]
	public static extern void* QStandardItemModel_TakeHorizontalHeaderItem(void* c_this, int32 column);
	[LinkName("QStandardItemModel_TakeVerticalHeaderItem")]
	public static extern void* QStandardItemModel_TakeVerticalHeaderItem(void* c_this, int32 row);
	[LinkName("QStandardItemModel_ItemPrototype")]
	public static extern void* QStandardItemModel_ItemPrototype(void* c_this);
	[LinkName("QStandardItemModel_SetItemPrototype")]
	public static extern void QStandardItemModel_SetItemPrototype(void* c_this, void* item);
	[LinkName("QStandardItemModel_FindItems")]
	public static extern void*[] QStandardItemModel_FindItems(void* c_this, libqt_string text);
	[LinkName("QStandardItemModel_SortRole")]
	public static extern int32 QStandardItemModel_SortRole(void* c_this);
	[LinkName("QStandardItemModel_SetSortRole")]
	public static extern void QStandardItemModel_SetSortRole(void* c_this, int32 role);
	[LinkName("QStandardItemModel_MimeTypes")]
	public static extern libqt_string[] QStandardItemModel_MimeTypes(void* c_this);
	[LinkName("QStandardItemModel_MimeData")]
	public static extern void* QStandardItemModel_MimeData(void* c_this, void[] indexes);
	[LinkName("QStandardItemModel_DropMimeData")]
	public static extern bool QStandardItemModel_DropMimeData(void* c_this, void* data, int64 action, int32 row, int32 column, void* parent);
	[LinkName("QStandardItemModel_Connect_ItemChanged")]
	public static extern void QStandardItemModel_Connect_ItemChanged(void* c_this, c_intptr slot);
	[LinkName("QStandardItemModel_Tr2")]
	public static extern libqt_string QStandardItemModel_Tr2(char8* s, char8* c);
	[LinkName("QStandardItemModel_Tr3")]
	public static extern libqt_string QStandardItemModel_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QStandardItemModel_Item2")]
	public static extern void* QStandardItemModel_Item2(void* c_this, int32 row, int32 column);
	[LinkName("QStandardItemModel_InsertRow22")]
	public static extern bool QStandardItemModel_InsertRow22(void* c_this, int32 row, void* parent);
	[LinkName("QStandardItemModel_InsertColumn2")]
	public static extern bool QStandardItemModel_InsertColumn2(void* c_this, int32 column, void* parent);
	[LinkName("QStandardItemModel_TakeItem2")]
	public static extern void* QStandardItemModel_TakeItem2(void* c_this, int32 row, int32 column);
	[LinkName("QStandardItemModel_FindItems2")]
	public static extern void*[] QStandardItemModel_FindItems2(void* c_this, libqt_string text, int64 flags);
	[LinkName("QStandardItemModel_FindItems3")]
	public static extern void*[] QStandardItemModel_FindItems3(void* c_this, libqt_string text, int64 flags, int32 column);
	/// Delete this object from C++ memory
	[LinkName("QStandardItemModel_Delete")]
	public static extern void QStandardItemModel_Delete(void* self);
}