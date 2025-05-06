#include <QAbstractItemModel>
#include <QByteArray>
#include <QChildEvent>
#include <QDataStream>
#include <QDirModel>
#include <QEvent>
#include <QFileIconProvider>
#include <QFileInfo>
#include <QIcon>
#include <QList>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QMimeData>
#include <QModelIndex>
#include <QObject>
#include <QObjectUserData>
#include <QPersistentModelIndex>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qdirmodel.h>
#include "libqdirmodel.h"
#include "libqdirmodel.hxx"

QDirModel* QDirModel_new(libqt_list /* of libqt_string */ nameFilters, int filters, int sort) {
    QStringList nameFilters_QList;
    nameFilters_QList.reserve(nameFilters.len);
    libqt_string* nameFilters_arr = static_cast<libqt_string*>(nameFilters.data);
    for (size_t i = 0; i < nameFilters.len; ++i) {
        QString nameFilters_arr_i_QString = QString::fromUtf8(nameFilters_arr[i].data, nameFilters_arr[i].len);
        nameFilters_QList.push_back(nameFilters_arr_i_QString);
    }
    return new VirtualQDirModel(nameFilters_QList, static_cast<QDir::Filters>(filters), static_cast<QDir::SortFlags>(sort));
}

QDirModel* QDirModel_new2() {
    return new VirtualQDirModel();
}

QDirModel* QDirModel_new3(libqt_list /* of libqt_string */ nameFilters, int filters, int sort, QObject* parent) {
    QStringList nameFilters_QList;
    nameFilters_QList.reserve(nameFilters.len);
    libqt_string* nameFilters_arr = static_cast<libqt_string*>(nameFilters.data);
    for (size_t i = 0; i < nameFilters.len; ++i) {
        QString nameFilters_arr_i_QString = QString::fromUtf8(nameFilters_arr[i].data, nameFilters_arr[i].len);
        nameFilters_QList.push_back(nameFilters_arr_i_QString);
    }
    return new VirtualQDirModel(nameFilters_QList, static_cast<QDir::Filters>(filters), static_cast<QDir::SortFlags>(sort), parent);
}

QDirModel* QDirModel_new4(QObject* parent) {
    return new VirtualQDirModel(parent);
}

QMetaObject* QDirModel_MetaObject(const QDirModel* self) {
    return (QMetaObject*)self->metaObject();
}

void* QDirModel_Metacast(QDirModel* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QDirModel_Metacall(QDirModel* self, int param1, int param2, void** param3) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QDirModel_OnMetacall(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_Metacall_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QDirModel_QBaseMetacall(QDirModel* self, int param1, int param2, void** param3) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_Metacall_IsBase(true);
        return vqdirmodel->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QDirModel_Tr(const char* s) {
    QString _ret = QDirModel::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QDirModel_TrUtf8(const char* s) {
    QString _ret = QDirModel::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QDirModel_SetIconProvider(QDirModel* self, QFileIconProvider* provider) {
    self->setIconProvider(provider);
}

QFileIconProvider* QDirModel_IconProvider(const QDirModel* self) {
    return self->iconProvider();
}

void QDirModel_SetNameFilters(QDirModel* self, libqt_list /* of libqt_string */ filters) {
    QStringList filters_QList;
    filters_QList.reserve(filters.len);
    libqt_string* filters_arr = static_cast<libqt_string*>(filters.data);
    for (size_t i = 0; i < filters.len; ++i) {
        QString filters_arr_i_QString = QString::fromUtf8(filters_arr[i].data, filters_arr[i].len);
        filters_QList.push_back(filters_arr_i_QString);
    }
    self->setNameFilters(filters_QList);
}

libqt_list /* of libqt_string */ QDirModel_NameFilters(const QDirModel* self) {
    QStringList _ret = self->nameFilters();
    // Convert QList<> from C++ memory to manually-managed C memory
    libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        QString _lv_ret = _ret[i];
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray _lv_b = _lv_ret.toUtf8();
        libqt_string _lv_str;
        _lv_str.len = _lv_b.length();
        _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
        memcpy(_lv_str.data, _lv_b.data(), _lv_str.len);
        _lv_str.data[_lv_str.len] = '\0';
        _arr[i] = _lv_str;
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

void QDirModel_SetFilter(QDirModel* self, int filters) {
    self->setFilter(static_cast<QDir::Filters>(filters));
}

int QDirModel_Filter(const QDirModel* self) {
    return static_cast<int>(self->filter());
}

void QDirModel_SetSorting(QDirModel* self, int sort) {
    self->setSorting(static_cast<QDir::SortFlags>(sort));
}

int QDirModel_Sorting(const QDirModel* self) {
    return static_cast<int>(self->sorting());
}

void QDirModel_SetResolveSymlinks(QDirModel* self, bool enable) {
    self->setResolveSymlinks(enable);
}

bool QDirModel_ResolveSymlinks(const QDirModel* self) {
    return self->resolveSymlinks();
}

void QDirModel_SetReadOnly(QDirModel* self, bool enable) {
    self->setReadOnly(enable);
}

bool QDirModel_IsReadOnly(const QDirModel* self) {
    return self->isReadOnly();
}

void QDirModel_SetLazyChildCount(QDirModel* self, bool enable) {
    self->setLazyChildCount(enable);
}

bool QDirModel_LazyChildCount(const QDirModel* self) {
    return self->lazyChildCount();
}

QModelIndex* QDirModel_IndexWithPath(const QDirModel* self, libqt_string path) {
    QString path_QString = QString::fromUtf8(path.data, path.len);
    return new QModelIndex(self->index(path_QString));
}

bool QDirModel_IsDir(const QDirModel* self, QModelIndex* index) {
    return self->isDir(*index);
}

QModelIndex* QDirModel_Mkdir(QDirModel* self, QModelIndex* parent, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    return new QModelIndex(self->mkdir(*parent, name_QString));
}

bool QDirModel_Rmdir(QDirModel* self, QModelIndex* index) {
    return self->rmdir(*index);
}

bool QDirModel_Remove(QDirModel* self, QModelIndex* index) {
    return self->remove(*index);
}

libqt_string QDirModel_FilePath(const QDirModel* self, QModelIndex* index) {
    QString _ret = self->filePath(*index);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QDirModel_FileName(const QDirModel* self, QModelIndex* index) {
    QString _ret = self->fileName(*index);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QIcon* QDirModel_FileIcon(const QDirModel* self, QModelIndex* index) {
    return new QIcon(self->fileIcon(*index));
}

QFileInfo* QDirModel_FileInfo(const QDirModel* self, QModelIndex* index) {
    return new QFileInfo(self->fileInfo(*index));
}

void QDirModel_Refresh(QDirModel* self) {
    self->refresh();
}

libqt_string QDirModel_Tr2(const char* s, const char* c) {
    QString _ret = QDirModel::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QDirModel_Tr3(const char* s, const char* c, int n) {
    QString _ret = QDirModel::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QDirModel_TrUtf82(const char* s, const char* c) {
    QString _ret = QDirModel::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QDirModel_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QDirModel::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QModelIndex* QDirModel_Index2(const QDirModel* self, libqt_string path, int column) {
    QString path_QString = QString::fromUtf8(path.data, path.len);
    return new QModelIndex(self->index(path_QString, static_cast<int>(column)));
}

void QDirModel_Refresh1(QDirModel* self, QModelIndex* parent) {
    self->refresh(*parent);
}

// Derived class handler implementation
QModelIndex* QDirModel_Index(const QDirModel* self, int row, int column, QModelIndex* parent) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return new QModelIndex(vqdirmodel->index(static_cast<int>(row), static_cast<int>(column), *parent));
    } else {
        return new QModelIndex(self->index(static_cast<int>(row), static_cast<int>(column), *parent));
    }
}

// Base class handler implementation
QModelIndex* QDirModel_QBaseIndex(const QDirModel* self, int row, int column, QModelIndex* parent) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Index_IsBase(true);
        return new QModelIndex(vqdirmodel->index(static_cast<int>(row), static_cast<int>(column), *parent));
    } else {
        return new QModelIndex(self->index(static_cast<int>(row), static_cast<int>(column), *parent));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnIndex(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Index_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_Index_Callback>(slot));
    }
}

// Derived class handler implementation
QModelIndex* QDirModel_Parent(const QDirModel* self, QModelIndex* child) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return new QModelIndex(vqdirmodel->parent(*child));
    } else {
        return new QModelIndex(self->parent(*child));
    }
}

// Base class handler implementation
QModelIndex* QDirModel_QBaseParent(const QDirModel* self, QModelIndex* child) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Parent_IsBase(true);
        return new QModelIndex(vqdirmodel->parent(*child));
    } else {
        return new QModelIndex(self->parent(*child));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnParent(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Parent_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_Parent_Callback>(slot));
    }
}

// Derived class handler implementation
int QDirModel_RowCount(const QDirModel* self, QModelIndex* parent) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return vqdirmodel->rowCount(*parent);
    } else {
        return vqdirmodel->rowCount(*parent);
    }
}

