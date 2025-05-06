#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTouchDevice>
#include <qtouchdevice.h>
#include "libqtouchdevice.h"
#include "libqtouchdevice.hxx"

QTouchDevice* QTouchDevice_new() {
    return new QTouchDevice();
}

libqt_list /* of QTouchDevice* */ QTouchDevice_Devices() {
    QList<const QTouchDevice*> _ret = QTouchDevice::devices();
    // Convert QList<> from C++ memory to manually-managed C memory
    QTouchDevice** _arr = static_cast<QTouchDevice**>(malloc(sizeof(QTouchDevice*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = (QTouchDevice*)_ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_string QTouchDevice_Name(const QTouchDevice* self) {
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

int QTouchDevice_Type(const QTouchDevice* self) {
    return static_cast<int>(self->type());
}

int QTouchDevice_Capabilities(const QTouchDevice* self) {
    return static_cast<int>(self->capabilities());
}

int QTouchDevice_MaximumTouchPoints(const QTouchDevice* self) {
    return self->maximumTouchPoints();
}

void QTouchDevice_SetName(QTouchDevice* self, libqt_string name) {
    QString name_QString = QString::fromUtf8(name.data, name.len);
    self->setName(name_QString);
}

void QTouchDevice_SetType(QTouchDevice* self, int devType) {
    self->setType(static_cast<QTouchDevice::DeviceType>(devType));
}

void QTouchDevice_SetCapabilities(QTouchDevice* self, int caps) {
    self->setCapabilities(static_cast<QTouchDevice::Capabilities>(caps));
}

void QTouchDevice_SetMaximumTouchPoints(QTouchDevice* self, int max) {
    self->setMaximumTouchPoints(static_cast<int>(max));
}

void QTouchDevice_Delete(QTouchDevice* self) {
    delete self;
}
