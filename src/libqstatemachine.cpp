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
#include <QSet>
#include <QSignalTransition>
#include <QState>
#include <QStateMachine>
#define WORKAROUND_INNER_CLASS_DEFINITION_QStateMachine__SignalEvent
#define WORKAROUND_INNER_CLASS_DEFINITION_QStateMachine__WrappedEvent
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QVariant>
#include <qstatemachine.h>
#include "libqstatemachine.h"
#include "libqstatemachine.hxx"

QStateMachine* QStateMachine_new() {
    return new VirtualQStateMachine();
}

QStateMachine* QStateMachine_new2(int childMode) {
    return new VirtualQStateMachine(static_cast<QState::ChildMode>(childMode));
}

QStateMachine* QStateMachine_new3(QObject* parent) {
    return new VirtualQStateMachine(parent);
}

QStateMachine* QStateMachine_new4(int childMode, QObject* parent) {
    return new VirtualQStateMachine(static_cast<QState::ChildMode>(childMode), parent);
}

QMetaObject* QStateMachine_MetaObject(const QStateMachine* self) {
    return (QMetaObject*)self->metaObject();
}

void* QStateMachine_Metacast(QStateMachine* self, const char* param1) {
    return self->qt_metacast(param1);
}

int QStateMachine_Metacall(QStateMachine* self, int param1, int param2, void** param3) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QStateMachine_OnMetacall(QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_Metacall_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_Metacall_Callback>(slot));
    }
}

// Virtual base class handler implementation
int QStateMachine_QBaseMetacall(QStateMachine* self, int param1, int param2, void** param3) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_Metacall_IsBase(true);
        return vqstatemachine->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    } else {
        return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
    }
}

