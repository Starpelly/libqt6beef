#pragma once
#ifndef SRCC_LIBVIRTUALQEVENTTRANSITION_H
#define SRCC_LIBVIRTUALQEVENTTRANSITION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

// This class is a subclass of QEventTransition so that we can call protected methods
class VirtualQEventTransition : public QEventTransition {

  public:
    // Virtual class public types (including callbacks)
    using QEventTransition_Metacall_Callback = int (*)(QEventTransition*, QMetaObject::Call, int, void**);
    using QEventTransition_EventTest_Callback = bool (*)(QEventTransition*, QEvent*);
    using QEventTransition_OnTransition_Callback = void (*)(QEventTransition*, QEvent*);
    using QEventTransition_Event_Callback = bool (*)(QEventTransition*, QEvent*);
    using QEventTransition_EventFilter_Callback = bool (*)(QEventTransition*, QObject*, QEvent*);
    using QEventTransition_TimerEvent_Callback = void (*)(QEventTransition*, QTimerEvent*);
    using QEventTransition_ChildEvent_Callback = void (*)(QEventTransition*, QChildEvent*);
    using QEventTransition_CustomEvent_Callback = void (*)(QEventTransition*, QEvent*);
    using QEventTransition_ConnectNotify_Callback = void (*)(QEventTransition*, const QMetaMethod&);
    using QEventTransition_DisconnectNotify_Callback = void (*)(QEventTransition*, const QMetaMethod&);
    using QEventTransition_Sender_Callback = QObject* (*)();
    using QEventTransition_SenderSignalIndex_Callback = int (*)();
    using QEventTransition_Receivers_Callback = int (*)(const QEventTransition*, const char*);
    using QEventTransition_IsSignalConnected_Callback = bool (*)(const QEventTransition*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QEventTransition_Metacall_Callback qeventtransition_metacall_callback = nullptr;
    QEventTransition_EventTest_Callback qeventtransition_eventtest_callback = nullptr;
    QEventTransition_OnTransition_Callback qeventtransition_ontransition_callback = nullptr;
    QEventTransition_Event_Callback qeventtransition_event_callback = nullptr;
    QEventTransition_EventFilter_Callback qeventtransition_eventfilter_callback = nullptr;
    QEventTransition_TimerEvent_Callback qeventtransition_timerevent_callback = nullptr;
    QEventTransition_ChildEvent_Callback qeventtransition_childevent_callback = nullptr;
    QEventTransition_CustomEvent_Callback qeventtransition_customevent_callback = nullptr;
    QEventTransition_ConnectNotify_Callback qeventtransition_connectnotify_callback = nullptr;
    QEventTransition_DisconnectNotify_Callback qeventtransition_disconnectnotify_callback = nullptr;
    QEventTransition_Sender_Callback qeventtransition_sender_callback = nullptr;
    QEventTransition_SenderSignalIndex_Callback qeventtransition_sendersignalindex_callback = nullptr;
    QEventTransition_Receivers_Callback qeventtransition_receivers_callback = nullptr;
    QEventTransition_IsSignalConnected_Callback qeventtransition_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qeventtransition_metacall_isbase = false;
    mutable bool qeventtransition_eventtest_isbase = false;
    mutable bool qeventtransition_ontransition_isbase = false;
    mutable bool qeventtransition_event_isbase = false;
    mutable bool qeventtransition_eventfilter_isbase = false;
    mutable bool qeventtransition_timerevent_isbase = false;
    mutable bool qeventtransition_childevent_isbase = false;
    mutable bool qeventtransition_customevent_isbase = false;
    mutable bool qeventtransition_connectnotify_isbase = false;
    mutable bool qeventtransition_disconnectnotify_isbase = false;
    mutable bool qeventtransition_sender_isbase = false;
    mutable bool qeventtransition_sendersignalindex_isbase = false;
    mutable bool qeventtransition_receivers_isbase = false;
    mutable bool qeventtransition_issignalconnected_isbase = false;

  public:
    VirtualQEventTransition() : QEventTransition(){};
    VirtualQEventTransition(QObject* object, QEvent::Type typeVal) : QEventTransition(object, typeVal){};
    VirtualQEventTransition(QState* sourceState) : QEventTransition(sourceState){};
    VirtualQEventTransition(QObject* object, QEvent::Type typeVal, QState* sourceState) : QEventTransition(object, typeVal, sourceState){};

    ~VirtualQEventTransition() {
        qeventtransition_metacall_callback = nullptr;
        qeventtransition_eventtest_callback = nullptr;
        qeventtransition_ontransition_callback = nullptr;
        qeventtransition_event_callback = nullptr;
        qeventtransition_eventfilter_callback = nullptr;
        qeventtransition_timerevent_callback = nullptr;
        qeventtransition_childevent_callback = nullptr;
        qeventtransition_customevent_callback = nullptr;
        qeventtransition_connectnotify_callback = nullptr;
        qeventtransition_disconnectnotify_callback = nullptr;
        qeventtransition_sender_callback = nullptr;
        qeventtransition_sendersignalindex_callback = nullptr;
        qeventtransition_receivers_callback = nullptr;
        qeventtransition_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQEventTransition_Metacall_Callback(QEventTransition_Metacall_Callback cb) { qeventtransition_metacall_callback = cb; }
    void setQEventTransition_EventTest_Callback(QEventTransition_EventTest_Callback cb) { qeventtransition_eventtest_callback = cb; }
    void setQEventTransition_OnTransition_Callback(QEventTransition_OnTransition_Callback cb) { qeventtransition_ontransition_callback = cb; }
    void setQEventTransition_Event_Callback(QEventTransition_Event_Callback cb) { qeventtransition_event_callback = cb; }
    void setQEventTransition_EventFilter_Callback(QEventTransition_EventFilter_Callback cb) { qeventtransition_eventfilter_callback = cb; }
    void setQEventTransition_TimerEvent_Callback(QEventTransition_TimerEvent_Callback cb) { qeventtransition_timerevent_callback = cb; }
    void setQEventTransition_ChildEvent_Callback(QEventTransition_ChildEvent_Callback cb) { qeventtransition_childevent_callback = cb; }
    void setQEventTransition_CustomEvent_Callback(QEventTransition_CustomEvent_Callback cb) { qeventtransition_customevent_callback = cb; }
    void setQEventTransition_ConnectNotify_Callback(QEventTransition_ConnectNotify_Callback cb) { qeventtransition_connectnotify_callback = cb; }
    void setQEventTransition_DisconnectNotify_Callback(QEventTransition_DisconnectNotify_Callback cb) { qeventtransition_disconnectnotify_callback = cb; }
    void setQEventTransition_Sender_Callback(QEventTransition_Sender_Callback cb) { qeventtransition_sender_callback = cb; }
    void setQEventTransition_SenderSignalIndex_Callback(QEventTransition_SenderSignalIndex_Callback cb) { qeventtransition_sendersignalindex_callback = cb; }
    void setQEventTransition_Receivers_Callback(QEventTransition_Receivers_Callback cb) { qeventtransition_receivers_callback = cb; }
    void setQEventTransition_IsSignalConnected_Callback(QEventTransition_IsSignalConnected_Callback cb) { qeventtransition_issignalconnected_callback = cb; }

    // Base flag setters
    void setQEventTransition_Metacall_IsBase(bool value) const { qeventtransition_metacall_isbase = value; }
    void setQEventTransition_EventTest_IsBase(bool value) const { qeventtransition_eventtest_isbase = value; }
    void setQEventTransition_OnTransition_IsBase(bool value) const { qeventtransition_ontransition_isbase = value; }
    void setQEventTransition_Event_IsBase(bool value) const { qeventtransition_event_isbase = value; }
    void setQEventTransition_EventFilter_IsBase(bool value) const { qeventtransition_eventfilter_isbase = value; }
    void setQEventTransition_TimerEvent_IsBase(bool value) const { qeventtransition_timerevent_isbase = value; }
    void setQEventTransition_ChildEvent_IsBase(bool value) const { qeventtransition_childevent_isbase = value; }
    void setQEventTransition_CustomEvent_IsBase(bool value) const { qeventtransition_customevent_isbase = value; }
    void setQEventTransition_ConnectNotify_IsBase(bool value) const { qeventtransition_connectnotify_isbase = value; }
    void setQEventTransition_DisconnectNotify_IsBase(bool value) const { qeventtransition_disconnectnotify_isbase = value; }
    void setQEventTransition_Sender_IsBase(bool value) const { qeventtransition_sender_isbase = value; }
    void setQEventTransition_SenderSignalIndex_IsBase(bool value) const { qeventtransition_sendersignalindex_isbase = value; }
    void setQEventTransition_Receivers_IsBase(bool value) const { qeventtransition_receivers_isbase = value; }
    void setQEventTransition_IsSignalConnected_IsBase(bool value) const { qeventtransition_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qeventtransition_metacall_isbase) {
            qeventtransition_metacall_isbase = false;
            return QEventTransition::qt_metacall(param1, param2, param3);
        } else if (qeventtransition_metacall_callback != nullptr) {
            return qeventtransition_metacall_callback(this, param1, param2, param3);
        } else {
            return QEventTransition::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventTest(QEvent* event) override {
        if (qeventtransition_eventtest_isbase) {
            qeventtransition_eventtest_isbase = false;
            return QEventTransition::eventTest(event);
        } else if (qeventtransition_eventtest_callback != nullptr) {
            return qeventtransition_eventtest_callback(this, event);
        } else {
            return QEventTransition::eventTest(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void onTransition(QEvent* event) override {
        if (qeventtransition_ontransition_isbase) {
            qeventtransition_ontransition_isbase = false;
            QEventTransition::onTransition(event);
        } else if (qeventtransition_ontransition_callback != nullptr) {
            qeventtransition_ontransition_callback(this, event);
        } else {
            QEventTransition::onTransition(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* e) override {
        if (qeventtransition_event_isbase) {
            qeventtransition_event_isbase = false;
            return QEventTransition::event(e);
        } else if (qeventtransition_event_callback != nullptr) {
            return qeventtransition_event_callback(this, e);
        } else {
            return QEventTransition::event(e);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qeventtransition_eventfilter_isbase) {
            qeventtransition_eventfilter_isbase = false;
            return QEventTransition::eventFilter(watched, event);
        } else if (qeventtransition_eventfilter_callback != nullptr) {
            return qeventtransition_eventfilter_callback(this, watched, event);
        } else {
            return QEventTransition::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qeventtransition_timerevent_isbase) {
            qeventtransition_timerevent_isbase = false;
            QEventTransition::timerEvent(event);
        } else if (qeventtransition_timerevent_callback != nullptr) {
            qeventtransition_timerevent_callback(this, event);
        } else {
            QEventTransition::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qeventtransition_childevent_isbase) {
            qeventtransition_childevent_isbase = false;
            QEventTransition::childEvent(event);
        } else if (qeventtransition_childevent_callback != nullptr) {
            qeventtransition_childevent_callback(this, event);
        } else {
            QEventTransition::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qeventtransition_customevent_isbase) {
            qeventtransition_customevent_isbase = false;
            QEventTransition::customEvent(event);
        } else if (qeventtransition_customevent_callback != nullptr) {
            qeventtransition_customevent_callback(this, event);
        } else {
            QEventTransition::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qeventtransition_connectnotify_isbase) {
            qeventtransition_connectnotify_isbase = false;
            QEventTransition::connectNotify(signal);
        } else if (qeventtransition_connectnotify_callback != nullptr) {
            qeventtransition_connectnotify_callback(this, signal);
        } else {
            QEventTransition::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qeventtransition_disconnectnotify_isbase) {
            qeventtransition_disconnectnotify_isbase = false;
            QEventTransition::disconnectNotify(signal);
        } else if (qeventtransition_disconnectnotify_callback != nullptr) {
            qeventtransition_disconnectnotify_callback(this, signal);
        } else {
            QEventTransition::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qeventtransition_sender_isbase) {
            qeventtransition_sender_isbase = false;
            return QEventTransition::sender();
        } else if (qeventtransition_sender_callback != nullptr) {
            return qeventtransition_sender_callback();
        } else {
            return QEventTransition::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qeventtransition_sendersignalindex_isbase) {
            qeventtransition_sendersignalindex_isbase = false;
            return QEventTransition::senderSignalIndex();
        } else if (qeventtransition_sendersignalindex_callback != nullptr) {
            return qeventtransition_sendersignalindex_callback();
        } else {
            return QEventTransition::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qeventtransition_receivers_isbase) {
            qeventtransition_receivers_isbase = false;
            return QEventTransition::receivers(signal);
        } else if (qeventtransition_receivers_callback != nullptr) {
            return qeventtransition_receivers_callback(this, signal);
        } else {
            return QEventTransition::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qeventtransition_issignalconnected_isbase) {
            qeventtransition_issignalconnected_isbase = false;
            return QEventTransition::isSignalConnected(signal);
        } else if (qeventtransition_issignalconnected_callback != nullptr) {
            return qeventtransition_issignalconnected_callback(this, signal);
        } else {
            return QEventTransition::isSignalConnected(signal);
        }
    }
};

#endif
