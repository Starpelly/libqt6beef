#include <QByteArray>
#include <QCameraLocksControl>
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
#include <qcameralockscontrol.h>
#include "libqcameralockscontrol.h"
#include "libqcameralockscontrol.hxx"

QMetaObject* QCameraLocksControl_MetaObject(const QCameraLocksControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraLocksControl_Metacast(QCameraLocksControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraLocksControl_Metacall(QCameraLocksControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraLocksControl_Tr(const char* s) {
    QString _ret = QCameraLocksControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraLocksControl_TrUtf8(const char* s) {
    QString _ret = QCameraLocksControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QCameraLocksControl_SupportedLocks(const QCameraLocksControl* self) {
    return static_cast<int>(self->supportedLocks());
}

int QCameraLocksControl_LockStatus(const QCameraLocksControl* self, int lock) {
    return static_cast<int>(self->lockStatus(static_cast<QCamera::LockType>(lock)));
}

void QCameraLocksControl_SearchAndLock(QCameraLocksControl* self, int locks) {
    self->searchAndLock(static_cast<QCamera::LockTypes>(locks));
}

void QCameraLocksControl_Unlock(QCameraLocksControl* self, int locks) {
    self->unlock(static_cast<QCamera::LockTypes>(locks));
}

void QCameraLocksControl_LockStatusChanged(QCameraLocksControl* self, int typeVal, int status, int reason) {
    self->lockStatusChanged(static_cast<QCamera::LockType>(typeVal), static_cast<QCamera::LockStatus>(status), static_cast<QCamera::LockChangeReason>(reason));
}

void QCameraLocksControl_Connect_LockStatusChanged(QCameraLocksControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraLocksControl*, int, int, int) = reinterpret_cast<void (*)(QCameraLocksControl*, int, int, int)>(slot);
    QCameraLocksControl::connect(self, &QCameraLocksControl::lockStatusChanged, [self, slotFunc](QCamera::LockType typeVal, QCamera::LockStatus status, QCamera::LockChangeReason reason) {
        int sigval1 = static_cast<int>(typeVal);
        int sigval2 = static_cast<int>(status);
        int sigval3 = static_cast<int>(reason);
        slotFunc(self, sigval1, sigval2, sigval3);
    });
}

libqt_string QCameraLocksControl_Tr2(const char* s, const char* c) {
    QString _ret = QCameraLocksControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraLocksControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraLocksControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraLocksControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraLocksControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraLocksControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraLocksControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraLocksControl_Event(QCameraLocksControl* self, QEvent* event) {
    return self->event(event);
}

bool QCameraLocksControl_EventFilter(QCameraLocksControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QCameraLocksControl_Delete(QCameraLocksControl* self) {
    delete self;
}
