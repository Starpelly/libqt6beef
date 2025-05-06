#pragma once
#ifndef SRCC_LIBVIRTUALQMOUSEEVENTTRANSITION_H
#define SRCC_LIBVIRTUALQMOUSEEVENTTRANSITION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

// This class is a subclass of QMouseEventTransition so that we can call protected methods
class VirtualQMouseEventTransition : public QMouseEventTransition {

  public:
    // Virtual class public types (including callbacks)
    using QMouseEventTransition_Metacall_Callback = int (*)(QMouseEventTransition*, QMetaObject::Call, int, void**);
    using QMouseEventTransition_OnTransition_Callback = void (*)(QMouseEventTransition*, QEvent*);
    using QMouseEventTransition_EventTest_Callback = bool (*)(QMouseEventTransition*, QEvent*);
    using QMouseEventTransition_Event_Callback = bool (*)(QMouseEventTransition*, QEvent*);
    using QMouseEventTransition_EventFilter_Callback = bool (*)(QMouseEventTransition*, QObject*, QEvent*);
    using QMouseEventTransition_TimerEvent_Callback = void (*)(QMouseEventTransition*, QTimerEvent*);
    using QMouseEventTransition_ChildEvent_Callback = void (*)(QMouseEventTransition*, QChildEvent*);
    using QMouseEventTransition_CustomEvent_Callback = void (*)(QMouseEventTransition*, QEvent*);
    using QMouseEventTransition_ConnectNotify_Callback = void (*)(QMouseEventTransition*, const QMetaMethod&);
    using QMouseEventTransition_DisconnectNotify_Callback = void (*)(QMouseEventTransition*, const QMetaMethod&);
    using QMouseEventTransition_Sender_Callback = QObject* (*)();
    using QMouseEventTransition_SenderSignalIndex_Callback = int (*)();
    using QMouseEventTransition_Receivers_Callback = int (*)(const QMouseEventTransition*, const char*);
    using QMouseEventTransition_IsSignalConnected_Callback = bool (*)(const QMouseEventTransition*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QMouseEventTransition_Metacall_Callback qmouseeventtransition_metacall_callback = nullptr;
    QMouseEventTransition_OnTransition_Callback qmouseeventtransition_ontransition_callback = nullptr;
    QMouseEventTransition_EventTest_Callback qmouseeventtransition_eventtest_callback = nullptr;
    QMouseEventTransition_Event_Callback qmouseeventtransition_event_callback = nullptr;
    QMouseEventTransition_EventFilter_Callback qmouseeventtransition_eventfilter_callback = nullptr;
    QMouseEventTransition_TimerEvent_Callback qmouseeventtransition_timerevent_callback = nullptr;
    QMouseEventTransition_ChildEvent_Callback qmouseeventtransition_childevent_callback = nullptr;
    QMouseEventTransition_CustomEvent_Callback qmouseeventtransition_customevent_callback = nullptr;
    QMouseEventTransition_ConnectNotify_Callback qmouseeventtransition_connectnotify_callback = nullptr;
    QMouseEventTransition_DisconnectNotify_Callback qmouseeventtransition_disconnectnotify_callback = nullptr;
    QMouseEventTransition_Sender_Callback qmouseeventtransition_sender_callback = nullptr;
    QMouseEventTransition_SenderSignalIndex_Callback qmouseeventtransition_sendersignalindex_callback = nullptr;
    QMouseEventTransition_Receivers_Callback qmouseeventtransition_receivers_callback = nullptr;
    QMouseEventTransition_IsSignalConnected_Callback qmouseeventtransition_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qmouseeventtransition_metacall_isbase = false;
    mutable bool qmouseeventtransition_ontransition_isbase = false;
    mutable bool qmouseeventtransition_eventtest_isbase = false;
    mutable bool qmouseeventtransition_event_isbase = false;
    mutable bool qmouseeventtransition_eventfilter_isbase = false;
    mutable bool qmouseeventtransition_timerevent_isbase = false;
    mutable bool qmouseeventtransition_childevent_isbase = false;
    mutable bool qmouseeventtransition_customevent_isbase = false;
    mutable bool qmouseeventtransition_connectnotify_isbase = false;
    mutable bool qmouseeventtransition_disconnectnotify_isbase = false;
    mutable bool qmouseeventtransition_sender_isbase = false;
    mutable bool qmouseeventtransition_sendersignalindex_isbase = false;
    mutable bool qmouseeventtransition_receivers_isbase = false;
    mutable bool qmouseeventtransition_issignalconnected_isbase = false;

  public:
    VirtualQMouseEventTransition() : QMouseEventTransition(){};
    VirtualQMouseEventTransition(QObject* object, QEvent::Type typeVal, Qt::MouseButton button) : QMouseEventTransition(object, typeVal, button){};
    VirtualQMouseEventTransition(QState* sourceState) : QMouseEventTransition(sourceState){};
    VirtualQMouseEventTransition(QObject* object, QEvent::Type typeVal, Qt::MouseButton button, QState* sourceState) : QMouseEventTransition(object, typeVal, button, sourceState){};

    ~VirtualQMouseEventTransition() {
        qmouseeventtransition_metacall_callback = nullptr;
        qmouseeventtransition_ontransition_callback = nullptr;
        qmouseeventtransition_eventtest_callback = nullptr;
        qmouseeventtransition_event_callback = nullptr;
        qmouseeventtransition_eventfilter_callback = nullptr;
        qmouseeventtransition_timerevent_callback = nullptr;
        qmouseeventtransition_childevent_callback = nullptr;
        qmouseeventtransition_customevent_callback = nullptr;
        qmouseeventtransition_connectnotify_callback = nullptr;
        qmouseeventtransition_disconnectnotify_callback = nullptr;
        qmouseeventtransition_sender_callback = nullptr;
        qmouseeventtransition_sendersignalindex_callback = nullptr;
        qmouseeventtransition_receivers_callback = nullptr;
        qmouseeventtransition_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQMouseEventTransition_Metacall_Callback(QMouseEventTransition_Metacall_Callback cb) { qmouseeventtransition_metacall_callback = cb; }
    void setQMouseEventTransition_OnTransition_Callback(QMouseEventTransition_OnTransition_Callback cb) { qmouseeventtransition_ontransition_callback = cb; }
    void setQMouseEventTransition_EventTest_Callback(QMouseEventTransition_EventTest_Callback cb) { qmouseeventtransition_eventtest_callback = cb; }
    void setQMouseEventTransition_Event_Callback(QMouseEventTransition_Event_Callback cb) { qmouseeventtransition_event_callback = cb; }
    void setQMouseEventTransition_EventFilter_Callback(QMouseEventTransition_EventFilter_Callback cb) { qmouseeventtransition_eventfilter_callback = cb; }
    void setQMouseEventTransition_TimerEvent_Callback(QMouseEventTransition_TimerEvent_Callback cb) { qmouseeventtransition_timerevent_callback = cb; }
    void setQMouseEventTransition_ChildEvent_Callback(QMouseEventTransition_ChildEvent_Callback cb) { qmouseeventtransition_childevent_callback = cb; }
    void setQMouseEventTransition_CustomEvent_Callback(QMouseEventTransition_CustomEvent_Callback cb) { qmouseeventtransition_customevent_callback = cb; }
    void setQMouseEventTransition_ConnectNotify_Callback(QMouseEventTransition_ConnectNotify_Callback cb) { qmouseeventtransition_connectnotify_callback = cb; }
    void setQMouseEventTransition_DisconnectNotify_Callback(QMouseEventTransition_DisconnectNotify_Callback cb) { qmouseeventtransition_disconnectnotify_callback = cb; }
    void setQMouseEventTransition_Sender_Callback(QMouseEventTransition_Sender_Callback cb) { qmouseeventtransition_sender_callback = cb; }
    void setQMouseEventTransition_SenderSignalIndex_Callback(QMouseEventTransition_SenderSignalIndex_Callback cb) { qmouseeventtransition_sendersignalindex_callback = cb; }
    void setQMouseEventTransition_Receivers_Callback(QMouseEventTransition_Receivers_Callback cb) { qmouseeventtransition_receivers_callback = cb; }
    void setQMouseEventTransition_IsSignalConnected_Callback(QMouseEventTransition_IsSignalConnected_Callback cb) { qmouseeventtransition_issignalconnected_callback = cb; }

    // Base flag setters
    void setQMouseEventTransition_Metacall_IsBase(bool value) const { qmouseeventtransition_metacall_isbase = value; }
    void setQMouseEventTransition_OnTransition_IsBase(bool value) const { qmouseeventtransition_ontransition_isbase = value; }
    void setQMouseEventTransition_EventTest_IsBase(bool value) const { qmouseeventtransition_eventtest_isbase = value; }
    void setQMouseEventTransition_Event_IsBase(bool value) const { qmouseeventtransition_event_isbase = value; }
    void setQMouseEventTransition_EventFilter_IsBase(bool value) const { qmouseeventtransition_eventfilter_isbase = value; }
    void setQMouseEventTransition_TimerEvent_IsBase(bool value) const { qmouseeventtransition_timerevent_isbase = value; }
    void setQMouseEventTransition_ChildEvent_IsBase(bool value) const { qmouseeventtransition_childevent_isbase = value; }
    void setQMouseEventTransition_CustomEvent_IsBase(bool value) const { qmouseeventtransition_customevent_isbase = value; }
    void setQMouseEventTransition_ConnectNotify_IsBase(bool value) const { qmouseeventtransition_connectnotify_isbase = value; }
    void setQMouseEventTransition_DisconnectNotify_IsBase(bool value) const { qmouseeventtransition_disconnectnotify_isbase = value; }
    void setQMouseEventTransition_Sender_IsBase(bool value) const { qmouseeventtransition_sender_isbase = value; }
    void setQMouseEventTransition_SenderSignalIndex_IsBase(bool value) const { qmouseeventtransition_sendersignalindex_isbase = value; }
    void setQMouseEventTransition_Receivers_IsBase(bool value) const { qmouseeventtransition_receivers_isbase = value; }
    void setQMouseEventTransition_IsSignalConnected_IsBase(bool value) const { qmouseeventtransition_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qmouseeventtransition_metacall_isbase) {
            qmouseeventtransition_metacall_isbase = false;
            return QMouseEventTransition::qt_metacall(param1, param2, param3);
        } else if (qmouseeventtransition_metacall_callback != nullptr) {
            return qmouseeventtransition_metacall_callback(this, param1, param2, param3);
        } else {
            return QMouseEventTransition::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void onTransition(QEvent* event) override {
        if (qmouseeventtransition_ontransition_isbase) {
            qmouseeventtransition_ontransition_isbase = false;
            QMouseEventTransition::onTransition(event);
        } else if (qmouseeventtransition_ontransition_callback != nullptr) {
            qmouseeventtransition_ontransition_callback(this, event);
        } else {
            QMouseEventTransition::onTransition(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventTest(QEvent* event) override {
        if (qmouseeventtransition_eventtest_isbase) {
            qmouseeventtransition_eventtest_isbase = false;
            return QMouseEventTransition::eventTest(event);
        } else if (qmouseeventtransition_eventtest_callback != nullptr) {
            return qmouseeventtransition_eventtest_callback(this, event);
        } else {
            return QMouseEventTransition::eventTest(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* e) override {
        if (qmouseeventtransition_event_isbase) {
            qmouseeventtransition_event_isbase = false;
            return QMouseEventTransition::event(e);
        } else if (qmouseeventtransition_event_callback != nullptr) {
            return qmouseeventtransition_event_callback(this, e);
        } else {
            return QMouseEventTransition::event(e);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qmouseeventtransition_eventfilter_isbase) {
            qmouseeventtransition_eventfilter_isbase = false;
            return QMouseEventTransition::eventFilter(watched, event);
        } else if (qmouseeventtransition_eventfilter_callback != nullptr) {
            return qmouseeventtransition_eventfilter_callback(this, watched, event);
        } else {
            return QMouseEventTransition::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qmouseeventtransition_timerevent_isbase) {
            qmouseeventtransition_timerevent_isbase = false;
            QMouseEventTransition::timerEvent(event);
        } else if (qmouseeventtransition_timerevent_callback != nullptr) {
            qmouseeventtransition_timerevent_callback(this, event);
        } else {
            QMouseEventTransition::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qmouseeventtransition_childevent_isbase) {
            qmouseeventtransition_childevent_isbase = false;
            QMouseEventTransition::childEvent(event);
        } else if (qmouseeventtransition_childevent_callback != nullptr) {
            qmouseeventtransition_childevent_callback(this, event);
        } else {
            QMouseEventTransition::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qmouseeventtransition_customevent_isbase) {
            qmouseeventtransition_customevent_isbase = false;
            QMouseEventTransition::customEvent(event);
        } else if (qmouseeventtransition_customevent_callback != nullptr) {
            qmouseeventtransition_customevent_callback(this, event);
        } else {
            QMouseEventTransition::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qmouseeventtransition_connectnotify_isbase) {
            qmouseeventtransition_connectnotify_isbase = false;
            QMouseEventTransition::connectNotify(signal);
        } else if (qmouseeventtransition_connectnotify_callback != nullptr) {
            qmouseeventtransition_connectnotify_callback(this, signal);
        } else {
            QMouseEventTransition::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qmouseeventtransition_disconnectnotify_isbase) {
            qmouseeventtransition_disconnectnotify_isbase = false;
            QMouseEventTransition::disconnectNotify(signal);
        } else if (qmouseeventtransition_disconnectnotify_callback != nullptr) {
            qmouseeventtransition_disconnectnotify_callback(this, signal);
        } else {
            QMouseEventTransition::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qmouseeventtransition_sender_isbase) {
            qmouseeventtransition_sender_isbase = false;
            return QMouseEventTransition::sender();
        } else if (qmouseeventtransition_sender_callback != nullptr) {
            return qmouseeventtransition_sender_callback();
        } else {
            return QMouseEventTransition::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qmouseeventtransition_sendersignalindex_isbase) {
            qmouseeventtransition_sendersignalindex_isbase = false;
            return QMouseEventTransition::senderSignalIndex();
        } else if (qmouseeventtransition_sendersignalindex_callback != nullptr) {
            return qmouseeventtransition_sendersignalindex_callback();
        } else {
            return QMouseEventTransition::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qmouseeventtransition_receivers_isbase) {
            qmouseeventtransition_receivers_isbase = false;
            return QMouseEventTransition::receivers(signal);
        } else if (qmouseeventtransition_receivers_callback != nullptr) {
            return qmouseeventtransition_receivers_callback(this, signal);
        } else {
            return QMouseEventTransition::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qmouseeventtransition_issignalconnected_isbase) {
            qmouseeventtransition_issignalconnected_isbase = false;
            return QMouseEventTransition::isSignalConnected(signal);
        } else if (qmouseeventtransition_issignalconnected_callback != nullptr) {
            return qmouseeventtransition_issignalconnected_callback(this, signal);
        } else {
            return QMouseEventTransition::isSignalConnected(signal);
        }
    }
};

#endif