libqt_string QStateMachine_Tr(const char* s) {
    QString _ret = QStateMachine::tr(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QStateMachine_TrUtf8(const char* s) {
    QString _ret = QStateMachine::trUtf8(s);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QStateMachine_AddState(QStateMachine* self, QAbstractState* state) {
    self->addState(state);
}

void QStateMachine_RemoveState(QStateMachine* self, QAbstractState* state) {
    self->removeState(state);
}

int QStateMachine_Error(const QStateMachine* self) {
    return static_cast<int>(self->error());
}

libqt_string QStateMachine_ErrorString(const QStateMachine* self) {
    QString _ret = self->errorString();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QStateMachine_ClearError(QStateMachine* self) {
    self->clearError();
}

bool QStateMachine_IsRunning(const QStateMachine* self) {
    return self->isRunning();
}

bool QStateMachine_IsAnimated(const QStateMachine* self) {
    return self->isAnimated();
}

void QStateMachine_SetAnimated(QStateMachine* self, bool enabled) {
    self->setAnimated(enabled);
}

void QStateMachine_AddDefaultAnimation(QStateMachine* self, QAbstractAnimation* animation) {
    self->addDefaultAnimation(animation);
}

libqt_list /* of QAbstractAnimation* */ QStateMachine_DefaultAnimations(const QStateMachine* self) {
    QList<QAbstractAnimation*> _ret = self->defaultAnimations();
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

void QStateMachine_RemoveDefaultAnimation(QStateMachine* self, QAbstractAnimation* animation) {
    self->removeDefaultAnimation(animation);
}

int QStateMachine_GlobalRestorePolicy(const QStateMachine* self) {
    return static_cast<int>(self->globalRestorePolicy());
}

void QStateMachine_SetGlobalRestorePolicy(QStateMachine* self, int restorePolicy) {
    self->setGlobalRestorePolicy(static_cast<QState::RestorePolicy>(restorePolicy));
}

void QStateMachine_PostEvent(QStateMachine* self, QEvent* event) {
    self->postEvent(event);
}

int QStateMachine_PostDelayedEvent(QStateMachine* self, QEvent* event, int delay) {
    return self->postDelayedEvent(event, static_cast<int>(delay));
}

bool QStateMachine_CancelDelayedEvent(QStateMachine* self, int id) {
    return self->cancelDelayedEvent(static_cast<int>(id));
}

libqt_list /* set of QAbstractState* */ QStateMachine_Configuration(const QStateMachine* self) {
    QSet<QAbstractState*> _ret = self->configuration();
    // Convert QSet<> from C++ memory to manually-managed C memory
    QAbstractState** _arr = static_cast<QAbstractState**>(malloc(sizeof(QAbstractState*) * _ret.size()));
    int _ctr = 0;
    QSetIterator<QAbstractState*> _itr(_ret);
    while (_itr.hasNext()) {
        _arr[_ctr++] = _itr.next();
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

void QStateMachine_Start(QStateMachine* self) {
    self->start();
}

void QStateMachine_Stop(QStateMachine* self) {
    self->stop();
}

void QStateMachine_SetRunning(QStateMachine* self, bool running) {
    self->setRunning(running);
}

void QStateMachine_RunningChanged(QStateMachine* self, bool running) {
    self->runningChanged(running);
}

void QStateMachine_Connect_RunningChanged(QStateMachine* self, intptr_t slot) {
    void (*slotFunc)(QStateMachine*, bool) = reinterpret_cast<void (*)(QStateMachine*, bool)>(slot);
    QStateMachine::connect(self, &QStateMachine::runningChanged, [self, slotFunc](bool running) {
        bool sigval1 = running;
        slotFunc(self, sigval1);
    });
}

libqt_string QStateMachine_Tr2(const char* s, const char* c) {
    QString _ret = QStateMachine::tr(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QStateMachine_Tr3(const char* s, const char* c, int n) {
    QString _ret = QStateMachine::tr(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QStateMachine_TrUtf82(const char* s, const char* c) {
    QString _ret = QStateMachine::trUtf8(s, c);
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

libqt_string QStateMachine_TrUtf83(const char* s, const char* c, int n) {
    QString _ret = QStateMachine::trUtf8(s, c, static_cast<int>(n));
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QStateMachine_PostEvent2(QStateMachine* self, QEvent* event, int priority) {
    self->postEvent(event, static_cast<QStateMachine::EventPriority>(priority));
}

// Derived class handler implementation
bool QStateMachine_EventFilter(QStateMachine* self, QObject* watched, QEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        return vqstatemachine->eventFilter(watched, event);
    } else {
        return vqstatemachine->eventFilter(watched, event);
    }
}

// Base class handler implementation
bool QStateMachine_QBaseEventFilter(QStateMachine* self, QObject* watched, QEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_EventFilter_IsBase(true);
        return vqstatemachine->eventFilter(watched, event);
    } else {
        return vqstatemachine->eventFilter(watched, event);
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnEventFilter(QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_EventFilter_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_EventFilter_Callback>(slot));
    }
}

// Derived class handler implementation
void QStateMachine_OnEntry(QStateMachine* self, QEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->onEntry(event);
    } else {
        vqstatemachine->onEntry(event);
    }
}

// Base class handler implementation
void QStateMachine_QBaseOnEntry(QStateMachine* self, QEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_OnEntry_IsBase(true);
        vqstatemachine->onEntry(event);
    } else {
        vqstatemachine->onEntry(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnOnEntry(QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_OnEntry_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_OnEntry_Callback>(slot));
    }
}

// Derived class handler implementation
void QStateMachine_OnExit(QStateMachine* self, QEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->onExit(event);
    } else {
        vqstatemachine->onExit(event);
    }
}

// Base class handler implementation
void QStateMachine_QBaseOnExit(QStateMachine* self, QEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_OnExit_IsBase(true);
        vqstatemachine->onExit(event);
    } else {
        vqstatemachine->onExit(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnOnExit(QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_OnExit_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_OnExit_Callback>(slot));
    }
}

// Derived class handler implementation
void QStateMachine_BeginSelectTransitions(QStateMachine* self, QEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->beginSelectTransitions(event);
    } else {
        vqstatemachine->beginSelectTransitions(event);
    }
}

// Base class handler implementation
void QStateMachine_QBaseBeginSelectTransitions(QStateMachine* self, QEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_BeginSelectTransitions_IsBase(true);
        vqstatemachine->beginSelectTransitions(event);
    } else {
        vqstatemachine->beginSelectTransitions(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnBeginSelectTransitions(QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_BeginSelectTransitions_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_BeginSelectTransitions_Callback>(slot));
    }
}

// Derived class handler implementation
void QStateMachine_EndSelectTransitions(QStateMachine* self, QEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->endSelectTransitions(event);
    } else {
        vqstatemachine->endSelectTransitions(event);
    }
}

// Base class handler implementation
void QStateMachine_QBaseEndSelectTransitions(QStateMachine* self, QEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_EndSelectTransitions_IsBase(true);
        vqstatemachine->endSelectTransitions(event);
    } else {
        vqstatemachine->endSelectTransitions(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnEndSelectTransitions(QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_EndSelectTransitions_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_EndSelectTransitions_Callback>(slot));
    }
}

// Derived class handler implementation
void QStateMachine_BeginMicrostep(QStateMachine* self, QEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->beginMicrostep(event);
    } else {
        vqstatemachine->beginMicrostep(event);
    }
}

// Base class handler implementation
void QStateMachine_QBaseBeginMicrostep(QStateMachine* self, QEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_BeginMicrostep_IsBase(true);
        vqstatemachine->beginMicrostep(event);
    } else {
        vqstatemachine->beginMicrostep(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnBeginMicrostep(QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_BeginMicrostep_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_BeginMicrostep_Callback>(slot));
    }
}

// Derived class handler implementation
void QStateMachine_EndMicrostep(QStateMachine* self, QEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->endMicrostep(event);
    } else {
        vqstatemachine->endMicrostep(event);
    }
}

// Base class handler implementation
void QStateMachine_QBaseEndMicrostep(QStateMachine* self, QEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_EndMicrostep_IsBase(true);
        vqstatemachine->endMicrostep(event);
    } else {
        vqstatemachine->endMicrostep(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnEndMicrostep(QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_EndMicrostep_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_EndMicrostep_Callback>(slot));
    }
}

// Derived class handler implementation
bool QStateMachine_Event(QStateMachine* self, QEvent* e) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        return vqstatemachine->event(e);
    } else {
        return vqstatemachine->event(e);
    }
}

// Base class handler implementation
bool QStateMachine_QBaseEvent(QStateMachine* self, QEvent* e) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_Event_IsBase(true);
        return vqstatemachine->event(e);
    } else {
        return vqstatemachine->event(e);
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnEvent(QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_Event_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_Event_Callback>(slot));
    }
}

// Derived class handler implementation
void QStateMachine_TimerEvent(QStateMachine* self, QTimerEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->timerEvent(event);
    } else {
        vqstatemachine->timerEvent(event);
    }
}

