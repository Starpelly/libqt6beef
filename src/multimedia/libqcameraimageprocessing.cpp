#include <QByteArray>
#include <QCameraImageProcessing>
#include <QChildEvent>
#include <QEvent>
#include <QList>
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
#include <qcameraimageprocessing.h>
#include "libqcameraimageprocessing.h"
#include "libqcameraimageprocessing.hxx"

QMetaObject* QCameraImageProcessing_MetaObject(const QCameraImageProcessing* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraImageProcessing_Metacast(QCameraImageProcessing* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraImageProcessing_Metacall(QCameraImageProcessing* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraImageProcessing_Tr(const char* s) {
    QString _ret = QCameraImageProcessing::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraImageProcessing_TrUtf8(const char* s) {
    QString _ret = QCameraImageProcessing::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraImageProcessing_IsAvailable(const QCameraImageProcessing* self) {
    return self->isAvailable();
}

int QCameraImageProcessing_WhiteBalanceMode(const QCameraImageProcessing* self) {
    return static_cast<int>(self->whiteBalanceMode());
}

void QCameraImageProcessing_SetWhiteBalanceMode(QCameraImageProcessing* self, int mode) {
    self->setWhiteBalanceMode(static_cast<QCameraImageProcessing::WhiteBalanceMode>(mode));
}

bool QCameraImageProcessing_IsWhiteBalanceModeSupported(const QCameraImageProcessing* self, int mode) {
    return self->isWhiteBalanceModeSupported(static_cast<QCameraImageProcessing::WhiteBalanceMode>(mode));
}

double QCameraImageProcessing_ManualWhiteBalance(const QCameraImageProcessing* self) {
    return static_cast<double>(self->manualWhiteBalance());
}

void QCameraImageProcessing_SetManualWhiteBalance(QCameraImageProcessing* self, double colorTemperature) {
    self->setManualWhiteBalance(static_cast<qreal>(colorTemperature));
}

double QCameraImageProcessing_Brightness(const QCameraImageProcessing* self) {
    return static_cast<double>(self->brightness());
}

void QCameraImageProcessing_SetBrightness(QCameraImageProcessing* self, double value) {
    self->setBrightness(static_cast<qreal>(value));
}

double QCameraImageProcessing_Contrast(const QCameraImageProcessing* self) {
    return static_cast<double>(self->contrast());
}

void QCameraImageProcessing_SetContrast(QCameraImageProcessing* self, double value) {
    self->setContrast(static_cast<qreal>(value));
}

double QCameraImageProcessing_Saturation(const QCameraImageProcessing* self) {
    return static_cast<double>(self->saturation());
}

void QCameraImageProcessing_SetSaturation(QCameraImageProcessing* self, double value) {
    self->setSaturation(static_cast<qreal>(value));
}

double QCameraImageProcessing_SharpeningLevel(const QCameraImageProcessing* self) {
    return static_cast<double>(self->sharpeningLevel());
}

void QCameraImageProcessing_SetSharpeningLevel(QCameraImageProcessing* self, double value) {
    self->setSharpeningLevel(static_cast<qreal>(value));
}

double QCameraImageProcessing_DenoisingLevel(const QCameraImageProcessing* self) {
    return static_cast<double>(self->denoisingLevel());
}

void QCameraImageProcessing_SetDenoisingLevel(QCameraImageProcessing* self, double value) {
    self->setDenoisingLevel(static_cast<qreal>(value));
}

int QCameraImageProcessing_ColorFilter(const QCameraImageProcessing* self) {
    return static_cast<int>(self->colorFilter());
}

void QCameraImageProcessing_SetColorFilter(QCameraImageProcessing* self, int filter) {
    self->setColorFilter(static_cast<QCameraImageProcessing::ColorFilter>(filter));
}

bool QCameraImageProcessing_IsColorFilterSupported(const QCameraImageProcessing* self, int filter) {
    return self->isColorFilterSupported(static_cast<QCameraImageProcessing::ColorFilter>(filter));
}

libqt_string QCameraImageProcessing_Tr2(const char* s, const char* c) {
    QString _ret = QCameraImageProcessing::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraImageProcessing_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraImageProcessing::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraImageProcessing_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraImageProcessing::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraImageProcessing_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraImageProcessing::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraImageProcessing_Event(QCameraImageProcessing* self, QEvent* event) {
    return self->event(event);
}

bool QCameraImageProcessing_EventFilter(QCameraImageProcessing* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}
