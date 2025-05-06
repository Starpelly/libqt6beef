#include <QAbstractAnimation>
#include <QAbstractState>
#include <QAbstractTransition>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QEventTransition>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QObjectUserData>
#include <QState>
#include <QStateMachine>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qeventtransition.h>
#include "libqeventtransition.h"
#include "libqeventtransition.hxx"

QEventTransition* QEventTransition_new() {
    return new VirtualQEventTransition();
}

QEventTransition* QEventTransition_new2(QObject* object, int typeVal) {
    return new VirtualQEventTransition(object, static_cast<QEvent::Type>(typeVal));
}

QEventTransition* QEventTransition_new3(QState* sourceState) {
    return new VirtualQEventTransition(sourceState);
}

QEventTransition* QEventTransition_new4(QObject* object, int typeVal, QState* sourceState) {
    return new VirtualQEventTransition(object, static_cast<QEvent::Type>(typeVal), sourceState);
}

QMetaObject* QEventTransition_MetaObject(const QEventTransition* self) {
    return (QMetaObject*)self->metaObject();
}

void* QEventTransition_Metacast(QEventTransition* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QEventTransition_Metacall(QEventTransition* self, int param1, int param2, void** param3) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QEventTransition_OnMetacall(QEventTransition* self, intptr_t slot) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_Metacall_Callback(reinterpret_cast<VirtualQEventTransition::QEventTransition_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QEventTransition_QBaseMetacall(QEventTransition* self, int param1, int param2, void** param3) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_Metacall_IsBase(true);
        return vqeventtransition->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QEventTransition_Tr(const char* s) {
    QString _ret = QEventTransition::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QEventTransition_TrUtf8(const char* s) {
    QString _ret = QEventTransition::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QObject* QEventTransition_EventSource(const QEventTransition* self) {
    return self->eventSource();
}

void QEventTransition_SetEventSource(QEventTransition* self, QObject* object) {
    self->setEventSource(object);
}

int QEventTransition_EventType(const QEventTransition* self) {
    return static_cast<int>(self->eventType());
}

void QEventTransition_SetEventType(QEventTransition* self, int typeVal) {
    self->setEventType(static_cast<QEvent::Type>(typeVal));
}

libqt_string QEventTransition_Tr2(const char* s, const char* c) {
    QString _ret = QEventTransition::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QEventTransition_Tr3(const char* s, const char* c, int n) {
    QString _ret = QEventTransition::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QEventTransition_TrUtf82(const char* s, const char* c) {
    QString _ret = QEventTransition::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QEventTransition_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QEventTransition::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

// Derived class handler implementation
bool QEventTransition_EventTest(QEventTransition* self, QEvent* event) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        return vqeventtransition->eventTest(event);
    } else {
        return vqeventtransition->eventTest(event);
    }
}

// Base class handler implementation
bool QEventTransition_QBaseEventTest(QEventTransition* self, QEvent* event) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_EventTest_IsBase(true);
        return vqeventtransition->eventTest(event);
    } else {
        return vqeventtransition->eventTest(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventTransition_OnEventTest(QEventTransition* self, intptr_t slot) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_EventTest_Callback(reinterpret_cast<VirtualQEventTransition::QEventTransition_EventTest_Callback>(slot));
    }
}

// Derived class handler implementation
void QEventTransition_OnTransition(QEventTransition* self, QEvent* event) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->onTransition(event);
    } else {
        vqeventtransition->onTransition(event);
    }
}

// Base class handler implementation
void QEventTransition_QBaseOnTransition(QEventTransition* self, QEvent* event) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_OnTransition_IsBase(true);
        vqeventtransition->onTransition(event);
    } else {
        vqeventtransition->onTransition(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventTransition_OnOnTransition(QEventTransition* self, intptr_t slot) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_OnTransition_Callback(reinterpret_cast<VirtualQEventTransition::QEventTransition_OnTransition_Callback>(slot));
    }
}

// Derived class handler implementation
bool QEventTransition_Event(QEventTransition* self, QEvent* e) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        return vqeventtransition->event(e);
    } else {
        return vqeventtransition->event(e);
    }
}

