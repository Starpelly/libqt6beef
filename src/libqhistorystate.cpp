#include <QAbstractState>
#include <QAbstractTransition>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QHistoryState>
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
#include <qhistorystate.h>
#include "libqhistorystate.h"
#include "libqhistorystate.hxx"

QHistoryState* QHistoryState_new() {
    return new VirtualQHistoryState();
}

QHistoryState* QHistoryState_new2(int typeVal) {
    return new VirtualQHistoryState(static_cast<QHistoryState::HistoryType>(typeVal));
}

QHistoryState* QHistoryState_new3(QState* parent) {
    return new VirtualQHistoryState(parent);
}

QHistoryState* QHistoryState_new4(int typeVal, QState* parent) {
    return new VirtualQHistoryState(static_cast<QHistoryState::HistoryType>(typeVal), parent);
}

QMetaObject* QHistoryState_MetaObject(const QHistoryState* self) {
    return (QMetaObject*)self->metaObject();
}

void* QHistoryState_Metacast(QHistoryState* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QHistoryState_Metacall(QHistoryState* self, int param1, int param2, void** param3) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QHistoryState_OnMetacall(QHistoryState* self, intptr_t slot) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_Metacall_Callback(reinterpret_cast<VirtualQHistoryState::QHistoryState_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QHistoryState_QBaseMetacall(QHistoryState* self, int param1, int param2, void** param3) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_Metacall_IsBase(true);
        return vqhistorystate->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QHistoryState_Tr(const char* s) {
    QString _ret = QHistoryState::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QHistoryState_TrUtf8(const char* s) {
    QString _ret = QHistoryState::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QAbstractTransition* QHistoryState_DefaultTransition(const QHistoryState* self) {
    return self->defaultTransition();
}

void QHistoryState_SetDefaultTransition(QHistoryState* self, QAbstractTransition* transition) {
    self->setDefaultTransition(transition);
}

QAbstractState* QHistoryState_DefaultState(const QHistoryState* self) {
    return self->defaultState();
}

void QHistoryState_SetDefaultState(QHistoryState* self, QAbstractState* state) {
    self->setDefaultState(state);
}

int QHistoryState_HistoryType(const QHistoryState* self) {
    return static_cast<int>(self->historyType());
}

void QHistoryState_SetHistoryType(QHistoryState* self, int typeVal) {
    self->setHistoryType(static_cast<QHistoryState::HistoryType>(typeVal));
}

libqt_string QHistoryState_Tr2(const char* s, const char* c) {
    QString _ret = QHistoryState::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QHistoryState_Tr3(const char* s, const char* c, int n) {
    QString _ret = QHistoryState::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QHistoryState_TrUtf82(const char* s, const char* c) {
    QString _ret = QHistoryState::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QHistoryState_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QHistoryState::trUtf8(s, c, static_cast<int>(n));
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
void QHistoryState_OnEntry(QHistoryState* self, QEvent* event) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->onEntry(event);
    } else {
        vqhistorystate->onEntry(event);
    }
}

// Base class handler implementation
void QHistoryState_QBaseOnEntry(QHistoryState* self, QEvent* event) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_OnEntry_IsBase(true);
        vqhistorystate->onEntry(event);
    } else {
        vqhistorystate->onEntry(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QHistoryState_OnOnEntry(QHistoryState* self, intptr_t slot) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_OnEntry_Callback(reinterpret_cast<VirtualQHistoryState::QHistoryState_OnEntry_Callback>(slot));
    }
}

// Derived class handler implementation
void QHistoryState_OnExit(QHistoryState* self, QEvent* event) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->onExit(event);
    } else {
        vqhistorystate->onExit(event);
    }
}

// Base class handler implementation
void QHistoryState_QBaseOnExit(QHistoryState* self, QEvent* event) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_OnExit_IsBase(true);
        vqhistorystate->onExit(event);
    } else {
        vqhistorystate->onExit(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QHistoryState_OnOnExit(QHistoryState* self, intptr_t slot) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_OnExit_Callback(reinterpret_cast<VirtualQHistoryState::QHistoryState_OnExit_Callback>(slot));
    }
}

// Derived class handler implementation
bool QHistoryState_Event(QHistoryState* self, QEvent* e) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        return vqhistorystate->event(e);
    } else {
        return vqhistorystate->event(e);
    }
}

