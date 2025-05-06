#pragma once
#ifndef SRCC_LIBVIRTUALQSTATEMACHINE_H
#define SRCC_LIBVIRTUALQSTATEMACHINE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

// This class is a subclass of QStateMachine so that we can call protected methods
class VirtualQStateMachine : public QStateMachine {

  public:
    // Virtual class public types (including callbacks)
    using QStateMachine_Metacall_Callback = int (*)(QStateMachine*, QMetaObject::Call, int, void**);
    using QStateMachine_EventFilter_Callback = bool (*)(QStateMachine*, QObject*, QEvent*);
    using QStateMachine_OnEntry_Callback = void (*)(QStateMachine*, QEvent*);
    using QStateMachine_OnExit_Callback = void (*)(QStateMachine*, QEvent*);
    using QStateMachine_BeginSelectTransitions_Callback = void (*)(QStateMachine*, QEvent*);
    using QStateMachine_EndSelectTransitions_Callback = void (*)(QStateMachine*, QEvent*);
    using QStateMachine_BeginMicrostep_Callback = void (*)(QStateMachine*, QEvent*);
    using QStateMachine_EndMicrostep_Callback = void (*)(QStateMachine*, QEvent*);
    using QStateMachine_Event_Callback = bool (*)(QStateMachine*, QEvent*);
    using QStateMachine_TimerEvent_Callback = void (*)(QStateMachine*, QTimerEvent*);
    using QStateMachine_ChildEvent_Callback = void (*)(QStateMachine*, QChildEvent*);
    using QStateMachine_CustomEvent_Callback = void (*)(QStateMachine*, QEvent*);
    using QStateMachine_ConnectNotify_Callback = void (*)(QStateMachine*, const QMetaMethod&);
    using QStateMachine_DisconnectNotify_Callback = void (*)(QStateMachine*, const QMetaMethod&);
    using QStateMachine_Sender_Callback = QObject* (*)();
    using QStateMachine_SenderSignalIndex_Callback = int (*)();
    using QStateMachine_Receivers_Callback = int (*)(const QStateMachine*, const char*);
    using QStateMachine_IsSignalConnected_Callback = bool (*)(const QStateMachine*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QStateMachine_Metacall_Callback qstatemachine_metacall_callback = nullptr;
    QStateMachine_EventFilter_Callback qstatemachine_eventfilter_callback = nullptr;
    QStateMachine_OnEntry_Callback qstatemachine_onentry_callback = nullptr;
    QStateMachine_OnExit_Callback qstatemachine_onexit_callback = nullptr;
    QStateMachine_BeginSelectTransitions_Callback qstatemachine_beginselecttransitions_callback = nullptr;
    QStateMachine_EndSelectTransitions_Callback qstatemachine_endselecttransitions_callback = nullptr;
    QStateMachine_BeginMicrostep_Callback qstatemachine_beginmicrostep_callback = nullptr;
    QStateMachine_EndMicrostep_Callback qstatemachine_endmicrostep_callback = nullptr;
    QStateMachine_Event_Callback qstatemachine_event_callback = nullptr;
    QStateMachine_TimerEvent_Callback qstatemachine_timerevent_callback = nullptr;
    QStateMachine_ChildEvent_Callback qstatemachine_childevent_callback = nullptr;
    QStateMachine_CustomEvent_Callback qstatemachine_customevent_callback = nullptr;
    QStateMachine_ConnectNotify_Callback qstatemachine_connectnotify_callback = nullptr;
    QStateMachine_DisconnectNotify_Callback qstatemachine_disconnectnotify_callback = nullptr;
    QStateMachine_Sender_Callback qstatemachine_sender_callback = nullptr;
    QStateMachine_SenderSignalIndex_Callback qstatemachine_sendersignalindex_callback = nullptr;
    QStateMachine_Receivers_Callback qstatemachine_receivers_callback = nullptr;
    QStateMachine_IsSignalConnected_Callback qstatemachine_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qstatemachine_metacall_isbase = false;
    mutable bool qstatemachine_eventfilter_isbase = false;
    mutable bool qstatemachine_onentry_isbase = false;
    mutable bool qstatemachine_onexit_isbase = false;
    mutable bool qstatemachine_beginselecttransitions_isbase = false;
    mutable bool qstatemachine_endselecttransitions_isbase = false;
    mutable bool qstatemachine_beginmicrostep_isbase = false;
    mutable bool qstatemachine_endmicrostep_isbase = false;
    mutable bool qstatemachine_event_isbase = false;
    mutable bool qstatemachine_timerevent_isbase = false;
    mutable bool qstatemachine_childevent_isbase = false;
    mutable bool qstatemachine_customevent_isbase = false;
    mutable bool qstatemachine_connectnotify_isbase = false;
    mutable bool qstatemachine_disconnectnotify_isbase = false;
    mutable bool qstatemachine_sender_isbase = false;
    mutable bool qstatemachine_sendersignalindex_isbase = false;
    mutable bool qstatemachine_receivers_isbase = false;
    mutable bool qstatemachine_issignalconnected_isbase = false;

  public:
    VirtualQStateMachine() : QStateMachine(){};
    VirtualQStateMachine(QState::ChildMode childMode) : QStateMachine(childMode){};
    VirtualQStateMachine(QObject* parent) : QStateMachine(parent){};
    VirtualQStateMachine(QState::ChildMode childMode, QObject* parent) : QStateMachine(childMode, parent){};

    ~VirtualQStateMachine() {
        qstatemachine_metacall_callback = nullptr;
        qstatemachine_eventfilter_callback = nullptr;
        qstatemachine_onentry_callback = nullptr;
        qstatemachine_onexit_callback = nullptr;
        qstatemachine_beginselecttransitions_callback = nullptr;
        qstatemachine_endselecttransitions_callback = nullptr;
        qstatemachine_beginmicrostep_callback = nullptr;
        qstatemachine_endmicrostep_callback = nullptr;
        qstatemachine_event_callback = nullptr;
        qstatemachine_timerevent_callback = nullptr;
        qstatemachine_childevent_callback = nullptr;
        qstatemachine_customevent_callback = nullptr;
        qstatemachine_connectnotify_callback = nullptr;
        qstatemachine_disconnectnotify_callback = nullptr;
        qstatemachine_sender_callback = nullptr;
        qstatemachine_sendersignalindex_callback = nullptr;
        qstatemachine_receivers_callback = nullptr;
        qstatemachine_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQStateMachine_Metacall_Callback(QStateMachine_Metacall_Callback cb) { qstatemachine_metacall_callback = cb; }
    void setQStateMachine_EventFilter_Callback(QStateMachine_EventFilter_Callback cb) { qstatemachine_eventfilter_callback = cb; }
    void setQStateMachine_OnEntry_Callback(QStateMachine_OnEntry_Callback cb) { qstatemachine_onentry_callback = cb; }
    void setQStateMachine_OnExit_Callback(QStateMachine_OnExit_Callback cb) { qstatemachine_onexit_callback = cb; }
    void setQStateMachine_BeginSelectTransitions_Callback(QStateMachine_BeginSelectTransitions_Callback cb) { qstatemachine_beginselecttransitions_callback = cb; }
    void setQStateMachine_EndSelectTransitions_Callback(QStateMachine_EndSelectTransitions_Callback cb) { qstatemachine_endselecttransitions_callback = cb; }
    void setQStateMachine_BeginMicrostep_Callback(QStateMachine_BeginMicrostep_Callback cb) { qstatemachine_beginmicrostep_callback = cb; }
    void setQStateMachine_EndMicrostep_Callback(QStateMachine_EndMicrostep_Callback cb) { qstatemachine_endmicrostep_callback = cb; }
    void setQStateMachine_Event_Callback(QStateMachine_Event_Callback cb) { qstatemachine_event_callback = cb; }
    void setQStateMachine_TimerEvent_Callback(QStateMachine_TimerEvent_Callback cb) { qstatemachine_timerevent_callback = cb; }
    void setQStateMachine_ChildEvent_Callback(QStateMachine_ChildEvent_Callback cb) { qstatemachine_childevent_callback = cb; }
    void setQStateMachine_CustomEvent_Callback(QStateMachine_CustomEvent_Callback cb) { qstatemachine_customevent_callback = cb; }
    void setQStateMachine_ConnectNotify_Callback(QStateMachine_ConnectNotify_Callback cb) { qstatemachine_connectnotify_callback = cb; }
    void setQStateMachine_DisconnectNotify_Callback(QStateMachine_DisconnectNotify_Callback cb) { qstatemachine_disconnectnotify_callback = cb; }
    void setQStateMachine_Sender_Callback(QStateMachine_Sender_Callback cb) { qstatemachine_sender_callback = cb; }
    void setQStateMachine_SenderSignalIndex_Callback(QStateMachine_SenderSignalIndex_Callback cb) { qstatemachine_sendersignalindex_callback = cb; }
    void setQStateMachine_Receivers_Callback(QStateMachine_Receivers_Callback cb) { qstatemachine_receivers_callback = cb; }
    void setQStateMachine_IsSignalConnected_Callback(QStateMachine_IsSignalConnected_Callback cb) { qstatemachine_issignalconnected_callback = cb; }

    // Base flag setters
    void setQStateMachine_Metacall_IsBase(bool value) const { qstatemachine_metacall_isbase = value; }
    void setQStateMachine_EventFilter_IsBase(bool value) const { qstatemachine_eventfilter_isbase = value; }
    void setQStateMachine_OnEntry_IsBase(bool value) const { qstatemachine_onentry_isbase = value; }
    void setQStateMachine_OnExit_IsBase(bool value) const { qstatemachine_onexit_isbase = value; }
    void setQStateMachine_BeginSelectTransitions_IsBase(bool value) const { qstatemachine_beginselecttransitions_isbase = value; }
    void setQStateMachine_EndSelectTransitions_IsBase(bool value) const { qstatemachine_endselecttransitions_isbase = value; }
    void setQStateMachine_BeginMicrostep_IsBase(bool value) const { qstatemachine_beginmicrostep_isbase = value; }
    void setQStateMachine_EndMicrostep_IsBase(bool value) const { qstatemachine_endmicrostep_isbase = value; }
    void setQStateMachine_Event_IsBase(bool value) const { qstatemachine_event_isbase = value; }
    void setQStateMachine_TimerEvent_IsBase(bool value) const { qstatemachine_timerevent_isbase = value; }
    void setQStateMachine_ChildEvent_IsBase(bool value) const { qstatemachine_childevent_isbase = value; }
    void setQStateMachine_CustomEvent_IsBase(bool value) const { qstatemachine_customevent_isbase = value; }
    void setQStateMachine_ConnectNotify_IsBase(bool value) const { qstatemachine_connectnotify_isbase = value; }
    void setQStateMachine_DisconnectNotify_IsBase(bool value) const { qstatemachine_disconnectnotify_isbase = value; }
    void setQStateMachine_Sender_IsBase(bool value) const { qstatemachine_sender_isbase = value; }
    void setQStateMachine_SenderSignalIndex_IsBase(bool value) const { qstatemachine_sendersignalindex_isbase = value; }
    void setQStateMachine_Receivers_IsBase(bool value) const { qstatemachine_receivers_isbase = value; }
    void setQStateMachine_IsSignalConnected_IsBase(bool value) const { qstatemachine_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qstatemachine_metacall_isbase) {
            qstatemachine_metacall_isbase = false;
            return QStateMachine::qt_metacall(param1, param2, param3);
        } else if (qstatemachine_metacall_callback != nullptr) {
            return qstatemachine_metacall_callback(this, param1, param2, param3);
        } else {
            return QStateMachine::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qstatemachine_eventfilter_isbase) {
            qstatemachine_eventfilter_isbase = false;
            return QStateMachine::eventFilter(watched, event);
        } else if (qstatemachine_eventfilter_callback != nullptr) {
            return qstatemachine_eventfilter_callback(this, watched, event);
        } else {
            return QStateMachine::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void onEntry(QEvent* event) override {
        if (qstatemachine_onentry_isbase) {
            qstatemachine_onentry_isbase = false;
            QStateMachine::onEntry(event);
        } else if (qstatemachine_onentry_callback != nullptr) {
            qstatemachine_onentry_callback(this, event);
        } else {
            QStateMachine::onEntry(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void onExit(QEvent* event) override {
        if (qstatemachine_onexit_isbase) {
            qstatemachine_onexit_isbase = false;
            QStateMachine::onExit(event);
        } else if (qstatemachine_onexit_callback != nullptr) {
            qstatemachine_onexit_callback(this, event);
        } else {
            QStateMachine::onExit(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void beginSelectTransitions(QEvent* event) override {
        if (qstatemachine_beginselecttransitions_isbase) {
            qstatemachine_beginselecttransitions_isbase = false;
            QStateMachine::beginSelectTransitions(event);
        } else if (qstatemachine_beginselecttransitions_callback != nullptr) {
            qstatemachine_beginselecttransitions_callback(this, event);
        } else {
            QStateMachine::beginSelectTransitions(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void endSelectTransitions(QEvent* event) override {
        if (qstatemachine_endselecttransitions_isbase) {
            qstatemachine_endselecttransitions_isbase = false;
            QStateMachine::endSelectTransitions(event);
        } else if (qstatemachine_endselecttransitions_callback != nullptr) {
            qstatemachine_endselecttransitions_callback(this, event);
        } else {
            QStateMachine::endSelectTransitions(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void beginMicrostep(QEvent* event) override {
        if (qstatemachine_beginmicrostep_isbase) {
            qstatemachine_beginmicrostep_isbase = false;
            QStateMachine::beginMicrostep(event);
        } else if (qstatemachine_beginmicrostep_callback != nullptr) {
            qstatemachine_beginmicrostep_callback(this, event);
        } else {
            QStateMachine::beginMicrostep(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void endMicrostep(QEvent* event) override {
        if (qstatemachine_endmicrostep_isbase) {
            qstatemachine_endmicrostep_isbase = false;
            QStateMachine::endMicrostep(event);
        } else if (qstatemachine_endmicrostep_callback != nullptr) {
            qstatemachine_endmicrostep_callback(this, event);
        } else {
            QStateMachine::endMicrostep(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* e) override {
        if (qstatemachine_event_isbase) {
            qstatemachine_event_isbase = false;
            return QStateMachine::event(e);
        } else if (qstatemachine_event_callback != nullptr) {
            return qstatemachine_event_callback(this, e);
        } else {
            return QStateMachine::event(e);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qstatemachine_timerevent_isbase) {
            qstatemachine_timerevent_isbase = false;
            QStateMachine::timerEvent(event);
        } else if (qstatemachine_timerevent_callback != nullptr) {
            qstatemachine_timerevent_callback(this, event);
        } else {
            QStateMachine::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qstatemachine_childevent_isbase) {
            qstatemachine_childevent_isbase = false;
            QStateMachine::childEvent(event);
        } else if (qstatemachine_childevent_callback != nullptr) {
            qstatemachine_childevent_callback(this, event);
        } else {
            QStateMachine::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qstatemachine_customevent_isbase) {
            qstatemachine_customevent_isbase = false;
            QStateMachine::customEvent(event);
        } else if (qstatemachine_customevent_callback != nullptr) {
            qstatemachine_customevent_callback(this, event);
        } else {
            QStateMachine::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qstatemachine_connectnotify_isbase) {
            qstatemachine_connectnotify_isbase = false;
            QStateMachine::connectNotify(signal);
        } else if (qstatemachine_connectnotify_callback != nullptr) {
            qstatemachine_connectnotify_callback(this, signal);
        } else {
            QStateMachine::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qstatemachine_disconnectnotify_isbase) {
            qstatemachine_disconnectnotify_isbase = false;
            QStateMachine::disconnectNotify(signal);
        } else if (qstatemachine_disconnectnotify_callback != nullptr) {
            qstatemachine_disconnectnotify_callback(this, signal);
        } else {
            QStateMachine::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qstatemachine_sender_isbase) {
            qstatemachine_sender_isbase = false;
            return QStateMachine::sender();
        } else if (qstatemachine_sender_callback != nullptr) {
            return qstatemachine_sender_callback();
        } else {
            return QStateMachine::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qstatemachine_sendersignalindex_isbase) {
            qstatemachine_sendersignalindex_isbase = false;
            return QStateMachine::senderSignalIndex();
        } else if (qstatemachine_sendersignalindex_callback != nullptr) {
            return qstatemachine_sendersignalindex_callback();
        } else {
            return QStateMachine::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qstatemachine_receivers_isbase) {
            qstatemachine_receivers_isbase = false;
            return QStateMachine::receivers(signal);
        } else if (qstatemachine_receivers_callback != nullptr) {
            return qstatemachine_receivers_callback(this, signal);
        } else {
            return QStateMachine::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qstatemachine_issignalconnected_isbase) {
            qstatemachine_issignalconnected_isbase = false;
            return QStateMachine::isSignalConnected(signal);
        } else if (qstatemachine_issignalconnected_callback != nullptr) {
            return qstatemachine_issignalconnected_callback(this, signal);
        } else {
            return QStateMachine::isSignalConnected(signal);
        }
    }
};

#endif
