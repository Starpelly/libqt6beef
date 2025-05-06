#pragma once
#ifndef SRC_MULTIMEDIAC_LIBVIRTUALQAUDIORECORDER_H
#define SRC_MULTIMEDIAC_LIBVIRTUALQAUDIORECORDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QAudioRecorder so that we can call protected methods
class VirtualQAudioRecorder : public QAudioRecorder {

  public:
    // Virtual class public types (including callbacks)
    using QAudioRecorder_Metacall_Callback = int (*)(QAudioRecorder*, QMetaObject::Call, int, void**);
    using QAudioRecorder_MediaObject_Callback = QMediaObject* (*)();
    using QAudioRecorder_SetMediaObject_Callback = bool (*)(QAudioRecorder*, QMediaObject*);
    using QAudioRecorder_Event_Callback = bool (*)(QAudioRecorder*, QEvent*);
    using QAudioRecorder_EventFilter_Callback = bool (*)(QAudioRecorder*, QObject*, QEvent*);
    using QAudioRecorder_TimerEvent_Callback = void (*)(QAudioRecorder*, QTimerEvent*);
    using QAudioRecorder_ChildEvent_Callback = void (*)(QAudioRecorder*, QChildEvent*);
    using QAudioRecorder_CustomEvent_Callback = void (*)(QAudioRecorder*, QEvent*);
    using QAudioRecorder_ConnectNotify_Callback = void (*)(QAudioRecorder*, const QMetaMethod&);
    using QAudioRecorder_DisconnectNotify_Callback = void (*)(QAudioRecorder*, const QMetaMethod&);
    using QAudioRecorder_Sender_Callback = QObject* (*)();
    using QAudioRecorder_SenderSignalIndex_Callback = int (*)();
    using QAudioRecorder_Receivers_Callback = int (*)(const QAudioRecorder*, const char*);
    using QAudioRecorder_IsSignalConnected_Callback = bool (*)(const QAudioRecorder*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QAudioRecorder_Metacall_Callback qaudiorecorder_metacall_callback = nullptr;
    QAudioRecorder_MediaObject_Callback qaudiorecorder_mediaobject_callback = nullptr;
    QAudioRecorder_SetMediaObject_Callback qaudiorecorder_setmediaobject_callback = nullptr;
    QAudioRecorder_Event_Callback qaudiorecorder_event_callback = nullptr;
    QAudioRecorder_EventFilter_Callback qaudiorecorder_eventfilter_callback = nullptr;
    QAudioRecorder_TimerEvent_Callback qaudiorecorder_timerevent_callback = nullptr;
    QAudioRecorder_ChildEvent_Callback qaudiorecorder_childevent_callback = nullptr;
    QAudioRecorder_CustomEvent_Callback qaudiorecorder_customevent_callback = nullptr;
    QAudioRecorder_ConnectNotify_Callback qaudiorecorder_connectnotify_callback = nullptr;
    QAudioRecorder_DisconnectNotify_Callback qaudiorecorder_disconnectnotify_callback = nullptr;
    QAudioRecorder_Sender_Callback qaudiorecorder_sender_callback = nullptr;
    QAudioRecorder_SenderSignalIndex_Callback qaudiorecorder_sendersignalindex_callback = nullptr;
    QAudioRecorder_Receivers_Callback qaudiorecorder_receivers_callback = nullptr;
    QAudioRecorder_IsSignalConnected_Callback qaudiorecorder_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qaudiorecorder_metacall_isbase = false;
    mutable bool qaudiorecorder_mediaobject_isbase = false;
    mutable bool qaudiorecorder_setmediaobject_isbase = false;
    mutable bool qaudiorecorder_event_isbase = false;
    mutable bool qaudiorecorder_eventfilter_isbase = false;
    mutable bool qaudiorecorder_timerevent_isbase = false;
    mutable bool qaudiorecorder_childevent_isbase = false;
    mutable bool qaudiorecorder_customevent_isbase = false;
    mutable bool qaudiorecorder_connectnotify_isbase = false;
    mutable bool qaudiorecorder_disconnectnotify_isbase = false;
    mutable bool qaudiorecorder_sender_isbase = false;
    mutable bool qaudiorecorder_sendersignalindex_isbase = false;
    mutable bool qaudiorecorder_receivers_isbase = false;
    mutable bool qaudiorecorder_issignalconnected_isbase = false;

  public:
    VirtualQAudioRecorder() : QAudioRecorder(){};
    VirtualQAudioRecorder(QObject* parent) : QAudioRecorder(parent){};

    ~VirtualQAudioRecorder() {
        qaudiorecorder_metacall_callback = nullptr;
        qaudiorecorder_mediaobject_callback = nullptr;
        qaudiorecorder_setmediaobject_callback = nullptr;
        qaudiorecorder_event_callback = nullptr;
        qaudiorecorder_eventfilter_callback = nullptr;
        qaudiorecorder_timerevent_callback = nullptr;
        qaudiorecorder_childevent_callback = nullptr;
        qaudiorecorder_customevent_callback = nullptr;
        qaudiorecorder_connectnotify_callback = nullptr;
        qaudiorecorder_disconnectnotify_callback = nullptr;
        qaudiorecorder_sender_callback = nullptr;
        qaudiorecorder_sendersignalindex_callback = nullptr;
        qaudiorecorder_receivers_callback = nullptr;
        qaudiorecorder_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQAudioRecorder_Metacall_Callback(QAudioRecorder_Metacall_Callback cb) { qaudiorecorder_metacall_callback = cb; }
    void setQAudioRecorder_MediaObject_Callback(QAudioRecorder_MediaObject_Callback cb) { qaudiorecorder_mediaobject_callback = cb; }
    void setQAudioRecorder_SetMediaObject_Callback(QAudioRecorder_SetMediaObject_Callback cb) { qaudiorecorder_setmediaobject_callback = cb; }
    void setQAudioRecorder_Event_Callback(QAudioRecorder_Event_Callback cb) { qaudiorecorder_event_callback = cb; }
    void setQAudioRecorder_EventFilter_Callback(QAudioRecorder_EventFilter_Callback cb) { qaudiorecorder_eventfilter_callback = cb; }
    void setQAudioRecorder_TimerEvent_Callback(QAudioRecorder_TimerEvent_Callback cb) { qaudiorecorder_timerevent_callback = cb; }
    void setQAudioRecorder_ChildEvent_Callback(QAudioRecorder_ChildEvent_Callback cb) { qaudiorecorder_childevent_callback = cb; }
    void setQAudioRecorder_CustomEvent_Callback(QAudioRecorder_CustomEvent_Callback cb) { qaudiorecorder_customevent_callback = cb; }
    void setQAudioRecorder_ConnectNotify_Callback(QAudioRecorder_ConnectNotify_Callback cb) { qaudiorecorder_connectnotify_callback = cb; }
    void setQAudioRecorder_DisconnectNotify_Callback(QAudioRecorder_DisconnectNotify_Callback cb) { qaudiorecorder_disconnectnotify_callback = cb; }
    void setQAudioRecorder_Sender_Callback(QAudioRecorder_Sender_Callback cb) { qaudiorecorder_sender_callback = cb; }
    void setQAudioRecorder_SenderSignalIndex_Callback(QAudioRecorder_SenderSignalIndex_Callback cb) { qaudiorecorder_sendersignalindex_callback = cb; }
    void setQAudioRecorder_Receivers_Callback(QAudioRecorder_Receivers_Callback cb) { qaudiorecorder_receivers_callback = cb; }
    void setQAudioRecorder_IsSignalConnected_Callback(QAudioRecorder_IsSignalConnected_Callback cb) { qaudiorecorder_issignalconnected_callback = cb; }

    // Base flag setters
    void setQAudioRecorder_Metacall_IsBase(bool value) const { qaudiorecorder_metacall_isbase = value; }
    void setQAudioRecorder_MediaObject_IsBase(bool value) const { qaudiorecorder_mediaobject_isbase = value; }
    void setQAudioRecorder_SetMediaObject_IsBase(bool value) const { qaudiorecorder_setmediaobject_isbase = value; }
    void setQAudioRecorder_Event_IsBase(bool value) const { qaudiorecorder_event_isbase = value; }
    void setQAudioRecorder_EventFilter_IsBase(bool value) const { qaudiorecorder_eventfilter_isbase = value; }
    void setQAudioRecorder_TimerEvent_IsBase(bool value) const { qaudiorecorder_timerevent_isbase = value; }
    void setQAudioRecorder_ChildEvent_IsBase(bool value) const { qaudiorecorder_childevent_isbase = value; }
    void setQAudioRecorder_CustomEvent_IsBase(bool value) const { qaudiorecorder_customevent_isbase = value; }
    void setQAudioRecorder_ConnectNotify_IsBase(bool value) const { qaudiorecorder_connectnotify_isbase = value; }
    void setQAudioRecorder_DisconnectNotify_IsBase(bool value) const { qaudiorecorder_disconnectnotify_isbase = value; }
    void setQAudioRecorder_Sender_IsBase(bool value) const { qaudiorecorder_sender_isbase = value; }
    void setQAudioRecorder_SenderSignalIndex_IsBase(bool value) const { qaudiorecorder_sendersignalindex_isbase = value; }
    void setQAudioRecorder_Receivers_IsBase(bool value) const { qaudiorecorder_receivers_isbase = value; }
    void setQAudioRecorder_IsSignalConnected_IsBase(bool value) const { qaudiorecorder_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qaudiorecorder_metacall_isbase) {
            qaudiorecorder_metacall_isbase = false;
            return QAudioRecorder::qt_metacall(param1, param2, param3);
        } else if (qaudiorecorder_metacall_callback != nullptr) {
            return qaudiorecorder_metacall_callback(this, param1, param2, param3);
        } else {
            return QAudioRecorder::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QMediaObject* mediaObject() const override {
        if (qaudiorecorder_mediaobject_isbase) {
            qaudiorecorder_mediaobject_isbase = false;
            return QAudioRecorder::mediaObject();
        } else if (qaudiorecorder_mediaobject_callback != nullptr) {
            return qaudiorecorder_mediaobject_callback();
        } else {
            return QAudioRecorder::mediaObject();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool setMediaObject(QMediaObject* object) override {
        if (qaudiorecorder_setmediaobject_isbase) {
            qaudiorecorder_setmediaobject_isbase = false;
            return QAudioRecorder::setMediaObject(object);
        } else if (qaudiorecorder_setmediaobject_callback != nullptr) {
            return qaudiorecorder_setmediaobject_callback(this, object);
        } else {
            return QAudioRecorder::setMediaObject(object);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qaudiorecorder_event_isbase) {
            qaudiorecorder_event_isbase = false;
            return QAudioRecorder::event(event);
        } else if (qaudiorecorder_event_callback != nullptr) {
            return qaudiorecorder_event_callback(this, event);
        } else {
            return QAudioRecorder::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qaudiorecorder_eventfilter_isbase) {
            qaudiorecorder_eventfilter_isbase = false;
            return QAudioRecorder::eventFilter(watched, event);
        } else if (qaudiorecorder_eventfilter_callback != nullptr) {
            return qaudiorecorder_eventfilter_callback(this, watched, event);
        } else {
            return QAudioRecorder::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qaudiorecorder_timerevent_isbase) {
            qaudiorecorder_timerevent_isbase = false;
            QAudioRecorder::timerEvent(event);
        } else if (qaudiorecorder_timerevent_callback != nullptr) {
            qaudiorecorder_timerevent_callback(this, event);
        } else {
            QAudioRecorder::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qaudiorecorder_childevent_isbase) {
            qaudiorecorder_childevent_isbase = false;
            QAudioRecorder::childEvent(event);
        } else if (qaudiorecorder_childevent_callback != nullptr) {
            qaudiorecorder_childevent_callback(this, event);
        } else {
            QAudioRecorder::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qaudiorecorder_customevent_isbase) {
            qaudiorecorder_customevent_isbase = false;
            QAudioRecorder::customEvent(event);
        } else if (qaudiorecorder_customevent_callback != nullptr) {
            qaudiorecorder_customevent_callback(this, event);
        } else {
            QAudioRecorder::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qaudiorecorder_connectnotify_isbase) {
            qaudiorecorder_connectnotify_isbase = false;
            QAudioRecorder::connectNotify(signal);
        } else if (qaudiorecorder_connectnotify_callback != nullptr) {
            qaudiorecorder_connectnotify_callback(this, signal);
        } else {
            QAudioRecorder::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qaudiorecorder_disconnectnotify_isbase) {
            qaudiorecorder_disconnectnotify_isbase = false;
            QAudioRecorder::disconnectNotify(signal);
        } else if (qaudiorecorder_disconnectnotify_callback != nullptr) {
            qaudiorecorder_disconnectnotify_callback(this, signal);
        } else {
            QAudioRecorder::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qaudiorecorder_sender_isbase) {
            qaudiorecorder_sender_isbase = false;
            return QAudioRecorder::sender();
        } else if (qaudiorecorder_sender_callback != nullptr) {
            return qaudiorecorder_sender_callback();
        } else {
            return QAudioRecorder::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qaudiorecorder_sendersignalindex_isbase) {
            qaudiorecorder_sendersignalindex_isbase = false;
            return QAudioRecorder::senderSignalIndex();
        } else if (qaudiorecorder_sendersignalindex_callback != nullptr) {
            return qaudiorecorder_sendersignalindex_callback();
        } else {
            return QAudioRecorder::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qaudiorecorder_receivers_isbase) {
            qaudiorecorder_receivers_isbase = false;
            return QAudioRecorder::receivers(signal);
        } else if (qaudiorecorder_receivers_callback != nullptr) {
            return qaudiorecorder_receivers_callback(this, signal);
        } else {
            return QAudioRecorder::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qaudiorecorder_issignalconnected_isbase) {
            qaudiorecorder_issignalconnected_isbase = false;
            return QAudioRecorder::isSignalConnected(signal);
        } else if (qaudiorecorder_issignalconnected_callback != nullptr) {
            return qaudiorecorder_issignalconnected_callback(this, signal);
        } else {
            return QAudioRecorder::isSignalConnected(signal);
        }
    }
};

#endif