// Base class handler implementation
int QDirModel_QBaseRowCount(const QDirModel* self, QModelIndex* parent) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_RowCount_IsBase(true);
        return vqdirmodel->rowCount(*parent);
    } else {
        return vqdirmodel->rowCount(*parent);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnRowCount(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_RowCount_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_RowCount_Callback>(slot));
    }
}

// Derived class handler implementation
int QDirModel_ColumnCount(const QDirModel* self, QModelIndex* parent) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return vqdirmodel->columnCount(*parent);
    } else {
        return vqdirmodel->columnCount(*parent);
    }
}

// Base class handler implementation
int QDirModel_QBaseColumnCount(const QDirModel* self, QModelIndex* parent) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_ColumnCount_IsBase(true);
        return vqdirmodel->columnCount(*parent);
    } else {
        return vqdirmodel->columnCount(*parent);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnColumnCount(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_ColumnCount_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_ColumnCount_Callback>(slot));
    }
}

// Derived class handler implementation
QVariant* QDirModel_Data(const QDirModel* self, QModelIndex* index, int role) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return new QVariant(vqdirmodel->data(*index, static_cast<int>(role)));
    } else {
        return new QVariant(self->data(*index, static_cast<int>(role)));
    }
}

// Base class handler implementation
QVariant* QDirModel_QBaseData(const QDirModel* self, QModelIndex* index, int role) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Data_IsBase(true);
        return new QVariant(vqdirmodel->data(*index, static_cast<int>(role)));
    } else {
        return new QVariant(self->data(*index, static_cast<int>(role)));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnData(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Data_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_Data_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_SetData(QDirModel* self, QModelIndex* index, QVariant* value, int role) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return vqdirmodel->setData(*index, *value, static_cast<int>(role));
    } else {
        return vqdirmodel->setData(*index, *value, static_cast<int>(role));
    }
}

// Base class handler implementation
bool QDirModel_QBaseSetData(QDirModel* self, QModelIndex* index, QVariant* value, int role) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_SetData_IsBase(true);
        return vqdirmodel->setData(*index, *value, static_cast<int>(role));
    } else {
        return vqdirmodel->setData(*index, *value, static_cast<int>(role));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnSetData(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_SetData_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_SetData_Callback>(slot));
    }
}

// Derived class handler implementation
QVariant* QDirModel_HeaderData(const QDirModel* self, int section, int orientation, int role) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return new QVariant(vqdirmodel->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
    } else {
        return new QVariant(self->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
    }
}

// Base class handler implementation
QVariant* QDirModel_QBaseHeaderData(const QDirModel* self, int section, int orientation, int role) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_HeaderData_IsBase(true);
        return new QVariant(vqdirmodel->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
    } else {
        return new QVariant(self->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnHeaderData(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_HeaderData_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_HeaderData_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_HasChildren(const QDirModel* self, QModelIndex* index) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return vqdirmodel->hasChildren(*index);
    } else {
        return vqdirmodel->hasChildren(*index);
    }
}

// Base class handler implementation
bool QDirModel_QBaseHasChildren(const QDirModel* self, QModelIndex* index) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_HasChildren_IsBase(true);
        return vqdirmodel->hasChildren(*index);
    } else {
        return vqdirmodel->hasChildren(*index);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnHasChildren(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_HasChildren_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_HasChildren_Callback>(slot));
    }
}

// Derived class handler implementation
int QDirModel_Flags(const QDirModel* self, QModelIndex* index) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return static_cast<int>(vqdirmodel->flags(*index));
    } else {
        return static_cast<int>(vqdirmodel->flags(*index));
    }
}

// Base class handler implementation
int QDirModel_QBaseFlags(const QDirModel* self, QModelIndex* index) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Flags_IsBase(true);
        return static_cast<int>(vqdirmodel->flags(*index));
    } else {
        return static_cast<int>(vqdirmodel->flags(*index));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnFlags(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Flags_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_Flags_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_Sort(QDirModel* self, int column, int order) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
    } else {
        vqdirmodel->sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
    }
}

// Base class handler implementation
void QDirModel_QBaseSort(QDirModel* self, int column, int order) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_Sort_IsBase(true);
        vqdirmodel->sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
    } else {
        vqdirmodel->sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnSort(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_Sort_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_Sort_Callback>(slot));
    }
}

