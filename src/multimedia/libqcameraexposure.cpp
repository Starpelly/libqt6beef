#include <QByteArray>
#include <QCameraExposure>
#include <QChildEvent>
#include <QEvent>
#include <QList>
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
#include <qcameraexposure.h>
#include "libqcameraexposure.h"
#include "libqcameraexposure.hxx"

QMetaObject* QCameraExposure_MetaObject(const QCameraExposure* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraExposure_Metacast(QCameraExposure* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraExposure_Metacall(QCameraExposure* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraExposure_Tr(const char* s) {
    QString _ret = QCameraExposure::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraExposure_TrUtf8(const char* s) {
    QString _ret = QCameraExposure::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraExposure_IsAvailable(const QCameraExposure* self) {
    return self->isAvailable();
}

int QCameraExposure_FlashMode(const QCameraExposure* self) {
    return static_cast<int>(self->flashMode());
}

bool QCameraExposure_IsFlashModeSupported(const QCameraExposure* self, int mode) {
    return self->isFlashModeSupported(static_cast<QCameraExposure::FlashModes>(mode));
}

bool QCameraExposure_IsFlashReady(const QCameraExposure* self) {
    return self->isFlashReady();
}

int QCameraExposure_ExposureMode(const QCameraExposure* self) {
    return static_cast<int>(self->exposureMode());
}

bool QCameraExposure_IsExposureModeSupported(const QCameraExposure* self, int mode) {
    return self->isExposureModeSupported(static_cast<QCameraExposure::ExposureMode>(mode));
}

double QCameraExposure_ExposureCompensation(const QCameraExposure* self) {
    return static_cast<double>(self->exposureCompensation());
}

int QCameraExposure_MeteringMode(const QCameraExposure* self) {
    return static_cast<int>(self->meteringMode());
}

bool QCameraExposure_IsMeteringModeSupported(const QCameraExposure* self, int mode) {
    return self->isMeteringModeSupported(static_cast<QCameraExposure::MeteringMode>(mode));
}

QPointF* QCameraExposure_SpotMeteringPoint(const QCameraExposure* self) {
    return new QPointF(self->spotMeteringPoint());
}

void QCameraExposure_SetSpotMeteringPoint(QCameraExposure* self, QPointF* point) {
    self->setSpotMeteringPoint(*point);
}

int QCameraExposure_IsoSensitivity(const QCameraExposure* self) {
    return self->isoSensitivity();
}

double QCameraExposure_Aperture(const QCameraExposure* self) {
    return static_cast<double>(self->aperture());
}

double QCameraExposure_ShutterSpeed(const QCameraExposure* self) {
    return static_cast<double>(self->shutterSpeed());
}

int QCameraExposure_RequestedIsoSensitivity(const QCameraExposure* self) {
    return self->requestedIsoSensitivity();
}

double QCameraExposure_RequestedAperture(const QCameraExposure* self) {
    return static_cast<double>(self->requestedAperture());
}

double QCameraExposure_RequestedShutterSpeed(const QCameraExposure* self) {
    return static_cast<double>(self->requestedShutterSpeed());
}

libqt_list /* of int */ QCameraExposure_SupportedIsoSensitivities(const QCameraExposure* self) {
    QList<int> _ret = self->supportedIsoSensitivities();
    // Convert QList<> from C++ memory to manually-managed C memory
    int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of double */ QCameraExposure_SupportedApertures(const QCameraExposure* self) {
    QList<qreal> _ret = self->supportedApertures();
    // Convert QList<> from C++ memory to manually-managed C memory
    double* _arr = static_cast<double*>(malloc(sizeof(double) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of double */ QCameraExposure_SupportedShutterSpeeds(const QCameraExposure* self) {
    QList<qreal> _ret = self->supportedShutterSpeeds();
    // Convert QList<> from C++ memory to manually-managed C memory
    double* _arr = static_cast<double*>(malloc(sizeof(double) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

void QCameraExposure_SetFlashMode(QCameraExposure* self, int mode) {
    self->setFlashMode(static_cast<QCameraExposure::FlashModes>(mode));
}

void QCameraExposure_SetExposureMode(QCameraExposure* self, int mode) {
    self->setExposureMode(static_cast<QCameraExposure::ExposureMode>(mode));
}

void QCameraExposure_SetMeteringMode(QCameraExposure* self, int mode) {
    self->setMeteringMode(static_cast<QCameraExposure::MeteringMode>(mode));
}

void QCameraExposure_SetExposureCompensation(QCameraExposure* self, double ev) {
    self->setExposureCompensation(static_cast<qreal>(ev));
}

void QCameraExposure_SetManualIsoSensitivity(QCameraExposure* self, int iso) {
    self->setManualIsoSensitivity(static_cast<int>(iso));
}

void QCameraExposure_SetAutoIsoSensitivity(QCameraExposure* self) {
    self->setAutoIsoSensitivity();
}

void QCameraExposure_SetManualAperture(QCameraExposure* self, double aperture) {
    self->setManualAperture(static_cast<qreal>(aperture));
}

void QCameraExposure_SetAutoAperture(QCameraExposure* self) {
    self->setAutoAperture();
}

void QCameraExposure_SetManualShutterSpeed(QCameraExposure* self, double seconds) {
    self->setManualShutterSpeed(static_cast<qreal>(seconds));
}

void QCameraExposure_SetAutoShutterSpeed(QCameraExposure* self) {
    self->setAutoShutterSpeed();
}

void QCameraExposure_FlashReady(QCameraExposure* self, bool param1) {
    self->flashReady(param1);
}

void QCameraExposure_Connect_FlashReady(QCameraExposure* self, intptr_t slot) {
    void (*slotFunc)(QCameraExposure*, bool) = reinterpret_cast<void (*)(QCameraExposure*, bool)>(slot);
    QCameraExposure::connect(self, &QCameraExposure::flashReady, [self, slotFunc](bool param1) {
        bool sigval1 = param1;
        slotFunc(self, sigval1);
    });
}

void QCameraExposure_ApertureChanged(QCameraExposure* self, double param1) {
    self->apertureChanged(static_cast<double>(param1));
}

void QCameraExposure_Connect_ApertureChanged(QCameraExposure* self, intptr_t slot) {
    void (*slotFunc)(QCameraExposure*, double) = reinterpret_cast<void (*)(QCameraExposure*, double)>(slot);
    QCameraExposure::connect(self, &QCameraExposure::apertureChanged, [self, slotFunc](double param1) {
        double sigval1 = param1;
        slotFunc(self, sigval1);
    });
}

void QCameraExposure_ApertureRangeChanged(QCameraExposure* self) {
    self->apertureRangeChanged();
}

void QCameraExposure_Connect_ApertureRangeChanged(QCameraExposure* self, intptr_t slot) {
    void (*slotFunc)(QCameraExposure*) = reinterpret_cast<void (*)(QCameraExposure*)>(slot);
    QCameraExposure::connect(self, &QCameraExposure::apertureRangeChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QCameraExposure_ShutterSpeedChanged(QCameraExposure* self, double speed) {
    self->shutterSpeedChanged(static_cast<qreal>(speed));
}

void QCameraExposure_Connect_ShutterSpeedChanged(QCameraExposure* self, intptr_t slot) {
    void (*slotFunc)(QCameraExposure*, double) = reinterpret_cast<void (*)(QCameraExposure*, double)>(slot);
    QCameraExposure::connect(self, &QCameraExposure::shutterSpeedChanged, [self, slotFunc](qreal speed) {
        double sigval1 = static_cast<double>(speed);
        slotFunc(self, sigval1);
    });
}

void QCameraExposure_ShutterSpeedRangeChanged(QCameraExposure* self) {
    self->shutterSpeedRangeChanged();
}

void QCameraExposure_Connect_ShutterSpeedRangeChanged(QCameraExposure* self, intptr_t slot) {
    void (*slotFunc)(QCameraExposure*) = reinterpret_cast<void (*)(QCameraExposure*)>(slot);
    QCameraExposure::connect(self, &QCameraExposure::shutterSpeedRangeChanged, [self, slotFunc]() {
        slotFunc(self);
    });
}

void QCameraExposure_IsoSensitivityChanged(QCameraExposure* self, int param1) {
    self->isoSensitivityChanged(static_cast<int>(param1));
}

void QCameraExposure_Connect_IsoSensitivityChanged(QCameraExposure* self, intptr_t slot) {
    void (*slotFunc)(QCameraExposure*, int) = reinterpret_cast<void (*)(QCameraExposure*, int)>(slot);
    QCameraExposure::connect(self, &QCameraExposure::isoSensitivityChanged, [self, slotFunc](int param1) {
        int sigval1 = param1;
        slotFunc(self, sigval1);
    });
}

void QCameraExposure_ExposureCompensationChanged(QCameraExposure* self, double param1) {
    self->exposureCompensationChanged(static_cast<double>(param1));
}

void QCameraExposure_Connect_ExposureCompensationChanged(QCameraExposure* self, intptr_t slot) {
    void (*slotFunc)(QCameraExposure*, double) = reinterpret_cast<void (*)(QCameraExposure*, double)>(slot);
    QCameraExposure::connect(self, &QCameraExposure::exposureCompensationChanged, [self, slotFunc](double param1) {
        double sigval1 = param1;
        slotFunc(self, sigval1);
    });
}

libqt_string QCameraExposure_Tr2(const char* s, const char* c) {
    QString _ret = QCameraExposure::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraExposure_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraExposure::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraExposure_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraExposure::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraExposure_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraExposure::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of int */ QCameraExposure_SupportedIsoSensitivities1(const QCameraExposure* self, bool* continuous) {
    QList<int> _ret = self->supportedIsoSensitivities(continuous);
    // Convert QList<> from C++ memory to manually-managed C memory
    int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of double */ QCameraExposure_SupportedApertures1(const QCameraExposure* self, bool* continuous) {
    QList<qreal> _ret = self->supportedApertures(continuous);
    // Convert QList<> from C++ memory to manually-managed C memory
    double* _arr = static_cast<double*>(malloc(sizeof(double) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_list /* of double */ QCameraExposure_SupportedShutterSpeeds1(const QCameraExposure* self, bool* continuous) {
    QList<qreal> _ret = self->supportedShutterSpeeds(continuous);
    // Convert QList<> from C++ memory to manually-managed C memory
    double* _arr = static_cast<double*>(malloc(sizeof(double) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

bool QCameraExposure_Event(QCameraExposure* self, QEvent* event) {
    return self->event(event);
}

bool QCameraExposure_EventFilter(QCameraExposure* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}
