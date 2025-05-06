#pragma once
#ifndef SRCC_LIBVIRTUALQKEYEVENTTRANSITION_H
#define SRCC_LIBVIRTUALQKEYEVENTTRANSITION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

// This class is a subclass of QKeyEventTransition so that we can call protected methods
class VirtualQKeyEventTransition : public QKeyEventTransition {

  public:
    // Virtual class public types (including callbacks)
    using QKeyEventTransition_Metacall_Callback = int (*)(QKeyEventTransition*, QMetaObject::Call, int, void**);
    using QKeyEventTransition_OnTransition_Callback = void (*)(QKeyEventTransition*, QEvent*);
    using QKeyEventTransition_EventTest_Callback = bool (*)(QKeyEventTransition*, QEvent*);
    using QKeyEventTransition_Event_Callback = bool (*)(QKeyEventTransition*, QEvent*);
    using QKeyEventTransition_EventFilter_Callback = bool (*)(QKeyEventTransition*, QObject*, QEvent*);
    using QKeyEventTransition_TimerEvent_Callback = void (*)(QKeyEventTransition*, QTimerEvent*);
    using QKeyEventTransition_ChildEvent_Callback = void (*)(QKeyEventTransition*, QChildEvent*);
    using QKeyEventTransition_CustomEvent_Callback = void (*)(QKeyEventTransition*, QEvent*);
    using QKeyEventTransition_ConnectNotify_Callback = void (*)(QKeyEventTransition*, const QMetaMethod&);
    using QKeyEventTransition_DisconnectNotify_Callback = void (*)(QKeyEventTransition*, const QMetaMethod&);
    using QKeyEventTransition_Sender_Callback = QObject* (*)();
    using QKeyEventTransition_SenderSignalIndex_Callback = int (*)();
    using QKeyEventTransition_Receivers_Callback = int (*)(const QKeyEventTransition*, const char*);
    using QKeyEventTransition_IsSignalConnected_Callback = bool (*)(const QKeyEventTransition*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QKeyEventTransition_Metacall_Callback qkeyeventtransition_metacall_callback = nullptr;
    QKeyEventTransition_OnTransition_Callback qkeyeventtransition_ontransition_callback = nullptr;
    QKeyEventTransition_EventTest_Callback qkeyeventtransition_eventtest_callback = nullptr;
    QKeyEventTransition_Event_Callback qkeyeventtransition_event_callback = nullptr;
    QKeyEventTransition_EventFilter_Callback qkeyeventtransition_eventfilter_callback = nullptr;
    QKeyEventTransition_TimerEvent_Callback qkeyeventtransition_timerevent_callback = nullptr;
    QKeyEventTransition_ChildEvent_Callback qkeyeventtransition_childevent_callback = nullptr;
    QKeyEventTransition_CustomEvent_Callback qkeyeventtransition_customevent_callback = nullptr;
    QKeyEventTransition_ConnectNotify_Callback qkeyeventtransition_connectnotify_callback = nullptr;
    QKeyEventTransition_DisconnectNotify_Callback qkeyeventtransition_disconnectnotify_callback = nullptr;
    QKeyEventTransition_Sender_Callback qkeyeventtransition_sender_callback = nullptr;
    QKeyEventTransition_SenderSignalIndex_Callback qkeyeventtransition_sendersignalindex_callback = nullptr;
    QKeyEventTransition_Receivers_Callback qkeyeventtransition_receivers_callback = nullptr;
    QKeyEventTransition_IsSignalConnected_Callback qkeyeventtransition_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qkeyeventtransition_metacall_isbase = false;
    mutable bool qkeyeventtransition_ontransition_isbase = false;
    mutable bool qkeyeventtransition_eventtest_isbase = false;
    mutable bool qkeyeventtransition_event_isbase = false;
    mutable bool qkeyeventtransition_eventfilter_isbase = false;
    mutable bool qkeyeventtransition_timerevent_isbase = false;
    mutable bool qkeyeventtransition_childevent_isbase = false;
    mutable bool qkeyeventtransition_customevent_isbase = false;
    mutable bool qkeyeventtransition_connectnotify_isbase = false;
    mutable bool qkeyeventtransition_disconnectnotify_isbase = false;
    mutable bool qkeyeventtransition_sender_isbase = false;
    mutable bool qkeyeventtransition_sendersignalindex_isbase = false;
    mutable bool qkeyeventtransition_receivers_isbase = false;
    mutable bool qkeyeventtransition_issignalconnected_isbase = false;

  public:
    VirtualQKeyEventTransition() : QKeyEventTransition(){};
    VirtualQKeyEventTransition(QObject* object, QEvent::Type typeVal, int key) : QKeyEventTransition(object, typeVal, key){};
    VirtualQKeyEventTransition(QState* sourceState) : QKeyEventTransition(sourceState){};
    VirtualQKeyEventTransition(QObject* object, QEvent::Type typeVal, int key, QState* sourceState) : QKeyEventTransition(object, typeVal, key, sourceState){};

    ~VirtualQKeyEventTransition() {
        qkeyeventtransition_metacall_callback = nullptr;
        qkeyeventtransition_ontransition_callback = nullptr;
        qkeyeventtransition_eventtest_callback = nullptr;
        qkeyeventtransition_event_callback = nullptr;
        qkeyeventtransition_eventfilter_callback = nullptr;
        qkeyeventtransition_timerevent_callback = nullptr;
        qkeyeventtransition_childevent_callback = nullptr;
        qkeyeventtransition_customevent_callback = nullptr;
        qkeyeventtransition_connectnotify_callback = nullptr;
        qkeyeventtransition_disconnectnotify_callback = nullptr;
        qkeyeventtransition_sender_callback = nullptr;
        qkeyeventtransition_sendersignalindex_callback = nullptr;
        qkeyeventtransition_receivers_callback = nullptr;
        qkeyeventtransition_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQKeyEventTransition_Metacall_Callback(QKeyEventTransition_Metacall_Callback cb) { qkeyeventtransition_metacall_callback = cb; }
    void setQKeyEventTransition_OnTransition_Callback(QKeyEventTransition_OnTransition_Callback cb) { qkeyeventtransition_ontransition_callback = cb; }
    void setQKeyEventTransition_EventTest_Callback(QKeyEventTransition_EventTest_Callback cb) { qkeyeventtransition_eventtest_callback = cb; }
    void setQKeyEventTransition_Event_Callback(QKeyEventTransition_Event_Callback cb) { qkeyeventtransition_event_callback = cb; }
    void setQKeyEventTransition_EventFilter_Callback(QKeyEventTransition_EventFilter_Callback cb) { qkeyeventtransition_eventfilter_callback = cb; }
    void setQKeyEventTransition_TimerEvent_Callback(QKeyEventTransition_TimerEvent_Callback cb) { qkeyeventtransition_timerevent_callback = cb; }
    void setQKeyEventTransition_ChildEvent_Callback(QKeyEventTransition_ChildEvent_Callback cb) { qkeyeventtransition_childevent_callback = cb; }
    void setQKeyEventTransition_CustomEvent_Callback(QKeyEventTransition_CustomEvent_Callback cb) { qkeyeventtransition_customevent_callback = cb; }
    void setQKeyEventTransition_ConnectNotify_Callback(QKeyEventTransition_ConnectNotify_Callback cb) { qkeyeventtransition_connectnotify_callback = cb; }
    void setQKeyEventTransition_DisconnectNotify_Callback(QKeyEventTransition_DisconnectNotify_Callback cb) { qkeyeventtransition_disconnectnotify_callback = cb; }
    void setQKeyEventTransition_Sender_Callback(QKeyEventTransition_Sender_Callback cb) { qkeyeventtransition_sender_callback = cb; }
    void setQKeyEventTransition_SenderSignalIndex_Callback(QKeyEventTransition_SenderSignalIndex_Callback cb) { qkeyeventtransition_sendersignalindex_callback = cb; }
    void setQKeyEventTransition_Receivers_Callback(QKeyEventTransition_Receivers_Callback cb) { qkeyeventtransition_receivers_callback = cb; }
    void setQKeyEventTransition_IsSignalConnected_Callback(QKeyEventTransition_IsSignalConnected_Callback cb) { qkeyeventtransition_issignalconnected_callback = cb; }

    // Base flag setters
    void setQKeyEventTransition_Metacall_IsBase(bool value) const { qkeyeventtransition_metacall_isbase = value; }
    void setQKeyEventTransition_OnTransition_IsBase(bool value) const { qkeyeventtransition_ontransition_isbase = value; }
    void setQKeyEventTransition_EventTest_IsBase(bool value) const { qkeyeventtransition_eventtest_isbase = value; }
    void setQKeyEventTransition_Event_IsBase(bool value) const { qkeyeventtransition_event_isbase = value; }
    void setQKeyEventTransition_EventFilter_IsBase(bool value) const { qkeyeventtransition_eventfilter_isbase = value; }
    void setQKeyEventTransition_TimerEvent_IsBase(bool value) const { qkeyeventtransition_timerevent_isbase = value; }
    void setQKeyEventTransition_ChildEvent_IsBase(bool value) const { qkeyeventtransition_childevent_isbase = value; }
    void setQKeyEventTransition_CustomEvent_IsBase(bool value) const { qkeyeventtransition_customevent_isbase = value; }
    void setQKeyEventTransition_ConnectNotify_IsBase(bool value) const { qkeyeventtransition_connectnotify_isbase = value; }
    void setQKeyEventTransition_DisconnectNotify_IsBase(bool value) const { qkeyeventtransition_disconnectnotify_isbase = value; }
    void setQKeyEventTransition_Sender_IsBase(bool value) const { qkeyeventtransition_sender_isbase = value; }
    void setQKeyEventTransition_SenderSignalIndex_IsBase(bool value) const { qkeyeventtransition_sendersignalindex_isbase = value; }
    void setQKeyEventTransition_Receivers_IsBase(bool value) const { qkeyeventtransition_receivers_isbase = value; }
    void setQKeyEventTransition_IsSignalConnected_IsBase(bool value) const { qkeyeventtransition_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qkeyeventtransition_metacall_isbase) {
            qkeyeventtransition_metacall_isbase = false;
            return QKeyEventTransition::qt_metacall(param1, param2, param3);
        } else if (qkeyeventtransition_metacall_callback != nullptr) {
            return qkeyeventtransition_metacall_callback(this, param1, param2, param3);
        } else {
            return QKeyEventTransition::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void onTransition(QEvent* event) override {
        if (qkeyeventtransition_ontransition_isbase) {
            qkeyeventtransition_ontransition_isbase = false;
            QKeyEventTransition::onTransition(event);
        } else if (qkeyeventtransition_ontransition_callback != nullptr) {
            qkeyeventtransition_ontransition_callback(this, event);
        } else {
            QKeyEventTransition::onTransition(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventTest(QEvent* event) override {
        if (qkeyeventtransition_eventtest_isbase) {
            qkeyeventtransition_eventtest_isbase = false;
            return QKeyEventTransition::eventTest(event);
        } else if (qkeyeventtransition_eventtest_callback != nullptr) {
            return qkeyeventtransition_eventtest_callback(this, event);
        } else {
            return QKeyEventTransition::eventTest(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* e) override {
        if (qkeyeventtransition_event_isbase) {
            qkeyeventtransition_event_isbase = false;
            return QKeyEventTransition::event(e);
        } else if (qkeyeventtransition_event_callback != nullptr) {
            return qkeyeventtransition_event_callback(this, e);
        } else {
            return QKeyEventTransition::event(e);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qkeyeventtransition_eventfilter_isbase) {
            qkeyeventtransition_eventfilter_isbase = false;
            return QKeyEventTransition::eventFilter(watched, event);
        } else if (qkeyeventtransition_eventfilter_callback != nullptr) {
            return qkeyeventtransition_eventfilter_callback(this, watched, event);
        } else {
            return QKeyEventTransition::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qkeyeventtransition_timerevent_isbase) {
            qkeyeventtransition_timerevent_isbase = false;
            QKeyEventTransition::timerEvent(event);
        } else if (qkeyeventtransition_timerevent_callback != nullptr) {
            qkeyeventtransition_timerevent_callback(this, event);
        } else {
            QKeyEventTransition::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qkeyeventtransition_childevent_isbase) {
            qkeyeventtransition_childevent_isbase = false;
            QKeyEventTransition::childEvent(event);
        } else if (qkeyeventtransition_childevent_callback != nullptr) {
            qkeyeventtransition_childevent_callback(this, event);
        } else {
            QKeyEventTransition::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qkeyeventtransition_customevent_isbase) {
            qkeyeventtransition_customevent_isbase = false;
            QKeyEventTransition::customEvent(event);
        } else if (qkeyeventtransition_customevent_callback != nullptr) {
            qkeyeventtransition_customevent_callback(this, event);
        } else {
            QKeyEventTransition::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qkeyeventtransition_connectnotify_isbase) {
            qkeyeventtransition_connectnotify_isbase = false;
            QKeyEventTransition::connectNotify(signal);
        } else if (qkeyeventtransition_connectnotify_callback != nullptr) {
            qkeyeventtransition_connectnotify_callback(this, signal);
        } else {
            QKeyEventTransition::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qkeyeventtransition_disconnectnotify_isbase) {
            qkeyeventtransition_disconnectnotify_isbase = false;
            QKeyEventTransition::disconnectNotify(signal);
        } else if (qkeyeventtransition_disconnectnotify_callback != nullptr) {
            qkeyeventtransition_disconnectnotify_callback(this, signal);
        } else {
            QKeyEventTransition::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qkeyeventtransition_sender_isbase) {
            qkeyeventtransition_sender_isbase = false;
            return QKeyEventTransition::sender();
        } else if (qkeyeventtransition_sender_callback != nullptr) {
            return qkeyeventtransition_sender_callback();
        } else {
            return QKeyEventTransition::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qkeyeventtransition_sendersignalindex_isbase) {
            qkeyeventtransition_sendersignalindex_isbase = false;
            return QKeyEventTransition::senderSignalIndex();
        } else if (qkeyeventtransition_sendersignalindex_callback != nullptr) {
            return qkeyeventtransition_sendersignalindex_callback();
        } else {
            return QKeyEventTransition::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qkeyeventtransition_receivers_isbase) {
            qkeyeventtransition_receivers_isbase = false;
            return QKeyEventTransition::receivers(signal);
        } else if (qkeyeventtransition_receivers_callback != nullptr) {
            return qkeyeventtransition_receivers_callback(this, signal);
        } else {
            return QKeyEventTransition::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qkeyeventtransition_issignalconnected_isbase) {
            qkeyeventtransition_issignalconnected_isbase = false;
            return QKeyEventTransition::isSignalConnected(signal);
        } else if (qkeyeventtransition_issignalconnected_callback != nullptr) {
            return qkeyeventtransition_issignalconnected_callback(this, signal);
        } else {
            return QKeyEventTransition::isSignalConnected(signal);
        }
    }
};

#endif
