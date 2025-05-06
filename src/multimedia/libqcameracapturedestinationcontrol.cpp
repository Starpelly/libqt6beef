#include <QByteArray>
#include <QCameraCaptureDestinationControl>
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
#include <qcameracapturedestinationcontrol.h>
#include "libqcameracapturedestinationcontrol.h"
#include "libqcameracapturedestinationcontrol.hxx"

QMetaObject* QCameraCaptureDestinationControl_MetaObject(const QCameraCaptureDestinationControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraCaptureDestinationControl_Metacast(QCameraCaptureDestinationControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraCaptureDestinationControl_Metacall(QCameraCaptureDestinationControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraCaptureDestinationControl_Tr(const char* s) {
    QString _ret = QCameraCaptureDestinationControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraCaptureDestinationControl_TrUtf8(const char* s) {
    QString _ret = QCameraCaptureDestinationControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraCaptureDestinationControl_IsCaptureDestinationSupported(const QCameraCaptureDestinationControl* self, int destination) {
    return self->isCaptureDestinationSupported(static_cast<QCameraImageCapture::CaptureDestinations>(destination));
}

int QCameraCaptureDestinationControl_CaptureDestination(const QCameraCaptureDestinationControl* self) {
    return static_cast<int>(self->captureDestination());
}

void QCameraCaptureDestinationControl_SetCaptureDestination(QCameraCaptureDestinationControl* self, int destination) {
    self->setCaptureDestination(static_cast<QCameraImageCapture::CaptureDestinations>(destination));
}

void QCameraCaptureDestinationControl_CaptureDestinationChanged(QCameraCaptureDestinationControl* self, int destination) {
    self->captureDestinationChanged(static_cast<QCameraImageCapture::CaptureDestinations>(destination));
}

void QCameraCaptureDestinationControl_Connect_CaptureDestinationChanged(QCameraCaptureDestinationControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraCaptureDestinationControl*, int) = reinterpret_cast<void (*)(QCameraCaptureDestinationControl*, int)>(slot);
    QCameraCaptureDestinationControl::connect(self, &QCameraCaptureDestinationControl::captureDestinationChanged, [self, slotFunc](QCameraImageCapture::CaptureDestinations destination) {
        int sigval1 = static_cast<int>(destination);
        slotFunc(self, sigval1);
    });
}

libqt_string QCameraCaptureDestinationControl_Tr2(const char* s, const char* c) {
    QString _ret = QCameraCaptureDestinationControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraCaptureDestinationControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraCaptureDestinationControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraCaptureDestinationControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraCaptureDestinationControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraCaptureDestinationControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraCaptureDestinationControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraCaptureDestinationControl_Event(QCameraCaptureDestinationControl* self, QEvent* event) {
    return self->event(event);
}

bool QCameraCaptureDestinationControl_EventFilter(QCameraCaptureDestinationControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QCameraCaptureDestinationControl_Delete(QCameraCaptureDestinationControl* self) {
    delete self;
}
