#pragma once
#ifndef SRC_MULTIMEDIAC_LIBVIRTUALQABSTRACTVIDEOSURFACE_H
#define SRC_MULTIMEDIAC_LIBVIRTUALQABSTRACTVIDEOSURFACE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QAbstractVideoSurface so that we can call protected methods
class VirtualQAbstractVideoSurface : public QAbstractVideoSurface {

  public:
    // Virtual class public types (including callbacks)
    using QAbstractVideoSurface_Metacall_Callback = int (*)(QAbstractVideoSurface*, QMetaObject::Call, int, void**);
    using QAbstractVideoSurface_SupportedPixelFormats_Callback = QList<QVideoFrame::PixelFormat> (*)(const QAbstractVideoSurface*, QAbstractVideoBuffer::HandleType);
    using QAbstractVideoSurface_IsFormatSupported_Callback = bool (*)(const QAbstractVideoSurface*, const QVideoSurfaceFormat&);
    using QAbstractVideoSurface_NearestFormat_Callback = QVideoSurfaceFormat (*)(const QAbstractVideoSurface*, const QVideoSurfaceFormat&);
    using QAbstractVideoSurface_Start_Callback = bool (*)(QAbstractVideoSurface*, const QVideoSurfaceFormat&);
    using QAbstractVideoSurface_Stop_Callback = void (*)();
    using QAbstractVideoSurface_Present_Callback = bool (*)(QAbstractVideoSurface*, const QVideoFrame&);
    using QAbstractVideoSurface_Event_Callback = bool (*)(QAbstractVideoSurface*, QEvent*);
    using QAbstractVideoSurface_EventFilter_Callback = bool (*)(QAbstractVideoSurface*, QObject*, QEvent*);
    using QAbstractVideoSurface_TimerEvent_Callback = void (*)(QAbstractVideoSurface*, QTimerEvent*);
    using QAbstractVideoSurface_ChildEvent_Callback = void (*)(QAbstractVideoSurface*, QChildEvent*);
    using QAbstractVideoSurface_CustomEvent_Callback = void (*)(QAbstractVideoSurface*, QEvent*);
    using QAbstractVideoSurface_ConnectNotify_Callback = void (*)(QAbstractVideoSurface*, const QMetaMethod&);
    using QAbstractVideoSurface_DisconnectNotify_Callback = void (*)(QAbstractVideoSurface*, const QMetaMethod&);
    using QAbstractVideoSurface_SetError_Callback = void (*)(QAbstractVideoSurface*, QAbstractVideoSurface::Error);
    using QAbstractVideoSurface_SetNativeResolution_Callback = void (*)(QAbstractVideoSurface*, const QSize&);
    using QAbstractVideoSurface_Sender_Callback = QObject* (*)();
    using QAbstractVideoSurface_SenderSignalIndex_Callback = int (*)();
    using QAbstractVideoSurface_Receivers_Callback = int (*)(const QAbstractVideoSurface*, const char*);
    using QAbstractVideoSurface_IsSignalConnected_Callback = bool (*)(const QAbstractVideoSurface*, const QMetaMethod&);