// Base class handler implementation
void QStateMachine_QBaseTimerEvent(QStateMachine* self, QTimerEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_TimerEvent_IsBase(true);
        vqstatemachine->timerEvent(event);
    } else {
        vqstatemachine->timerEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnTimerEvent(QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_TimerEvent_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_TimerEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QStateMachine_ChildEvent(QStateMachine* self, QChildEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->childEvent(event);
    } else {
        vqstatemachine->childEvent(event);
    }
}

// Base class handler implementation
void QStateMachine_QBaseChildEvent(QStateMachine* self, QChildEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_ChildEvent_IsBase(true);
        vqstatemachine->childEvent(event);
    } else {
        vqstatemachine->childEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnChildEvent(QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_ChildEvent_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_ChildEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QStateMachine_CustomEvent(QStateMachine* self, QEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->customEvent(event);
    } else {
        vqstatemachine->customEvent(event);
    }
}

// Base class handler implementation
void QStateMachine_QBaseCustomEvent(QStateMachine* self, QEvent* event) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_CustomEvent_IsBase(true);
        vqstatemachine->customEvent(event);
    } else {
        vqstatemachine->customEvent(event);
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnCustomEvent(QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_CustomEvent_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_CustomEvent_Callback>(slot));
    }
}

// Derived class handler implementation
void QStateMachine_ConnectNotify(QStateMachine* self, QMetaMethod* signal) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->connectNotify(*signal);
    } else {
        vqstatemachine->connectNotify(*signal);
    }
}

