#pragma once
#ifndef SRC_MULTIMEDIAC_LIBVIRTUALQRADIOTUNER_H
#define SRC_MULTIMEDIAC_LIBVIRTUALQRADIOTUNER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QRadioTuner so that we can call protected methods
class VirtualQRadioTuner : public QRadioTuner {

  public:
    // Virtual class public types (including callbacks)
    using QRadioTuner_Metacall_Callback = int (*)(QRadioTuner*, QMetaObject::Call, int, void**);
    using QRadioTuner_Availability_Callback = QMultimedia::AvailabilityStatus (*)();
    using QRadioTuner_IsAvailable_Callback = bool (*)();
    using QRadioTuner_Service_Callback = QMediaService* (*)();
    using QRadioTuner_Bind_Callback = bool (*)(QRadioTuner*, QObject*);
    using QRadioTuner_Unbind_Callback = void (*)(QRadioTuner*, QObject*);
    using QRadioTuner_Event_Callback = bool (*)(QRadioTuner*, QEvent*);
    using QRadioTuner_EventFilter_Callback = bool (*)(QRadioTuner*, QObject*, QEvent*);
    using QRadioTuner_TimerEvent_Callback = void (*)(QRadioTuner*, QTimerEvent*);
    using QRadioTuner_ChildEvent_Callback = void (*)(QRadioTuner*, QChildEvent*);
    using QRadioTuner_CustomEvent_Callback = void (*)(QRadioTuner*, QEvent*);
    using QRadioTuner_ConnectNotify_Callback = void (*)(QRadioTuner*, const QMetaMethod&);
    using QRadioTuner_DisconnectNotify_Callback = void (*)(QRadioTuner*, const QMetaMethod&);
    using QRadioTuner_AddPropertyWatch_Callback = void (*)(QRadioTuner*, const QByteArray&);
    using QRadioTuner_RemovePropertyWatch_Callback = void (*)(QRadioTuner*, const QByteArray&);
    using QRadioTuner_Sender_Callback = QObject* (*)();
    using QRadioTuner_SenderSignalIndex_Callback = int (*)();
    using QRadioTuner_Receivers_Callback = int (*)(const QRadioTuner*, const char*);
    using QRadioTuner_IsSignalConnected_Callback = bool (*)(const QRadioTuner*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QRadioTuner_Metacall_Callback qradiotuner_metacall_callback = nullptr;
    QRadioTuner_Availability_Callback qradiotuner_availability_callback = nullptr;
    QRadioTuner_IsAvailable_Callback qradiotuner_isavailable_callback = nullptr;
    QRadioTuner_Service_Callback qradiotuner_service_callback = nullptr;
    QRadioTuner_Bind_Callback qradiotuner_bind_callback = nullptr;
    QRadioTuner_Unbind_Callback qradiotuner_unbind_callback = nullptr;
    QRadioTuner_Event_Callback qradiotuner_event_callback = nullptr;
    QRadioTuner_EventFilter_Callback qradiotuner_eventfilter_callback = nullptr;
    QRadioTuner_TimerEvent_Callback qradiotuner_timerevent_callback = nullptr;
    QRadioTuner_ChildEvent_Callback qradiotuner_childevent_callback = nullptr;
    QRadioTuner_CustomEvent_Callback qradiotuner_customevent_callback = nullptr;
    QRadioTuner_ConnectNotify_Callback qradiotuner_connectnotify_callback = nullptr;
    QRadioTuner_DisconnectNotify_Callback qradiotuner_disconnectnotify_callback = nullptr;
    QRadioTuner_AddPropertyWatch_Callback qradiotuner_addpropertywatch_callback = nullptr;
    QRadioTuner_RemovePropertyWatch_Callback qradiotuner_removepropertywatch_callback = nullptr;
    QRadioTuner_Sender_Callback qradiotuner_sender_callback = nullptr;
    QRadioTuner_SenderSignalIndex_Callback qradiotuner_sendersignalindex_callback = nullptr;
    QRadioTuner_Receivers_Callback qradiotuner_receivers_callback = nullptr;
    QRadioTuner_IsSignalConnected_Callback qradiotuner_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qradiotuner_metacall_isbase = false;
    mutable bool qradiotuner_availability_isbase = false;
    mutable bool qradiotuner_isavailable_isbase = false;
    mutable bool qradiotuner_service_isbase = false;
    mutable bool qradiotuner_bind_isbase = false;
    mutable bool qradiotuner_unbind_isbase = false;
    mutable bool qradiotuner_event_isbase = false;
    mutable bool qradiotuner_eventfilter_isbase = false;
    mutable bool qradiotuner_timerevent_isbase = false;
    mutable bool qradiotuner_childevent_isbase = false;
    mutable bool qradiotuner_customevent_isbase = false;
    mutable bool qradiotuner_connectnotify_isbase = false;
    mutable bool qradiotuner_disconnectnotify_isbase = false;
    mutable bool qradiotuner_addpropertywatch_isbase = false;
    mutable bool qradiotuner_removepropertywatch_isbase = false;
    mutable bool qradiotuner_sender_isbase = false;
    mutable bool qradiotuner_sendersignalindex_isbase = false;
    mutable bool qradiotuner_receivers_isbase = false;
    mutable bool qradiotuner_issignalconnected_isbase = false;

  public:
    VirtualQRadioTuner() : QRadioTuner(){};
    VirtualQRadioTuner(QObject* parent) : QRadioTuner(parent){};

    ~VirtualQRadioTuner() {
        qradiotuner_metacall_callback = nullptr;
        qradiotuner_availability_callback = nullptr;
        qradiotuner_isavailable_callback = nullptr;
        qradiotuner_service_callback = nullptr;
        qradiotuner_bind_callback = nullptr;
        qradiotuner_unbind_callback = nullptr;
        qradiotuner_event_callback = nullptr;
        qradiotuner_eventfilter_callback = nullptr;
        qradiotuner_timerevent_callback = nullptr;
        qradiotuner_childevent_callback = nullptr;
        qradiotuner_customevent_callback = nullptr;
        qradiotuner_connectnotify_callback = nullptr;
        qradiotuner_disconnectnotify_callback = nullptr;
        qradiotuner_addpropertywatch_callback = nullptr;
        qradiotuner_removepropertywatch_callback = nullptr;
        qradiotuner_sender_callback = nullptr;
        qradiotuner_sendersignalindex_callback = nullptr;
        qradiotuner_receivers_callback = nullptr;
        qradiotuner_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQRadioTuner_Metacall_Callback(QRadioTuner_Metacall_Callback cb) { qradiotuner_metacall_callback = cb; }
    void setQRadioTuner_Availability_Callback(QRadioTuner_Availability_Callback cb) { qradiotuner_availability_callback = cb; }
    void setQRadioTuner_IsAvailable_Callback(QRadioTuner_IsAvailable_Callback cb) { qradiotuner_isavailable_callback = cb; }
    void setQRadioTuner_Service_Callback(QRadioTuner_Service_Callback cb) { qradiotuner_service_callback = cb; }
    void setQRadioTuner_Bind_Callback(QRadioTuner_Bind_Callback cb) { qradiotuner_bind_callback = cb; }
    void setQRadioTuner_Unbind_Callback(QRadioTuner_Unbind_Callback cb) { qradiotuner_unbind_callback = cb; }
    void setQRadioTuner_Event_Callback(QRadioTuner_Event_Callback cb) { qradiotuner_event_callback = cb; }
    void setQRadioTuner_EventFilter_Callback(QRadioTuner_EventFilter_Callback cb) { qradiotuner_eventfilter_callback = cb; }
    void setQRadioTuner_TimerEvent_Callback(QRadioTuner_TimerEvent_Callback cb) { qradiotuner_timerevent_callback = cb; }
    void setQRadioTuner_ChildEvent_Callback(QRadioTuner_ChildEvent_Callback cb) { qradiotuner_childevent_callback = cb; }
    void setQRadioTuner_CustomEvent_Callback(QRadioTuner_CustomEvent_Callback cb) { qradiotuner_customevent_callback = cb; }
    void setQRadioTuner_ConnectNotify_Callback(QRadioTuner_ConnectNotify_Callback cb) { qradiotuner_connectnotify_callback = cb; }
    void setQRadioTuner_DisconnectNotify_Callback(QRadioTuner_DisconnectNotify_Callback cb) { qradiotuner_disconnectnotify_callback = cb; }
    void setQRadioTuner_AddPropertyWatch_Callback(QRadioTuner_AddPropertyWatch_Callback cb) { qradiotuner_addpropertywatch_callback = cb; }
    void setQRadioTuner_RemovePropertyWatch_Callback(QRadioTuner_RemovePropertyWatch_Callback cb) { qradiotuner_removepropertywatch_callback = cb; }
    void setQRadioTuner_Sender_Callback(QRadioTuner_Sender_Callback cb) { qradiotuner_sender_callback = cb; }
    void setQRadioTuner_SenderSignalIndex_Callback(QRadioTuner_SenderSignalIndex_Callback cb) { qradiotuner_sendersignalindex_callback = cb; }
    void setQRadioTuner_Receivers_Callback(QRadioTuner_Receivers_Callback cb) { qradiotuner_receivers_callback = cb; }
    void setQRadioTuner_IsSignalConnected_Callback(QRadioTuner_IsSignalConnected_Callback cb) { qradiotuner_issignalconnected_callback = cb; }

    // Base flag setters
    void setQRadioTuner_Metacall_IsBase(bool value) const { qradiotuner_metacall_isbase = value; }
    void setQRadioTuner_Availability_IsBase(bool value) const { qradiotuner_availability_isbase = value; }
    void setQRadioTuner_IsAvailable_IsBase(bool value) const { qradiotuner_isavailable_isbase = value; }
    void setQRadioTuner_Service_IsBase(bool value) const { qradiotuner_service_isbase = value; }
    void setQRadioTuner_Bind_IsBase(bool value) const { qradiotuner_bind_isbase = value; }
    void setQRadioTuner_Unbind_IsBase(bool value) const { qradiotuner_unbind_isbase = value; }
    void setQRadioTuner_Event_IsBase(bool value) const { qradiotuner_event_isbase = value; }
    void setQRadioTuner_EventFilter_IsBase(bool value) const { qradiotuner_eventfilter_isbase = value; }
    void setQRadioTuner_TimerEvent_IsBase(bool value) const { qradiotuner_timerevent_isbase = value; }
    void setQRadioTuner_ChildEvent_IsBase(bool value) const { qradiotuner_childevent_isbase = value; }
    void setQRadioTuner_CustomEvent_IsBase(bool value) const { qradiotuner_customevent_isbase = value; }
    void setQRadioTuner_ConnectNotify_IsBase(bool value) const { qradiotuner_connectnotify_isbase = value; }
    void setQRadioTuner_DisconnectNotify_IsBase(bool value) const { qradiotuner_disconnectnotify_isbase = value; }
    void setQRadioTuner_AddPropertyWatch_IsBase(bool value) const { qradiotuner_addpropertywatch_isbase = value; }
    void setQRadioTuner_RemovePropertyWatch_IsBase(bool value) const { qradiotuner_removepropertywatch_isbase = value; }
    void setQRadioTuner_Sender_IsBase(bool value) const { qradiotuner_sender_isbase = value; }
    void setQRadioTuner_SenderSignalIndex_IsBase(bool value) const { qradiotuner_sendersignalindex_isbase = value; }
    void setQRadioTuner_Receivers_IsBase(bool value) const { qradiotuner_receivers_isbase = value; }
    void setQRadioTuner_IsSignalConnected_IsBase(bool value) const { qradiotuner_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qradiotuner_metacall_isbase) {
            qradiotuner_metacall_isbase = false;
            return QRadioTuner::qt_metacall(param1, param2, param3);
        } else if (qradiotuner_metacall_callback != nullptr) {
            return qradiotuner_metacall_callback(this, param1, param2, param3);
        } else {
            return QRadioTuner::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QMultimedia::AvailabilityStatus availability() const override {
        if (qradiotuner_availability_isbase) {
            qradiotuner_availability_isbase = false;
            return QRadioTuner::availability();
        } else if (qradiotuner_availability_callback != nullptr) {
            return qradiotuner_availability_callback();
        } else {
            return QRadioTuner::availability();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool isAvailable() const override {
        if (qradiotuner_isavailable_isbase) {
            qradiotuner_isavailable_isbase = false;
            return QRadioTuner::isAvailable();
        } else if (qradiotuner_isavailable_callback != nullptr) {
            return qradiotuner_isavailable_callback();
        } else {
            return QRadioTuner::isAvailable();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QMediaService* service() const override {
        if (qradiotuner_service_isbase) {
            qradiotuner_service_isbase = false;
            return QRadioTuner::service();
        } else if (qradiotuner_service_callback != nullptr) {
            return qradiotuner_service_callback();
        } else {
            return QRadioTuner::service();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool bind(QObject* param1) override {
        if (qradiotuner_bind_isbase) {
            qradiotuner_bind_isbase = false;
            return QRadioTuner::bind(param1);
        } else if (qradiotuner_bind_callback != nullptr) {
            return qradiotuner_bind_callback(this, param1);
        } else {
            return QRadioTuner::bind(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void unbind(QObject* param1) override {
        if (qradiotuner_unbind_isbase) {
            qradiotuner_unbind_isbase = false;
            QRadioTuner::unbind(param1);
        } else if (qradiotuner_unbind_callback != nullptr) {
            qradiotuner_unbind_callback(this, param1);
        } else {
            QRadioTuner::unbind(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qradiotuner_event_isbase) {
            qradiotuner_event_isbase = false;
            return QRadioTuner::event(event);
        } else if (qradiotuner_event_callback != nullptr) {
            return qradiotuner_event_callback(this, event);
        } else {
            return QRadioTuner::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qradiotuner_eventfilter_isbase) {
            qradiotuner_eventfilter_isbase = false;
            return QRadioTuner::eventFilter(watched, event);
        } else if (qradiotuner_eventfilter_callback != nullptr) {
            return qradiotuner_eventfilter_callback(this, watched, event);
        } else {
            return QRadioTuner::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qradiotuner_timerevent_isbase) {
            qradiotuner_timerevent_isbase = false;
            QRadioTuner::timerEvent(event);
        } else if (qradiotuner_timerevent_callback != nullptr) {
            qradiotuner_timerevent_callback(this, event);
        } else {
            QRadioTuner::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qradiotuner_childevent_isbase) {
            qradiotuner_childevent_isbase = false;
            QRadioTuner::childEvent(event);
        } else if (qradiotuner_childevent_callback != nullptr) {
            qradiotuner_childevent_callback(this, event);
        } else {
            QRadioTuner::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qradiotuner_customevent_isbase) {
            qradiotuner_customevent_isbase = false;
            QRadioTuner::customEvent(event);
        } else if (qradiotuner_customevent_callback != nullptr) {
            qradiotuner_customevent_callback(this, event);
        } else {
            QRadioTuner::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qradiotuner_connectnotify_isbase) {
            qradiotuner_connectnotify_isbase = false;
            QRadioTuner::connectNotify(signal);
        } else if (qradiotuner_connectnotify_callback != nullptr) {
            qradiotuner_connectnotify_callback(this, signal);
        } else {
            QRadioTuner::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qradiotuner_disconnectnotify_isbase) {
            qradiotuner_disconnectnotify_isbase = false;
            QRadioTuner::disconnectNotify(signal);
        } else if (qradiotuner_disconnectnotify_callback != nullptr) {
            qradiotuner_disconnectnotify_callback(this, signal);
        } else {
            QRadioTuner::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    void addPropertyWatch(const QByteArray& name) {
        if (qradiotuner_addpropertywatch_isbase) {
            qradiotuner_addpropertywatch_isbase = false;
            QRadioTuner::addPropertyWatch(name);
        } else if (qradiotuner_addpropertywatch_callback != nullptr) {
            qradiotuner_addpropertywatch_callback(this, name);
        } else {
            QRadioTuner::addPropertyWatch(name);
        }
    }

    // Virtual method for C ABI access and custom callback
    void removePropertyWatch(const QByteArray& name) {
        if (qradiotuner_removepropertywatch_isbase) {
            qradiotuner_removepropertywatch_isbase = false;
            QRadioTuner::removePropertyWatch(name);
        } else if (qradiotuner_removepropertywatch_callback != nullptr) {
            qradiotuner_removepropertywatch_callback(this, name);
        } else {
            QRadioTuner::removePropertyWatch(name);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qradiotuner_sender_isbase) {
            qradiotuner_sender_isbase = false;
            return QRadioTuner::sender();
        } else if (qradiotuner_sender_callback != nullptr) {
            return qradiotuner_sender_callback();
        } else {
            return QRadioTuner::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qradiotuner_sendersignalindex_isbase) {
            qradiotuner_sendersignalindex_isbase = false;
            return QRadioTuner::senderSignalIndex();
        } else if (qradiotuner_sendersignalindex_callback != nullptr) {
            return qradiotuner_sendersignalindex_callback();
        } else {
            return QRadioTuner::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qradiotuner_receivers_isbase) {
            qradiotuner_receivers_isbase = false;
            return QRadioTuner::receivers(signal);
        } else if (qradiotuner_receivers_callback != nullptr) {
            return qradiotuner_receivers_callback(this, signal);
        } else {
            return QRadioTuner::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qradiotuner_issignalconnected_isbase) {
            qradiotuner_issignalconnected_isbase = false;
            return QRadioTuner::isSignalConnected(signal);
        } else if (qradiotuner_issignalconnected_callback != nullptr) {
            return qradiotuner_issignalconnected_callback(this, signal);
        } else {
            return QRadioTuner::isSignalConnected(signal);
        }
    }
};

#endif
