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
#include <qstate.h>
#include "libqstate.h"
#include "libqstate.hxx"

QState* QState_new() {
    return new VirtualQState();
}

QState* QState_new2(int childMode) {
    return new VirtualQState(static_cast<QState::ChildMode>(childMode));
}

QState* QState_new3(QState* parent) {
    return new VirtualQState(parent);
}

QState* QState_new4(int childMode, QState* parent) {
    return new VirtualQState(static_cast<QState::ChildMode>(childMode), parent);
}

QMetaObject* QState_MetaObject(const QState* self) {
    return (QMetaObject*)self->metaObject();
}

void* QState_Metacast(QState* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QState_Metacall(QState* self, int param1, int param2, void** param3) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QState_OnMetacall(QState* self, intptr_t slot) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_Metacall_Callback(reinterpret_cast<VirtualQState::QState_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QState_QBaseMetacall(QState* self, int param1, int param2, void** param3) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_Metacall_IsBase(true);
        return vqstate->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QState_Tr(const char* s) {
    QString _ret = QState::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QState_TrUtf8(const char* s) {
    QString _ret = QState::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QAbstractState* QState_ErrorState(const QState* self) {
    return self->errorState();
}

void QState_SetErrorState(QState* self, QAbstractState* state) {
    self->setErrorState(state);
}

void QState_AddTransition(QState* self, QAbstractTransition* transition) {
    self->addTransition(transition);
}

QSignalTransition* QState_AddTransition2(QState* self, QObject* sender, const char* signal, QAbstractState* target) {
    return self->addTransition(sender, signal, target);
}

QAbstractTransition* QState_AddTransitionWithTarget(QState* self, QAbstractState* target) {
    return self->addTransition(target);
}

void QState_RemoveTransition(QState* self, QAbstractTransition* transition) {
    self->removeTransition(transition);
}

libqt_list /* of QAbstractTransition* */ QState_Transitions(const QState* self) {
    QList<QAbstractTransition*> _ret = self->transitions();
    // Convert QList<> from C++ memory to manually-managed C memory
    QAbstractTransition** _arr = static_cast<QAbstractTransition**>(malloc(sizeof(QAbstractTransition*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

QAbstractState* QState_InitialState(const QState* self) {
    return self->initialState();
}

void QState_SetInitialState(QState* self, QAbstractState* state) {
    self->setInitialState(state);
}

int QState_ChildMode(const QState* self) {
    return static_cast<int>(self->childMode());
}

void QState_SetChildMode(QState* self, int mode) {
    self->setChildMode(static_cast<QState::ChildMode>(mode));
}

void QState_AssignProperty(QState* self, QObject* object, const char* name, QVariant* value) {
    self->assignProperty(object, name, *value);
}

libqt_string QState_Tr2(const char* s, const char* c) {
    QString _ret = QState::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QState_Tr3(const char* s, const char* c, int n) {
    QString _ret = QState::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QState_TrUtf82(const char* s, const char* c) {
    QString _ret = QState::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QState_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QState::trUtf8(s, c, static_cast<int>(n));
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
void QState_OnEntry(QState* self, QEvent* event) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->onEntry(event);
    } else {
        vqstate->onEntry(event);
    }
}

// Base class handler implementation
void QState_QBaseOnEntry(QState* self, QEvent* event) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_OnEntry_IsBase(true);
        vqstate->onEntry(event);
    } else {
        vqstate->onEntry(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QState_OnOnEntry(QState* self, intptr_t slot) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_OnEntry_Callback(reinterpret_cast<VirtualQState::QState_OnEntry_Callback>(slot));
    }
}

// Derived class handler implementation
void QState_OnExit(QState* self, QEvent* event) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->onExit(event);
    } else {
        vqstate->onExit(event);
    }
}

// Base class handler implementation
void QState_QBaseOnExit(QState* self, QEvent* event) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_OnExit_IsBase(true);
        vqstate->onExit(event);
    } else {
        vqstate->onExit(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QState_OnOnExit(QState* self, intptr_t slot) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_OnExit_Callback(reinterpret_cast<VirtualQState::QState_OnExit_Callback>(slot));
    }
}

// Derived class handler implementation
bool QState_Event(QState* self, QEvent* e) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        return vqstate->event(e);
    } else {
        return vqstate->event(e);
    }
}

// Base class handler implementation
bool QState_QBaseEvent(QState* self, QEvent* e) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_Event_IsBase(true);
        return vqstate->event(e);
    } else {
        return vqstate->event(e);
    }
}

// Auxiliary method to allow providing re-implementation
void QState_OnEvent(QState* self, intptr_t slot) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_Event_Callback(reinterpret_cast<VirtualQState::QState_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QState_EventFilter(QState* self, QObject* watched, QEvent* event) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        return vqstate->eventFilter(watched, event);
    } else {
        return vqstate->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QState_QBaseEventFilter(QState* self, QObject* watched, QEvent* event) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_EventFilter_IsBase(true);
        return vqstate->eventFilter(watched, event);
    } else {
        return vqstate->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QState_OnEventFilter(QState* self, intptr_t slot) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_EventFilter_Callback(reinterpret_cast<VirtualQState::QState_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QState_TimerEvent(QState* self, QTimerEvent* event) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->timerEvent(event);
    } else {
        vqstate->timerEvent(event);
    }
}

// Base class handler implementation
void QState_QBaseTimerEvent(QState* self, QTimerEvent* event) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_TimerEvent_IsBase(true);
        vqstate->timerEvent(event);
    } else {
        vqstate->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QState_OnTimerEvent(QState* self, intptr_t slot) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_TimerEvent_Callback(reinterpret_cast<VirtualQState::QState_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QState_ChildEvent(QState* self, QChildEvent* event) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->childEvent(event);
    } else {
        vqstate->childEvent(event);
    }
}

