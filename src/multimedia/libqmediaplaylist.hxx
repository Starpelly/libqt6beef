#pragma once
#ifndef SRC_MULTIMEDIAC_LIBVIRTUALQMEDIAPLAYLIST_H
#define SRC_MULTIMEDIAC_LIBVIRTUALQMEDIAPLAYLIST_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QMediaPlaylist so that we can call protected methods
class VirtualQMediaPlaylist : public QMediaPlaylist {

  public:
    // Virtual class public types (including callbacks)
    using QMediaPlaylist_Metacall_Callback = int (*)(QMediaPlaylist*, QMetaObject::Call, int, void**);
    using QMediaPlaylist_MediaObject_Callback = QMediaObject* (*)();
    using QMediaPlaylist_SetMediaObject_Callback = bool (*)(QMediaPlaylist*, QMediaObject*);
    using QMediaPlaylist_Event_Callback = bool (*)(QMediaPlaylist*, QEvent*);
    using QMediaPlaylist_EventFilter_Callback = bool (*)(QMediaPlaylist*, QObject*, QEvent*);
    using QMediaPlaylist_TimerEvent_Callback = void (*)(QMediaPlaylist*, QTimerEvent*);
    using QMediaPlaylist_ChildEvent_Callback = void (*)(QMediaPlaylist*, QChildEvent*);
    using QMediaPlaylist_CustomEvent_Callback = void (*)(QMediaPlaylist*, QEvent*);
    using QMediaPlaylist_ConnectNotify_Callback = void (*)(QMediaPlaylist*, const QMetaMethod&);
    using QMediaPlaylist_DisconnectNotify_Callback = void (*)(QMediaPlaylist*, const QMetaMethod&);
    using QMediaPlaylist_Sender_Callback = QObject* (*)();
    using QMediaPlaylist_SenderSignalIndex_Callback = int (*)();
    using QMediaPlaylist_Receivers_Callback = int (*)(const QMediaPlaylist*, const char*);
    using QMediaPlaylist_IsSignalConnected_Callback = bool (*)(const QMediaPlaylist*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QMediaPlaylist_Metacall_Callback qmediaplaylist_metacall_callback = nullptr;
    QMediaPlaylist_MediaObject_Callback qmediaplaylist_mediaobject_callback = nullptr;
    QMediaPlaylist_SetMediaObject_Callback qmediaplaylist_setmediaobject_callback = nullptr;
    QMediaPlaylist_Event_Callback qmediaplaylist_event_callback = nullptr;
    QMediaPlaylist_EventFilter_Callback qmediaplaylist_eventfilter_callback = nullptr;
    QMediaPlaylist_TimerEvent_Callback qmediaplaylist_timerevent_callback = nullptr;
    QMediaPlaylist_ChildEvent_Callback qmediaplaylist_childevent_callback = nullptr;
    QMediaPlaylist_CustomEvent_Callback qmediaplaylist_customevent_callback = nullptr;
    QMediaPlaylist_ConnectNotify_Callback qmediaplaylist_connectnotify_callback = nullptr;
    QMediaPlaylist_DisconnectNotify_Callback qmediaplaylist_disconnectnotify_callback = nullptr;
    QMediaPlaylist_Sender_Callback qmediaplaylist_sender_callback = nullptr;
    QMediaPlaylist_SenderSignalIndex_Callback qmediaplaylist_sendersignalindex_callback = nullptr;
    QMediaPlaylist_Receivers_Callback qmediaplaylist_receivers_callback = nullptr;
    QMediaPlaylist_IsSignalConnected_Callback qmediaplaylist_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qmediaplaylist_metacall_isbase = false;
    mutable bool qmediaplaylist_mediaobject_isbase = false;
    mutable bool qmediaplaylist_setmediaobject_isbase = false;
    mutable bool qmediaplaylist_event_isbase = false;
    mutable bool qmediaplaylist_eventfilter_isbase = false;
    mutable bool qmediaplaylist_timerevent_isbase = false;
    mutable bool qmediaplaylist_childevent_isbase = false;
    mutable bool qmediaplaylist_customevent_isbase = false;
    mutable bool qmediaplaylist_connectnotify_isbase = false;
    mutable bool qmediaplaylist_disconnectnotify_isbase = false;
    mutable bool qmediaplaylist_sender_isbase = false;
    mutable bool qmediaplaylist_sendersignalindex_isbase = false;
    mutable bool qmediaplaylist_receivers_isbase = false;
    mutable bool qmediaplaylist_issignalconnected_isbase = false;

  public:
    VirtualQMediaPlaylist() : QMediaPlaylist(){};
    VirtualQMediaPlaylist(QObject* parent) : QMediaPlaylist(parent){};

    ~VirtualQMediaPlaylist() {
        qmediaplaylist_metacall_callback = nullptr;
        qmediaplaylist_mediaobject_callback = nullptr;
        qmediaplaylist_setmediaobject_callback = nullptr;
        qmediaplaylist_event_callback = nullptr;
        qmediaplaylist_eventfilter_callback = nullptr;
        qmediaplaylist_timerevent_callback = nullptr;
        qmediaplaylist_childevent_callback = nullptr;
        qmediaplaylist_customevent_callback = nullptr;
        qmediaplaylist_connectnotify_callback = nullptr;
        qmediaplaylist_disconnectnotify_callback = nullptr;
        qmediaplaylist_sender_callback = nullptr;
        qmediaplaylist_sendersignalindex_callback = nullptr;
        qmediaplaylist_receivers_callback = nullptr;
        qmediaplaylist_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQMediaPlaylist_Metacall_Callback(QMediaPlaylist_Metacall_Callback cb) { qmediaplaylist_metacall_callback = cb; }
    void setQMediaPlaylist_MediaObject_Callback(QMediaPlaylist_MediaObject_Callback cb) { qmediaplaylist_mediaobject_callback = cb; }
    void setQMediaPlaylist_SetMediaObject_Callback(QMediaPlaylist_SetMediaObject_Callback cb) { qmediaplaylist_setmediaobject_callback = cb; }
    void setQMediaPlaylist_Event_Callback(QMediaPlaylist_Event_Callback cb) { qmediaplaylist_event_callback = cb; }
    void setQMediaPlaylist_EventFilter_Callback(QMediaPlaylist_EventFilter_Callback cb) { qmediaplaylist_eventfilter_callback = cb; }
    void setQMediaPlaylist_TimerEvent_Callback(QMediaPlaylist_TimerEvent_Callback cb) { qmediaplaylist_timerevent_callback = cb; }
    void setQMediaPlaylist_ChildEvent_Callback(QMediaPlaylist_ChildEvent_Callback cb) { qmediaplaylist_childevent_callback = cb; }
    void setQMediaPlaylist_CustomEvent_Callback(QMediaPlaylist_CustomEvent_Callback cb) { qmediaplaylist_customevent_callback = cb; }
    void setQMediaPlaylist_ConnectNotify_Callback(QMediaPlaylist_ConnectNotify_Callback cb) { qmediaplaylist_connectnotify_callback = cb; }
    void setQMediaPlaylist_DisconnectNotify_Callback(QMediaPlaylist_DisconnectNotify_Callback cb) { qmediaplaylist_disconnectnotify_callback = cb; }
    void setQMediaPlaylist_Sender_Callback(QMediaPlaylist_Sender_Callback cb) { qmediaplaylist_sender_callback = cb; }
    void setQMediaPlaylist_SenderSignalIndex_Callback(QMediaPlaylist_SenderSignalIndex_Callback cb) { qmediaplaylist_sendersignalindex_callback = cb; }
    void setQMediaPlaylist_Receivers_Callback(QMediaPlaylist_Receivers_Callback cb) { qmediaplaylist_receivers_callback = cb; }
    void setQMediaPlaylist_IsSignalConnected_Callback(QMediaPlaylist_IsSignalConnected_Callback cb) { qmediaplaylist_issignalconnected_callback = cb; }

    // Base flag setters
    void setQMediaPlaylist_Metacall_IsBase(bool value) const { qmediaplaylist_metacall_isbase = value; }
    void setQMediaPlaylist_MediaObject_IsBase(bool value) const { qmediaplaylist_mediaobject_isbase = value; }
    void setQMediaPlaylist_SetMediaObject_IsBase(bool value) const { qmediaplaylist_setmediaobject_isbase = value; }
    void setQMediaPlaylist_Event_IsBase(bool value) const { qmediaplaylist_event_isbase = value; }
    void setQMediaPlaylist_EventFilter_IsBase(bool value) const { qmediaplaylist_eventfilter_isbase = value; }
    void setQMediaPlaylist_TimerEvent_IsBase(bool value) const { qmediaplaylist_timerevent_isbase = value; }
    void setQMediaPlaylist_ChildEvent_IsBase(bool value) const { qmediaplaylist_childevent_isbase = value; }
    void setQMediaPlaylist_CustomEvent_IsBase(bool value) const { qmediaplaylist_customevent_isbase = value; }
    void setQMediaPlaylist_ConnectNotify_IsBase(bool value) const { qmediaplaylist_connectnotify_isbase = value; }
    void setQMediaPlaylist_DisconnectNotify_IsBase(bool value) const { qmediaplaylist_disconnectnotify_isbase = value; }
    void setQMediaPlaylist_Sender_IsBase(bool value) const { qmediaplaylist_sender_isbase = value; }
    void setQMediaPlaylist_SenderSignalIndex_IsBase(bool value) const { qmediaplaylist_sendersignalindex_isbase = value; }
    void setQMediaPlaylist_Receivers_IsBase(bool value) const { qmediaplaylist_receivers_isbase = value; }
    void setQMediaPlaylist_IsSignalConnected_IsBase(bool value) const { qmediaplaylist_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qmediaplaylist_metacall_isbase) {
            qmediaplaylist_metacall_isbase = false;
            return QMediaPlaylist::qt_metacall(param1, param2, param3);
        } else if (qmediaplaylist_metacall_callback != nullptr) {
            return qmediaplaylist_metacall_callback(this, param1, param2, param3);
        } else {
            return QMediaPlaylist::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QMediaObject* mediaObject() const override {
        if (qmediaplaylist_mediaobject_isbase) {
            qmediaplaylist_mediaobject_isbase = false;
            return QMediaPlaylist::mediaObject();
        } else if (qmediaplaylist_mediaobject_callback != nullptr) {
            return qmediaplaylist_mediaobject_callback();
        } else {
            return QMediaPlaylist::mediaObject();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool setMediaObject(QMediaObject* object) override {
        if (qmediaplaylist_setmediaobject_isbase) {
            qmediaplaylist_setmediaobject_isbase = false;
            return QMediaPlaylist::setMediaObject(object);
        } else if (qmediaplaylist_setmediaobject_callback != nullptr) {
            return qmediaplaylist_setmediaobject_callback(this, object);
        } else {
            return QMediaPlaylist::setMediaObject(object);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qmediaplaylist_event_isbase) {
            qmediaplaylist_event_isbase = false;
            return QMediaPlaylist::event(event);
        } else if (qmediaplaylist_event_callback != nullptr) {
            return qmediaplaylist_event_callback(this, event);
        } else {
            return QMediaPlaylist::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qmediaplaylist_eventfilter_isbase) {
            qmediaplaylist_eventfilter_isbase = false;
            return QMediaPlaylist::eventFilter(watched, event);
        } else if (qmediaplaylist_eventfilter_callback != nullptr) {
            return qmediaplaylist_eventfilter_callback(this, watched, event);
        } else {
            return QMediaPlaylist::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qmediaplaylist_timerevent_isbase) {
            qmediaplaylist_timerevent_isbase = false;
            QMediaPlaylist::timerEvent(event);
        } else if (qmediaplaylist_timerevent_callback != nullptr) {
            qmediaplaylist_timerevent_callback(this, event);
        } else {
            QMediaPlaylist::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qmediaplaylist_childevent_isbase) {
            qmediaplaylist_childevent_isbase = false;
            QMediaPlaylist::childEvent(event);
        } else if (qmediaplaylist_childevent_callback != nullptr) {
            qmediaplaylist_childevent_callback(this, event);
        } else {
            QMediaPlaylist::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qmediaplaylist_customevent_isbase) {
            qmediaplaylist_customevent_isbase = false;
            QMediaPlaylist::customEvent(event);
        } else if (qmediaplaylist_customevent_callback != nullptr) {
            qmediaplaylist_customevent_callback(this, event);
        } else {
            QMediaPlaylist::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qmediaplaylist_connectnotify_isbase) {
            qmediaplaylist_connectnotify_isbase = false;
            QMediaPlaylist::connectNotify(signal);
        } else if (qmediaplaylist_connectnotify_callback != nullptr) {
            qmediaplaylist_connectnotify_callback(this, signal);
        } else {
            QMediaPlaylist::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qmediaplaylist_disconnectnotify_isbase) {
            qmediaplaylist_disconnectnotify_isbase = false;
            QMediaPlaylist::disconnectNotify(signal);
        } else if (qmediaplaylist_disconnectnotify_callback != nullptr) {
            qmediaplaylist_disconnectnotify_callback(this, signal);
        } else {
            QMediaPlaylist::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qmediaplaylist_sender_isbase) {
            qmediaplaylist_sender_isbase = false;
            return QMediaPlaylist::sender();
        } else if (qmediaplaylist_sender_callback != nullptr) {
            return qmediaplaylist_sender_callback();
        } else {
            return QMediaPlaylist::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qmediaplaylist_sendersignalindex_isbase) {
            qmediaplaylist_sendersignalindex_isbase = false;
            return QMediaPlaylist::senderSignalIndex();
        } else if (qmediaplaylist_sendersignalindex_callback != nullptr) {
            return qmediaplaylist_sendersignalindex_callback();
        } else {
            return QMediaPlaylist::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qmediaplaylist_receivers_isbase) {
            qmediaplaylist_receivers_isbase = false;
            return QMediaPlaylist::receivers(signal);
        } else if (qmediaplaylist_receivers_callback != nullptr) {
            return qmediaplaylist_receivers_callback(this, signal);
        } else {
            return QMediaPlaylist::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qmediaplaylist_issignalconnected_isbase) {
            qmediaplaylist_issignalconnected_isbase = false;
            return QMediaPlaylist::isSignalConnected(signal);
        } else if (qmediaplaylist_issignalconnected_callback != nullptr) {
            return qmediaplaylist_issignalconnected_callback(this, signal);
        } else {
            return QMediaPlaylist::isSignalConnected(signal);
        }
    }
};

#endif
