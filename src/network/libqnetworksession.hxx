#pragma once
#ifndef SRC_NETWORKC_LIBVIRTUALQNETWORKSESSION_H
#define SRC_NETWORKC_LIBVIRTUALQNETWORKSESSION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QNetworkSession so that we can call protected methods
class VirtualQNetworkSession : public QNetworkSession {

  public:
    // Virtual class public types (including callbacks)
    using QNetworkSession_Metacall_Callback = int (*)(QNetworkSession*, QMetaObject::Call, int, void**);
    using QNetworkSession_ConnectNotify_Callback = void (*)(QNetworkSession*, const QMetaMethod&);
    using QNetworkSession_DisconnectNotify_Callback = void (*)(QNetworkSession*, const QMetaMethod&);
    using QNetworkSession_Event_Callback = bool (*)(QNetworkSession*, QEvent*);
    using QNetworkSession_EventFilter_Callback = bool (*)(QNetworkSession*, QObject*, QEvent*);
    using QNetworkSession_TimerEvent_Callback = void (*)(QNetworkSession*, QTimerEvent*);
    using QNetworkSession_ChildEvent_Callback = void (*)(QNetworkSession*, QChildEvent*);
    using QNetworkSession_CustomEvent_Callback = void (*)(QNetworkSession*, QEvent*);
    using QNetworkSession_Sender_Callback = QObject* (*)();
    using QNetworkSession_SenderSignalIndex_Callback = int (*)();
    using QNetworkSession_Receivers_Callback = int (*)(const QNetworkSession*, const char*);
    using QNetworkSession_IsSignalConnected_Callback = bool (*)(const QNetworkSession*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QNetworkSession_Metacall_Callback qnetworksession_metacall_callback = nullptr;
    QNetworkSession_ConnectNotify_Callback qnetworksession_connectnotify_callback = nullptr;
    QNetworkSession_DisconnectNotify_Callback qnetworksession_disconnectnotify_callback = nullptr;
    QNetworkSession_Event_Callback qnetworksession_event_callback = nullptr;
    QNetworkSession_EventFilter_Callback qnetworksession_eventfilter_callback = nullptr;
    QNetworkSession_TimerEvent_Callback qnetworksession_timerevent_callback = nullptr;
    QNetworkSession_ChildEvent_Callback qnetworksession_childevent_callback = nullptr;
    QNetworkSession_CustomEvent_Callback qnetworksession_customevent_callback = nullptr;
    QNetworkSession_Sender_Callback qnetworksession_sender_callback = nullptr;
    QNetworkSession_SenderSignalIndex_Callback qnetworksession_sendersignalindex_callback = nullptr;
    QNetworkSession_Receivers_Callback qnetworksession_receivers_callback = nullptr;
    QNetworkSession_IsSignalConnected_Callback qnetworksession_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qnetworksession_metacall_isbase = false;
    mutable bool qnetworksession_connectnotify_isbase = false;
    mutable bool qnetworksession_disconnectnotify_isbase = false;
    mutable bool qnetworksession_event_isbase = false;
    mutable bool qnetworksession_eventfilter_isbase = false;
    mutable bool qnetworksession_timerevent_isbase = false;
    mutable bool qnetworksession_childevent_isbase = false;
    mutable bool qnetworksession_customevent_isbase = false;
    mutable bool qnetworksession_sender_isbase = false;
    mutable bool qnetworksession_sendersignalindex_isbase = false;
    mutable bool qnetworksession_receivers_isbase = false;
    mutable bool qnetworksession_issignalconnected_isbase = false;

  public:
    VirtualQNetworkSession(const QNetworkConfiguration& connConfig) : QNetworkSession(connConfig){};
    VirtualQNetworkSession(const QNetworkConfiguration& connConfig, QObject* parent) : QNetworkSession(connConfig, parent){};

    ~VirtualQNetworkSession() {
        qnetworksession_metacall_callback = nullptr;
        qnetworksession_connectnotify_callback = nullptr;
        qnetworksession_disconnectnotify_callback = nullptr;
        qnetworksession_event_callback = nullptr;
        qnetworksession_eventfilter_callback = nullptr;
        qnetworksession_timerevent_callback = nullptr;
        qnetworksession_childevent_callback = nullptr;
        qnetworksession_customevent_callback = nullptr;
        qnetworksession_sender_callback = nullptr;
        qnetworksession_sendersignalindex_callback = nullptr;
        qnetworksession_receivers_callback = nullptr;
        qnetworksession_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQNetworkSession_Metacall_Callback(QNetworkSession_Metacall_Callback cb) { qnetworksession_metacall_callback = cb; }
    void setQNetworkSession_ConnectNotify_Callback(QNetworkSession_ConnectNotify_Callback cb) { qnetworksession_connectnotify_callback = cb; }
    void setQNetworkSession_DisconnectNotify_Callback(QNetworkSession_DisconnectNotify_Callback cb) { qnetworksession_disconnectnotify_callback = cb; }
    void setQNetworkSession_Event_Callback(QNetworkSession_Event_Callback cb) { qnetworksession_event_callback = cb; }
    void setQNetworkSession_EventFilter_Callback(QNetworkSession_EventFilter_Callback cb) { qnetworksession_eventfilter_callback = cb; }
    void setQNetworkSession_TimerEvent_Callback(QNetworkSession_TimerEvent_Callback cb) { qnetworksession_timerevent_callback = cb; }
    void setQNetworkSession_ChildEvent_Callback(QNetworkSession_ChildEvent_Callback cb) { qnetworksession_childevent_callback = cb; }
    void setQNetworkSession_CustomEvent_Callback(QNetworkSession_CustomEvent_Callback cb) { qnetworksession_customevent_callback = cb; }
    void setQNetworkSession_Sender_Callback(QNetworkSession_Sender_Callback cb) { qnetworksession_sender_callback = cb; }
    void setQNetworkSession_SenderSignalIndex_Callback(QNetworkSession_SenderSignalIndex_Callback cb) { qnetworksession_sendersignalindex_callback = cb; }
    void setQNetworkSession_Receivers_Callback(QNetworkSession_Receivers_Callback cb) { qnetworksession_receivers_callback = cb; }
    void setQNetworkSession_IsSignalConnected_Callback(QNetworkSession_IsSignalConnected_Callback cb) { qnetworksession_issignalconnected_callback = cb; }

    // Base flag setters
    void setQNetworkSession_Metacall_IsBase(bool value) const { qnetworksession_metacall_isbase = value; }
    void setQNetworkSession_ConnectNotify_IsBase(bool value) const { qnetworksession_connectnotify_isbase = value; }
    void setQNetworkSession_DisconnectNotify_IsBase(bool value) const { qnetworksession_disconnectnotify_isbase = value; }
    void setQNetworkSession_Event_IsBase(bool value) const { qnetworksession_event_isbase = value; }
    void setQNetworkSession_EventFilter_IsBase(bool value) const { qnetworksession_eventfilter_isbase = value; }
    void setQNetworkSession_TimerEvent_IsBase(bool value) const { qnetworksession_timerevent_isbase = value; }
    void setQNetworkSession_ChildEvent_IsBase(bool value) const { qnetworksession_childevent_isbase = value; }
    void setQNetworkSession_CustomEvent_IsBase(bool value) const { qnetworksession_customevent_isbase = value; }
    void setQNetworkSession_Sender_IsBase(bool value) const { qnetworksession_sender_isbase = value; }
    void setQNetworkSession_SenderSignalIndex_IsBase(bool value) const { qnetworksession_sendersignalindex_isbase = value; }
    void setQNetworkSession_Receivers_IsBase(bool value) const { qnetworksession_receivers_isbase = value; }
    void setQNetworkSession_IsSignalConnected_IsBase(bool value) const { qnetworksession_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qnetworksession_metacall_isbase) {
            qnetworksession_metacall_isbase = false;
            return QNetworkSession::qt_metacall(param1, param2, param3);
        } else if (qnetworksession_metacall_callback != nullptr) {
            return qnetworksession_metacall_callback(this, param1, param2, param3);
        } else {
            return QNetworkSession::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qnetworksession_connectnotify_isbase) {
            qnetworksession_connectnotify_isbase = false;
            QNetworkSession::connectNotify(signal);
        } else if (qnetworksession_connectnotify_callback != nullptr) {
            qnetworksession_connectnotify_callback(this, signal);
        } else {
            QNetworkSession::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qnetworksession_disconnectnotify_isbase) {
            qnetworksession_disconnectnotify_isbase = false;
            QNetworkSession::disconnectNotify(signal);
        } else if (qnetworksession_disconnectnotify_callback != nullptr) {
            qnetworksession_disconnectnotify_callback(this, signal);
        } else {
            QNetworkSession::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qnetworksession_event_isbase) {
            qnetworksession_event_isbase = false;
            return QNetworkSession::event(event);
        } else if (qnetworksession_event_callback != nullptr) {
            return qnetworksession_event_callback(this, event);
        } else {
            return QNetworkSession::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qnetworksession_eventfilter_isbase) {
            qnetworksession_eventfilter_isbase = false;
            return QNetworkSession::eventFilter(watched, event);
        } else if (qnetworksession_eventfilter_callback != nullptr) {
            return qnetworksession_eventfilter_callback(this, watched, event);
        } else {
            return QNetworkSession::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qnetworksession_timerevent_isbase) {
            qnetworksession_timerevent_isbase = false;
            QNetworkSession::timerEvent(event);
        } else if (qnetworksession_timerevent_callback != nullptr) {
            qnetworksession_timerevent_callback(this, event);
        } else {
            QNetworkSession::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qnetworksession_childevent_isbase) {
            qnetworksession_childevent_isbase = false;
            QNetworkSession::childEvent(event);
        } else if (qnetworksession_childevent_callback != nullptr) {
            qnetworksession_childevent_callback(this, event);
        } else {
            QNetworkSession::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qnetworksession_customevent_isbase) {
            qnetworksession_customevent_isbase = false;
            QNetworkSession::customEvent(event);
        } else if (qnetworksession_customevent_callback != nullptr) {
            qnetworksession_customevent_callback(this, event);
        } else {
            QNetworkSession::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qnetworksession_sender_isbase) {
            qnetworksession_sender_isbase = false;
            return QNetworkSession::sender();
        } else if (qnetworksession_sender_callback != nullptr) {
            return qnetworksession_sender_callback();
        } else {
            return QNetworkSession::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qnetworksession_sendersignalindex_isbase) {
            qnetworksession_sendersignalindex_isbase = false;
            return QNetworkSession::senderSignalIndex();
        } else if (qnetworksession_sendersignalindex_callback != nullptr) {
            return qnetworksession_sendersignalindex_callback();
        } else {
            return QNetworkSession::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qnetworksession_receivers_isbase) {
            qnetworksession_receivers_isbase = false;
            return QNetworkSession::receivers(signal);
        } else if (qnetworksession_receivers_callback != nullptr) {
            return qnetworksession_receivers_callback(this, signal);
        } else {
            return QNetworkSession::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qnetworksession_issignalconnected_isbase) {
            qnetworksession_issignalconnected_isbase = false;
            return QNetworkSession::isSignalConnected(signal);
        } else if (qnetworksession_issignalconnected_callback != nullptr) {
            return qnetworksession_issignalconnected_callback(this, signal);
        } else {
            return QNetworkSession::isSignalConnected(signal);
        }
    }
};

#endif
