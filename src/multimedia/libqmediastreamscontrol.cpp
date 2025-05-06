#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaControl>
#include <QMediaStreamsControl>
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
#include <qmediastreamscontrol.h>
#include "libqmediastreamscontrol.h"
#include "libqmediastreamscontrol.hxx"

QMetaObject* QMediaStreamsControl_MetaObject(const QMediaStreamsControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMediaStreamsControl_Metacast(QMediaStreamsControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMediaStreamsControl_Metacall(QMediaStreamsControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QMediaStreamsControl_Tr(const char* s) {
    QString _ret = QMediaStreamsControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaStreamsControl_TrUtf8(const char* s) {
    QString _ret = QMediaStreamsControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QMediaStreamsControl_StreamCount(QMediaStreamsControl* self) {
    return self->streamCount();
}

int QMediaStreamsControl_StreamType(QMediaStreamsControl* self, int streamNumber) {
    return static_cast<int>(self->streamType(static_cast<int>(streamNumber)));
}

QVariant* QMediaStreamsControl_MetaData(QMediaStreamsControl* self, int streamNumber, libqt_string key) {
    QString key_QString = QString::fromUtf8(key.data, key.len);
    return new QVariant(self->metaData(static_cast<int>(streamNumber), key_QString));
}

bool QMediaStreamsControl_IsActive(QMediaStreamsControl* self, int streamNumber) {
    return self->isActive(static_cast<int>(streamNumber));
}

void QMediaStreamsControl_SetActive(QMediaStreamsControl* self, int streamNumber, bool state) {
    self->setActive(static_cast<int>(streamNumber), state);
}

void QMediaStreamsControl_StreamsChanged(QMediaStreamsControl* self) {
    self->streamsChanged();
}

void QMediaStreamsControl_Connect_StreamsChanged(QMediaStreamsControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaStreamsControl*) = reinterpret_cast<void (*)(QMediaStreamsControl*)>(slot);
    QMediaStreamsControl::connect(self, &QMediaStreamsControl::streamsChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QMediaStreamsControl_ActiveStreamsChanged(QMediaStreamsControl* self) {
    self->activeStreamsChanged();
}

void QMediaStreamsControl_Connect_ActiveStreamsChanged(QMediaStreamsControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaStreamsControl*) = reinterpret_cast<void (*)(QMediaStreamsControl*)>(slot);
    QMediaStreamsControl::connect(self, &QMediaStreamsControl::activeStreamsChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QMediaStreamsControl_Tr2(const char* s, const char* c) {
    QString _ret = QMediaStreamsControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaStreamsControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMediaStreamsControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaStreamsControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QMediaStreamsControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaStreamsControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMediaStreamsControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMediaStreamsControl_Event(QMediaStreamsControl* self, QEvent* event) {
    return self->event(event);
}

bool QMediaStreamsControl_EventFilter(QMediaStreamsControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QMediaStreamsControl_Delete(QMediaStreamsControl* self) {
    delete self;
}