// Derived class handler implementation
libqt_list /* of libqt_string */ QDirModel_MimeTypes(const QDirModel* self) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        QStringList _ret = vqdirmodel->mimeTypes();
        // Convert QList<> from C++ memory to manually-managed C memory
        libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            QString _lv_ret = _ret[i];
            // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
            QByteArray _lv_b = _lv_ret.toUtf8();
            libqt_string _lv_str;
            _lv_str.len = _lv_b.length();
            _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
            memcpy(_lv_str.data, _lv_b.data(), _lv_str.len);
            _lv_str.data[_lv_str.len] = '\0';
            _arr[i] = _lv_str;
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    } else {
        QStringList _ret = vqdirmodel->mimeTypes();
        // Convert QList<> from C++ memory to manually-managed C memory
        libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            QString _lv_ret = _ret[i];
            // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
            QByteArray _lv_b = _lv_ret.toUtf8();
            libqt_string _lv_str;
            _lv_str.len = _lv_b.length();
            _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
            memcpy(_lv_str.data, _lv_b.data(), _lv_str.len);
            _lv_str.data[_lv_str.len] = '\0';
            _arr[i] = _lv_str;
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    }
}

// Base class handler implementation
libqt_list /* of libqt_string */ QDirModel_QBaseMimeTypes(const QDirModel* self) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_MimeTypes_IsBase(true);
        QStringList _ret = vqdirmodel->mimeTypes();
        // Convert QList<> from C++ memory to manually-managed C memory
        libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            QString _lv_ret = _ret[i];
            // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
            QByteArray _lv_b = _lv_ret.toUtf8();
            libqt_string _lv_str;
            _lv_str.len = _lv_b.length();
            _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
            memcpy(_lv_str.data, _lv_b.data(), _lv_str.len);
            _lv_str.data[_lv_str.len] = '\0';
            _arr[i] = _lv_str;
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    } else {
        QStringList _ret = vqdirmodel->mimeTypes();
        // Convert QList<> from C++ memory to manually-managed C memory
        libqt_string* _arr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            QString _lv_ret = _ret[i];
            // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
            QByteArray _lv_b = _lv_ret.toUtf8();
            libqt_string _lv_str;
            _lv_str.len = _lv_b.length();
            _lv_str.data = static_cast<char*>(malloc((_lv_str.len + 1) * sizeof(char)));
            memcpy(_lv_str.data, _lv_b.data(), _lv_str.len);
            _lv_str.data[_lv_str.len] = '\0';
            _arr[i] = _lv_str;
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnMimeTypes(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_MimeTypes_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_MimeTypes_Callback>(slot));
    }
}

// Derived class handler implementation
QMimeData* QDirModel_MimeData(const QDirModel* self, libqt_list /* of QModelIndex* */ indexes) {
    QModelIndexList indexes_QList;
    indexes_QList.reserve(indexes.len);
    QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
    for (size_t i = 0; i < indexes.len; ++i) {
        indexes_QList.push_back(*(indexes_arr[i]));
    }
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return vqdirmodel->mimeData(indexes_QList);
    } else {
        return vqdirmodel->mimeData(indexes_QList);
    }
}

// Base class handler implementation
QMimeData* QDirModel_QBaseMimeData(const QDirModel* self, libqt_list /* of QModelIndex* */ indexes) {
    QModelIndexList indexes_QList;
    indexes_QList.reserve(indexes.len);
    QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
    for (size_t i = 0; i < indexes.len; ++i) {
        indexes_QList.push_back(*(indexes_arr[i]));
    }
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_MimeData_IsBase(true);
        return vqdirmodel->mimeData(indexes_QList);
    } else {
        return vqdirmodel->mimeData(indexes_QList);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnMimeData(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_MimeData_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_MimeData_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_DropMimeData(QDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return vqdirmodel->dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
    } else {
        return vqdirmodel->dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
    }
}

// Base class handler implementation
bool QDirModel_QBaseDropMimeData(QDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_DropMimeData_IsBase(true);
        return vqdirmodel->dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
    } else {
        return vqdirmodel->dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnDropMimeData(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_DropMimeData_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_DropMimeData_Callback>(slot));
    }
}

// Derived class handler implementation
int QDirModel_SupportedDropActions(const QDirModel* self) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return static_cast<int>(vqdirmodel->supportedDropActions());
    } else {
        return static_cast<int>(vqdirmodel->supportedDropActions());
    }
}

// Base class handler implementation
int QDirModel_QBaseSupportedDropActions(const QDirModel* self) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_SupportedDropActions_IsBase(true);
        return static_cast<int>(vqdirmodel->supportedDropActions());
    } else {
        return static_cast<int>(vqdirmodel->supportedDropActions());
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnSupportedDropActions(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_SupportedDropActions_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_SupportedDropActions_Callback>(slot));
    }
}

// Derived class handler implementation
QModelIndex* QDirModel_Sibling(const QDirModel* self, int row, int column, QModelIndex* idx) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return new QModelIndex(vqdirmodel->sibling(static_cast<int>(row), static_cast<int>(column), *idx));
    } else {
        return new QModelIndex(self->sibling(static_cast<int>(row), static_cast<int>(column), *idx));
    }
}

// Base class handler implementation
QModelIndex* QDirModel_QBaseSibling(const QDirModel* self, int row, int column, QModelIndex* idx) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Sibling_IsBase(true);
        return new QModelIndex(vqdirmodel->sibling(static_cast<int>(row), static_cast<int>(column), *idx));
    } else {
        return new QModelIndex(self->sibling(static_cast<int>(row), static_cast<int>(column), *idx));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnSibling(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Sibling_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_Sibling_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_SetHeaderData(QDirModel* self, int section, int orientation, QVariant* value, int role) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return vqdirmodel->setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
    } else {
        return vqdirmodel->setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
    }
}

// Base class handler implementation
bool QDirModel_QBaseSetHeaderData(QDirModel* self, int section, int orientation, QVariant* value, int role) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_SetHeaderData_IsBase(true);
        return vqdirmodel->setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
    } else {
        return vqdirmodel->setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnSetHeaderData(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_SetHeaderData_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_SetHeaderData_Callback>(slot));
    }
}