// Base class handler implementation
void QStateMachine_QBaseConnectNotify(QStateMachine* self, QMetaMethod* signal) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_ConnectNotify_IsBase(true);
        vqstatemachine->connectNotify(*signal);
    } else {
        vqstatemachine->connectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnConnectNotify(QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_ConnectNotify_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_ConnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
void QStateMachine_DisconnectNotify(QStateMachine* self, QMetaMethod* signal) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->disconnectNotify(*signal);
    } else {
        vqstatemachine->disconnectNotify(*signal);
    }
}

// Base class handler implementation
void QStateMachine_QBaseDisconnectNotify(QStateMachine* self, QMetaMethod* signal) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_DisconnectNotify_IsBase(true);
        vqstatemachine->disconnectNotify(*signal);
    } else {
        vqstatemachine->disconnectNotify(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnDisconnectNotify(QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = dynamic_cast<VirtualQStateMachine*>(self)) {
        vqstatemachine->setQStateMachine_DisconnectNotify_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_DisconnectNotify_Callback>(slot));
    }
}

// Derived class handler implementation
QObject* QStateMachine_Sender(const QStateMachine* self) {
    if (auto* vqstatemachine = const_cast<VirtualQStateMachine*>(dynamic_cast<const VirtualQStateMachine*>(self))) {
        return vqstatemachine->sender();
    } else {
        return vqstatemachine->sender();
    }
}

// Base class handler implementation
QObject* QStateMachine_QBaseSender(const QStateMachine* self) {
    if (auto* vqstatemachine = const_cast<VirtualQStateMachine*>(dynamic_cast<const VirtualQStateMachine*>(self))) {
        vqstatemachine->setQStateMachine_Sender_IsBase(true);
        return vqstatemachine->sender();
    } else {
        return vqstatemachine->sender();
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnSender(const QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = const_cast<VirtualQStateMachine*>(dynamic_cast<const VirtualQStateMachine*>(self))) {
        vqstatemachine->setQStateMachine_Sender_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_Sender_Callback>(slot));
    }
}

// Derived class handler implementation
int QStateMachine_SenderSignalIndex(const QStateMachine* self) {
    if (auto* vqstatemachine = const_cast<VirtualQStateMachine*>(dynamic_cast<const VirtualQStateMachine*>(self))) {
        return vqstatemachine->senderSignalIndex();
    } else {
        return vqstatemachine->senderSignalIndex();
    }
}

// Base class handler implementation
int QStateMachine_QBaseSenderSignalIndex(const QStateMachine* self) {
    if (auto* vqstatemachine = const_cast<VirtualQStateMachine*>(dynamic_cast<const VirtualQStateMachine*>(self))) {
        vqstatemachine->setQStateMachine_SenderSignalIndex_IsBase(true);
        return vqstatemachine->senderSignalIndex();
    } else {
        return vqstatemachine->senderSignalIndex();
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnSenderSignalIndex(const QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = const_cast<VirtualQStateMachine*>(dynamic_cast<const VirtualQStateMachine*>(self))) {
        vqstatemachine->setQStateMachine_SenderSignalIndex_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_SenderSignalIndex_Callback>(slot));
    }
}

