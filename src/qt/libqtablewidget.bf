using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTableWidgetItem__ItemType
{
	Type = 0,
	UserType = 1000,
}
public class QTableWidgetSelectionRange
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QTableWidgetSelectionRange_new(other);
	}
	
	public ~this()
	{
		CQt.QTableWidgetSelectionRange_Delete(this.nativePtr);
	}
	
	public int32 TopRow()
	{
		return CQt.QTableWidgetSelectionRange_TopRow(this.nativePtr);
	}
	
	public int32 BottomRow()
	{
		return CQt.QTableWidgetSelectionRange_BottomRow(this.nativePtr);
	}
	
	public int32 LeftColumn()
	{
		return CQt.QTableWidgetSelectionRange_LeftColumn(this.nativePtr);
	}
	
	public int32 RightColumn()
	{
		return CQt.QTableWidgetSelectionRange_RightColumn(this.nativePtr);
	}
	
	public int32 RowCount()
	{
		return CQt.QTableWidgetSelectionRange_RowCount(this.nativePtr);
	}
	
	public int32 ColumnCount()
	{
		return CQt.QTableWidgetSelectionRange_ColumnCount(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTableWidgetSelectionRange_new")]
	public static extern void* QTableWidgetSelectionRange_new(void* other);
	[LinkName("QTableWidgetSelectionRange_new2")]
	public static extern void* QTableWidgetSelectionRange_new2(void* other);
	[LinkName("QTableWidgetSelectionRange_new3")]
	public static extern void* QTableWidgetSelectionRange_new3();
	[LinkName("QTableWidgetSelectionRange_new4")]
	public static extern void* QTableWidgetSelectionRange_new4(int32 top, int32 left, int32 bottom, int32 right);
	[LinkName("QTableWidgetSelectionRange_TopRow")]
	public static extern int32 QTableWidgetSelectionRange_TopRow(void* c_this);
	[LinkName("QTableWidgetSelectionRange_BottomRow")]
	public static extern int32 QTableWidgetSelectionRange_BottomRow(void* c_this);
	[LinkName("QTableWidgetSelectionRange_LeftColumn")]
	public static extern int32 QTableWidgetSelectionRange_LeftColumn(void* c_this);
	[LinkName("QTableWidgetSelectionRange_RightColumn")]
	public static extern int32 QTableWidgetSelectionRange_RightColumn(void* c_this);
	[LinkName("QTableWidgetSelectionRange_RowCount")]
	public static extern int32 QTableWidgetSelectionRange_RowCount(void* c_this);
	[LinkName("QTableWidgetSelectionRange_ColumnCount")]
	public static extern int32 QTableWidgetSelectionRange_ColumnCount(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTableWidgetSelectionRange_Delete")]
	public static extern void QTableWidgetSelectionRange_Delete(void* self);
}
public class QTableWidgetItem
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTableWidgetItem_new();
	}
	
	public ~this()
	{
		CQt.QTableWidgetItem_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
	{
		return CQt.QTableWidgetItem_Clone(this.nativePtr);
	}
	
	public void* TableWidget()
	{
		return CQt.QTableWidgetItem_TableWidget(this.nativePtr);
	}
	
	public int32 Row()
	{
		return CQt.QTableWidgetItem_Row(this.nativePtr);
	}
	
	public int32 Column()
	{
		return CQt.QTableWidgetItem_Column(this.nativePtr);
	}
	
	public void SetSelected(bool selectVal)
	{
		CQt.QTableWidgetItem_SetSelected(this.nativePtr, selectVal);
	}
	
	public bool IsSelected()
	{
		return CQt.QTableWidgetItem_IsSelected(this.nativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QTableWidgetItem_Flags(this.nativePtr);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QTableWidgetItem_SetFlags(this.nativePtr, flags);
	}
	
	public libqt_string Text()
	{
		return CQt.QTableWidgetItem_Text(this.nativePtr);
	}
	
	public void SetText(libqt_string text)
	{
		CQt.QTableWidgetItem_SetText(this.nativePtr, text);
	}
	
	public void Icon()
	{
		CQt.QTableWidgetItem_Icon(this.nativePtr);
	}
	
	public void SetIcon(void* icon)
	{
		CQt.QTableWidgetItem_SetIcon(this.nativePtr, icon);
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QTableWidgetItem_StatusTip(this.nativePtr);
	}
	
	public void SetStatusTip(libqt_string statusTip)
	{
		CQt.QTableWidgetItem_SetStatusTip(this.nativePtr, statusTip);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QTableWidgetItem_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(libqt_string toolTip)
	{
		CQt.QTableWidgetItem_SetToolTip(this.nativePtr, toolTip);
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QTableWidgetItem_WhatsThis(this.nativePtr);
	}
	
	public void SetWhatsThis(libqt_string whatsThis)
	{
		CQt.QTableWidgetItem_SetWhatsThis(this.nativePtr, whatsThis);
	}
	
	public void Font()
	{
		CQt.QTableWidgetItem_Font(this.nativePtr);
	}
	
	public void SetFont(void* font)
	{
		CQt.QTableWidgetItem_SetFont(this.nativePtr, font);
	}
	
	public int32 TextAlignment()
	{
		return CQt.QTableWidgetItem_TextAlignment(this.nativePtr);
	}
	
	public void SetTextAlignment(int32 alignment)
	{
		CQt.QTableWidgetItem_SetTextAlignment(this.nativePtr, alignment);
	}
	
	public void SetTextAlignmentWithAlignment(int64 alignment)
	{
		CQt.QTableWidgetItem_SetTextAlignmentWithAlignment(this.nativePtr, alignment);
	}
	
	public void SetTextAlignment2(int64 alignment)
	{
		CQt.QTableWidgetItem_SetTextAlignment2(this.nativePtr, alignment);
	}
	
	public void Background()
	{
		CQt.QTableWidgetItem_Background(this.nativePtr);
	}
	
	public void SetBackground(void* brush)
	{
		CQt.QTableWidgetItem_SetBackground(this.nativePtr, brush);
	}
	
	public void Foreground()
	{
		CQt.QTableWidgetItem_Foreground(this.nativePtr);
	}
	
	public void SetForeground(void* brush)
	{
		CQt.QTableWidgetItem_SetForeground(this.nativePtr, brush);
	}
	
	public int64 CheckState()
	{
		return CQt.QTableWidgetItem_CheckState(this.nativePtr);
	}
	
	public void SetCheckState(int64 state)
	{
		CQt.QTableWidgetItem_SetCheckState(this.nativePtr, state);
	}
	
	public void SizeHint()
	{
		CQt.QTableWidgetItem_SizeHint(this.nativePtr);
	}
	
	public void SetSizeHint(void* size)
	{
		CQt.QTableWidgetItem_SetSizeHint(this.nativePtr, size);
	}
	
	public virtual void Data(int32 role)
	{
		CQt.QTableWidgetItem_Data(this.nativePtr, role);
	}
	
	public virtual void SetData(int32 role, void* value)
	{
		CQt.QTableWidgetItem_SetData(this.nativePtr, role, value);
	}
	
	public virtual bool OperatorLesser(void* other)
	{
		return CQt.QTableWidgetItem_OperatorLesser(this.nativePtr, other);
	}
	
	public virtual void Read(void* _in)
	{
		CQt.QTableWidgetItem_Read(this.nativePtr, _in);
	}
	
	public virtual void Write(void* _out)
	{
		CQt.QTableWidgetItem_Write(this.nativePtr, _out);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QTableWidgetItem_OperatorAssign(this.nativePtr, other);
	}
	
	public int32 Type()
	{
		return CQt.QTableWidgetItem_Type(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTableWidgetItem_new")]
	public static extern void* QTableWidgetItem_new();
	[LinkName("QTableWidgetItem_new2")]
	public static extern void* QTableWidgetItem_new2(libqt_string text);
	[LinkName("QTableWidgetItem_new3")]
	public static extern void* QTableWidgetItem_new3(void* icon, libqt_string text);
	[LinkName("QTableWidgetItem_new4")]
	public static extern void* QTableWidgetItem_new4(void* other);
	[LinkName("QTableWidgetItem_new5")]
	public static extern void* QTableWidgetItem_new5(int32 typeVal);
	[LinkName("QTableWidgetItem_new6")]
	public static extern void* QTableWidgetItem_new6(libqt_string text, int32 typeVal);
	[LinkName("QTableWidgetItem_new7")]
	public static extern void* QTableWidgetItem_new7(void* icon, libqt_string text, int32 typeVal);
	[LinkName("QTableWidgetItem_Clone")]
	public static extern void* QTableWidgetItem_Clone(void* c_this);
	[LinkName("QTableWidgetItem_TableWidget")]
	public static extern void* QTableWidgetItem_TableWidget(void* c_this);
	[LinkName("QTableWidgetItem_Row")]
	public static extern int32 QTableWidgetItem_Row(void* c_this);
	[LinkName("QTableWidgetItem_Column")]
	public static extern int32 QTableWidgetItem_Column(void* c_this);
	[LinkName("QTableWidgetItem_SetSelected")]
	public static extern void QTableWidgetItem_SetSelected(void* c_this, bool selectVal);
	[LinkName("QTableWidgetItem_IsSelected")]
	public static extern bool QTableWidgetItem_IsSelected(void* c_this);
	[LinkName("QTableWidgetItem_Flags")]
	public static extern int64 QTableWidgetItem_Flags(void* c_this);
	[LinkName("QTableWidgetItem_SetFlags")]
	public static extern void QTableWidgetItem_SetFlags(void* c_this, int64 flags);
	[LinkName("QTableWidgetItem_Text")]
	public static extern libqt_string QTableWidgetItem_Text(void* c_this);
	[LinkName("QTableWidgetItem_SetText")]
	public static extern void QTableWidgetItem_SetText(void* c_this, libqt_string text);
	[LinkName("QTableWidgetItem_Icon")]
	public static extern void QTableWidgetItem_Icon(void* c_this);
	[LinkName("QTableWidgetItem_SetIcon")]
	public static extern void QTableWidgetItem_SetIcon(void* c_this, void* icon);
	[LinkName("QTableWidgetItem_StatusTip")]
	public static extern libqt_string QTableWidgetItem_StatusTip(void* c_this);
	[LinkName("QTableWidgetItem_SetStatusTip")]
	public static extern void QTableWidgetItem_SetStatusTip(void* c_this, libqt_string statusTip);
	[LinkName("QTableWidgetItem_ToolTip")]
	public static extern libqt_string QTableWidgetItem_ToolTip(void* c_this);
	[LinkName("QTableWidgetItem_SetToolTip")]
	public static extern void QTableWidgetItem_SetToolTip(void* c_this, libqt_string toolTip);
	[LinkName("QTableWidgetItem_WhatsThis")]
	public static extern libqt_string QTableWidgetItem_WhatsThis(void* c_this);
	[LinkName("QTableWidgetItem_SetWhatsThis")]
	public static extern void QTableWidgetItem_SetWhatsThis(void* c_this, libqt_string whatsThis);
	[LinkName("QTableWidgetItem_Font")]
	public static extern void QTableWidgetItem_Font(void* c_this);
	[LinkName("QTableWidgetItem_SetFont")]
	public static extern void QTableWidgetItem_SetFont(void* c_this, void* font);
	[LinkName("QTableWidgetItem_TextAlignment")]
	public static extern int32 QTableWidgetItem_TextAlignment(void* c_this);
	[LinkName("QTableWidgetItem_SetTextAlignment")]
	public static extern void QTableWidgetItem_SetTextAlignment(void* c_this, int32 alignment);
	[LinkName("QTableWidgetItem_SetTextAlignmentWithAlignment")]
	public static extern void QTableWidgetItem_SetTextAlignmentWithAlignment(void* c_this, int64 alignment);
	[LinkName("QTableWidgetItem_SetTextAlignment2")]
	public static extern void QTableWidgetItem_SetTextAlignment2(void* c_this, int64 alignment);
	[LinkName("QTableWidgetItem_Background")]
	public static extern void QTableWidgetItem_Background(void* c_this);
	[LinkName("QTableWidgetItem_SetBackground")]
	public static extern void QTableWidgetItem_SetBackground(void* c_this, void* brush);
	[LinkName("QTableWidgetItem_Foreground")]
	public static extern void QTableWidgetItem_Foreground(void* c_this);
	[LinkName("QTableWidgetItem_SetForeground")]
	public static extern void QTableWidgetItem_SetForeground(void* c_this, void* brush);
	[LinkName("QTableWidgetItem_CheckState")]
	public static extern int64 QTableWidgetItem_CheckState(void* c_this);
	[LinkName("QTableWidgetItem_SetCheckState")]
	public static extern void QTableWidgetItem_SetCheckState(void* c_this, int64 state);
	[LinkName("QTableWidgetItem_SizeHint")]
	public static extern void QTableWidgetItem_SizeHint(void* c_this);
	[LinkName("QTableWidgetItem_SetSizeHint")]
	public static extern void QTableWidgetItem_SetSizeHint(void* c_this, void* size);
	[LinkName("QTableWidgetItem_Data")]
	public static extern void QTableWidgetItem_Data(void* c_this, int32 role);
	[LinkName("QTableWidgetItem_SetData")]
	public static extern void QTableWidgetItem_SetData(void* c_this, int32 role, void* value);
	[LinkName("QTableWidgetItem_OperatorLesser")]
	public static extern bool QTableWidgetItem_OperatorLesser(void* c_this, void* other);
	[LinkName("QTableWidgetItem_Read")]
	public static extern void QTableWidgetItem_Read(void* c_this, void* _in);
	[LinkName("QTableWidgetItem_Write")]
	public static extern void QTableWidgetItem_Write(void* c_this, void* _out);
	[LinkName("QTableWidgetItem_OperatorAssign")]
	public static extern void QTableWidgetItem_OperatorAssign(void* c_this, void* other);
	[LinkName("QTableWidgetItem_Type")]
	public static extern int32 QTableWidgetItem_Type(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTableWidgetItem_Delete")]
	public static extern void QTableWidgetItem_Delete(void* self);
}
public class QTableWidget
{
	protected void* nativePtr;
	
	public this(void* parent)
	{
		this.nativePtr = CQt.QTableWidget_new(parent);
	}
	
	public ~this()
	{
		CQt.QTableWidget_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QTableWidget_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QTableWidget_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTableWidget_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QTableWidget_Tr(s);
	}
	
	public void SetRowCount(int32 rows)
	{
		CQt.QTableWidget_SetRowCount(this.nativePtr, rows);
	}
	
	public int32 RowCount()
	{
		return CQt.QTableWidget_RowCount(this.nativePtr);
	}
	
	public void SetColumnCount(int32 columns)
	{
		CQt.QTableWidget_SetColumnCount(this.nativePtr, columns);
	}
	
	public int32 ColumnCount()
	{
		return CQt.QTableWidget_ColumnCount(this.nativePtr);
	}
	
	public int32 Row(void* item)
	{
		return CQt.QTableWidget_Row(this.nativePtr, item);
	}
	
	public int32 Column(void* item)
	{
		return CQt.QTableWidget_Column(this.nativePtr, item);
	}
	
	public void* Item(int32 row, int32 column)
	{
		return CQt.QTableWidget_Item(this.nativePtr, row, column);
	}
	
	public void SetItem(int32 row, int32 column, void* item)
	{
		CQt.QTableWidget_SetItem(this.nativePtr, row, column, item);
	}
	
	public void* TakeItem(int32 row, int32 column)
	{
		return CQt.QTableWidget_TakeItem(this.nativePtr, row, column);
	}
	
	public void*[] Items(void* data)
	{
		return CQt.QTableWidget_Items(this.nativePtr, data);
	}
	
	public void IndexFromItem(void* item)
	{
		CQt.QTableWidget_IndexFromItem(this.nativePtr, item);
	}
	
	public void* ItemFromIndex(void* index)
	{
		return CQt.QTableWidget_ItemFromIndex(this.nativePtr, index);
	}
	
	public void* VerticalHeaderItem(int32 row)
	{
		return CQt.QTableWidget_VerticalHeaderItem(this.nativePtr, row);
	}
	
	public void SetVerticalHeaderItem(int32 row, void* item)
	{
		CQt.QTableWidget_SetVerticalHeaderItem(this.nativePtr, row, item);
	}
	
	public void* TakeVerticalHeaderItem(int32 row)
	{
		return CQt.QTableWidget_TakeVerticalHeaderItem(this.nativePtr, row);
	}
	
	public void* HorizontalHeaderItem(int32 column)
	{
		return CQt.QTableWidget_HorizontalHeaderItem(this.nativePtr, column);
	}
	
	public void SetHorizontalHeaderItem(int32 column, void* item)
	{
		CQt.QTableWidget_SetHorizontalHeaderItem(this.nativePtr, column, item);
	}
	
	public void* TakeHorizontalHeaderItem(int32 column)
	{
		return CQt.QTableWidget_TakeHorizontalHeaderItem(this.nativePtr, column);
	}
	
	public void SetVerticalHeaderLabels(libqt_string[] labels)
	{
		CQt.QTableWidget_SetVerticalHeaderLabels(this.nativePtr, labels);
	}
	
	public void SetHorizontalHeaderLabels(libqt_string[] labels)
	{
		CQt.QTableWidget_SetHorizontalHeaderLabels(this.nativePtr, labels);
	}
	
	public int32 CurrentRow()
	{
		return CQt.QTableWidget_CurrentRow(this.nativePtr);
	}
	
	public int32 CurrentColumn()
	{
		return CQt.QTableWidget_CurrentColumn(this.nativePtr);
	}
	
	public void* CurrentItem()
	{
		return CQt.QTableWidget_CurrentItem(this.nativePtr);
	}
	
	public void SetCurrentItem(void* item)
	{
		CQt.QTableWidget_SetCurrentItem(this.nativePtr, item);
	}
	
	public void SetCurrentItem2(void* item, int64 command)
	{
		CQt.QTableWidget_SetCurrentItem2(this.nativePtr, item, command);
	}
	
	public void SetCurrentCell(int32 row, int32 column)
	{
		CQt.QTableWidget_SetCurrentCell(this.nativePtr, row, column);
	}
	
	public void SetCurrentCell2(int32 row, int32 column, int64 command)
	{
		CQt.QTableWidget_SetCurrentCell2(this.nativePtr, row, column, command);
	}
	
	public void SortItems(int32 column)
	{
		CQt.QTableWidget_SortItems(this.nativePtr, column);
	}
	
	public void SetSortingEnabled(bool enable)
	{
		CQt.QTableWidget_SetSortingEnabled(this.nativePtr, enable);
	}
	
	public bool IsSortingEnabled()
	{
		return CQt.QTableWidget_IsSortingEnabled(this.nativePtr);
	}
	
	public void EditItem(void* item)
	{
		CQt.QTableWidget_EditItem(this.nativePtr, item);
	}
	
	public void OpenPersistentEditor(void* item)
	{
		CQt.QTableWidget_OpenPersistentEditor(this.nativePtr, item);
	}
	
	public void ClosePersistentEditor(void* item)
	{
		CQt.QTableWidget_ClosePersistentEditor(this.nativePtr, item);
	}
	
	public bool IsPersistentEditorOpen(void* item)
	{
		return CQt.QTableWidget_IsPersistentEditorOpen(this.nativePtr, item);
	}
	
	public void* CellWidget(int32 row, int32 column)
	{
		return CQt.QTableWidget_CellWidget(this.nativePtr, row, column);
	}
	
	public void SetCellWidget(int32 row, int32 column, void* widget)
	{
		CQt.QTableWidget_SetCellWidget(this.nativePtr, row, column, widget);
	}
	
	public void RemoveCellWidget(int32 row, int32 column)
	{
		CQt.QTableWidget_RemoveCellWidget(this.nativePtr, row, column);
	}
	
	public void SetRangeSelected(void* range, bool selectVal)
	{
		CQt.QTableWidget_SetRangeSelected(this.nativePtr, range, selectVal);
	}
	
	public void[] SelectedRanges()
	{
		return CQt.QTableWidget_SelectedRanges(this.nativePtr);
	}
	
	public void*[] SelectedItems()
	{
		return CQt.QTableWidget_SelectedItems(this.nativePtr);
	}
	
	public void*[] FindItems(libqt_string text, int64 flags)
	{
		return CQt.QTableWidget_FindItems(this.nativePtr, text, flags);
	}
	
	public int32 VisualRow(int32 logicalRow)
	{
		return CQt.QTableWidget_VisualRow(this.nativePtr, logicalRow);
	}
	
	public int32 VisualColumn(int32 logicalColumn)
	{
		return CQt.QTableWidget_VisualColumn(this.nativePtr, logicalColumn);
	}
	
	public void* ItemAt(void* p)
	{
		return CQt.QTableWidget_ItemAt(this.nativePtr, p);
	}
	
	public void* ItemAt2(int32 x, int32 y)
	{
		return CQt.QTableWidget_ItemAt2(this.nativePtr, x, y);
	}
	
	public void VisualItemRect(void* item)
	{
		CQt.QTableWidget_VisualItemRect(this.nativePtr, item);
	}
	
	public void* ItemPrototype()
	{
		return CQt.QTableWidget_ItemPrototype(this.nativePtr);
	}
	
	public void SetItemPrototype(void* item)
	{
		CQt.QTableWidget_SetItemPrototype(this.nativePtr, item);
	}
	
	public void ScrollToItem(void* item)
	{
		CQt.QTableWidget_ScrollToItem(this.nativePtr, item);
	}
	
	public void InsertRow(int32 row)
	{
		CQt.QTableWidget_InsertRow(this.nativePtr, row);
	}
	
	public void InsertColumn(int32 column)
	{
		CQt.QTableWidget_InsertColumn(this.nativePtr, column);
	}
	
	public void RemoveRow(int32 row)
	{
		CQt.QTableWidget_RemoveRow(this.nativePtr, row);
	}
	
	public void RemoveColumn(int32 column)
	{
		CQt.QTableWidget_RemoveColumn(this.nativePtr, column);
	}
	
	public void Clear()
	{
		CQt.QTableWidget_Clear(this.nativePtr);
	}
	
	public void ClearContents()
	{
		CQt.QTableWidget_ClearContents(this.nativePtr);
	}
	
	public virtual bool Event(void* e)
	{
		return CQt.QTableWidget_Event(this.nativePtr, e);
	}
	
	public virtual libqt_string[] MimeTypes()
	{
		return CQt.QTableWidget_MimeTypes(this.nativePtr);
	}
	
	public virtual void* MimeData(void*[] items)
	{
		return CQt.QTableWidget_MimeData(this.nativePtr, items);
	}
	
	public virtual bool DropMimeData(int32 row, int32 column, void* data, int64 action)
	{
		return CQt.QTableWidget_DropMimeData(this.nativePtr, row, column, data, action);
	}
	
	public virtual int64 SupportedDropActions()
	{
		return CQt.QTableWidget_SupportedDropActions(this.nativePtr);
	}
	
	public virtual void DropEvent(void* event)
	{
		CQt.QTableWidget_DropEvent(this.nativePtr, event);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QTableWidget_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QTableWidget_Tr3(s, c, n);
	}
	
	public void SortItems2(int32 column, int64 order)
	{
		CQt.QTableWidget_SortItems2(this.nativePtr, column, order);
	}
	
	public void ScrollToItem2(void* item, int64 hint)
	{
		CQt.QTableWidget_ScrollToItem2(this.nativePtr, item, hint);
	}
	
	public virtual void SetModel(void* model)
	{
		CQt.QTableView_SetModel(this.nativePtr, model);
	}
	
	public virtual void SetRootIndex(void* index)
	{
		CQt.QTableView_SetRootIndex(this.nativePtr, index);
	}
	
	public virtual void SetSelectionModel(void* selectionModel)
	{
		CQt.QTableView_SetSelectionModel(this.nativePtr, selectionModel);
	}
	
	public virtual void DoItemsLayout()
	{
		CQt.QTableView_DoItemsLayout(this.nativePtr);
	}
	
	public void* HorizontalHeader()
	{
		return CQt.QTableView_HorizontalHeader(this.nativePtr);
	}
	
	public void* VerticalHeader()
	{
		return CQt.QTableView_VerticalHeader(this.nativePtr);
	}
	
	public void SetHorizontalHeader(void* header)
	{
		CQt.QTableView_SetHorizontalHeader(this.nativePtr, header);
	}
	
	public void SetVerticalHeader(void* header)
	{
		CQt.QTableView_SetVerticalHeader(this.nativePtr, header);
	}
	
	public int32 RowViewportPosition(int32 row)
	{
		return CQt.QTableView_RowViewportPosition(this.nativePtr, row);
	}
	
	public int32 RowAt(int32 y)
	{
		return CQt.QTableView_RowAt(this.nativePtr, y);
	}
	
	public void SetRowHeight(int32 row, int32 height)
	{
		CQt.QTableView_SetRowHeight(this.nativePtr, row, height);
	}
	
	public int32 RowHeight(int32 row)
	{
		return CQt.QTableView_RowHeight(this.nativePtr, row);
	}
	
	public int32 ColumnViewportPosition(int32 column)
	{
		return CQt.QTableView_ColumnViewportPosition(this.nativePtr, column);
	}
	
	public int32 ColumnAt(int32 x)
	{
		return CQt.QTableView_ColumnAt(this.nativePtr, x);
	}
	
	public void SetColumnWidth(int32 column, int32 width)
	{
		CQt.QTableView_SetColumnWidth(this.nativePtr, column, width);
	}
	
	public int32 ColumnWidth(int32 column)
	{
		return CQt.QTableView_ColumnWidth(this.nativePtr, column);
	}
	
	public bool IsRowHidden(int32 row)
	{
		return CQt.QTableView_IsRowHidden(this.nativePtr, row);
	}
	
	public void SetRowHidden(int32 row, bool hide)
	{
		CQt.QTableView_SetRowHidden(this.nativePtr, row, hide);
	}
	
	public bool IsColumnHidden(int32 column)
	{
		return CQt.QTableView_IsColumnHidden(this.nativePtr, column);
	}
	
	public void SetColumnHidden(int32 column, bool hide)
	{
		CQt.QTableView_SetColumnHidden(this.nativePtr, column, hide);
	}
	
	public bool ShowGrid()
	{
		return CQt.QTableView_ShowGrid(this.nativePtr);
	}
	
	public int64 GridStyle()
	{
		return CQt.QTableView_GridStyle(this.nativePtr);
	}
	
	public void SetGridStyle(int64 style)
	{
		CQt.QTableView_SetGridStyle(this.nativePtr, style);
	}
	
	public void SetWordWrap(bool on)
	{
		CQt.QTableView_SetWordWrap(this.nativePtr, on);
	}
	
	public bool WordWrap()
	{
		return CQt.QTableView_WordWrap(this.nativePtr);
	}
	
	public void SetCornerButtonEnabled(bool enable)
	{
		CQt.QTableView_SetCornerButtonEnabled(this.nativePtr, enable);
	}
	
	public bool IsCornerButtonEnabled()
	{
		return CQt.QTableView_IsCornerButtonEnabled(this.nativePtr);
	}
	
	public virtual void VisualRect(void* index)
	{
		CQt.QTableView_VisualRect(this.nativePtr, index);
	}
	
	public virtual void ScrollTo(void* index, int64 hint)
	{
		CQt.QTableView_ScrollTo(this.nativePtr, index, hint);
	}
	
	public virtual void IndexAt(void* p)
	{
		CQt.QTableView_IndexAt(this.nativePtr, p);
	}
	
	public void SetSpan(int32 row, int32 column, int32 rowSpan, int32 columnSpan)
	{
		CQt.QTableView_SetSpan(this.nativePtr, row, column, rowSpan, columnSpan);
	}
	
	public int32 RowSpan(int32 row, int32 column)
	{
		return CQt.QTableView_RowSpan(this.nativePtr, row, column);
	}
	
	public int32 ColumnSpan(int32 row, int32 column)
	{
		return CQt.QTableView_ColumnSpan(this.nativePtr, row, column);
	}
	
	public void ClearSpans()
	{
		CQt.QTableView_ClearSpans(this.nativePtr);
	}
	
	public void SelectRow(int32 row)
	{
		CQt.QTableView_SelectRow(this.nativePtr, row);
	}
	
	public void SelectColumn(int32 column)
	{
		CQt.QTableView_SelectColumn(this.nativePtr, column);
	}
	
	public void HideRow(int32 row)
	{
		CQt.QTableView_HideRow(this.nativePtr, row);
	}
	
	public void HideColumn(int32 column)
	{
		CQt.QTableView_HideColumn(this.nativePtr, column);
	}
	
	public void ShowRow(int32 row)
	{
		CQt.QTableView_ShowRow(this.nativePtr, row);
	}
	
	public void ShowColumn(int32 column)
	{
		CQt.QTableView_ShowColumn(this.nativePtr, column);
	}
	
	public void ResizeRowToContents(int32 row)
	{
		CQt.QTableView_ResizeRowToContents(this.nativePtr, row);
	}
	
	public void ResizeRowsToContents()
	{
		CQt.QTableView_ResizeRowsToContents(this.nativePtr);
	}
	
	public void ResizeColumnToContents(int32 column)
	{
		CQt.QTableView_ResizeColumnToContents(this.nativePtr, column);
	}
	
	public void ResizeColumnsToContents()
	{
		CQt.QTableView_ResizeColumnsToContents(this.nativePtr);
	}
	
	public void SortByColumn(int32 column, int64 order)
	{
		CQt.QTableView_SortByColumn(this.nativePtr, column, order);
	}
	
	public void SetShowGrid(bool show)
	{
		CQt.QTableView_SetShowGrid(this.nativePtr, show);
	}
	
	public void* Model()
	{
		return CQt.QAbstractItemView_Model(this.nativePtr);
	}
	
	public void* SelectionModel()
	{
		return CQt.QAbstractItemView_SelectionModel(this.nativePtr);
	}
	
	public void SetItemDelegate(void* _delegate)
	{
		CQt.QAbstractItemView_SetItemDelegate(this.nativePtr, _delegate);
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
	
	public void SetIconSize(void* size)
	{
		CQt.QAbstractItemView_SetIconSize(this.nativePtr, size);
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
	
	public virtual void KeyboardSearch(libqt_string search)
	{
		CQt.QAbstractItemView_KeyboardSearch(this.nativePtr, search);
	}
	
	public void SizeHintForIndex(void* index)
	{
		CQt.QAbstractItemView_SizeHintForIndex(this.nativePtr, index);
	}
	
	public virtual int32 SizeHintForRow(int32 row)
	{
		return CQt.QAbstractItemView_SizeHintForRow(this.nativePtr, row);
	}
	
	public virtual int32 SizeHintForColumn(int32 column)
	{
		return CQt.QAbstractItemView_SizeHintForColumn(this.nativePtr, column);
	}
	
	public void SetIndexWidget(void* index, void* widget)
	{
		CQt.QAbstractItemView_SetIndexWidget(this.nativePtr, index, widget);
	}
	
	public void* IndexWidget(void* index)
	{
		return CQt.QAbstractItemView_IndexWidget(this.nativePtr, index);
	}
	
	public void SetItemDelegateForRow(int32 row, void* _delegate)
	{
		CQt.QAbstractItemView_SetItemDelegateForRow(this.nativePtr, row, _delegate);
	}
	
	public void* ItemDelegateForRow(int32 row)
	{
		return CQt.QAbstractItemView_ItemDelegateForRow(this.nativePtr, row);
	}
	
	public void SetItemDelegateForColumn(int32 column, void* _delegate)
	{
		CQt.QAbstractItemView_SetItemDelegateForColumn(this.nativePtr, column, _delegate);
	}
	
	public void* ItemDelegateForColumn(int32 column)
	{
		return CQt.QAbstractItemView_ItemDelegateForColumn(this.nativePtr, column);
	}
	
	public void* ItemDelegateWithIndex(void* index)
	{
		return CQt.QAbstractItemView_ItemDelegateWithIndex(this.nativePtr, index);
	}
	
	public virtual void* ItemDelegateForIndex(void* index)
	{
		return CQt.QAbstractItemView_ItemDelegateForIndex(this.nativePtr, index);
	}
	
	public virtual void InputMethodQuery(int64 query)
	{
		CQt.QAbstractItemView_InputMethodQuery(this.nativePtr, query);
	}
	
	public virtual void Reset()
	{
		CQt.QAbstractItemView_Reset(this.nativePtr);
	}
	
	public virtual void SelectAll()
	{
		CQt.QAbstractItemView_SelectAll(this.nativePtr);
	}
	
	public void Edit(void* index)
	{
		CQt.QAbstractItemView_Edit(this.nativePtr, index);
	}
	
	public void ClearSelection()
	{
		CQt.QAbstractItemView_ClearSelection(this.nativePtr);
	}
	
	public void SetCurrentIndex(void* index)
	{
		CQt.QAbstractItemView_SetCurrentIndex(this.nativePtr, index);
	}
	
	public void ScrollToTop()
	{
		CQt.QAbstractItemView_ScrollToTop(this.nativePtr);
	}
	
	public void ScrollToBottom()
	{
		CQt.QAbstractItemView_ScrollToBottom(this.nativePtr);
	}
	
	public void Update(void* index)
	{
		CQt.QAbstractItemView_Update(this.nativePtr, index);
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
	
	public void SetVerticalScrollBar(void* scrollbar)
	{
		CQt.QAbstractScrollArea_SetVerticalScrollBar(this.nativePtr, scrollbar);
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
	
	public void SetHorizontalScrollBar(void* scrollbar)
	{
		CQt.QAbstractScrollArea_SetHorizontalScrollBar(this.nativePtr, scrollbar);
	}
	
	public void* CornerWidget()
	{
		return CQt.QAbstractScrollArea_CornerWidget(this.nativePtr);
	}
	
	public void SetCornerWidget(void* widget)
	{
		CQt.QAbstractScrollArea_SetCornerWidget(this.nativePtr, widget);
	}
	
	public void AddScrollBarWidget(void* widget, int64 alignment)
	{
		CQt.QAbstractScrollArea_AddScrollBarWidget(this.nativePtr, widget, alignment);
	}
	
	public void*[] ScrollBarWidgets(int64 alignment)
	{
		return CQt.QAbstractScrollArea_ScrollBarWidgets(this.nativePtr, alignment);
	}
	
	public void* Viewport()
	{
		return CQt.QAbstractScrollArea_Viewport(this.nativePtr);
	}
	
	public void SetViewport(void* widget)
	{
		CQt.QAbstractScrollArea_SetViewport(this.nativePtr, widget);
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
	
	public virtual void SetupViewport(void* viewport)
	{
		CQt.QAbstractScrollArea_SetupViewport(this.nativePtr, viewport);
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
	
	public void SetFrameRect(void* frameRect)
	{
		CQt.QFrame_SetFrameRect(this.nativePtr, frameRect);
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
	
	public void SetStyle(void* style)
	{
		CQt.QWidget_SetStyle(this.nativePtr, style);
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
	
	public bool IsEnabledTo(void* param1)
	{
		return CQt.QWidget_IsEnabledTo(this.nativePtr, param1);
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
	
	public void SetMinimumSize(void* minimumSize)
	{
		CQt.QWidget_SetMinimumSize(this.nativePtr, minimumSize);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		CQt.QWidget_SetMinimumSize2(this.nativePtr, minw, minh);
	}
	
	public void SetMaximumSize(void* maximumSize)
	{
		CQt.QWidget_SetMaximumSize(this.nativePtr, maximumSize);
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
	
	public void SetSizeIncrement(void* sizeIncrement)
	{
		CQt.QWidget_SetSizeIncrement(this.nativePtr, sizeIncrement);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		CQt.QWidget_SetSizeIncrement2(this.nativePtr, w, h);
	}
	
	public void BaseSize()
	{
		CQt.QWidget_BaseSize(this.nativePtr);
	}
	
	public void SetBaseSize(void* baseSize)
	{
		CQt.QWidget_SetBaseSize(this.nativePtr, baseSize);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		CQt.QWidget_SetBaseSize2(this.nativePtr, basew, baseh);
	}
	
	public void SetFixedSize(void* fixedSize)
	{
		CQt.QWidget_SetFixedSize(this.nativePtr, fixedSize);
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
	
	public void MapToGlobal(void* param1)
	{
		CQt.QWidget_MapToGlobal(this.nativePtr, param1);
	}
	
	public void MapToGlobalWithQPoint(void* param1)
	{
		CQt.QWidget_MapToGlobalWithQPoint(this.nativePtr, param1);
	}
	
	public void MapFromGlobal(void* param1)
	{
		CQt.QWidget_MapFromGlobal(this.nativePtr, param1);
	}
	
	public void MapFromGlobalWithQPoint(void* param1)
	{
		CQt.QWidget_MapFromGlobalWithQPoint(this.nativePtr, param1);
	}
	
	public void MapToParent(void* param1)
	{
		CQt.QWidget_MapToParent(this.nativePtr, param1);
	}
	
	public void MapToParentWithQPoint(void* param1)
	{
		CQt.QWidget_MapToParentWithQPoint(this.nativePtr, param1);
	}
	
	public void MapFromParent(void* param1)
	{
		CQt.QWidget_MapFromParent(this.nativePtr, param1);
	}
	
	public void MapFromParentWithQPoint(void* param1)
	{
		CQt.QWidget_MapFromParentWithQPoint(this.nativePtr, param1);
	}
	
	public void MapTo(void* param1, void* param2)
	{
		CQt.QWidget_MapTo(this.nativePtr, param1, param2);
	}
	
	public void MapTo2(void* param1, void* param2)
	{
		CQt.QWidget_MapTo2(this.nativePtr, param1, param2);
	}
	
	public void MapFrom(void* param1, void* param2)
	{
		CQt.QWidget_MapFrom(this.nativePtr, param1, param2);
	}
	
	public void MapFrom2(void* param1, void* param2)
	{
		CQt.QWidget_MapFrom2(this.nativePtr, param1, param2);
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
	
	public void SetPalette(void* palette)
	{
		CQt.QWidget_SetPalette(this.nativePtr, palette);
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
	
	public void SetFont(void* font)
	{
		CQt.QWidget_SetFont(this.nativePtr, font);
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
	
	public void SetCursor(void* cursor)
	{
		CQt.QWidget_SetCursor(this.nativePtr, cursor);
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
	
	public void SetMask(void* mask)
	{
		CQt.QWidget_SetMask(this.nativePtr, mask);
	}
	
	public void SetMaskWithMask(void* mask)
	{
		CQt.QWidget_SetMaskWithMask(this.nativePtr, mask);
	}
	
	public void Mask()
	{
		CQt.QWidget_Mask(this.nativePtr);
	}
	
	public void ClearMask()
	{
		CQt.QWidget_ClearMask(this.nativePtr);
	}
	
	public void Render(void* target)
	{
		CQt.QWidget_Render(this.nativePtr, target);
	}
	
	public void RenderWithPainter(void* painter)
	{
		CQt.QWidget_RenderWithPainter(this.nativePtr, painter);
	}
	
	public void Grab()
	{
		CQt.QWidget_Grab(this.nativePtr);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QWidget_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(void* effect)
	{
		CQt.QWidget_SetGraphicsEffect(this.nativePtr, effect);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QWidget_GrabGesture(this.nativePtr, typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QWidget_UngrabGesture(this.nativePtr, typeVal);
	}
	
	public void SetWindowTitle(libqt_string windowTitle)
	{
		CQt.QWidget_SetWindowTitle(this.nativePtr, windowTitle);
	}
	
	public void SetStyleSheet(libqt_string styleSheet)
	{
		CQt.QWidget_SetStyleSheet(this.nativePtr, styleSheet);
	}
	
	public libqt_string StyleSheet()
	{
		return CQt.QWidget_StyleSheet(this.nativePtr);
	}
	
	public libqt_string WindowTitle()
	{
		return CQt.QWidget_WindowTitle(this.nativePtr);
	}
	
	public void SetWindowIcon(void* icon)
	{
		CQt.QWidget_SetWindowIcon(this.nativePtr, icon);
	}
	
	public void WindowIcon()
	{
		CQt.QWidget_WindowIcon(this.nativePtr);
	}
	
	public void SetWindowIconText(libqt_string windowIconText)
	{
		CQt.QWidget_SetWindowIconText(this.nativePtr, windowIconText);
	}
	
	public libqt_string WindowIconText()
	{
		return CQt.QWidget_WindowIconText(this.nativePtr);
	}
	
	public void SetWindowRole(libqt_string windowRole)
	{
		CQt.QWidget_SetWindowRole(this.nativePtr, windowRole);
	}
	
	public libqt_string WindowRole()
	{
		return CQt.QWidget_WindowRole(this.nativePtr);
	}
	
	public void SetWindowFilePath(libqt_string filePath)
	{
		CQt.QWidget_SetWindowFilePath(this.nativePtr, filePath);
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
	
	public void SetToolTip(libqt_string toolTip)
	{
		CQt.QWidget_SetToolTip(this.nativePtr, toolTip);
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
	
	public void SetStatusTip(libqt_string statusTip)
	{
		CQt.QWidget_SetStatusTip(this.nativePtr, statusTip);
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QWidget_StatusTip(this.nativePtr);
	}
	
	public void SetWhatsThis(libqt_string whatsThis)
	{
		CQt.QWidget_SetWhatsThis(this.nativePtr, whatsThis);
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QWidget_WhatsThis(this.nativePtr);
	}
	
	public libqt_string AccessibleName()
	{
		return CQt.QWidget_AccessibleName(this.nativePtr);
	}
	
	public void SetAccessibleName(libqt_string name)
	{
		CQt.QWidget_SetAccessibleName(this.nativePtr, name);
	}
	
	public libqt_string AccessibleDescription()
	{
		return CQt.QWidget_AccessibleDescription(this.nativePtr);
	}
	
	public void SetAccessibleDescription(libqt_string description)
	{
		CQt.QWidget_SetAccessibleDescription(this.nativePtr, description);
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
	
	public void SetLocale(void* locale)
	{
		CQt.QWidget_SetLocale(this.nativePtr, locale);
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
	
	public static void SetTabOrder(void* param1, void* param2)
	{
		CQt.QWidget_SetTabOrder(param1, param2);
	}
	
	public void SetFocusProxy(void* focusProxy)
	{
		CQt.QWidget_SetFocusProxy(this.nativePtr, focusProxy);
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
	
	public void GrabMouseWithQCursor(void* param1)
	{
		CQt.QWidget_GrabMouseWithQCursor(this.nativePtr, param1);
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
	
	public int32 GrabShortcut(void* key)
	{
		return CQt.QWidget_GrabShortcut(this.nativePtr, key);
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
	
	public void UpdateWithQRect(void* param1)
	{
		CQt.QWidget_UpdateWithQRect(this.nativePtr, param1);
	}
	
	public void UpdateWithQRegion(void* param1)
	{
		CQt.QWidget_UpdateWithQRegion(this.nativePtr, param1);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Repaint2(this.nativePtr, x, y, w, h);
	}
	
	public void RepaintWithQRect(void* param1)
	{
		CQt.QWidget_RepaintWithQRect(this.nativePtr, param1);
	}
	
	public void RepaintWithQRegion(void* param1)
	{
		CQt.QWidget_RepaintWithQRegion(this.nativePtr, param1);
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
	
	public void StackUnder(void* param1)
	{
		CQt.QWidget_StackUnder(this.nativePtr, param1);
	}
	
	public void Move(int32 x, int32 y)
	{
		CQt.QWidget_Move(this.nativePtr, x, y);
	}
	
	public void MoveWithQPoint(void* param1)
	{
		CQt.QWidget_MoveWithQPoint(this.nativePtr, param1);
	}
	
	public void Resize(int32 w, int32 h)
	{
		CQt.QWidget_Resize(this.nativePtr, w, h);
	}
	
	public void ResizeWithQSize(void* param1)
	{
		CQt.QWidget_ResizeWithQSize(this.nativePtr, param1);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_SetGeometry(this.nativePtr, x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(void* geometry)
	{
		CQt.QWidget_SetGeometryWithGeometry(this.nativePtr, geometry);
	}
	
	public libqt_string SaveGeometry()
	{
		return CQt.QWidget_SaveGeometry(this.nativePtr);
	}
	
	public bool RestoreGeometry(libqt_string geometry)
	{
		return CQt.QWidget_RestoreGeometry(this.nativePtr, geometry);
	}
	
	public void AdjustSize()
	{
		CQt.QWidget_AdjustSize(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QWidget_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(void* param1)
	{
		return CQt.QWidget_IsVisibleTo(this.nativePtr, param1);
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
	
	public void SetSizePolicy(void sizePolicy)
	{
		CQt.QWidget_SetSizePolicy(this.nativePtr, sizePolicy);
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
	
	public void SetContentsMarginsWithMargins(void* margins)
	{
		CQt.QWidget_SetContentsMarginsWithMargins(this.nativePtr, margins);
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
	
	public void SetLayout(void* layout)
	{
		CQt.QWidget_SetLayout(this.nativePtr, layout);
	}
	
	public void UpdateGeometry()
	{
		CQt.QWidget_UpdateGeometry(this.nativePtr);
	}
	
	public void SetParent(void* parent)
	{
		CQt.QWidget_SetParent(this.nativePtr, parent);
	}
	
	public void SetParent2(void* parent, int64 f)
	{
		CQt.QWidget_SetParent2(this.nativePtr, parent, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		CQt.QWidget_Scroll(this.nativePtr, dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, void* param3)
	{
		CQt.QWidget_Scroll2(this.nativePtr, dx, dy, param3);
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
	
	public void AddAction(void* action)
	{
		CQt.QWidget_AddAction(this.nativePtr, action);
	}
	
	public void AddActions(void*[] actions)
	{
		CQt.QWidget_AddActions(this.nativePtr, actions);
	}
	
	public void InsertActions(void* before, void*[] actions)
	{
		CQt.QWidget_InsertActions(this.nativePtr, before, actions);
	}
	
	public void InsertAction(void* before, void* action)
	{
		CQt.QWidget_InsertAction(this.nativePtr, before, action);
	}
	
	public void RemoveAction(void* action)
	{
		CQt.QWidget_RemoveAction(this.nativePtr, action);
	}
	
	public void*[] Actions()
	{
		return CQt.QWidget_Actions(this.nativePtr);
	}
	
	public void* AddActionWithText(libqt_string text)
	{
		return CQt.QWidget_AddActionWithText(this.nativePtr, text);
	}
	
	public void* AddAction2(void* icon, libqt_string text)
	{
		return CQt.QWidget_AddAction2(this.nativePtr, icon, text);
	}
	
	public void* AddAction3(libqt_string text, void* shortcut)
	{
		return CQt.QWidget_AddAction3(this.nativePtr, text, shortcut);
	}
	
	public void* AddAction4(void* icon, libqt_string text, void* shortcut)
	{
		return CQt.QWidget_AddAction4(this.nativePtr, icon, text, shortcut);
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
	
	public void* ChildAtWithQPoint(void* p)
	{
		return CQt.QWidget_ChildAtWithQPoint(this.nativePtr, p);
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
	
	public bool IsAncestorOf(void* child)
	{
		return CQt.QWidget_IsAncestorOf(this.nativePtr, child);
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
	
	public void SetScreen(void* screen)
	{
		CQt.QWidget_SetScreen(this.nativePtr, screen);
	}
	
	public static void* CreateWindowContainer(void* window)
	{
		return CQt.QWidget_CreateWindowContainer(window);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QWidget_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QWidget_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void Render2(void* target, void* targetOffset)
	{
		CQt.QWidget_Render2(this.nativePtr, target, targetOffset);
	}
	
	public void Render3(void* target, void* targetOffset, void* sourceRegion)
	{
		CQt.QWidget_Render3(this.nativePtr, target, targetOffset, sourceRegion);
	}
	
	public void Render4(void* target, void* targetOffset, void* sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render4(this.nativePtr, target, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Render22(void* painter, void* targetOffset)
	{
		CQt.QWidget_Render22(this.nativePtr, painter, targetOffset);
	}
	
	public void Render32(void* painter, void* targetOffset, void* sourceRegion)
	{
		CQt.QWidget_Render32(this.nativePtr, painter, targetOffset, sourceRegion);
	}
	
	public void Render42(void* painter, void* targetOffset, void* sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render42(this.nativePtr, painter, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Grab1(void* rectangle)
	{
		CQt.QWidget_Grab1(this.nativePtr, rectangle);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QWidget_GrabGesture2(this.nativePtr, typeVal, flags);
	}
	
	public int32 GrabShortcut2(void* key, int64 context)
	{
		return CQt.QWidget_GrabShortcut2(this.nativePtr, key, context);
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
	
	public static void* CreateWindowContainer2(void* window, void* parent)
	{
		return CQt.QWidget_CreateWindowContainer2(window, parent);
	}
	
	public static void* CreateWindowContainer3(void* window, void* parent, int64 flags)
	{
		return CQt.QWidget_CreateWindowContainer3(window, parent, flags);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(void name)
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
	
	public void MoveToThread(void* thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, thread);
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
	
	public void InstallEventFilter(void* filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveEventFilter(void* obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, obj);
	}
	
	public static QMetaObject__Connection Connect(void* sender, void* signal, void* receiver, void* method)
	{
		return CQt.QObject_Connect(sender, signal, receiver, method);
	}
	
	public QMetaObject__Connection Connect2(void* sender, char8[] signal, char8[] member)
	{
		return CQt.QObject_Connect2(this.nativePtr, sender, signal, member);
	}
	
	public static bool Disconnect(void* sender, void* signal, void* receiver, void* member)
	{
		return CQt.QObject_Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8[] name, void* value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, value);
	}
	
	public void Property(char8[] name)
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
	
	public bool Inherits(char8[] classname)
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
	
	public static QMetaObject__Connection Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal)
	{
		return CQt.QObject_Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public QMetaObject__Connection Connect4(void* sender, char8[] signal, char8[] member, int64 typeVal)
	{
		return CQt.QObject_Connect4(this.nativePtr, sender, signal, member, typeVal);
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
	[LinkName("QTableWidget_new")]
	public static extern void* QTableWidget_new(void* parent);
	[LinkName("QTableWidget_new2")]
	public static extern void* QTableWidget_new2();
	[LinkName("QTableWidget_new3")]
	public static extern void* QTableWidget_new3(int32 rows, int32 columns);
	[LinkName("QTableWidget_new4")]
	public static extern void* QTableWidget_new4(int32 rows, int32 columns, void* parent);
	[LinkName("QTableWidget_MetaObject")]
	public static extern void* QTableWidget_MetaObject(void* c_this);
	[LinkName("QTableWidget_Metacast")]
	public static extern void* QTableWidget_Metacast(void* c_this, char8[] param1);
	[LinkName("QTableWidget_Metacall")]
	public static extern int32 QTableWidget_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTableWidget_Tr")]
	public static extern libqt_string QTableWidget_Tr(char8[] s);
	[LinkName("QTableWidget_SetRowCount")]
	public static extern void QTableWidget_SetRowCount(void* c_this, int32 rows);
	[LinkName("QTableWidget_RowCount")]
	public static extern int32 QTableWidget_RowCount(void* c_this);
	[LinkName("QTableWidget_SetColumnCount")]
	public static extern void QTableWidget_SetColumnCount(void* c_this, int32 columns);
	[LinkName("QTableWidget_ColumnCount")]
	public static extern int32 QTableWidget_ColumnCount(void* c_this);
	[LinkName("QTableWidget_Row")]
	public static extern int32 QTableWidget_Row(void* c_this, void* item);
	[LinkName("QTableWidget_Column")]
	public static extern int32 QTableWidget_Column(void* c_this, void* item);
	[LinkName("QTableWidget_Item")]
	public static extern void* QTableWidget_Item(void* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_SetItem")]
	public static extern void QTableWidget_SetItem(void* c_this, int32 row, int32 column, void* item);
	[LinkName("QTableWidget_TakeItem")]
	public static extern void* QTableWidget_TakeItem(void* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_Items")]
	public static extern void*[] QTableWidget_Items(void* c_this, void* data);
	[LinkName("QTableWidget_IndexFromItem")]
	public static extern void QTableWidget_IndexFromItem(void* c_this, void* item);
	[LinkName("QTableWidget_ItemFromIndex")]
	public static extern void* QTableWidget_ItemFromIndex(void* c_this, void* index);
	[LinkName("QTableWidget_VerticalHeaderItem")]
	public static extern void* QTableWidget_VerticalHeaderItem(void* c_this, int32 row);
	[LinkName("QTableWidget_SetVerticalHeaderItem")]
	public static extern void QTableWidget_SetVerticalHeaderItem(void* c_this, int32 row, void* item);
	[LinkName("QTableWidget_TakeVerticalHeaderItem")]
	public static extern void* QTableWidget_TakeVerticalHeaderItem(void* c_this, int32 row);
	[LinkName("QTableWidget_HorizontalHeaderItem")]
	public static extern void* QTableWidget_HorizontalHeaderItem(void* c_this, int32 column);
	[LinkName("QTableWidget_SetHorizontalHeaderItem")]
	public static extern void QTableWidget_SetHorizontalHeaderItem(void* c_this, int32 column, void* item);
	[LinkName("QTableWidget_TakeHorizontalHeaderItem")]
	public static extern void* QTableWidget_TakeHorizontalHeaderItem(void* c_this, int32 column);
	[LinkName("QTableWidget_SetVerticalHeaderLabels")]
	public static extern void QTableWidget_SetVerticalHeaderLabels(void* c_this, libqt_string[] labels);
	[LinkName("QTableWidget_SetHorizontalHeaderLabels")]
	public static extern void QTableWidget_SetHorizontalHeaderLabels(void* c_this, libqt_string[] labels);
	[LinkName("QTableWidget_CurrentRow")]
	public static extern int32 QTableWidget_CurrentRow(void* c_this);
	[LinkName("QTableWidget_CurrentColumn")]
	public static extern int32 QTableWidget_CurrentColumn(void* c_this);
	[LinkName("QTableWidget_CurrentItem")]
	public static extern void* QTableWidget_CurrentItem(void* c_this);
	[LinkName("QTableWidget_SetCurrentItem")]
	public static extern void QTableWidget_SetCurrentItem(void* c_this, void* item);
	[LinkName("QTableWidget_SetCurrentItem2")]
	public static extern void QTableWidget_SetCurrentItem2(void* c_this, void* item, int64 command);
	[LinkName("QTableWidget_SetCurrentCell")]
	public static extern void QTableWidget_SetCurrentCell(void* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_SetCurrentCell2")]
	public static extern void QTableWidget_SetCurrentCell2(void* c_this, int32 row, int32 column, int64 command);
	[LinkName("QTableWidget_SortItems")]
	public static extern void QTableWidget_SortItems(void* c_this, int32 column);
	[LinkName("QTableWidget_SetSortingEnabled")]
	public static extern void QTableWidget_SetSortingEnabled(void* c_this, bool enable);
	[LinkName("QTableWidget_IsSortingEnabled")]
	public static extern bool QTableWidget_IsSortingEnabled(void* c_this);
	[LinkName("QTableWidget_EditItem")]
	public static extern void QTableWidget_EditItem(void* c_this, void* item);
	[LinkName("QTableWidget_OpenPersistentEditor")]
	public static extern void QTableWidget_OpenPersistentEditor(void* c_this, void* item);
	[LinkName("QTableWidget_ClosePersistentEditor")]
	public static extern void QTableWidget_ClosePersistentEditor(void* c_this, void* item);
	[LinkName("QTableWidget_IsPersistentEditorOpen")]
	public static extern bool QTableWidget_IsPersistentEditorOpen(void* c_this, void* item);
	[LinkName("QTableWidget_CellWidget")]
	public static extern void* QTableWidget_CellWidget(void* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_SetCellWidget")]
	public static extern void QTableWidget_SetCellWidget(void* c_this, int32 row, int32 column, void* widget);
	[LinkName("QTableWidget_RemoveCellWidget")]
	public static extern void QTableWidget_RemoveCellWidget(void* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_SetRangeSelected")]
	public static extern void QTableWidget_SetRangeSelected(void* c_this, void* range, bool selectVal);
	[LinkName("QTableWidget_SelectedRanges")]
	public static extern void[] QTableWidget_SelectedRanges(void* c_this);
	[LinkName("QTableWidget_SelectedItems")]
	public static extern void*[] QTableWidget_SelectedItems(void* c_this);
	[LinkName("QTableWidget_FindItems")]
	public static extern void*[] QTableWidget_FindItems(void* c_this, libqt_string text, int64 flags);
	[LinkName("QTableWidget_VisualRow")]
	public static extern int32 QTableWidget_VisualRow(void* c_this, int32 logicalRow);
	[LinkName("QTableWidget_VisualColumn")]
	public static extern int32 QTableWidget_VisualColumn(void* c_this, int32 logicalColumn);
	[LinkName("QTableWidget_ItemAt")]
	public static extern void* QTableWidget_ItemAt(void* c_this, void* p);
	[LinkName("QTableWidget_ItemAt2")]
	public static extern void* QTableWidget_ItemAt2(void* c_this, int32 x, int32 y);
	[LinkName("QTableWidget_VisualItemRect")]
	public static extern void QTableWidget_VisualItemRect(void* c_this, void* item);
	[LinkName("QTableWidget_ItemPrototype")]
	public static extern void* QTableWidget_ItemPrototype(void* c_this);
	[LinkName("QTableWidget_SetItemPrototype")]
	public static extern void QTableWidget_SetItemPrototype(void* c_this, void* item);
	[LinkName("QTableWidget_ScrollToItem")]
	public static extern void QTableWidget_ScrollToItem(void* c_this, void* item);
	[LinkName("QTableWidget_InsertRow")]
	public static extern void QTableWidget_InsertRow(void* c_this, int32 row);
	[LinkName("QTableWidget_InsertColumn")]
	public static extern void QTableWidget_InsertColumn(void* c_this, int32 column);
	[LinkName("QTableWidget_RemoveRow")]
	public static extern void QTableWidget_RemoveRow(void* c_this, int32 row);
	[LinkName("QTableWidget_RemoveColumn")]
	public static extern void QTableWidget_RemoveColumn(void* c_this, int32 column);
	[LinkName("QTableWidget_Clear")]
	public static extern void QTableWidget_Clear(void* c_this);
	[LinkName("QTableWidget_ClearContents")]
	public static extern void QTableWidget_ClearContents(void* c_this);
	[LinkName("QTableWidget_Connect_ItemPressed")]
	public static extern void QTableWidget_Connect_ItemPressed(void* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_ItemClicked")]
	public static extern void QTableWidget_Connect_ItemClicked(void* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_ItemDoubleClicked")]
	public static extern void QTableWidget_Connect_ItemDoubleClicked(void* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_ItemActivated")]
	public static extern void QTableWidget_Connect_ItemActivated(void* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_ItemEntered")]
	public static extern void QTableWidget_Connect_ItemEntered(void* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_ItemChanged")]
	public static extern void QTableWidget_Connect_ItemChanged(void* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_CurrentItemChanged")]
	public static extern void QTableWidget_Connect_CurrentItemChanged(void* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_ItemSelectionChanged")]
	public static extern void QTableWidget_Connect_ItemSelectionChanged(void* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_CellPressed")]
	public static extern void QTableWidget_Connect_CellPressed(void* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_CellClicked")]
	public static extern void QTableWidget_Connect_CellClicked(void* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_CellDoubleClicked")]
	public static extern void QTableWidget_Connect_CellDoubleClicked(void* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_CellActivated")]
	public static extern void QTableWidget_Connect_CellActivated(void* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_CellEntered")]
	public static extern void QTableWidget_Connect_CellEntered(void* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_CellChanged")]
	public static extern void QTableWidget_Connect_CellChanged(void* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_CurrentCellChanged")]
	public static extern void QTableWidget_Connect_CurrentCellChanged(void* c_this, c_intptr slot);
	[LinkName("QTableWidget_Event")]
	public static extern bool QTableWidget_Event(void* c_this, void* e);
	[LinkName("QTableWidget_MimeTypes")]
	public static extern libqt_string[] QTableWidget_MimeTypes(void* c_this);
	[LinkName("QTableWidget_MimeData")]
	public static extern void* QTableWidget_MimeData(void* c_this, void*[] items);
	[LinkName("QTableWidget_DropMimeData")]
	public static extern bool QTableWidget_DropMimeData(void* c_this, int32 row, int32 column, void* data, int64 action);
	[LinkName("QTableWidget_SupportedDropActions")]
	public static extern int64 QTableWidget_SupportedDropActions(void* c_this);
	[LinkName("QTableWidget_DropEvent")]
	public static extern void QTableWidget_DropEvent(void* c_this, void* event);
	[LinkName("QTableWidget_Tr2")]
	public static extern libqt_string QTableWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QTableWidget_Tr3")]
	public static extern libqt_string QTableWidget_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTableWidget_SortItems2")]
	public static extern void QTableWidget_SortItems2(void* c_this, int32 column, int64 order);
	[LinkName("QTableWidget_ScrollToItem2")]
	public static extern void QTableWidget_ScrollToItem2(void* c_this, void* item, int64 hint);
	/// Delete this object from C++ memory
	[LinkName("QTableWidget_Delete")]
	public static extern void QTableWidget_Delete(void* self);
}