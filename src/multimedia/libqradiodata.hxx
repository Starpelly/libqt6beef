#pragma once
#ifndef SRC_MULTIMEDIAC_LIBVIRTUALQRADIODATA_H
#define SRC_MULTIMEDIAC_LIBVIRTUALQRADIODATA_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QRadioData so that we can call protected methods
class VirtualQRadioData : public QRadioData {

  public:
    // Virtual class public types (including callbacks)
    using QRadioData_Metacall_Callback = int (*)(QRadioData*, QMetaObject::Call, int, void**);
    using QRadioData_MediaObject_Callback = QMediaObject* (*)();
    using QRadioData_SetMediaObject_Callback = bool (*)(QRadioData*, QMediaObject*);
    using QRadioData_Event_Callback = bool (*)(QRadioData*, QEvent*);
    using QRadioData_EventFilter_Callback = bool (*)(QRadioData*, QObject*, QEvent*);
    using QRadioData_TimerEvent_Callback = void (*)(QRadioData*, QTimerEvent*);
    using QRadioData_ChildEvent_Callback = void (*)(QRadioData*, QChildEvent*);
    using QRadioData_CustomEvent_Callback = void (*)(QRadioData*, QEvent*);
    using QRadioData_ConnectNotify_Callback = void (*)(QRadioData*, const QMetaMethod&);
    using QRadioData_DisconnectNotify_Callback = void (*)(QRadioData*, const QMetaMethod&);
    using QRadioData_Sender_Callback = QObject* (*)();
    using QRadioData_SenderSignalIndex_Callback = int (*)();
    using QRadioData_Receivers_Callback = int (*)(const QRadioData*, const char*);
    using QRadioData_IsSignalConnected_Callback = bool (*)(const QRadioData*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QRadioData_Metacall_Callback qradiodata_metacall_callback = nullptr;
    QRadioData_MediaObject_Callback qradiodata_mediaobject_callback = nullptr;
    QRadioData_SetMediaObject_Callback qradiodata_setmediaobject_callback = nullptr;
    QRadioData_Event_Callback qradiodata_event_callback = nullptr;
    QRadioData_EventFilter_Callback qradiodata_eventfilter_callback = nullptr;
    QRadioData_TimerEvent_Callback qradiodata_timerevent_callback = nullptr;
    QRadioData_ChildEvent_Callback qradiodata_childevent_callback = nullptr;
    QRadioData_CustomEvent_Callback qradiodata_customevent_callback = nullptr;
    QRadioData_ConnectNotify_Callback qradiodata_connectnotify_callback = nullptr;
    QRadioData_DisconnectNotify_Callback qradiodata_disconnectnotify_callback = nullptr;
    QRadioData_Sender_Callback qradiodata_sender_callback = nullptr;
    QRadioData_SenderSignalIndex_Callback qradiodata_sendersignalindex_callback = nullptr;
    QRadioData_Receivers_Callback qradiodata_receivers_callback = nullptr;
    QRadioData_IsSignalConnected_Callback qradiodata_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qradiodata_metacall_isbase = false;
    mutable bool qradiodata_mediaobject_isbase = false;
    mutable bool qradiodata_setmediaobject_isbase = false;
    mutable bool qradiodata_event_isbase = false;
    mutable bool qradiodata_eventfilter_isbase = false;
    mutable bool qradiodata_timerevent_isbase = false;
    mutable bool qradiodata_childevent_isbase = false;
    mutable bool qradiodata_customevent_isbase = false;
    mutable bool qradiodata_connectnotify_isbase = false;
    mutable bool qradiodata_disconnectnotify_isbase = false;
    mutable bool qradiodata_sender_isbase = false;
    mutable bool qradiodata_sendersignalindex_isbase = false;
    mutable bool qradiodata_receivers_isbase = false;
    mutable bool qradiodata_issignalconnected_isbase = false;

  public:
    VirtualQRadioData(QMediaObject* mediaObject) : QRadioData(mediaObject){};
    VirtualQRadioData(QMediaObject* mediaObject, QObject* parent) : QRadioData(mediaObject, parent){};

    ~VirtualQRadioData() {
        qradiodata_metacall_callback = nullptr;
        qradiodata_mediaobject_callback = nullptr;
        qradiodata_setmediaobject_callback = nullptr;
        qradiodata_event_callback = nullptr;
        qradiodata_eventfilter_callback = nullptr;
        qradiodata_timerevent_callback = nullptr;
        qradiodata_childevent_callback = nullptr;
        qradiodata_customevent_callback = nullptr;
        qradiodata_connectnotify_callback = nullptr;
        qradiodata_disconnectnotify_callback = nullptr;
        qradiodata_sender_callback = nullptr;
        qradiodata_sendersignalindex_callback = nullptr;
        qradiodata_receivers_callback = nullptr;
        qradiodata_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQRadioData_Metacall_Callback(QRadioData_Metacall_Callback cb) { qradiodata_metacall_callback = cb; }
    void setQRadioData_MediaObject_Callback(QRadioData_MediaObject_Callback cb) { qradiodata_mediaobject_callback = cb; }
    void setQRadioData_SetMediaObject_Callback(QRadioData_SetMediaObject_Callback cb) { qradiodata_setmediaobject_callback = cb; }
    void setQRadioData_Event_Callback(QRadioData_Event_Callback cb) { qradiodata_event_callback = cb; }
    void setQRadioData_EventFilter_Callback(QRadioData_EventFilter_Callback cb) { qradiodata_eventfilter_callback = cb; }
    void setQRadioData_TimerEvent_Callback(QRadioData_TimerEvent_Callback cb) { qradiodata_timerevent_callback = cb; }
    void setQRadioData_ChildEvent_Callback(QRadioData_ChildEvent_Callback cb) { qradiodata_childevent_callback = cb; }
    void setQRadioData_CustomEvent_Callback(QRadioData_CustomEvent_Callback cb) { qradiodata_customevent_callback = cb; }
    void setQRadioData_ConnectNotify_Callback(QRadioData_ConnectNotify_Callback cb) { qradiodata_connectnotify_callback = cb; }
    void setQRadioData_DisconnectNotify_Callback(QRadioData_DisconnectNotify_Callback cb) { qradiodata_disconnectnotify_callback = cb; }
    void setQRadioData_Sender_Callback(QRadioData_Sender_Callback cb) { qradiodata_sender_callback = cb; }
    void setQRadioData_SenderSignalIndex_Callback(QRadioData_SenderSignalIndex_Callback cb) { qradiodata_sendersignalindex_callback = cb; }
    void setQRadioData_Receivers_Callback(QRadioData_Receivers_Callback cb) { qradiodata_receivers_callback = cb; }
    void setQRadioData_IsSignalConnected_Callback(QRadioData_IsSignalConnected_Callback cb) { qradiodata_issignalconnected_callback = cb; }

    // Base flag setters
    void setQRadioData_Metacall_IsBase(bool value) const { qradiodata_metacall_isbase = value; }
    void setQRadioData_MediaObject_IsBase(bool value) const { qradiodata_mediaobject_isbase = value; }
    void setQRadioData_SetMediaObject_IsBase(bool value) const { qradiodata_setmediaobject_isbase = value; }
    void setQRadioData_Event_IsBase(bool value) const { qradiodata_event_isbase = value; }
    void setQRadioData_EventFilter_IsBase(bool value) const { qradiodata_eventfilter_isbase = value; }
    void setQRadioData_TimerEvent_IsBase(bool value) const { qradiodata_timerevent_isbase = value; }
    void setQRadioData_ChildEvent_IsBase(bool value) const { qradiodata_childevent_isbase = value; }
    void setQRadioData_CustomEvent_IsBase(bool value) const { qradiodata_customevent_isbase = value; }
    void setQRadioData_ConnectNotify_IsBase(bool value) const { qradiodata_connectnotify_isbase = value; }
    void setQRadioData_DisconnectNotify_IsBase(bool value) const { qradiodata_disconnectnotify_isbase = value; }
    void setQRadioData_Sender_IsBase(bool value) const { qradiodata_sender_isbase = value; }
    void setQRadioData_SenderSignalIndex_IsBase(bool value) const { qradiodata_sendersignalindex_isbase = value; }
    void setQRadioData_Receivers_IsBase(bool value) const { qradiodata_receivers_isbase = value; }
    void setQRadioData_IsSignalConnected_IsBase(bool value) const { qradiodata_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qradiodata_metacall_isbase) {
            qradiodata_metacall_isbase = false;
            return QRadioData::qt_metacall(param1, param2, param3);
        } else if (qradiodata_metacall_callback != nullptr) {
            return qradiodata_metacall_callback(this, param1, param2, param3);
        } else {
            return QRadioData::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QMediaObject* mediaObject() const override {
        if (qradiodata_mediaobject_isbase) {
            qradiodata_mediaobject_isbase = false;
            return QRadioData::mediaObject();
        } else if (qradiodata_mediaobject_callback != nullptr) {
            return qradiodata_mediaobject_callback();
        } else {
            return QRadioData::mediaObject();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool setMediaObject(QMediaObject* mediaObject) override {
        if (qradiodata_setmediaobject_isbase) {
            qradiodata_setmediaobject_isbase = false;
            return QRadioData::setMediaObject(mediaObject);
        } else if (qradiodata_setmediaobject_callback != nullptr) {
            return qradiodata_setmediaobject_callback(this, mediaObject);
        } else {
            return QRadioData::setMediaObject(mediaObject);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qradiodata_event_isbase) {
            qradiodata_event_isbase = false;
            return QRadioData::event(event);
        } else if (qradiodata_event_callback != nullptr) {
            return qradiodata_event_callback(this, event);
        } else {
            return QRadioData::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qradiodata_eventfilter_isbase) {
            qradiodata_eventfilter_isbase = false;
            return QRadioData::eventFilter(watched, event);
        } else if (qradiodata_eventfilter_callback != nullptr) {
            return qradiodata_eventfilter_callback(this, watched, event);
        } else {
            return QRadioData::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qradiodata_timerevent_isbase) {
            qradiodata_timerevent_isbase = false;
            QRadioData::timerEvent(event);
        } else if (qradiodata_timerevent_callback != nullptr) {
            qradiodata_timerevent_callback(this, event);
        } else {
            QRadioData::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qradiodata_childevent_isbase) {
            qradiodata_childevent_isbase = false;
            QRadioData::childEvent(event);
        } else if (qradiodata_childevent_callback != nullptr) {
            qradiodata_childevent_callback(this, event);
        } else {
            QRadioData::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qradiodata_customevent_isbase) {
            qradiodata_customevent_isbase = false;
            QRadioData::customEvent(event);
        } else if (qradiodata_customevent_callback != nullptr) {
            qradiodata_customevent_callback(this, event);
        } else {
            QRadioData::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qradiodata_connectnotify_isbase) {
            qradiodata_connectnotify_isbase = false;
            QRadioData::connectNotify(signal);
        } else if (qradiodata_connectnotify_callback != nullptr) {
            qradiodata_connectnotify_callback(this, signal);
        } else {
            QRadioData::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qradiodata_disconnectnotify_isbase) {
            qradiodata_disconnectnotify_isbase = false;
            QRadioData::disconnectNotify(signal);
        } else if (qradiodata_disconnectnotify_callback != nullptr) {
            qradiodata_disconnectnotify_callback(this, signal);
        } else {
            QRadioData::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qradiodata_sender_isbase) {
            qradiodata_sender_isbase = false;
            return QRadioData::sender();
        } else if (qradiodata_sender_callback != nullptr) {
            return qradiodata_sender_callback();
        } else {
            return QRadioData::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qradiodata_sendersignalindex_isbase) {
            qradiodata_sendersignalindex_isbase = false;
            return QRadioData::senderSignalIndex();
        } else if (qradiodata_sendersignalindex_callback != nullptr) {
            return qradiodata_sendersignalindex_callback();
        } else {
            return QRadioData::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qradiodata_receivers_isbase) {
            qradiodata_receivers_isbase = false;
            return QRadioData::receivers(signal);
        } else if (qradiodata_receivers_callback != nullptr) {
            return qradiodata_receivers_callback(this, signal);
        } else {
            return QRadioData::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qradiodata_issignalconnected_isbase) {
            qradiodata_issignalconnected_isbase = false;
            return QRadioData::isSignalConnected(signal);
        } else if (qradiodata_issignalconnected_callback != nullptr) {
            return qradiodata_issignalconnected_callback(this, signal);
        } else {
            return QRadioData::isSignalConnected(signal);
        }
    }
};

#endif
