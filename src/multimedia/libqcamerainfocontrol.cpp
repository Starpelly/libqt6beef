#include <QByteArray>
#include <QCameraInfoControl>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaControl>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QObjectUserData>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qcamerainfocontrol.h>
#include "libqcamerainfocontrol.h"
#include "libqcamerainfocontrol.hxx"

QMetaObject* QCameraInfoControl_MetaObject(const QCameraInfoControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraInfoControl_Metacast(QCameraInfoControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraInfoControl_Metacall(QCameraInfoControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraInfoControl_Tr(const char* s) {
    QString _ret = QCameraInfoControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraInfoControl_TrUtf8(const char* s) {
    QString _ret = QCameraInfoControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QCameraInfoControl_CameraPosition(const QCameraInfoControl* self, libqt_string deviceName) {
    QString deviceName_QString = QString::fromUtf8(deviceName.data, deviceName.len);
    return static_cast<int>(self->cameraPosition(deviceName_QString));
}

int QCameraInfoControl_CameraOrientation(const QCameraInfoControl* self, libqt_string deviceName) {
    QString deviceName_QString = QString::fromUtf8(deviceName.data, deviceName.len);
    return self->cameraOrientation(deviceName_QString);
}

libqt_string QCameraInfoControl_Tr2(const char* s, const char* c) {
    QString _ret = QCameraInfoControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraInfoControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraInfoControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraInfoControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraInfoControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraInfoControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraInfoControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraInfoControl_Event(QCameraInfoControl* self, QEvent* event) {
    return self->event(event);
}

bool QCameraInfoControl_EventFilter(QCameraInfoControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QCameraInfoControl_Delete(QCameraInfoControl* self) {
    delete self;
}