// Base class handler implementation
void QState_QBaseChildEvent(QState* self, QChildEvent* event) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_ChildEvent_IsBase(true);
        vqstate->childEvent(event);
    } else {
        vqstate->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QState_OnChildEvent(QState* self, intptr_t slot) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_ChildEvent_Callback(reinterpret_cast<VirtualQState::QState_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QState_CustomEvent(QState* self, QEvent* event) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->customEvent(event);
    } else {
        vqstate->customEvent(event);
    }
}

// Base class handler implementation
void QState_QBaseCustomEvent(QState* self, QEvent* event) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_CustomEvent_IsBase(true);
        vqstate->customEvent(event);
    } else {
        vqstate->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QState_OnCustomEvent(QState* self, intptr_t slot) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_CustomEvent_Callback(reinterpret_cast<VirtualQState::QState_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QState_ConnectNotify(QState* self, QMetaMethod* signal) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->connectNotify(*signal);
    } else {
        vqstate->connectNotify(*signal);
    }
}

// Base class handler implementation
void QState_QBaseConnectNotify(QState* self, QMetaMethod* signal) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_ConnectNotify_IsBase(true);
        vqstate->connectNotify(*signal);
    } else {
        vqstate->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QState_OnConnectNotify(QState* self, intptr_t slot) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_ConnectNotify_Callback(reinterpret_cast<VirtualQState::QState_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QState_DisconnectNotify(QState* self, QMetaMethod* signal) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->disconnectNotify(*signal);
    } else {
        vqstate->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QState_QBaseDisconnectNotify(QState* self, QMetaMethod* signal) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_DisconnectNotify_IsBase(true);
        vqstate->disconnectNotify(*signal);
    } else {
        vqstate->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QState_OnDisconnectNotify(QState* self, intptr_t slot) {
    if (auto* vqstate = dynamic_cast<VirtualQState*>(self)) {
        vqstate->setQState_DisconnectNotify_Callback(reinterpret_cast<VirtualQState::QState_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QState_Sender(const QState* self) {
    if (auto* vqstate = const_cast<VirtualQState*>(dynamic_cast<const VirtualQState*>(self))) {
        return vqstate->sender();
    } else {
        return vqstate->sender();
    }
}

// Base class handler implementation
QObject* QState_QBaseSender(const QState* self) {
    if (auto* vqstate = const_cast<VirtualQState*>(dynamic_cast<const VirtualQState*>(self))) {
        vqstate->setQState_Sender_IsBase(true);
        return vqstate->sender();
    } else {
        return vqstate->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QState_OnSender(const QState* self, intptr_t slot) {
    if (auto* vqstate = const_cast<VirtualQState*>(dynamic_cast<const VirtualQState*>(self))) {
        vqstate->setQState_Sender_Callback(reinterpret_cast<VirtualQState::QState_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QState_SenderSignalIndex(const QState* self) {
    if (auto* vqstate = const_cast<VirtualQState*>(dynamic_cast<const VirtualQState*>(self))) {
        return vqstate->senderSignalIndex();
    } else {
        return vqstate->senderSignalIndex();
    }
}

// Base class handler implementation
int QState_QBaseSenderSignalIndex(const QState* self) {
    if (auto* vqstate = const_cast<VirtualQState*>(dynamic_cast<const VirtualQState*>(self))) {
        vqstate->setQState_SenderSignalIndex_IsBase(true);
        return vqstate->senderSignalIndex();
    } else {
        return vqstate->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QState_OnSenderSignalIndex(const QState* self, intptr_t slot) {
    if (auto* vqstate = const_cast<VirtualQState*>(dynamic_cast<const VirtualQState*>(self))) {
        vqstate->setQState_SenderSignalIndex_Callback(reinterpret_cast<VirtualQState::QState_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QState_Receivers(const QState* self, const char* signal) {
    if (auto* vqstate = const_cast<VirtualQState*>(dynamic_cast<const VirtualQState*>(self))) {
        return vqstate->receivers(signal);
    } else {
        return vqstate->receivers(signal);
    }
}

// Base class handler implementation
int QState_QBaseReceivers(const QState* self, const char* signal) {
    if (auto* vqstate = const_cast<VirtualQState*>(dynamic_cast<const VirtualQState*>(self))) {
        vqstate->setQState_Receivers_IsBase(true);
        return vqstate->receivers(signal);
    } else {
        return vqstate->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QState_OnReceivers(const QState* self, intptr_t slot) {
    if (auto* vqstate = const_cast<VirtualQState*>(dynamic_cast<const VirtualQState*>(self))) {
        vqstate->setQState_Receivers_Callback(reinterpret_cast<VirtualQState::QState_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QState_IsSignalConnected(const QState* self, QMetaMethod* signal) {
    if (auto* vqstate = const_cast<VirtualQState*>(dynamic_cast<const VirtualQState*>(self))) {
        return vqstate->isSignalConnected(*signal);
    } else {
        return vqstate->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QState_QBaseIsSignalConnected(const QState* self, QMetaMethod* signal) {
    if (auto* vqstate = const_cast<VirtualQState*>(dynamic_cast<const VirtualQState*>(self))) {
        vqstate->setQState_IsSignalConnected_IsBase(true);
        return vqstate->isSignalConnected(*signal);
    } else {
        return vqstate->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QState_OnIsSignalConnected(const QState* self, intptr_t slot) {
    if (auto* vqstate = const_cast<VirtualQState*>(dynamic_cast<const VirtualQState*>(self))) {
        vqstate->setQState_IsSignalConnected_Callback(reinterpret_cast<VirtualQState::QState_IsSignalConnected_Callback>(slot));
    }
}

void QState_Delete(QState* self) {
    delete self;
}