// Base class handler implementation
bool QHistoryState_QBaseEvent(QHistoryState* self, QEvent* e) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_Event_IsBase(true);
        return vqhistorystate->event(e);
    } else {
        return vqhistorystate->event(e);
    }
}

// Auxiliary method to allow providing re-implementation
void QHistoryState_OnEvent(QHistoryState* self, intptr_t slot) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_Event_Callback(reinterpret_cast<VirtualQHistoryState::QHistoryState_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QHistoryState_EventFilter(QHistoryState* self, QObject* watched, QEvent* event) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        return vqhistorystate->eventFilter(watched, event);
    } else {
        return vqhistorystate->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QHistoryState_QBaseEventFilter(QHistoryState* self, QObject* watched, QEvent* event) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_EventFilter_IsBase(true);
        return vqhistorystate->eventFilter(watched, event);
    } else {
        return vqhistorystate->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QHistoryState_OnEventFilter(QHistoryState* self, intptr_t slot) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_EventFilter_Callback(reinterpret_cast<VirtualQHistoryState::QHistoryState_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QHistoryState_TimerEvent(QHistoryState* self, QTimerEvent* event) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->timerEvent(event);
    } else {
        vqhistorystate->timerEvent(event);
    }
}

// Base class handler implementation
void QHistoryState_QBaseTimerEvent(QHistoryState* self, QTimerEvent* event) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_TimerEvent_IsBase(true);
        vqhistorystate->timerEvent(event);
    } else {
        vqhistorystate->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QHistoryState_OnTimerEvent(QHistoryState* self, intptr_t slot) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_TimerEvent_Callback(reinterpret_cast<VirtualQHistoryState::QHistoryState_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QHistoryState_ChildEvent(QHistoryState* self, QChildEvent* event) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->childEvent(event);
    } else {
        vqhistorystate->childEvent(event);
    }
}

// Base class handler implementation
void QHistoryState_QBaseChildEvent(QHistoryState* self, QChildEvent* event) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_ChildEvent_IsBase(true);
        vqhistorystate->childEvent(event);
    } else {
        vqhistorystate->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QHistoryState_OnChildEvent(QHistoryState* self, intptr_t slot) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_ChildEvent_Callback(reinterpret_cast<VirtualQHistoryState::QHistoryState_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QHistoryState_CustomEvent(QHistoryState* self, QEvent* event) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->customEvent(event);
    } else {
        vqhistorystate->customEvent(event);
    }
}

// Base class handler implementation
void QHistoryState_QBaseCustomEvent(QHistoryState* self, QEvent* event) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_CustomEvent_IsBase(true);
        vqhistorystate->customEvent(event);
    } else {
        vqhistorystate->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QHistoryState_OnCustomEvent(QHistoryState* self, intptr_t slot) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_CustomEvent_Callback(reinterpret_cast<VirtualQHistoryState::QHistoryState_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QHistoryState_ConnectNotify(QHistoryState* self, QMetaMethod* signal) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->connectNotify(*signal);
    } else {
        vqhistorystate->connectNotify(*signal);
    }
}