// Base class handler implementation
bool QEventTransition_QBaseEvent(QEventTransition* self, QEvent* e) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_Event_IsBase(true);
        return vqeventtransition->event(e);
    } else {
        return vqeventtransition->event(e);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventTransition_OnEvent(QEventTransition* self, intptr_t slot) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_Event_Callback(reinterpret_cast<VirtualQEventTransition::QEventTransition_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QEventTransition_EventFilter(QEventTransition* self, QObject* watched, QEvent* event) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        return vqeventtransition->eventFilter(watched, event);
    } else {
        return vqeventtransition->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QEventTransition_QBaseEventFilter(QEventTransition* self, QObject* watched, QEvent* event) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_EventFilter_IsBase(true);
        return vqeventtransition->eventFilter(watched, event);
    } else {
        return vqeventtransition->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventTransition_OnEventFilter(QEventTransition* self, intptr_t slot) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_EventFilter_Callback(reinterpret_cast<VirtualQEventTransition::QEventTransition_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QEventTransition_TimerEvent(QEventTransition* self, QTimerEvent* event) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->timerEvent(event);
    } else {
        vqeventtransition->timerEvent(event);
    }
}

// Base class handler implementation
void QEventTransition_QBaseTimerEvent(QEventTransition* self, QTimerEvent* event) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_TimerEvent_IsBase(true);
        vqeventtransition->timerEvent(event);
    } else {
        vqeventtransition->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventTransition_OnTimerEvent(QEventTransition* self, intptr_t slot) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_TimerEvent_Callback(reinterpret_cast<VirtualQEventTransition::QEventTransition_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QEventTransition_ChildEvent(QEventTransition* self, QChildEvent* event) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->childEvent(event);
    } else {
        vqeventtransition->childEvent(event);
    }
}

// Base class handler implementation
void QEventTransition_QBaseChildEvent(QEventTransition* self, QChildEvent* event) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_ChildEvent_IsBase(true);
        vqeventtransition->childEvent(event);
    } else {
        vqeventtransition->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventTransition_OnChildEvent(QEventTransition* self, intptr_t slot) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_ChildEvent_Callback(reinterpret_cast<VirtualQEventTransition::QEventTransition_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QEventTransition_CustomEvent(QEventTransition* self, QEvent* event) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->customEvent(event);
    } else {
        vqeventtransition->customEvent(event);
    }
}

// Base class handler implementation
void QEventTransition_QBaseCustomEvent(QEventTransition* self, QEvent* event) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_CustomEvent_IsBase(true);
        vqeventtransition->customEvent(event);
    } else {
        vqeventtransition->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventTransition_OnCustomEvent(QEventTransition* self, intptr_t slot) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_CustomEvent_Callback(reinterpret_cast<VirtualQEventTransition::QEventTransition_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QEventTransition_ConnectNotify(QEventTransition* self, QMetaMethod* signal) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->connectNotify(*signal);
    } else {
        vqeventtransition->connectNotify(*signal);
    }
}

