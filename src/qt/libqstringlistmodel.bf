using System;
using System.Interop;
namespace Qt;

public struct QStringListModel : QAbstractListModel
{
	[LinkName("QStringListModel_new")]
	public static extern QStringListModel* QStringListModel_new();
	[LinkName("QStringListModel_new2")]
	public static extern QStringListModel* QStringListModel_new2(libqt_string[] strings);
	[LinkName("QStringListModel_new3")]
	public static extern QStringListModel* QStringListModel_new3(QObject* parent);
	[LinkName("QStringListModel_new4")]
	public static extern QStringListModel* QStringListModel_new4(libqt_string[] strings, QObject* parent);
	[LinkName("QStringListModel_MetaObject")]
	public static extern QMetaObject* QStringListModel_MetaObject(Self* c_this);
	[LinkName("QStringListModel_Metacast")]
	public static extern void* QStringListModel_Metacast(Self* c_this, char8[] param1);
	[LinkName("QStringListModel_Metacall")]
	public static extern int32 QStringListModel_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QStringListModel_Tr")]
	public static extern libqt_string QStringListModel_Tr(char8[] s);
	[LinkName("QStringListModel_RowCount")]
	public static extern int32 QStringListModel_RowCount(Self* c_this, QModelIndex* parent);
	[LinkName("QStringListModel_Sibling")]
	public static extern QModelIndex QStringListModel_Sibling(Self* c_this, int32 row, int32 column, QModelIndex* idx);
	[LinkName("QStringListModel_Data")]
	public static extern QVariant QStringListModel_Data(Self* c_this, QModelIndex* index, int32 role);
	[LinkName("QStringListModel_SetData")]
	public static extern bool QStringListModel_SetData(Self* c_this, QModelIndex* index, QVariant* value, int32 role);
	[LinkName("QStringListModel_ClearItemData")]
	public static extern bool QStringListModel_ClearItemData(Self* c_this, QModelIndex* index);
	[LinkName("QStringListModel_Flags")]
	public static extern int64 QStringListModel_Flags(Self* c_this, QModelIndex* index);
	[LinkName("QStringListModel_InsertRows")]
	public static extern bool QStringListModel_InsertRows(Self* c_this, int32 row, int32 count, QModelIndex* parent);
	[LinkName("QStringListModel_RemoveRows")]
	public static extern bool QStringListModel_RemoveRows(Self* c_this, int32 row, int32 count, QModelIndex* parent);
	[LinkName("QStringListModel_MoveRows")]
	public static extern bool QStringListModel_MoveRows(Self* c_this, QModelIndex* sourceParent, int32 sourceRow, int32 count, QModelIndex* destinationParent, int32 destinationChild);
	[LinkName("QStringListModel_ItemData")]
	public static extern void* QStringListModel_ItemData(Self* c_this, QModelIndex* index);
	[LinkName("QStringListModel_SetItemData")]
	public static extern bool QStringListModel_SetItemData(Self* c_this, QModelIndex* index, void* roles);
	[LinkName("QStringListModel_Sort")]
	public static extern void QStringListModel_Sort(Self* c_this, int32 column, int64 order);
	[LinkName("QStringListModel_StringList")]
	public static extern libqt_string[] QStringListModel_StringList(Self* c_this);
	[LinkName("QStringListModel_SetStringList")]
	public static extern void QStringListModel_SetStringList(Self* c_this, libqt_string[] strings);
	[LinkName("QStringListModel_SupportedDropActions")]
	public static extern int64 QStringListModel_SupportedDropActions(Self* c_this);
	[LinkName("QStringListModel_Tr2")]
	public static extern libqt_string QStringListModel_Tr2(char8[] s, char8[] c);
	[LinkName("QStringListModel_Tr3")]
	public static extern libqt_string QStringListModel_Tr3(char8[] s, char8[] c, int32 n);
}