// Base class handler implementation
void QHistoryState_QBaseConnectNotify(QHistoryState* self, QMetaMethod* signal) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_ConnectNotify_IsBase(true);
        vqhistorystate->connectNotify(*signal);
    } else {
        vqhistorystate->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QHistoryState_OnConnectNotify(QHistoryState* self, intptr_t slot) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_ConnectNotify_Callback(reinterpret_cast<VirtualQHistoryState::QHistoryState_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QHistoryState_DisconnectNotify(QHistoryState* self, QMetaMethod* signal) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->disconnectNotify(*signal);
    } else {
        vqhistorystate->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QHistoryState_QBaseDisconnectNotify(QHistoryState* self, QMetaMethod* signal) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_DisconnectNotify_IsBase(true);
        vqhistorystate->disconnectNotify(*signal);
    } else {
        vqhistorystate->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QHistoryState_OnDisconnectNotify(QHistoryState* self, intptr_t slot) {
    if (auto* vqhistorystate = dynamic_cast<VirtualQHistoryState*>(self)) {
        vqhistorystate->setQHistoryState_DisconnectNotify_Callback(reinterpret_cast<VirtualQHistoryState::QHistoryState_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QHistoryState_Sender(const QHistoryState* self) {
    if (auto* vqhistorystate = const_cast<VirtualQHistoryState*>(dynamic_cast<const VirtualQHistoryState*>(self))) {
        return vqhistorystate->sender();
    } else {
        return vqhistorystate->sender();
    }
}

// Base class handler implementation
QObject* QHistoryState_QBaseSender(const QHistoryState* self) {
    if (auto* vqhistorystate = const_cast<VirtualQHistoryState*>(dynamic_cast<const VirtualQHistoryState*>(self))) {
        vqhistorystate->setQHistoryState_Sender_IsBase(true);
        return vqhistorystate->sender();
    } else {
        return vqhistorystate->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QHistoryState_OnSender(const QHistoryState* self, intptr_t slot) {
    if (auto* vqhistorystate = const_cast<VirtualQHistoryState*>(dynamic_cast<const VirtualQHistoryState*>(self))) {
        vqhistorystate->setQHistoryState_Sender_Callback(reinterpret_cast<VirtualQHistoryState::QHistoryState_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QHistoryState_SenderSignalIndex(const QHistoryState* self) {
    if (auto* vqhistorystate = const_cast<VirtualQHistoryState*>(dynamic_cast<const VirtualQHistoryState*>(self))) {
        return vqhistorystate->senderSignalIndex();
    } else {
        return vqhistorystate->senderSignalIndex();
    }
}

// Base class handler implementation
int QHistoryState_QBaseSenderSignalIndex(const QHistoryState* self) {
    if (auto* vqhistorystate = const_cast<VirtualQHistoryState*>(dynamic_cast<const VirtualQHistoryState*>(self))) {
        vqhistorystate->setQHistoryState_SenderSignalIndex_IsBase(true);
        return vqhistorystate->senderSignalIndex();
    } else {
        return vqhistorystate->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QHistoryState_OnSenderSignalIndex(const QHistoryState* self, intptr_t slot) {
    if (auto* vqhistorystate = const_cast<VirtualQHistoryState*>(dynamic_cast<const VirtualQHistoryState*>(self))) {
        vqhistorystate->setQHistoryState_SenderSignalIndex_Callback(reinterpret_cast<VirtualQHistoryState::QHistoryState_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QHistoryState_Receivers(const QHistoryState* self, const char* signal) {
    if (auto* vqhistorystate = const_cast<VirtualQHistoryState*>(dynamic_cast<const VirtualQHistoryState*>(self))) {
        return vqhistorystate->receivers(signal);
    } else {
        return vqhistorystate->receivers(signal);
    }
}

// Base class handler implementation
int QHistoryState_QBaseReceivers(const QHistoryState* self, const char* signal) {
    if (auto* vqhistorystate = const_cast<VirtualQHistoryState*>(dynamic_cast<const VirtualQHistoryState*>(self))) {
        vqhistorystate->setQHistoryState_Receivers_IsBase(true);
        return vqhistorystate->receivers(signal);
    } else {
        return vqhistorystate->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QHistoryState_OnReceivers(const QHistoryState* self, intptr_t slot) {
    if (auto* vqhistorystate = const_cast<VirtualQHistoryState*>(dynamic_cast<const VirtualQHistoryState*>(self))) {
        vqhistorystate->setQHistoryState_Receivers_Callback(reinterpret_cast<VirtualQHistoryState::QHistoryState_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QHistoryState_IsSignalConnected(const QHistoryState* self, QMetaMethod* signal) {
    if (auto* vqhistorystate = const_cast<VirtualQHistoryState*>(dynamic_cast<const VirtualQHistoryState*>(self))) {
        return vqhistorystate->isSignalConnected(*signal);
    } else {
        return vqhistorystate->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QHistoryState_QBaseIsSignalConnected(const QHistoryState* self, QMetaMethod* signal) {
    if (auto* vqhistorystate = const_cast<VirtualQHistoryState*>(dynamic_cast<const VirtualQHistoryState*>(self))) {
        vqhistorystate->setQHistoryState_IsSignalConnected_IsBase(true);
        return vqhistorystate->isSignalConnected(*signal);
    } else {
        return vqhistorystate->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QHistoryState_OnIsSignalConnected(const QHistoryState* self, intptr_t slot) {
    if (auto* vqhistorystate = const_cast<VirtualQHistoryState*>(dynamic_cast<const VirtualQHistoryState*>(self))) {
        vqhistorystate->setQHistoryState_IsSignalConnected_Callback(reinterpret_cast<VirtualQHistoryState::QHistoryState_IsSignalConnected_Callback>(slot));
    }
}

void QHistoryState_Delete(QHistoryState* self) {
    delete self;
}
