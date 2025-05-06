#pragma once
#ifndef SRCC_LIBVIRTUALQPICTUREFORMATPLUGIN_H
#define SRCC_LIBVIRTUALQPICTUREFORMATPLUGIN_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

// This class is a subclass of QPictureFormatPlugin so that we can call protected methods
class VirtualQPictureFormatPlugin : public QPictureFormatPlugin {

  public:
    // Virtual class public types (including callbacks)
    using QPictureFormatPlugin_Metacall_Callback = int (*)(QPictureFormatPlugin*, QMetaObject::Call, int, void**);
    using QPictureFormatPlugin_LoadPicture_Callback = bool (*)(QPictureFormatPlugin*, const QString&, const QString&, QPicture*);
    using QPictureFormatPlugin_SavePicture_Callback = bool (*)(QPictureFormatPlugin*, const QString&, const QString&, const QPicture&);
    using QPictureFormatPlugin_InstallIOHandler_Callback = bool (*)(QPictureFormatPlugin*, const QString&);
    using QPictureFormatPlugin_Event_Callback = bool (*)(QPictureFormatPlugin*, QEvent*);
    using QPictureFormatPlugin_EventFilter_Callback = bool (*)(QPictureFormatPlugin*, QObject*, QEvent*);
    using QPictureFormatPlugin_TimerEvent_Callback = void (*)(QPictureFormatPlugin*, QTimerEvent*);
    using QPictureFormatPlugin_ChildEvent_Callback = void (*)(QPictureFormatPlugin*, QChildEvent*);
    using QPictureFormatPlugin_CustomEvent_Callback = void (*)(QPictureFormatPlugin*, QEvent*);
    using QPictureFormatPlugin_ConnectNotify_Callback = void (*)(QPictureFormatPlugin*, const QMetaMethod&);
    using QPictureFormatPlugin_DisconnectNotify_Callback = void (*)(QPictureFormatPlugin*, const QMetaMethod&);
    using QPictureFormatPlugin_Sender_Callback = QObject* (*)();
    using QPictureFormatPlugin_SenderSignalIndex_Callback = int (*)();
    using QPictureFormatPlugin_Receivers_Callback = int (*)(const QPictureFormatPlugin*, const char*);
    using QPictureFormatPlugin_IsSignalConnected_Callback = bool (*)(const QPictureFormatPlugin*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QPictureFormatPlugin_Metacall_Callback qpictureformatplugin_metacall_callback = nullptr;
    QPictureFormatPlugin_LoadPicture_Callback qpictureformatplugin_loadpicture_callback = nullptr;
    QPictureFormatPlugin_SavePicture_Callback qpictureformatplugin_savepicture_callback = nullptr;
    QPictureFormatPlugin_InstallIOHandler_Callback qpictureformatplugin_installiohandler_callback = nullptr;
    QPictureFormatPlugin_Event_Callback qpictureformatplugin_event_callback = nullptr;
    QPictureFormatPlugin_EventFilter_Callback qpictureformatplugin_eventfilter_callback = nullptr;
    QPictureFormatPlugin_TimerEvent_Callback qpictureformatplugin_timerevent_callback = nullptr;
    QPictureFormatPlugin_ChildEvent_Callback qpictureformatplugin_childevent_callback = nullptr;
    QPictureFormatPlugin_CustomEvent_Callback qpictureformatplugin_customevent_callback = nullptr;
    QPictureFormatPlugin_ConnectNotify_Callback qpictureformatplugin_connectnotify_callback = nullptr;
    QPictureFormatPlugin_DisconnectNotify_Callback qpictureformatplugin_disconnectnotify_callback = nullptr;
    QPictureFormatPlugin_Sender_Callback qpictureformatplugin_sender_callback = nullptr;
    QPictureFormatPlugin_SenderSignalIndex_Callback qpictureformatplugin_sendersignalindex_callback = nullptr;
    QPictureFormatPlugin_Receivers_Callback qpictureformatplugin_receivers_callback = nullptr;
    QPictureFormatPlugin_IsSignalConnected_Callback qpictureformatplugin_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qpictureformatplugin_metacall_isbase = false;
    mutable bool qpictureformatplugin_loadpicture_isbase = false;
    mutable bool qpictureformatplugin_savepicture_isbase = false;
    mutable bool qpictureformatplugin_installiohandler_isbase = false;
    mutable bool qpictureformatplugin_event_isbase = false;
    mutable bool qpictureformatplugin_eventfilter_isbase = false;
    mutable bool qpictureformatplugin_timerevent_isbase = false;
    mutable bool qpictureformatplugin_childevent_isbase = false;
    mutable bool qpictureformatplugin_customevent_isbase = false;
    mutable bool qpictureformatplugin_connectnotify_isbase = false;
    mutable bool qpictureformatplugin_disconnectnotify_isbase = false;
    mutable bool qpictureformatplugin_sender_isbase = false;
    mutable bool qpictureformatplugin_sendersignalindex_isbase = false;
    mutable bool qpictureformatplugin_receivers_isbase = false;
    mutable bool qpictureformatplugin_issignalconnected_isbase = false;

  public:
    VirtualQPictureFormatPlugin() : QPictureFormatPlugin(){};
    VirtualQPictureFormatPlugin(QObject* parent) : QPictureFormatPlugin(parent){};

    ~VirtualQPictureFormatPlugin() {
        qpictureformatplugin_metacall_callback = nullptr;
        qpictureformatplugin_loadpicture_callback = nullptr;
        qpictureformatplugin_savepicture_callback = nullptr;
        qpictureformatplugin_installiohandler_callback = nullptr;
        qpictureformatplugin_event_callback = nullptr;
        qpictureformatplugin_eventfilter_callback = nullptr;
        qpictureformatplugin_timerevent_callback = nullptr;
        qpictureformatplugin_childevent_callback = nullptr;
        qpictureformatplugin_customevent_callback = nullptr;
        qpictureformatplugin_connectnotify_callback = nullptr;
        qpictureformatplugin_disconnectnotify_callback = nullptr;
        qpictureformatplugin_sender_callback = nullptr;
        qpictureformatplugin_sendersignalindex_callback = nullptr;
        qpictureformatplugin_receivers_callback = nullptr;
        qpictureformatplugin_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQPictureFormatPlugin_Metacall_Callback(QPictureFormatPlugin_Metacall_Callback cb) { qpictureformatplugin_metacall_callback = cb; }
    void setQPictureFormatPlugin_LoadPicture_Callback(QPictureFormatPlugin_LoadPicture_Callback cb) { qpictureformatplugin_loadpicture_callback = cb; }
    void setQPictureFormatPlugin_SavePicture_Callback(QPictureFormatPlugin_SavePicture_Callback cb) { qpictureformatplugin_savepicture_callback = cb; }
    void setQPictureFormatPlugin_InstallIOHandler_Callback(QPictureFormatPlugin_InstallIOHandler_Callback cb) { qpictureformatplugin_installiohandler_callback = cb; }
    void setQPictureFormatPlugin_Event_Callback(QPictureFormatPlugin_Event_Callback cb) { qpictureformatplugin_event_callback = cb; }
    void setQPictureFormatPlugin_EventFilter_Callback(QPictureFormatPlugin_EventFilter_Callback cb) { qpictureformatplugin_eventfilter_callback = cb; }
    void setQPictureFormatPlugin_TimerEvent_Callback(QPictureFormatPlugin_TimerEvent_Callback cb) { qpictureformatplugin_timerevent_callback = cb; }
    void setQPictureFormatPlugin_ChildEvent_Callback(QPictureFormatPlugin_ChildEvent_Callback cb) { qpictureformatplugin_childevent_callback = cb; }
    void setQPictureFormatPlugin_CustomEvent_Callback(QPictureFormatPlugin_CustomEvent_Callback cb) { qpictureformatplugin_customevent_callback = cb; }
    void setQPictureFormatPlugin_ConnectNotify_Callback(QPictureFormatPlugin_ConnectNotify_Callback cb) { qpictureformatplugin_connectnotify_callback = cb; }
    void setQPictureFormatPlugin_DisconnectNotify_Callback(QPictureFormatPlugin_DisconnectNotify_Callback cb) { qpictureformatplugin_disconnectnotify_callback = cb; }
    void setQPictureFormatPlugin_Sender_Callback(QPictureFormatPlugin_Sender_Callback cb) { qpictureformatplugin_sender_callback = cb; }
    void setQPictureFormatPlugin_SenderSignalIndex_Callback(QPictureFormatPlugin_SenderSignalIndex_Callback cb) { qpictureformatplugin_sendersignalindex_callback = cb; }
    void setQPictureFormatPlugin_Receivers_Callback(QPictureFormatPlugin_Receivers_Callback cb) { qpictureformatplugin_receivers_callback = cb; }
    void setQPictureFormatPlugin_IsSignalConnected_Callback(QPictureFormatPlugin_IsSignalConnected_Callback cb) { qpictureformatplugin_issignalconnected_callback = cb; }

    // Base flag setters
    void setQPictureFormatPlugin_Metacall_IsBase(bool value) const { qpictureformatplugin_metacall_isbase = value; }
    void setQPictureFormatPlugin_LoadPicture_IsBase(bool value) const { qpictureformatplugin_loadpicture_isbase = value; }
    void setQPictureFormatPlugin_SavePicture_IsBase(bool value) const { qpictureformatplugin_savepicture_isbase = value; }
    void setQPictureFormatPlugin_InstallIOHandler_IsBase(bool value) const { qpictureformatplugin_installiohandler_isbase = value; }
    void setQPictureFormatPlugin_Event_IsBase(bool value) const { qpictureformatplugin_event_isbase = value; }
    void setQPictureFormatPlugin_EventFilter_IsBase(bool value) const { qpictureformatplugin_eventfilter_isbase = value; }
    void setQPictureFormatPlugin_TimerEvent_IsBase(bool value) const { qpictureformatplugin_timerevent_isbase = value; }
    void setQPictureFormatPlugin_ChildEvent_IsBase(bool value) const { qpictureformatplugin_childevent_isbase = value; }
    void setQPictureFormatPlugin_CustomEvent_IsBase(bool value) const { qpictureformatplugin_customevent_isbase = value; }
    void setQPictureFormatPlugin_ConnectNotify_IsBase(bool value) const { qpictureformatplugin_connectnotify_isbase = value; }
    void setQPictureFormatPlugin_DisconnectNotify_IsBase(bool value) const { qpictureformatplugin_disconnectnotify_isbase = value; }
    void setQPictureFormatPlugin_Sender_IsBase(bool value) const { qpictureformatplugin_sender_isbase = value; }
    void setQPictureFormatPlugin_SenderSignalIndex_IsBase(bool value) const { qpictureformatplugin_sendersignalindex_isbase = value; }
    void setQPictureFormatPlugin_Receivers_IsBase(bool value) const { qpictureformatplugin_receivers_isbase = value; }
    void setQPictureFormatPlugin_IsSignalConnected_IsBase(bool value) const { qpictureformatplugin_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qpictureformatplugin_metacall_isbase) {
            qpictureformatplugin_metacall_isbase = false;
            return QPictureFormatPlugin::qt_metacall(param1, param2, param3);
        } else if (qpictureformatplugin_metacall_callback != nullptr) {
            return qpictureformatplugin_metacall_callback(this, param1, param2, param3);
        } else {
            return QPictureFormatPlugin::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool loadPicture(const QString& format, const QString& filename, QPicture* pic) override {
        if (qpictureformatplugin_loadpicture_isbase) {
            qpictureformatplugin_loadpicture_isbase = false;
            return QPictureFormatPlugin::loadPicture(format, filename, pic);
        } else if (qpictureformatplugin_loadpicture_callback != nullptr) {
            return qpictureformatplugin_loadpicture_callback(this, format, filename, pic);
        } else {
            return QPictureFormatPlugin::loadPicture(format, filename, pic);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool savePicture(const QString& format, const QString& filename, const QPicture& pic) override {
        if (qpictureformatplugin_savepicture_isbase) {
            qpictureformatplugin_savepicture_isbase = false;
            return QPictureFormatPlugin::savePicture(format, filename, pic);
        } else if (qpictureformatplugin_savepicture_callback != nullptr) {
            return qpictureformatplugin_savepicture_callback(this, format, filename, pic);
        } else {
            return QPictureFormatPlugin::savePicture(format, filename, pic);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool installIOHandler(const QString& format) override {
        return qpictureformatplugin_installiohandler_callback(this, format);
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qpictureformatplugin_event_isbase) {
            qpictureformatplugin_event_isbase = false;
            return QPictureFormatPlugin::event(event);
        } else if (qpictureformatplugin_event_callback != nullptr) {
            return qpictureformatplugin_event_callback(this, event);
        } else {
            return QPictureFormatPlugin::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qpictureformatplugin_eventfilter_isbase) {
            qpictureformatplugin_eventfilter_isbase = false;
            return QPictureFormatPlugin::eventFilter(watched, event);
        } else if (qpictureformatplugin_eventfilter_callback != nullptr) {
            return qpictureformatplugin_eventfilter_callback(this, watched, event);
        } else {
            return QPictureFormatPlugin::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qpictureformatplugin_timerevent_isbase) {
            qpictureformatplugin_timerevent_isbase = false;
            QPictureFormatPlugin::timerEvent(event);
        } else if (qpictureformatplugin_timerevent_callback != nullptr) {
            qpictureformatplugin_timerevent_callback(this, event);
        } else {
            QPictureFormatPlugin::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qpictureformatplugin_childevent_isbase) {
            qpictureformatplugin_childevent_isbase = false;
            QPictureFormatPlugin::childEvent(event);
        } else if (qpictureformatplugin_childevent_callback != nullptr) {
            qpictureformatplugin_childevent_callback(this, event);
        } else {
            QPictureFormatPlugin::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qpictureformatplugin_customevent_isbase) {
            qpictureformatplugin_customevent_isbase = false;
            QPictureFormatPlugin::customEvent(event);
        } else if (qpictureformatplugin_customevent_callback != nullptr) {
            qpictureformatplugin_customevent_callback(this, event);
        } else {
            QPictureFormatPlugin::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qpictureformatplugin_connectnotify_isbase) {
            qpictureformatplugin_connectnotify_isbase = false;
            QPictureFormatPlugin::connectNotify(signal);
        } else if (qpictureformatplugin_connectnotify_callback != nullptr) {
            qpictureformatplugin_connectnotify_callback(this, signal);
        } else {
            QPictureFormatPlugin::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qpictureformatplugin_disconnectnotify_isbase) {
            qpictureformatplugin_disconnectnotify_isbase = false;
            QPictureFormatPlugin::disconnectNotify(signal);
        } else if (qpictureformatplugin_disconnectnotify_callback != nullptr) {
            qpictureformatplugin_disconnectnotify_callback(this, signal);
        } else {
            QPictureFormatPlugin::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qpictureformatplugin_sender_isbase) {
            qpictureformatplugin_sender_isbase = false;
            return QPictureFormatPlugin::sender();
        } else if (qpictureformatplugin_sender_callback != nullptr) {
            return qpictureformatplugin_sender_callback();
        } else {
            return QPictureFormatPlugin::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qpictureformatplugin_sendersignalindex_isbase) {
            qpictureformatplugin_sendersignalindex_isbase = false;
            return QPictureFormatPlugin::senderSignalIndex();
        } else if (qpictureformatplugin_sendersignalindex_callback != nullptr) {
            return qpictureformatplugin_sendersignalindex_callback();
        } else {
            return QPictureFormatPlugin::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qpictureformatplugin_receivers_isbase) {
            qpictureformatplugin_receivers_isbase = false;
            return QPictureFormatPlugin::receivers(signal);
        } else if (qpictureformatplugin_receivers_callback != nullptr) {
            return qpictureformatplugin_receivers_callback(this, signal);
        } else {
            return QPictureFormatPlugin::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qpictureformatplugin_issignalconnected_isbase) {
            qpictureformatplugin_issignalconnected_isbase = false;
            return QPictureFormatPlugin::isSignalConnected(signal);
        } else if (qpictureformatplugin_issignalconnected_callback != nullptr) {
            return qpictureformatplugin_issignalconnected_callback(this, signal);
        } else {
            return QPictureFormatPlugin::isSignalConnected(signal);
        }
    }
};

#endif
