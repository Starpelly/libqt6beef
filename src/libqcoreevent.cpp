#include <QByteArray>
#include <QChildEvent>
#include <QDynamicPropertyChangeEvent>
#include <QEvent>
#include <QObject>
#include <QTimerEvent>
#include <qcoreevent.h>
#include "libqcoreevent.h"
#include "libqcoreevent.hxx"

QEvent* QEvent_new(int typeVal) {
    return new QEvent(static_cast<QEvent::Type>(typeVal));
}

QEvent* QEvent_new2(QEvent* other) {
    return new QEvent(*other);
}

void QEvent_OperatorAssign(QEvent* self, QEvent* other) {
    self->operator=(*other);
}

int QEvent_Type(const QEvent* self) {
    return static_cast<int>(self->type());
}

bool QEvent_Spontaneous(const QEvent* self) {
    return self->spontaneous();
}

void QEvent_SetAccepted(QEvent* self, bool accepted) {
    self->setAccepted(accepted);
}

bool QEvent_IsAccepted(const QEvent* self) {
    return self->isAccepted();
}

void QEvent_Accept(QEvent* self) {
    self->accept();
}

void QEvent_Ignore(QEvent* self) {
    self->ignore();
}

int QEvent_RegisterEventType() {
    return QEvent::registerEventType();
}

int QEvent_RegisterEventType1(int hint) {
    return QEvent::registerEventType(static_cast<int>(hint));
}

void QEvent_Delete(QEvent* self) {
    delete self;
}

QTimerEvent* QTimerEvent_new(int timerId) {
    return new QTimerEvent(static_cast<int>(timerId));
}

QTimerEvent* QTimerEvent_new2(QTimerEvent* param1) {
    return new QTimerEvent(*param1);
}

int QTimerEvent_TimerId(const QTimerEvent* self) {
    return self->timerId();
}

void QTimerEvent_Delete(QTimerEvent* self) {
    delete self;
}

QChildEvent* QChildEvent_new(int typeVal, QObject* child) {
    return new QChildEvent(static_cast<QEvent::Type>(typeVal), child);
}

QChildEvent* QChildEvent_new2(QChildEvent* param1) {
    return new QChildEvent(*param1);
}

QObject* QChildEvent_Child(const QChildEvent* self) {
    return self->child();
}

bool QChildEvent_Added(const QChildEvent* self) {
    return self->added();
}

bool QChildEvent_Polished(const QChildEvent* self) {
    return self->polished();
}

bool QChildEvent_Removed(const QChildEvent* self) {
    return self->removed();
}

void QChildEvent_Delete(QChildEvent* self) {
    delete self;
}

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_new(libqt_string name) {
    QByteArray name_QByteArray(name.data, name.len);
    return new QDynamicPropertyChangeEvent(name_QByteArray);
}

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_new2(QDynamicPropertyChangeEvent* param1) {
    return new QDynamicPropertyChangeEvent(*param1);
}

libqt_string QDynamicPropertyChangeEvent_PropertyName(const QDynamicPropertyChangeEvent* self) {
    QByteArray _qb = self->propertyName();
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QDynamicPropertyChangeEvent_Delete(QDynamicPropertyChangeEvent* self) {
    delete self;
}
