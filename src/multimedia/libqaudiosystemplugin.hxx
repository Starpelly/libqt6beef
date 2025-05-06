#pragma once
#ifndef SRC_MULTIMEDIAC_LIBVIRTUALQAUDIOSYSTEMPLUGIN_H
#define SRC_MULTIMEDIAC_LIBVIRTUALQAUDIOSYSTEMPLUGIN_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QAudioSystemPlugin so that we can call protected methods
class VirtualQAudioSystemPlugin : public QAudioSystemPlugin {

  public:
    // Virtual class public types (including callbacks)
    using QAudioSystemPlugin_Metacall_Callback = int (*)(QAudioSystemPlugin*, QMetaObject::Call, int, void**);
    using QAudioSystemPlugin_AvailableDevices_Callback = QList<QByteArray> (*)(const QAudioSystemPlugin*, QAudio::Mode);
    using QAudioSystemPlugin_CreateInput_Callback = QAbstractAudioInput* (*)(QAudioSystemPlugin*, const QByteArray&);
    using QAudioSystemPlugin_CreateOutput_Callback = QAbstractAudioOutput* (*)(QAudioSystemPlugin*, const QByteArray&);
    using QAudioSystemPlugin_CreateDeviceInfo_Callback = QAbstractAudioDeviceInfo* (*)(QAudioSystemPlugin*, const QByteArray&, QAudio::Mode);
    using QAudioSystemPlugin_Event_Callback = bool (*)(QAudioSystemPlugin*, QEvent*);
    using QAudioSystemPlugin_EventFilter_Callback = bool (*)(QAudioSystemPlugin*, QObject*, QEvent*);
    using QAudioSystemPlugin_TimerEvent_Callback = void (*)(QAudioSystemPlugin*, QTimerEvent*);
    using QAudioSystemPlugin_ChildEvent_Callback = void (*)(QAudioSystemPlugin*, QChildEvent*);
    using QAudioSystemPlugin_CustomEvent_Callback = void (*)(QAudioSystemPlugin*, QEvent*);
    using QAudioSystemPlugin_ConnectNotify_Callback = void (*)(QAudioSystemPlugin*, const QMetaMethod&);
    using QAudioSystemPlugin_DisconnectNotify_Callback = void (*)(QAudioSystemPlugin*, const QMetaMethod&);
    using QAudioSystemPlugin_Sender_Callback = QObject* (*)();
    using QAudioSystemPlugin_SenderSignalIndex_Callback = int (*)();
    using QAudioSystemPlugin_Receivers_Callback = int (*)(const QAudioSystemPlugin*, const char*);
    using QAudioSystemPlugin_IsSignalConnected_Callback = bool (*)(const QAudioSystemPlugin*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QAudioSystemPlugin_Metacall_Callback qaudiosystemplugin_metacall_callback = nullptr;
    QAudioSystemPlugin_AvailableDevices_Callback qaudiosystemplugin_availabledevices_callback = nullptr;
    QAudioSystemPlugin_CreateInput_Callback qaudiosystemplugin_createinput_callback = nullptr;
    QAudioSystemPlugin_CreateOutput_Callback qaudiosystemplugin_createoutput_callback = nullptr;
    QAudioSystemPlugin_CreateDeviceInfo_Callback qaudiosystemplugin_createdeviceinfo_callback = nullptr;
    QAudioSystemPlugin_Event_Callback qaudiosystemplugin_event_callback = nullptr;
    QAudioSystemPlugin_EventFilter_Callback qaudiosystemplugin_eventfilter_callback = nullptr;
    QAudioSystemPlugin_TimerEvent_Callback qaudiosystemplugin_timerevent_callback = nullptr;
    QAudioSystemPlugin_ChildEvent_Callback qaudiosystemplugin_childevent_callback = nullptr;
    QAudioSystemPlugin_CustomEvent_Callback qaudiosystemplugin_customevent_callback = nullptr;
    QAudioSystemPlugin_ConnectNotify_Callback qaudiosystemplugin_connectnotify_callback = nullptr;
    QAudioSystemPlugin_DisconnectNotify_Callback qaudiosystemplugin_disconnectnotify_callback = nullptr;
    QAudioSystemPlugin_Sender_Callback qaudiosystemplugin_sender_callback = nullptr;
    QAudioSystemPlugin_SenderSignalIndex_Callback qaudiosystemplugin_sendersignalindex_callback = nullptr;
    QAudioSystemPlugin_Receivers_Callback qaudiosystemplugin_receivers_callback = nullptr;
    QAudioSystemPlugin_IsSignalConnected_Callback qaudiosystemplugin_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qaudiosystemplugin_metacall_isbase = false;
    mutable bool qaudiosystemplugin_availabledevices_isbase = false;
    mutable bool qaudiosystemplugin_createinput_isbase = false;
    mutable bool qaudiosystemplugin_createoutput_isbase = false;
    mutable bool qaudiosystemplugin_createdeviceinfo_isbase = false;
    mutable bool qaudiosystemplugin_event_isbase = false;
    mutable bool qaudiosystemplugin_eventfilter_isbase = false;
    mutable bool qaudiosystemplugin_timerevent_isbase = false;
    mutable bool qaudiosystemplugin_childevent_isbase = false;
    mutable bool qaudiosystemplugin_customevent_isbase = false;
    mutable bool qaudiosystemplugin_connectnotify_isbase = false;
    mutable bool qaudiosystemplugin_disconnectnotify_isbase = false;
    mutable bool qaudiosystemplugin_sender_isbase = false;
    mutable bool qaudiosystemplugin_sendersignalindex_isbase = false;
    mutable bool qaudiosystemplugin_receivers_isbase = false;
    mutable bool qaudiosystemplugin_issignalconnected_isbase = false;

  public:
    VirtualQAudioSystemPlugin() : QAudioSystemPlugin(){};
    VirtualQAudioSystemPlugin(QObject* parent) : QAudioSystemPlugin(parent){};

    ~VirtualQAudioSystemPlugin() {
        qaudiosystemplugin_metacall_callback = nullptr;
        qaudiosystemplugin_availabledevices_callback = nullptr;
        qaudiosystemplugin_createinput_callback = nullptr;
        qaudiosystemplugin_createoutput_callback = nullptr;
        qaudiosystemplugin_createdeviceinfo_callback = nullptr;
        qaudiosystemplugin_event_callback = nullptr;
        qaudiosystemplugin_eventfilter_callback = nullptr;
        qaudiosystemplugin_timerevent_callback = nullptr;
        qaudiosystemplugin_childevent_callback = nullptr;
        qaudiosystemplugin_customevent_callback = nullptr;
        qaudiosystemplugin_connectnotify_callback = nullptr;
        qaudiosystemplugin_disconnectnotify_callback = nullptr;
        qaudiosystemplugin_sender_callback = nullptr;
        qaudiosystemplugin_sendersignalindex_callback = nullptr;
        qaudiosystemplugin_receivers_callback = nullptr;
        qaudiosystemplugin_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQAudioSystemPlugin_Metacall_Callback(QAudioSystemPlugin_Metacall_Callback cb) { qaudiosystemplugin_metacall_callback = cb; }
    void setQAudioSystemPlugin_AvailableDevices_Callback(QAudioSystemPlugin_AvailableDevices_Callback cb) { qaudiosystemplugin_availabledevices_callback = cb; }
    void setQAudioSystemPlugin_CreateInput_Callback(QAudioSystemPlugin_CreateInput_Callback cb) { qaudiosystemplugin_createinput_callback = cb; }
    void setQAudioSystemPlugin_CreateOutput_Callback(QAudioSystemPlugin_CreateOutput_Callback cb) { qaudiosystemplugin_createoutput_callback = cb; }
    void setQAudioSystemPlugin_CreateDeviceInfo_Callback(QAudioSystemPlugin_CreateDeviceInfo_Callback cb) { qaudiosystemplugin_createdeviceinfo_callback = cb; }
    void setQAudioSystemPlugin_Event_Callback(QAudioSystemPlugin_Event_Callback cb) { qaudiosystemplugin_event_callback = cb; }
    void setQAudioSystemPlugin_EventFilter_Callback(QAudioSystemPlugin_EventFilter_Callback cb) { qaudiosystemplugin_eventfilter_callback = cb; }
    void setQAudioSystemPlugin_TimerEvent_Callback(QAudioSystemPlugin_TimerEvent_Callback cb) { qaudiosystemplugin_timerevent_callback = cb; }
    void setQAudioSystemPlugin_ChildEvent_Callback(QAudioSystemPlugin_ChildEvent_Callback cb) { qaudiosystemplugin_childevent_callback = cb; }
    void setQAudioSystemPlugin_CustomEvent_Callback(QAudioSystemPlugin_CustomEvent_Callback cb) { qaudiosystemplugin_customevent_callback = cb; }
    void setQAudioSystemPlugin_ConnectNotify_Callback(QAudioSystemPlugin_ConnectNotify_Callback cb) { qaudiosystemplugin_connectnotify_callback = cb; }
    void setQAudioSystemPlugin_DisconnectNotify_Callback(QAudioSystemPlugin_DisconnectNotify_Callback cb) { qaudiosystemplugin_disconnectnotify_callback = cb; }
    void setQAudioSystemPlugin_Sender_Callback(QAudioSystemPlugin_Sender_Callback cb) { qaudiosystemplugin_sender_callback = cb; }
    void setQAudioSystemPlugin_SenderSignalIndex_Callback(QAudioSystemPlugin_SenderSignalIndex_Callback cb) { qaudiosystemplugin_sendersignalindex_callback = cb; }
    void setQAudioSystemPlugin_Receivers_Callback(QAudioSystemPlugin_Receivers_Callback cb) { qaudiosystemplugin_receivers_callback = cb; }
    void setQAudioSystemPlugin_IsSignalConnected_Callback(QAudioSystemPlugin_IsSignalConnected_Callback cb) { qaudiosystemplugin_issignalconnected_callback = cb; }

    // Base flag setters
    void setQAudioSystemPlugin_Metacall_IsBase(bool value) const { qaudiosystemplugin_metacall_isbase = value; }
    void setQAudioSystemPlugin_AvailableDevices_IsBase(bool value) const { qaudiosystemplugin_availabledevices_isbase = value; }
    void setQAudioSystemPlugin_CreateInput_IsBase(bool value) const { qaudiosystemplugin_createinput_isbase = value; }
    void setQAudioSystemPlugin_CreateOutput_IsBase(bool value) const { qaudiosystemplugin_createoutput_isbase = value; }
    void setQAudioSystemPlugin_CreateDeviceInfo_IsBase(bool value) const { qaudiosystemplugin_createdeviceinfo_isbase = value; }
    void setQAudioSystemPlugin_Event_IsBase(bool value) const { qaudiosystemplugin_event_isbase = value; }
    void setQAudioSystemPlugin_EventFilter_IsBase(bool value) const { qaudiosystemplugin_eventfilter_isbase = value; }
    void setQAudioSystemPlugin_TimerEvent_IsBase(bool value) const { qaudiosystemplugin_timerevent_isbase = value; }
    void setQAudioSystemPlugin_ChildEvent_IsBase(bool value) const { qaudiosystemplugin_childevent_isbase = value; }
    void setQAudioSystemPlugin_CustomEvent_IsBase(bool value) const { qaudiosystemplugin_customevent_isbase = value; }
    void setQAudioSystemPlugin_ConnectNotify_IsBase(bool value) const { qaudiosystemplugin_connectnotify_isbase = value; }
    void setQAudioSystemPlugin_DisconnectNotify_IsBase(bool value) const { qaudiosystemplugin_disconnectnotify_isbase = value; }
    void setQAudioSystemPlugin_Sender_IsBase(bool value) const { qaudiosystemplugin_sender_isbase = value; }
    void setQAudioSystemPlugin_SenderSignalIndex_IsBase(bool value) const { qaudiosystemplugin_sendersignalindex_isbase = value; }
    void setQAudioSystemPlugin_Receivers_IsBase(bool value) const { qaudiosystemplugin_receivers_isbase = value; }
    void setQAudioSystemPlugin_IsSignalConnected_IsBase(bool value) const { qaudiosystemplugin_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qaudiosystemplugin_metacall_isbase) {
            qaudiosystemplugin_metacall_isbase = false;
            return QAudioSystemPlugin::qt_metacall(param1, param2, param3);
        } else if (qaudiosystemplugin_metacall_callback != nullptr) {
            return qaudiosystemplugin_metacall_callback(this, param1, param2, param3);
        } else {
            return QAudioSystemPlugin::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QList<QByteArray> availableDevices(QAudio::Mode param1) const override {
        return qaudiosystemplugin_availabledevices_callback(this, param1);
    }

    // Virtual method for C ABI access and custom callback
    virtual QAbstractAudioInput* createInput(const QByteArray& device) override {
        return qaudiosystemplugin_createinput_callback(this, device);
    }

    // Virtual method for C ABI access and custom callback
    virtual QAbstractAudioOutput* createOutput(const QByteArray& device) override {
        return qaudiosystemplugin_createoutput_callback(this, device);
    }

    // Virtual method for C ABI access and custom callback
    virtual QAbstractAudioDeviceInfo* createDeviceInfo(const QByteArray& device, QAudio::Mode mode) override {
        return qaudiosystemplugin_createdeviceinfo_callback(this, device, mode);
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qaudiosystemplugin_event_isbase) {
            qaudiosystemplugin_event_isbase = false;
            return QAudioSystemPlugin::event(event);
        } else if (qaudiosystemplugin_event_callback != nullptr) {
            return qaudiosystemplugin_event_callback(this, event);
        } else {
            return QAudioSystemPlugin::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qaudiosystemplugin_eventfilter_isbase) {
            qaudiosystemplugin_eventfilter_isbase = false;
            return QAudioSystemPlugin::eventFilter(watched, event);
        } else if (qaudiosystemplugin_eventfilter_callback != nullptr) {
            return qaudiosystemplugin_eventfilter_callback(this, watched, event);
        } else {
            return QAudioSystemPlugin::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qaudiosystemplugin_timerevent_isbase) {
            qaudiosystemplugin_timerevent_isbase = false;
            QAudioSystemPlugin::timerEvent(event);
        } else if (qaudiosystemplugin_timerevent_callback != nullptr) {
            qaudiosystemplugin_timerevent_callback(this, event);
        } else {
            QAudioSystemPlugin::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qaudiosystemplugin_childevent_isbase) {
            qaudiosystemplugin_childevent_isbase = false;
            QAudioSystemPlugin::childEvent(event);
        } else if (qaudiosystemplugin_childevent_callback != nullptr) {
            qaudiosystemplugin_childevent_callback(this, event);
        } else {
            QAudioSystemPlugin::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qaudiosystemplugin_customevent_isbase) {
            qaudiosystemplugin_customevent_isbase = false;
            QAudioSystemPlugin::customEvent(event);
        } else if (qaudiosystemplugin_customevent_callback != nullptr) {
            qaudiosystemplugin_customevent_callback(this, event);
        } else {
            QAudioSystemPlugin::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qaudiosystemplugin_connectnotify_isbase) {
            qaudiosystemplugin_connectnotify_isbase = false;
            QAudioSystemPlugin::connectNotify(signal);
        } else if (qaudiosystemplugin_connectnotify_callback != nullptr) {
            qaudiosystemplugin_connectnotify_callback(this, signal);
        } else {
            QAudioSystemPlugin::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qaudiosystemplugin_disconnectnotify_isbase) {
            qaudiosystemplugin_disconnectnotify_isbase = false;
            QAudioSystemPlugin::disconnectNotify(signal);
        } else if (qaudiosystemplugin_disconnectnotify_callback != nullptr) {
            qaudiosystemplugin_disconnectnotify_callback(this, signal);
        } else {
            QAudioSystemPlugin::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qaudiosystemplugin_sender_isbase) {
            qaudiosystemplugin_sender_isbase = false;
            return QAudioSystemPlugin::sender();
        } else if (qaudiosystemplugin_sender_callback != nullptr) {
            return qaudiosystemplugin_sender_callback();
        } else {
            return QAudioSystemPlugin::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qaudiosystemplugin_sendersignalindex_isbase) {
            qaudiosystemplugin_sendersignalindex_isbase = false;
            return QAudioSystemPlugin::senderSignalIndex();
        } else if (qaudiosystemplugin_sendersignalindex_callback != nullptr) {
            return qaudiosystemplugin_sendersignalindex_callback();
        } else {
            return QAudioSystemPlugin::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qaudiosystemplugin_receivers_isbase) {
            qaudiosystemplugin_receivers_isbase = false;
            return QAudioSystemPlugin::receivers(signal);
        } else if (qaudiosystemplugin_receivers_callback != nullptr) {
            return qaudiosystemplugin_receivers_callback(this, signal);
        } else {
            return QAudioSystemPlugin::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qaudiosystemplugin_issignalconnected_isbase) {
            qaudiosystemplugin_issignalconnected_isbase = false;
            return QAudioSystemPlugin::isSignalConnected(signal);
        } else if (qaudiosystemplugin_issignalconnected_callback != nullptr) {
            return qaudiosystemplugin_issignalconnected_callback(this, signal);
        } else {
            return QAudioSystemPlugin::isSignalConnected(signal);
        }
    }
};

#endif
