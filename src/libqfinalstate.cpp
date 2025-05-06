#include <QAbstractState>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QFinalState>
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
#include <qfinalstate.h>
#include "libqfinalstate.h"
#include "libqfinalstate.hxx"

QFinalState* QFinalState_new() {
    return new VirtualQFinalState();
}

QFinalState* QFinalState_new2(QState* parent) {
    return new VirtualQFinalState(parent);
}

QMetaObject* QFinalState_MetaObject(const QFinalState* self) {
    return (QMetaObject*)self->metaObject();
}

void* QFinalState_Metacast(QFinalState* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QFinalState_Metacall(QFinalState* self, int param1, int param2, void** param3) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QFinalState_OnMetacall(QFinalState* self, intptr_t slot) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_Metacall_Callback(reinterpret_cast<VirtualQFinalState::QFinalState_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QFinalState_QBaseMetacall(QFinalState* self, int param1, int param2, void** param3) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_Metacall_IsBase(true);
        return vqfinalstate->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QFinalState_Tr(const char* s) {
    QString _ret = QFinalState::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QFinalState_TrUtf8(const char* s) {
    QString _ret = QFinalState::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QFinalState_Tr2(const char* s, const char* c) {
    QString _ret = QFinalState::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QFinalState_Tr3(const char* s, const char* c, int n) {
    QString _ret = QFinalState::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QFinalState_TrUtf82(const char* s, const char* c) {
    QString _ret = QFinalState::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QFinalState_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QFinalState::trUtf8(s, c, static_cast<int>(n));
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
void QFinalState_OnEntry(QFinalState* self, QEvent* event) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->onEntry(event);
    } else {
        vqfinalstate->onEntry(event);
    }
}

// Base class handler implementation
void QFinalState_QBaseOnEntry(QFinalState* self, QEvent* event) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_OnEntry_IsBase(true);
        vqfinalstate->onEntry(event);
    } else {
        vqfinalstate->onEntry(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QFinalState_OnOnEntry(QFinalState* self, intptr_t slot) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_OnEntry_Callback(reinterpret_cast<VirtualQFinalState::QFinalState_OnEntry_Callback>(slot));
    }
}

// Derived class handler implementation
void QFinalState_OnExit(QFinalState* self, QEvent* event) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->onExit(event);
    } else {
        vqfinalstate->onExit(event);
    }
}

// Base class handler implementation
void QFinalState_QBaseOnExit(QFinalState* self, QEvent* event) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_OnExit_IsBase(true);
        vqfinalstate->onExit(event);
    } else {
        vqfinalstate->onExit(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QFinalState_OnOnExit(QFinalState* self, intptr_t slot) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_OnExit_Callback(reinterpret_cast<VirtualQFinalState::QFinalState_OnExit_Callback>(slot));
    }
}

// Derived class handler implementation
bool QFinalState_Event(QFinalState* self, QEvent* e) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        return vqfinalstate->event(e);
    } else {
        return vqfinalstate->event(e);
    }
}

// Base class handler implementation
bool QFinalState_QBaseEvent(QFinalState* self, QEvent* e) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_Event_IsBase(true);
        return vqfinalstate->event(e);
    } else {
        return vqfinalstate->event(e);
    }
}

// Auxiliary method to allow providing re-implementation
void QFinalState_OnEvent(QFinalState* self, intptr_t slot) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_Event_Callback(reinterpret_cast<VirtualQFinalState::QFinalState_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QFinalState_EventFilter(QFinalState* self, QObject* watched, QEvent* event) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        return vqfinalstate->eventFilter(watched, event);
    } else {
        return vqfinalstate->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QFinalState_QBaseEventFilter(QFinalState* self, QObject* watched, QEvent* event) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_EventFilter_IsBase(true);
        return vqfinalstate->eventFilter(watched, event);
    } else {
        return vqfinalstate->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QFinalState_OnEventFilter(QFinalState* self, intptr_t slot) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_EventFilter_Callback(reinterpret_cast<VirtualQFinalState::QFinalState_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QFinalState_TimerEvent(QFinalState* self, QTimerEvent* event) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->timerEvent(event);
    } else {
        vqfinalstate->timerEvent(event);
    }
}

