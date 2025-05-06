#include <QByteArray>
#include <QCameraFocus>
#include <QCameraFocusZone>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QObjectUserData>
#include <QPointF>
#include <QRectF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qcamerafocus.h>
#include "libqcamerafocus.h"
#include "libqcamerafocus.hxx"

QCameraFocusZone* QCameraFocusZone_new() {
    return new QCameraFocusZone();
}

QCameraFocusZone* QCameraFocusZone_new2(QRectF* area) {
    return new QCameraFocusZone(*area);
}

QCameraFocusZone* QCameraFocusZone_new3(QCameraFocusZone* other) {
    return new QCameraFocusZone(*other);
}

QCameraFocusZone* QCameraFocusZone_new4(QRectF* area, int status) {
    return new QCameraFocusZone(*area, static_cast<QCameraFocusZone::FocusZoneStatus>(status));
}

void QCameraFocusZone_OperatorAssign(QCameraFocusZone* self, QCameraFocusZone* other) {
    self->operator=(*other);
}

bool QCameraFocusZone_OperatorEqual(const QCameraFocusZone* self, QCameraFocusZone* other) {
    return (*self == *other);
}

bool QCameraFocusZone_OperatorNotEqual(const QCameraFocusZone* self, QCameraFocusZone* other) {
    return (*self != *other);
}

bool QCameraFocusZone_IsValid(const QCameraFocusZone* self) {
    return self->isValid();
}

QRectF* QCameraFocusZone_Area(const QCameraFocusZone* self) {
    return new QRectF(self->area());
}

int QCameraFocusZone_Status(const QCameraFocusZone* self) {
    return static_cast<int>(self->status());
}

void QCameraFocusZone_SetStatus(QCameraFocusZone* self, int status) {
    self->setStatus(static_cast<QCameraFocusZone::FocusZoneStatus>(status));
}

void QCameraFocusZone_Delete(QCameraFocusZone* self) {
    delete self;
}

