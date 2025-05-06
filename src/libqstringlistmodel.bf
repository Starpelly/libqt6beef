using System;
using System.Interop;
namespace Qt;

public struct QStringListModel
{
	[LinkName("QStringListModel_new")]
	public static extern void* QStringListModel_new();
	[LinkName("QStringListModel_new2")]
	public static extern void* QStringListModel_new2(char8[][] strings);
	[LinkName("QStringListModel_new3")]
	public static extern void* QStringListModel_new3(QObject parent);
	[LinkName("QStringListModel_new4")]
	public static extern void* QStringListModel_new4(char8[][] strings, QObject parent);
	[LinkName("QStringListModel_MetaObject")]
	public static extern QMetaObject QStringListModel_MetaObject(void* c_this);
	[LinkName("QStringListModel_Metacast")]
	public static extern void QStringListModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QStringListModel_Metacall")]
	public static extern int32 QStringListModel_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QStringListModel_Tr")]
	public static extern char8[] QStringListModel_Tr(char8[] s);
	[LinkName("QStringListModel_RowCount")]
	public static extern int32 QStringListModel_RowCount(void* c_this, QModelIndex parent);
	[LinkName("QStringListModel_Sibling")]
	public static extern QModelIndex QStringListModel_Sibling(void* c_this, int32 row, int32 column, QModelIndex idx);
	[LinkName("QStringListModel_Data")]
	public static extern QVariant QStringListModel_Data(void* c_this, QModelIndex index, int32 role);
	[LinkName("QStringListModel_SetData")]
	public static extern bool QStringListModel_SetData(void* c_this, QModelIndex index, QVariant value, int32 role);
	[LinkName("QStringListModel_ClearItemData")]
	public static extern bool QStringListModel_ClearItemData(void* c_this, QModelIndex index);
	[LinkName("QStringListModel_Flags")]
	public static extern int64 QStringListModel_Flags(void* c_this, QModelIndex index);
	[LinkName("QStringListModel_InsertRows")]
	public static extern bool QStringListModel_InsertRows(void* c_this, int32 row, int32 count, QModelIndex parent);
	[LinkName("QStringListModel_RemoveRows")]
	public static extern bool QStringListModel_RemoveRows(void* c_this, int32 row, int32 count, QModelIndex parent);
	[LinkName("QStringListModel_MoveRows")]
	public static extern bool QStringListModel_MoveRows(void* c_this, QModelIndex sourceParent, int32 sourceRow, int32 count, QModelIndex destinationParent, int32 destinationChild);
	[LinkName("QStringListModel_ItemData")]
	public static extern void* QStringListModel_ItemData(void* c_this, QModelIndex index);
	[LinkName("QStringListModel_SetItemData")]
	public static extern bool QStringListModel_SetItemData(void* c_this, QModelIndex index, void* roles);
	[LinkName("QStringListModel_Sort")]
	public static extern void QStringListModel_Sort(void* c_this, int32 column, int64 order);
	[LinkName("QStringListModel_StringList")]
	public static extern char8[][] QStringListModel_StringList(void* c_this);
	[LinkName("QStringListModel_SetStringList")]
	public static extern void QStringListModel_SetStringList(void* c_this, char8[][] strings);
	[LinkName("QStringListModel_SupportedDropActions")]
	public static extern int64 QStringListModel_SupportedDropActions(void* c_this);
	[LinkName("QStringListModel_Tr2")]
	public static extern char8[] QStringListModel_Tr2(char8[] s, char8[] c);
	[LinkName("QStringListModel_Tr3")]
	public static extern char8[] QStringListModel_Tr3(char8[] s, char8[] c, int32 n);
}