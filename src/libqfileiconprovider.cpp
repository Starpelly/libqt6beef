#include <QFileIconProvider>
#include <QFileInfo>
#include <QIcon>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qfileiconprovider.h>
#include "libqfileiconprovider.h"
#include "libqfileiconprovider.hxx"

QFileIconProvider* QFileIconProvider_new() {
    return new VirtualQFileIconProvider();
}

void QFileIconProvider_SetOptions(QFileIconProvider* self, int options) {
    self->setOptions(static_cast<QFileIconProvider::Options>(options));
}

int QFileIconProvider_Options(const QFileIconProvider* self) {
    return static_cast<int>(self->options());
}

// Derived class handler implementation
QIcon* QFileIconProvider_Icon(const QFileIconProvider* self, int typeVal) {
    if (auto* vqfileiconprovider = const_cast<VirtualQFileIconProvider*>(dynamic_cast<const VirtualQFileIconProvider*>(self))) {
        return new QIcon(vqfileiconprovider->icon(static_cast<QFileIconProvider::IconType>(typeVal)));
    } else {
        return new QIcon(self->icon(static_cast<QFileIconProvider::IconType>(typeVal)));
    }
}

// Base class handler implementation
QIcon* QFileIconProvider_QBaseIcon(const QFileIconProvider* self, int typeVal) {
    if (auto* vqfileiconprovider = const_cast<VirtualQFileIconProvider*>(dynamic_cast<const VirtualQFileIconProvider*>(self))) {
        vqfileiconprovider->setQFileIconProvider_Icon_IsBase(true);
        return new QIcon(vqfileiconprovider->icon(static_cast<QFileIconProvider::IconType>(typeVal)));
    } else {
        return new QIcon(self->icon(static_cast<QFileIconProvider::IconType>(typeVal)));
    }
}

// Auxiliary method to allow providing re-implementation
void QFileIconProvider_OnIcon(const QFileIconProvider* self, intptr_t slot) {
    if (auto* vqfileiconprovider = const_cast<VirtualQFileIconProvider*>(dynamic_cast<const VirtualQFileIconProvider*>(self))) {
        vqfileiconprovider->setQFileIconProvider_Icon_Callback(reinterpret_cast<VirtualQFileIconProvider::QFileIconProvider_Icon_Callback>(slot));
    }
}

// Derived class handler implementation
QIcon* QFileIconProvider_IconWithInfo(const QFileIconProvider* self, QFileInfo* info) {
    if (auto* vqfileiconprovider = const_cast<VirtualQFileIconProvider*>(dynamic_cast<const VirtualQFileIconProvider*>(self))) {
        return new QIcon(vqfileiconprovider->icon(*info));
    } else {
        return new QIcon(self->icon(*info));
    }
}

// Base class handler implementation
QIcon* QFileIconProvider_QBaseIconWithInfo(const QFileIconProvider* self, QFileInfo* info) {
    if (auto* vqfileiconprovider = const_cast<VirtualQFileIconProvider*>(dynamic_cast<const VirtualQFileIconProvider*>(self))) {
        vqfileiconprovider->setQFileIconProvider_IconWithInfo_IsBase(true);
        return new QIcon(vqfileiconprovider->icon(*info));
    } else {
        return new QIcon(self->icon(*info));
    }
}

// Auxiliary method to allow providing re-implementation
void QFileIconProvider_OnIconWithInfo(const QFileIconProvider* self, intptr_t slot) {
    if (auto* vqfileiconprovider = const_cast<VirtualQFileIconProvider*>(dynamic_cast<const VirtualQFileIconProvider*>(self))) {
        vqfileiconprovider->setQFileIconProvider_IconWithInfo_Callback(reinterpret_cast<VirtualQFileIconProvider::QFileIconProvider_IconWithInfo_Callback>(slot));
    }
}

// Derived class handler implementation
libqt_string QFileIconProvider_Type(const QFileIconProvider* self, QFileInfo* info) {
    if (auto* vqfileiconprovider = const_cast<VirtualQFileIconProvider*>(dynamic_cast<const VirtualQFileIconProvider*>(self))) {
        QString _ret = vqfileiconprovider->type(*info);
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray _b = _ret.toUtf8();
        libqt_string _str;
        _str.len = _b.length();
        _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
        memcpy(_str.data, _b.data(), _str.len);
        _str.data[_str.len] = '\0';
        return _str;
    } else {
        QString _ret = vqfileiconprovider->type(*info);
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray _b = _ret.toUtf8();
        libqt_string _str;
        _str.len = _b.length();
        _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
        memcpy(_str.data, _b.data(), _str.len);
        _str.data[_str.len] = '\0';
        return _str;
    }
}

// Base class handler implementation
libqt_string QFileIconProvider_QBaseType(const QFileIconProvider* self, QFileInfo* info) {
    if (auto* vqfileiconprovider = const_cast<VirtualQFileIconProvider*>(dynamic_cast<const VirtualQFileIconProvider*>(self))) {
        vqfileiconprovider->setQFileIconProvider_Type_IsBase(true);
        QString _ret = vqfileiconprovider->type(*info);
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray _b = _ret.toUtf8();
        libqt_string _str;
        _str.len = _b.length();
        _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
        memcpy(_str.data, _b.data(), _str.len);
        _str.data[_str.len] = '\0';
        return _str;
    } else {
        QString _ret = vqfileiconprovider->type(*info);
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray _b = _ret.toUtf8();
        libqt_string _str;
        _str.len = _b.length();
        _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
        memcpy(_str.data, _b.data(), _str.len);
        _str.data[_str.len] = '\0';
        return _str;
    }
}

// Auxiliary method to allow providing re-implementation
void QFileIconProvider_OnType(const QFileIconProvider* self, intptr_t slot) {
    if (auto* vqfileiconprovider = const_cast<VirtualQFileIconProvider*>(dynamic_cast<const VirtualQFileIconProvider*>(self))) {
        vqfileiconprovider->setQFileIconProvider_Type_Callback(reinterpret_cast<VirtualQFileIconProvider::QFileIconProvider_Type_Callback>(slot));
    }
}

void QFileIconProvider_Delete(QFileIconProvider* self) {
    delete self;
}