// Base class handler implementation
void QFinalState_QBaseTimerEvent(QFinalState* self, QTimerEvent* event) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_TimerEvent_IsBase(true);
        vqfinalstate->timerEvent(event);
    } else {
        vqfinalstate->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QFinalState_OnTimerEvent(QFinalState* self, intptr_t slot) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_TimerEvent_Callback(reinterpret_cast<VirtualQFinalState::QFinalState_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QFinalState_ChildEvent(QFinalState* self, QChildEvent* event) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->childEvent(event);
    } else {
        vqfinalstate->childEvent(event);
    }
}

// Base class handler implementation
void QFinalState_QBaseChildEvent(QFinalState* self, QChildEvent* event) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_ChildEvent_IsBase(true);
        vqfinalstate->childEvent(event);
    } else {
        vqfinalstate->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QFinalState_OnChildEvent(QFinalState* self, intptr_t slot) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_ChildEvent_Callback(reinterpret_cast<VirtualQFinalState::QFinalState_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QFinalState_CustomEvent(QFinalState* self, QEvent* event) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->customEvent(event);
    } else {
        vqfinalstate->customEvent(event);
    }
}

// Base class handler implementation
void QFinalState_QBaseCustomEvent(QFinalState* self, QEvent* event) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_CustomEvent_IsBase(true);
        vqfinalstate->customEvent(event);
    } else {
        vqfinalstate->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QFinalState_OnCustomEvent(QFinalState* self, intptr_t slot) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_CustomEvent_Callback(reinterpret_cast<VirtualQFinalState::QFinalState_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QFinalState_ConnectNotify(QFinalState* self, QMetaMethod* signal) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->connectNotify(*signal);
    } else {
        vqfinalstate->connectNotify(*signal);
    }
}