  protected:
    // Instance callback storage
    QAbstractVideoSurface_Metacall_Callback qabstractvideosurface_metacall_callback = nullptr;
    QAbstractVideoSurface_SupportedPixelFormats_Callback qabstractvideosurface_supportedpixelformats_callback = nullptr;
    QAbstractVideoSurface_IsFormatSupported_Callback qabstractvideosurface_isformatsupported_callback = nullptr;
    QAbstractVideoSurface_NearestFormat_Callback qabstractvideosurface_nearestformat_callback = nullptr;
    QAbstractVideoSurface_Start_Callback qabstractvideosurface_start_callback = nullptr;
    QAbstractVideoSurface_Stop_Callback qabstractvideosurface_stop_callback = nullptr;
    QAbstractVideoSurface_Present_Callback qabstractvideosurface_present_callback = nullptr;
    QAbstractVideoSurface_Event_Callback qabstractvideosurface_event_callback = nullptr;
    QAbstractVideoSurface_EventFilter_Callback qabstractvideosurface_eventfilter_callback = nullptr;
    QAbstractVideoSurface_TimerEvent_Callback qabstractvideosurface_timerevent_callback = nullptr;
    QAbstractVideoSurface_ChildEvent_Callback qabstractvideosurface_childevent_callback = nullptr;
    QAbstractVideoSurface_CustomEvent_Callback qabstractvideosurface_customevent_callback = nullptr;
    QAbstractVideoSurface_ConnectNotify_Callback qabstractvideosurface_connectnotify_callback = nullptr;
    QAbstractVideoSurface_DisconnectNotify_Callback qabstractvideosurface_disconnectnotify_callback = nullptr;
    QAbstractVideoSurface_SetError_Callback qabstractvideosurface_seterror_callback = nullptr;
    QAbstractVideoSurface_SetNativeResolution_Callback qabstractvideosurface_setnativeresolution_callback = nullptr;
    QAbstractVideoSurface_Sender_Callback qabstractvideosurface_sender_callback = nullptr;
    QAbstractVideoSurface_SenderSignalIndex_Callback qabstractvideosurface_sendersignalindex_callback = nullptr;
    QAbstractVideoSurface_Receivers_Callback qabstractvideosurface_receivers_callback = nullptr;
    QAbstractVideoSurface_IsSignalConnected_Callback qabstractvideosurface_issignalconnected_callback = nullptr;

    // Instance base flags
    mutable bool qabstractvideosurface_metacall_isbase = false;
    mutable bool qabstractvideosurface_supportedpixelformats_isbase = false;
    mutable bool qabstractvideosurface_isformatsupported_isbase = false;
    mutable bool qabstractvideosurface_nearestformat_isbase = false;
    mutable bool qabstractvideosurface_start_isbase = false;
    mutable bool qabstractvideosurface_stop_isbase = false;
    mutable bool qabstractvideosurface_present_isbase = false;
    mutable bool qabstractvideosurface_event_isbase = false;
    mutable bool qabstractvideosurface_eventfilter_isbase = false;
    mutable bool qabstractvideosurface_timerevent_isbase = false;
    mutable bool qabstractvideosurface_childevent_isbase = false;
    mutable bool qabstractvideosurface_customevent_isbase = false;
    mutable bool qabstractvideosurface_connectnotify_isbase = false;
    mutable bool qabstractvideosurface_disconnectnotify_isbase = false;
    mutable bool qabstractvideosurface_seterror_isbase = false;
    mutable bool qabstractvideosurface_setnativeresolution_isbase = false;
    mutable bool qabstractvideosurface_sender_isbase = false;
    mutable bool qabstractvideosurface_sendersignalindex_isbase = false;
    mutable bool qabstractvideosurface_receivers_isbase = false;
    mutable bool qabstractvideosurface_issignalconnected_isbase = false;

  public:
    VirtualQAbstractVideoSurface() : QAbstractVideoSurface(){};
    VirtualQAbstractVideoSurface(QObject* parent) : QAbstractVideoSurface(parent){};

    ~VirtualQAbstractVideoSurface() {
        qabstractvideosurface_metacall_callback = nullptr;
        qabstractvideosurface_supportedpixelformats_callback = nullptr;
        qabstractvideosurface_isformatsupported_callback = nullptr;
        qabstractvideosurface_nearestformat_callback = nullptr;
        qabstractvideosurface_start_callback = nullptr;
        qabstractvideosurface_stop_callback = nullptr;
        qabstractvideosurface_present_callback = nullptr;
        qabstractvideosurface_event_callback = nullptr;
        qabstractvideosurface_eventfilter_callback = nullptr;
        qabstractvideosurface_timerevent_callback = nullptr;
        qabstractvideosurface_childevent_callback = nullptr;
        qabstractvideosurface_customevent_callback = nullptr;
        qabstractvideosurface_connectnotify_callback = nullptr;
        qabstractvideosurface_disconnectnotify_callback = nullptr;
        qabstractvideosurface_seterror_callback = nullptr;
        qabstractvideosurface_setnativeresolution_callback = nullptr;
        qabstractvideosurface_sender_callback = nullptr;
        qabstractvideosurface_sendersignalindex_callback = nullptr;
        qabstractvideosurface_receivers_callback = nullptr;
        qabstractvideosurface_issignalconnected_callback = nullptr;
    }