// Base class handler implementation
void QEventTransition_QBaseConnectNotify(QEventTransition* self, QMetaMethod* signal) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_ConnectNotify_IsBase(true);
        vqeventtransition->connectNotify(*signal);
    } else {
        vqeventtransition->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventTransition_OnConnectNotify(QEventTransition* self, intptr_t slot) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_ConnectNotify_Callback(reinterpret_cast<VirtualQEventTransition::QEventTransition_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QEventTransition_DisconnectNotify(QEventTransition* self, QMetaMethod* signal) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->disconnectNotify(*signal);
    } else {
        vqeventtransition->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QEventTransition_QBaseDisconnectNotify(QEventTransition* self, QMetaMethod* signal) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_DisconnectNotify_IsBase(true);
        vqeventtransition->disconnectNotify(*signal);
    } else {
        vqeventtransition->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventTransition_OnDisconnectNotify(QEventTransition* self, intptr_t slot) {
    if (auto* vqeventtransition = dynamic_cast<VirtualQEventTransition*>(self)) {
        vqeventtransition->setQEventTransition_DisconnectNotify_Callback(reinterpret_cast<VirtualQEventTransition::QEventTransition_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QEventTransition_Sender(const QEventTransition* self) {
    if (auto* vqeventtransition = const_cast<VirtualQEventTransition*>(dynamic_cast<const VirtualQEventTransition*>(self))) {
        return vqeventtransition->sender();
    } else {
        return vqeventtransition->sender();
    }
}

// Base class handler implementation
QObject* QEventTransition_QBaseSender(const QEventTransition* self) {
    if (auto* vqeventtransition = const_cast<VirtualQEventTransition*>(dynamic_cast<const VirtualQEventTransition*>(self))) {
        vqeventtransition->setQEventTransition_Sender_IsBase(true);
        return vqeventtransition->sender();
    } else {
        return vqeventtransition->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QEventTransition_OnSender(const QEventTransition* self, intptr_t slot) {
    if (auto* vqeventtransition = const_cast<VirtualQEventTransition*>(dynamic_cast<const VirtualQEventTransition*>(self))) {
        vqeventtransition->setQEventTransition_Sender_Callback(reinterpret_cast<VirtualQEventTransition::QEventTransition_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QEventTransition_SenderSignalIndex(const QEventTransition* self) {
    if (auto* vqeventtransition = const_cast<VirtualQEventTransition*>(dynamic_cast<const VirtualQEventTransition*>(self))) {
        return vqeventtransition->senderSignalIndex();
    } else {
        return vqeventtransition->senderSignalIndex();
    }
}

// Base class handler implementation
int QEventTransition_QBaseSenderSignalIndex(const QEventTransition* self) {
    if (auto* vqeventtransition = const_cast<VirtualQEventTransition*>(dynamic_cast<const VirtualQEventTransition*>(self))) {
        vqeventtransition->setQEventTransition_SenderSignalIndex_IsBase(true);
        return vqeventtransition->senderSignalIndex();
    } else {
        return vqeventtransition->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QEventTransition_OnSenderSignalIndex(const QEventTransition* self, intptr_t slot) {
    if (auto* vqeventtransition = const_cast<VirtualQEventTransition*>(dynamic_cast<const VirtualQEventTransition*>(self))) {
        vqeventtransition->setQEventTransition_SenderSignalIndex_Callback(reinterpret_cast<VirtualQEventTransition::QEventTransition_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QEventTransition_Receivers(const QEventTransition* self, const char* signal) {
    if (auto* vqeventtransition = const_cast<VirtualQEventTransition*>(dynamic_cast<const VirtualQEventTransition*>(self))) {
        return vqeventtransition->receivers(signal);
    } else {
        return vqeventtransition->receivers(signal);
    }
}

// Base class handler implementation
int QEventTransition_QBaseReceivers(const QEventTransition* self, const char* signal) {
    if (auto* vqeventtransition = const_cast<VirtualQEventTransition*>(dynamic_cast<const VirtualQEventTransition*>(self))) {
        vqeventtransition->setQEventTransition_Receivers_IsBase(true);
        return vqeventtransition->receivers(signal);
    } else {
        return vqeventtransition->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventTransition_OnReceivers(const QEventTransition* self, intptr_t slot) {
    if (auto* vqeventtransition = const_cast<VirtualQEventTransition*>(dynamic_cast<const VirtualQEventTransition*>(self))) {
        vqeventtransition->setQEventTransition_Receivers_Callback(reinterpret_cast<VirtualQEventTransition::QEventTransition_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QEventTransition_IsSignalConnected(const QEventTransition* self, QMetaMethod* signal) {
    if (auto* vqeventtransition = const_cast<VirtualQEventTransition*>(dynamic_cast<const VirtualQEventTransition*>(self))) {
        return vqeventtransition->isSignalConnected(*signal);
    } else {
        return vqeventtransition->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QEventTransition_QBaseIsSignalConnected(const QEventTransition* self, QMetaMethod* signal) {
    if (auto* vqeventtransition = const_cast<VirtualQEventTransition*>(dynamic_cast<const VirtualQEventTransition*>(self))) {
        vqeventtransition->setQEventTransition_IsSignalConnected_IsBase(true);
        return vqeventtransition->isSignalConnected(*signal);
    } else {
        return vqeventtransition->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QEventTransition_OnIsSignalConnected(const QEventTransition* self, intptr_t slot) {
    if (auto* vqeventtransition = const_cast<VirtualQEventTransition*>(dynamic_cast<const VirtualQEventTransition*>(self))) {
        vqeventtransition->setQEventTransition_IsSignalConnected_Callback(reinterpret_cast<VirtualQEventTransition::QEventTransition_IsSignalConnected_Callback>(slot));
    }
}

void QEventTransition_Delete(QEventTransition* self) {
    delete self;
}
