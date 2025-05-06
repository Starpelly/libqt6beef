using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTreeWidgetItemIterator__IteratorFlag
{
	All = 0,
	Hidden = 1,
	NotHidden = 2,
	Selected = 4,
	Unselected = 8,
	Selectable = 16,
	NotSelectable = 32,
	DragEnabled = 64,
	DragDisabled = 128,
	DropEnabled = 256,
	DropDisabled = 512,
	HasChildren = 1024,
	NoChildren = 2048,
	Checked = 4096,
	NotChecked = 8192,
	Enabled = 16384,
	Disabled = 32768,
	Editable = 65536,
	NotEditable = 131072,
	UserFlag = 16777216,
}
public struct QTreeWidgetItemIterator
{
	[LinkName("QTreeWidgetItemIterator_new")]
	public static extern QTreeWidgetItemIterator* QTreeWidgetItemIterator_new(QTreeWidgetItemIterator* it);
	[LinkName("QTreeWidgetItemIterator_new2")]
	public static extern QTreeWidgetItemIterator* QTreeWidgetItemIterator_new2(QTreeWidget* widget);
	[LinkName("QTreeWidgetItemIterator_new3")]
	public static extern QTreeWidgetItemIterator* QTreeWidgetItemIterator_new3(QTreeWidgetItem* item);
	[LinkName("QTreeWidgetItemIterator_new4")]
	public static extern QTreeWidgetItemIterator* QTreeWidgetItemIterator_new4(QTreeWidget* widget, int64 flags);
	[LinkName("QTreeWidgetItemIterator_new5")]
	public static extern QTreeWidgetItemIterator* QTreeWidgetItemIterator_new5(QTreeWidgetItem* item, int64 flags);
	[LinkName("QTreeWidgetItemIterator_OperatorAssign")]
	public static extern void QTreeWidgetItemIterator_OperatorAssign(Self* c_this, QTreeWidgetItemIterator* it);
	[LinkName("QTreeWidgetItemIterator_OperatorPlusPlus")]
	public static extern QTreeWidgetItemIterator* QTreeWidgetItemIterator_OperatorPlusPlus(Self* c_this);
	[LinkName("QTreeWidgetItemIterator_OperatorPlusPlusWithInt")]
	public static extern QTreeWidgetItemIterator QTreeWidgetItemIterator_OperatorPlusPlusWithInt(Self* c_this, int32 param1);
	[LinkName("QTreeWidgetItemIterator_OperatorPlusAssign")]
	public static extern QTreeWidgetItemIterator* QTreeWidgetItemIterator_OperatorPlusAssign(Self* c_this, int32 n);
	[LinkName("QTreeWidgetItemIterator_OperatorMinusMinus")]
	public static extern QTreeWidgetItemIterator* QTreeWidgetItemIterator_OperatorMinusMinus(Self* c_this);
	[LinkName("QTreeWidgetItemIterator_OperatorMinusMinusWithInt")]
	public static extern QTreeWidgetItemIterator QTreeWidgetItemIterator_OperatorMinusMinusWithInt(Self* c_this, int32 param1);
	[LinkName("QTreeWidgetItemIterator_OperatorMinusAssign")]
	public static extern QTreeWidgetItemIterator* QTreeWidgetItemIterator_OperatorMinusAssign(Self* c_this, int32 n);
	[LinkName("QTreeWidgetItemIterator_OperatorMultiply")]
	public static extern QTreeWidgetItem* QTreeWidgetItemIterator_OperatorMultiply(Self* c_this);
}