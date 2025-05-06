#include <QAbstractAnimation>
#include <QAbstractState>
#include <QAbstractTransition>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#include <QObject>
#include <QObjectUserData>
#include <QSignalTransition>
#include <QState>
#include <QStateMachine>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qsignaltransition.h>
#include "libqsignaltransition.h"
#include "libqsignaltransition.hxx"

QSignalTransition* QSignalTransition_new() {
    return new VirtualQSignalTransition();
}

QSignalTransition* QSignalTransition_new2(QObject* sender, const char* signal) {
    return new VirtualQSignalTransition(sender, signal);
}

QSignalTransition* QSignalTransition_new3(QState* sourceState) {
    return new VirtualQSignalTransition(sourceState);
}

QSignalTransition* QSignalTransition_new4(QObject* sender, const char* signal, QState* sourceState) {
    return new VirtualQSignalTransition(sender, signal, sourceState);
}

QMetaObject* QSignalTransition_MetaObject(const QSignalTransition* self) {
    return (QMetaObject*)self->metaObject();
}

void* QSignalTransition_Metacast(QSignalTransition* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QSignalTransition_Metacall(QSignalTransition* self, int param1, int param2, void** param3) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QSignalTransition_OnMetacall(QSignalTransition* self, intptr_t slot) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_Metacall_Callback(reinterpret_cast<VirtualQSignalTransition::QSignalTransition_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QSignalTransition_QBaseMetacall(QSignalTransition* self, int param1, int param2, void** param3) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_Metacall_IsBase(true);
        return vqsignaltransition->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QSignalTransition_Tr(const char* s) {
    QString _ret = QSignalTransition::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QSignalTransition_TrUtf8(const char* s) {
    QString _ret = QSignalTransition::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QObject* QSignalTransition_SenderObject(const QSignalTransition* self) {
    return self->senderObject();
}

void QSignalTransition_SetSenderObject(QSignalTransition* self, QObject* sender) {
    self->setSenderObject(sender);
}

libqt_string QSignalTransition_Signal(const QSignalTransition* self) {
    QByteArray _qb = self->signal();
    libqt_string _str;
    _str.len = _qb.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _qb.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QSignalTransition_SetSignal(QSignalTransition* self, libqt_string signal) {
    QByteArray signal_QByteArray(signal.data, signal.len);
    self->setSignal(signal_QByteArray);
}

libqt_string QSignalTransition_Tr2(const char* s, const char* c) {
    QString _ret = QSignalTransition::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QSignalTransition_Tr3(const char* s, const char* c, int n) {
    QString _ret = QSignalTransition::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QSignalTransition_TrUtf82(const char* s, const char* c) {
    QString _ret = QSignalTransition::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QSignalTransition_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QSignalTransition::trUtf8(s, c, static_cast<int>(n));
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
bool QSignalTransition_EventTest(QSignalTransition* self, QEvent* event) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        return vqsignaltransition->eventTest(event);
    } else {
        return vqsignaltransition->eventTest(event);
    }
}

// Base class handler implementation
bool QSignalTransition_QBaseEventTest(QSignalTransition* self, QEvent* event) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_EventTest_IsBase(true);
        return vqsignaltransition->eventTest(event);
    } else {
        return vqsignaltransition->eventTest(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QSignalTransition_OnEventTest(QSignalTransition* self, intptr_t slot) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_EventTest_Callback(reinterpret_cast<VirtualQSignalTransition::QSignalTransition_EventTest_Callback>(slot));
    }
}

// Derived class handler implementation
void QSignalTransition_OnTransition(QSignalTransition* self, QEvent* event) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->onTransition(event);
    } else {
        vqsignaltransition->onTransition(event);
    }
}

// Base class handler implementation
void QSignalTransition_QBaseOnTransition(QSignalTransition* self, QEvent* event) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_OnTransition_IsBase(true);
        vqsignaltransition->onTransition(event);
    } else {
        vqsignaltransition->onTransition(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QSignalTransition_OnOnTransition(QSignalTransition* self, intptr_t slot) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_OnTransition_Callback(reinterpret_cast<VirtualQSignalTransition::QSignalTransition_OnTransition_Callback>(slot));
    }
}

// Derived class handler implementation
bool QSignalTransition_Event(QSignalTransition* self, QEvent* e) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        return vqsignaltransition->event(e);
    } else {
        return vqsignaltransition->event(e);
    }
}

// Base class handler implementation
bool QSignalTransition_QBaseEvent(QSignalTransition* self, QEvent* e) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_Event_IsBase(true);
        return vqsignaltransition->event(e);
    } else {
        return vqsignaltransition->event(e);
    }
}

