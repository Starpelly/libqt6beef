#pragma once
#ifndef SRC_NETWORKC_LIBVIRTUALQNETWORKCONFIGMANAGER_H
#define SRC_NETWORKC_LIBVIRTUALQNETWORKCONFIGMANAGER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QNetworkConfigurationManager so that we can call protected methods
class VirtualQNetworkConfigurationManager : public QNetworkConfigurationManager {

  public:
    // Virtual class public types (including callbacks)
    using QNetworkConfigurationManager_Metacall_Callback = int (*)(QNetworkConfigurationManager*, QMetaObject::Call, int, void**);
    using QNetworkConfigurationManager_Event_Callback = bool (*)(QNetworkConfigurationManager*, QEvent*);
    using QNetworkConfigurationManager_EventFilter_Callback = bool (*)(QNetworkConfigurationManager*, QObject*, QEvent*);
    using QNetworkConfigurationManager_TimerEvent_Callback = void (*)(QNetworkConfigurationManager*, QTimerEvent*);
    using QNetworkConfigurationManager_ChildEvent_Callback = void (*)(QNetworkConfigurationManager*, QChildEvent*);
    using QNetworkConfigurationManager_CustomEvent_Callback = void (*)(QNetworkConfigurationManager*, QEvent*);
    using QNetworkConfigurationManager_ConnectNotify_Callback = void (*)(QNetworkConfigurationManager*, const QMetaMethod&);
    using QNetworkConfigurationManager_DisconnectNotify_Callback = void (*)(QNetworkConfigurationManager*, const QMetaMethod&);
    using QNetworkConfigurationManager_Sender_Callback = QObject* (*)();
    using QNetworkConfigurationManager_SenderSignalIndex_Callback = int (*)();
    using QNetworkConfigurationManager_Receivers_Callback = int (*)(const QNetworkConfigurationManager*, const char*);
    using QNetworkConfigurationManager_IsSignalConnected_Callback = bool (*)(const QNetworkConfigurationManager*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QNetworkConfigurationManager_Metacall_Callback qnetworkconfigurationmanager_metacall_callback = nullptr;
    QNetworkConfigurationManager_Event_Callback qnetworkconfigurationmanager_event_callback = nullptr;
    QNetworkConfigurationManager_EventFilter_Callback qnetworkconfigurationmanager_eventfilter_callback = nullptr;
    QNetworkConfigurationManager_TimerEvent_Callback qnetworkconfigurationmanager_timerevent_callback = nullptr;
    QNetworkConfigurationManager_ChildEvent_Callback qnetworkconfigurationmanager_childevent_callback = nullptr;
    QNetworkConfigurationManager_CustomEvent_Callback qnetworkconfigurationmanager_customevent_callback = nullptr;
    QNetworkConfigurationManager_ConnectNotify_Callback qnetworkconfigurationmanager_connectnotify_callback = nullptr;
    QNetworkConfigurationManager_DisconnectNotify_Callback qnetworkconfigurationmanager_disconnectnotify_callback = nullptr;
    QNetworkConfigurationManager_Sender_Callback qnetworkconfigurationmanager_sender_callback = nullptr;
    QNetworkConfigurationManager_SenderSignalIndex_Callback qnetworkconfigurationmanager_sendersignalindex_callback = nullptr;
    QNetworkConfigurationManager_Receivers_Callback qnetworkconfigurationmanager_receivers_callback = nullptr;
    QNetworkConfigurationManager_IsSignalConnected_Callback qnetworkconfigurationmanager_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qnetworkconfigurationmanager_metacall_isbase = false;
    mutable bool qnetworkconfigurationmanager_event_isbase = false;
    mutable bool qnetworkconfigurationmanager_eventfilter_isbase = false;
    mutable bool qnetworkconfigurationmanager_timerevent_isbase = false;
    mutable bool qnetworkconfigurationmanager_childevent_isbase = false;
    mutable bool qnetworkconfigurationmanager_customevent_isbase = false;
    mutable bool qnetworkconfigurationmanager_connectnotify_isbase = false;
    mutable bool qnetworkconfigurationmanager_disconnectnotify_isbase = false;
    mutable bool qnetworkconfigurationmanager_sender_isbase = false;
    mutable bool qnetworkconfigurationmanager_sendersignalindex_isbase = false;
    mutable bool qnetworkconfigurationmanager_receivers_isbase = false;
    mutable bool qnetworkconfigurationmanager_issignalconnected_isbase = false;

  public:
    VirtualQNetworkConfigurationManager() : QNetworkConfigurationManager(){};
    VirtualQNetworkConfigurationManager(QObject* parent) : QNetworkConfigurationManager(parent){};

    ~VirtualQNetworkConfigurationManager() {
        qnetworkconfigurationmanager_metacall_callback = nullptr;
        qnetworkconfigurationmanager_event_callback = nullptr;
        qnetworkconfigurationmanager_eventfilter_callback = nullptr;
        qnetworkconfigurationmanager_timerevent_callback = nullptr;
        qnetworkconfigurationmanager_childevent_callback = nullptr;
        qnetworkconfigurationmanager_customevent_callback = nullptr;
        qnetworkconfigurationmanager_connectnotify_callback = nullptr;
        qnetworkconfigurationmanager_disconnectnotify_callback = nullptr;
        qnetworkconfigurationmanager_sender_callback = nullptr;
        qnetworkconfigurationmanager_sendersignalindex_callback = nullptr;
        qnetworkconfigurationmanager_receivers_callback = nullptr;
        qnetworkconfigurationmanager_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQNetworkConfigurationManager_Metacall_Callback(QNetworkConfigurationManager_Metacall_Callback cb) { qnetworkconfigurationmanager_metacall_callback = cb; }
    void setQNetworkConfigurationManager_Event_Callback(QNetworkConfigurationManager_Event_Callback cb) { qnetworkconfigurationmanager_event_callback = cb; }
    void setQNetworkConfigurationManager_EventFilter_Callback(QNetworkConfigurationManager_EventFilter_Callback cb) { qnetworkconfigurationmanager_eventfilter_callback = cb; }
    void setQNetworkConfigurationManager_TimerEvent_Callback(QNetworkConfigurationManager_TimerEvent_Callback cb) { qnetworkconfigurationmanager_timerevent_callback = cb; }
    void setQNetworkConfigurationManager_ChildEvent_Callback(QNetworkConfigurationManager_ChildEvent_Callback cb) { qnetworkconfigurationmanager_childevent_callback = cb; }
    void setQNetworkConfigurationManager_CustomEvent_Callback(QNetworkConfigurationManager_CustomEvent_Callback cb) { qnetworkconfigurationmanager_customevent_callback = cb; }
    void setQNetworkConfigurationManager_ConnectNotify_Callback(QNetworkConfigurationManager_ConnectNotify_Callback cb) { qnetworkconfigurationmanager_connectnotify_callback = cb; }
    void setQNetworkConfigurationManager_DisconnectNotify_Callback(QNetworkConfigurationManager_DisconnectNotify_Callback cb) { qnetworkconfigurationmanager_disconnectnotify_callback = cb; }
    void setQNetworkConfigurationManager_Sender_Callback(QNetworkConfigurationManager_Sender_Callback cb) { qnetworkconfigurationmanager_sender_callback = cb; }
    void setQNetworkConfigurationManager_SenderSignalIndex_Callback(QNetworkConfigurationManager_SenderSignalIndex_Callback cb) { qnetworkconfigurationmanager_sendersignalindex_callback = cb; }
    void setQNetworkConfigurationManager_Receivers_Callback(QNetworkConfigurationManager_Receivers_Callback cb) { qnetworkconfigurationmanager_receivers_callback = cb; }
    void setQNetworkConfigurationManager_IsSignalConnected_Callback(QNetworkConfigurationManager_IsSignalConnected_Callback cb) { qnetworkconfigurationmanager_issignalconnected_callback = cb; }

    // Base flag setters
    void setQNetworkConfigurationManager_Metacall_IsBase(bool value) const { qnetworkconfigurationmanager_metacall_isbase = value; }
    void setQNetworkConfigurationManager_Event_IsBase(bool value) const { qnetworkconfigurationmanager_event_isbase = value; }
    void setQNetworkConfigurationManager_EventFilter_IsBase(bool value) const { qnetworkconfigurationmanager_eventfilter_isbase = value; }
    void setQNetworkConfigurationManager_TimerEvent_IsBase(bool value) const { qnetworkconfigurationmanager_timerevent_isbase = value; }
    void setQNetworkConfigurationManager_ChildEvent_IsBase(bool value) const { qnetworkconfigurationmanager_childevent_isbase = value; }
    void setQNetworkConfigurationManager_CustomEvent_IsBase(bool value) const { qnetworkconfigurationmanager_customevent_isbase = value; }
    void setQNetworkConfigurationManager_ConnectNotify_IsBase(bool value) const { qnetworkconfigurationmanager_connectnotify_isbase = value; }
    void setQNetworkConfigurationManager_DisconnectNotify_IsBase(bool value) const { qnetworkconfigurationmanager_disconnectnotify_isbase = value; }
    void setQNetworkConfigurationManager_Sender_IsBase(bool value) const { qnetworkconfigurationmanager_sender_isbase = value; }
    void setQNetworkConfigurationManager_SenderSignalIndex_IsBase(bool value) const { qnetworkconfigurationmanager_sendersignalindex_isbase = value; }
    void setQNetworkConfigurationManager_Receivers_IsBase(bool value) const { qnetworkconfigurationmanager_receivers_isbase = value; }
    void setQNetworkConfigurationManager_IsSignalConnected_IsBase(bool value) const { qnetworkconfigurationmanager_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qnetworkconfigurationmanager_metacall_isbase) {
            qnetworkconfigurationmanager_metacall_isbase = false;
            return QNetworkConfigurationManager::qt_metacall(param1, param2, param3);
        } else if (qnetworkconfigurationmanager_metacall_callback != nullptr) {
            return qnetworkconfigurationmanager_metacall_callback(this, param1, param2, param3);
        } else {
            return QNetworkConfigurationManager::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qnetworkconfigurationmanager_event_isbase) {
            qnetworkconfigurationmanager_event_isbase = false;
            return QNetworkConfigurationManager::event(event);
        } else if (qnetworkconfigurationmanager_event_callback != nullptr) {
            return qnetworkconfigurationmanager_event_callback(this, event);
        } else {
            return QNetworkConfigurationManager::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qnetworkconfigurationmanager_eventfilter_isbase) {
            qnetworkconfigurationmanager_eventfilter_isbase = false;
            return QNetworkConfigurationManager::eventFilter(watched, event);
        } else if (qnetworkconfigurationmanager_eventfilter_callback != nullptr) {
            return qnetworkconfigurationmanager_eventfilter_callback(this, watched, event);
        } else {
            return QNetworkConfigurationManager::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qnetworkconfigurationmanager_timerevent_isbase) {
            qnetworkconfigurationmanager_timerevent_isbase = false;
            QNetworkConfigurationManager::timerEvent(event);
        } else if (qnetworkconfigurationmanager_timerevent_callback != nullptr) {
            qnetworkconfigurationmanager_timerevent_callback(this, event);
        } else {
            QNetworkConfigurationManager::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qnetworkconfigurationmanager_childevent_isbase) {
            qnetworkconfigurationmanager_childevent_isbase = false;
            QNetworkConfigurationManager::childEvent(event);
        } else if (qnetworkconfigurationmanager_childevent_callback != nullptr) {
            qnetworkconfigurationmanager_childevent_callback(this, event);
        } else {
            QNetworkConfigurationManager::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qnetworkconfigurationmanager_customevent_isbase) {
            qnetworkconfigurationmanager_customevent_isbase = false;
            QNetworkConfigurationManager::customEvent(event);
        } else if (qnetworkconfigurationmanager_customevent_callback != nullptr) {
            qnetworkconfigurationmanager_customevent_callback(this, event);
        } else {
            QNetworkConfigurationManager::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qnetworkconfigurationmanager_connectnotify_isbase) {
            qnetworkconfigurationmanager_connectnotify_isbase = false;
            QNetworkConfigurationManager::connectNotify(signal);
        } else if (qnetworkconfigurationmanager_connectnotify_callback != nullptr) {
            qnetworkconfigurationmanager_connectnotify_callback(this, signal);
        } else {
            QNetworkConfigurationManager::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qnetworkconfigurationmanager_disconnectnotify_isbase) {
            qnetworkconfigurationmanager_disconnectnotify_isbase = false;
            QNetworkConfigurationManager::disconnectNotify(signal);
        } else if (qnetworkconfigurationmanager_disconnectnotify_callback != nullptr) {
            qnetworkconfigurationmanager_disconnectnotify_callback(this, signal);
        } else {
            QNetworkConfigurationManager::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qnetworkconfigurationmanager_sender_isbase) {
            qnetworkconfigurationmanager_sender_isbase = false;
            return QNetworkConfigurationManager::sender();
        } else if (qnetworkconfigurationmanager_sender_callback != nullptr) {
            return qnetworkconfigurationmanager_sender_callback();
        } else {
            return QNetworkConfigurationManager::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qnetworkconfigurationmanager_sendersignalindex_isbase) {
            qnetworkconfigurationmanager_sendersignalindex_isbase = false;
            return QNetworkConfigurationManager::senderSignalIndex();
        } else if (qnetworkconfigurationmanager_sendersignalindex_callback != nullptr) {
            return qnetworkconfigurationmanager_sendersignalindex_callback();
        } else {
            return QNetworkConfigurationManager::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qnetworkconfigurationmanager_receivers_isbase) {
            qnetworkconfigurationmanager_receivers_isbase = false;
            return QNetworkConfigurationManager::receivers(signal);
        } else if (qnetworkconfigurationmanager_receivers_callback != nullptr) {
            return qnetworkconfigurationmanager_receivers_callback(this, signal);
        } else {
            return QNetworkConfigurationManager::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qnetworkconfigurationmanager_issignalconnected_isbase) {
            qnetworkconfigurationmanager_issignalconnected_isbase = false;
            return QNetworkConfigurationManager::isSignalConnected(signal);
        } else if (qnetworkconfigurationmanager_issignalconnected_callback != nullptr) {
            return qnetworkconfigurationmanager_issignalconnected_callback(this, signal);
        } else {
            return QNetworkConfigurationManager::isSignalConnected(signal);
        }
    }
};

#endif
