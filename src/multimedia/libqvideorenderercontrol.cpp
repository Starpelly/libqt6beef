#include <QAbstractVideoSurface>
#include <QByteArray>
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
#include <QVideoRendererControl>
#include <qvideorenderercontrol.h>
#include "libqvideorenderercontrol.h"
#include "libqvideorenderercontrol.hxx"

QMetaObject* QVideoRendererControl_MetaObject(const QVideoRendererControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QVideoRendererControl_Metacast(QVideoRendererControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QVideoRendererControl_Metacall(QVideoRendererControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QVideoRendererControl_Tr(const char* s) {
    QString _ret = QVideoRendererControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoRendererControl_TrUtf8(const char* s) {
    QString _ret = QVideoRendererControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QAbstractVideoSurface* QVideoRendererControl_Surface(const QVideoRendererControl* self) {
    return self->surface();
}

void QVideoRendererControl_SetSurface(QVideoRendererControl* self, QAbstractVideoSurface* surface) {
    self->setSurface(surface);
}

libqt_string QVideoRendererControl_Tr2(const char* s, const char* c) {
    QString _ret = QVideoRendererControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoRendererControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QVideoRendererControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoRendererControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QVideoRendererControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QVideoRendererControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QVideoRendererControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QVideoRendererControl_Event(QVideoRendererControl* self, QEvent* event) {
    return self->event(event);
}

bool QVideoRendererControl_EventFilter(QVideoRendererControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QVideoRendererControl_Delete(QVideoRendererControl* self) {
    delete self;
}