// Auxiliary method to allow providing re-implementation
void QSignalTransition_OnEvent(QSignalTransition* self, intptr_t slot) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_Event_Callback(reinterpret_cast<VirtualQSignalTransition::QSignalTransition_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QSignalTransition_EventFilter(QSignalTransition* self, QObject* watched, QEvent* event) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        return vqsignaltransition->eventFilter(watched, event);
    } else {
        return vqsignaltransition->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QSignalTransition_QBaseEventFilter(QSignalTransition* self, QObject* watched, QEvent* event) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_EventFilter_IsBase(true);
        return vqsignaltransition->eventFilter(watched, event);
    } else {
        return vqsignaltransition->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QSignalTransition_OnEventFilter(QSignalTransition* self, intptr_t slot) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_EventFilter_Callback(reinterpret_cast<VirtualQSignalTransition::QSignalTransition_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QSignalTransition_TimerEvent(QSignalTransition* self, QTimerEvent* event) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->timerEvent(event);
    } else {
        vqsignaltransition->timerEvent(event);
    }
}

// Base class handler implementation
void QSignalTransition_QBaseTimerEvent(QSignalTransition* self, QTimerEvent* event) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_TimerEvent_IsBase(true);
        vqsignaltransition->timerEvent(event);
    } else {
        vqsignaltransition->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QSignalTransition_OnTimerEvent(QSignalTransition* self, intptr_t slot) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_TimerEvent_Callback(reinterpret_cast<VirtualQSignalTransition::QSignalTransition_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QSignalTransition_ChildEvent(QSignalTransition* self, QChildEvent* event) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->childEvent(event);
    } else {
        vqsignaltransition->childEvent(event);
    }
}

// Base class handler implementation
void QSignalTransition_QBaseChildEvent(QSignalTransition* self, QChildEvent* event) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_ChildEvent_IsBase(true);
        vqsignaltransition->childEvent(event);
    } else {
        vqsignaltransition->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QSignalTransition_OnChildEvent(QSignalTransition* self, intptr_t slot) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_ChildEvent_Callback(reinterpret_cast<VirtualQSignalTransition::QSignalTransition_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QSignalTransition_CustomEvent(QSignalTransition* self, QEvent* event) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->customEvent(event);
    } else {
        vqsignaltransition->customEvent(event);
    }
}

// Base class handler implementation
void QSignalTransition_QBaseCustomEvent(QSignalTransition* self, QEvent* event) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_CustomEvent_IsBase(true);
        vqsignaltransition->customEvent(event);
    } else {
        vqsignaltransition->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QSignalTransition_OnCustomEvent(QSignalTransition* self, intptr_t slot) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_CustomEvent_Callback(reinterpret_cast<VirtualQSignalTransition::QSignalTransition_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QSignalTransition_ConnectNotify(QSignalTransition* self, QMetaMethod* signal) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->connectNotify(*signal);
    } else {
        vqsignaltransition->connectNotify(*signal);
    }
}

