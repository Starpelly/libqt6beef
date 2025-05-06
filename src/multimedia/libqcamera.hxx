#pragma once
#ifndef SRC_MULTIMEDIAC_LIBVIRTUALQCAMERA_H
#define SRC_MULTIMEDIAC_LIBVIRTUALQCAMERA_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QCamera so that we can call protected methods
class VirtualQCamera : public QCamera {

  public:
    // Virtual class public types (including callbacks)
    using QCamera_Metacall_Callback = int (*)(QCamera*, QMetaObject::Call, int, void**);
    using QCamera_Availability_Callback = QMultimedia::AvailabilityStatus (*)();
    using QCamera_IsAvailable_Callback = bool (*)();
    using QCamera_Service_Callback = QMediaService* (*)();
    using QCamera_Bind_Callback = bool (*)(QCamera*, QObject*);
    using QCamera_Unbind_Callback = void (*)(QCamera*, QObject*);
    using QCamera_Event_Callback = bool (*)(QCamera*, QEvent*);
    using QCamera_EventFilter_Callback = bool (*)(QCamera*, QObject*, QEvent*);
    using QCamera_TimerEvent_Callback = void (*)(QCamera*, QTimerEvent*);
    using QCamera_ChildEvent_Callback = void (*)(QCamera*, QChildEvent*);
    using QCamera_CustomEvent_Callback = void (*)(QCamera*, QEvent*);
    using QCamera_ConnectNotify_Callback = void (*)(QCamera*, const QMetaMethod&);
    using QCamera_DisconnectNotify_Callback = void (*)(QCamera*, const QMetaMethod&);
    using QCamera_AddPropertyWatch_Callback = void (*)(QCamera*, const QByteArray&);
    using QCamera_RemovePropertyWatch_Callback = void (*)(QCamera*, const QByteArray&);
    using QCamera_Sender_Callback = QObject* (*)();
    using QCamera_SenderSignalIndex_Callback = int (*)();
    using QCamera_Receivers_Callback = int (*)(const QCamera*, const char*);
    using QCamera_IsSignalConnected_Callback = bool (*)(const QCamera*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QCamera_Metacall_Callback qcamera_metacall_callback = nullptr;
    QCamera_Availability_Callback qcamera_availability_callback = nullptr;
    QCamera_IsAvailable_Callback qcamera_isavailable_callback = nullptr;
    QCamera_Service_Callback qcamera_service_callback = nullptr;
    QCamera_Bind_Callback qcamera_bind_callback = nullptr;
    QCamera_Unbind_Callback qcamera_unbind_callback = nullptr;
    QCamera_Event_Callback qcamera_event_callback = nullptr;
    QCamera_EventFilter_Callback qcamera_eventfilter_callback = nullptr;
    QCamera_TimerEvent_Callback qcamera_timerevent_callback = nullptr;
    QCamera_ChildEvent_Callback qcamera_childevent_callback = nullptr;
    QCamera_CustomEvent_Callback qcamera_customevent_callback = nullptr;
    QCamera_ConnectNotify_Callback qcamera_connectnotify_callback = nullptr;
    QCamera_DisconnectNotify_Callback qcamera_disconnectnotify_callback = nullptr;
    QCamera_AddPropertyWatch_Callback qcamera_addpropertywatch_callback = nullptr;
    QCamera_RemovePropertyWatch_Callback qcamera_removepropertywatch_callback = nullptr;
    QCamera_Sender_Callback qcamera_sender_callback = nullptr;
    QCamera_SenderSignalIndex_Callback qcamera_sendersignalindex_callback = nullptr;
    QCamera_Receivers_Callback qcamera_receivers_callback = nullptr;
    QCamera_IsSignalConnected_Callback qcamera_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qcamera_metacall_isbase = false;
    mutable bool qcamera_availability_isbase = false;
    mutable bool qcamera_isavailable_isbase = false;
    mutable bool qcamera_service_isbase = false;
    mutable bool qcamera_bind_isbase = false;
    mutable bool qcamera_unbind_isbase = false;
    mutable bool qcamera_event_isbase = false;
    mutable bool qcamera_eventfilter_isbase = false;
    mutable bool qcamera_timerevent_isbase = false;
    mutable bool qcamera_childevent_isbase = false;
    mutable bool qcamera_customevent_isbase = false;
    mutable bool qcamera_connectnotify_isbase = false;
    mutable bool qcamera_disconnectnotify_isbase = false;
    mutable bool qcamera_addpropertywatch_isbase = false;
    mutable bool qcamera_removepropertywatch_isbase = false;
    mutable bool qcamera_sender_isbase = false;
    mutable bool qcamera_sendersignalindex_isbase = false;
    mutable bool qcamera_receivers_isbase = false;
    mutable bool qcamera_issignalconnected_isbase = false;

  public:
    VirtualQCamera() : QCamera(){};
    VirtualQCamera(const QByteArray& deviceName) : QCamera(deviceName){};
    VirtualQCamera(const QCameraInfo& cameraInfo) : QCamera(cameraInfo){};
    VirtualQCamera(QCamera::Position position) : QCamera(position){};
    VirtualQCamera(QObject* parent) : QCamera(parent){};
    VirtualQCamera(const QByteArray& deviceName, QObject* parent) : QCamera(deviceName, parent){};
    VirtualQCamera(const QCameraInfo& cameraInfo, QObject* parent) : QCamera(cameraInfo, parent){};
    VirtualQCamera(QCamera::Position position, QObject* parent) : QCamera(position, parent){};

    ~VirtualQCamera() {
        qcamera_metacall_callback = nullptr;
        qcamera_availability_callback = nullptr;
        qcamera_isavailable_callback = nullptr;
        qcamera_service_callback = nullptr;
        qcamera_bind_callback = nullptr;
        qcamera_unbind_callback = nullptr;
        qcamera_event_callback = nullptr;
        qcamera_eventfilter_callback = nullptr;
        qcamera_timerevent_callback = nullptr;
        qcamera_childevent_callback = nullptr;
        qcamera_customevent_callback = nullptr;
        qcamera_connectnotify_callback = nullptr;
        qcamera_disconnectnotify_callback = nullptr;
        qcamera_addpropertywatch_callback = nullptr;
        qcamera_removepropertywatch_callback = nullptr;
        qcamera_sender_callback = nullptr;
        qcamera_sendersignalindex_callback = nullptr;
        qcamera_receivers_callback = nullptr;
        qcamera_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQCamera_Metacall_Callback(QCamera_Metacall_Callback cb) { qcamera_metacall_callback = cb; }
    void setQCamera_Availability_Callback(QCamera_Availability_Callback cb) { qcamera_availability_callback = cb; }
    void setQCamera_IsAvailable_Callback(QCamera_IsAvailable_Callback cb) { qcamera_isavailable_callback = cb; }
    void setQCamera_Service_Callback(QCamera_Service_Callback cb) { qcamera_service_callback = cb; }
    void setQCamera_Bind_Callback(QCamera_Bind_Callback cb) { qcamera_bind_callback = cb; }
    void setQCamera_Unbind_Callback(QCamera_Unbind_Callback cb) { qcamera_unbind_callback = cb; }
    void setQCamera_Event_Callback(QCamera_Event_Callback cb) { qcamera_event_callback = cb; }
    void setQCamera_EventFilter_Callback(QCamera_EventFilter_Callback cb) { qcamera_eventfilter_callback = cb; }
    void setQCamera_TimerEvent_Callback(QCamera_TimerEvent_Callback cb) { qcamera_timerevent_callback = cb; }
    void setQCamera_ChildEvent_Callback(QCamera_ChildEvent_Callback cb) { qcamera_childevent_callback = cb; }
    void setQCamera_CustomEvent_Callback(QCamera_CustomEvent_Callback cb) { qcamera_customevent_callback = cb; }
    void setQCamera_ConnectNotify_Callback(QCamera_ConnectNotify_Callback cb) { qcamera_connectnotify_callback = cb; }
    void setQCamera_DisconnectNotify_Callback(QCamera_DisconnectNotify_Callback cb) { qcamera_disconnectnotify_callback = cb; }
    void setQCamera_AddPropertyWatch_Callback(QCamera_AddPropertyWatch_Callback cb) { qcamera_addpropertywatch_callback = cb; }
    void setQCamera_RemovePropertyWatch_Callback(QCamera_RemovePropertyWatch_Callback cb) { qcamera_removepropertywatch_callback = cb; }
    void setQCamera_Sender_Callback(QCamera_Sender_Callback cb) { qcamera_sender_callback = cb; }
    void setQCamera_SenderSignalIndex_Callback(QCamera_SenderSignalIndex_Callback cb) { qcamera_sendersignalindex_callback = cb; }
    void setQCamera_Receivers_Callback(QCamera_Receivers_Callback cb) { qcamera_receivers_callback = cb; }
    void setQCamera_IsSignalConnected_Callback(QCamera_IsSignalConnected_Callback cb) { qcamera_issignalconnected_callback = cb; }

    // Base flag setters
    void setQCamera_Metacall_IsBase(bool value) const { qcamera_metacall_isbase = value; }
    void setQCamera_Availability_IsBase(bool value) const { qcamera_availability_isbase = value; }
    void setQCamera_IsAvailable_IsBase(bool value) const { qcamera_isavailable_isbase = value; }
    void setQCamera_Service_IsBase(bool value) const { qcamera_service_isbase = value; }
    void setQCamera_Bind_IsBase(bool value) const { qcamera_bind_isbase = value; }
    void setQCamera_Unbind_IsBase(bool value) const { qcamera_unbind_isbase = value; }
    void setQCamera_Event_IsBase(bool value) const { qcamera_event_isbase = value; }
    void setQCamera_EventFilter_IsBase(bool value) const { qcamera_eventfilter_isbase = value; }
    void setQCamera_TimerEvent_IsBase(bool value) const { qcamera_timerevent_isbase = value; }
    void setQCamera_ChildEvent_IsBase(bool value) const { qcamera_childevent_isbase = value; }
    void setQCamera_CustomEvent_IsBase(bool value) const { qcamera_customevent_isbase = value; }
    void setQCamera_ConnectNotify_IsBase(bool value) const { qcamera_connectnotify_isbase = value; }
    void setQCamera_DisconnectNotify_IsBase(bool value) const { qcamera_disconnectnotify_isbase = value; }
    void setQCamera_AddPropertyWatch_IsBase(bool value) const { qcamera_addpropertywatch_isbase = value; }
    void setQCamera_RemovePropertyWatch_IsBase(bool value) const { qcamera_removepropertywatch_isbase = value; }
    void setQCamera_Sender_IsBase(bool value) const { qcamera_sender_isbase = value; }
    void setQCamera_SenderSignalIndex_IsBase(bool value) const { qcamera_sendersignalindex_isbase = value; }
    void setQCamera_Receivers_IsBase(bool value) const { qcamera_receivers_isbase = value; }
    void setQCamera_IsSignalConnected_IsBase(bool value) const { qcamera_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qcamera_metacall_isbase) {
            qcamera_metacall_isbase = false;
            return QCamera::qt_metacall(param1, param2, param3);
        } else if (qcamera_metacall_callback != nullptr) {
            return qcamera_metacall_callback(this, param1, param2, param3);
        } else {
            return QCamera::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QMultimedia::AvailabilityStatus availability() const override {
        if (qcamera_availability_isbase) {
            qcamera_availability_isbase = false;
            return QCamera::availability();
        } else if (qcamera_availability_callback != nullptr) {
            return qcamera_availability_callback();
        } else {
            return QCamera::availability();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool isAvailable() const override {
        if (qcamera_isavailable_isbase) {
            qcamera_isavailable_isbase = false;
            return QCamera::isAvailable();
        } else if (qcamera_isavailable_callback != nullptr) {
            return qcamera_isavailable_callback();
        } else {
            return QCamera::isAvailable();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QMediaService* service() const override {
        if (qcamera_service_isbase) {
            qcamera_service_isbase = false;
            return QCamera::service();
        } else if (qcamera_service_callback != nullptr) {
            return qcamera_service_callback();
        } else {
            return QCamera::service();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool bind(QObject* param1) override {
        if (qcamera_bind_isbase) {
            qcamera_bind_isbase = false;
            return QCamera::bind(param1);
        } else if (qcamera_bind_callback != nullptr) {
            return qcamera_bind_callback(this, param1);
        } else {
            return QCamera::bind(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void unbind(QObject* param1) override {
        if (qcamera_unbind_isbase) {
            qcamera_unbind_isbase = false;
            QCamera::unbind(param1);
        } else if (qcamera_unbind_callback != nullptr) {
            qcamera_unbind_callback(this, param1);
        } else {
            QCamera::unbind(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qcamera_event_isbase) {
            qcamera_event_isbase = false;
            return QCamera::event(event);
        } else if (qcamera_event_callback != nullptr) {
            return qcamera_event_callback(this, event);
        } else {
            return QCamera::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qcamera_eventfilter_isbase) {
            qcamera_eventfilter_isbase = false;
            return QCamera::eventFilter(watched, event);
        } else if (qcamera_eventfilter_callback != nullptr) {
            return qcamera_eventfilter_callback(this, watched, event);
        } else {
            return QCamera::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qcamera_timerevent_isbase) {
            qcamera_timerevent_isbase = false;
            QCamera::timerEvent(event);
        } else if (qcamera_timerevent_callback != nullptr) {
            qcamera_timerevent_callback(this, event);
        } else {
            QCamera::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qcamera_childevent_isbase) {
            qcamera_childevent_isbase = false;
            QCamera::childEvent(event);
        } else if (qcamera_childevent_callback != nullptr) {
            qcamera_childevent_callback(this, event);
        } else {
            QCamera::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qcamera_customevent_isbase) {
            qcamera_customevent_isbase = false;
            QCamera::customEvent(event);
        } else if (qcamera_customevent_callback != nullptr) {
            qcamera_customevent_callback(this, event);
        } else {
            QCamera::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qcamera_connectnotify_isbase) {
            qcamera_connectnotify_isbase = false;
            QCamera::connectNotify(signal);
        } else if (qcamera_connectnotify_callback != nullptr) {
            qcamera_connectnotify_callback(this, signal);
        } else {
            QCamera::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qcamera_disconnectnotify_isbase) {
            qcamera_disconnectnotify_isbase = false;
            QCamera::disconnectNotify(signal);
        } else if (qcamera_disconnectnotify_callback != nullptr) {
            qcamera_disconnectnotify_callback(this, signal);
        } else {
            QCamera::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    void addPropertyWatch(const QByteArray& name) {
        if (qcamera_addpropertywatch_isbase) {
            qcamera_addpropertywatch_isbase = false;
            QCamera::addPropertyWatch(name);
        } else if (qcamera_addpropertywatch_callback != nullptr) {
            qcamera_addpropertywatch_callback(this, name);
        } else {
            QCamera::addPropertyWatch(name);
        }
    }

    // Virtual method for C ABI access and custom callback
    void removePropertyWatch(const QByteArray& name) {
        if (qcamera_removepropertywatch_isbase) {
            qcamera_removepropertywatch_isbase = false;
            QCamera::removePropertyWatch(name);
        } else if (qcamera_removepropertywatch_callback != nullptr) {
            qcamera_removepropertywatch_callback(this, name);
        } else {
            QCamera::removePropertyWatch(name);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qcamera_sender_isbase) {
            qcamera_sender_isbase = false;
            return QCamera::sender();
        } else if (qcamera_sender_callback != nullptr) {
            return qcamera_sender_callback();
        } else {
            return QCamera::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qcamera_sendersignalindex_isbase) {
            qcamera_sendersignalindex_isbase = false;
            return QCamera::senderSignalIndex();
        } else if (qcamera_sendersignalindex_callback != nullptr) {
            return qcamera_sendersignalindex_callback();
        } else {
            return QCamera::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qcamera_receivers_isbase) {
            qcamera_receivers_isbase = false;
            return QCamera::receivers(signal);
        } else if (qcamera_receivers_callback != nullptr) {
            return qcamera_receivers_callback(this, signal);
        } else {
            return QCamera::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qcamera_issignalconnected_isbase) {
            qcamera_issignalconnected_isbase = false;
            return QCamera::isSignalConnected(signal);
        } else if (qcamera_issignalconnected_callback != nullptr) {
            return qcamera_issignalconnected_callback(this, signal);
        } else {
            return QCamera::isSignalConnected(signal);
        }
    }
};

#endif
