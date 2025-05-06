#include <QByteArray>
#include <QCameraFeedbackControl>
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
#include <qcamerafeedbackcontrol.h>
#include "libqcamerafeedbackcontrol.h"
#include "libqcamerafeedbackcontrol.hxx"

QMetaObject* QCameraFeedbackControl_MetaObject(const QCameraFeedbackControl* self) {
    return (QMetaObject*)self->metaObject();
}

void* QCameraFeedbackControl_Metacast(QCameraFeedbackControl* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QCameraFeedbackControl_Metacall(QCameraFeedbackControl* self, int param1, int param2, void** param3) {
    return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

libqt_string QCameraFeedbackControl_Tr(const char* s) {
    QString _ret = QCameraFeedbackControl::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraFeedbackControl_TrUtf8(const char* s) {
    QString _ret = QCameraFeedbackControl::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraFeedbackControl_IsEventFeedbackLocked(const QCameraFeedbackControl* self, int param1) {
    return self->isEventFeedbackLocked(static_cast<QCameraFeedbackControl::EventType>(param1));
}

bool QCameraFeedbackControl_IsEventFeedbackEnabled(const QCameraFeedbackControl* self, int param1) {
    return self->isEventFeedbackEnabled(static_cast<QCameraFeedbackControl::EventType>(param1));
}

bool QCameraFeedbackControl_SetEventFeedbackEnabled(QCameraFeedbackControl* self, int param1, bool param2) {
    return self->setEventFeedbackEnabled(static_cast<QCameraFeedbackControl::EventType>(param1), param2);
}

void QCameraFeedbackControl_ResetEventFeedback(QCameraFeedbackControl* self, int param1) {
    self->resetEventFeedback(static_cast<QCameraFeedbackControl::EventType>(param1));
}

bool QCameraFeedbackControl_SetEventFeedbackSound(QCameraFeedbackControl* self, int param1, libqt_string filePath) {
    QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
    return self->setEventFeedbackSound(static_cast<QCameraFeedbackControl::EventType>(param1), filePath_QString);
}

libqt_string QCameraFeedbackControl_Tr2(const char* s, const char* c) {
    QString _ret = QCameraFeedbackControl::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraFeedbackControl_Tr3(const char* s, const char* c, int n) {
    QString _ret = QCameraFeedbackControl::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraFeedbackControl_TrUtf82(const char* s, const char* c) {
    QString _ret = QCameraFeedbackControl::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QCameraFeedbackControl_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QCameraFeedbackControl::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QCameraFeedbackControl_Event(QCameraFeedbackControl* self, QEvent* event) {
    return self->event(event);
}

bool QCameraFeedbackControl_EventFilter(QCameraFeedbackControl* self, QObject* watched, QEvent* event) {
    return self->eventFilter(watched, event);
}

void QCameraFeedbackControl_Delete(QCameraFeedbackControl* self) {
    delete self;
}
