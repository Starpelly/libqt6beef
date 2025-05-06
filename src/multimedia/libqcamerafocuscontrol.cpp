#include <QByteArray>
#include <QCameraFocusControl>
#include <QCameraFocusZone>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaControl>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QObjectUserData>
#include <QPointF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qcamerafocuscontrol.h>
#include "libqcamerafocuscontrol.h"
#include "libqcamerafocuscontrol.hxx"

QMetaObject* QCameraFocusControl_MetaObject(const QCameraFocusControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraFocusControl_Metacast(QCameraFocusControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraFocusControl_Metacall(QCameraFocusControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraFocusControl_Tr(const char* s) {
    QString _ret = QCameraFocusControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraFocusControl_TrUtf8(const char* s) {
    QString _ret = QCameraFocusControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

int QCameraFocusControl_FocusMode(const QCameraFocusControl* self) {
    return static_cast<int>(self->focusMode());
}

void QCameraFocusControl_SetFocusMode(QCameraFocusControl* self, int mode) {
    self->setFocusMode(static_cast<QCameraFocus::FocusModes>(mode));
}

bool QCameraFocusControl_IsFocusModeSupported(const QCameraFocusControl* self, int mode) {
    return self->isFocusModeSupported(static_cast<QCameraFocus::FocusModes>(mode));
}

int QCameraFocusControl_FocusPointMode(const QCameraFocusControl* self) {
    return static_cast<int>(self->focusPointMode());
}

void QCameraFocusControl_SetFocusPointMode(QCameraFocusControl* self, int mode) {
    self->setFocusPointMode(static_cast<QCameraFocus::FocusPointMode>(mode));
}

bool QCameraFocusControl_IsFocusPointModeSupported(const QCameraFocusControl* self, int mode) {
    return self->isFocusPointModeSupported(static_cast<QCameraFocus::FocusPointMode>(mode));
}

QPointF* QCameraFocusControl_CustomFocusPoint(const QCameraFocusControl* self) {
    return new QPointF(self->customFocusPoint());
}

void QCameraFocusControl_SetCustomFocusPoint(QCameraFocusControl* self, QPointF* point) {
    self->setCustomFocusPoint(*point);
}

libqt_list /* of QCameraFocusZone* */ QCameraFocusControl_FocusZones(const QCameraFocusControl* self) {
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

void QCameraFocusControl_FocusModeChanged(QCameraFocusControl* self, int mode) {
    self->focusModeChanged(static_cast<QCameraFocus::FocusModes>(mode));
}

void QCameraFocusControl_Connect_FocusModeChanged(QCameraFocusControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraFocusControl*, int) = reinterpret_cast<void (*)(QCameraFocusControl*, int)>(slot);
    QCameraFocusControl::connect(self, &QCameraFocusControl::focusModeChanged, [self, slotFunc](QCameraFocus::FocusModes mode) {
        int sigval1 = static_cast<int>(mode);
        slotFunc(self, sigval1);
    });
}

void QCameraFocusControl_FocusPointModeChanged(QCameraFocusControl* self, int mode) {
    self->focusPointModeChanged(static_cast<QCameraFocus::FocusPointMode>(mode));
}

void QCameraFocusControl_Connect_FocusPointModeChanged(QCameraFocusControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraFocusControl*, int) = reinterpret_cast<void (*)(QCameraFocusControl*, int)>(slot);
    QCameraFocusControl::connect(self, &QCameraFocusControl::focusPointModeChanged, [self, slotFunc](QCameraFocus::FocusPointMode mode) {
        int sigval1 = static_cast<int>(mode);
        slotFunc(self, sigval1);
    });
}

void QCameraFocusControl_CustomFocusPointChanged(QCameraFocusControl* self, QPointF* point) {
    self->customFocusPointChanged(*point);
}

void QCameraFocusControl_Connect_CustomFocusPointChanged(QCameraFocusControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraFocusControl*, QPointF*) = reinterpret_cast<void (*)(QCameraFocusControl*, QPointF*)>(slot);
    QCameraFocusControl::connect(self, &QCameraFocusControl::customFocusPointChanged, [self, slotFunc](const QPointF& point) {
        const QPointF& point_ret = point;
        // Cast returned reference into pointer
        QPointF* sigval1 = const_cast<QPointF*>(&point_ret);
        slotFunc(self, sigval1);
    });
}

void QCameraFocusControl_FocusZonesChanged(QCameraFocusControl* self) {
    self->focusZonesChanged();
}

void QCameraFocusControl_Connect_FocusZonesChanged(QCameraFocusControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraFocusControl*) = reinterpret_cast<void (*)(QCameraFocusControl*)>(slot);
    QCameraFocusControl::connect(self, &QCameraFocusControl::focusZonesChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

libqt_string QCameraFocusControl_Tr2(const char* s, const char* c) {
    QString _ret = QCameraFocusControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraFocusControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraFocusControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraFocusControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraFocusControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraFocusControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraFocusControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraFocusControl_Event(QCameraFocusControl* self, QEvent* event) {
    return self->event(event);
}

bool QCameraFocusControl_EventFilter(QCameraFocusControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QCameraFocusControl_Delete(QCameraFocusControl* self) {
    delete self;
}
