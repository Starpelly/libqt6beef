#pragma once
#ifndef SRC_MULTIMEDIAC_LIBVIRTUALQAUDIOPROBE_H
#define SRC_MULTIMEDIAC_LIBVIRTUALQAUDIOPROBE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QAudioProbe so that we can call protected methods
class VirtualQAudioProbe : public QAudioProbe {

  public:
    // Virtual class public types (including callbacks)
    using QAudioProbe_Metacall_Callback = int (*)(QAudioProbe*, QMetaObject::Call, int, void**);
    using QAudioProbe_Event_Callback = bool (*)(QAudioProbe*, QEvent*);
    using QAudioProbe_EventFilter_Callback = bool (*)(QAudioProbe*, QObject*, QEvent*);
    using QAudioProbe_TimerEvent_Callback = void (*)(QAudioProbe*, QTimerEvent*);
    using QAudioProbe_ChildEvent_Callback = void (*)(QAudioProbe*, QChildEvent*);
    using QAudioProbe_CustomEvent_Callback = void (*)(QAudioProbe*, QEvent*);
    using QAudioProbe_ConnectNotify_Callback = void (*)(QAudioProbe*, const QMetaMethod&);
    using QAudioProbe_DisconnectNotify_Callback = void (*)(QAudioProbe*, const QMetaMethod&);
    using QAudioProbe_Sender_Callback = QObject* (*)();
    using QAudioProbe_SenderSignalIndex_Callback = int (*)();
    using QAudioProbe_Receivers_Callback = int (*)(const QAudioProbe*, const char*);
    using QAudioProbe_IsSignalConnected_Callback = bool (*)(const QAudioProbe*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QAudioProbe_Metacall_Callback qaudioprobe_metacall_callback = nullptr;
    QAudioProbe_Event_Callback qaudioprobe_event_callback = nullptr;
    QAudioProbe_EventFilter_Callback qaudioprobe_eventfilter_callback = nullptr;
    QAudioProbe_TimerEvent_Callback qaudioprobe_timerevent_callback = nullptr;
    QAudioProbe_ChildEvent_Callback qaudioprobe_childevent_callback = nullptr;
    QAudioProbe_CustomEvent_Callback qaudioprobe_customevent_callback = nullptr;
    QAudioProbe_ConnectNotify_Callback qaudioprobe_connectnotify_callback = nullptr;
    QAudioProbe_DisconnectNotify_Callback qaudioprobe_disconnectnotify_callback = nullptr;
    QAudioProbe_Sender_Callback qaudioprobe_sender_callback = nullptr;
    QAudioProbe_SenderSignalIndex_Callback qaudioprobe_sendersignalindex_callback = nullptr;
    QAudioProbe_Receivers_Callback qaudioprobe_receivers_callback = nullptr;
    QAudioProbe_IsSignalConnected_Callback qaudioprobe_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qaudioprobe_metacall_isbase = false;
    mutable bool qaudioprobe_event_isbase = false;
    mutable bool qaudioprobe_eventfilter_isbase = false;
    mutable bool qaudioprobe_timerevent_isbase = false;
    mutable bool qaudioprobe_childevent_isbase = false;
    mutable bool qaudioprobe_customevent_isbase = false;
    mutable bool qaudioprobe_connectnotify_isbase = false;
    mutable bool qaudioprobe_disconnectnotify_isbase = false;
    mutable bool qaudioprobe_sender_isbase = false;
    mutable bool qaudioprobe_sendersignalindex_isbase = false;
    mutable bool qaudioprobe_receivers_isbase = false;
    mutable bool qaudioprobe_issignalconnected_isbase = false;

  public:
    VirtualQAudioProbe() : QAudioProbe(){};
    VirtualQAudioProbe(QObject* parent) : QAudioProbe(parent){};

    ~VirtualQAudioProbe() {
        qaudioprobe_metacall_callback = nullptr;
        qaudioprobe_event_callback = nullptr;
        qaudioprobe_eventfilter_callback = nullptr;
        qaudioprobe_timerevent_callback = nullptr;
        qaudioprobe_childevent_callback = nullptr;
        qaudioprobe_customevent_callback = nullptr;
        qaudioprobe_connectnotify_callback = nullptr;
        qaudioprobe_disconnectnotify_callback = nullptr;
        qaudioprobe_sender_callback = nullptr;
        qaudioprobe_sendersignalindex_callback = nullptr;
        qaudioprobe_receivers_callback = nullptr;
        qaudioprobe_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQAudioProbe_Metacall_Callback(QAudioProbe_Metacall_Callback cb) { qaudioprobe_metacall_callback = cb; }
    void setQAudioProbe_Event_Callback(QAudioProbe_Event_Callback cb) { qaudioprobe_event_callback = cb; }
    void setQAudioProbe_EventFilter_Callback(QAudioProbe_EventFilter_Callback cb) { qaudioprobe_eventfilter_callback = cb; }
    void setQAudioProbe_TimerEvent_Callback(QAudioProbe_TimerEvent_Callback cb) { qaudioprobe_timerevent_callback = cb; }
    void setQAudioProbe_ChildEvent_Callback(QAudioProbe_ChildEvent_Callback cb) { qaudioprobe_childevent_callback = cb; }
    void setQAudioProbe_CustomEvent_Callback(QAudioProbe_CustomEvent_Callback cb) { qaudioprobe_customevent_callback = cb; }
    void setQAudioProbe_ConnectNotify_Callback(QAudioProbe_ConnectNotify_Callback cb) { qaudioprobe_connectnotify_callback = cb; }
    void setQAudioProbe_DisconnectNotify_Callback(QAudioProbe_DisconnectNotify_Callback cb) { qaudioprobe_disconnectnotify_callback = cb; }
    void setQAudioProbe_Sender_Callback(QAudioProbe_Sender_Callback cb) { qaudioprobe_sender_callback = cb; }
    void setQAudioProbe_SenderSignalIndex_Callback(QAudioProbe_SenderSignalIndex_Callback cb) { qaudioprobe_sendersignalindex_callback = cb; }
    void setQAudioProbe_Receivers_Callback(QAudioProbe_Receivers_Callback cb) { qaudioprobe_receivers_callback = cb; }
    void setQAudioProbe_IsSignalConnected_Callback(QAudioProbe_IsSignalConnected_Callback cb) { qaudioprobe_issignalconnected_callback = cb; }

    // Base flag setters
    void setQAudioProbe_Metacall_IsBase(bool value) const { qaudioprobe_metacall_isbase = value; }
    void setQAudioProbe_Event_IsBase(bool value) const { qaudioprobe_event_isbase = value; }
    void setQAudioProbe_EventFilter_IsBase(bool value) const { qaudioprobe_eventfilter_isbase = value; }
    void setQAudioProbe_TimerEvent_IsBase(bool value) const { qaudioprobe_timerevent_isbase = value; }
    void setQAudioProbe_ChildEvent_IsBase(bool value) const { qaudioprobe_childevent_isbase = value; }
    void setQAudioProbe_CustomEvent_IsBase(bool value) const { qaudioprobe_customevent_isbase = value; }
    void setQAudioProbe_ConnectNotify_IsBase(bool value) const { qaudioprobe_connectnotify_isbase = value; }
    void setQAudioProbe_DisconnectNotify_IsBase(bool value) const { qaudioprobe_disconnectnotify_isbase = value; }
    void setQAudioProbe_Sender_IsBase(bool value) const { qaudioprobe_sender_isbase = value; }
    void setQAudioProbe_SenderSignalIndex_IsBase(bool value) const { qaudioprobe_sendersignalindex_isbase = value; }
    void setQAudioProbe_Receivers_IsBase(bool value) const { qaudioprobe_receivers_isbase = value; }
    void setQAudioProbe_IsSignalConnected_IsBase(bool value) const { qaudioprobe_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qaudioprobe_metacall_isbase) {
            qaudioprobe_metacall_isbase = false;
            return QAudioProbe::qt_metacall(param1, param2, param3);
        } else if (qaudioprobe_metacall_callback != nullptr) {
            return qaudioprobe_metacall_callback(this, param1, param2, param3);
        } else {
            return QAudioProbe::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qaudioprobe_event_isbase) {
            qaudioprobe_event_isbase = false;
            return QAudioProbe::event(event);
        } else if (qaudioprobe_event_callback != nullptr) {
            return qaudioprobe_event_callback(this, event);
        } else {
            return QAudioProbe::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qaudioprobe_eventfilter_isbase) {
            qaudioprobe_eventfilter_isbase = false;
            return QAudioProbe::eventFilter(watched, event);
        } else if (qaudioprobe_eventfilter_callback != nullptr) {
            return qaudioprobe_eventfilter_callback(this, watched, event);
        } else {
            return QAudioProbe::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qaudioprobe_timerevent_isbase) {
            qaudioprobe_timerevent_isbase = false;
            QAudioProbe::timerEvent(event);
        } else if (qaudioprobe_timerevent_callback != nullptr) {
            qaudioprobe_timerevent_callback(this, event);
        } else {
            QAudioProbe::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qaudioprobe_childevent_isbase) {
            qaudioprobe_childevent_isbase = false;
            QAudioProbe::childEvent(event);
        } else if (qaudioprobe_childevent_callback != nullptr) {
            qaudioprobe_childevent_callback(this, event);
        } else {
            QAudioProbe::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qaudioprobe_customevent_isbase) {
            qaudioprobe_customevent_isbase = false;
            QAudioProbe::customEvent(event);
        } else if (qaudioprobe_customevent_callback != nullptr) {
            qaudioprobe_customevent_callback(this, event);
        } else {
            QAudioProbe::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qaudioprobe_connectnotify_isbase) {
            qaudioprobe_connectnotify_isbase = false;
            QAudioProbe::connectNotify(signal);
        } else if (qaudioprobe_connectnotify_callback != nullptr) {
            qaudioprobe_connectnotify_callback(this, signal);
        } else {
            QAudioProbe::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qaudioprobe_disconnectnotify_isbase) {
            qaudioprobe_disconnectnotify_isbase = false;
            QAudioProbe::disconnectNotify(signal);
        } else if (qaudioprobe_disconnectnotify_callback != nullptr) {
            qaudioprobe_disconnectnotify_callback(this, signal);
        } else {
            QAudioProbe::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qaudioprobe_sender_isbase) {
            qaudioprobe_sender_isbase = false;
            return QAudioProbe::sender();
        } else if (qaudioprobe_sender_callback != nullptr) {
            return qaudioprobe_sender_callback();
        } else {
            return QAudioProbe::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qaudioprobe_sendersignalindex_isbase) {
            qaudioprobe_sendersignalindex_isbase = false;
            return QAudioProbe::senderSignalIndex();
        } else if (qaudioprobe_sendersignalindex_callback != nullptr) {
            return qaudioprobe_sendersignalindex_callback();
        } else {
            return QAudioProbe::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qaudioprobe_receivers_isbase) {
            qaudioprobe_receivers_isbase = false;
            return QAudioProbe::receivers(signal);
        } else if (qaudioprobe_receivers_callback != nullptr) {
            return qaudioprobe_receivers_callback(this, signal);
        } else {
            return QAudioProbe::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qaudioprobe_issignalconnected_isbase) {
            qaudioprobe_issignalconnected_isbase = false;
            return QAudioProbe::isSignalConnected(signal);
        } else if (qaudioprobe_issignalconnected_callback != nullptr) {
            return qaudioprobe_issignalconnected_callback(this, signal);
        } else {
            return QAudioProbe::isSignalConnected(signal);
        }
    }
};

#endif