// Derived class handler implementation
libqt_map /* of int to QVariant* */ QDirModel_ItemData(const QDirModel* self, QModelIndex* index) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        QMap<int, QVariant> _ret = vqdirmodel->itemData(*index);
        // Convert QMap<> from C++ memory to manually-managed C memory
        int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
        QVariant** _varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.size()));
        int _ctr = 0;
        for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
            _karr[_ctr] = _itr->first;
            _varr[_ctr] = new QVariant(_itr->second);
            _ctr++;
        }
        libqt_map _out;
        _out.len = _ret.size();
        _out.keys = static_cast<void*>(_karr);
        _out.values = static_cast<void*>(_varr);
        return _out;
    } else {
        QMap<int, QVariant> _ret = vqdirmodel->itemData(*index);
        // Convert QMap<> from C++ memory to manually-managed C memory
        int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
        QVariant** _varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.size()));
        int _ctr = 0;
        for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
            _karr[_ctr] = _itr->first;
            _varr[_ctr] = new QVariant(_itr->second);
            _ctr++;
        }
        libqt_map _out;
        _out.len = _ret.size();
        _out.keys = static_cast<void*>(_karr);
        _out.values = static_cast<void*>(_varr);
        return _out;
    }
}

// Base class handler implementation
libqt_map /* of int to QVariant* */ QDirModel_QBaseItemData(const QDirModel* self, QModelIndex* index) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_ItemData_IsBase(true);
        QMap<int, QVariant> _ret = vqdirmodel->itemData(*index);
        // Convert QMap<> from C++ memory to manually-managed C memory
        int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
        QVariant** _varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.size()));
        int _ctr = 0;
        for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
            _karr[_ctr] = _itr->first;
            _varr[_ctr] = new QVariant(_itr->second);
            _ctr++;
        }
        libqt_map _out;
        _out.len = _ret.size();
        _out.keys = static_cast<void*>(_karr);
        _out.values = static_cast<void*>(_varr);
        return _out;
    } else {
        QMap<int, QVariant> _ret = vqdirmodel->itemData(*index);
        // Convert QMap<> from C++ memory to manually-managed C memory
        int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
        QVariant** _varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.size()));
        int _ctr = 0;
        for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
            _karr[_ctr] = _itr->first;
            _varr[_ctr] = new QVariant(_itr->second);
            _ctr++;
        }
        libqt_map _out;
        _out.len = _ret.size();
        _out.keys = static_cast<void*>(_karr);
        _out.values = static_cast<void*>(_varr);
        return _out;
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnItemData(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_ItemData_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_ItemData_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_SetItemData(QDirModel* self, QModelIndex* index, libqt_map /* of int to QVariant* */ roles) {
    QMap<int, QVariant> roles_QMap;
    int* roles_karr = static_cast<int*>(roles.keys);
    QVariant** roles_varr = static_cast<QVariant**>(roles.values);
    for (size_t i = 0; i < roles.len; ++i) {
        roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
    }
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return vqdirmodel->setItemData(*index, roles_QMap);
    } else {
        return vqdirmodel->setItemData(*index, roles_QMap);
    }
}

// Base class handler implementation
bool QDirModel_QBaseSetItemData(QDirModel* self, QModelIndex* index, libqt_map /* of int to QVariant* */ roles) {
    QMap<int, QVariant> roles_QMap;
    int* roles_karr = static_cast<int*>(roles.keys);
    QVariant** roles_varr = static_cast<QVariant**>(roles.values);
    for (size_t i = 0; i < roles.len; ++i) {
        roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
    }
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_SetItemData_IsBase(true);
        return vqdirmodel->setItemData(*index, roles_QMap);
    } else {
        return vqdirmodel->setItemData(*index, roles_QMap);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnSetItemData(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_SetItemData_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_SetItemData_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_CanDropMimeData(const QDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return vqdirmodel->canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
    } else {
        return vqdirmodel->canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
    }
}

// Base class handler implementation
bool QDirModel_QBaseCanDropMimeData(const QDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_CanDropMimeData_IsBase(true);
        return vqdirmodel->canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
    } else {
        return vqdirmodel->canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnCanDropMimeData(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_CanDropMimeData_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_CanDropMimeData_Callback>(slot));
    }
}

// Derived class handler implementation
int QDirModel_SupportedDragActions(const QDirModel* self) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return static_cast<int>(vqdirmodel->supportedDragActions());
    } else {
        return static_cast<int>(vqdirmodel->supportedDragActions());
    }
}

// Base class handler implementation
int QDirModel_QBaseSupportedDragActions(const QDirModel* self) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_SupportedDragActions_IsBase(true);
        return static_cast<int>(vqdirmodel->supportedDragActions());
    } else {
        return static_cast<int>(vqdirmodel->supportedDragActions());
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnSupportedDragActions(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_SupportedDragActions_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_SupportedDragActions_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_InsertRows(QDirModel* self, int row, int count, QModelIndex* parent) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return vqdirmodel->insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
    } else {
        return vqdirmodel->insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
    }
}

// Base class handler implementation
bool QDirModel_QBaseInsertRows(QDirModel* self, int row, int count, QModelIndex* parent) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_InsertRows_IsBase(true);
        return vqdirmodel->insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
    } else {
        return vqdirmodel->insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnInsertRows(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_InsertRows_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_InsertRows_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_InsertColumns(QDirModel* self, int column, int count, QModelIndex* parent) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return vqdirmodel->insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
    } else {
        return vqdirmodel->insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
    }
}

// Base class handler implementation
bool QDirModel_QBaseInsertColumns(QDirModel* self, int column, int count, QModelIndex* parent) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_InsertColumns_IsBase(true);
        return vqdirmodel->insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
    } else {
        return vqdirmodel->insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnInsertColumns(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_InsertColumns_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_InsertColumns_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_RemoveRows(QDirModel* self, int row, int count, QModelIndex* parent) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return vqdirmodel->removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
    } else {
        return vqdirmodel->removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
    }
}

// Base class handler implementation
bool QDirModel_QBaseRemoveRows(QDirModel* self, int row, int count, QModelIndex* parent) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_RemoveRows_IsBase(true);
        return vqdirmodel->removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
    } else {
        return vqdirmodel->removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnRemoveRows(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_RemoveRows_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_RemoveRows_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_RemoveColumns(QDirModel* self, int column, int count, QModelIndex* parent) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return vqdirmodel->removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
    } else {
        return vqdirmodel->removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
    }
}