// Base class handler implementation
void QSignalTransition_QBaseConnectNotify(QSignalTransition* self, QMetaMethod* signal) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_ConnectNotify_IsBase(true);
        vqsignaltransition->connectNotify(*signal);
    } else {
        vqsignaltransition->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QSignalTransition_OnConnectNotify(QSignalTransition* self, intptr_t slot) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_ConnectNotify_Callback(reinterpret_cast<VirtualQSignalTransition::QSignalTransition_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QSignalTransition_DisconnectNotify(QSignalTransition* self, QMetaMethod* signal) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->disconnectNotify(*signal);
    } else {
        vqsignaltransition->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QSignalTransition_QBaseDisconnectNotify(QSignalTransition* self, QMetaMethod* signal) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_DisconnectNotify_IsBase(true);
        vqsignaltransition->disconnectNotify(*signal);
    } else {
        vqsignaltransition->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QSignalTransition_OnDisconnectNotify(QSignalTransition* self, intptr_t slot) {
    if (auto* vqsignaltransition = dynamic_cast<VirtualQSignalTransition*>(self)) {
        vqsignaltransition->setQSignalTransition_DisconnectNotify_Callback(reinterpret_cast<VirtualQSignalTransition::QSignalTransition_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QSignalTransition_Sender(const QSignalTransition* self) {
    if (auto* vqsignaltransition = const_cast<VirtualQSignalTransition*>(dynamic_cast<const VirtualQSignalTransition*>(self))) {
        return vqsignaltransition->sender();
    } else {
        return vqsignaltransition->sender();
    }
}

// Base class handler implementation
QObject* QSignalTransition_QBaseSender(const QSignalTransition* self) {
    if (auto* vqsignaltransition = const_cast<VirtualQSignalTransition*>(dynamic_cast<const VirtualQSignalTransition*>(self))) {
        vqsignaltransition->setQSignalTransition_Sender_IsBase(true);
        return vqsignaltransition->sender();
    } else {
        return vqsignaltransition->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QSignalTransition_OnSender(const QSignalTransition* self, intptr_t slot) {
    if (auto* vqsignaltransition = const_cast<VirtualQSignalTransition*>(dynamic_cast<const VirtualQSignalTransition*>(self))) {
        vqsignaltransition->setQSignalTransition_Sender_Callback(reinterpret_cast<VirtualQSignalTransition::QSignalTransition_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QSignalTransition_SenderSignalIndex(const QSignalTransition* self) {
    if (auto* vqsignaltransition = const_cast<VirtualQSignalTransition*>(dynamic_cast<const VirtualQSignalTransition*>(self))) {
        return vqsignaltransition->senderSignalIndex();
    } else {
        return vqsignaltransition->senderSignalIndex();
    }
}

// Base class handler implementation
int QSignalTransition_QBaseSenderSignalIndex(const QSignalTransition* self) {
    if (auto* vqsignaltransition = const_cast<VirtualQSignalTransition*>(dynamic_cast<const VirtualQSignalTransition*>(self))) {
        vqsignaltransition->setQSignalTransition_SenderSignalIndex_IsBase(true);
        return vqsignaltransition->senderSignalIndex();
    } else {
        return vqsignaltransition->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QSignalTransition_OnSenderSignalIndex(const QSignalTransition* self, intptr_t slot) {
    if (auto* vqsignaltransition = const_cast<VirtualQSignalTransition*>(dynamic_cast<const VirtualQSignalTransition*>(self))) {
        vqsignaltransition->setQSignalTransition_SenderSignalIndex_Callback(reinterpret_cast<VirtualQSignalTransition::QSignalTransition_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QSignalTransition_Receivers(const QSignalTransition* self, const char* signal) {
    if (auto* vqsignaltransition = const_cast<VirtualQSignalTransition*>(dynamic_cast<const VirtualQSignalTransition*>(self))) {
        return vqsignaltransition->receivers(signal);
    } else {
        return vqsignaltransition->receivers(signal);
    }
}

// Base class handler implementation
int QSignalTransition_QBaseReceivers(const QSignalTransition* self, const char* signal) {
    if (auto* vqsignaltransition = const_cast<VirtualQSignalTransition*>(dynamic_cast<const VirtualQSignalTransition*>(self))) {
        vqsignaltransition->setQSignalTransition_Receivers_IsBase(true);
        return vqsignaltransition->receivers(signal);
    } else {
        return vqsignaltransition->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QSignalTransition_OnReceivers(const QSignalTransition* self, intptr_t slot) {
    if (auto* vqsignaltransition = const_cast<VirtualQSignalTransition*>(dynamic_cast<const VirtualQSignalTransition*>(self))) {
        vqsignaltransition->setQSignalTransition_Receivers_Callback(reinterpret_cast<VirtualQSignalTransition::QSignalTransition_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QSignalTransition_IsSignalConnected(const QSignalTransition* self, QMetaMethod* signal) {
    if (auto* vqsignaltransition = const_cast<VirtualQSignalTransition*>(dynamic_cast<const VirtualQSignalTransition*>(self))) {
        return vqsignaltransition->isSignalConnected(*signal);
    } else {
        return vqsignaltransition->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QSignalTransition_QBaseIsSignalConnected(const QSignalTransition* self, QMetaMethod* signal) {
    if (auto* vqsignaltransition = const_cast<VirtualQSignalTransition*>(dynamic_cast<const VirtualQSignalTransition*>(self))) {
        vqsignaltransition->setQSignalTransition_IsSignalConnected_IsBase(true);
        return vqsignaltransition->isSignalConnected(*signal);
    } else {
        return vqsignaltransition->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QSignalTransition_OnIsSignalConnected(const QSignalTransition* self, intptr_t slot) {
    if (auto* vqsignaltransition = const_cast<VirtualQSignalTransition*>(dynamic_cast<const VirtualQSignalTransition*>(self))) {
        vqsignaltransition->setQSignalTransition_IsSignalConnected_Callback(reinterpret_cast<VirtualQSignalTransition::QSignalTransition_IsSignalConnected_Callback>(slot));
    }
}

void QSignalTransition_Delete(QSignalTransition* self) {
    delete self;
}