    // Callback setters
    void setQAbstractVideoSurface_Metacall_Callback(QAbstractVideoSurface_Metacall_Callback cb) { qabstractvideosurface_metacall_callback = cb; }
    void setQAbstractVideoSurface_SupportedPixelFormats_Callback(QAbstractVideoSurface_SupportedPixelFormats_Callback cb) { qabstractvideosurface_supportedpixelformats_callback = cb; }
    void setQAbstractVideoSurface_IsFormatSupported_Callback(QAbstractVideoSurface_IsFormatSupported_Callback cb) { qabstractvideosurface_isformatsupported_callback = cb; }
    void setQAbstractVideoSurface_NearestFormat_Callback(QAbstractVideoSurface_NearestFormat_Callback cb) { qabstractvideosurface_nearestformat_callback = cb; }
    void setQAbstractVideoSurface_Start_Callback(QAbstractVideoSurface_Start_Callback cb) { qabstractvideosurface_start_callback = cb; }
    void setQAbstractVideoSurface_Stop_Callback(QAbstractVideoSurface_Stop_Callback cb) { qabstractvideosurface_stop_callback = cb; }
    void setQAbstractVideoSurface_Present_Callback(QAbstractVideoSurface_Present_Callback cb) { qabstractvideosurface_present_callback = cb; }
    void setQAbstractVideoSurface_Event_Callback(QAbstractVideoSurface_Event_Callback cb) { qabstractvideosurface_event_callback = cb; }
    void setQAbstractVideoSurface_EventFilter_Callback(QAbstractVideoSurface_EventFilter_Callback cb) { qabstractvideosurface_eventfilter_callback = cb; }
    void setQAbstractVideoSurface_TimerEvent_Callback(QAbstractVideoSurface_TimerEvent_Callback cb) { qabstractvideosurface_timerevent_callback = cb; }
    void setQAbstractVideoSurface_ChildEvent_Callback(QAbstractVideoSurface_ChildEvent_Callback cb) { qabstractvideosurface_childevent_callback = cb; }
    void setQAbstractVideoSurface_CustomEvent_Callback(QAbstractVideoSurface_CustomEvent_Callback cb) { qabstractvideosurface_customevent_callback = cb; }
    void setQAbstractVideoSurface_ConnectNotify_Callback(QAbstractVideoSurface_ConnectNotify_Callback cb) { qabstractvideosurface_connectnotify_callback = cb; }
    void setQAbstractVideoSurface_DisconnectNotify_Callback(QAbstractVideoSurface_DisconnectNotify_Callback cb) { qabstractvideosurface_disconnectnotify_callback = cb; }
    void setQAbstractVideoSurface_SetError_Callback(QAbstractVideoSurface_SetError_Callback cb) { qabstractvideosurface_seterror_callback = cb; }
    void setQAbstractVideoSurface_SetNativeResolution_Callback(QAbstractVideoSurface_SetNativeResolution_Callback cb) { qabstractvideosurface_setnativeresolution_callback = cb; }
    void setQAbstractVideoSurface_Sender_Callback(QAbstractVideoSurface_Sender_Callback cb) { qabstractvideosurface_sender_callback = cb; }
    void setQAbstractVideoSurface_SenderSignalIndex_Callback(QAbstractVideoSurface_SenderSignalIndex_Callback cb) { qabstractvideosurface_sendersignalindex_callback = cb; }
    void setQAbstractVideoSurface_Receivers_Callback(QAbstractVideoSurface_Receivers_Callback cb) { qabstractvideosurface_receivers_callback = cb; }
    void setQAbstractVideoSurface_IsSignalConnected_Callback(QAbstractVideoSurface_IsSignalConnected_Callback cb) { qabstractvideosurface_issignalconnected_callback = cb; }