// Base class handler implementation
bool QDirModel_QBaseRemoveColumns(QDirModel* self, int column, int count, QModelIndex* parent) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_RemoveColumns_IsBase(true);
        return vqdirmodel->removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
    } else {
        return vqdirmodel->removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnRemoveColumns(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_RemoveColumns_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_RemoveColumns_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_MoveRows(QDirModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return vqdirmodel->moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
    } else {
        return vqdirmodel->moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
    }
}

// Base class handler implementation
bool QDirModel_QBaseMoveRows(QDirModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_MoveRows_IsBase(true);
        return vqdirmodel->moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
    } else {
        return vqdirmodel->moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnMoveRows(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_MoveRows_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_MoveRows_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_MoveColumns(QDirModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return vqdirmodel->moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
    } else {
        return vqdirmodel->moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
    }
}

// Base class handler implementation
bool QDirModel_QBaseMoveColumns(QDirModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_MoveColumns_IsBase(true);
        return vqdirmodel->moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
    } else {
        return vqdirmodel->moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnMoveColumns(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_MoveColumns_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_MoveColumns_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_FetchMore(QDirModel* self, QModelIndex* parent) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->fetchMore(*parent);
    } else {
        vqdirmodel->fetchMore(*parent);
    }
}

// Base class handler implementation
void QDirModel_QBaseFetchMore(QDirModel* self, QModelIndex* parent) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_FetchMore_IsBase(true);
        vqdirmodel->fetchMore(*parent);
    } else {
        vqdirmodel->fetchMore(*parent);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnFetchMore(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_FetchMore_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_FetchMore_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_CanFetchMore(const QDirModel* self, QModelIndex* parent) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return vqdirmodel->canFetchMore(*parent);
    } else {
        return vqdirmodel->canFetchMore(*parent);
    }
}

// Base class handler implementation
bool QDirModel_QBaseCanFetchMore(const QDirModel* self, QModelIndex* parent) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_CanFetchMore_IsBase(true);
        return vqdirmodel->canFetchMore(*parent);
    } else {
        return vqdirmodel->canFetchMore(*parent);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnCanFetchMore(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_CanFetchMore_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_CanFetchMore_Callback>(slot));
    }
}

// Derived class handler implementation
QModelIndex* QDirModel_Buddy(const QDirModel* self, QModelIndex* index) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return new QModelIndex(vqdirmodel->buddy(*index));
    } else {
        return new QModelIndex(self->buddy(*index));
    }
}

// Base class handler implementation
QModelIndex* QDirModel_QBaseBuddy(const QDirModel* self, QModelIndex* index) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Buddy_IsBase(true);
        return new QModelIndex(vqdirmodel->buddy(*index));
    } else {
        return new QModelIndex(self->buddy(*index));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnBuddy(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Buddy_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_Buddy_Callback>(slot));
    }
}

// Derived class handler implementation
libqt_list /* of QModelIndex* */ QDirModel_Match(const QDirModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        QModelIndexList _ret = vqdirmodel->match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
        // Convert QList<> from C++ memory to manually-managed C memory
        QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            _arr[i] = new QModelIndex(_ret[i]);
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    } else {
        QModelIndexList _ret = vqdirmodel->match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
        // Convert QList<> from C++ memory to manually-managed C memory
        QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            _arr[i] = new QModelIndex(_ret[i]);
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    }
}

// Base class handler implementation
libqt_list /* of QModelIndex* */ QDirModel_QBaseMatch(const QDirModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Match_IsBase(true);
        QModelIndexList _ret = vqdirmodel->match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
        // Convert QList<> from C++ memory to manually-managed C memory
        QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            _arr[i] = new QModelIndex(_ret[i]);
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    } else {
        QModelIndexList _ret = vqdirmodel->match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
        // Convert QList<> from C++ memory to manually-managed C memory
        QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            _arr[i] = new QModelIndex(_ret[i]);
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnMatch(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Match_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_Match_Callback>(slot));
    }
}

// Derived class handler implementation
QSize* QDirModel_Span(const QDirModel* self, QModelIndex* index) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return new QSize(vqdirmodel->span(*index));
    } else {
        return new QSize(self->span(*index));
    }
}

// Base class handler implementation
QSize* QDirModel_QBaseSpan(const QDirModel* self, QModelIndex* index) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Span_IsBase(true);
        return new QSize(vqdirmodel->span(*index));
    } else {
        return new QSize(self->span(*index));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnSpan(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Span_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_Span_Callback>(slot));
    }
}

// Derived class handler implementation
libqt_map /* of int to libqt_string */ QDirModel_RoleNames(const QDirModel* self) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        QHash<int, QByteArray> _ret = vqdirmodel->roleNames();
        // Convert QMap<> from C++ memory to manually-managed C memory
        int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
        libqt_string* _varr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.size()));
        int _ctr = 0;
        for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
            _karr[_ctr] = _itr->first;
            QByteArray _hashval_qb = _itr->second;
            libqt_string _hashval_str;
            _hashval_str.len = _hashval_qb.length();
            _hashval_str.data = static_cast<char*>(malloc((_hashval_str.len + 1) * sizeof(char)));
            memcpy(_hashval_str.data, _hashval_qb.data(), _hashval_str.len);
            _hashval_str.data[_hashval_str.len] = '\0';
            _varr[_ctr] = _hashval_str;
            _ctr++;
        }
        libqt_map _out;
        _out.len = _ret.size();
        _out.keys = static_cast<void*>(_karr);
        _out.values = static_cast<void*>(_varr);
        return _out;
    } else {
        QHash<int, QByteArray> _ret = vqdirmodel->roleNames();
        // Convert QMap<> from C++ memory to manually-managed C memory
        int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
        libqt_string* _varr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.size()));
        int _ctr = 0;
        for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
            _karr[_ctr] = _itr->first;
            QByteArray _hashval_qb = _itr->second;
            libqt_string _hashval_str;
            _hashval_str.len = _hashval_qb.length();
            _hashval_str.data = static_cast<char*>(malloc((_hashval_str.len + 1) * sizeof(char)));
            memcpy(_hashval_str.data, _hashval_qb.data(), _hashval_str.len);
            _hashval_str.data[_hashval_str.len] = '\0';
            _varr[_ctr] = _hashval_str;
            _ctr++;
        }
        libqt_map _out;
        _out.len = _ret.size();
        _out.keys = static_cast<void*>(_karr);
        _out.values = static_cast<void*>(_varr);
        return _out;
    }
}

