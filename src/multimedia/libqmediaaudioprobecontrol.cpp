#include <QAudioBuffer>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaAudioProbeControl>
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
#include <qmediaaudioprobecontrol.h>
#include "libqmediaaudioprobecontrol.h"
#include "libqmediaaudioprobecontrol.hxx"

QMetaObject* QMediaAudioProbeControl_MetaObject(const QMediaAudioProbeControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMediaAudioProbeControl_Metacast(QMediaAudioProbeControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMediaAudioProbeControl_Metacall(QMediaAudioProbeControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QMediaAudioProbeControl_Tr(const char* s) {
    QString _ret = QMediaAudioProbeControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaAudioProbeControl_TrUtf8(const char* s) {
    QString _ret = QMediaAudioProbeControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QMediaAudioProbeControl_AudioBufferProbed(QMediaAudioProbeControl* self, QAudioBuffer* buffer) {
    self->audioBufferProbed(*buffer);
}

void QMediaAudioProbeControl_Connect_AudioBufferProbed(QMediaAudioProbeControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaAudioProbeControl*, QAudioBuffer*) = reinterpret_cast<void (*)(QMediaAudioProbeControl*, QAudioBuffer*)>(slot);
    QMediaAudioProbeControl::connect(self, &QMediaAudioProbeControl::audioBufferProbed, [self, slotFunc](const QAudioBuffer& buffer) {
        const QAudioBuffer& buffer_ret = buffer;
        // Cast returned reference into pointer
        QAudioBuffer* sigval1 = const_cast<QAudioBuffer*>(&buffer_ret);
        slotFunc(self, sigval1);
    });
}

void QMediaAudioProbeControl_Flush(QMediaAudioProbeControl* self) {
    self->flush();
}

void QMediaAudioProbeControl_Connect_Flush(QMediaAudioProbeControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaAudioProbeControl*) = reinterpret_cast<void (*)(QMediaAudioProbeControl*)>(slot);
    QMediaAudioProbeControl::connect(self, &QMediaAudioProbeControl::flush, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QMediaAudioProbeControl_Tr2(const char* s, const char* c) {
    QString _ret = QMediaAudioProbeControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaAudioProbeControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMediaAudioProbeControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaAudioProbeControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QMediaAudioProbeControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaAudioProbeControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMediaAudioProbeControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMediaAudioProbeControl_Event(QMediaAudioProbeControl* self, QEvent* event) {
    return self->event(event);
}

bool QMediaAudioProbeControl_EventFilter(QMediaAudioProbeControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QMediaAudioProbeControl_Delete(QMediaAudioProbeControl* self) {
    delete self;
}
