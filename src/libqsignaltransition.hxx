#pragma once
#ifndef SRCC_LIBVIRTUALQSIGNALTRANSITION_H
#define SRCC_LIBVIRTUALQSIGNALTRANSITION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

// This class is a subclass of QSignalTransition so that we can call protected methods
class VirtualQSignalTransition : public QSignalTransition {

  public:
    // Virtual class public types (including callbacks)
    using QSignalTransition_Metacall_Callback = int (*)(QSignalTransition*, QMetaObject::Call, int, void**);
    using QSignalTransition_EventTest_Callback = bool (*)(QSignalTransition*, QEvent*);
    using QSignalTransition_OnTransition_Callback = void (*)(QSignalTransition*, QEvent*);
    using QSignalTransition_Event_Callback = bool (*)(QSignalTransition*, QEvent*);
    using QSignalTransition_EventFilter_Callback = bool (*)(QSignalTransition*, QObject*, QEvent*);
    using QSignalTransition_TimerEvent_Callback = void (*)(QSignalTransition*, QTimerEvent*);
    using QSignalTransition_ChildEvent_Callback = void (*)(QSignalTransition*, QChildEvent*);
    using QSignalTransition_CustomEvent_Callback = void (*)(QSignalTransition*, QEvent*);
    using QSignalTransition_ConnectNotify_Callback = void (*)(QSignalTransition*, const QMetaMethod&);
    using QSignalTransition_DisconnectNotify_Callback = void (*)(QSignalTransition*, const QMetaMethod&);
    using QSignalTransition_Sender_Callback = QObject* (*)();
    using QSignalTransition_SenderSignalIndex_Callback = int (*)();
    using QSignalTransition_Receivers_Callback = int (*)(const QSignalTransition*, const char*);
    using QSignalTransition_IsSignalConnected_Callback = bool (*)(const QSignalTransition*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QSignalTransition_Metacall_Callback qsignaltransition_metacall_callback = nullptr;
    QSignalTransition_EventTest_Callback qsignaltransition_eventtest_callback = nullptr;
    QSignalTransition_OnTransition_Callback qsignaltransition_ontransition_callback = nullptr;
    QSignalTransition_Event_Callback qsignaltransition_event_callback = nullptr;
    QSignalTransition_EventFilter_Callback qsignaltransition_eventfilter_callback = nullptr;
    QSignalTransition_TimerEvent_Callback qsignaltransition_timerevent_callback = nullptr;
    QSignalTransition_ChildEvent_Callback qsignaltransition_childevent_callback = nullptr;
    QSignalTransition_CustomEvent_Callback qsignaltransition_customevent_callback = nullptr;
    QSignalTransition_ConnectNotify_Callback qsignaltransition_connectnotify_callback = nullptr;
    QSignalTransition_DisconnectNotify_Callback qsignaltransition_disconnectnotify_callback = nullptr;
    QSignalTransition_Sender_Callback qsignaltransition_sender_callback = nullptr;
    QSignalTransition_SenderSignalIndex_Callback qsignaltransition_sendersignalindex_callback = nullptr;
    QSignalTransition_Receivers_Callback qsignaltransition_receivers_callback = nullptr;
    QSignalTransition_IsSignalConnected_Callback qsignaltransition_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qsignaltransition_metacall_isbase = false;
    mutable bool qsignaltransition_eventtest_isbase = false;
    mutable bool qsignaltransition_ontransition_isbase = false;
    mutable bool qsignaltransition_event_isbase = false;
    mutable bool qsignaltransition_eventfilter_isbase = false;
    mutable bool qsignaltransition_timerevent_isbase = false;
    mutable bool qsignaltransition_childevent_isbase = false;
    mutable bool qsignaltransition_customevent_isbase = false;
    mutable bool qsignaltransition_connectnotify_isbase = false;
    mutable bool qsignaltransition_disconnectnotify_isbase = false;
    mutable bool qsignaltransition_sender_isbase = false;
    mutable bool qsignaltransition_sendersignalindex_isbase = false;
    mutable bool qsignaltransition_receivers_isbase = false;
    mutable bool qsignaltransition_issignalconnected_isbase = false;

  public:
    VirtualQSignalTransition() : QSignalTransition(){};
    VirtualQSignalTransition(const QObject* sender, const char* signal) : QSignalTransition(sender, signal){};
    VirtualQSignalTransition(QState* sourceState) : QSignalTransition(sourceState){};
    VirtualQSignalTransition(const QObject* sender, const char* signal, QState* sourceState) : QSignalTransition(sender, signal, sourceState){};

    ~VirtualQSignalTransition() {
        qsignaltransition_metacall_callback = nullptr;
        qsignaltransition_eventtest_callback = nullptr;
        qsignaltransition_ontransition_callback = nullptr;
        qsignaltransition_event_callback = nullptr;
        qsignaltransition_eventfilter_callback = nullptr;
        qsignaltransition_timerevent_callback = nullptr;
        qsignaltransition_childevent_callback = nullptr;
        qsignaltransition_customevent_callback = nullptr;
        qsignaltransition_connectnotify_callback = nullptr;
        qsignaltransition_disconnectnotify_callback = nullptr;
        qsignaltransition_sender_callback = nullptr;
        qsignaltransition_sendersignalindex_callback = nullptr;
        qsignaltransition_receivers_callback = nullptr;
        qsignaltransition_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQSignalTransition_Metacall_Callback(QSignalTransition_Metacall_Callback cb) { qsignaltransition_metacall_callback = cb; }
    void setQSignalTransition_EventTest_Callback(QSignalTransition_EventTest_Callback cb) { qsignaltransition_eventtest_callback = cb; }
    void setQSignalTransition_OnTransition_Callback(QSignalTransition_OnTransition_Callback cb) { qsignaltransition_ontransition_callback = cb; }
    void setQSignalTransition_Event_Callback(QSignalTransition_Event_Callback cb) { qsignaltransition_event_callback = cb; }
    void setQSignalTransition_EventFilter_Callback(QSignalTransition_EventFilter_Callback cb) { qsignaltransition_eventfilter_callback = cb; }
    void setQSignalTransition_TimerEvent_Callback(QSignalTransition_TimerEvent_Callback cb) { qsignaltransition_timerevent_callback = cb; }
    void setQSignalTransition_ChildEvent_Callback(QSignalTransition_ChildEvent_Callback cb) { qsignaltransition_childevent_callback = cb; }
    void setQSignalTransition_CustomEvent_Callback(QSignalTransition_CustomEvent_Callback cb) { qsignaltransition_customevent_callback = cb; }
    void setQSignalTransition_ConnectNotify_Callback(QSignalTransition_ConnectNotify_Callback cb) { qsignaltransition_connectnotify_callback = cb; }
    void setQSignalTransition_DisconnectNotify_Callback(QSignalTransition_DisconnectNotify_Callback cb) { qsignaltransition_disconnectnotify_callback = cb; }
    void setQSignalTransition_Sender_Callback(QSignalTransition_Sender_Callback cb) { qsignaltransition_sender_callback = cb; }
    void setQSignalTransition_SenderSignalIndex_Callback(QSignalTransition_SenderSignalIndex_Callback cb) { qsignaltransition_sendersignalindex_callback = cb; }
    void setQSignalTransition_Receivers_Callback(QSignalTransition_Receivers_Callback cb) { qsignaltransition_receivers_callback = cb; }
    void setQSignalTransition_IsSignalConnected_Callback(QSignalTransition_IsSignalConnected_Callback cb) { qsignaltransition_issignalconnected_callback = cb; }

    // Base flag setters
    void setQSignalTransition_Metacall_IsBase(bool value) const { qsignaltransition_metacall_isbase = value; }
    void setQSignalTransition_EventTest_IsBase(bool value) const { qsignaltransition_eventtest_isbase = value; }
    void setQSignalTransition_OnTransition_IsBase(bool value) const { qsignaltransition_ontransition_isbase = value; }
    void setQSignalTransition_Event_IsBase(bool value) const { qsignaltransition_event_isbase = value; }
    void setQSignalTransition_EventFilter_IsBase(bool value) const { qsignaltransition_eventfilter_isbase = value; }
    void setQSignalTransition_TimerEvent_IsBase(bool value) const { qsignaltransition_timerevent_isbase = value; }
    void setQSignalTransition_ChildEvent_IsBase(bool value) const { qsignaltransition_childevent_isbase = value; }
    void setQSignalTransition_CustomEvent_IsBase(bool value) const { qsignaltransition_customevent_isbase = value; }
    void setQSignalTransition_ConnectNotify_IsBase(bool value) const { qsignaltransition_connectnotify_isbase = value; }
    void setQSignalTransition_DisconnectNotify_IsBase(bool value) const { qsignaltransition_disconnectnotify_isbase = value; }
    void setQSignalTransition_Sender_IsBase(bool value) const { qsignaltransition_sender_isbase = value; }
    void setQSignalTransition_SenderSignalIndex_IsBase(bool value) const { qsignaltransition_sendersignalindex_isbase = value; }
    void setQSignalTransition_Receivers_IsBase(bool value) const { qsignaltransition_receivers_isbase = value; }
    void setQSignalTransition_IsSignalConnected_IsBase(bool value) const { qsignaltransition_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qsignaltransition_metacall_isbase) {
            qsignaltransition_metacall_isbase = false;
            return QSignalTransition::qt_metacall(param1, param2, param3);
        } else if (qsignaltransition_metacall_callback != nullptr) {
            return qsignaltransition_metacall_callback(this, param1, param2, param3);
        } else {
            return QSignalTransition::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventTest(QEvent* event) override {
        if (qsignaltransition_eventtest_isbase) {
            qsignaltransition_eventtest_isbase = false;
            return QSignalTransition::eventTest(event);
        } else if (qsignaltransition_eventtest_callback != nullptr) {
            return qsignaltransition_eventtest_callback(this, event);
        } else {
            return QSignalTransition::eventTest(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void onTransition(QEvent* event) override {
        if (qsignaltransition_ontransition_isbase) {
            qsignaltransition_ontransition_isbase = false;
            QSignalTransition::onTransition(event);
        } else if (qsignaltransition_ontransition_callback != nullptr) {
            qsignaltransition_ontransition_callback(this, event);
        } else {
            QSignalTransition::onTransition(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* e) override {
        if (qsignaltransition_event_isbase) {
            qsignaltransition_event_isbase = false;
            return QSignalTransition::event(e);
        } else if (qsignaltransition_event_callback != nullptr) {
            return qsignaltransition_event_callback(this, e);
        } else {
            return QSignalTransition::event(e);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qsignaltransition_eventfilter_isbase) {
            qsignaltransition_eventfilter_isbase = false;
            return QSignalTransition::eventFilter(watched, event);
        } else if (qsignaltransition_eventfilter_callback != nullptr) {
            return qsignaltransition_eventfilter_callback(this, watched, event);
        } else {
            return QSignalTransition::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qsignaltransition_timerevent_isbase) {
            qsignaltransition_timerevent_isbase = false;
            QSignalTransition::timerEvent(event);
        } else if (qsignaltransition_timerevent_callback != nullptr) {
            qsignaltransition_timerevent_callback(this, event);
        } else {
            QSignalTransition::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qsignaltransition_childevent_isbase) {
            qsignaltransition_childevent_isbase = false;
            QSignalTransition::childEvent(event);
        } else if (qsignaltransition_childevent_callback != nullptr) {
            qsignaltransition_childevent_callback(this, event);
        } else {
            QSignalTransition::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qsignaltransition_customevent_isbase) {
            qsignaltransition_customevent_isbase = false;
            QSignalTransition::customEvent(event);
        } else if (qsignaltransition_customevent_callback != nullptr) {
            qsignaltransition_customevent_callback(this, event);
        } else {
            QSignalTransition::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qsignaltransition_connectnotify_isbase) {
            qsignaltransition_connectnotify_isbase = false;
            QSignalTransition::connectNotify(signal);
        } else if (qsignaltransition_connectnotify_callback != nullptr) {
            qsignaltransition_connectnotify_callback(this, signal);
        } else {
            QSignalTransition::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qsignaltransition_disconnectnotify_isbase) {
            qsignaltransition_disconnectnotify_isbase = false;
            QSignalTransition::disconnectNotify(signal);
        } else if (qsignaltransition_disconnectnotify_callback != nullptr) {
            qsignaltransition_disconnectnotify_callback(this, signal);
        } else {
            QSignalTransition::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qsignaltransition_sender_isbase) {
            qsignaltransition_sender_isbase = false;
            return QSignalTransition::sender();
        } else if (qsignaltransition_sender_callback != nullptr) {
            return qsignaltransition_sender_callback();
        } else {
            return QSignalTransition::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qsignaltransition_sendersignalindex_isbase) {
            qsignaltransition_sendersignalindex_isbase = false;
            return QSignalTransition::senderSignalIndex();
        } else if (qsignaltransition_sendersignalindex_callback != nullptr) {
            return qsignaltransition_sendersignalindex_callback();
        } else {
            return QSignalTransition::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qsignaltransition_receivers_isbase) {
            qsignaltransition_receivers_isbase = false;
            return QSignalTransition::receivers(signal);
        } else if (qsignaltransition_receivers_callback != nullptr) {
            return qsignaltransition_receivers_callback(this, signal);
        } else {
            return QSignalTransition::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qsignaltransition_issignalconnected_isbase) {
            qsignaltransition_issignalconnected_isbase = false;
            return QSignalTransition::isSignalConnected(signal);
        } else if (qsignaltransition_issignalconnected_callback != nullptr) {
            return qsignaltransition_issignalconnected_callback(this, signal);
        } else {
            return QSignalTransition::isSignalConnected(signal);
        }
    }
};

#endif