// Base class handler implementation
libqt_map /* of int to libqt_string */ QDirModel_QBaseRoleNames(const QDirModel* self) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_RoleNames_IsBase(true);
        QHash<int, QByteArray> _ret = vqdirmodel->roleNames();
        // Convert QMap<> from C++ memory to manually-managed C memory
        int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
        libqt_string* _varr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.size()));
        int _ctr = 0;
        for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
            _karr[_ctr] = _itr->first;
            QByteArray _hashval_qb = _itr->second;
            libqt_string _hashval_str;
            _hashval_str.len = _hashval_qb.length();
            _hashval_str.data = static_cast<char*>(malloc((_hashval_str.len + 1) * sizeof(char)));
            memcpy(_hashval_str.data, _hashval_qb.data(), _hashval_str.len);
            _hashval_str.data[_hashval_str.len] = '\0';
            _varr[_ctr] = _hashval_str;
            _ctr++;
        }
        libqt_map _out;
        _out.len = _ret.size();
        _out.keys = static_cast<void*>(_karr);
        _out.values = static_cast<void*>(_varr);
        return _out;
    } else {
        QHash<int, QByteArray> _ret = vqdirmodel->roleNames();
        // Convert QMap<> from C++ memory to manually-managed C memory
        int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
        libqt_string* _varr = static_cast<libqt_string*>(malloc(sizeof(libqt_string) * _ret.size()));
        int _ctr = 0;
        for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
            _karr[_ctr] = _itr->first;
            QByteArray _hashval_qb = _itr->second;
            libqt_string _hashval_str;
            _hashval_str.len = _hashval_qb.length();
            _hashval_str.data = static_cast<char*>(malloc((_hashval_str.len + 1) * sizeof(char)));
            memcpy(_hashval_str.data, _hashval_qb.data(), _hashval_str.len);
            _hashval_str.data[_hashval_str.len] = '\0';
            _varr[_ctr] = _hashval_str;
            _ctr++;
        }
        libqt_map _out;
        _out.len = _ret.size();
        _out.keys = static_cast<void*>(_karr);
        _out.values = static_cast<void*>(_varr);
        return _out;
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnRoleNames(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_RoleNames_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_RoleNames_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_Submit(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return vqdirmodel->submit();
    } else {
        return vqdirmodel->submit();
    }
}

// Base class handler implementation
bool QDirModel_QBaseSubmit(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_Submit_IsBase(true);
        return vqdirmodel->submit();
    } else {
        return vqdirmodel->submit();
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnSubmit(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_Submit_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_Submit_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_Revert(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->revert();
    } else {
        vqdirmodel->revert();
    }
}

// Base class handler implementation
void QDirModel_QBaseRevert(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_Revert_IsBase(true);
        vqdirmodel->revert();
    } else {
        vqdirmodel->revert();
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnRevert(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_Revert_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_Revert_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_Event(QDirModel* self, QEvent* event) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return vqdirmodel->event(event);
    } else {
        return vqdirmodel->event(event);
    }
}

// Base class handler implementation
bool QDirModel_QBaseEvent(QDirModel* self, QEvent* event) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_Event_IsBase(true);
        return vqdirmodel->event(event);
    } else {
        return vqdirmodel->event(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnEvent(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_Event_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_EventFilter(QDirModel* self, QObject* watched, QEvent* event) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return vqdirmodel->eventFilter(watched, event);
    } else {
        return vqdirmodel->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QDirModel_QBaseEventFilter(QDirModel* self, QObject* watched, QEvent* event) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_EventFilter_IsBase(true);
        return vqdirmodel->eventFilter(watched, event);
    } else {
        return vqdirmodel->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnEventFilter(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_EventFilter_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_TimerEvent(QDirModel* self, QTimerEvent* event) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->timerEvent(event);
    } else {
        vqdirmodel->timerEvent(event);
    }
}

// Base class handler implementation
void QDirModel_QBaseTimerEvent(QDirModel* self, QTimerEvent* event) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_TimerEvent_IsBase(true);
        vqdirmodel->timerEvent(event);
    } else {
        vqdirmodel->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnTimerEvent(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_TimerEvent_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_ChildEvent(QDirModel* self, QChildEvent* event) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->childEvent(event);
    } else {
        vqdirmodel->childEvent(event);
    }
}

// Base class handler implementation
void QDirModel_QBaseChildEvent(QDirModel* self, QChildEvent* event) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_ChildEvent_IsBase(true);
        vqdirmodel->childEvent(event);
    } else {
        vqdirmodel->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnChildEvent(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_ChildEvent_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_CustomEvent(QDirModel* self, QEvent* event) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->customEvent(event);
    } else {
        vqdirmodel->customEvent(event);
    }
}

// Base class handler implementation
void QDirModel_QBaseCustomEvent(QDirModel* self, QEvent* event) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_CustomEvent_IsBase(true);
        vqdirmodel->customEvent(event);
    } else {
        vqdirmodel->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnCustomEvent(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_CustomEvent_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_ConnectNotify(QDirModel* self, QMetaMethod* signal) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->connectNotify(*signal);
    } else {
        vqdirmodel->connectNotify(*signal);
    }
}

// Base class handler implementation
void QDirModel_QBaseConnectNotify(QDirModel* self, QMetaMethod* signal) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_ConnectNotify_IsBase(true);
        vqdirmodel->connectNotify(*signal);
    } else {
        vqdirmodel->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnConnectNotify(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_ConnectNotify_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_DisconnectNotify(QDirModel* self, QMetaMethod* signal) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->disconnectNotify(*signal);
    } else {
        vqdirmodel->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QDirModel_QBaseDisconnectNotify(QDirModel* self, QMetaMethod* signal) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_DisconnectNotify_IsBase(true);
        vqdirmodel->disconnectNotify(*signal);
    } else {
        vqdirmodel->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnDisconnectNotify(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_DisconnectNotify_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_ResetInternalData(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->resetInternalData();
    } else {
        vqdirmodel->resetInternalData();
    }
}

// Base class handler implementation
void QDirModel_QBaseResetInternalData(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_ResetInternalData_IsBase(true);
        vqdirmodel->resetInternalData();
    } else {
        vqdirmodel->resetInternalData();
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnResetInternalData(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_ResetInternalData_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_ResetInternalData_Callback>(slot));
    }
}

// Derived class handler implementation
QModelIndex* QDirModel_CreateIndex(const QDirModel* self, int row, int column) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return new QModelIndex(vqdirmodel->createIndex(static_cast<int>(row), static_cast<int>(column)));
    }
    return {};
}

// Base class handler implementation
QModelIndex* QDirModel_QBaseCreateIndex(const QDirModel* self, int row, int column) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_CreateIndex_IsBase(true);
        return new QModelIndex(vqdirmodel->createIndex(static_cast<int>(row), static_cast<int>(column)));
    }
    return {};
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnCreateIndex(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_CreateIndex_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_CreateIndex_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_EncodeData(const QDirModel* self, libqt_list /* of QModelIndex* */ indexes, QDataStream* stream) {
    QModelIndexList indexes_QList;
    indexes_QList.reserve(indexes.len);
    QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
    for (size_t i = 0; i < indexes.len; ++i) {
        indexes_QList.push_back(*(indexes_arr[i]));
    }
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->encodeData(indexes_QList, *stream);
    } else {
        vqdirmodel->encodeData(indexes_QList, *stream);
    }
}

