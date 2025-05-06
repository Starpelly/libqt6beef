#pragma once
#ifndef SRC_MULTIMEDIAC_LIBVIRTUALQSOUND_H
#define SRC_MULTIMEDIAC_LIBVIRTUALQSOUND_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QSound so that we can call protected methods
class VirtualQSound : public QSound {

  public:
    // Virtual class public types (including callbacks)
    using QSound_Metacall_Callback = int (*)(QSound*, QMetaObject::Call, int, void**);
    using QSound_Event_Callback = bool (*)(QSound*, QEvent*);
    using QSound_EventFilter_Callback = bool (*)(QSound*, QObject*, QEvent*);
    using QSound_TimerEvent_Callback = void (*)(QSound*, QTimerEvent*);
    using QSound_ChildEvent_Callback = void (*)(QSound*, QChildEvent*);
    using QSound_CustomEvent_Callback = void (*)(QSound*, QEvent*);
    using QSound_ConnectNotify_Callback = void (*)(QSound*, const QMetaMethod&);
    using QSound_DisconnectNotify_Callback = void (*)(QSound*, const QMetaMethod&);
    using QSound_Sender_Callback = QObject* (*)();
    using QSound_SenderSignalIndex_Callback = int (*)();
    using QSound_Receivers_Callback = int (*)(const QSound*, const char*);
    using QSound_IsSignalConnected_Callback = bool (*)(const QSound*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QSound_Metacall_Callback qsound_metacall_callback = nullptr;
    QSound_Event_Callback qsound_event_callback = nullptr;
    QSound_EventFilter_Callback qsound_eventfilter_callback = nullptr;
    QSound_TimerEvent_Callback qsound_timerevent_callback = nullptr;
    QSound_ChildEvent_Callback qsound_childevent_callback = nullptr;
    QSound_CustomEvent_Callback qsound_customevent_callback = nullptr;
    QSound_ConnectNotify_Callback qsound_connectnotify_callback = nullptr;
    QSound_DisconnectNotify_Callback qsound_disconnectnotify_callback = nullptr;
    QSound_Sender_Callback qsound_sender_callback = nullptr;
    QSound_SenderSignalIndex_Callback qsound_sendersignalindex_callback = nullptr;
    QSound_Receivers_Callback qsound_receivers_callback = nullptr;
    QSound_IsSignalConnected_Callback qsound_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qsound_metacall_isbase = false;
    mutable bool qsound_event_isbase = false;
    mutable bool qsound_eventfilter_isbase = false;
    mutable bool qsound_timerevent_isbase = false;
    mutable bool qsound_childevent_isbase = false;
    mutable bool qsound_customevent_isbase = false;
    mutable bool qsound_connectnotify_isbase = false;
    mutable bool qsound_disconnectnotify_isbase = false;
    mutable bool qsound_sender_isbase = false;
    mutable bool qsound_sendersignalindex_isbase = false;
    mutable bool qsound_receivers_isbase = false;
    mutable bool qsound_issignalconnected_isbase = false;

  public:
    VirtualQSound(const QString& filename) : QSound(filename){};
    VirtualQSound(const QString& filename, QObject* parent) : QSound(filename, parent){};

    ~VirtualQSound() {
        qsound_metacall_callback = nullptr;
        qsound_event_callback = nullptr;
        qsound_eventfilter_callback = nullptr;
        qsound_timerevent_callback = nullptr;
        qsound_childevent_callback = nullptr;
        qsound_customevent_callback = nullptr;
        qsound_connectnotify_callback = nullptr;
        qsound_disconnectnotify_callback = nullptr;
        qsound_sender_callback = nullptr;
        qsound_sendersignalindex_callback = nullptr;
        qsound_receivers_callback = nullptr;
        qsound_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQSound_Metacall_Callback(QSound_Metacall_Callback cb) { qsound_metacall_callback = cb; }
    void setQSound_Event_Callback(QSound_Event_Callback cb) { qsound_event_callback = cb; }
    void setQSound_EventFilter_Callback(QSound_EventFilter_Callback cb) { qsound_eventfilter_callback = cb; }
    void setQSound_TimerEvent_Callback(QSound_TimerEvent_Callback cb) { qsound_timerevent_callback = cb; }
    void setQSound_ChildEvent_Callback(QSound_ChildEvent_Callback cb) { qsound_childevent_callback = cb; }
    void setQSound_CustomEvent_Callback(QSound_CustomEvent_Callback cb) { qsound_customevent_callback = cb; }
    void setQSound_ConnectNotify_Callback(QSound_ConnectNotify_Callback cb) { qsound_connectnotify_callback = cb; }
    void setQSound_DisconnectNotify_Callback(QSound_DisconnectNotify_Callback cb) { qsound_disconnectnotify_callback = cb; }
    void setQSound_Sender_Callback(QSound_Sender_Callback cb) { qsound_sender_callback = cb; }
    void setQSound_SenderSignalIndex_Callback(QSound_SenderSignalIndex_Callback cb) { qsound_sendersignalindex_callback = cb; }
    void setQSound_Receivers_Callback(QSound_Receivers_Callback cb) { qsound_receivers_callback = cb; }
    void setQSound_IsSignalConnected_Callback(QSound_IsSignalConnected_Callback cb) { qsound_issignalconnected_callback = cb; }

    // Base flag setters
    void setQSound_Metacall_IsBase(bool value) const { qsound_metacall_isbase = value; }
    void setQSound_Event_IsBase(bool value) const { qsound_event_isbase = value; }
    void setQSound_EventFilter_IsBase(bool value) const { qsound_eventfilter_isbase = value; }
    void setQSound_TimerEvent_IsBase(bool value) const { qsound_timerevent_isbase = value; }
    void setQSound_ChildEvent_IsBase(bool value) const { qsound_childevent_isbase = value; }
    void setQSound_CustomEvent_IsBase(bool value) const { qsound_customevent_isbase = value; }
    void setQSound_ConnectNotify_IsBase(bool value) const { qsound_connectnotify_isbase = value; }
    void setQSound_DisconnectNotify_IsBase(bool value) const { qsound_disconnectnotify_isbase = value; }
    void setQSound_Sender_IsBase(bool value) const { qsound_sender_isbase = value; }
    void setQSound_SenderSignalIndex_IsBase(bool value) const { qsound_sendersignalindex_isbase = value; }
    void setQSound_Receivers_IsBase(bool value) const { qsound_receivers_isbase = value; }
    void setQSound_IsSignalConnected_IsBase(bool value) const { qsound_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qsound_metacall_isbase) {
            qsound_metacall_isbase = false;
            return QSound::qt_metacall(param1, param2, param3);
        } else if (qsound_metacall_callback != nullptr) {
            return qsound_metacall_callback(this, param1, param2, param3);
        } else {
            return QSound::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qsound_event_isbase) {
            qsound_event_isbase = false;
            return QSound::event(event);
        } else if (qsound_event_callback != nullptr) {
            return qsound_event_callback(this, event);
        } else {
            return QSound::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qsound_eventfilter_isbase) {
            qsound_eventfilter_isbase = false;
            return QSound::eventFilter(watched, event);
        } else if (qsound_eventfilter_callback != nullptr) {
            return qsound_eventfilter_callback(this, watched, event);
        } else {
            return QSound::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qsound_timerevent_isbase) {
            qsound_timerevent_isbase = false;
            QSound::timerEvent(event);
        } else if (qsound_timerevent_callback != nullptr) {
            qsound_timerevent_callback(this, event);
        } else {
            QSound::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qsound_childevent_isbase) {
            qsound_childevent_isbase = false;
            QSound::childEvent(event);
        } else if (qsound_childevent_callback != nullptr) {
            qsound_childevent_callback(this, event);
        } else {
            QSound::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qsound_customevent_isbase) {
            qsound_customevent_isbase = false;
            QSound::customEvent(event);
        } else if (qsound_customevent_callback != nullptr) {
            qsound_customevent_callback(this, event);
        } else {
            QSound::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qsound_connectnotify_isbase) {
            qsound_connectnotify_isbase = false;
            QSound::connectNotify(signal);
        } else if (qsound_connectnotify_callback != nullptr) {
            qsound_connectnotify_callback(this, signal);
        } else {
            QSound::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qsound_disconnectnotify_isbase) {
            qsound_disconnectnotify_isbase = false;
            QSound::disconnectNotify(signal);
        } else if (qsound_disconnectnotify_callback != nullptr) {
            qsound_disconnectnotify_callback(this, signal);
        } else {
            QSound::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qsound_sender_isbase) {
            qsound_sender_isbase = false;
            return QSound::sender();
        } else if (qsound_sender_callback != nullptr) {
            return qsound_sender_callback();
        } else {
            return QSound::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qsound_sendersignalindex_isbase) {
            qsound_sendersignalindex_isbase = false;
            return QSound::senderSignalIndex();
        } else if (qsound_sendersignalindex_callback != nullptr) {
            return qsound_sendersignalindex_callback();
        } else {
            return QSound::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qsound_receivers_isbase) {
            qsound_receivers_isbase = false;
            return QSound::receivers(signal);
        } else if (qsound_receivers_callback != nullptr) {
            return qsound_receivers_callback(this, signal);
        } else {
            return QSound::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qsound_issignalconnected_isbase) {
            qsound_issignalconnected_isbase = false;
            return QSound::isSignalConnected(signal);
        } else if (qsound_issignalconnected_callback != nullptr) {
            return qsound_issignalconnected_callback(this, signal);
        } else {
            return QSound::isSignalConnected(signal);
        }
    }
};

#endif
