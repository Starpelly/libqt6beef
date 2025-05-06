#pragma once
#ifndef SRC_MULTIMEDIAC_LIBVIRTUALQAUDIODECODER_H
#define SRC_MULTIMEDIAC_LIBVIRTUALQAUDIODECODER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QAudioDecoder so that we can call protected methods
class VirtualQAudioDecoder : public QAudioDecoder {

  public:
    // Virtual class public types (including callbacks)
    using QAudioDecoder_Metacall_Callback = int (*)(QAudioDecoder*, QMetaObject::Call, int, void**);
    using QAudioDecoder_Bind_Callback = bool (*)(QAudioDecoder*, QObject*);
    using QAudioDecoder_Unbind_Callback = void (*)(QAudioDecoder*, QObject*);
    using QAudioDecoder_IsAvailable_Callback = bool (*)();
    using QAudioDecoder_Availability_Callback = QMultimedia::AvailabilityStatus (*)();
    using QAudioDecoder_Service_Callback = QMediaService* (*)();
    using QAudioDecoder_Event_Callback = bool (*)(QAudioDecoder*, QEvent*);
    using QAudioDecoder_EventFilter_Callback = bool (*)(QAudioDecoder*, QObject*, QEvent*);
    using QAudioDecoder_TimerEvent_Callback = void (*)(QAudioDecoder*, QTimerEvent*);
    using QAudioDecoder_ChildEvent_Callback = void (*)(QAudioDecoder*, QChildEvent*);
    using QAudioDecoder_CustomEvent_Callback = void (*)(QAudioDecoder*, QEvent*);
    using QAudioDecoder_ConnectNotify_Callback = void (*)(QAudioDecoder*, const QMetaMethod&);
    using QAudioDecoder_DisconnectNotify_Callback = void (*)(QAudioDecoder*, const QMetaMethod&);
    using QAudioDecoder_AddPropertyWatch_Callback = void (*)(QAudioDecoder*, const QByteArray&);
    using QAudioDecoder_RemovePropertyWatch_Callback = void (*)(QAudioDecoder*, const QByteArray&);
    using QAudioDecoder_Sender_Callback = QObject* (*)();
    using QAudioDecoder_SenderSignalIndex_Callback = int (*)();
    using QAudioDecoder_Receivers_Callback = int (*)(const QAudioDecoder*, const char*);
    using QAudioDecoder_IsSignalConnected_Callback = bool (*)(const QAudioDecoder*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QAudioDecoder_Metacall_Callback qaudiodecoder_metacall_callback = nullptr;
    QAudioDecoder_Bind_Callback qaudiodecoder_bind_callback = nullptr;
    QAudioDecoder_Unbind_Callback qaudiodecoder_unbind_callback = nullptr;
    QAudioDecoder_IsAvailable_Callback qaudiodecoder_isavailable_callback = nullptr;
    QAudioDecoder_Availability_Callback qaudiodecoder_availability_callback = nullptr;
    QAudioDecoder_Service_Callback qaudiodecoder_service_callback = nullptr;
    QAudioDecoder_Event_Callback qaudiodecoder_event_callback = nullptr;
    QAudioDecoder_EventFilter_Callback qaudiodecoder_eventfilter_callback = nullptr;
    QAudioDecoder_TimerEvent_Callback qaudiodecoder_timerevent_callback = nullptr;
    QAudioDecoder_ChildEvent_Callback qaudiodecoder_childevent_callback = nullptr;
    QAudioDecoder_CustomEvent_Callback qaudiodecoder_customevent_callback = nullptr;
    QAudioDecoder_ConnectNotify_Callback qaudiodecoder_connectnotify_callback = nullptr;
    QAudioDecoder_DisconnectNotify_Callback qaudiodecoder_disconnectnotify_callback = nullptr;
    QAudioDecoder_AddPropertyWatch_Callback qaudiodecoder_addpropertywatch_callback = nullptr;
    QAudioDecoder_RemovePropertyWatch_Callback qaudiodecoder_removepropertywatch_callback = nullptr;
    QAudioDecoder_Sender_Callback qaudiodecoder_sender_callback = nullptr;
    QAudioDecoder_SenderSignalIndex_Callback qaudiodecoder_sendersignalindex_callback = nullptr;
    QAudioDecoder_Receivers_Callback qaudiodecoder_receivers_callback = nullptr;
    QAudioDecoder_IsSignalConnected_Callback qaudiodecoder_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qaudiodecoder_metacall_isbase = false;
    mutable bool qaudiodecoder_bind_isbase = false;
    mutable bool qaudiodecoder_unbind_isbase = false;
    mutable bool qaudiodecoder_isavailable_isbase = false;
    mutable bool qaudiodecoder_availability_isbase = false;
    mutable bool qaudiodecoder_service_isbase = false;
    mutable bool qaudiodecoder_event_isbase = false;
    mutable bool qaudiodecoder_eventfilter_isbase = false;
    mutable bool qaudiodecoder_timerevent_isbase = false;
    mutable bool qaudiodecoder_childevent_isbase = false;
    mutable bool qaudiodecoder_customevent_isbase = false;
    mutable bool qaudiodecoder_connectnotify_isbase = false;
    mutable bool qaudiodecoder_disconnectnotify_isbase = false;
    mutable bool qaudiodecoder_addpropertywatch_isbase = false;
    mutable bool qaudiodecoder_removepropertywatch_isbase = false;
    mutable bool qaudiodecoder_sender_isbase = false;
    mutable bool qaudiodecoder_sendersignalindex_isbase = false;
    mutable bool qaudiodecoder_receivers_isbase = false;
    mutable bool qaudiodecoder_issignalconnected_isbase = false;

  public:
    VirtualQAudioDecoder() : QAudioDecoder(){};
    VirtualQAudioDecoder(QObject* parent) : QAudioDecoder(parent){};

    ~VirtualQAudioDecoder() {
        qaudiodecoder_metacall_callback = nullptr;
        qaudiodecoder_bind_callback = nullptr;
        qaudiodecoder_unbind_callback = nullptr;
        qaudiodecoder_isavailable_callback = nullptr;
        qaudiodecoder_availability_callback = nullptr;
        qaudiodecoder_service_callback = nullptr;
        qaudiodecoder_event_callback = nullptr;
        qaudiodecoder_eventfilter_callback = nullptr;
        qaudiodecoder_timerevent_callback = nullptr;
        qaudiodecoder_childevent_callback = nullptr;
        qaudiodecoder_customevent_callback = nullptr;
        qaudiodecoder_connectnotify_callback = nullptr;
        qaudiodecoder_disconnectnotify_callback = nullptr;
        qaudiodecoder_addpropertywatch_callback = nullptr;
        qaudiodecoder_removepropertywatch_callback = nullptr;
        qaudiodecoder_sender_callback = nullptr;
        qaudiodecoder_sendersignalindex_callback = nullptr;
        qaudiodecoder_receivers_callback = nullptr;
        qaudiodecoder_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQAudioDecoder_Metacall_Callback(QAudioDecoder_Metacall_Callback cb) { qaudiodecoder_metacall_callback = cb; }
    void setQAudioDecoder_Bind_Callback(QAudioDecoder_Bind_Callback cb) { qaudiodecoder_bind_callback = cb; }
    void setQAudioDecoder_Unbind_Callback(QAudioDecoder_Unbind_Callback cb) { qaudiodecoder_unbind_callback = cb; }
    void setQAudioDecoder_IsAvailable_Callback(QAudioDecoder_IsAvailable_Callback cb) { qaudiodecoder_isavailable_callback = cb; }
    void setQAudioDecoder_Availability_Callback(QAudioDecoder_Availability_Callback cb) { qaudiodecoder_availability_callback = cb; }
    void setQAudioDecoder_Service_Callback(QAudioDecoder_Service_Callback cb) { qaudiodecoder_service_callback = cb; }
    void setQAudioDecoder_Event_Callback(QAudioDecoder_Event_Callback cb) { qaudiodecoder_event_callback = cb; }
    void setQAudioDecoder_EventFilter_Callback(QAudioDecoder_EventFilter_Callback cb) { qaudiodecoder_eventfilter_callback = cb; }
    void setQAudioDecoder_TimerEvent_Callback(QAudioDecoder_TimerEvent_Callback cb) { qaudiodecoder_timerevent_callback = cb; }
    void setQAudioDecoder_ChildEvent_Callback(QAudioDecoder_ChildEvent_Callback cb) { qaudiodecoder_childevent_callback = cb; }
    void setQAudioDecoder_CustomEvent_Callback(QAudioDecoder_CustomEvent_Callback cb) { qaudiodecoder_customevent_callback = cb; }
    void setQAudioDecoder_ConnectNotify_Callback(QAudioDecoder_ConnectNotify_Callback cb) { qaudiodecoder_connectnotify_callback = cb; }
    void setQAudioDecoder_DisconnectNotify_Callback(QAudioDecoder_DisconnectNotify_Callback cb) { qaudiodecoder_disconnectnotify_callback = cb; }
    void setQAudioDecoder_AddPropertyWatch_Callback(QAudioDecoder_AddPropertyWatch_Callback cb) { qaudiodecoder_addpropertywatch_callback = cb; }
    void setQAudioDecoder_RemovePropertyWatch_Callback(QAudioDecoder_RemovePropertyWatch_Callback cb) { qaudiodecoder_removepropertywatch_callback = cb; }
    void setQAudioDecoder_Sender_Callback(QAudioDecoder_Sender_Callback cb) { qaudiodecoder_sender_callback = cb; }
    void setQAudioDecoder_SenderSignalIndex_Callback(QAudioDecoder_SenderSignalIndex_Callback cb) { qaudiodecoder_sendersignalindex_callback = cb; }
    void setQAudioDecoder_Receivers_Callback(QAudioDecoder_Receivers_Callback cb) { qaudiodecoder_receivers_callback = cb; }
    void setQAudioDecoder_IsSignalConnected_Callback(QAudioDecoder_IsSignalConnected_Callback cb) { qaudiodecoder_issignalconnected_callback = cb; }

    // Base flag setters
    void setQAudioDecoder_Metacall_IsBase(bool value) const { qaudiodecoder_metacall_isbase = value; }
    void setQAudioDecoder_Bind_IsBase(bool value) const { qaudiodecoder_bind_isbase = value; }
    void setQAudioDecoder_Unbind_IsBase(bool value) const { qaudiodecoder_unbind_isbase = value; }
    void setQAudioDecoder_IsAvailable_IsBase(bool value) const { qaudiodecoder_isavailable_isbase = value; }
    void setQAudioDecoder_Availability_IsBase(bool value) const { qaudiodecoder_availability_isbase = value; }
    void setQAudioDecoder_Service_IsBase(bool value) const { qaudiodecoder_service_isbase = value; }
    void setQAudioDecoder_Event_IsBase(bool value) const { qaudiodecoder_event_isbase = value; }
    void setQAudioDecoder_EventFilter_IsBase(bool value) const { qaudiodecoder_eventfilter_isbase = value; }
    void setQAudioDecoder_TimerEvent_IsBase(bool value) const { qaudiodecoder_timerevent_isbase = value; }
    void setQAudioDecoder_ChildEvent_IsBase(bool value) const { qaudiodecoder_childevent_isbase = value; }
    void setQAudioDecoder_CustomEvent_IsBase(bool value) const { qaudiodecoder_customevent_isbase = value; }
    void setQAudioDecoder_ConnectNotify_IsBase(bool value) const { qaudiodecoder_connectnotify_isbase = value; }
    void setQAudioDecoder_DisconnectNotify_IsBase(bool value) const { qaudiodecoder_disconnectnotify_isbase = value; }
    void setQAudioDecoder_AddPropertyWatch_IsBase(bool value) const { qaudiodecoder_addpropertywatch_isbase = value; }
    void setQAudioDecoder_RemovePropertyWatch_IsBase(bool value) const { qaudiodecoder_removepropertywatch_isbase = value; }
    void setQAudioDecoder_Sender_IsBase(bool value) const { qaudiodecoder_sender_isbase = value; }
    void setQAudioDecoder_SenderSignalIndex_IsBase(bool value) const { qaudiodecoder_sendersignalindex_isbase = value; }
    void setQAudioDecoder_Receivers_IsBase(bool value) const { qaudiodecoder_receivers_isbase = value; }
    void setQAudioDecoder_IsSignalConnected_IsBase(bool value) const { qaudiodecoder_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qaudiodecoder_metacall_isbase) {
            qaudiodecoder_metacall_isbase = false;
            return QAudioDecoder::qt_metacall(param1, param2, param3);
        } else if (qaudiodecoder_metacall_callback != nullptr) {
            return qaudiodecoder_metacall_callback(this, param1, param2, param3);
        } else {
            return QAudioDecoder::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool bind(QObject* param1) override {
        if (qaudiodecoder_bind_isbase) {
            qaudiodecoder_bind_isbase = false;
            return QAudioDecoder::bind(param1);
        } else if (qaudiodecoder_bind_callback != nullptr) {
            return qaudiodecoder_bind_callback(this, param1);
        } else {
            return QAudioDecoder::bind(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void unbind(QObject* param1) override {
        if (qaudiodecoder_unbind_isbase) {
            qaudiodecoder_unbind_isbase = false;
            QAudioDecoder::unbind(param1);
        } else if (qaudiodecoder_unbind_callback != nullptr) {
            qaudiodecoder_unbind_callback(this, param1);
        } else {
            QAudioDecoder::unbind(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool isAvailable() const override {
        if (qaudiodecoder_isavailable_isbase) {
            qaudiodecoder_isavailable_isbase = false;
            return QAudioDecoder::isAvailable();
        } else if (qaudiodecoder_isavailable_callback != nullptr) {
            return qaudiodecoder_isavailable_callback();
        } else {
            return QAudioDecoder::isAvailable();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QMultimedia::AvailabilityStatus availability() const override {
        if (qaudiodecoder_availability_isbase) {
            qaudiodecoder_availability_isbase = false;
            return QAudioDecoder::availability();
        } else if (qaudiodecoder_availability_callback != nullptr) {
            return qaudiodecoder_availability_callback();
        } else {
            return QAudioDecoder::availability();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QMediaService* service() const override {
        if (qaudiodecoder_service_isbase) {
            qaudiodecoder_service_isbase = false;
            return QAudioDecoder::service();
        } else if (qaudiodecoder_service_callback != nullptr) {
            return qaudiodecoder_service_callback();
        } else {
            return QAudioDecoder::service();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qaudiodecoder_event_isbase) {
            qaudiodecoder_event_isbase = false;
            return QAudioDecoder::event(event);
        } else if (qaudiodecoder_event_callback != nullptr) {
            return qaudiodecoder_event_callback(this, event);
        } else {
            return QAudioDecoder::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qaudiodecoder_eventfilter_isbase) {
            qaudiodecoder_eventfilter_isbase = false;
            return QAudioDecoder::eventFilter(watched, event);
        } else if (qaudiodecoder_eventfilter_callback != nullptr) {
            return qaudiodecoder_eventfilter_callback(this, watched, event);
        } else {
            return QAudioDecoder::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qaudiodecoder_timerevent_isbase) {
            qaudiodecoder_timerevent_isbase = false;
            QAudioDecoder::timerEvent(event);
        } else if (qaudiodecoder_timerevent_callback != nullptr) {
            qaudiodecoder_timerevent_callback(this, event);
        } else {
            QAudioDecoder::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qaudiodecoder_childevent_isbase) {
            qaudiodecoder_childevent_isbase = false;
            QAudioDecoder::childEvent(event);
        } else if (qaudiodecoder_childevent_callback != nullptr) {
            qaudiodecoder_childevent_callback(this, event);
        } else {
            QAudioDecoder::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qaudiodecoder_customevent_isbase) {
            qaudiodecoder_customevent_isbase = false;
            QAudioDecoder::customEvent(event);
        } else if (qaudiodecoder_customevent_callback != nullptr) {
            qaudiodecoder_customevent_callback(this, event);
        } else {
            QAudioDecoder::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qaudiodecoder_connectnotify_isbase) {
            qaudiodecoder_connectnotify_isbase = false;
            QAudioDecoder::connectNotify(signal);
        } else if (qaudiodecoder_connectnotify_callback != nullptr) {
            qaudiodecoder_connectnotify_callback(this, signal);
        } else {
            QAudioDecoder::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qaudiodecoder_disconnectnotify_isbase) {
            qaudiodecoder_disconnectnotify_isbase = false;
            QAudioDecoder::disconnectNotify(signal);
        } else if (qaudiodecoder_disconnectnotify_callback != nullptr) {
            qaudiodecoder_disconnectnotify_callback(this, signal);
        } else {
            QAudioDecoder::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    void addPropertyWatch(const QByteArray& name) {
        if (qaudiodecoder_addpropertywatch_isbase) {
            qaudiodecoder_addpropertywatch_isbase = false;
            QAudioDecoder::addPropertyWatch(name);
        } else if (qaudiodecoder_addpropertywatch_callback != nullptr) {
            qaudiodecoder_addpropertywatch_callback(this, name);
        } else {
            QAudioDecoder::addPropertyWatch(name);
        }
    }

    // Virtual method for C ABI access and custom callback
    void removePropertyWatch(const QByteArray& name) {
        if (qaudiodecoder_removepropertywatch_isbase) {
            qaudiodecoder_removepropertywatch_isbase = false;
            QAudioDecoder::removePropertyWatch(name);
        } else if (qaudiodecoder_removepropertywatch_callback != nullptr) {
            qaudiodecoder_removepropertywatch_callback(this, name);
        } else {
            QAudioDecoder::removePropertyWatch(name);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qaudiodecoder_sender_isbase) {
            qaudiodecoder_sender_isbase = false;
            return QAudioDecoder::sender();
        } else if (qaudiodecoder_sender_callback != nullptr) {
            return qaudiodecoder_sender_callback();
        } else {
            return QAudioDecoder::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qaudiodecoder_sendersignalindex_isbase) {
            qaudiodecoder_sendersignalindex_isbase = false;
            return QAudioDecoder::senderSignalIndex();
        } else if (qaudiodecoder_sendersignalindex_callback != nullptr) {
            return qaudiodecoder_sendersignalindex_callback();
        } else {
            return QAudioDecoder::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qaudiodecoder_receivers_isbase) {
            qaudiodecoder_receivers_isbase = false;
            return QAudioDecoder::receivers(signal);
        } else if (qaudiodecoder_receivers_callback != nullptr) {
            return qaudiodecoder_receivers_callback(this, signal);
        } else {
            return QAudioDecoder::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qaudiodecoder_issignalconnected_isbase) {
            qaudiodecoder_issignalconnected_isbase = false;
            return QAudioDecoder::isSignalConnected(signal);
        } else if (qaudiodecoder_issignalconnected_callback != nullptr) {
            return qaudiodecoder_issignalconnected_callback(this, signal);
        } else {
            return QAudioDecoder::isSignalConnected(signal);
        }
    }
};

#endif
