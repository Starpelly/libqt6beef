#include <QByteArray>
#include <QCameraViewfinderSettings>
#include <QCameraViewfinderSettingsControl>
#include <QCameraViewfinderSettingsControl2>
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
#include <qcameraviewfindersettingscontrol.h>
#include "libqcameraviewfindersettingscontrol.h"
#include "libqcameraviewfindersettingscontrol.hxx"

QMetaObject* QCameraViewfinderSettingsControl_MetaObject(const QCameraViewfinderSettingsControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraViewfinderSettingsControl_Metacast(QCameraViewfinderSettingsControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraViewfinderSettingsControl_Metacall(QCameraViewfinderSettingsControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraViewfinderSettingsControl_Tr(const char* s) {
    QString _ret = QCameraViewfinderSettingsControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraViewfinderSettingsControl_TrUtf8(const char* s) {
    QString _ret = QCameraViewfinderSettingsControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraViewfinderSettingsControl_IsViewfinderParameterSupported(const QCameraViewfinderSettingsControl* self, int parameter) {
    return self->isViewfinderParameterSupported(static_cast<QCameraViewfinderSettingsControl::ViewfinderParameter>(parameter));
}

QVariant* QCameraViewfinderSettingsControl_ViewfinderParameter(const QCameraViewfinderSettingsControl* self, int parameter) {
    return new QVariant(self->viewfinderParameter(static_cast<QCameraViewfinderSettingsControl::ViewfinderParameter>(parameter)));
}

void QCameraViewfinderSettingsControl_SetViewfinderParameter(QCameraViewfinderSettingsControl* self, int parameter, QVariant* value) {
    self->setViewfinderParameter(static_cast<QCameraViewfinderSettingsControl::ViewfinderParameter>(parameter), *value);
}

libqt_string QCameraViewfinderSettingsControl_Tr2(const char* s, const char* c) {
    QString _ret = QCameraViewfinderSettingsControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraViewfinderSettingsControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraViewfinderSettingsControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraViewfinderSettingsControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraViewfinderSettingsControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraViewfinderSettingsControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraViewfinderSettingsControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraViewfinderSettingsControl_Event(QCameraViewfinderSettingsControl* self, QEvent* event) {
    return self->event(event);
}

bool QCameraViewfinderSettingsControl_EventFilter(QCameraViewfinderSettingsControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QCameraViewfinderSettingsControl_Delete(QCameraViewfinderSettingsControl* self) {
    delete self;
}

QMetaObject* QCameraViewfinderSettingsControl2_MetaObject(const QCameraViewfinderSettingsControl2* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraViewfinderSettingsControl2_Metacast(QCameraViewfinderSettingsControl2* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraViewfinderSettingsControl2_Metacall(QCameraViewfinderSettingsControl2* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraViewfinderSettingsControl2_Tr(const char* s) {
    QString _ret = QCameraViewfinderSettingsControl2::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraViewfinderSettingsControl2_TrUtf8(const char* s) {
    QString _ret = QCameraViewfinderSettingsControl2::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_list /* of QCameraViewfinderSettings* */ QCameraViewfinderSettingsControl2_SupportedViewfinderSettings(const QCameraViewfinderSettingsControl2* self) {
    QList<QCameraViewfinderSettings> _ret = self->supportedViewfinderSettings();
    // Convert QList<> from C++ memory to manually-managed C memory
    QCameraViewfinderSettings** _arr = static_cast<QCameraViewfinderSettings**>(malloc(sizeof(QCameraViewfinderSettings*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = new QCameraViewfinderSettings(_ret[i]);
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

QCameraViewfinderSettings* QCameraViewfinderSettingsControl2_ViewfinderSettings(const QCameraViewfinderSettingsControl2* self) {
    return new QCameraViewfinderSettings(self->viewfinderSettings());
}

void QCameraViewfinderSettingsControl2_SetViewfinderSettings(QCameraViewfinderSettingsControl2* self, QCameraViewfinderSettings* settings) {
    self->setViewfinderSettings(*settings);
}

libqt_string QCameraViewfinderSettingsControl2_Tr2(const char* s, const char* c) {
    QString _ret = QCameraViewfinderSettingsControl2::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraViewfinderSettingsControl2_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraViewfinderSettingsControl2::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraViewfinderSettingsControl2_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraViewfinderSettingsControl2::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraViewfinderSettingsControl2_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraViewfinderSettingsControl2::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraViewfinderSettingsControl2_Event(QCameraViewfinderSettingsControl2* self, QEvent* event) {
    return self->event(event);
}

bool QCameraViewfinderSettingsControl2_EventFilter(QCameraViewfinderSettingsControl2* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QCameraViewfinderSettingsControl2_Delete(QCameraViewfinderSettingsControl2* self) {
    delete self;
}
