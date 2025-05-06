#pragma once
#ifndef SRCC_LIBVIRTUALQFINALSTATE_H
#define SRCC_LIBVIRTUALQFINALSTATE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

// This class is a subclass of QFinalState so that we can call protected methods
class VirtualQFinalState : public QFinalState {

  public:
    // Virtual class public types (including callbacks)
    using QFinalState_Metacall_Callback = int (*)(QFinalState*, QMetaObject::Call, int, void**);
    using QFinalState_OnEntry_Callback = void (*)(QFinalState*, QEvent*);
    using QFinalState_OnExit_Callback = void (*)(QFinalState*, QEvent*);
    using QFinalState_Event_Callback = bool (*)(QFinalState*, QEvent*);
    using QFinalState_EventFilter_Callback = bool (*)(QFinalState*, QObject*, QEvent*);
    using QFinalState_TimerEvent_Callback = void (*)(QFinalState*, QTimerEvent*);
    using QFinalState_ChildEvent_Callback = void (*)(QFinalState*, QChildEvent*);
    using QFinalState_CustomEvent_Callback = void (*)(QFinalState*, QEvent*);
    using QFinalState_ConnectNotify_Callback = void (*)(QFinalState*, const QMetaMethod&);
    using QFinalState_DisconnectNotify_Callback = void (*)(QFinalState*, const QMetaMethod&);
    using QFinalState_Sender_Callback = QObject* (*)();
    using QFinalState_SenderSignalIndex_Callback = int (*)();
    using QFinalState_Receivers_Callback = int (*)(const QFinalState*, const char*);
    using QFinalState_IsSignalConnected_Callback = bool (*)(const QFinalState*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QFinalState_Metacall_Callback qfinalstate_metacall_callback = nullptr;
    QFinalState_OnEntry_Callback qfinalstate_onentry_callback = nullptr;
    QFinalState_OnExit_Callback qfinalstate_onexit_callback = nullptr;
    QFinalState_Event_Callback qfinalstate_event_callback = nullptr;
    QFinalState_EventFilter_Callback qfinalstate_eventfilter_callback = nullptr;
    QFinalState_TimerEvent_Callback qfinalstate_timerevent_callback = nullptr;
    QFinalState_ChildEvent_Callback qfinalstate_childevent_callback = nullptr;
    QFinalState_CustomEvent_Callback qfinalstate_customevent_callback = nullptr;
    QFinalState_ConnectNotify_Callback qfinalstate_connectnotify_callback = nullptr;
    QFinalState_DisconnectNotify_Callback qfinalstate_disconnectnotify_callback = nullptr;
    QFinalState_Sender_Callback qfinalstate_sender_callback = nullptr;
    QFinalState_SenderSignalIndex_Callback qfinalstate_sendersignalindex_callback = nullptr;
    QFinalState_Receivers_Callback qfinalstate_receivers_callback = nullptr;
    QFinalState_IsSignalConnected_Callback qfinalstate_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qfinalstate_metacall_isbase = false;
    mutable bool qfinalstate_onentry_isbase = false;
    mutable bool qfinalstate_onexit_isbase = false;
    mutable bool qfinalstate_event_isbase = false;
    mutable bool qfinalstate_eventfilter_isbase = false;
    mutable bool qfinalstate_timerevent_isbase = false;
    mutable bool qfinalstate_childevent_isbase = false;
    mutable bool qfinalstate_customevent_isbase = false;
    mutable bool qfinalstate_connectnotify_isbase = false;
    mutable bool qfinalstate_disconnectnotify_isbase = false;
    mutable bool qfinalstate_sender_isbase = false;
    mutable bool qfinalstate_sendersignalindex_isbase = false;
    mutable bool qfinalstate_receivers_isbase = false;
    mutable bool qfinalstate_issignalconnected_isbase = false;

  public:
    VirtualQFinalState() : QFinalState(){};
    VirtualQFinalState(QState* parent) : QFinalState(parent){};

    ~VirtualQFinalState() {
        qfinalstate_metacall_callback = nullptr;
        qfinalstate_onentry_callback = nullptr;
        qfinalstate_onexit_callback = nullptr;
        qfinalstate_event_callback = nullptr;
        qfinalstate_eventfilter_callback = nullptr;
        qfinalstate_timerevent_callback = nullptr;
        qfinalstate_childevent_callback = nullptr;
        qfinalstate_customevent_callback = nullptr;
        qfinalstate_connectnotify_callback = nullptr;
        qfinalstate_disconnectnotify_callback = nullptr;
        qfinalstate_sender_callback = nullptr;
        qfinalstate_sendersignalindex_callback = nullptr;
        qfinalstate_receivers_callback = nullptr;
        qfinalstate_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQFinalState_Metacall_Callback(QFinalState_Metacall_Callback cb) { qfinalstate_metacall_callback = cb; }
    void setQFinalState_OnEntry_Callback(QFinalState_OnEntry_Callback cb) { qfinalstate_onentry_callback = cb; }
    void setQFinalState_OnExit_Callback(QFinalState_OnExit_Callback cb) { qfinalstate_onexit_callback = cb; }
    void setQFinalState_Event_Callback(QFinalState_Event_Callback cb) { qfinalstate_event_callback = cb; }
    void setQFinalState_EventFilter_Callback(QFinalState_EventFilter_Callback cb) { qfinalstate_eventfilter_callback = cb; }
    void setQFinalState_TimerEvent_Callback(QFinalState_TimerEvent_Callback cb) { qfinalstate_timerevent_callback = cb; }
    void setQFinalState_ChildEvent_Callback(QFinalState_ChildEvent_Callback cb) { qfinalstate_childevent_callback = cb; }
    void setQFinalState_CustomEvent_Callback(QFinalState_CustomEvent_Callback cb) { qfinalstate_customevent_callback = cb; }
    void setQFinalState_ConnectNotify_Callback(QFinalState_ConnectNotify_Callback cb) { qfinalstate_connectnotify_callback = cb; }
    void setQFinalState_DisconnectNotify_Callback(QFinalState_DisconnectNotify_Callback cb) { qfinalstate_disconnectnotify_callback = cb; }
    void setQFinalState_Sender_Callback(QFinalState_Sender_Callback cb) { qfinalstate_sender_callback = cb; }
    void setQFinalState_SenderSignalIndex_Callback(QFinalState_SenderSignalIndex_Callback cb) { qfinalstate_sendersignalindex_callback = cb; }
    void setQFinalState_Receivers_Callback(QFinalState_Receivers_Callback cb) { qfinalstate_receivers_callback = cb; }
    void setQFinalState_IsSignalConnected_Callback(QFinalState_IsSignalConnected_Callback cb) { qfinalstate_issignalconnected_callback = cb; }

    // Base flag setters
    void setQFinalState_Metacall_IsBase(bool value) const { qfinalstate_metacall_isbase = value; }
    void setQFinalState_OnEntry_IsBase(bool value) const { qfinalstate_onentry_isbase = value; }
    void setQFinalState_OnExit_IsBase(bool value) const { qfinalstate_onexit_isbase = value; }
    void setQFinalState_Event_IsBase(bool value) const { qfinalstate_event_isbase = value; }
    void setQFinalState_EventFilter_IsBase(bool value) const { qfinalstate_eventfilter_isbase = value; }
    void setQFinalState_TimerEvent_IsBase(bool value) const { qfinalstate_timerevent_isbase = value; }
    void setQFinalState_ChildEvent_IsBase(bool value) const { qfinalstate_childevent_isbase = value; }
    void setQFinalState_CustomEvent_IsBase(bool value) const { qfinalstate_customevent_isbase = value; }
    void setQFinalState_ConnectNotify_IsBase(bool value) const { qfinalstate_connectnotify_isbase = value; }
    void setQFinalState_DisconnectNotify_IsBase(bool value) const { qfinalstate_disconnectnotify_isbase = value; }
    void setQFinalState_Sender_IsBase(bool value) const { qfinalstate_sender_isbase = value; }
    void setQFinalState_SenderSignalIndex_IsBase(bool value) const { qfinalstate_sendersignalindex_isbase = value; }
    void setQFinalState_Receivers_IsBase(bool value) const { qfinalstate_receivers_isbase = value; }
    void setQFinalState_IsSignalConnected_IsBase(bool value) const { qfinalstate_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qfinalstate_metacall_isbase) {
            qfinalstate_metacall_isbase = false;
            return QFinalState::qt_metacall(param1, param2, param3);
        } else if (qfinalstate_metacall_callback != nullptr) {
            return qfinalstate_metacall_callback(this, param1, param2, param3);
        } else {
            return QFinalState::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void onEntry(QEvent* event) override {
        if (qfinalstate_onentry_isbase) {
            qfinalstate_onentry_isbase = false;
            QFinalState::onEntry(event);
        } else if (qfinalstate_onentry_callback != nullptr) {
            qfinalstate_onentry_callback(this, event);
        } else {
            QFinalState::onEntry(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void onExit(QEvent* event) override {
        if (qfinalstate_onexit_isbase) {
            qfinalstate_onexit_isbase = false;
            QFinalState::onExit(event);
        } else if (qfinalstate_onexit_callback != nullptr) {
            qfinalstate_onexit_callback(this, event);
        } else {
            QFinalState::onExit(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* e) override {
        if (qfinalstate_event_isbase) {
            qfinalstate_event_isbase = false;
            return QFinalState::event(e);
        } else if (qfinalstate_event_callback != nullptr) {
            return qfinalstate_event_callback(this, e);
        } else {
            return QFinalState::event(e);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qfinalstate_eventfilter_isbase) {
            qfinalstate_eventfilter_isbase = false;
            return QFinalState::eventFilter(watched, event);
        } else if (qfinalstate_eventfilter_callback != nullptr) {
            return qfinalstate_eventfilter_callback(this, watched, event);
        } else {
            return QFinalState::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qfinalstate_timerevent_isbase) {
            qfinalstate_timerevent_isbase = false;
            QFinalState::timerEvent(event);
        } else if (qfinalstate_timerevent_callback != nullptr) {
            qfinalstate_timerevent_callback(this, event);
        } else {
            QFinalState::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qfinalstate_childevent_isbase) {
            qfinalstate_childevent_isbase = false;
            QFinalState::childEvent(event);
        } else if (qfinalstate_childevent_callback != nullptr) {
            qfinalstate_childevent_callback(this, event);
        } else {
            QFinalState::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qfinalstate_customevent_isbase) {
            qfinalstate_customevent_isbase = false;
            QFinalState::customEvent(event);
        } else if (qfinalstate_customevent_callback != nullptr) {
            qfinalstate_customevent_callback(this, event);
        } else {
            QFinalState::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qfinalstate_connectnotify_isbase) {
            qfinalstate_connectnotify_isbase = false;
            QFinalState::connectNotify(signal);
        } else if (qfinalstate_connectnotify_callback != nullptr) {
            qfinalstate_connectnotify_callback(this, signal);
        } else {
            QFinalState::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qfinalstate_disconnectnotify_isbase) {
            qfinalstate_disconnectnotify_isbase = false;
            QFinalState::disconnectNotify(signal);
        } else if (qfinalstate_disconnectnotify_callback != nullptr) {
            qfinalstate_disconnectnotify_callback(this, signal);
        } else {
            QFinalState::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qfinalstate_sender_isbase) {
            qfinalstate_sender_isbase = false;
            return QFinalState::sender();
        } else if (qfinalstate_sender_callback != nullptr) {
            return qfinalstate_sender_callback();
        } else {
            return QFinalState::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qfinalstate_sendersignalindex_isbase) {
            qfinalstate_sendersignalindex_isbase = false;
            return QFinalState::senderSignalIndex();
        } else if (qfinalstate_sendersignalindex_callback != nullptr) {
            return qfinalstate_sendersignalindex_callback();
        } else {
            return QFinalState::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qfinalstate_receivers_isbase) {
            qfinalstate_receivers_isbase = false;
            return QFinalState::receivers(signal);
        } else if (qfinalstate_receivers_callback != nullptr) {
            return qfinalstate_receivers_callback(this, signal);
        } else {
            return QFinalState::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qfinalstate_issignalconnected_isbase) {
            qfinalstate_issignalconnected_isbase = false;
            return QFinalState::isSignalConnected(signal);
        } else if (qfinalstate_issignalconnected_callback != nullptr) {
            return qfinalstate_issignalconnected_callback(this, signal);
        } else {
            return QFinalState::isSignalConnected(signal);
        }
    }
};

#endif