// Base class handler implementation
void QDirModel_QBaseEncodeData(const QDirModel* self, libqt_list /* of QModelIndex* */ indexes, QDataStream* stream) {
    QModelIndexList indexes_QList;
    indexes_QList.reserve(indexes.len);
    QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
    for (size_t i = 0; i < indexes.len; ++i) {
        indexes_QList.push_back(*(indexes_arr[i]));
    }
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_EncodeData_IsBase(true);
        vqdirmodel->encodeData(indexes_QList, *stream);
    } else {
        vqdirmodel->encodeData(indexes_QList, *stream);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnEncodeData(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_EncodeData_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_EncodeData_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_DecodeData(QDirModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return vqdirmodel->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
    } else {
        return vqdirmodel->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
    }
}

// Base class handler implementation
bool QDirModel_QBaseDecodeData(QDirModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_DecodeData_IsBase(true);
        return vqdirmodel->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
    } else {
        return vqdirmodel->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnDecodeData(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_DecodeData_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_DecodeData_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_BeginInsertRows(QDirModel* self, QModelIndex* parent, int first, int last) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
    } else {
        vqdirmodel->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
    }
}

// Base class handler implementation
void QDirModel_QBaseBeginInsertRows(QDirModel* self, QModelIndex* parent, int first, int last) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_BeginInsertRows_IsBase(true);
        vqdirmodel->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
    } else {
        vqdirmodel->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnBeginInsertRows(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_BeginInsertRows_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_BeginInsertRows_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_EndInsertRows(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->endInsertRows();
    } else {
        vqdirmodel->endInsertRows();
    }
}

// Base class handler implementation
void QDirModel_QBaseEndInsertRows(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_EndInsertRows_IsBase(true);
        vqdirmodel->endInsertRows();
    } else {
        vqdirmodel->endInsertRows();
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnEndInsertRows(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_EndInsertRows_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_EndInsertRows_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_BeginRemoveRows(QDirModel* self, QModelIndex* parent, int first, int last) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
    } else {
        vqdirmodel->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
    }
}

// Base class handler implementation
void QDirModel_QBaseBeginRemoveRows(QDirModel* self, QModelIndex* parent, int first, int last) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_BeginRemoveRows_IsBase(true);
        vqdirmodel->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
    } else {
        vqdirmodel->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnBeginRemoveRows(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_BeginRemoveRows_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_BeginRemoveRows_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_EndRemoveRows(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->endRemoveRows();
    } else {
        vqdirmodel->endRemoveRows();
    }
}

// Base class handler implementation
void QDirModel_QBaseEndRemoveRows(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_EndRemoveRows_IsBase(true);
        vqdirmodel->endRemoveRows();
    } else {
        vqdirmodel->endRemoveRows();
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnEndRemoveRows(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_EndRemoveRows_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_EndRemoveRows_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_BeginMoveRows(QDirModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return vqdirmodel->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
    } else {
        return vqdirmodel->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
    }
}

// Base class handler implementation
bool QDirModel_QBaseBeginMoveRows(QDirModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_BeginMoveRows_IsBase(true);
        return vqdirmodel->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
    } else {
        return vqdirmodel->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnBeginMoveRows(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_BeginMoveRows_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_BeginMoveRows_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_EndMoveRows(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->endMoveRows();
    } else {
        vqdirmodel->endMoveRows();
    }
}

// Base class handler implementation
void QDirModel_QBaseEndMoveRows(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_EndMoveRows_IsBase(true);
        vqdirmodel->endMoveRows();
    } else {
        vqdirmodel->endMoveRows();
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnEndMoveRows(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_EndMoveRows_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_EndMoveRows_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_BeginInsertColumns(QDirModel* self, QModelIndex* parent, int first, int last) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
    } else {
        vqdirmodel->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
    }
}

// Base class handler implementation
void QDirModel_QBaseBeginInsertColumns(QDirModel* self, QModelIndex* parent, int first, int last) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_BeginInsertColumns_IsBase(true);
        vqdirmodel->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
    } else {
        vqdirmodel->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnBeginInsertColumns(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_BeginInsertColumns_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_BeginInsertColumns_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_EndInsertColumns(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->endInsertColumns();
    } else {
        vqdirmodel->endInsertColumns();
    }
}

// Base class handler implementation
void QDirModel_QBaseEndInsertColumns(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_EndInsertColumns_IsBase(true);
        vqdirmodel->endInsertColumns();
    } else {
        vqdirmodel->endInsertColumns();
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnEndInsertColumns(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_EndInsertColumns_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_EndInsertColumns_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_BeginRemoveColumns(QDirModel* self, QModelIndex* parent, int first, int last) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
    } else {
        vqdirmodel->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
    }
}

// Base class handler implementation
void QDirModel_QBaseBeginRemoveColumns(QDirModel* self, QModelIndex* parent, int first, int last) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_BeginRemoveColumns_IsBase(true);
        vqdirmodel->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
    } else {
        vqdirmodel->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnBeginRemoveColumns(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_BeginRemoveColumns_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_BeginRemoveColumns_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_EndRemoveColumns(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->endRemoveColumns();
    } else {
        vqdirmodel->endRemoveColumns();
    }
}

// Base class handler implementation
void QDirModel_QBaseEndRemoveColumns(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_EndRemoveColumns_IsBase(true);
        vqdirmodel->endRemoveColumns();
    } else {
        vqdirmodel->endRemoveColumns();
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnEndRemoveColumns(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_EndRemoveColumns_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_EndRemoveColumns_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_BeginMoveColumns(QDirModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        return vqdirmodel->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
    } else {
        return vqdirmodel->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
    }
}

// Base class handler implementation
bool QDirModel_QBaseBeginMoveColumns(QDirModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_BeginMoveColumns_IsBase(true);
        return vqdirmodel->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
    } else {
        return vqdirmodel->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnBeginMoveColumns(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_BeginMoveColumns_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_BeginMoveColumns_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_EndMoveColumns(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->endMoveColumns();
    } else {
        vqdirmodel->endMoveColumns();
    }
}

// Base class handler implementation
void QDirModel_QBaseEndMoveColumns(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_EndMoveColumns_IsBase(true);
        vqdirmodel->endMoveColumns();
    } else {
        vqdirmodel->endMoveColumns();
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnEndMoveColumns(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_EndMoveColumns_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_EndMoveColumns_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_BeginResetModel(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->beginResetModel();
    } else {
        vqdirmodel->beginResetModel();
    }
}

// Base class handler implementation
void QDirModel_QBaseBeginResetModel(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_BeginResetModel_IsBase(true);
        vqdirmodel->beginResetModel();
    } else {
        vqdirmodel->beginResetModel();
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnBeginResetModel(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_BeginResetModel_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_BeginResetModel_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_EndResetModel(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->endResetModel();
    } else {
        vqdirmodel->endResetModel();
    }
}

// Base class handler implementation
void QDirModel_QBaseEndResetModel(QDirModel* self) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_EndResetModel_IsBase(true);
        vqdirmodel->endResetModel();
    } else {
        vqdirmodel->endResetModel();
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnEndResetModel(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_EndResetModel_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_EndResetModel_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_ChangePersistentIndex(QDirModel* self, QModelIndex* from, QModelIndex* to) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->changePersistentIndex(*from, *to);
    } else {
        vqdirmodel->changePersistentIndex(*from, *to);
    }
}

// Base class handler implementation
void QDirModel_QBaseChangePersistentIndex(QDirModel* self, QModelIndex* from, QModelIndex* to) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_ChangePersistentIndex_IsBase(true);
        vqdirmodel->changePersistentIndex(*from, *to);
    } else {
        vqdirmodel->changePersistentIndex(*from, *to);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnChangePersistentIndex(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_ChangePersistentIndex_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_ChangePersistentIndex_Callback>(slot));
    }
}

// Derived class handler implementation
void QDirModel_ChangePersistentIndexList(QDirModel* self, libqt_list /* of QModelIndex* */ from, libqt_list /* of QModelIndex* */ to) {
    QModelIndexList from_QList;
    from_QList.reserve(from.len);
    QModelIndex** from_arr = static_cast<QModelIndex**>(from.data);
    for (size_t i = 0; i < from.len; ++i) {
        from_QList.push_back(*(from_arr[i]));
    }
    QModelIndexList to_QList;
    to_QList.reserve(to.len);
    QModelIndex** to_arr = static_cast<QModelIndex**>(to.data);
    for (size_t i = 0; i < to.len; ++i) {
        to_QList.push_back(*(to_arr[i]));
    }
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->changePersistentIndexList(from_QList, to_QList);
    } else {
        vqdirmodel->changePersistentIndexList(from_QList, to_QList);
    }
}

// Base class handler implementation
void QDirModel_QBaseChangePersistentIndexList(QDirModel* self, libqt_list /* of QModelIndex* */ from, libqt_list /* of QModelIndex* */ to) {
    QModelIndexList from_QList;
    from_QList.reserve(from.len);
    QModelIndex** from_arr = static_cast<QModelIndex**>(from.data);
    for (size_t i = 0; i < from.len; ++i) {
        from_QList.push_back(*(from_arr[i]));
    }
    QModelIndexList to_QList;
    to_QList.reserve(to.len);
    QModelIndex** to_arr = static_cast<QModelIndex**>(to.data);
    for (size_t i = 0; i < to.len; ++i) {
        to_QList.push_back(*(to_arr[i]));
    }
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_ChangePersistentIndexList_IsBase(true);
        vqdirmodel->changePersistentIndexList(from_QList, to_QList);
    } else {
        vqdirmodel->changePersistentIndexList(from_QList, to_QList);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnChangePersistentIndexList(QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = dynamic_cast<VirtualQDirModel*>(self)) {
        vqdirmodel->setQDirModel_ChangePersistentIndexList_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_ChangePersistentIndexList_Callback>(slot));
    }
}

// Derived class handler implementation
libqt_list /* of QModelIndex* */ QDirModel_PersistentIndexList(const QDirModel* self) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        QModelIndexList _ret = vqdirmodel->persistentIndexList();
        // Convert QList<> from C++ memory to manually-managed C memory
        QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            _arr[i] = new QModelIndex(_ret[i]);
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    } else {
        QModelIndexList _ret = vqdirmodel->persistentIndexList();
        // Convert QList<> from C++ memory to manually-managed C memory
        QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            _arr[i] = new QModelIndex(_ret[i]);
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    }
}

