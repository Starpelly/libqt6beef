#include <QByteArray>
#include <QCameraImageProcessingControl>
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
#include <qcameraimageprocessingcontrol.h>
#include "libqcameraimageprocessingcontrol.h"
#include "libqcameraimageprocessingcontrol.hxx"

QMetaObject* QCameraImageProcessingControl_MetaObject(const QCameraImageProcessingControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraImageProcessingControl_Metacast(QCameraImageProcessingControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraImageProcessingControl_Metacall(QCameraImageProcessingControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraImageProcessingControl_Tr(const char* s) {
    QString _ret = QCameraImageProcessingControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraImageProcessingControl_TrUtf8(const char* s) {
    QString _ret = QCameraImageProcessingControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraImageProcessingControl_IsParameterSupported(const QCameraImageProcessingControl* self, int param1) {
    return self->isParameterSupported(static_cast<QCameraImageProcessingControl::ProcessingParameter>(param1));
}

bool QCameraImageProcessingControl_IsParameterValueSupported(const QCameraImageProcessingControl* self, int parameter, QVariant* value) {
    return self->isParameterValueSupported(static_cast<QCameraImageProcessingControl::ProcessingParameter>(parameter), *value);
}

QVariant* QCameraImageProcessingControl_Parameter(const QCameraImageProcessingControl* self, int parameter) {
    return new QVariant(self->parameter(static_cast<QCameraImageProcessingControl::ProcessingParameter>(parameter)));
}

void QCameraImageProcessingControl_SetParameter(QCameraImageProcessingControl* self, int parameter, QVariant* value) {
    self->setParameter(static_cast<QCameraImageProcessingControl::ProcessingParameter>(parameter), *value);
}

libqt_string QCameraImageProcessingControl_Tr2(const char* s, const char* c) {
    QString _ret = QCameraImageProcessingControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraImageProcessingControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraImageProcessingControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraImageProcessingControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraImageProcessingControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraImageProcessingControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraImageProcessingControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraImageProcessingControl_Event(QCameraImageProcessingControl* self, QEvent* event) {
    return self->event(event);
}

bool QCameraImageProcessingControl_EventFilter(QCameraImageProcessingControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QCameraImageProcessingControl_Delete(QCameraImageProcessingControl* self) {
    delete self;
}