// Derived class handler implementation
int QStateMachine_Receivers(const QStateMachine* self, const char* signal) {
    if (auto* vqstatemachine = const_cast<VirtualQStateMachine*>(dynamic_cast<const VirtualQStateMachine*>(self))) {
        return vqstatemachine->receivers(signal);
    } else {
        return vqstatemachine->receivers(signal);
    }
}

// Base class handler implementation
int QStateMachine_QBaseReceivers(const QStateMachine* self, const char* signal) {
    if (auto* vqstatemachine = const_cast<VirtualQStateMachine*>(dynamic_cast<const VirtualQStateMachine*>(self))) {
        vqstatemachine->setQStateMachine_Receivers_IsBase(true);
        return vqstatemachine->receivers(signal);
    } else {
        return vqstatemachine->receivers(signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnReceivers(const QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = const_cast<VirtualQStateMachine*>(dynamic_cast<const VirtualQStateMachine*>(self))) {
        vqstatemachine->setQStateMachine_Receivers_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_Receivers_Callback>(slot));
    }
}

// Derived class handler implementation
bool QStateMachine_IsSignalConnected(const QStateMachine* self, QMetaMethod* signal) {
    if (auto* vqstatemachine = const_cast<VirtualQStateMachine*>(dynamic_cast<const VirtualQStateMachine*>(self))) {
        return vqstatemachine->isSignalConnected(*signal);
    } else {
        return vqstatemachine->isSignalConnected(*signal);
    }
}

// Base class handler implementation
bool QStateMachine_QBaseIsSignalConnected(const QStateMachine* self, QMetaMethod* signal) {
    if (auto* vqstatemachine = const_cast<VirtualQStateMachine*>(dynamic_cast<const VirtualQStateMachine*>(self))) {
        vqstatemachine->setQStateMachine_IsSignalConnected_IsBase(true);
        return vqstatemachine->isSignalConnected(*signal);
    } else {
        return vqstatemachine->isSignalConnected(*signal);
    }
}

// Auxiliary method to allow providing re-implementation
void QStateMachine_OnIsSignalConnected(const QStateMachine* self, intptr_t slot) {
    if (auto* vqstatemachine = const_cast<VirtualQStateMachine*>(dynamic_cast<const VirtualQStateMachine*>(self))) {
        vqstatemachine->setQStateMachine_IsSignalConnected_Callback(reinterpret_cast<VirtualQStateMachine::QStateMachine_IsSignalConnected_Callback>(slot));
    }
}

void QStateMachine_Delete(QStateMachine* self) {
    delete self;
}

QStateMachine__SignalEvent* QStateMachine__SignalEvent_new(QStateMachine__SignalEvent* param1) {
    return new QStateMachine::SignalEvent(*param1);
}

QObject* QStateMachine__SignalEvent_Sender(const QStateMachine__SignalEvent* self) {
    return self->sender();
}

int QStateMachine__SignalEvent_SignalIndex(const QStateMachine__SignalEvent* self) {
    return self->signalIndex();
}

void QStateMachine__SignalEvent_Delete(QStateMachine__SignalEvent* self) {
    delete self;
}

QStateMachine__WrappedEvent* QStateMachine__WrappedEvent_new(QObject* object, QEvent* event) {
    return new QStateMachine::WrappedEvent(object, event);
}

QStateMachine__WrappedEvent* QStateMachine__WrappedEvent_new2(QStateMachine__WrappedEvent* param1) {
    return new QStateMachine::WrappedEvent(*param1);
}

QObject* QStateMachine__WrappedEvent_Object(const QStateMachine__WrappedEvent* self) {
    return self->object();
}

QEvent* QStateMachine__WrappedEvent_Event(const QStateMachine__WrappedEvent* self) {
    return self->event();
}

void QStateMachine__WrappedEvent_Delete(QStateMachine__WrappedEvent* self) {
    delete self;
}
