using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QItemSelectionModel__SelectionFlag
{
	NoUpdate = 0,
	Clear = 1,
	Select = 2,
	Deselect = 4,
	Toggle = 8,
	Current = 16,
	Rows = 32,
	Columns = 64,
	SelectCurrent = 18,
	ToggleCurrent = 24,
	ClearAndSelect = 3,
}
public interface IQItemSelectionRange
{
	void* NativePtr { get; }
}
public class QItemSelectionRange : IQItemSelectionRange
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QItemSelectionRange_new();
	}
	
	public ~this()
	{
		CQt.QItemSelectionRange_Delete(this.nativePtr);
	}
	
	public void Swap(IQItemSelectionRange other)
	{
		CQt.QItemSelectionRange_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public int32 Top()
	{
		return CQt.QItemSelectionRange_Top(this.nativePtr);
	}
	
	public int32 Left()
	{
		return CQt.QItemSelectionRange_Left(this.nativePtr);
	}
	
	public int32 Bottom()
	{
		return CQt.QItemSelectionRange_Bottom(this.nativePtr);
	}
	
	public int32 Right()
	{
		return CQt.QItemSelectionRange_Right(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QItemSelectionRange_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QItemSelectionRange_Height(this.nativePtr);
	}
	
	public void* TopLeft()
	{
		return CQt.QItemSelectionRange_TopLeft(this.nativePtr);
	}
	
	public void* BottomRight()
	{
		return CQt.QItemSelectionRange_BottomRight(this.nativePtr);
	}
	
	public void Parent()
	{
		CQt.QItemSelectionRange_Parent(this.nativePtr);
	}
	
	public void* Model()
	{
		return CQt.QItemSelectionRange_Model(this.nativePtr);
	}
	
	public bool Contains(IQModelIndex index)
	{
		return CQt.QItemSelectionRange_Contains(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public bool Contains2(int32 row, int32 column, IQModelIndex parentIndex)
	{
		return CQt.QItemSelectionRange_Contains2(this.nativePtr, row, column, (parentIndex == default) ? default : (void*)parentIndex.NativePtr);
	}
	
	public bool Intersects(IQItemSelectionRange other)
	{
		return CQt.QItemSelectionRange_Intersects(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Intersected(IQItemSelectionRange other)
	{
		CQt.QItemSelectionRange_Intersected(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorEqual(IQItemSelectionRange other)
	{
		return CQt.QItemSelectionRange_OperatorEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQItemSelectionRange other)
	{
		return CQt.QItemSelectionRange_OperatorNotEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QItemSelectionRange_IsValid(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QItemSelectionRange_IsEmpty(this.nativePtr);
	}
	
	public void[] Indexes()
	{
		return CQt.QItemSelectionRange_Indexes(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QItemSelectionRange_new")]
	public static extern void* QItemSelectionRange_new();
	[LinkName("QItemSelectionRange_new2")]
	public static extern void* QItemSelectionRange_new2(void* topL, void* bottomR);
	[LinkName("QItemSelectionRange_new3")]
	public static extern void* QItemSelectionRange_new3(void* index);
	[LinkName("QItemSelectionRange_new4")]
	public static extern void* QItemSelectionRange_new4(void* param1);
	[LinkName("QItemSelectionRange_Swap")]
	public static extern void QItemSelectionRange_Swap(void* c_this, void* other);
	[LinkName("QItemSelectionRange_Top")]
	public static extern int32 QItemSelectionRange_Top(void* c_this);
	[LinkName("QItemSelectionRange_Left")]
	public static extern int32 QItemSelectionRange_Left(void* c_this);
	[LinkName("QItemSelectionRange_Bottom")]
	public static extern int32 QItemSelectionRange_Bottom(void* c_this);
	[LinkName("QItemSelectionRange_Right")]
	public static extern int32 QItemSelectionRange_Right(void* c_this);
	[LinkName("QItemSelectionRange_Width")]
	public static extern int32 QItemSelectionRange_Width(void* c_this);
	[LinkName("QItemSelectionRange_Height")]
	public static extern int32 QItemSelectionRange_Height(void* c_this);
	[LinkName("QItemSelectionRange_TopLeft")]
	public static extern void* QItemSelectionRange_TopLeft(void* c_this);
	[LinkName("QItemSelectionRange_BottomRight")]
	public static extern void* QItemSelectionRange_BottomRight(void* c_this);
	[LinkName("QItemSelectionRange_Parent")]
	public static extern void QItemSelectionRange_Parent(void* c_this);
	[LinkName("QItemSelectionRange_Model")]
	public static extern void* QItemSelectionRange_Model(void* c_this);
	[LinkName("QItemSelectionRange_Contains")]
	public static extern bool QItemSelectionRange_Contains(void* c_this, void* index);
	[LinkName("QItemSelectionRange_Contains2")]
	public static extern bool QItemSelectionRange_Contains2(void* c_this, int32 row, int32 column, void* parentIndex);
	[LinkName("QItemSelectionRange_Intersects")]
	public static extern bool QItemSelectionRange_Intersects(void* c_this, void* other);
	[LinkName("QItemSelectionRange_Intersected")]
	public static extern void QItemSelectionRange_Intersected(void* c_this, void* other);
	[LinkName("QItemSelectionRange_OperatorEqual")]
	public static extern bool QItemSelectionRange_OperatorEqual(void* c_this, void* other);
	[LinkName("QItemSelectionRange_OperatorNotEqual")]
	public static extern bool QItemSelectionRange_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QItemSelectionRange_IsValid")]
	public static extern bool QItemSelectionRange_IsValid(void* c_this);
	[LinkName("QItemSelectionRange_IsEmpty")]
	public static extern bool QItemSelectionRange_IsEmpty(void* c_this);
	[LinkName("QItemSelectionRange_Indexes")]
	public static extern void[] QItemSelectionRange_Indexes(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QItemSelectionRange_Delete")]
	public static extern void QItemSelectionRange_Delete(void* self);
}
public interface IQItemSelectionModel
{
	void* NativePtr { get; }
}
public class QItemSelectionModel : IQItemSelectionModel, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QItemSelectionModel_new();
	}
	
	public ~this()
	{
		CQt.QItemSelectionModel_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QItemSelectionModel_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QItemSelectionModel_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QItemSelectionModel_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QItemSelectionModel_Tr(s);
	}
	
	public void CurrentIndex()
	{
		CQt.QItemSelectionModel_CurrentIndex(this.nativePtr);
	}
	
	public bool IsSelected(IQModelIndex index)
	{
		return CQt.QItemSelectionModel_IsSelected(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public bool IsRowSelected(int32 row)
	{
		return CQt.QItemSelectionModel_IsRowSelected(this.nativePtr, row);
	}
	
	public bool IsColumnSelected(int32 column)
	{
		return CQt.QItemSelectionModel_IsColumnSelected(this.nativePtr, column);
	}
	
	public bool RowIntersectsSelection(int32 row)
	{
		return CQt.QItemSelectionModel_RowIntersectsSelection(this.nativePtr, row);
	}
	
	public bool ColumnIntersectsSelection(int32 column)
	{
		return CQt.QItemSelectionModel_ColumnIntersectsSelection(this.nativePtr, column);
	}
	
	public bool HasSelection()
	{
		return CQt.QItemSelectionModel_HasSelection(this.nativePtr);
	}
	
	public void[] SelectedIndexes()
	{
		return CQt.QItemSelectionModel_SelectedIndexes(this.nativePtr);
	}
	
	public void[] SelectedRows()
	{
		return CQt.QItemSelectionModel_SelectedRows(this.nativePtr);
	}
	
	public void[] SelectedColumns()
	{
		return CQt.QItemSelectionModel_SelectedColumns(this.nativePtr);
	}
	
	public void Selection()
	{
		CQt.QItemSelectionModel_Selection(this.nativePtr);
	}
	
	public void* Model()
	{
		return CQt.QItemSelectionModel_Model(this.nativePtr);
	}
	
	public void* Model2()
	{
		return CQt.QItemSelectionModel_Model2(this.nativePtr);
	}
	
	public void SetModel(IQAbstractItemModel model)
	{
		CQt.QItemSelectionModel_SetModel(this.nativePtr, (model == null) ? null : (void*)model.NativePtr);
	}
	
	public virtual void SetCurrentIndex(IQModelIndex index, int64 command)
	{
		CQt.QItemSelectionModel_SetCurrentIndex(this.nativePtr, (index == default) ? default : (void*)index.NativePtr, command);
	}
	
	public virtual void Select(IQModelIndex index, int64 command)
	{
		CQt.QItemSelectionModel_Select(this.nativePtr, (index == default) ? default : (void*)index.NativePtr, command);
	}
	
	public virtual void Select2(IQItemSelection selection, int64 command)
	{
		CQt.QItemSelectionModel_Select2(this.nativePtr, (selection == default) ? default : (void*)selection.NativePtr, command);
	}
	
	public virtual void Clear()
	{
		CQt.QItemSelectionModel_Clear(this.nativePtr);
	}
	
	public virtual void Reset()
	{
		CQt.QItemSelectionModel_Reset(this.nativePtr);
	}
	
	public void ClearSelection()
	{
		CQt.QItemSelectionModel_ClearSelection(this.nativePtr);
	}
	
	public virtual void ClearCurrentIndex()
	{
		CQt.QItemSelectionModel_ClearCurrentIndex(this.nativePtr);
	}
	
	public void EmitSelectionChanged(IQItemSelection newSelection, IQItemSelection oldSelection)
	{
		CQt.QItemSelectionModel_EmitSelectionChanged(this.nativePtr, (newSelection == default) ? default : (void*)newSelection.NativePtr, (oldSelection == default) ? default : (void*)oldSelection.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QItemSelectionModel_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QItemSelectionModel_Tr3(s, c, n);
	}
	
	public bool IsRowSelected2(int32 row, IQModelIndex parent)
	{
		return CQt.QItemSelectionModel_IsRowSelected2(this.nativePtr, row, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public bool IsColumnSelected2(int32 column, IQModelIndex parent)
	{
		return CQt.QItemSelectionModel_IsColumnSelected2(this.nativePtr, column, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public bool RowIntersectsSelection2(int32 row, IQModelIndex parent)
	{
		return CQt.QItemSelectionModel_RowIntersectsSelection2(this.nativePtr, row, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public bool ColumnIntersectsSelection2(int32 column, IQModelIndex parent)
	{
		return CQt.QItemSelectionModel_ColumnIntersectsSelection2(this.nativePtr, column, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public void[] SelectedRows1(int32 column)
	{
		return CQt.QItemSelectionModel_SelectedRows1(this.nativePtr, column);
	}
	
	public void[] SelectedColumns1(int32 row)
	{
		return CQt.QItemSelectionModel_SelectedColumns1(this.nativePtr, row);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
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
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
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
	
}
extension CQt
{
	[LinkName("QItemSelectionModel_new")]
	public static extern void* QItemSelectionModel_new();
	[LinkName("QItemSelectionModel_new2")]
	public static extern void* QItemSelectionModel_new2(void* model, void* parent);
	[LinkName("QItemSelectionModel_new3")]
	public static extern void* QItemSelectionModel_new3(void* model);
	[LinkName("QItemSelectionModel_MetaObject")]
	public static extern void* QItemSelectionModel_MetaObject(void* c_this);
	[LinkName("QItemSelectionModel_Metacast")]
	public static extern void* QItemSelectionModel_Metacast(void* c_this, char8* param1);
	[LinkName("QItemSelectionModel_Metacall")]
	public static extern int32 QItemSelectionModel_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QItemSelectionModel_Tr")]
	public static extern libqt_string QItemSelectionModel_Tr(char8* s);
	[LinkName("QItemSelectionModel_CurrentIndex")]
	public static extern void QItemSelectionModel_CurrentIndex(void* c_this);
	[LinkName("QItemSelectionModel_IsSelected")]
	public static extern bool QItemSelectionModel_IsSelected(void* c_this, void* index);
	[LinkName("QItemSelectionModel_IsRowSelected")]
	public static extern bool QItemSelectionModel_IsRowSelected(void* c_this, int32 row);
	[LinkName("QItemSelectionModel_IsColumnSelected")]
	public static extern bool QItemSelectionModel_IsColumnSelected(void* c_this, int32 column);
	[LinkName("QItemSelectionModel_RowIntersectsSelection")]
	public static extern bool QItemSelectionModel_RowIntersectsSelection(void* c_this, int32 row);
	[LinkName("QItemSelectionModel_ColumnIntersectsSelection")]
	public static extern bool QItemSelectionModel_ColumnIntersectsSelection(void* c_this, int32 column);
	[LinkName("QItemSelectionModel_HasSelection")]
	public static extern bool QItemSelectionModel_HasSelection(void* c_this);
	[LinkName("QItemSelectionModel_SelectedIndexes")]
	public static extern void[] QItemSelectionModel_SelectedIndexes(void* c_this);
	[LinkName("QItemSelectionModel_SelectedRows")]
	public static extern void[] QItemSelectionModel_SelectedRows(void* c_this);
	[LinkName("QItemSelectionModel_SelectedColumns")]
	public static extern void[] QItemSelectionModel_SelectedColumns(void* c_this);
	[LinkName("QItemSelectionModel_Selection")]
	public static extern void QItemSelectionModel_Selection(void* c_this);
	[LinkName("QItemSelectionModel_Model")]
	public static extern void* QItemSelectionModel_Model(void* c_this);
	[LinkName("QItemSelectionModel_Model2")]
	public static extern void* QItemSelectionModel_Model2(void* c_this);
	[LinkName("QItemSelectionModel_SetModel")]
	public static extern void QItemSelectionModel_SetModel(void* c_this, void* model);
	[LinkName("QItemSelectionModel_SetCurrentIndex")]
	public static extern void QItemSelectionModel_SetCurrentIndex(void* c_this, void* index, int64 command);
	[LinkName("QItemSelectionModel_Select")]
	public static extern void QItemSelectionModel_Select(void* c_this, void* index, int64 command);
	[LinkName("QItemSelectionModel_Select2")]
	public static extern void QItemSelectionModel_Select2(void* c_this, void* selection, int64 command);
	[LinkName("QItemSelectionModel_Clear")]
	public static extern void QItemSelectionModel_Clear(void* c_this);
	[LinkName("QItemSelectionModel_Reset")]
	public static extern void QItemSelectionModel_Reset(void* c_this);
	[LinkName("QItemSelectionModel_ClearSelection")]
	public static extern void QItemSelectionModel_ClearSelection(void* c_this);
	[LinkName("QItemSelectionModel_ClearCurrentIndex")]
	public static extern void QItemSelectionModel_ClearCurrentIndex(void* c_this);
	[LinkName("QItemSelectionModel_Connect_SelectionChanged")]
	public static extern void QItemSelectionModel_Connect_SelectionChanged(void* c_this, c_intptr slot);
	[LinkName("QItemSelectionModel_Connect_CurrentChanged")]
	public static extern void QItemSelectionModel_Connect_CurrentChanged(void* c_this, c_intptr slot);
	[LinkName("QItemSelectionModel_Connect_CurrentRowChanged")]
	public static extern void QItemSelectionModel_Connect_CurrentRowChanged(void* c_this, c_intptr slot);
	[LinkName("QItemSelectionModel_Connect_CurrentColumnChanged")]
	public static extern void QItemSelectionModel_Connect_CurrentColumnChanged(void* c_this, c_intptr slot);
	[LinkName("QItemSelectionModel_Connect_ModelChanged")]
	public static extern void QItemSelectionModel_Connect_ModelChanged(void* c_this, c_intptr slot);
	[LinkName("QItemSelectionModel_EmitSelectionChanged")]
	public static extern void QItemSelectionModel_EmitSelectionChanged(void* c_this, void* newSelection, void* oldSelection);
	[LinkName("QItemSelectionModel_Tr2")]
	public static extern libqt_string QItemSelectionModel_Tr2(char8* s, char8* c);
	[LinkName("QItemSelectionModel_Tr3")]
	public static extern libqt_string QItemSelectionModel_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QItemSelectionModel_IsRowSelected2")]
	public static extern bool QItemSelectionModel_IsRowSelected2(void* c_this, int32 row, void* parent);
	[LinkName("QItemSelectionModel_IsColumnSelected2")]
	public static extern bool QItemSelectionModel_IsColumnSelected2(void* c_this, int32 column, void* parent);
	[LinkName("QItemSelectionModel_RowIntersectsSelection2")]
	public static extern bool QItemSelectionModel_RowIntersectsSelection2(void* c_this, int32 row, void* parent);
	[LinkName("QItemSelectionModel_ColumnIntersectsSelection2")]
	public static extern bool QItemSelectionModel_ColumnIntersectsSelection2(void* c_this, int32 column, void* parent);
	[LinkName("QItemSelectionModel_SelectedRows1")]
	public static extern void[] QItemSelectionModel_SelectedRows1(void* c_this, int32 column);
	[LinkName("QItemSelectionModel_SelectedColumns1")]
	public static extern void[] QItemSelectionModel_SelectedColumns1(void* c_this, int32 row);
	/// Delete this object from C++ memory
	[LinkName("QItemSelectionModel_Delete")]
	public static extern void QItemSelectionModel_Delete(void* self);
}
public interface IQItemSelection
{
	void* NativePtr { get; }
}
public class QItemSelection : IQItemSelection // Also inherits unprojectable QList<QItemSelectionRange>
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQModelIndex topLeft, IQModelIndex bottomRight)
	{
		this.nativePtr = CQt.QItemSelection_new((topLeft == default) ? default : (void*)topLeft.NativePtr, (bottomRight == default) ? default : (void*)bottomRight.NativePtr);
	}
	
	public ~this()
	{
		CQt.QItemSelection_Delete(this.nativePtr);
	}
	
	public void Select(IQModelIndex topLeft, IQModelIndex bottomRight)
	{
		CQt.QItemSelection_Select(this.nativePtr, (topLeft == default) ? default : (void*)topLeft.NativePtr, (bottomRight == default) ? default : (void*)bottomRight.NativePtr);
	}
	
	public bool Contains(IQModelIndex index)
	{
		return CQt.QItemSelection_Contains(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public void[] Indexes()
	{
		return CQt.QItemSelection_Indexes(this.nativePtr);
	}
	
	public void Merge(IQItemSelection other, int64 command)
	{
		CQt.QItemSelection_Merge(this.nativePtr, (other == default) ? default : (void*)other.NativePtr, command);
	}
	
	public static void Split(IQItemSelectionRange range, IQItemSelectionRange other, IQItemSelection result)
	{
		CQt.QItemSelection_Split((range == default) ? default : (void*)range.NativePtr, (other == default) ? default : (void*)other.NativePtr, (result == null) ? null : (void*)result.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QItemSelection_new")]
	public static extern void* QItemSelection_new(void* topLeft, void* bottomRight);
	[LinkName("QItemSelection_new2")]
	public static extern void* QItemSelection_new2();
	[LinkName("QItemSelection_new3")]
	public static extern void* QItemSelection_new3(void* param1);
	[LinkName("QItemSelection_Select")]
	public static extern void QItemSelection_Select(void* c_this, void* topLeft, void* bottomRight);
	[LinkName("QItemSelection_Contains")]
	public static extern bool QItemSelection_Contains(void* c_this, void* index);
	[LinkName("QItemSelection_Indexes")]
	public static extern void[] QItemSelection_Indexes(void* c_this);
	[LinkName("QItemSelection_Merge")]
	public static extern void QItemSelection_Merge(void* c_this, void* other, int64 command);
	[LinkName("QItemSelection_Split")]
	public static extern void QItemSelection_Split(void* range, void* other, void* result);
	/// Delete this object from C++ memory
	[LinkName("QItemSelection_Delete")]
	public static extern void QItemSelection_Delete(void* self);
}