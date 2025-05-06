#pragma once
#ifndef SRC_MULTIMEDIAC_LIBVIRTUALQCAMERAIMAGECAPTURE_H
#define SRC_MULTIMEDIAC_LIBVIRTUALQCAMERAIMAGECAPTURE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QCameraImageCapture so that we can call protected methods
class VirtualQCameraImageCapture : public QCameraImageCapture {

  public:
    // Virtual class public types (including callbacks)
    using QCameraImageCapture_Metacall_Callback = int (*)(QCameraImageCapture*, QMetaObject::Call, int, void**);
    using QCameraImageCapture_MediaObject_Callback = QMediaObject* (*)();
    using QCameraImageCapture_SetMediaObject_Callback = bool (*)(QCameraImageCapture*, QMediaObject*);
    using QCameraImageCapture_Event_Callback = bool (*)(QCameraImageCapture*, QEvent*);
    using QCameraImageCapture_EventFilter_Callback = bool (*)(QCameraImageCapture*, QObject*, QEvent*);
    using QCameraImageCapture_TimerEvent_Callback = void (*)(QCameraImageCapture*, QTimerEvent*);
    using QCameraImageCapture_ChildEvent_Callback = void (*)(QCameraImageCapture*, QChildEvent*);
    using QCameraImageCapture_CustomEvent_Callback = void (*)(QCameraImageCapture*, QEvent*);
    using QCameraImageCapture_ConnectNotify_Callback = void (*)(QCameraImageCapture*, const QMetaMethod&);
    using QCameraImageCapture_DisconnectNotify_Callback = void (*)(QCameraImageCapture*, const QMetaMethod&);
    using QCameraImageCapture_Sender_Callback = QObject* (*)();
    using QCameraImageCapture_SenderSignalIndex_Callback = int (*)();
    using QCameraImageCapture_Receivers_Callback = int (*)(const QCameraImageCapture*, const char*);
    using QCameraImageCapture_IsSignalConnected_Callback = bool (*)(const QCameraImageCapture*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QCameraImageCapture_Metacall_Callback qcameraimagecapture_metacall_callback = nullptr;
    QCameraImageCapture_MediaObject_Callback qcameraimagecapture_mediaobject_callback = nullptr;
    QCameraImageCapture_SetMediaObject_Callback qcameraimagecapture_setmediaobject_callback = nullptr;
    QCameraImageCapture_Event_Callback qcameraimagecapture_event_callback = nullptr;
    QCameraImageCapture_EventFilter_Callback qcameraimagecapture_eventfilter_callback = nullptr;
    QCameraImageCapture_TimerEvent_Callback qcameraimagecapture_timerevent_callback = nullptr;
    QCameraImageCapture_ChildEvent_Callback qcameraimagecapture_childevent_callback = nullptr;
    QCameraImageCapture_CustomEvent_Callback qcameraimagecapture_customevent_callback = nullptr;
    QCameraImageCapture_ConnectNotify_Callback qcameraimagecapture_connectnotify_callback = nullptr;
    QCameraImageCapture_DisconnectNotify_Callback qcameraimagecapture_disconnectnotify_callback = nullptr;
    QCameraImageCapture_Sender_Callback qcameraimagecapture_sender_callback = nullptr;
    QCameraImageCapture_SenderSignalIndex_Callback qcameraimagecapture_sendersignalindex_callback = nullptr;
    QCameraImageCapture_Receivers_Callback qcameraimagecapture_receivers_callback = nullptr;
    QCameraImageCapture_IsSignalConnected_Callback qcameraimagecapture_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qcameraimagecapture_metacall_isbase = false;
    mutable bool qcameraimagecapture_mediaobject_isbase = false;
    mutable bool qcameraimagecapture_setmediaobject_isbase = false;
    mutable bool qcameraimagecapture_event_isbase = false;
    mutable bool qcameraimagecapture_eventfilter_isbase = false;
    mutable bool qcameraimagecapture_timerevent_isbase = false;
    mutable bool qcameraimagecapture_childevent_isbase = false;
    mutable bool qcameraimagecapture_customevent_isbase = false;
    mutable bool qcameraimagecapture_connectnotify_isbase = false;
    mutable bool qcameraimagecapture_disconnectnotify_isbase = false;
    mutable bool qcameraimagecapture_sender_isbase = false;
    mutable bool qcameraimagecapture_sendersignalindex_isbase = false;
    mutable bool qcameraimagecapture_receivers_isbase = false;
    mutable bool qcameraimagecapture_issignalconnected_isbase = false;

  public:
    VirtualQCameraImageCapture(QMediaObject* mediaObject) : QCameraImageCapture(mediaObject){};
    VirtualQCameraImageCapture(QMediaObject* mediaObject, QObject* parent) : QCameraImageCapture(mediaObject, parent){};

    ~VirtualQCameraImageCapture() {
        qcameraimagecapture_metacall_callback = nullptr;
        qcameraimagecapture_mediaobject_callback = nullptr;
        qcameraimagecapture_setmediaobject_callback = nullptr;
        qcameraimagecapture_event_callback = nullptr;
        qcameraimagecapture_eventfilter_callback = nullptr;
        qcameraimagecapture_timerevent_callback = nullptr;
        qcameraimagecapture_childevent_callback = nullptr;
        qcameraimagecapture_customevent_callback = nullptr;
        qcameraimagecapture_connectnotify_callback = nullptr;
        qcameraimagecapture_disconnectnotify_callback = nullptr;
        qcameraimagecapture_sender_callback = nullptr;
        qcameraimagecapture_sendersignalindex_callback = nullptr;
        qcameraimagecapture_receivers_callback = nullptr;
        qcameraimagecapture_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQCameraImageCapture_Metacall_Callback(QCameraImageCapture_Metacall_Callback cb) { qcameraimagecapture_metacall_callback = cb; }
    void setQCameraImageCapture_MediaObject_Callback(QCameraImageCapture_MediaObject_Callback cb) { qcameraimagecapture_mediaobject_callback = cb; }
    void setQCameraImageCapture_SetMediaObject_Callback(QCameraImageCapture_SetMediaObject_Callback cb) { qcameraimagecapture_setmediaobject_callback = cb; }
    void setQCameraImageCapture_Event_Callback(QCameraImageCapture_Event_Callback cb) { qcameraimagecapture_event_callback = cb; }
    void setQCameraImageCapture_EventFilter_Callback(QCameraImageCapture_EventFilter_Callback cb) { qcameraimagecapture_eventfilter_callback = cb; }
    void setQCameraImageCapture_TimerEvent_Callback(QCameraImageCapture_TimerEvent_Callback cb) { qcameraimagecapture_timerevent_callback = cb; }
    void setQCameraImageCapture_ChildEvent_Callback(QCameraImageCapture_ChildEvent_Callback cb) { qcameraimagecapture_childevent_callback = cb; }
    void setQCameraImageCapture_CustomEvent_Callback(QCameraImageCapture_CustomEvent_Callback cb) { qcameraimagecapture_customevent_callback = cb; }
    void setQCameraImageCapture_ConnectNotify_Callback(QCameraImageCapture_ConnectNotify_Callback cb) { qcameraimagecapture_connectnotify_callback = cb; }
    void setQCameraImageCapture_DisconnectNotify_Callback(QCameraImageCapture_DisconnectNotify_Callback cb) { qcameraimagecapture_disconnectnotify_callback = cb; }
    void setQCameraImageCapture_Sender_Callback(QCameraImageCapture_Sender_Callback cb) { qcameraimagecapture_sender_callback = cb; }
    void setQCameraImageCapture_SenderSignalIndex_Callback(QCameraImageCapture_SenderSignalIndex_Callback cb) { qcameraimagecapture_sendersignalindex_callback = cb; }
    void setQCameraImageCapture_Receivers_Callback(QCameraImageCapture_Receivers_Callback cb) { qcameraimagecapture_receivers_callback = cb; }
    void setQCameraImageCapture_IsSignalConnected_Callback(QCameraImageCapture_IsSignalConnected_Callback cb) { qcameraimagecapture_issignalconnected_callback = cb; }

    // Base flag setters
    void setQCameraImageCapture_Metacall_IsBase(bool value) const { qcameraimagecapture_metacall_isbase = value; }
    void setQCameraImageCapture_MediaObject_IsBase(bool value) const { qcameraimagecapture_mediaobject_isbase = value; }
    void setQCameraImageCapture_SetMediaObject_IsBase(bool value) const { qcameraimagecapture_setmediaobject_isbase = value; }
    void setQCameraImageCapture_Event_IsBase(bool value) const { qcameraimagecapture_event_isbase = value; }
    void setQCameraImageCapture_EventFilter_IsBase(bool value) const { qcameraimagecapture_eventfilter_isbase = value; }
    void setQCameraImageCapture_TimerEvent_IsBase(bool value) const { qcameraimagecapture_timerevent_isbase = value; }
    void setQCameraImageCapture_ChildEvent_IsBase(bool value) const { qcameraimagecapture_childevent_isbase = value; }
    void setQCameraImageCapture_CustomEvent_IsBase(bool value) const { qcameraimagecapture_customevent_isbase = value; }
    void setQCameraImageCapture_ConnectNotify_IsBase(bool value) const { qcameraimagecapture_connectnotify_isbase = value; }
    void setQCameraImageCapture_DisconnectNotify_IsBase(bool value) const { qcameraimagecapture_disconnectnotify_isbase = value; }
    void setQCameraImageCapture_Sender_IsBase(bool value) const { qcameraimagecapture_sender_isbase = value; }
    void setQCameraImageCapture_SenderSignalIndex_IsBase(bool value) const { qcameraimagecapture_sendersignalindex_isbase = value; }
    void setQCameraImageCapture_Receivers_IsBase(bool value) const { qcameraimagecapture_receivers_isbase = value; }
    void setQCameraImageCapture_IsSignalConnected_IsBase(bool value) const { qcameraimagecapture_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qcameraimagecapture_metacall_isbase) {
            qcameraimagecapture_metacall_isbase = false;
            return QCameraImageCapture::qt_metacall(param1, param2, param3);
        } else if (qcameraimagecapture_metacall_callback != nullptr) {
            return qcameraimagecapture_metacall_callback(this, param1, param2, param3);
        } else {
            return QCameraImageCapture::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QMediaObject* mediaObject() const override {
        if (qcameraimagecapture_mediaobject_isbase) {
            qcameraimagecapture_mediaobject_isbase = false;
            return QCameraImageCapture::mediaObject();
        } else if (qcameraimagecapture_mediaobject_callback != nullptr) {
            return qcameraimagecapture_mediaobject_callback();
        } else {
            return QCameraImageCapture::mediaObject();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool setMediaObject(QMediaObject* mediaObject) override {
        if (qcameraimagecapture_setmediaobject_isbase) {
            qcameraimagecapture_setmediaobject_isbase = false;
            return QCameraImageCapture::setMediaObject(mediaObject);
        } else if (qcameraimagecapture_setmediaobject_callback != nullptr) {
            return qcameraimagecapture_setmediaobject_callback(this, mediaObject);
        } else {
            return QCameraImageCapture::setMediaObject(mediaObject);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qcameraimagecapture_event_isbase) {
            qcameraimagecapture_event_isbase = false;
            return QCameraImageCapture::event(event);
        } else if (qcameraimagecapture_event_callback != nullptr) {
            return qcameraimagecapture_event_callback(this, event);
        } else {
            return QCameraImageCapture::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qcameraimagecapture_eventfilter_isbase) {
            qcameraimagecapture_eventfilter_isbase = false;
            return QCameraImageCapture::eventFilter(watched, event);
        } else if (qcameraimagecapture_eventfilter_callback != nullptr) {
            return qcameraimagecapture_eventfilter_callback(this, watched, event);
        } else {
            return QCameraImageCapture::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qcameraimagecapture_timerevent_isbase) {
            qcameraimagecapture_timerevent_isbase = false;
            QCameraImageCapture::timerEvent(event);
        } else if (qcameraimagecapture_timerevent_callback != nullptr) {
            qcameraimagecapture_timerevent_callback(this, event);
        } else {
            QCameraImageCapture::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qcameraimagecapture_childevent_isbase) {
            qcameraimagecapture_childevent_isbase = false;
            QCameraImageCapture::childEvent(event);
        } else if (qcameraimagecapture_childevent_callback != nullptr) {
            qcameraimagecapture_childevent_callback(this, event);
        } else {
            QCameraImageCapture::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qcameraimagecapture_customevent_isbase) {
            qcameraimagecapture_customevent_isbase = false;
            QCameraImageCapture::customEvent(event);
        } else if (qcameraimagecapture_customevent_callback != nullptr) {
            qcameraimagecapture_customevent_callback(this, event);
        } else {
            QCameraImageCapture::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qcameraimagecapture_connectnotify_isbase) {
            qcameraimagecapture_connectnotify_isbase = false;
            QCameraImageCapture::connectNotify(signal);
        } else if (qcameraimagecapture_connectnotify_callback != nullptr) {
            qcameraimagecapture_connectnotify_callback(this, signal);
        } else {
            QCameraImageCapture::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qcameraimagecapture_disconnectnotify_isbase) {
            qcameraimagecapture_disconnectnotify_isbase = false;
            QCameraImageCapture::disconnectNotify(signal);
        } else if (qcameraimagecapture_disconnectnotify_callback != nullptr) {
            qcameraimagecapture_disconnectnotify_callback(this, signal);
        } else {
            QCameraImageCapture::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qcameraimagecapture_sender_isbase) {
            qcameraimagecapture_sender_isbase = false;
            return QCameraImageCapture::sender();
        } else if (qcameraimagecapture_sender_callback != nullptr) {
            return qcameraimagecapture_sender_callback();
        } else {
            return QCameraImageCapture::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qcameraimagecapture_sendersignalindex_isbase) {
            qcameraimagecapture_sendersignalindex_isbase = false;
            return QCameraImageCapture::senderSignalIndex();
        } else if (qcameraimagecapture_sendersignalindex_callback != nullptr) {
            return qcameraimagecapture_sendersignalindex_callback();
        } else {
            return QCameraImageCapture::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qcameraimagecapture_receivers_isbase) {
            qcameraimagecapture_receivers_isbase = false;
            return QCameraImageCapture::receivers(signal);
        } else if (qcameraimagecapture_receivers_callback != nullptr) {
            return qcameraimagecapture_receivers_callback(this, signal);
        } else {
            return QCameraImageCapture::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qcameraimagecapture_issignalconnected_isbase) {
            qcameraimagecapture_issignalconnected_isbase = false;
            return QCameraImageCapture::isSignalConnected(signal);
        } else if (qcameraimagecapture_issignalconnected_callback != nullptr) {
            return qcameraimagecapture_issignalconnected_callback(this, signal);
        } else {
            return QCameraImageCapture::isSignalConnected(signal);
        }
    }
};

#endif
