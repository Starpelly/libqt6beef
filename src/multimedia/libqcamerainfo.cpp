#include <QByteArray>
#include <QCamera>
#include <QCameraInfo>
#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qcamerainfo.h>
#include "libqcamerainfo.h"
#include "libqcamerainfo.hxx"

QCameraInfo* QCameraInfo_new() {
    return new QCameraInfo();
}

QCameraInfo* QCameraInfo_new2(QCamera* camera) {
    return new QCameraInfo(*camera);
}

QCameraInfo* QCameraInfo_new3(QCameraInfo* other) {
    return new QCameraInfo(*other);
}

QCameraInfo* QCameraInfo_new4(libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    return new QCameraInfo(name_QByteArray);
}

void QCameraInfo_OperatorAssign(QCameraInfo* self, QCameraInfo* other) {
    self->operator=(*other);
}

bool QCameraInfo_OperatorEqual(const QCameraInfo* self, QCameraInfo* other) {
    return (*self == *other);
}

bool QCameraInfo_OperatorNotEqual(const QCameraInfo* self, QCameraInfo* other) {
    return (*self != *other);
}

bool QCameraInfo_IsNull(const QCameraInfo* self) {
    return self->isNull();
}

libqt_string QCameraInfo_DeviceName(const QCameraInfo* self) {
    QString _ret = self->deviceName();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraInfo_Description(const QCameraInfo* self) {
    QString _ret = self->description();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QCameraInfo_Position(const QCameraInfo* self) {
    return static_cast<int>(self->position());
}

int QCameraInfo_Orientation(const QCameraInfo* self) {
    return self->orientation();
}

QCameraInfo* QCameraInfo_DefaultCamera() {
    return new QCameraInfo(QCameraInfo::defaultCamera());
}

libqt_list /* of QCameraInfo* */ QCameraInfo_AvailableCameras() {
    QList<QCameraInfo> _ret = QCameraInfo::availableCameras();
    // Convert QList<> from C++ memory to manually-managed C memory
    QCameraInfo** _arr = static_cast<QCameraInfo**>(malloc(sizeof(QCameraInfo*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QCameraInfo(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of QCameraInfo* */ QCameraInfo_AvailableCameras1(int position) {
    QList<QCameraInfo> _ret = QCameraInfo::availableCameras(static_cast<QCamera::Position>(position));
    // Convert QList<> from C++ memory to manually-managed C memory
    QCameraInfo** _arr = static_cast<QCameraInfo**>(malloc(sizeof(QCameraInfo*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QCameraInfo(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

void QCameraInfo_Delete(QCameraInfo* self) {
    delete self;
}
