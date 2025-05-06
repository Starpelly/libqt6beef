#include <QList>
#include <QNetworkConfiguration>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qnetworkconfiguration.h>
#include "libqnetworkconfiguration.h"
#include "libqnetworkconfiguration.hxx"

QNetworkConfiguration* QNetworkConfiguration_new() {
    return new QNetworkConfiguration();
}

QNetworkConfiguration* QNetworkConfiguration_new2(QNetworkConfiguration* other) {
    return new QNetworkConfiguration(*other);
}

void QNetworkConfiguration_OperatorAssign(QNetworkConfiguration* self, QNetworkConfiguration* other) {
    self->operator=(*other);
}

void QNetworkConfiguration_Swap(QNetworkConfiguration* self, QNetworkConfiguration* other) {
    self->swap(*other);
}

bool QNetworkConfiguration_OperatorEqual(const QNetworkConfiguration* self, QNetworkConfiguration* other) {
    return (*self == *other);
}

bool QNetworkConfiguration_OperatorNotEqual(const QNetworkConfiguration* self, QNetworkConfiguration* other) {
    return (*self != *other);
}

int QNetworkConfiguration_State(const QNetworkConfiguration* self) {
    return static_cast<int>(self->state());
}

int QNetworkConfiguration_Type(const QNetworkConfiguration* self) {
    return static_cast<int>(self->type());
}

int QNetworkConfiguration_Purpose(const QNetworkConfiguration* self) {
    return static_cast<int>(self->purpose());
}

int QNetworkConfiguration_BearerType(const QNetworkConfiguration* self) {
    return static_cast<int>(self->bearerType());
}

int QNetworkConfiguration_BearerTypeFamily(const QNetworkConfiguration* self) {
    return static_cast<int>(self->bearerTypeFamily());
}

libqt_string QNetworkConfiguration_BearerTypeName(const QNetworkConfiguration* self) {
    QString _ret = self->bearerTypeName();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QNetworkConfiguration_Identifier(const QNetworkConfiguration* self) {
    QString _ret = self->identifier();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QNetworkConfiguration_IsRoamingAvailable(const QNetworkConfiguration* self) {
    return self->isRoamingAvailable();
}

libqt_list /* of QNetworkConfiguration* */ QNetworkConfiguration_Children(const QNetworkConfiguration* self) {
    QList<QNetworkConfiguration> _ret = self->children();
    // Convert QList<> from C++ memory to manually-managed C memory
    QNetworkConfiguration** _arr = static_cast<QNetworkConfiguration**>(malloc(sizeof(QNetworkConfiguration*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QNetworkConfiguration(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_string QNetworkConfiguration_Name(const QNetworkConfiguration* self) {
    QString _ret = self->name();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QNetworkConfiguration_IsValid(const QNetworkConfiguration* self) {
    return self->isValid();
}

int QNetworkConfiguration_ConnectTimeout(const QNetworkConfiguration* self) {
    return self->connectTimeout();
}

bool QNetworkConfiguration_SetConnectTimeout(QNetworkConfiguration* self, int timeout) {
    return self->setConnectTimeout(static_cast<int>(timeout));
}

void QNetworkConfiguration_Delete(QNetworkConfiguration* self) {
    delete self;
}
