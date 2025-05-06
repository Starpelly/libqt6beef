#pragma once
#ifndef SRC_MULTIMEDIAC_LIBVIRTUALQVIDEOPROBE_H
#define SRC_MULTIMEDIAC_LIBVIRTUALQVIDEOPROBE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QVideoProbe so that we can call protected methods
class VirtualQVideoProbe : public QVideoProbe {

  public:
    // Virtual class public types (including callbacks)
    using QVideoProbe_Metacall_Callback = int (*)(QVideoProbe*, QMetaObject::Call, int, void**);
    using QVideoProbe_Event_Callback = bool (*)(QVideoProbe*, QEvent*);
    using QVideoProbe_EventFilter_Callback = bool (*)(QVideoProbe*, QObject*, QEvent*);
    using QVideoProbe_TimerEvent_Callback = void (*)(QVideoProbe*, QTimerEvent*);
    using QVideoProbe_ChildEvent_Callback = void (*)(QVideoProbe*, QChildEvent*);
    using QVideoProbe_CustomEvent_Callback = void (*)(QVideoProbe*, QEvent*);
    using QVideoProbe_ConnectNotify_Callback = void (*)(QVideoProbe*, const QMetaMethod&);
    using QVideoProbe_DisconnectNotify_Callback = void (*)(QVideoProbe*, const QMetaMethod&);
    using QVideoProbe_Sender_Callback = QObject* (*)();
    using QVideoProbe_SenderSignalIndex_Callback = int (*)();
    using QVideoProbe_Receivers_Callback = int (*)(const QVideoProbe*, const char*);
    using QVideoProbe_IsSignalConnected_Callback = bool (*)(const QVideoProbe*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QVideoProbe_Metacall_Callback qvideoprobe_metacall_callback = nullptr;
    QVideoProbe_Event_Callback qvideoprobe_event_callback = nullptr;
    QVideoProbe_EventFilter_Callback qvideoprobe_eventfilter_callback = nullptr;
    QVideoProbe_TimerEvent_Callback qvideoprobe_timerevent_callback = nullptr;
    QVideoProbe_ChildEvent_Callback qvideoprobe_childevent_callback = nullptr;
    QVideoProbe_CustomEvent_Callback qvideoprobe_customevent_callback = nullptr;
    QVideoProbe_ConnectNotify_Callback qvideoprobe_connectnotify_callback = nullptr;
    QVideoProbe_DisconnectNotify_Callback qvideoprobe_disconnectnotify_callback = nullptr;
    QVideoProbe_Sender_Callback qvideoprobe_sender_callback = nullptr;
    QVideoProbe_SenderSignalIndex_Callback qvideoprobe_sendersignalindex_callback = nullptr;
    QVideoProbe_Receivers_Callback qvideoprobe_receivers_callback = nullptr;
    QVideoProbe_IsSignalConnected_Callback qvideoprobe_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qvideoprobe_metacall_isbase = false;
    mutable bool qvideoprobe_event_isbase = false;
    mutable bool qvideoprobe_eventfilter_isbase = false;
    mutable bool qvideoprobe_timerevent_isbase = false;
    mutable bool qvideoprobe_childevent_isbase = false;
    mutable bool qvideoprobe_customevent_isbase = false;
    mutable bool qvideoprobe_connectnotify_isbase = false;
    mutable bool qvideoprobe_disconnectnotify_isbase = false;
    mutable bool qvideoprobe_sender_isbase = false;
    mutable bool qvideoprobe_sendersignalindex_isbase = false;
    mutable bool qvideoprobe_receivers_isbase = false;
    mutable bool qvideoprobe_issignalconnected_isbase = false;

  public:
    VirtualQVideoProbe() : QVideoProbe(){};
    VirtualQVideoProbe(QObject* parent) : QVideoProbe(parent){};

    ~VirtualQVideoProbe() {
        qvideoprobe_metacall_callback = nullptr;
        qvideoprobe_event_callback = nullptr;
        qvideoprobe_eventfilter_callback = nullptr;
        qvideoprobe_timerevent_callback = nullptr;
        qvideoprobe_childevent_callback = nullptr;
        qvideoprobe_customevent_callback = nullptr;
        qvideoprobe_connectnotify_callback = nullptr;
        qvideoprobe_disconnectnotify_callback = nullptr;
        qvideoprobe_sender_callback = nullptr;
        qvideoprobe_sendersignalindex_callback = nullptr;
        qvideoprobe_receivers_callback = nullptr;
        qvideoprobe_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQVideoProbe_Metacall_Callback(QVideoProbe_Metacall_Callback cb) { qvideoprobe_metacall_callback = cb; }
    void setQVideoProbe_Event_Callback(QVideoProbe_Event_Callback cb) { qvideoprobe_event_callback = cb; }
    void setQVideoProbe_EventFilter_Callback(QVideoProbe_EventFilter_Callback cb) { qvideoprobe_eventfilter_callback = cb; }
    void setQVideoProbe_TimerEvent_Callback(QVideoProbe_TimerEvent_Callback cb) { qvideoprobe_timerevent_callback = cb; }
    void setQVideoProbe_ChildEvent_Callback(QVideoProbe_ChildEvent_Callback cb) { qvideoprobe_childevent_callback = cb; }
    void setQVideoProbe_CustomEvent_Callback(QVideoProbe_CustomEvent_Callback cb) { qvideoprobe_customevent_callback = cb; }
    void setQVideoProbe_ConnectNotify_Callback(QVideoProbe_ConnectNotify_Callback cb) { qvideoprobe_connectnotify_callback = cb; }
    void setQVideoProbe_DisconnectNotify_Callback(QVideoProbe_DisconnectNotify_Callback cb) { qvideoprobe_disconnectnotify_callback = cb; }
    void setQVideoProbe_Sender_Callback(QVideoProbe_Sender_Callback cb) { qvideoprobe_sender_callback = cb; }
    void setQVideoProbe_SenderSignalIndex_Callback(QVideoProbe_SenderSignalIndex_Callback cb) { qvideoprobe_sendersignalindex_callback = cb; }
    void setQVideoProbe_Receivers_Callback(QVideoProbe_Receivers_Callback cb) { qvideoprobe_receivers_callback = cb; }
    void setQVideoProbe_IsSignalConnected_Callback(QVideoProbe_IsSignalConnected_Callback cb) { qvideoprobe_issignalconnected_callback = cb; }

    // Base flag setters
    void setQVideoProbe_Metacall_IsBase(bool value) const { qvideoprobe_metacall_isbase = value; }
    void setQVideoProbe_Event_IsBase(bool value) const { qvideoprobe_event_isbase = value; }
    void setQVideoProbe_EventFilter_IsBase(bool value) const { qvideoprobe_eventfilter_isbase = value; }
    void setQVideoProbe_TimerEvent_IsBase(bool value) const { qvideoprobe_timerevent_isbase = value; }
    void setQVideoProbe_ChildEvent_IsBase(bool value) const { qvideoprobe_childevent_isbase = value; }
    void setQVideoProbe_CustomEvent_IsBase(bool value) const { qvideoprobe_customevent_isbase = value; }
    void setQVideoProbe_ConnectNotify_IsBase(bool value) const { qvideoprobe_connectnotify_isbase = value; }
    void setQVideoProbe_DisconnectNotify_IsBase(bool value) const { qvideoprobe_disconnectnotify_isbase = value; }
    void setQVideoProbe_Sender_IsBase(bool value) const { qvideoprobe_sender_isbase = value; }
    void setQVideoProbe_SenderSignalIndex_IsBase(bool value) const { qvideoprobe_sendersignalindex_isbase = value; }
    void setQVideoProbe_Receivers_IsBase(bool value) const { qvideoprobe_receivers_isbase = value; }
    void setQVideoProbe_IsSignalConnected_IsBase(bool value) const { qvideoprobe_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qvideoprobe_metacall_isbase) {
            qvideoprobe_metacall_isbase = false;
            return QVideoProbe::qt_metacall(param1, param2, param3);
        } else if (qvideoprobe_metacall_callback != nullptr) {
            return qvideoprobe_metacall_callback(this, param1, param2, param3);
        } else {
            return QVideoProbe::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qvideoprobe_event_isbase) {
            qvideoprobe_event_isbase = false;
            return QVideoProbe::event(event);
        } else if (qvideoprobe_event_callback != nullptr) {
            return qvideoprobe_event_callback(this, event);
        } else {
            return QVideoProbe::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qvideoprobe_eventfilter_isbase) {
            qvideoprobe_eventfilter_isbase = false;
            return QVideoProbe::eventFilter(watched, event);
        } else if (qvideoprobe_eventfilter_callback != nullptr) {
            return qvideoprobe_eventfilter_callback(this, watched, event);
        } else {
            return QVideoProbe::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qvideoprobe_timerevent_isbase) {
            qvideoprobe_timerevent_isbase = false;
            QVideoProbe::timerEvent(event);
        } else if (qvideoprobe_timerevent_callback != nullptr) {
            qvideoprobe_timerevent_callback(this, event);
        } else {
            QVideoProbe::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qvideoprobe_childevent_isbase) {
            qvideoprobe_childevent_isbase = false;
            QVideoProbe::childEvent(event);
        } else if (qvideoprobe_childevent_callback != nullptr) {
            qvideoprobe_childevent_callback(this, event);
        } else {
            QVideoProbe::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qvideoprobe_customevent_isbase) {
            qvideoprobe_customevent_isbase = false;
            QVideoProbe::customEvent(event);
        } else if (qvideoprobe_customevent_callback != nullptr) {
            qvideoprobe_customevent_callback(this, event);
        } else {
            QVideoProbe::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qvideoprobe_connectnotify_isbase) {
            qvideoprobe_connectnotify_isbase = false;
            QVideoProbe::connectNotify(signal);
        } else if (qvideoprobe_connectnotify_callback != nullptr) {
            qvideoprobe_connectnotify_callback(this, signal);
        } else {
            QVideoProbe::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qvideoprobe_disconnectnotify_isbase) {
            qvideoprobe_disconnectnotify_isbase = false;
            QVideoProbe::disconnectNotify(signal);
        } else if (qvideoprobe_disconnectnotify_callback != nullptr) {
            qvideoprobe_disconnectnotify_callback(this, signal);
        } else {
            QVideoProbe::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qvideoprobe_sender_isbase) {
            qvideoprobe_sender_isbase = false;
            return QVideoProbe::sender();
        } else if (qvideoprobe_sender_callback != nullptr) {
            return qvideoprobe_sender_callback();
        } else {
            return QVideoProbe::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qvideoprobe_sendersignalindex_isbase) {
            qvideoprobe_sendersignalindex_isbase = false;
            return QVideoProbe::senderSignalIndex();
        } else if (qvideoprobe_sendersignalindex_callback != nullptr) {
            return qvideoprobe_sendersignalindex_callback();
        } else {
            return QVideoProbe::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qvideoprobe_receivers_isbase) {
            qvideoprobe_receivers_isbase = false;
            return QVideoProbe::receivers(signal);
        } else if (qvideoprobe_receivers_callback != nullptr) {
            return qvideoprobe_receivers_callback(this, signal);
        } else {
            return QVideoProbe::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qvideoprobe_issignalconnected_isbase) {
            qvideoprobe_issignalconnected_isbase = false;
            return QVideoProbe::isSignalConnected(signal);
        } else if (qvideoprobe_issignalconnected_callback != nullptr) {
            return qvideoprobe_issignalconnected_callback(this, signal);
        } else {
            return QVideoProbe::isSignalConnected(signal);
        }
    }
};

#endif
