#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaControl>
#include <QMediaVideoProbeControl>
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
#include <QVideoFrame>
#include <qmediavideoprobecontrol.h>
#include "libqmediavideoprobecontrol.h"
#include "libqmediavideoprobecontrol.hxx"

QMetaObject* QMediaVideoProbeControl_MetaObject(const QMediaVideoProbeControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QMediaVideoProbeControl_Metacast(QMediaVideoProbeControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QMediaVideoProbeControl_Metacall(QMediaVideoProbeControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QMediaVideoProbeControl_Tr(const char* s) {
    QString _ret = QMediaVideoProbeControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaVideoProbeControl_TrUtf8(const char* s) {
    QString _ret = QMediaVideoProbeControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QMediaVideoProbeControl_VideoFrameProbed(QMediaVideoProbeControl* self, QVideoFrame* frame) {
    self->videoFrameProbed(*frame);
}

void QMediaVideoProbeControl_Connect_VideoFrameProbed(QMediaVideoProbeControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaVideoProbeControl*, QVideoFrame*) = reinterpret_cast<void (*)(QMediaVideoProbeControl*, QVideoFrame*)>(slot);
    QMediaVideoProbeControl::connect(self, &QMediaVideoProbeControl::videoFrameProbed, [self, slotFunc](const QVideoFrame& frame) {
        const QVideoFrame& frame_ret = frame;
        // Cast returned reference into pointer
        QVideoFrame* sigval1 = const_cast<QVideoFrame*>(&frame_ret);
        slotFunc(self, sigval1);
    });
}

void QMediaVideoProbeControl_Flush(QMediaVideoProbeControl* self) {
    self->flush();
}

void QMediaVideoProbeControl_Connect_Flush(QMediaVideoProbeControl* self, intptr_t slot) {
    void (*slotFunc)(QMediaVideoProbeControl*) = reinterpret_cast<void (*)(QMediaVideoProbeControl*)>(slot);
    QMediaVideoProbeControl::connect(self, &QMediaVideoProbeControl::flush, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QMediaVideoProbeControl_Tr2(const char* s, const char* c) {
    QString _ret = QMediaVideoProbeControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaVideoProbeControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QMediaVideoProbeControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaVideoProbeControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QMediaVideoProbeControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QMediaVideoProbeControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QMediaVideoProbeControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QMediaVideoProbeControl_Event(QMediaVideoProbeControl* self, QEvent* event) {
    return self->event(event);
}

bool QMediaVideoProbeControl_EventFilter(QMediaVideoProbeControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QMediaVideoProbeControl_Delete(QMediaVideoProbeControl* self) {
    delete self;
}
