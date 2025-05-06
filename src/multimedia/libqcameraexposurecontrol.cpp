#include <QByteArray>
#include <QCameraExposureControl>
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
#include <qcameraexposurecontrol.h>
#include "libqcameraexposurecontrol.h"
#include "libqcameraexposurecontrol.hxx"

QMetaObject* QCameraExposureControl_MetaObject(const QCameraExposureControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraExposureControl_Metacast(QCameraExposureControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraExposureControl_Metacall(QCameraExposureControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraExposureControl_Tr(const char* s) {
    QString _ret = QCameraExposureControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraExposureControl_TrUtf8(const char* s) {
    QString _ret = QCameraExposureControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraExposureControl_IsParameterSupported(const QCameraExposureControl* self, int parameter) {
    return self->isParameterSupported(static_cast<QCameraExposureControl::ExposureParameter>(parameter));
}

QVariant* QCameraExposureControl_RequestedValue(const QCameraExposureControl* self, int parameter) {
    return new QVariant(self->requestedValue(static_cast<QCameraExposureControl::ExposureParameter>(parameter)));
}

QVariant* QCameraExposureControl_ActualValue(const QCameraExposureControl* self, int parameter) {
    return new QVariant(self->actualValue(static_cast<QCameraExposureControl::ExposureParameter>(parameter)));
}

bool QCameraExposureControl_SetValue(QCameraExposureControl* self, int parameter, QVariant* value) {
    return self->setValue(static_cast<QCameraExposureControl::ExposureParameter>(parameter), *value);
}

void QCameraExposureControl_RequestedValueChanged(QCameraExposureControl* self, int parameter) {
    self->requestedValueChanged(static_cast<int>(parameter));
}

void QCameraExposureControl_Connect_RequestedValueChanged(QCameraExposureControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraExposureControl*, int) = reinterpret_cast<void (*)(QCameraExposureControl*, int)>(slot);
    QCameraExposureControl::connect(self, &QCameraExposureControl::requestedValueChanged, [self, slotFunc](int parameter) {
        int sigval1 = parameter;
        slotFunc(self, sigval1);
    });
}

void QCameraExposureControl_ActualValueChanged(QCameraExposureControl* self, int parameter) {
    self->actualValueChanged(static_cast<int>(parameter));
}

void QCameraExposureControl_Connect_ActualValueChanged(QCameraExposureControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraExposureControl*, int) = reinterpret_cast<void (*)(QCameraExposureControl*, int)>(slot);
    QCameraExposureControl::connect(self, &QCameraExposureControl::actualValueChanged, [self, slotFunc](int parameter) {
        int sigval1 = parameter;
        slotFunc(self, sigval1);
    });
}

void QCameraExposureControl_ParameterRangeChanged(QCameraExposureControl* self, int parameter) {
    self->parameterRangeChanged(static_cast<int>(parameter));
}

void QCameraExposureControl_Connect_ParameterRangeChanged(QCameraExposureControl* self, intptr_t slot) {
    void (*slotFunc)(QCameraExposureControl*, int) = reinterpret_cast<void (*)(QCameraExposureControl*, int)>(slot);
    QCameraExposureControl::connect(self, &QCameraExposureControl::parameterRangeChanged, [self, slotFunc](int parameter) {
        int sigval1 = parameter;
        slotFunc(self, sigval1);
    });
}

libqt_string QCameraExposureControl_Tr2(const char* s, const char* c) {
    QString _ret = QCameraExposureControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraExposureControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraExposureControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraExposureControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraExposureControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraExposureControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraExposureControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraExposureControl_Event(QCameraExposureControl* self, QEvent* event) {
    return self->event(event);
}

bool QCameraExposureControl_EventFilter(QCameraExposureControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QCameraExposureControl_Delete(QCameraExposureControl* self) {
    delete self;
}