// Base class handler implementation
void QFinalState_QBaseConnectNotify(QFinalState* self, QMetaMethod* signal) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_ConnectNotify_IsBase(true);
        vqfinalstate->connectNotify(*signal);
    } else {
        vqfinalstate->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QFinalState_OnConnectNotify(QFinalState* self, intptr_t slot) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_ConnectNotify_Callback(reinterpret_cast<VirtualQFinalState::QFinalState_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QFinalState_DisconnectNotify(QFinalState* self, QMetaMethod* signal) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->disconnectNotify(*signal);
    } else {
        vqfinalstate->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QFinalState_QBaseDisconnectNotify(QFinalState* self, QMetaMethod* signal) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_DisconnectNotify_IsBase(true);
        vqfinalstate->disconnectNotify(*signal);
    } else {
        vqfinalstate->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QFinalState_OnDisconnectNotify(QFinalState* self, intptr_t slot) {
    if (auto* vqfinalstate = dynamic_cast<VirtualQFinalState*>(self)) {
        vqfinalstate->setQFinalState_DisconnectNotify_Callback(reinterpret_cast<VirtualQFinalState::QFinalState_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QFinalState_Sender(const QFinalState* self) {
    if (auto* vqfinalstate = const_cast<VirtualQFinalState*>(dynamic_cast<const VirtualQFinalState*>(self))) {
        return vqfinalstate->sender();
    } else {
        return vqfinalstate->sender();
    }
}

// Base class handler implementation
QObject* QFinalState_QBaseSender(const QFinalState* self) {
    if (auto* vqfinalstate = const_cast<VirtualQFinalState*>(dynamic_cast<const VirtualQFinalState*>(self))) {
        vqfinalstate->setQFinalState_Sender_IsBase(true);
        return vqfinalstate->sender();
    } else {
        return vqfinalstate->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QFinalState_OnSender(const QFinalState* self, intptr_t slot) {
    if (auto* vqfinalstate = const_cast<VirtualQFinalState*>(dynamic_cast<const VirtualQFinalState*>(self))) {
        vqfinalstate->setQFinalState_Sender_Callback(reinterpret_cast<VirtualQFinalState::QFinalState_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QFinalState_SenderSignalIndex(const QFinalState* self) {
    if (auto* vqfinalstate = const_cast<VirtualQFinalState*>(dynamic_cast<const VirtualQFinalState*>(self))) {
        return vqfinalstate->senderSignalIndex();
    } else {
        return vqfinalstate->senderSignalIndex();
    }
}

// Base class handler implementation
int QFinalState_QBaseSenderSignalIndex(const QFinalState* self) {
    if (auto* vqfinalstate = const_cast<VirtualQFinalState*>(dynamic_cast<const VirtualQFinalState*>(self))) {
        vqfinalstate->setQFinalState_SenderSignalIndex_IsBase(true);
        return vqfinalstate->senderSignalIndex();
    } else {
        return vqfinalstate->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QFinalState_OnSenderSignalIndex(const QFinalState* self, intptr_t slot) {
    if (auto* vqfinalstate = const_cast<VirtualQFinalState*>(dynamic_cast<const VirtualQFinalState*>(self))) {
        vqfinalstate->setQFinalState_SenderSignalIndex_Callback(reinterpret_cast<VirtualQFinalState::QFinalState_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QFinalState_Receivers(const QFinalState* self, const char* signal) {
    if (auto* vqfinalstate = const_cast<VirtualQFinalState*>(dynamic_cast<const VirtualQFinalState*>(self))) {
        return vqfinalstate->receivers(signal);
    } else {
        return vqfinalstate->receivers(signal);
    }
}

// Base class handler implementation
int QFinalState_QBaseReceivers(const QFinalState* self, const char* signal) {
    if (auto* vqfinalstate = const_cast<VirtualQFinalState*>(dynamic_cast<const VirtualQFinalState*>(self))) {
        vqfinalstate->setQFinalState_Receivers_IsBase(true);
        return vqfinalstate->receivers(signal);
    } else {
        return vqfinalstate->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QFinalState_OnReceivers(const QFinalState* self, intptr_t slot) {
    if (auto* vqfinalstate = const_cast<VirtualQFinalState*>(dynamic_cast<const VirtualQFinalState*>(self))) {
        vqfinalstate->setQFinalState_Receivers_Callback(reinterpret_cast<VirtualQFinalState::QFinalState_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QFinalState_IsSignalConnected(const QFinalState* self, QMetaMethod* signal) {
    if (auto* vqfinalstate = const_cast<VirtualQFinalState*>(dynamic_cast<const VirtualQFinalState*>(self))) {
        return vqfinalstate->isSignalConnected(*signal);
    } else {
        return vqfinalstate->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QFinalState_QBaseIsSignalConnected(const QFinalState* self, QMetaMethod* signal) {
    if (auto* vqfinalstate = const_cast<VirtualQFinalState*>(dynamic_cast<const VirtualQFinalState*>(self))) {
        vqfinalstate->setQFinalState_IsSignalConnected_IsBase(true);
        return vqfinalstate->isSignalConnected(*signal);
    } else {
        return vqfinalstate->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QFinalState_OnIsSignalConnected(const QFinalState* self, intptr_t slot) {
    if (auto* vqfinalstate = const_cast<VirtualQFinalState*>(dynamic_cast<const VirtualQFinalState*>(self))) {
        vqfinalstate->setQFinalState_IsSignalConnected_Callback(reinterpret_cast<VirtualQFinalState::QFinalState_IsSignalConnected_Callback>(slot));
    }
}

void QFinalState_Delete(QFinalState* self) {
    delete self;
}