QMetaObject* QCameraFocus_MetaObject(const QCameraFocus* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraFocus_Metacast(QCameraFocus* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraFocus_Metacall(QCameraFocus* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraFocus_Tr(const char* s) {
    QString _ret = QCameraFocus::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraFocus_TrUtf8(const char* s) {
    QString _ret = QCameraFocus::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraFocus_IsAvailable(const QCameraFocus* self) {
    return self->isAvailable();
}

int QCameraFocus_FocusMode(const QCameraFocus* self) {
    return static_cast<int>(self->focusMode());
}

void QCameraFocus_SetFocusMode(QCameraFocus* self, int mode) {
    self->setFocusMode(static_cast<QCameraFocus::FocusModes>(mode));
}

bool QCameraFocus_IsFocusModeSupported(const QCameraFocus* self, int mode) {
    return self->isFocusModeSupported(static_cast<QCameraFocus::FocusModes>(mode));
}

int QCameraFocus_FocusPointMode(const QCameraFocus* self) {
    return static_cast<int>(self->focusPointMode());
}

void QCameraFocus_SetFocusPointMode(QCameraFocus* self, int mode) {
    self->setFocusPointMode(static_cast<QCameraFocus::FocusPointMode>(mode));
}

bool QCameraFocus_IsFocusPointModeSupported(const QCameraFocus* self, int param1) {
    return self->isFocusPointModeSupported(static_cast<QCameraFocus::FocusPointMode>(param1));
}

QPointF* QCameraFocus_CustomFocusPoint(const QCameraFocus* self) {
    return new QPointF(self->customFocusPoint());
}

void QCameraFocus_SetCustomFocusPoint(QCameraFocus* self, QPointF* point) {
    self->setCustomFocusPoint(*point);
}

libqt_list /* of QCameraFocusZone* */ QCameraFocus_FocusZones(const QCameraFocus* self) {
    QCameraFocusZoneList _ret = self->focusZones();
    // Convert QList<> from C++ memory to manually-managed C memory
    QCameraFocusZone** _arr = static_cast<QCameraFocusZone**>(malloc(sizeof(QCameraFocusZone*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QCameraFocusZone(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

double QCameraFocus_MaximumOpticalZoom(const QCameraFocus* self) {
    return static_cast<double>(self->maximumOpticalZoom());
}

double QCameraFocus_MaximumDigitalZoom(const QCameraFocus* self) {
    return static_cast<double>(self->maximumDigitalZoom());
}

double QCameraFocus_OpticalZoom(const QCameraFocus* self) {
    return static_cast<double>(self->opticalZoom());
}

double QCameraFocus_DigitalZoom(const QCameraFocus* self) {
    return static_cast<double>(self->digitalZoom());
}

void QCameraFocus_ZoomTo(QCameraFocus* self, double opticalZoom, double digitalZoom) {
    self->zoomTo(static_cast<qreal>(opticalZoom), static_cast<qreal>(digitalZoom));
}

void QCameraFocus_OpticalZoomChanged(QCameraFocus* self, double param1) {
    self->opticalZoomChanged(static_cast<double>(param1));
}

void QCameraFocus_Connect_OpticalZoomChanged(QCameraFocus* self, intptr_t slot) {
    void (*slotFunc)(QCameraFocus*, double) = reinterpret_cast<void (*)(QCameraFocus*, double)>(slot);
    QCameraFocus::connect(self, &QCameraFocus::opticalZoomChanged, [self, slotFunc](double param1) {
        double sigval1 = param1;
        slotFunc(self, sigval1);
    });
}

void QCameraFocus_DigitalZoomChanged(QCameraFocus* self, double param1) {
    self->digitalZoomChanged(static_cast<double>(param1));
}

void QCameraFocus_Connect_DigitalZoomChanged(QCameraFocus* self, intptr_t slot) {
    void (*slotFunc)(QCameraFocus*, double) = reinterpret_cast<void (*)(QCameraFocus*, double)>(slot);
    QCameraFocus::connect(self, &QCameraFocus::digitalZoomChanged, [self, slotFunc](double param1) {
        double sigval1 = param1;
        slotFunc(self, sigval1);
    });
}

void QCameraFocus_FocusZonesChanged(QCameraFocus* self) {
    self->focusZonesChanged();
}

void QCameraFocus_Connect_FocusZonesChanged(QCameraFocus* self, intptr_t slot) {
    void (*slotFunc)(QCameraFocus*) = reinterpret_cast<void (*)(QCameraFocus*)>(slot);
    QCameraFocus::connect(self, &QCameraFocus::focusZonesChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QCameraFocus_MaximumOpticalZoomChanged(QCameraFocus* self, double param1) {
    self->maximumOpticalZoomChanged(static_cast<double>(param1));
}

void QCameraFocus_Connect_MaximumOpticalZoomChanged(QCameraFocus* self, intptr_t slot) {
    void (*slotFunc)(QCameraFocus*, double) = reinterpret_cast<void (*)(QCameraFocus*, double)>(slot);
    QCameraFocus::connect(self, &QCameraFocus::maximumOpticalZoomChanged, [self, slotFunc](double param1) {
        double sigval1 = param1;
        slotFunc(self, sigval1);
    });
}

void QCameraFocus_MaximumDigitalZoomChanged(QCameraFocus* self, double param1) {
    self->maximumDigitalZoomChanged(static_cast<double>(param1));
}

void QCameraFocus_Connect_MaximumDigitalZoomChanged(QCameraFocus* self, intptr_t slot) {
    void (*slotFunc)(QCameraFocus*, double) = reinterpret_cast<void (*)(QCameraFocus*, double)>(slot);
    QCameraFocus::connect(self, &QCameraFocus::maximumDigitalZoomChanged, [self, slotFunc](double param1) {
        double sigval1 = param1;
        slotFunc(self, sigval1);
    });
}

libqt_string QCameraFocus_Tr2(const char* s, const char* c) {
    QString _ret = QCameraFocus::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraFocus_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraFocus::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraFocus_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraFocus::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraFocus_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraFocus::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraFocus_Event(QCameraFocus* self, QEvent* event) {
    return self->event(event);
}

bool QCameraFocus_EventFilter(QCameraFocus* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}
