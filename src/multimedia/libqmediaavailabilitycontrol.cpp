#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaAvailabilityControl>
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
#include <qmediaavailabilitycontrol.h>
#include "libqmediaavailabilitycontrol.h"
#include "libqmediaavailabilitycontrol.hxx"

QMetaObject* QMediaAvailabilityControl_MetaObject(const QMediaAvailabilityControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMediaAvailabilityControl_Metacast(QMediaAvailabilityControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMediaAvailabilityControl_Metacall(QMediaAvailabilityControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QMediaAvailabilityControl_Tr(const char* s) {
    QString _ret = QMediaAvailabilityControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaAvailabilityControl_TrUtf8(const char* s) {
    QString _ret = QMediaAvailabilityControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QMediaAvailabilityControl_Availability(const QMediaAvailabilityControl* self) {
    return static_cast<int>(self->availability());
}

void QMediaAvailabilityControl_AvailabilityChanged(QMediaAvailabilityControl* self, int availability) {
    self->availabilityChanged(static_cast<QMultimedia::AvailabilityStatus>(availability));
}

void QMediaAvailabilityControl_Connect_AvailabilityChanged(QMediaAvailabilityControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaAvailabilityControl*, int) = reinterpret_cast<void (*)(QMediaAvailabilityControl*, int)>(slot);
    QMediaAvailabilityControl::connect(self, &QMediaAvailabilityControl::availabilityChanged, [self, slotFunc](QMultimedia::AvailabilityStatus availability) {
        int sigval1 = static_cast<int>(availability);
        slotFunc(self, sigval1);
    });
}

libqt_string QMediaAvailabilityControl_Tr2(const char* s, const char* c) {
    QString _ret = QMediaAvailabilityControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaAvailabilityControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMediaAvailabilityControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaAvailabilityControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QMediaAvailabilityControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaAvailabilityControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMediaAvailabilityControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMediaAvailabilityControl_Event(QMediaAvailabilityControl* self, QEvent* event) {
    return self->event(event);
}

bool QMediaAvailabilityControl_EventFilter(QMediaAvailabilityControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QMediaAvailabilityControl_Delete(QMediaAvailabilityControl* self) {
    delete self;
}
