#include <QByteArray>
#include <QCameraZoomControl>
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
#include <qcamerazoomcontrol.h>
#include "libqcamerazoomcontrol.h"
#include "libqcamerazoomcontrol.hxx"

QMetaObject* QCameraZoomControl_MetaObject(const QCameraZoomControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraZoomControl_Metacast(QCameraZoomControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraZoomControl_Metacall(QCameraZoomControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraZoomControl_Tr(const char* s) {
    QString _ret = QCameraZoomControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraZoomControl_TrUtf8(const char* s) {
    QString _ret = QCameraZoomControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

double QCameraZoomControl_MaximumOpticalZoom(const QCameraZoomControl* self) {
    return static_cast<double>(self->maximumOpticalZoom());
}

double QCameraZoomControl_MaximumDigitalZoom(const QCameraZoomControl* self) {
    return static_cast<double>(self->maximumDigitalZoom());
}

double QCameraZoomControl_RequestedOpticalZoom(const QCameraZoomControl* self) {
    return static_cast<double>(self->requestedOpticalZoom());
}

double QCameraZoomControl_RequestedDigitalZoom(const QCameraZoomControl* self) {
    return static_cast<double>(self->requestedDigitalZoom());
}

double QCameraZoomControl_CurrentOpticalZoom(const QCameraZoomControl* self) {
    return static_cast<double>(self->currentOpticalZoom());
}

double QCameraZoomControl_CurrentDigitalZoom(const QCameraZoomControl* self) {
    return static_cast<double>(self->currentDigitalZoom());
}

void QCameraZoomControl_ZoomTo(QCameraZoomControl* self, double optical, double digital) {
    self->zoomTo(static_cast<qreal>(optical), static_cast<qreal>(digital));
}

void QCameraZoomControl_MaximumOpticalZoomChanged(QCameraZoomControl* self, double param1) {
    self->maximumOpticalZoomChanged(static_cast<double>(param1));
}

void QCameraZoomControl_Connect_MaximumOpticalZoomChanged(QCameraZoomControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraZoomControl*, double) = reinterpret_cast<void (*)(QCameraZoomControl*, double)>(slot);
    QCameraZoomControl::connect(self, &QCameraZoomControl::maximumOpticalZoomChanged, [self, slotFunc](double param1) {
        double sigval1 = param1;
        slotFunc(self, sigval1);
    });
}

void QCameraZoomControl_MaximumDigitalZoomChanged(QCameraZoomControl* self, double param1) {
    self->maximumDigitalZoomChanged(static_cast<double>(param1));
}

void QCameraZoomControl_Connect_MaximumDigitalZoomChanged(QCameraZoomControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraZoomControl*, double) = reinterpret_cast<void (*)(QCameraZoomControl*, double)>(slot);
    QCameraZoomControl::connect(self, &QCameraZoomControl::maximumDigitalZoomChanged, [self, slotFunc](double param1) {
        double sigval1 = param1;
        slotFunc(self, sigval1);
    });
}

void QCameraZoomControl_RequestedOpticalZoomChanged(QCameraZoomControl* self, double opticalZoom) {
    self->requestedOpticalZoomChanged(static_cast<qreal>(opticalZoom));
}

void QCameraZoomControl_Connect_RequestedOpticalZoomChanged(QCameraZoomControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraZoomControl*, double) = reinterpret_cast<void (*)(QCameraZoomControl*, double)>(slot);
    QCameraZoomControl::connect(self, &QCameraZoomControl::requestedOpticalZoomChanged, [self, slotFunc](qreal opticalZoom) {
        double sigval1 = static_cast<double>(opticalZoom);
        slotFunc(self, sigval1);
    });
}

void QCameraZoomControl_RequestedDigitalZoomChanged(QCameraZoomControl* self, double digitalZoom) {
    self->requestedDigitalZoomChanged(static_cast<qreal>(digitalZoom));
}

void QCameraZoomControl_Connect_RequestedDigitalZoomChanged(QCameraZoomControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraZoomControl*, double) = reinterpret_cast<void (*)(QCameraZoomControl*, double)>(slot);
    QCameraZoomControl::connect(self, &QCameraZoomControl::requestedDigitalZoomChanged, [self, slotFunc](qreal digitalZoom) {
        double sigval1 = static_cast<double>(digitalZoom);
        slotFunc(self, sigval1);
    });
}

void QCameraZoomControl_CurrentOpticalZoomChanged(QCameraZoomControl* self, double opticalZoom) {
    self->currentOpticalZoomChanged(static_cast<qreal>(opticalZoom));
}

void QCameraZoomControl_Connect_CurrentOpticalZoomChanged(QCameraZoomControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraZoomControl*, double) = reinterpret_cast<void (*)(QCameraZoomControl*, double)>(slot);
    QCameraZoomControl::connect(self, &QCameraZoomControl::currentOpticalZoomChanged, [self, slotFunc](qreal opticalZoom) {
        double sigval1 = static_cast<double>(opticalZoom);
        slotFunc(self, sigval1);
    });
}

void QCameraZoomControl_CurrentDigitalZoomChanged(QCameraZoomControl* self, double digitalZoom) {
    self->currentDigitalZoomChanged(static_cast<qreal>(digitalZoom));
}

void QCameraZoomControl_Connect_CurrentDigitalZoomChanged(QCameraZoomControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraZoomControl*, double) = reinterpret_cast<void (*)(QCameraZoomControl*, double)>(slot);
    QCameraZoomControl::connect(self, &QCameraZoomControl::currentDigitalZoomChanged, [self, slotFunc](qreal digitalZoom) {
        double sigval1 = static_cast<double>(digitalZoom);
        slotFunc(self, sigval1);
    });
}

libqt_string QCameraZoomControl_Tr2(const char* s, const char* c) {
    QString _ret = QCameraZoomControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraZoomControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraZoomControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraZoomControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraZoomControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraZoomControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraZoomControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraZoomControl_Event(QCameraZoomControl* self, QEvent* event) {
    return self->event(event);
}

bool QCameraZoomControl_EventFilter(QCameraZoomControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QCameraZoomControl_Delete(QCameraZoomControl* self) {
    delete self;
}
