#include <QByteArray>
#include <QCameraControl>
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
#include <qcameracontrol.h>
#include "libqcameracontrol.h"
#include "libqcameracontrol.hxx"

QMetaObject* QCameraControl_MetaObject(const QCameraControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraControl_Metacast(QCameraControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraControl_Metacall(QCameraControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraControl_Tr(const char* s) {
    QString _ret = QCameraControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraControl_TrUtf8(const char* s) {
    QString _ret = QCameraControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QCameraControl_State(const QCameraControl* self) {
    return static_cast<int>(self->state());
}

void QCameraControl_SetState(QCameraControl* self, int state) {
    self->setState(static_cast<QCamera::State>(state));
}

int QCameraControl_Status(const QCameraControl* self) {
    return static_cast<int>(self->status());
}

int QCameraControl_CaptureMode(const QCameraControl* self) {
    return static_cast<int>(self->captureMode());
}

void QCameraControl_SetCaptureMode(QCameraControl* self, int captureMode) {
    self->setCaptureMode(static_cast<QFlags<QCamera::CaptureMode>>(captureMode));
}

bool QCameraControl_IsCaptureModeSupported(const QCameraControl* self, int mode) {
    return self->isCaptureModeSupported(static_cast<QCamera::CaptureModes>(mode));
}

bool QCameraControl_CanChangeProperty(const QCameraControl* self, int changeType, int status) {
    return self->canChangeProperty(static_cast<QCameraControl::PropertyChangeType>(changeType), static_cast<QCamera::Status>(status));
}

void QCameraControl_StateChanged(QCameraControl* self, int param1) {
    self->stateChanged(static_cast<QCamera::State>(param1));
}

void QCameraControl_Connect_StateChanged(QCameraControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraControl*, int) = reinterpret_cast<void (*)(QCameraControl*, int)>(slot);
    QCameraControl::connect(self, &QCameraControl::stateChanged, [self, slotFunc](QCamera::State param1) {
        int sigval1 = static_cast<int>(param1);
        slotFunc(self, sigval1);
    });
}

void QCameraControl_StatusChanged(QCameraControl* self, int param1) {
    self->statusChanged(static_cast<QCamera::Status>(param1));
}

void QCameraControl_Connect_StatusChanged(QCameraControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraControl*, int) = reinterpret_cast<void (*)(QCameraControl*, int)>(slot);
    QCameraControl::connect(self, &QCameraControl::statusChanged, [self, slotFunc](QCamera::Status param1) {
        int sigval1 = static_cast<int>(param1);
        slotFunc(self, sigval1);
    });
}

void QCameraControl_Error(QCameraControl* self, int errorVal, libqt_string errorString) {
    QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
    self->error(static_cast<int>(errorVal), errorString_QString);
}

void QCameraControl_Connect_Error(QCameraControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraControl*, int, libqt_string) = reinterpret_cast<void (*)(QCameraControl*, int, libqt_string)>(slot);
    QCameraControl::connect(self, &QCameraControl::error, [self, slotFunc](int errorVal, const QString& errorString) {
        int sigval1 = errorVal;
        const QString errorString_ret = errorString;
        // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
        QByteArray errorString_b = errorString_ret.toUtf8();
        libqt_string errorString_str;
        errorString_str.len = errorString_b.length();
        errorString_str.data = static_cast<char*>(malloc((errorString_str.len + 1) * sizeof(char)));
        memcpy(errorString_str.data, errorString_b.data(), errorString_str.len);
        errorString_str.data[errorString_str.len] = '\0';
        libqt_string sigval2 = errorString_str;
        slotFunc(self, sigval1, sigval2);
    });
}

void QCameraControl_CaptureModeChanged(QCameraControl* self, int mode) {
    self->captureModeChanged(static_cast<QCamera::CaptureModes>(mode));
}

void QCameraControl_Connect_CaptureModeChanged(QCameraControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraControl*, int) = reinterpret_cast<void (*)(QCameraControl*, int)>(slot);
    QCameraControl::connect(self, &QCameraControl::captureModeChanged, [self, slotFunc](QCamera::CaptureModes mode) {
        int sigval1 = static_cast<int>(mode);
        slotFunc(self, sigval1);
    });
}

libqt_string QCameraControl_Tr2(const char* s, const char* c) {
    QString _ret = QCameraControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraControl_Event(QCameraControl* self, QEvent* event) {
    return self->event(event);
}

bool QCameraControl_EventFilter(QCameraControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QCameraControl_Delete(QCameraControl* self) {
    delete self;
}
