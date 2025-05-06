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
#include <QState>
#include <QStateMachine>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qabstracttransition.h>
#include "libqabstracttransition.h"
#include "libqabstracttransition.hxx"

QAbstractTransition* QAbstractTransition_new() {
    return new VirtualQAbstractTransition();
}

QAbstractTransition* QAbstractTransition_new2(QState* sourceState) {
    return new VirtualQAbstractTransition(sourceState);
}

QMetaObject* QAbstractTransition_MetaObject(const QAbstractTransition* self) {
    return (QMetaObject*)self->metaObject();
}

void* QAbstractTransition_Metacast(QAbstractTransition* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QAbstractTransition_Metacall(QAbstractTransition* self, int param1, int param2, void** param3) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QAbstractTransition_OnMetacall(QAbstractTransition* self, intptr_t slot) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_Metacall_Callback(reinterpret_cast<VirtualQAbstractTransition::QAbstractTransition_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QAbstractTransition_QBaseMetacall(QAbstractTransition* self, int param1, int param2, void** param3) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_Metacall_IsBase(true);
        return vqabstracttransition->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QAbstractTransition_Tr(const char* s) {
    QString _ret = QAbstractTransition::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractTransition_TrUtf8(const char* s) {
    QString _ret = QAbstractTransition::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

QState* QAbstractTransition_SourceState(const QAbstractTransition* self) {
    return self->sourceState();
}

QAbstractState* QAbstractTransition_TargetState(const QAbstractTransition* self) {
    return self->targetState();
}

void QAbstractTransition_SetTargetState(QAbstractTransition* self, QAbstractState* target) {
    self->setTargetState(target);
}

libqt_list /* of QAbstractState* */ QAbstractTransition_TargetStates(const QAbstractTransition* self) {
    QList<QAbstractState*> _ret = self->targetStates();
    // Convert QList<> from C++ memory to manually-managed C memory
    QAbstractState** _arr = static_cast<QAbstractState**>(malloc(sizeof(QAbstractState*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

void QAbstractTransition_SetTargetStates(QAbstractTransition* self, libqt_list /* of QAbstractState* */ targets) {
    QList<QAbstractState*> targets_QList;
    targets_QList.reserve(targets.len);
    QAbstractState** targets_arr = static_cast<QAbstractState**>(targets.data);
    for (size_t i = 0; i < targets.len; ++i) {
        targets_QList.push_back(targets_arr[i]);
    }
    self->setTargetStates(targets_QList);
}

int QAbstractTransition_TransitionType(const QAbstractTransition* self) {
    return static_cast<int>(self->transitionType());
}

void QAbstractTransition_SetTransitionType(QAbstractTransition* self, int typeVal) {
    self->setTransitionType(static_cast<QAbstractTransition::TransitionType>(typeVal));
}

QStateMachine* QAbstractTransition_Machine(const QAbstractTransition* self) {
    return self->machine();
}

void QAbstractTransition_AddAnimation(QAbstractTransition* self, QAbstractAnimation* animation) {
    self->addAnimation(animation);
}

void QAbstractTransition_RemoveAnimation(QAbstractTransition* self, QAbstractAnimation* animation) {
    self->removeAnimation(animation);
}

libqt_list /* of QAbstractAnimation* */ QAbstractTransition_Animations(const QAbstractTransition* self) {
    QList<QAbstractAnimation*> _ret = self->animations();
    // Convert QList<> from C++ memory to manually-managed C memory
    QAbstractAnimation** _arr = static_cast<QAbstractAnimation**>(malloc(sizeof(QAbstractAnimation*) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

libqt_string QAbstractTransition_Tr2(const char* s, const char* c) {
    QString _ret = QAbstractTransition::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractTransition_Tr3(const char* s, const char* c, int n) {
    QString _ret = QAbstractTransition::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractTransition_TrUtf82(const char* s, const char* c) {
    QString _ret = QAbstractTransition::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QAbstractTransition_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QAbstractTransition::trUtf8(s, c, static_cast<int>(n));
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
bool QAbstractTransition_EventTest(QAbstractTransition* self, QEvent* event) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        return vqabstracttransition->eventTest(event);
    } else {
        return vqabstracttransition->eventTest(event);
    }
}

// Base class handler implementation
bool QAbstractTransition_QBaseEventTest(QAbstractTransition* self, QEvent* event) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_EventTest_IsBase(true);
        return vqabstracttransition->eventTest(event);
    } else {
        return vqabstracttransition->eventTest(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractTransition_OnEventTest(QAbstractTransition* self, intptr_t slot) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_EventTest_Callback(reinterpret_cast<VirtualQAbstractTransition::QAbstractTransition_EventTest_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractTransition_OnTransition(QAbstractTransition* self, QEvent* event) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->onTransition(event);
    } else {
        vqabstracttransition->onTransition(event);
    }
}

// Base class handler implementation
void QAbstractTransition_QBaseOnTransition(QAbstractTransition* self, QEvent* event) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_OnTransition_IsBase(true);
        vqabstracttransition->onTransition(event);
    } else {
        vqabstracttransition->onTransition(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractTransition_OnOnTransition(QAbstractTransition* self, intptr_t slot) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_OnTransition_Callback(reinterpret_cast<VirtualQAbstractTransition::QAbstractTransition_OnTransition_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAbstractTransition_Event(QAbstractTransition* self, QEvent* e) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        return vqabstracttransition->event(e);
    } else {
        return vqabstracttransition->event(e);
    }
}

// Base class handler implementation
bool QAbstractTransition_QBaseEvent(QAbstractTransition* self, QEvent* e) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_Event_IsBase(true);
        return vqabstracttransition->event(e);
    } else {
        return vqabstracttransition->event(e);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractTransition_OnEvent(QAbstractTransition* self, intptr_t slot) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_Event_Callback(reinterpret_cast<VirtualQAbstractTransition::QAbstractTransition_Event_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAbstractTransition_EventFilter(QAbstractTransition* self, QObject* watched, QEvent* event) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        return vqabstracttransition->eventFilter(watched, event);
    } else {
        return vqabstracttransition->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QAbstractTransition_QBaseEventFilter(QAbstractTransition* self, QObject* watched, QEvent* event) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_EventFilter_IsBase(true);
        return vqabstracttransition->eventFilter(watched, event);
    } else {
        return vqabstracttransition->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractTransition_OnEventFilter(QAbstractTransition* self, intptr_t slot) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_EventFilter_Callback(reinterpret_cast<VirtualQAbstractTransition::QAbstractTransition_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractTransition_TimerEvent(QAbstractTransition* self, QTimerEvent* event) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->timerEvent(event);
    } else {
        vqabstracttransition->timerEvent(event);
    }
}

// Base class handler implementation
void QAbstractTransition_QBaseTimerEvent(QAbstractTransition* self, QTimerEvent* event) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_TimerEvent_IsBase(true);
        vqabstracttransition->timerEvent(event);
    } else {
        vqabstracttransition->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractTransition_OnTimerEvent(QAbstractTransition* self, intptr_t slot) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_TimerEvent_Callback(reinterpret_cast<VirtualQAbstractTransition::QAbstractTransition_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractTransition_ChildEvent(QAbstractTransition* self, QChildEvent* event) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->childEvent(event);
    } else {
        vqabstracttransition->childEvent(event);
    }
}

// Base class handler implementation
void QAbstractTransition_QBaseChildEvent(QAbstractTransition* self, QChildEvent* event) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_ChildEvent_IsBase(true);
        vqabstracttransition->childEvent(event);
    } else {
        vqabstracttransition->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractTransition_OnChildEvent(QAbstractTransition* self, intptr_t slot) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_ChildEvent_Callback(reinterpret_cast<VirtualQAbstractTransition::QAbstractTransition_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractTransition_CustomEvent(QAbstractTransition* self, QEvent* event) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->customEvent(event);
    } else {
        vqabstracttransition->customEvent(event);
    }
}

// Base class handler implementation
void QAbstractTransition_QBaseCustomEvent(QAbstractTransition* self, QEvent* event) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_CustomEvent_IsBase(true);
        vqabstracttransition->customEvent(event);
    } else {
        vqabstracttransition->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractTransition_OnCustomEvent(QAbstractTransition* self, intptr_t slot) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_CustomEvent_Callback(reinterpret_cast<VirtualQAbstractTransition::QAbstractTransition_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractTransition_ConnectNotify(QAbstractTransition* self, QMetaMethod* signal) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->connectNotify(*signal);
    } else {
        vqabstracttransition->connectNotify(*signal);
    }
}

// Base class handler implementation
void QAbstractTransition_QBaseConnectNotify(QAbstractTransition* self, QMetaMethod* signal) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_ConnectNotify_IsBase(true);
        vqabstracttransition->connectNotify(*signal);
    } else {
        vqabstracttransition->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractTransition_OnConnectNotify(QAbstractTransition* self, intptr_t slot) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_ConnectNotify_Callback(reinterpret_cast<VirtualQAbstractTransition::QAbstractTransition_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QAbstractTransition_DisconnectNotify(QAbstractTransition* self, QMetaMethod* signal) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->disconnectNotify(*signal);
    } else {
        vqabstracttransition->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QAbstractTransition_QBaseDisconnectNotify(QAbstractTransition* self, QMetaMethod* signal) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_DisconnectNotify_IsBase(true);
        vqabstracttransition->disconnectNotify(*signal);
    } else {
        vqabstracttransition->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractTransition_OnDisconnectNotify(QAbstractTransition* self, intptr_t slot) {
    if (auto* vqabstracttransition = dynamic_cast<VirtualQAbstractTransition*>(self)) {
        vqabstracttransition->setQAbstractTransition_DisconnectNotify_Callback(reinterpret_cast<VirtualQAbstractTransition::QAbstractTransition_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QAbstractTransition_Sender(const QAbstractTransition* self) {
    if (auto* vqabstracttransition = const_cast<VirtualQAbstractTransition*>(dynamic_cast<const VirtualQAbstractTransition*>(self))) {
        return vqabstracttransition->sender();
    } else {
        return vqabstracttransition->sender();
    }
}

// Base class handler implementation
QObject* QAbstractTransition_QBaseSender(const QAbstractTransition* self) {
    if (auto* vqabstracttransition = const_cast<VirtualQAbstractTransition*>(dynamic_cast<const VirtualQAbstractTransition*>(self))) {
        vqabstracttransition->setQAbstractTransition_Sender_IsBase(true);
        return vqabstracttransition->sender();
    } else {
        return vqabstracttransition->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractTransition_OnSender(const QAbstractTransition* self, intptr_t slot) {
    if (auto* vqabstracttransition = const_cast<VirtualQAbstractTransition*>(dynamic_cast<const VirtualQAbstractTransition*>(self))) {
        vqabstracttransition->setQAbstractTransition_Sender_Callback(reinterpret_cast<VirtualQAbstractTransition::QAbstractTransition_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QAbstractTransition_SenderSignalIndex(const QAbstractTransition* self) {
    if (auto* vqabstracttransition = const_cast<VirtualQAbstractTransition*>(dynamic_cast<const VirtualQAbstractTransition*>(self))) {
        return vqabstracttransition->senderSignalIndex();
    } else {
        return vqabstracttransition->senderSignalIndex();
    }
}

// Base class handler implementation
int QAbstractTransition_QBaseSenderSignalIndex(const QAbstractTransition* self) {
    if (auto* vqabstracttransition = const_cast<VirtualQAbstractTransition*>(dynamic_cast<const VirtualQAbstractTransition*>(self))) {
        vqabstracttransition->setQAbstractTransition_SenderSignalIndex_IsBase(true);
        return vqabstracttransition->senderSignalIndex();
    } else {
        return vqabstracttransition->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractTransition_OnSenderSignalIndex(const QAbstractTransition* self, intptr_t slot) {
    if (auto* vqabstracttransition = const_cast<VirtualQAbstractTransition*>(dynamic_cast<const VirtualQAbstractTransition*>(self))) {
        vqabstracttransition->setQAbstractTransition_SenderSignalIndex_Callback(reinterpret_cast<VirtualQAbstractTransition::QAbstractTransition_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QAbstractTransition_Receivers(const QAbstractTransition* self, const char* signal) {
    if (auto* vqabstracttransition = const_cast<VirtualQAbstractTransition*>(dynamic_cast<const VirtualQAbstractTransition*>(self))) {
        return vqabstracttransition->receivers(signal);
    } else {
        return vqabstracttransition->receivers(signal);
    }
}

// Base class handler implementation
int QAbstractTransition_QBaseReceivers(const QAbstractTransition* self, const char* signal) {
    if (auto* vqabstracttransition = const_cast<VirtualQAbstractTransition*>(dynamic_cast<const VirtualQAbstractTransition*>(self))) {
        vqabstracttransition->setQAbstractTransition_Receivers_IsBase(true);
        return vqabstracttransition->receivers(signal);
    } else {
        return vqabstracttransition->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractTransition_OnReceivers(const QAbstractTransition* self, intptr_t slot) {
    if (auto* vqabstracttransition = const_cast<VirtualQAbstractTransition*>(dynamic_cast<const VirtualQAbstractTransition*>(self))) {
        vqabstracttransition->setQAbstractTransition_Receivers_Callback(reinterpret_cast<VirtualQAbstractTransition::QAbstractTransition_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QAbstractTransition_IsSignalConnected(const QAbstractTransition* self, QMetaMethod* signal) {
    if (auto* vqabstracttransition = const_cast<VirtualQAbstractTransition*>(dynamic_cast<const VirtualQAbstractTransition*>(self))) {
        return vqabstracttransition->isSignalConnected(*signal);
    } else {
        return vqabstracttransition->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QAbstractTransition_QBaseIsSignalConnected(const QAbstractTransition* self, QMetaMethod* signal) {
    if (auto* vqabstracttransition = const_cast<VirtualQAbstractTransition*>(dynamic_cast<const VirtualQAbstractTransition*>(self))) {
        vqabstracttransition->setQAbstractTransition_IsSignalConnected_IsBase(true);
        return vqabstracttransition->isSignalConnected(*signal);
    } else {
        return vqabstracttransition->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QAbstractTransition_OnIsSignalConnected(const QAbstractTransition* self, intptr_t slot) {
    if (auto* vqabstracttransition = const_cast<VirtualQAbstractTransition*>(dynamic_cast<const VirtualQAbstractTransition*>(self))) {
        vqabstracttransition->setQAbstractTransition_IsSignalConnected_Callback(reinterpret_cast<VirtualQAbstractTransition::QAbstractTransition_IsSignalConnected_Callback>(slot));
    }
}

void QAbstractTransition_Delete(QAbstractTransition* self) {
    delete self;
}
