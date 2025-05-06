#pragma once
#ifndef SRC_MULTIMEDIAC_LIBVIRTUALQABSTRACTVIDEOFILTER_H
#define SRC_MULTIMEDIAC_LIBVIRTUALQABSTRACTVIDEOFILTER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QAbstractVideoFilter so that we can call protected methods
class VirtualQAbstractVideoFilter : public QAbstractVideoFilter {

  public:
    // Virtual class public types (including callbacks)
    using QAbstractVideoFilter_Metacall_Callback = int (*)(QAbstractVideoFilter*, QMetaObject::Call, int, void**);
    using QAbstractVideoFilter_CreateFilterRunnable_Callback = QVideoFilterRunnable* (*)();
    using QAbstractVideoFilter_Event_Callback = bool (*)(QAbstractVideoFilter*, QEvent*);
    using QAbstractVideoFilter_EventFilter_Callback = bool (*)(QAbstractVideoFilter*, QObject*, QEvent*);
    using QAbstractVideoFilter_TimerEvent_Callback = void (*)(QAbstractVideoFilter*, QTimerEvent*);
    using QAbstractVideoFilter_ChildEvent_Callback = void (*)(QAbstractVideoFilter*, QChildEvent*);
    using QAbstractVideoFilter_CustomEvent_Callback = void (*)(QAbstractVideoFilter*, QEvent*);
    using QAbstractVideoFilter_ConnectNotify_Callback = void (*)(QAbstractVideoFilter*, const QMetaMethod&);
    using QAbstractVideoFilter_DisconnectNotify_Callback = void (*)(QAbstractVideoFilter*, const QMetaMethod&);
    using QAbstractVideoFilter_Sender_Callback = QObject* (*)();
    using QAbstractVideoFilter_SenderSignalIndex_Callback = int (*)();
    using QAbstractVideoFilter_Receivers_Callback = int (*)(const QAbstractVideoFilter*, const char*);
    using QAbstractVideoFilter_IsSignalConnected_Callback = bool (*)(const QAbstractVideoFilter*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QAbstractVideoFilter_Metacall_Callback qabstractvideofilter_metacall_callback = nullptr;
    QAbstractVideoFilter_CreateFilterRunnable_Callback qabstractvideofilter_createfilterrunnable_callback = nullptr;
    QAbstractVideoFilter_Event_Callback qabstractvideofilter_event_callback = nullptr;
    QAbstractVideoFilter_EventFilter_Callback qabstractvideofilter_eventfilter_callback = nullptr;
    QAbstractVideoFilter_TimerEvent_Callback qabstractvideofilter_timerevent_callback = nullptr;
    QAbstractVideoFilter_ChildEvent_Callback qabstractvideofilter_childevent_callback = nullptr;
    QAbstractVideoFilter_CustomEvent_Callback qabstractvideofilter_customevent_callback = nullptr;
    QAbstractVideoFilter_ConnectNotify_Callback qabstractvideofilter_connectnotify_callback = nullptr;
    QAbstractVideoFilter_DisconnectNotify_Callback qabstractvideofilter_disconnectnotify_callback = nullptr;
    QAbstractVideoFilter_Sender_Callback qabstractvideofilter_sender_callback = nullptr;
    QAbstractVideoFilter_SenderSignalIndex_Callback qabstractvideofilter_sendersignalindex_callback = nullptr;
    QAbstractVideoFilter_Receivers_Callback qabstractvideofilter_receivers_callback = nullptr;
    QAbstractVideoFilter_IsSignalConnected_Callback qabstractvideofilter_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qabstractvideofilter_metacall_isbase = false;
    mutable bool qabstractvideofilter_createfilterrunnable_isbase = false;
    mutable bool qabstractvideofilter_event_isbase = false;
    mutable bool qabstractvideofilter_eventfilter_isbase = false;
    mutable bool qabstractvideofilter_timerevent_isbase = false;
    mutable bool qabstractvideofilter_childevent_isbase = false;
    mutable bool qabstractvideofilter_customevent_isbase = false;
    mutable bool qabstractvideofilter_connectnotify_isbase = false;
    mutable bool qabstractvideofilter_disconnectnotify_isbase = false;
    mutable bool qabstractvideofilter_sender_isbase = false;
    mutable bool qabstractvideofilter_sendersignalindex_isbase = false;
    mutable bool qabstractvideofilter_receivers_isbase = false;
    mutable bool qabstractvideofilter_issignalconnected_isbase = false;

  public:
    VirtualQAbstractVideoFilter() : QAbstractVideoFilter(){};
    VirtualQAbstractVideoFilter(QObject* parent) : QAbstractVideoFilter(parent){};

    ~VirtualQAbstractVideoFilter() {
        qabstractvideofilter_metacall_callback = nullptr;
        qabstractvideofilter_createfilterrunnable_callback = nullptr;
        qabstractvideofilter_event_callback = nullptr;
        qabstractvideofilter_eventfilter_callback = nullptr;
        qabstractvideofilter_timerevent_callback = nullptr;
        qabstractvideofilter_childevent_callback = nullptr;
        qabstractvideofilter_customevent_callback = nullptr;
        qabstractvideofilter_connectnotify_callback = nullptr;
        qabstractvideofilter_disconnectnotify_callback = nullptr;
        qabstractvideofilter_sender_callback = nullptr;
        qabstractvideofilter_sendersignalindex_callback = nullptr;
        qabstractvideofilter_receivers_callback = nullptr;
        qabstractvideofilter_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQAbstractVideoFilter_Metacall_Callback(QAbstractVideoFilter_Metacall_Callback cb) { qabstractvideofilter_metacall_callback = cb; }
    void setQAbstractVideoFilter_CreateFilterRunnable_Callback(QAbstractVideoFilter_CreateFilterRunnable_Callback cb) { qabstractvideofilter_createfilterrunnable_callback = cb; }
    void setQAbstractVideoFilter_Event_Callback(QAbstractVideoFilter_Event_Callback cb) { qabstractvideofilter_event_callback = cb; }
    void setQAbstractVideoFilter_EventFilter_Callback(QAbstractVideoFilter_EventFilter_Callback cb) { qabstractvideofilter_eventfilter_callback = cb; }
    void setQAbstractVideoFilter_TimerEvent_Callback(QAbstractVideoFilter_TimerEvent_Callback cb) { qabstractvideofilter_timerevent_callback = cb; }
    void setQAbstractVideoFilter_ChildEvent_Callback(QAbstractVideoFilter_ChildEvent_Callback cb) { qabstractvideofilter_childevent_callback = cb; }
    void setQAbstractVideoFilter_CustomEvent_Callback(QAbstractVideoFilter_CustomEvent_Callback cb) { qabstractvideofilter_customevent_callback = cb; }
    void setQAbstractVideoFilter_ConnectNotify_Callback(QAbstractVideoFilter_ConnectNotify_Callback cb) { qabstractvideofilter_connectnotify_callback = cb; }
    void setQAbstractVideoFilter_DisconnectNotify_Callback(QAbstractVideoFilter_DisconnectNotify_Callback cb) { qabstractvideofilter_disconnectnotify_callback = cb; }
    void setQAbstractVideoFilter_Sender_Callback(QAbstractVideoFilter_Sender_Callback cb) { qabstractvideofilter_sender_callback = cb; }
    void setQAbstractVideoFilter_SenderSignalIndex_Callback(QAbstractVideoFilter_SenderSignalIndex_Callback cb) { qabstractvideofilter_sendersignalindex_callback = cb; }
    void setQAbstractVideoFilter_Receivers_Callback(QAbstractVideoFilter_Receivers_Callback cb) { qabstractvideofilter_receivers_callback = cb; }
    void setQAbstractVideoFilter_IsSignalConnected_Callback(QAbstractVideoFilter_IsSignalConnected_Callback cb) { qabstractvideofilter_issignalconnected_callback = cb; }

    // Base flag setters
    void setQAbstractVideoFilter_Metacall_IsBase(bool value) const { qabstractvideofilter_metacall_isbase = value; }
    void setQAbstractVideoFilter_CreateFilterRunnable_IsBase(bool value) const { qabstractvideofilter_createfilterrunnable_isbase = value; }
    void setQAbstractVideoFilter_Event_IsBase(bool value) const { qabstractvideofilter_event_isbase = value; }
    void setQAbstractVideoFilter_EventFilter_IsBase(bool value) const { qabstractvideofilter_eventfilter_isbase = value; }
    void setQAbstractVideoFilter_TimerEvent_IsBase(bool value) const { qabstractvideofilter_timerevent_isbase = value; }
    void setQAbstractVideoFilter_ChildEvent_IsBase(bool value) const { qabstractvideofilter_childevent_isbase = value; }
    void setQAbstractVideoFilter_CustomEvent_IsBase(bool value) const { qabstractvideofilter_customevent_isbase = value; }
    void setQAbstractVideoFilter_ConnectNotify_IsBase(bool value) const { qabstractvideofilter_connectnotify_isbase = value; }
    void setQAbstractVideoFilter_DisconnectNotify_IsBase(bool value) const { qabstractvideofilter_disconnectnotify_isbase = value; }
    void setQAbstractVideoFilter_Sender_IsBase(bool value) const { qabstractvideofilter_sender_isbase = value; }
    void setQAbstractVideoFilter_SenderSignalIndex_IsBase(bool value) const { qabstractvideofilter_sendersignalindex_isbase = value; }
    void setQAbstractVideoFilter_Receivers_IsBase(bool value) const { qabstractvideofilter_receivers_isbase = value; }
    void setQAbstractVideoFilter_IsSignalConnected_IsBase(bool value) const { qabstractvideofilter_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qabstractvideofilter_metacall_isbase) {
            qabstractvideofilter_metacall_isbase = false;
            return QAbstractVideoFilter::qt_metacall(param1, param2, param3);
        } else if (qabstractvideofilter_metacall_callback != nullptr) {
            return qabstractvideofilter_metacall_callback(this, param1, param2, param3);
        } else {
            return QAbstractVideoFilter::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QVideoFilterRunnable* createFilterRunnable() override {
        return qabstractvideofilter_createfilterrunnable_callback();
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qabstractvideofilter_event_isbase) {
            qabstractvideofilter_event_isbase = false;
            return QAbstractVideoFilter::event(event);
        } else if (qabstractvideofilter_event_callback != nullptr) {
            return qabstractvideofilter_event_callback(this, event);
        } else {
            return QAbstractVideoFilter::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qabstractvideofilter_eventfilter_isbase) {
            qabstractvideofilter_eventfilter_isbase = false;
            return QAbstractVideoFilter::eventFilter(watched, event);
        } else if (qabstractvideofilter_eventfilter_callback != nullptr) {
            return qabstractvideofilter_eventfilter_callback(this, watched, event);
        } else {
            return QAbstractVideoFilter::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qabstractvideofilter_timerevent_isbase) {
            qabstractvideofilter_timerevent_isbase = false;
            QAbstractVideoFilter::timerEvent(event);
        } else if (qabstractvideofilter_timerevent_callback != nullptr) {
            qabstractvideofilter_timerevent_callback(this, event);
        } else {
            QAbstractVideoFilter::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qabstractvideofilter_childevent_isbase) {
            qabstractvideofilter_childevent_isbase = false;
            QAbstractVideoFilter::childEvent(event);
        } else if (qabstractvideofilter_childevent_callback != nullptr) {
            qabstractvideofilter_childevent_callback(this, event);
        } else {
            QAbstractVideoFilter::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qabstractvideofilter_customevent_isbase) {
            qabstractvideofilter_customevent_isbase = false;
            QAbstractVideoFilter::customEvent(event);
        } else if (qabstractvideofilter_customevent_callback != nullptr) {
            qabstractvideofilter_customevent_callback(this, event);
        } else {
            QAbstractVideoFilter::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qabstractvideofilter_connectnotify_isbase) {
            qabstractvideofilter_connectnotify_isbase = false;
            QAbstractVideoFilter::connectNotify(signal);
        } else if (qabstractvideofilter_connectnotify_callback != nullptr) {
            qabstractvideofilter_connectnotify_callback(this, signal);
        } else {
            QAbstractVideoFilter::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qabstractvideofilter_disconnectnotify_isbase) {
            qabstractvideofilter_disconnectnotify_isbase = false;
            QAbstractVideoFilter::disconnectNotify(signal);
        } else if (qabstractvideofilter_disconnectnotify_callback != nullptr) {
            qabstractvideofilter_disconnectnotify_callback(this, signal);
        } else {
            QAbstractVideoFilter::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qabstractvideofilter_sender_isbase) {
            qabstractvideofilter_sender_isbase = false;
            return QAbstractVideoFilter::sender();
        } else if (qabstractvideofilter_sender_callback != nullptr) {
            return qabstractvideofilter_sender_callback();
        } else {
            return QAbstractVideoFilter::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qabstractvideofilter_sendersignalindex_isbase) {
            qabstractvideofilter_sendersignalindex_isbase = false;
            return QAbstractVideoFilter::senderSignalIndex();
        } else if (qabstractvideofilter_sendersignalindex_callback != nullptr) {
            return qabstractvideofilter_sendersignalindex_callback();
        } else {
            return QAbstractVideoFilter::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qabstractvideofilter_receivers_isbase) {
            qabstractvideofilter_receivers_isbase = false;
            return QAbstractVideoFilter::receivers(signal);
        } else if (qabstractvideofilter_receivers_callback != nullptr) {
            return qabstractvideofilter_receivers_callback(this, signal);
        } else {
            return QAbstractVideoFilter::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qabstractvideofilter_issignalconnected_isbase) {
            qabstractvideofilter_issignalconnected_isbase = false;
            return QAbstractVideoFilter::isSignalConnected(signal);
        } else if (qabstractvideofilter_issignalconnected_callback != nullptr) {
            return qabstractvideofilter_issignalconnected_callback(this, signal);
        } else {
            return QAbstractVideoFilter::isSignalConnected(signal);
        }
    }
};

#endif
