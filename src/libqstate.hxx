#pragma once
#ifndef SRCC_LIBVIRTUALQSTATE_H
#define SRCC_LIBVIRTUALQSTATE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

// This class is a subclass of QState so that we can call protected methods
class VirtualQState : public QState {

  public:
    // Virtual class public types (including callbacks)
    using QState_Metacall_Callback = int (*)(QState*, QMetaObject::Call, int, void**);
    using QState_OnEntry_Callback = void (*)(QState*, QEvent*);
    using QState_OnExit_Callback = void (*)(QState*, QEvent*);
    using QState_Event_Callback = bool (*)(QState*, QEvent*);
    using QState_EventFilter_Callback = bool (*)(QState*, QObject*, QEvent*);
    using QState_TimerEvent_Callback = void (*)(QState*, QTimerEvent*);
    using QState_ChildEvent_Callback = void (*)(QState*, QChildEvent*);
    using QState_CustomEvent_Callback = void (*)(QState*, QEvent*);
    using QState_ConnectNotify_Callback = void (*)(QState*, const QMetaMethod&);
    using QState_DisconnectNotify_Callback = void (*)(QState*, const QMetaMethod&);
    using QState_Sender_Callback = QObject* (*)();
    using QState_SenderSignalIndex_Callback = int (*)();
    using QState_Receivers_Callback = int (*)(const QState*, const char*);
    using QState_IsSignalConnected_Callback = bool (*)(const QState*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QState_Metacall_Callback qstate_metacall_callback = nullptr;
    QState_OnEntry_Callback qstate_onentry_callback = nullptr;
    QState_OnExit_Callback qstate_onexit_callback = nullptr;
    QState_Event_Callback qstate_event_callback = nullptr;
    QState_EventFilter_Callback qstate_eventfilter_callback = nullptr;
    QState_TimerEvent_Callback qstate_timerevent_callback = nullptr;
    QState_ChildEvent_Callback qstate_childevent_callback = nullptr;
    QState_CustomEvent_Callback qstate_customevent_callback = nullptr;
    QState_ConnectNotify_Callback qstate_connectnotify_callback = nullptr;
    QState_DisconnectNotify_Callback qstate_disconnectnotify_callback = nullptr;
    QState_Sender_Callback qstate_sender_callback = nullptr;
    QState_SenderSignalIndex_Callback qstate_sendersignalindex_callback = nullptr;
    QState_Receivers_Callback qstate_receivers_callback = nullptr;
    QState_IsSignalConnected_Callback qstate_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qstate_metacall_isbase = false;
    mutable bool qstate_onentry_isbase = false;
    mutable bool qstate_onexit_isbase = false;
    mutable bool qstate_event_isbase = false;
    mutable bool qstate_eventfilter_isbase = false;
    mutable bool qstate_timerevent_isbase = false;
    mutable bool qstate_childevent_isbase = false;
    mutable bool qstate_customevent_isbase = false;
    mutable bool qstate_connectnotify_isbase = false;
    mutable bool qstate_disconnectnotify_isbase = false;
    mutable bool qstate_sender_isbase = false;
    mutable bool qstate_sendersignalindex_isbase = false;
    mutable bool qstate_receivers_isbase = false;
    mutable bool qstate_issignalconnected_isbase = false;

  public:
    VirtualQState() : QState(){};
    VirtualQState(QState::ChildMode childMode) : QState(childMode){};
    VirtualQState(QState* parent) : QState(parent){};
    VirtualQState(QState::ChildMode childMode, QState* parent) : QState(childMode, parent){};

    ~VirtualQState() {
        qstate_metacall_callback = nullptr;
        qstate_onentry_callback = nullptr;
        qstate_onexit_callback = nullptr;
        qstate_event_callback = nullptr;
        qstate_eventfilter_callback = nullptr;
        qstate_timerevent_callback = nullptr;
        qstate_childevent_callback = nullptr;
        qstate_customevent_callback = nullptr;
        qstate_connectnotify_callback = nullptr;
        qstate_disconnectnotify_callback = nullptr;
        qstate_sender_callback = nullptr;
        qstate_sendersignalindex_callback = nullptr;
        qstate_receivers_callback = nullptr;
        qstate_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQState_Metacall_Callback(QState_Metacall_Callback cb) { qstate_metacall_callback = cb; }
    void setQState_OnEntry_Callback(QState_OnEntry_Callback cb) { qstate_onentry_callback = cb; }
    void setQState_OnExit_Callback(QState_OnExit_Callback cb) { qstate_onexit_callback = cb; }
    void setQState_Event_Callback(QState_Event_Callback cb) { qstate_event_callback = cb; }
    void setQState_EventFilter_Callback(QState_EventFilter_Callback cb) { qstate_eventfilter_callback = cb; }
    void setQState_TimerEvent_Callback(QState_TimerEvent_Callback cb) { qstate_timerevent_callback = cb; }
    void setQState_ChildEvent_Callback(QState_ChildEvent_Callback cb) { qstate_childevent_callback = cb; }
    void setQState_CustomEvent_Callback(QState_CustomEvent_Callback cb) { qstate_customevent_callback = cb; }
    void setQState_ConnectNotify_Callback(QState_ConnectNotify_Callback cb) { qstate_connectnotify_callback = cb; }
    void setQState_DisconnectNotify_Callback(QState_DisconnectNotify_Callback cb) { qstate_disconnectnotify_callback = cb; }
    void setQState_Sender_Callback(QState_Sender_Callback cb) { qstate_sender_callback = cb; }
    void setQState_SenderSignalIndex_Callback(QState_SenderSignalIndex_Callback cb) { qstate_sendersignalindex_callback = cb; }
    void setQState_Receivers_Callback(QState_Receivers_Callback cb) { qstate_receivers_callback = cb; }
    void setQState_IsSignalConnected_Callback(QState_IsSignalConnected_Callback cb) { qstate_issignalconnected_callback = cb; }

    // Base flag setters
    void setQState_Metacall_IsBase(bool value) const { qstate_metacall_isbase = value; }
    void setQState_OnEntry_IsBase(bool value) const { qstate_onentry_isbase = value; }
    void setQState_OnExit_IsBase(bool value) const { qstate_onexit_isbase = value; }
    void setQState_Event_IsBase(bool value) const { qstate_event_isbase = value; }
    void setQState_EventFilter_IsBase(bool value) const { qstate_eventfilter_isbase = value; }
    void setQState_TimerEvent_IsBase(bool value) const { qstate_timerevent_isbase = value; }
    void setQState_ChildEvent_IsBase(bool value) const { qstate_childevent_isbase = value; }
    void setQState_CustomEvent_IsBase(bool value) const { qstate_customevent_isbase = value; }
    void setQState_ConnectNotify_IsBase(bool value) const { qstate_connectnotify_isbase = value; }
    void setQState_DisconnectNotify_IsBase(bool value) const { qstate_disconnectnotify_isbase = value; }
    void setQState_Sender_IsBase(bool value) const { qstate_sender_isbase = value; }
    void setQState_SenderSignalIndex_IsBase(bool value) const { qstate_sendersignalindex_isbase = value; }
    void setQState_Receivers_IsBase(bool value) const { qstate_receivers_isbase = value; }
    void setQState_IsSignalConnected_IsBase(bool value) const { qstate_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qstate_metacall_isbase) {
            qstate_metacall_isbase = false;
            return QState::qt_metacall(param1, param2, param3);
        } else if (qstate_metacall_callback != nullptr) {
            return qstate_metacall_callback(this, param1, param2, param3);
        } else {
            return QState::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void onEntry(QEvent* event) override {
        if (qstate_onentry_isbase) {
            qstate_onentry_isbase = false;
            QState::onEntry(event);
        } else if (qstate_onentry_callback != nullptr) {
            qstate_onentry_callback(this, event);
        } else {
            QState::onEntry(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void onExit(QEvent* event) override {
        if (qstate_onexit_isbase) {
            qstate_onexit_isbase = false;
            QState::onExit(event);
        } else if (qstate_onexit_callback != nullptr) {
            qstate_onexit_callback(this, event);
        } else {
            QState::onExit(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* e) override {
        if (qstate_event_isbase) {
            qstate_event_isbase = false;
            return QState::event(e);
        } else if (qstate_event_callback != nullptr) {
            return qstate_event_callback(this, e);
        } else {
            return QState::event(e);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qstate_eventfilter_isbase) {
            qstate_eventfilter_isbase = false;
            return QState::eventFilter(watched, event);
        } else if (qstate_eventfilter_callback != nullptr) {
            return qstate_eventfilter_callback(this, watched, event);
        } else {
            return QState::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qstate_timerevent_isbase) {
            qstate_timerevent_isbase = false;
            QState::timerEvent(event);
        } else if (qstate_timerevent_callback != nullptr) {
            qstate_timerevent_callback(this, event);
        } else {
            QState::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qstate_childevent_isbase) {
            qstate_childevent_isbase = false;
            QState::childEvent(event);
        } else if (qstate_childevent_callback != nullptr) {
            qstate_childevent_callback(this, event);
        } else {
            QState::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qstate_customevent_isbase) {
            qstate_customevent_isbase = false;
            QState::customEvent(event);
        } else if (qstate_customevent_callback != nullptr) {
            qstate_customevent_callback(this, event);
        } else {
            QState::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qstate_connectnotify_isbase) {
            qstate_connectnotify_isbase = false;
            QState::connectNotify(signal);
        } else if (qstate_connectnotify_callback != nullptr) {
            qstate_connectnotify_callback(this, signal);
        } else {
            QState::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qstate_disconnectnotify_isbase) {
            qstate_disconnectnotify_isbase = false;
            QState::disconnectNotify(signal);
        } else if (qstate_disconnectnotify_callback != nullptr) {
            qstate_disconnectnotify_callback(this, signal);
        } else {
            QState::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qstate_sender_isbase) {
            qstate_sender_isbase = false;
            return QState::sender();
        } else if (qstate_sender_callback != nullptr) {
            return qstate_sender_callback();
        } else {
            return QState::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qstate_sendersignalindex_isbase) {
            qstate_sendersignalindex_isbase = false;
            return QState::senderSignalIndex();
        } else if (qstate_sendersignalindex_callback != nullptr) {
            return qstate_sendersignalindex_callback();
        } else {
            return QState::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qstate_receivers_isbase) {
            qstate_receivers_isbase = false;
            return QState::receivers(signal);
        } else if (qstate_receivers_callback != nullptr) {
            return qstate_receivers_callback(this, signal);
        } else {
            return QState::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qstate_issignalconnected_isbase) {
            qstate_issignalconnected_isbase = false;
            return QState::isSignalConnected(signal);
        } else if (qstate_issignalconnected_callback != nullptr) {
            return qstate_issignalconnected_callback(this, signal);
        } else {
            return QState::isSignalConnected(signal);
        }
    }
};

#endif
