using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDataWidgetMapper__SubmitPolicy
{
	AutoSubmit = 0,
	ManualSubmit = 1,
}
public struct QDataWidgetMapper : QObject
{
	[LinkName("QDataWidgetMapper_new")]
	public static extern QDataWidgetMapper* QDataWidgetMapper_new();
	[LinkName("QDataWidgetMapper_new2")]
	public static extern QDataWidgetMapper* QDataWidgetMapper_new2(QObject* parent);
	[LinkName("QDataWidgetMapper_MetaObject")]
	public static extern QMetaObject* QDataWidgetMapper_MetaObject(Self* c_this);
	[LinkName("QDataWidgetMapper_Metacast")]
	public static extern void* QDataWidgetMapper_Metacast(Self* c_this, char8[] param1);
	[LinkName("QDataWidgetMapper_Metacall")]
	public static extern int32 QDataWidgetMapper_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QDataWidgetMapper_Tr")]
	public static extern libqt_string QDataWidgetMapper_Tr(char8[] s);
	[LinkName("QDataWidgetMapper_SetModel")]
	public static extern void QDataWidgetMapper_SetModel(Self* c_this, QAbstractItemModel* model);
	[LinkName("QDataWidgetMapper_Model")]
	public static extern QAbstractItemModel* QDataWidgetMapper_Model(Self* c_this);
	[LinkName("QDataWidgetMapper_SetItemDelegate")]
	public static extern void QDataWidgetMapper_SetItemDelegate(Self* c_this, QAbstractItemDelegate* _delegate);
	[LinkName("QDataWidgetMapper_ItemDelegate")]
	public static extern QAbstractItemDelegate* QDataWidgetMapper_ItemDelegate(Self* c_this);
	[LinkName("QDataWidgetMapper_SetRootIndex")]
	public static extern void QDataWidgetMapper_SetRootIndex(Self* c_this, QModelIndex* index);
	[LinkName("QDataWidgetMapper_RootIndex")]
	public static extern QModelIndex QDataWidgetMapper_RootIndex(Self* c_this);
	[LinkName("QDataWidgetMapper_SetOrientation")]
	public static extern void QDataWidgetMapper_SetOrientation(Self* c_this, int64 aOrientation);
	[LinkName("QDataWidgetMapper_Orientation")]
	public static extern int64 QDataWidgetMapper_Orientation(Self* c_this);
	[LinkName("QDataWidgetMapper_SetSubmitPolicy")]
	public static extern void QDataWidgetMapper_SetSubmitPolicy(Self* c_this, int64 policy);
	[LinkName("QDataWidgetMapper_SubmitPolicy")]
	public static extern int64 QDataWidgetMapper_SubmitPolicy(Self* c_this);
	[LinkName("QDataWidgetMapper_AddMapping")]
	public static extern void QDataWidgetMapper_AddMapping(Self* c_this, QWidget* widget, int32 section);
	[LinkName("QDataWidgetMapper_AddMapping2")]
	public static extern void QDataWidgetMapper_AddMapping2(Self* c_this, QWidget* widget, int32 section, libqt_string propertyName);
	[LinkName("QDataWidgetMapper_RemoveMapping")]
	public static extern void QDataWidgetMapper_RemoveMapping(Self* c_this, QWidget* widget);
	[LinkName("QDataWidgetMapper_MappedSection")]
	public static extern int32 QDataWidgetMapper_MappedSection(Self* c_this, QWidget* widget);
	[LinkName("QDataWidgetMapper_MappedPropertyName")]
	public static extern libqt_string QDataWidgetMapper_MappedPropertyName(Self* c_this, QWidget* widget);
	[LinkName("QDataWidgetMapper_MappedWidgetAt")]
	public static extern QWidget* QDataWidgetMapper_MappedWidgetAt(Self* c_this, int32 section);
	[LinkName("QDataWidgetMapper_ClearMapping")]
	public static extern void QDataWidgetMapper_ClearMapping(Self* c_this);
	[LinkName("QDataWidgetMapper_CurrentIndex")]
	public static extern int32 QDataWidgetMapper_CurrentIndex(Self* c_this);
	[LinkName("QDataWidgetMapper_Revert")]
	public static extern void QDataWidgetMapper_Revert(Self* c_this);
	[LinkName("QDataWidgetMapper_Submit")]
	public static extern bool QDataWidgetMapper_Submit(Self* c_this);
	[LinkName("QDataWidgetMapper_ToFirst")]
	public static extern void QDataWidgetMapper_ToFirst(Self* c_this);
	[LinkName("QDataWidgetMapper_ToLast")]
	public static extern void QDataWidgetMapper_ToLast(Self* c_this);
	[LinkName("QDataWidgetMapper_ToNext")]
	public static extern void QDataWidgetMapper_ToNext(Self* c_this);
	[LinkName("QDataWidgetMapper_ToPrevious")]
	public static extern void QDataWidgetMapper_ToPrevious(Self* c_this);
	[LinkName("QDataWidgetMapper_SetCurrentIndex")]
	public static extern void QDataWidgetMapper_SetCurrentIndex(Self* c_this, int32 index);
	[LinkName("QDataWidgetMapper_SetCurrentModelIndex")]
	public static extern void QDataWidgetMapper_SetCurrentModelIndex(Self* c_this, QModelIndex* index);
	[LinkName("QDataWidgetMapper_CurrentIndexChanged")]
	public static extern void QDataWidgetMapper_CurrentIndexChanged(Self* c_this, int32 index);
	[LinkName("QDataWidgetMapper_Tr2")]
	public static extern libqt_string QDataWidgetMapper_Tr2(char8[] s, char8[] c);
	[LinkName("QDataWidgetMapper_Tr3")]
	public static extern libqt_string QDataWidgetMapper_Tr3(char8[] s, char8[] c, int32 n);
}