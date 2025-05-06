#include <QByteArray>
#include <QCameraFlashControl>
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
#include <qcameraflashcontrol.h>
#include "libqcameraflashcontrol.h"
#include "libqcameraflashcontrol.hxx"

QMetaObject* QCameraFlashControl_MetaObject(const QCameraFlashControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraFlashControl_Metacast(QCameraFlashControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraFlashControl_Metacall(QCameraFlashControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraFlashControl_Tr(const char* s) {
    QString _ret = QCameraFlashControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraFlashControl_TrUtf8(const char* s) {
    QString _ret = QCameraFlashControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QCameraFlashControl_FlashMode(const QCameraFlashControl* self) {
    return static_cast<int>(self->flashMode());
}

void QCameraFlashControl_SetFlashMode(QCameraFlashControl* self, int mode) {
    self->setFlashMode(static_cast<QCameraExposure::FlashModes>(mode));
}

bool QCameraFlashControl_IsFlashModeSupported(const QCameraFlashControl* self, int mode) {
    return self->isFlashModeSupported(static_cast<QCameraExposure::FlashModes>(mode));
}

bool QCameraFlashControl_IsFlashReady(const QCameraFlashControl* self) {
    return self->isFlashReady();
}

void QCameraFlashControl_FlashReady(QCameraFlashControl* self, bool param1) {
    self->flashReady(param1);
}

void QCameraFlashControl_Connect_FlashReady(QCameraFlashControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraFlashControl*, bool) = reinterpret_cast<void (*)(QCameraFlashControl*, bool)>(slot);
    QCameraFlashControl::connect(self, &QCameraFlashControl::flashReady, [self, slotFunc](bool param1) {
        bool sigval1 = param1;
        slotFunc(self, sigval1);
    });
}

libqt_string QCameraFlashControl_Tr2(const char* s, const char* c) {
    QString _ret = QCameraFlashControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraFlashControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraFlashControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraFlashControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraFlashControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraFlashControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraFlashControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraFlashControl_Event(QCameraFlashControl* self, QEvent* event) {
    return self->event(event);
}

bool QCameraFlashControl_EventFilter(QCameraFlashControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QCameraFlashControl_Delete(QCameraFlashControl* self) {
    delete self;
}
