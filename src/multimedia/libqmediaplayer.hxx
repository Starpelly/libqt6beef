#pragma once
#ifndef SRC_MULTIMEDIAC_LIBVIRTUALQMEDIAPLAYER_H
#define SRC_MULTIMEDIAC_LIBVIRTUALQMEDIAPLAYER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QMediaPlayer so that we can call protected methods
class VirtualQMediaPlayer : public QMediaPlayer {

  public:
    // Virtual class public types (including callbacks)
    using QMediaPlayer_Metacall_Callback = int (*)(QMediaPlayer*, QMetaObject::Call, int, void**);
    using QMediaPlayer_Availability_Callback = QMultimedia::AvailabilityStatus (*)();
    using QMediaPlayer_Bind_Callback = bool (*)(QMediaPlayer*, QObject*);
    using QMediaPlayer_Unbind_Callback = void (*)(QMediaPlayer*, QObject*);
    using QMediaPlayer_IsAvailable_Callback = bool (*)();
    using QMediaPlayer_Service_Callback = QMediaService* (*)();
    using QMediaPlayer_Event_Callback = bool (*)(QMediaPlayer*, QEvent*);
    using QMediaPlayer_EventFilter_Callback = bool (*)(QMediaPlayer*, QObject*, QEvent*);
    using QMediaPlayer_TimerEvent_Callback = void (*)(QMediaPlayer*, QTimerEvent*);
    using QMediaPlayer_ChildEvent_Callback = void (*)(QMediaPlayer*, QChildEvent*);
    using QMediaPlayer_CustomEvent_Callback = void (*)(QMediaPlayer*, QEvent*);
    using QMediaPlayer_ConnectNotify_Callback = void (*)(QMediaPlayer*, const QMetaMethod&);
    using QMediaPlayer_DisconnectNotify_Callback = void (*)(QMediaPlayer*, const QMetaMethod&);
    using QMediaPlayer_AddPropertyWatch_Callback = void (*)(QMediaPlayer*, const QByteArray&);
    using QMediaPlayer_RemovePropertyWatch_Callback = void (*)(QMediaPlayer*, const QByteArray&);
    using QMediaPlayer_Sender_Callback = QObject* (*)();
    using QMediaPlayer_SenderSignalIndex_Callback = int (*)();
    using QMediaPlayer_Receivers_Callback = int (*)(const QMediaPlayer*, const char*);
    using QMediaPlayer_IsSignalConnected_Callback = bool (*)(const QMediaPlayer*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QMediaPlayer_Metacall_Callback qmediaplayer_metacall_callback = nullptr;
    QMediaPlayer_Availability_Callback qmediaplayer_availability_callback = nullptr;
    QMediaPlayer_Bind_Callback qmediaplayer_bind_callback = nullptr;
    QMediaPlayer_Unbind_Callback qmediaplayer_unbind_callback = nullptr;
    QMediaPlayer_IsAvailable_Callback qmediaplayer_isavailable_callback = nullptr;
    QMediaPlayer_Service_Callback qmediaplayer_service_callback = nullptr;
    QMediaPlayer_Event_Callback qmediaplayer_event_callback = nullptr;
    QMediaPlayer_EventFilter_Callback qmediaplayer_eventfilter_callback = nullptr;
    QMediaPlayer_TimerEvent_Callback qmediaplayer_timerevent_callback = nullptr;
    QMediaPlayer_ChildEvent_Callback qmediaplayer_childevent_callback = nullptr;
    QMediaPlayer_CustomEvent_Callback qmediaplayer_customevent_callback = nullptr;
    QMediaPlayer_ConnectNotify_Callback qmediaplayer_connectnotify_callback = nullptr;
    QMediaPlayer_DisconnectNotify_Callback qmediaplayer_disconnectnotify_callback = nullptr;
    QMediaPlayer_AddPropertyWatch_Callback qmediaplayer_addpropertywatch_callback = nullptr;
    QMediaPlayer_RemovePropertyWatch_Callback qmediaplayer_removepropertywatch_callback = nullptr;
    QMediaPlayer_Sender_Callback qmediaplayer_sender_callback = nullptr;
    QMediaPlayer_SenderSignalIndex_Callback qmediaplayer_sendersignalindex_callback = nullptr;
    QMediaPlayer_Receivers_Callback qmediaplayer_receivers_callback = nullptr;
    QMediaPlayer_IsSignalConnected_Callback qmediaplayer_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qmediaplayer_metacall_isbase = false;
    mutable bool qmediaplayer_availability_isbase = false;
    mutable bool qmediaplayer_bind_isbase = false;
    mutable bool qmediaplayer_unbind_isbase = false;
    mutable bool qmediaplayer_isavailable_isbase = false;
    mutable bool qmediaplayer_service_isbase = false;
    mutable bool qmediaplayer_event_isbase = false;
    mutable bool qmediaplayer_eventfilter_isbase = false;
    mutable bool qmediaplayer_timerevent_isbase = false;
    mutable bool qmediaplayer_childevent_isbase = false;
    mutable bool qmediaplayer_customevent_isbase = false;
    mutable bool qmediaplayer_connectnotify_isbase = false;
    mutable bool qmediaplayer_disconnectnotify_isbase = false;
    mutable bool qmediaplayer_addpropertywatch_isbase = false;
    mutable bool qmediaplayer_removepropertywatch_isbase = false;
    mutable bool qmediaplayer_sender_isbase = false;
    mutable bool qmediaplayer_sendersignalindex_isbase = false;
    mutable bool qmediaplayer_receivers_isbase = false;
    mutable bool qmediaplayer_issignalconnected_isbase = false;

  public:
    VirtualQMediaPlayer() : QMediaPlayer(){};
    VirtualQMediaPlayer(QObject* parent) : QMediaPlayer(parent){};
    VirtualQMediaPlayer(QObject* parent, QMediaPlayer::Flags flags) : QMediaPlayer(parent, flags){};

    ~VirtualQMediaPlayer() {
        qmediaplayer_metacall_callback = nullptr;
        qmediaplayer_availability_callback = nullptr;
        qmediaplayer_bind_callback = nullptr;
        qmediaplayer_unbind_callback = nullptr;
        qmediaplayer_isavailable_callback = nullptr;
        qmediaplayer_service_callback = nullptr;
        qmediaplayer_event_callback = nullptr;
        qmediaplayer_eventfilter_callback = nullptr;
        qmediaplayer_timerevent_callback = nullptr;
        qmediaplayer_childevent_callback = nullptr;
        qmediaplayer_customevent_callback = nullptr;
        qmediaplayer_connectnotify_callback = nullptr;
        qmediaplayer_disconnectnotify_callback = nullptr;
        qmediaplayer_addpropertywatch_callback = nullptr;
        qmediaplayer_removepropertywatch_callback = nullptr;
        qmediaplayer_sender_callback = nullptr;
        qmediaplayer_sendersignalindex_callback = nullptr;
        qmediaplayer_receivers_callback = nullptr;
        qmediaplayer_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQMediaPlayer_Metacall_Callback(QMediaPlayer_Metacall_Callback cb) { qmediaplayer_metacall_callback = cb; }
    void setQMediaPlayer_Availability_Callback(QMediaPlayer_Availability_Callback cb) { qmediaplayer_availability_callback = cb; }
    void setQMediaPlayer_Bind_Callback(QMediaPlayer_Bind_Callback cb) { qmediaplayer_bind_callback = cb; }
    void setQMediaPlayer_Unbind_Callback(QMediaPlayer_Unbind_Callback cb) { qmediaplayer_unbind_callback = cb; }
    void setQMediaPlayer_IsAvailable_Callback(QMediaPlayer_IsAvailable_Callback cb) { qmediaplayer_isavailable_callback = cb; }
    void setQMediaPlayer_Service_Callback(QMediaPlayer_Service_Callback cb) { qmediaplayer_service_callback = cb; }
    void setQMediaPlayer_Event_Callback(QMediaPlayer_Event_Callback cb) { qmediaplayer_event_callback = cb; }
    void setQMediaPlayer_EventFilter_Callback(QMediaPlayer_EventFilter_Callback cb) { qmediaplayer_eventfilter_callback = cb; }
    void setQMediaPlayer_TimerEvent_Callback(QMediaPlayer_TimerEvent_Callback cb) { qmediaplayer_timerevent_callback = cb; }
    void setQMediaPlayer_ChildEvent_Callback(QMediaPlayer_ChildEvent_Callback cb) { qmediaplayer_childevent_callback = cb; }
    void setQMediaPlayer_CustomEvent_Callback(QMediaPlayer_CustomEvent_Callback cb) { qmediaplayer_customevent_callback = cb; }
    void setQMediaPlayer_ConnectNotify_Callback(QMediaPlayer_ConnectNotify_Callback cb) { qmediaplayer_connectnotify_callback = cb; }
    void setQMediaPlayer_DisconnectNotify_Callback(QMediaPlayer_DisconnectNotify_Callback cb) { qmediaplayer_disconnectnotify_callback = cb; }
    void setQMediaPlayer_AddPropertyWatch_Callback(QMediaPlayer_AddPropertyWatch_Callback cb) { qmediaplayer_addpropertywatch_callback = cb; }
    void setQMediaPlayer_RemovePropertyWatch_Callback(QMediaPlayer_RemovePropertyWatch_Callback cb) { qmediaplayer_removepropertywatch_callback = cb; }
    void setQMediaPlayer_Sender_Callback(QMediaPlayer_Sender_Callback cb) { qmediaplayer_sender_callback = cb; }
    void setQMediaPlayer_SenderSignalIndex_Callback(QMediaPlayer_SenderSignalIndex_Callback cb) { qmediaplayer_sendersignalindex_callback = cb; }
    void setQMediaPlayer_Receivers_Callback(QMediaPlayer_Receivers_Callback cb) { qmediaplayer_receivers_callback = cb; }
    void setQMediaPlayer_IsSignalConnected_Callback(QMediaPlayer_IsSignalConnected_Callback cb) { qmediaplayer_issignalconnected_callback = cb; }

    // Base flag setters
    void setQMediaPlayer_Metacall_IsBase(bool value) const { qmediaplayer_metacall_isbase = value; }
    void setQMediaPlayer_Availability_IsBase(bool value) const { qmediaplayer_availability_isbase = value; }
    void setQMediaPlayer_Bind_IsBase(bool value) const { qmediaplayer_bind_isbase = value; }
    void setQMediaPlayer_Unbind_IsBase(bool value) const { qmediaplayer_unbind_isbase = value; }
    void setQMediaPlayer_IsAvailable_IsBase(bool value) const { qmediaplayer_isavailable_isbase = value; }
    void setQMediaPlayer_Service_IsBase(bool value) const { qmediaplayer_service_isbase = value; }
    void setQMediaPlayer_Event_IsBase(bool value) const { qmediaplayer_event_isbase = value; }
    void setQMediaPlayer_EventFilter_IsBase(bool value) const { qmediaplayer_eventfilter_isbase = value; }
    void setQMediaPlayer_TimerEvent_IsBase(bool value) const { qmediaplayer_timerevent_isbase = value; }
    void setQMediaPlayer_ChildEvent_IsBase(bool value) const { qmediaplayer_childevent_isbase = value; }
    void setQMediaPlayer_CustomEvent_IsBase(bool value) const { qmediaplayer_customevent_isbase = value; }
    void setQMediaPlayer_ConnectNotify_IsBase(bool value) const { qmediaplayer_connectnotify_isbase = value; }
    void setQMediaPlayer_DisconnectNotify_IsBase(bool value) const { qmediaplayer_disconnectnotify_isbase = value; }
    void setQMediaPlayer_AddPropertyWatch_IsBase(bool value) const { qmediaplayer_addpropertywatch_isbase = value; }
    void setQMediaPlayer_RemovePropertyWatch_IsBase(bool value) const { qmediaplayer_removepropertywatch_isbase = value; }
    void setQMediaPlayer_Sender_IsBase(bool value) const { qmediaplayer_sender_isbase = value; }
    void setQMediaPlayer_SenderSignalIndex_IsBase(bool value) const { qmediaplayer_sendersignalindex_isbase = value; }
    void setQMediaPlayer_Receivers_IsBase(bool value) const { qmediaplayer_receivers_isbase = value; }
    void setQMediaPlayer_IsSignalConnected_IsBase(bool value) const { qmediaplayer_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qmediaplayer_metacall_isbase) {
            qmediaplayer_metacall_isbase = false;
            return QMediaPlayer::qt_metacall(param1, param2, param3);
        } else if (qmediaplayer_metacall_callback != nullptr) {
            return qmediaplayer_metacall_callback(this, param1, param2, param3);
        } else {
            return QMediaPlayer::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QMultimedia::AvailabilityStatus availability() const override {
        if (qmediaplayer_availability_isbase) {
            qmediaplayer_availability_isbase = false;
            return QMediaPlayer::availability();
        } else if (qmediaplayer_availability_callback != nullptr) {
            return qmediaplayer_availability_callback();
        } else {
            return QMediaPlayer::availability();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool bind(QObject* param1) override {
        if (qmediaplayer_bind_isbase) {
            qmediaplayer_bind_isbase = false;
            return QMediaPlayer::bind(param1);
        } else if (qmediaplayer_bind_callback != nullptr) {
            return qmediaplayer_bind_callback(this, param1);
        } else {
            return QMediaPlayer::bind(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void unbind(QObject* param1) override {
        if (qmediaplayer_unbind_isbase) {
            qmediaplayer_unbind_isbase = false;
            QMediaPlayer::unbind(param1);
        } else if (qmediaplayer_unbind_callback != nullptr) {
            qmediaplayer_unbind_callback(this, param1);
        } else {
            QMediaPlayer::unbind(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool isAvailable() const override {
        if (qmediaplayer_isavailable_isbase) {
            qmediaplayer_isavailable_isbase = false;
            return QMediaPlayer::isAvailable();
        } else if (qmediaplayer_isavailable_callback != nullptr) {
            return qmediaplayer_isavailable_callback();
        } else {
            return QMediaPlayer::isAvailable();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QMediaService* service() const override {
        if (qmediaplayer_service_isbase) {
            qmediaplayer_service_isbase = false;
            return QMediaPlayer::service();
        } else if (qmediaplayer_service_callback != nullptr) {
            return qmediaplayer_service_callback();
        } else {
            return QMediaPlayer::service();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qmediaplayer_event_isbase) {
            qmediaplayer_event_isbase = false;
            return QMediaPlayer::event(event);
        } else if (qmediaplayer_event_callback != nullptr) {
            return qmediaplayer_event_callback(this, event);
        } else {
            return QMediaPlayer::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qmediaplayer_eventfilter_isbase) {
            qmediaplayer_eventfilter_isbase = false;
            return QMediaPlayer::eventFilter(watched, event);
        } else if (qmediaplayer_eventfilter_callback != nullptr) {
            return qmediaplayer_eventfilter_callback(this, watched, event);
        } else {
            return QMediaPlayer::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qmediaplayer_timerevent_isbase) {
            qmediaplayer_timerevent_isbase = false;
            QMediaPlayer::timerEvent(event);
        } else if (qmediaplayer_timerevent_callback != nullptr) {
            qmediaplayer_timerevent_callback(this, event);
        } else {
            QMediaPlayer::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qmediaplayer_childevent_isbase) {
            qmediaplayer_childevent_isbase = false;
            QMediaPlayer::childEvent(event);
        } else if (qmediaplayer_childevent_callback != nullptr) {
            qmediaplayer_childevent_callback(this, event);
        } else {
            QMediaPlayer::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qmediaplayer_customevent_isbase) {
            qmediaplayer_customevent_isbase = false;
            QMediaPlayer::customEvent(event);
        } else if (qmediaplayer_customevent_callback != nullptr) {
            qmediaplayer_customevent_callback(this, event);
        } else {
            QMediaPlayer::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qmediaplayer_connectnotify_isbase) {
            qmediaplayer_connectnotify_isbase = false;
            QMediaPlayer::connectNotify(signal);
        } else if (qmediaplayer_connectnotify_callback != nullptr) {
            qmediaplayer_connectnotify_callback(this, signal);
        } else {
            QMediaPlayer::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qmediaplayer_disconnectnotify_isbase) {
            qmediaplayer_disconnectnotify_isbase = false;
            QMediaPlayer::disconnectNotify(signal);
        } else if (qmediaplayer_disconnectnotify_callback != nullptr) {
            qmediaplayer_disconnectnotify_callback(this, signal);
        } else {
            QMediaPlayer::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    void addPropertyWatch(const QByteArray& name) {
        if (qmediaplayer_addpropertywatch_isbase) {
            qmediaplayer_addpropertywatch_isbase = false;
            QMediaPlayer::addPropertyWatch(name);
        } else if (qmediaplayer_addpropertywatch_callback != nullptr) {
            qmediaplayer_addpropertywatch_callback(this, name);
        } else {
            QMediaPlayer::addPropertyWatch(name);
        }
    }

    // Virtual method for C ABI access and custom callback
    void removePropertyWatch(const QByteArray& name) {
        if (qmediaplayer_removepropertywatch_isbase) {
            qmediaplayer_removepropertywatch_isbase = false;
            QMediaPlayer::removePropertyWatch(name);
        } else if (qmediaplayer_removepropertywatch_callback != nullptr) {
            qmediaplayer_removepropertywatch_callback(this, name);
        } else {
            QMediaPlayer::removePropertyWatch(name);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qmediaplayer_sender_isbase) {
            qmediaplayer_sender_isbase = false;
            return QMediaPlayer::sender();
        } else if (qmediaplayer_sender_callback != nullptr) {
            return qmediaplayer_sender_callback();
        } else {
            return QMediaPlayer::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qmediaplayer_sendersignalindex_isbase) {
            qmediaplayer_sendersignalindex_isbase = false;
            return QMediaPlayer::senderSignalIndex();
        } else if (qmediaplayer_sendersignalindex_callback != nullptr) {
            return qmediaplayer_sendersignalindex_callback();
        } else {
            return QMediaPlayer::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qmediaplayer_receivers_isbase) {
            qmediaplayer_receivers_isbase = false;
            return QMediaPlayer::receivers(signal);
        } else if (qmediaplayer_receivers_callback != nullptr) {
            return qmediaplayer_receivers_callback(this, signal);
        } else {
            return QMediaPlayer::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qmediaplayer_issignalconnected_isbase) {
            qmediaplayer_issignalconnected_isbase = false;
            return QMediaPlayer::isSignalConnected(signal);
        } else if (qmediaplayer_issignalconnected_callback != nullptr) {
            return qmediaplayer_issignalconnected_callback(this, signal);
        } else {
            return QMediaPlayer::isSignalConnected(signal);
        }
    }
};

#endif
