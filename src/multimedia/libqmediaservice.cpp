#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaControl>
#include <QMediaService>
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
#include <qmediaservice.h>
#include "libqmediaservice.h"
#include "libqmediaservice.hxx"

QMetaObject* QMediaService_MetaObject(const QMediaService* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMediaService_Metacast(QMediaService* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMediaService_Metacall(QMediaService* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QMediaService_Tr(const char* s) {
    QString _ret = QMediaService::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaService_TrUtf8(const char* s) {
    QString _ret = QMediaService::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QMediaControl* QMediaService_RequestControl(QMediaService* self, const char* name) {
    return self->requestControl(name);
}

void QMediaService_ReleaseControl(QMediaService* self, QMediaControl* control) {
    self->releaseControl(control);
}

libqt_string QMediaService_Tr2(const char* s, const char* c) {
    QString _ret = QMediaService::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaService_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMediaService::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaService_TrUtf82(const char* s, const char* c) {
    QString _ret = QMediaService::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaService_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMediaService::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMediaService_Event(QMediaService* self, QEvent* event) {
    return self->event(event);
}

bool QMediaService_EventFilter(QMediaService* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QMediaService_Delete(QMediaService* self) {
    delete self;
}