// Base class handler implementation
libqt_list /* of QModelIndex* */ QDirModel_QBasePersistentIndexList(const QDirModel* self) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_PersistentIndexList_IsBase(true);
        QModelIndexList _ret = vqdirmodel->persistentIndexList();
        // Convert QList<> from C++ memory to manually-managed C memory
        QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            _arr[i] = new QModelIndex(_ret[i]);
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    } else {
        QModelIndexList _ret = vqdirmodel->persistentIndexList();
        // Convert QList<> from C++ memory to manually-managed C memory
        QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
        for (size_t i = 0; i < _ret.length(); ++i) {
            _arr[i] = new QModelIndex(_ret[i]);
        }
        libqt_list _out;
        _out.len = _ret.length();
        _out.data = static_cast<void*>(_arr);
        return _out;
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnPersistentIndexList(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_PersistentIndexList_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_PersistentIndexList_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QDirModel_Sender(const QDirModel* self) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return vqdirmodel->sender();
    } else {
        return vqdirmodel->sender();
    }
}

// Base class handler implementation
QObject* QDirModel_QBaseSender(const QDirModel* self) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Sender_IsBase(true);
        return vqdirmodel->sender();
    } else {
        return vqdirmodel->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnSender(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Sender_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QDirModel_SenderSignalIndex(const QDirModel* self) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return vqdirmodel->senderSignalIndex();
    } else {
        return vqdirmodel->senderSignalIndex();
    }
}

// Base class handler implementation
int QDirModel_QBaseSenderSignalIndex(const QDirModel* self) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_SenderSignalIndex_IsBase(true);
        return vqdirmodel->senderSignalIndex();
    } else {
        return vqdirmodel->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnSenderSignalIndex(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_SenderSignalIndex_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QDirModel_Receivers(const QDirModel* self, const char* signal) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return vqdirmodel->receivers(signal);
    } else {
        return vqdirmodel->receivers(signal);
    }
}

// Base class handler implementation
int QDirModel_QBaseReceivers(const QDirModel* self, const char* signal) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Receivers_IsBase(true);
        return vqdirmodel->receivers(signal);
    } else {
        return vqdirmodel->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnReceivers(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_Receivers_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QDirModel_IsSignalConnected(const QDirModel* self, QMetaMethod* signal) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        return vqdirmodel->isSignalConnected(*signal);
    } else {
        return vqdirmodel->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QDirModel_QBaseIsSignalConnected(const QDirModel* self, QMetaMethod* signal) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_IsSignalConnected_IsBase(true);
        return vqdirmodel->isSignalConnected(*signal);
    } else {
        return vqdirmodel->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QDirModel_OnIsSignalConnected(const QDirModel* self, intptr_t slot) {
    if (auto* vqdirmodel = const_cast<VirtualQDirModel*>(dynamic_cast<const VirtualQDirModel*>(self))) {
        vqdirmodel->setQDirModel_IsSignalConnected_Callback(reinterpret_cast<VirtualQDirModel::QDirModel_IsSignalConnected_Callback>(slot));
    }
}

void QDirModel_Delete(QDirModel* self) {
    delete self;
}