    // Base flag setters
    void setQAbstractVideoSurface_Metacall_IsBase(bool value) const { qabstractvideosurface_metacall_isbase = value; }
    void setQAbstractVideoSurface_SupportedPixelFormats_IsBase(bool value) const { qabstractvideosurface_supportedpixelformats_isbase = value; }
    void setQAbstractVideoSurface_IsFormatSupported_IsBase(bool value) const { qabstractvideosurface_isformatsupported_isbase = value; }
    void setQAbstractVideoSurface_NearestFormat_IsBase(bool value) const { qabstractvideosurface_nearestformat_isbase = value; }
    void setQAbstractVideoSurface_Start_IsBase(bool value) const { qabstractvideosurface_start_isbase = value; }
    void setQAbstractVideoSurface_Stop_IsBase(bool value) const { qabstractvideosurface_stop_isbase = value; }
    void setQAbstractVideoSurface_Present_IsBase(bool value) const { qabstractvideosurface_present_isbase = value; }
    void setQAbstractVideoSurface_Event_IsBase(bool value) const { qabstractvideosurface_event_isbase = value; }
    void setQAbstractVideoSurface_EventFilter_IsBase(bool value) const { qabstractvideosurface_eventfilter_isbase = value; }
    void setQAbstractVideoSurface_TimerEvent_IsBase(bool value) const { qabstractvideosurface_timerevent_isbase = value; }
    void setQAbstractVideoSurface_ChildEvent_IsBase(bool value) const { qabstractvideosurface_childevent_isbase = value; }
    void setQAbstractVideoSurface_CustomEvent_IsBase(bool value) const { qabstractvideosurface_customevent_isbase = value; }
    void setQAbstractVideoSurface_ConnectNotify_IsBase(bool value) const { qabstractvideosurface_connectnotify_isbase = value; }
    void setQAbstractVideoSurface_DisconnectNotify_IsBase(bool value) const { qabstractvideosurface_disconnectnotify_isbase = value; }
    void setQAbstractVideoSurface_SetError_IsBase(bool value) const { qabstractvideosurface_seterror_isbase = value; }
    void setQAbstractVideoSurface_SetNativeResolution_IsBase(bool value) const { qabstractvideosurface_setnativeresolution_isbase = value; }
    void setQAbstractVideoSurface_Sender_IsBase(bool value) const { qabstractvideosurface_sender_isbase = value; }
    void setQAbstractVideoSurface_SenderSignalIndex_IsBase(bool value) const { qabstractvideosurface_sendersignalindex_isbase = value; }
    void setQAbstractVideoSurface_Receivers_IsBase(bool value) const { qabstractvideosurface_receivers_isbase = value; }
    void setQAbstractVideoSurface_IsSignalConnected_IsBase(bool value) const { qabstractvideosurface_issignalconnected_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
        if (qabstractvideosurface_metacall_isbase) {
            qabstractvideosurface_metacall_isbase = false;
            return QAbstractVideoSurface::qt_metacall(param1, param2, param3);
        } else if (qabstractvideosurface_metacall_callback != nullptr) {
            return qabstractvideosurface_metacall_callback(this, param1, param2, param3);
        } else {
            return QAbstractVideoSurface::qt_metacall(param1, param2, param3);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QList<QVideoFrame::PixelFormat> supportedPixelFormats(QAbstractVideoBuffer::HandleType typeVal) const override {
        return qabstractvideosurface_supportedpixelformats_callback(this, typeVal);
    }

    // Virtual method for C ABI access and custom callback
    virtual bool isFormatSupported(const QVideoSurfaceFormat& format) const override {
        if (qabstractvideosurface_isformatsupported_isbase) {
            qabstractvideosurface_isformatsupported_isbase = false;
            return QAbstractVideoSurface::isFormatSupported(format);
        } else if (qabstractvideosurface_isformatsupported_callback != nullptr) {
            return qabstractvideosurface_isformatsupported_callback(this, format);
        } else {
            return QAbstractVideoSurface::isFormatSupported(format);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QVideoSurfaceFormat nearestFormat(const QVideoSurfaceFormat& format) const override {
        if (qabstractvideosurface_nearestformat_isbase) {
            qabstractvideosurface_nearestformat_isbase = false;
            return QAbstractVideoSurface::nearestFormat(format);
        } else if (qabstractvideosurface_nearestformat_callback != nullptr) {
            return qabstractvideosurface_nearestformat_callback(this, format);
        } else {
            return QAbstractVideoSurface::nearestFormat(format);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool start(const QVideoSurfaceFormat& format) override {
        if (qabstractvideosurface_start_isbase) {
            qabstractvideosurface_start_isbase = false;
            return QAbstractVideoSurface::start(format);
        } else if (qabstractvideosurface_start_callback != nullptr) {
            return qabstractvideosurface_start_callback(this, format);
        } else {
            return QAbstractVideoSurface::start(format);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void stop() override {
        if (qabstractvideosurface_stop_isbase) {
            qabstractvideosurface_stop_isbase = false;
            QAbstractVideoSurface::stop();
        } else if (qabstractvideosurface_stop_callback != nullptr) {
            qabstractvideosurface_stop_callback();
        } else {
            QAbstractVideoSurface::stop();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool present(const QVideoFrame& frame) override {
        return qabstractvideosurface_present_callback(this, frame);
    }

    // Virtual method for C ABI access and custom callback
    virtual bool event(QEvent* event) override {
        if (qabstractvideosurface_event_isbase) {
            qabstractvideosurface_event_isbase = false;
            return QAbstractVideoSurface::event(event);
        } else if (qabstractvideosurface_event_callback != nullptr) {
            return qabstractvideosurface_event_callback(this, event);
        } else {
            return QAbstractVideoSurface::event(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool eventFilter(QObject* watched, QEvent* event) override {
        if (qabstractvideosurface_eventfilter_isbase) {
            qabstractvideosurface_eventfilter_isbase = false;
            return QAbstractVideoSurface::eventFilter(watched, event);
        } else if (qabstractvideosurface_eventfilter_callback != nullptr) {
            return qabstractvideosurface_eventfilter_callback(this, watched, event);
        } else {
            return QAbstractVideoSurface::eventFilter(watched, event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void timerEvent(QTimerEvent* event) override {
        if (qabstractvideosurface_timerevent_isbase) {
            qabstractvideosurface_timerevent_isbase = false;
            QAbstractVideoSurface::timerEvent(event);
        } else if (qabstractvideosurface_timerevent_callback != nullptr) {
            qabstractvideosurface_timerevent_callback(this, event);
        } else {
            QAbstractVideoSurface::timerEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void childEvent(QChildEvent* event) override {
        if (qabstractvideosurface_childevent_isbase) {
            qabstractvideosurface_childevent_isbase = false;
            QAbstractVideoSurface::childEvent(event);
        } else if (qabstractvideosurface_childevent_callback != nullptr) {
            qabstractvideosurface_childevent_callback(this, event);
        } else {
            QAbstractVideoSurface::childEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void customEvent(QEvent* event) override {
        if (qabstractvideosurface_customevent_isbase) {
            qabstractvideosurface_customevent_isbase = false;
            QAbstractVideoSurface::customEvent(event);
        } else if (qabstractvideosurface_customevent_callback != nullptr) {
            qabstractvideosurface_customevent_callback(this, event);
        } else {
            QAbstractVideoSurface::customEvent(event);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void connectNotify(const QMetaMethod& signal) override {
        if (qabstractvideosurface_connectnotify_isbase) {
            qabstractvideosurface_connectnotify_isbase = false;
            QAbstractVideoSurface::connectNotify(signal);
        } else if (qabstractvideosurface_connectnotify_callback != nullptr) {
            qabstractvideosurface_connectnotify_callback(this, signal);
        } else {
            QAbstractVideoSurface::connectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void disconnectNotify(const QMetaMethod& signal) override {
        if (qabstractvideosurface_disconnectnotify_isbase) {
            qabstractvideosurface_disconnectnotify_isbase = false;
            QAbstractVideoSurface::disconnectNotify(signal);
        } else if (qabstractvideosurface_disconnectnotify_callback != nullptr) {
            qabstractvideosurface_disconnectnotify_callback(this, signal);
        } else {
            QAbstractVideoSurface::disconnectNotify(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    void setError(QAbstractVideoSurface::Error errorVal) {
        if (qabstractvideosurface_seterror_isbase) {
            qabstractvideosurface_seterror_isbase = false;
            QAbstractVideoSurface::setError(errorVal);
        } else if (qabstractvideosurface_seterror_callback != nullptr) {
            qabstractvideosurface_seterror_callback(this, errorVal);
        } else {
            QAbstractVideoSurface::setError(errorVal);
        }
    }

    // Virtual method for C ABI access and custom callback
    void setNativeResolution(const QSize& resolution) {
        if (qabstractvideosurface_setnativeresolution_isbase) {
            qabstractvideosurface_setnativeresolution_isbase = false;
            QAbstractVideoSurface::setNativeResolution(resolution);
        } else if (qabstractvideosurface_setnativeresolution_callback != nullptr) {
            qabstractvideosurface_setnativeresolution_callback(this, resolution);
        } else {
            QAbstractVideoSurface::setNativeResolution(resolution);
        }
    }

    // Virtual method for C ABI access and custom callback
    QObject* sender() const {
        if (qabstractvideosurface_sender_isbase) {
            qabstractvideosurface_sender_isbase = false;
            return QAbstractVideoSurface::sender();
        } else if (qabstractvideosurface_sender_callback != nullptr) {
            return qabstractvideosurface_sender_callback();
        } else {
            return QAbstractVideoSurface::sender();
        }
    }

    // Virtual method for C ABI access and custom callback
    int senderSignalIndex() const {
        if (qabstractvideosurface_sendersignalindex_isbase) {
            qabstractvideosurface_sendersignalindex_isbase = false;
            return QAbstractVideoSurface::senderSignalIndex();
        } else if (qabstractvideosurface_sendersignalindex_callback != nullptr) {
            return qabstractvideosurface_sendersignalindex_callback();
        } else {
            return QAbstractVideoSurface::senderSignalIndex();
        }
    }

    // Virtual method for C ABI access and custom callback
    int receivers(const char* signal) const {
        if (qabstractvideosurface_receivers_isbase) {
            qabstractvideosurface_receivers_isbase = false;
            return QAbstractVideoSurface::receivers(signal);
        } else if (qabstractvideosurface_receivers_callback != nullptr) {
            return qabstractvideosurface_receivers_callback(this, signal);
        } else {
            return QAbstractVideoSurface::receivers(signal);
        }
    }

    // Virtual method for C ABI access and custom callback
    bool isSignalConnected(const QMetaMethod& signal) const {
        if (qabstractvideosurface_issignalconnected_isbase) {
            qabstractvideosurface_issignalconnected_isbase = false;
            return QAbstractVideoSurface::isSignalConnected(signal);
        } else if (qabstractvideosurface_issignalconnected_callback != nullptr) {
            return qabstractvideosurface_issignalconnected_callback(this, signal);
        } else {
            return QAbstractVideoSurface::isSignalConnected(signal);
        }
    }
};

#endif
