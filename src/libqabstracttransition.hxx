#pragma once
#ifndef SRCC_LIBVIRTUALQABSTRACTTRANSITION_H
#define SRCC_LIBVIRTUALQABSTRACTTRANSITION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

// This class is a subclass of QAbstractTransition so that we can call protected methods
class VirtualQAbstractTransition : public QAbstractTransition {

  public:
    // Virtual class public types (including callbacks)
    using QAbstractTransition_Metacall_Callback = int (*)(QAbstractTransition*, QMetaObject::Call, int, void**);
    using QAbstractTransition_EventTest_Callback = bool (*)(QAbstractTransition*, QEvent*);
    using QAbstractTransition_OnTransition_Callback = void (*)(QAbstractTransition*, QEvent*);
    using QAbstractTransition_Event_Callback = bool (*)(QAbstractTransition*, QEvent*);
    using QAbstractTransition_EventFilter_Callback = bool (*)(QAbstractTransition*, QObject*, QEvent*);
    using QAbstractTransition_TimerEvent_Callback = void (*)(QAbstractTransition*, QTimerEvent*);
    using QAbstractTransition_ChildEvent_Callback = void (*)(QAbstractTransition*, QChildEvent*);
    using QAbstractTransition_CustomEvent_Callback = void (*)(QAbstractTransition*, QEvent*);
    using QAbstractTransition_ConnectNotify_Callback = void (*)(QAbstractTransition*, const QMetaMethod&);
    using QAbstractTransition_DisconnectNotify_Callback = void (*)(QAbstractTransition*, const QMetaMethod&);
    using QAbstractTransition_Sender_Callback = QObject* (*)();
    using QAbstractTransition_SenderSignalIndex_Callback = int (*)();
    using QAbstractTransition_Receivers_Callback = int (*)(const QAbstractTransition*, const char*);
    using QAbstractTransition_IsSignalConnected_Callback = bool (*)(const QAbstractTransition*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QAbstractTransition_Metacall_Callback qabstracttransition_metacall_callback = nullptr;
    QAbstractTransition_EventTest_Callback qabstracttransition_eventtest_callback = nullptr;
    QAbstractTransition_OnTransition_Callback qabstracttransition_ontransition_callback = nullptr;
    QAbstractTransition_Event_Callback qabstracttransition_event_callback = nullptr;
    QAbstractTransition_EventFilter_Callback qabstracttransition_eventfilter_callback = nullptr;
    QAbstractTransition_TimerEvent_Callback qabstracttransition_timerevent_callback = nullptr;
    QAbstractTransition_ChildEvent_Callback qabstracttransition_childevent_callback = nullptr;
    QAbstractTransition_CustomEvent_Callback qabstracttransition_customevent_callback = nullptr;
    QAbstractTransition_ConnectNotify_Callback qabstracttransition_connectnotify_callback = nullptr;
    QAbstractTransition_DisconnectNotify_Callback qabstracttransition_disconnectnotify_callback = nullptr;
    QAbstractTransition_Sender_Callback qabstracttransition_sender_callback = nullptr;
    QAbstractTransition_SenderSignalIndex_Callback qabstracttransition_sendersignalindex_callback = nullptr;
    QAbstractTransition_Receivers_Callback qabstracttransition_receivers_callback = nullptr;
    QAbstractTransition_IsSignalConnected_Callback qabstracttransition_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qabstracttransition_metacall_isbase = false;
    mutable bool qabstracttransition_eventtest_isbase = false;
    mutable bool qabstracttransition_ontransition_isbase = false;
    mutable bool qabstracttransition_event_isbase = false;
    mutable bool qabstracttransition_eventfilter_isbase = false;
    mutable bool qabstracttransition_timerevent_isbase = false;
    mutable bool qabstracttransition_childevent_isbase = false;
    mutable bool qabstracttransition_customevent_isbase = false;
    mutable bool qabstracttransition_connectnotify_isbase = false;
    mutable bool qabstracttransition_disconnectnotify_isbase = false;
    mutable bool qabstracttransition_sender_isbase = false;
    mutable bool qabstracttransition_sendersignalindex_isbase = false;
    mutable bool qabstracttransition_receivers_isbase = false;
    mutable bool qabstracttransition_issignalconnected_isbase = false;

  public:
    VirtualQAbstractTransition() : QAbstractTransition(){};
    VirtualQAbstractTransition(QState* sourceState) : QAbstractTransition(sourceState){};

    ~VirtualQAbstractTransition() {
        qabstracttransition_metacall_callback = nullptr;
        qabstracttransition_eventtest_callback = nullptr;
        qabstracttransition_ontransition_callback = nullptr;
        qabstracttransition_event_callback = nullptr;
        qabstracttransition_eventfilter_callback = nullptr;
        qabstracttransition_timerevent_callback = nullptr;
        qabstracttransition_childevent_callback = nullptr;
        qabstracttransition_customevent_callback = nullptr;
        qabstracttransition_connectnotify_callback = nullptr;
        qabstracttransition_disconnectnotify_callback = nullptr;
        qabstracttransition_sender_callback = nullptr;
        qabstracttransition_sendersignalindex_callback = nullptr;
        qabstracttransition_receivers_callback = nullptr;
        qabstracttransition_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQAbstractTransition_Metacall_Callback(QAbstractTransition_Metacall_Callback cb) { qabstracttransition_metacall_callback = cb; }
    void setQAbstractTransition_EventTest_Callback(QAbstractTransition_EventTest_Callback cb) { qabstracttransition_eventtest_callback = cb; }
    void setQAbstractTransition_OnTransition_Callback(QAbstractTransition_OnTransition_Callback cb) { qabstracttransition_ontransition_callback = cb; }
    void setQAbstractTransition_Event_Callback(QAbstractTransition_Event_Callback cb) { qabstracttransition_event_callback = cb; }
    void setQAbstractTransition_EventFilter_Callback(QAbstractTransition_EventFilter_Callback cb) { qabstracttransition_eventfilter_callback = cb; }
    void setQAbstractTransition_TimerEvent_Callback(QAbstractTransition_TimerEvent_Callback cb) { qabstracttransition_timerevent_callback = cb; }
    void setQAbstractTransition_ChildEvent_Callback(QAbstractTransition_ChildEvent_Callback cb) { qabstracttransition_childevent_callback = cb; }
    void setQAbstractTransition_CustomEvent_Callback(QAbstractTransition_CustomEvent_Callback cb) { qabstracttransition_customevent_callback = cb; }
    void setQAbstractTransition_ConnectNotify_Callback(QAbstractTransition_ConnectNotify_Callback cb) { qabstracttransition_connectnotify_callback = cb; }
    void setQAbstractTransition_DisconnectNotify_Callback(QAbstractTransition_DisconnectNotify_Callback cb) { qabstracttransition_disconnectnotify_callback = cb; }
    void setQAbstractTransition_Sender_Callback(QAbstractTransition_Sender_Callback cb) { qabstracttransition_sender_callback = cb; }
    void setQAbstractTransition_SenderSignalIndex_Callback(QAbstractTransition_SenderSignalIndex_Callback cb) { qabstracttransition_sendersignalindex_callback = cb; }
    void setQAbstractTransition_Receivers_Callback(QAbstractTransition_Receivers_Callback cb) { qabstracttransition_receivers_callback = cb; }
    void setQAbstractTransition_IsSignalConnected_Callback(QAbstractTransition_IsSignalConnected_Callback cb) { qabstracttransition_issignalconnected_callback = cb; }

    // Base flag setters
    void setQAbstractTransition_Metacall_IsBase(bool value) const { qabstracttransition_metacall_isbase = value; }
    void setQAbstractTransition_EventTest_IsBase(bool value) const { qabstracttransition_eventtest_isbase = value; }
    void setQAbstractTransition_OnTransition_IsBase(bool value) const { qabstracttransition_ontransition_isbase = value; }
    void setQAbstractTransition_Event_IsBase(bool value) const { qabstracttransition_event_isbase = value; }
    void setQAbstractTransition_EventFilter_IsBase(bool value) const { qabstracttransition_eventfilter_isbase = value; }
    void setQAbstractTransition_TimerEvent_IsBase(bool value) const { qabstracttransition_timerevent_isbase = value; }
    void setQAbstractTransition_ChildEvent_IsBase(bool value) const { qabstracttransition_childevent_isbase = value; }
    void setQAbstractTransition_CustomEvent_IsBase(bool value) const { qabstracttransition_customevent_isbase = value; }
    void setQAbstractTransition_ConnectNotify_IsBase(bool value) const { qabstracttransition_connectnotify_isbase = value; }
    void setQAbstractTransition_DisconnectNotify_IsBase(bool value) const { qabstracttransition_disconnectnotify_isbase = value; }
    void setQAbstractTransition_Sender_IsBase(bool value) const { qabstracttransition_sender_isbase = value; }
    void setQAbstractTransition_SenderSignalIndex_IsBase(bool value) const { qabstracttransition_sendersignalindex_isbase = value; }
    void setQAbstractTransition_Receivers_IsBase(bool value) const { qabstracttransition_receivers_isbase = value; }
    void setQAbstractTransition_IsSignalConnected_IsBase(bool value) const { qabstracttransition_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qabstracttransition_metacall_isbase) {
            qabstracttransition_metacall_isbase = false;
            return QAbstractTransition::qt_metacall(param1, param2, param3);
        } else if (qabstracttransition_metacall_callback != nullptr) {
            return qabstracttransition_metacall_callback(this, param1, param2, param3);
        } else {
            return QAbstractTransition::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventTest(QEvent* event) override {
        return qabstracttransition_eventtest_callback(this, event);
    }

    // Virtual method for C ABI access and custom callback
    virtual void onTransition(QEvent* event) override {
        qabstracttransition_ontransition_callback(this, event);
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* e) override {
        if (qabstracttransition_event_isbase) {
            qabstracttransition_event_isbase = false;
            return QAbstractTransition::event(e);
        } else if (qabstracttransition_event_callback != nullptr) {
            return qabstracttransition_event_callback(this, e);
        } else {
            return QAbstractTransition::event(e);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qabstracttransition_eventfilter_isbase) {
            qabstracttransition_eventfilter_isbase = false;
            return QAbstractTransition::eventFilter(watched, event);
        } else if (qabstracttransition_eventfilter_callback != nullptr) {
            return qabstracttransition_eventfilter_callback(this, watched, event);
        } else {
            return QAbstractTransition::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qabstracttransition_timerevent_isbase) {
            qabstracttransition_timerevent_isbase = false;
            QAbstractTransition::timerEvent(event);
        } else if (qabstracttransition_timerevent_callback != nullptr) {
            qabstracttransition_timerevent_callback(this, event);
        } else {
            QAbstractTransition::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qabstracttransition_childevent_isbase) {
            qabstracttransition_childevent_isbase = false;
            QAbstractTransition::childEvent(event);
        } else if (qabstracttransition_childevent_callback != nullptr) {
            qabstracttransition_childevent_callback(this, event);
        } else {
            QAbstractTransition::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qabstracttransition_customevent_isbase) {
            qabstracttransition_customevent_isbase = false;
            QAbstractTransition::customEvent(event);
        } else if (qabstracttransition_customevent_callback != nullptr) {
            qabstracttransition_customevent_callback(this, event);
        } else {
            QAbstractTransition::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qabstracttransition_connectnotify_isbase) {
            qabstracttransition_connectnotify_isbase = false;
            QAbstractTransition::connectNotify(signal);
        } else if (qabstracttransition_connectnotify_callback != nullptr) {
            qabstracttransition_connectnotify_callback(this, signal);
        } else {
            QAbstractTransition::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qabstracttransition_disconnectnotify_isbase) {
            qabstracttransition_disconnectnotify_isbase = false;
            QAbstractTransition::disconnectNotify(signal);
        } else if (qabstracttransition_disconnectnotify_callback != nullptr) {
            qabstracttransition_disconnectnotify_callback(this, signal);
        } else {
            QAbstractTransition::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qabstracttransition_sender_isbase) {
            qabstracttransition_sender_isbase = false;
            return QAbstractTransition::sender();
        } else if (qabstracttransition_sender_callback != nullptr) {
            return qabstracttransition_sender_callback();
        } else {
            return QAbstractTransition::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qabstracttransition_sendersignalindex_isbase) {
            qabstracttransition_sendersignalindex_isbase = false;
            return QAbstractTransition::senderSignalIndex();
        } else if (qabstracttransition_sendersignalindex_callback != nullptr) {
            return qabstracttransition_sendersignalindex_callback();
        } else {
            return QAbstractTransition::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qabstracttransition_receivers_isbase) {
            qabstracttransition_receivers_isbase = false;
            return QAbstractTransition::receivers(signal);
        } else if (qabstracttransition_receivers_callback != nullptr) {
            return qabstracttransition_receivers_callback(this, signal);
        } else {
            return QAbstractTransition::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qabstracttransition_issignalconnected_isbase) {
            qabstracttransition_issignalconnected_isbase = false;
            return QAbstractTransition::isSignalConnected(signal);
        } else if (qabstracttransition_issignalconnected_callback != nullptr) {
            return qabstracttransition_issignalconnected_callback(this, signal);
        } else {
            return QAbstractTransition::isSignalConnected(signal);
        }
    }
};

#endif
