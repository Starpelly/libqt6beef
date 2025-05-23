#pragma once
#ifndef SRC_QTC_LIBVIRTUALQCOREEVENT_H
#define SRC_QTC_LIBVIRTUALQCOREEVENT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

// This class is a subclass of QEvent so that we can call protected methods
class VirtualQEvent : public QEvent {

  public:
    // Virtual class public types (including callbacks)
    using QEvent_SetAccepted_Callback = void (*)(QEvent*, bool);
    using QEvent_Clone_Callback = QEvent* (*)();

  protected:
    // Instance callback storage
    QEvent_SetAccepted_Callback qevent_setaccepted_callback = nullptr;
    QEvent_Clone_Callback qevent_clone_callback = nullptr;

    // Instance base flags
    mutable bool qevent_setaccepted_isbase = false;
    mutable bool qevent_clone_isbase = false;

  public:
    VirtualQEvent(QEvent::Type typeVal) : QEvent(typeVal){};

    ~VirtualQEvent() {
        qevent_setaccepted_callback = nullptr;
        qevent_clone_callback = nullptr;
    }

    // Callback setters
    void setQEvent_SetAccepted_Callback(QEvent_SetAccepted_Callback cb) { qevent_setaccepted_callback = cb; }
    void setQEvent_Clone_Callback(QEvent_Clone_Callback cb) { qevent_clone_callback = cb; }

    // Base flag setters
    void setQEvent_SetAccepted_IsBase(bool value) const { qevent_setaccepted_isbase = value; }
    void setQEvent_Clone_IsBase(bool value) const { qevent_clone_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual void setAccepted(bool accepted) override {
        if (qevent_setaccepted_isbase) {
            qevent_setaccepted_isbase = false;
            QEvent::setAccepted(accepted);
        } else if (qevent_setaccepted_callback != nullptr) {
            qevent_setaccepted_callback(this, accepted);
        } else {
            QEvent::setAccepted(accepted);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QEvent* clone() const override {
        if (qevent_clone_isbase) {
            qevent_clone_isbase = false;
            return QEvent::clone();
        } else if (qevent_clone_callback != nullptr) {
            return qevent_clone_callback();
        } else {
            return QEvent::clone();
        }
    }
};

// This class is a subclass of QTimerEvent so that we can call protected methods
class VirtualQTimerEvent : public QTimerEvent {

  public:
    // Virtual class public types (including callbacks)
    using QTimerEvent_Clone_Callback = QTimerEvent* (*)();
    using QTimerEvent_SetAccepted_Callback = void (*)(QTimerEvent*, bool);

  protected:
    // Instance callback storage
    QTimerEvent_Clone_Callback qtimerevent_clone_callback = nullptr;
    QTimerEvent_SetAccepted_Callback qtimerevent_setaccepted_callback = nullptr;

    // Instance base flags
    mutable bool qtimerevent_clone_isbase = false;
    mutable bool qtimerevent_setaccepted_isbase = false;

  public:
    VirtualQTimerEvent(int timerId) : QTimerEvent(timerId){};

    ~VirtualQTimerEvent() {
        qtimerevent_clone_callback = nullptr;
        qtimerevent_setaccepted_callback = nullptr;
    }

    // Callback setters
    void setQTimerEvent_Clone_Callback(QTimerEvent_Clone_Callback cb) { qtimerevent_clone_callback = cb; }
    void setQTimerEvent_SetAccepted_Callback(QTimerEvent_SetAccepted_Callback cb) { qtimerevent_setaccepted_callback = cb; }

    // Base flag setters
    void setQTimerEvent_Clone_IsBase(bool value) const { qtimerevent_clone_isbase = value; }
    void setQTimerEvent_SetAccepted_IsBase(bool value) const { qtimerevent_setaccepted_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual QTimerEvent* clone() const override {
        if (qtimerevent_clone_isbase) {
            qtimerevent_clone_isbase = false;
            return QTimerEvent::clone();
        } else if (qtimerevent_clone_callback != nullptr) {
            return qtimerevent_clone_callback();
        } else {
            return QTimerEvent::clone();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void setAccepted(bool accepted) override {
        if (qtimerevent_setaccepted_isbase) {
            qtimerevent_setaccepted_isbase = false;
            QTimerEvent::setAccepted(accepted);
        } else if (qtimerevent_setaccepted_callback != nullptr) {
            qtimerevent_setaccepted_callback(this, accepted);
        } else {
            QTimerEvent::setAccepted(accepted);
        }
    }
};

// This class is a subclass of QChildEvent so that we can call protected methods
class VirtualQChildEvent : public QChildEvent {

  public:
    // Virtual class public types (including callbacks)
    using QChildEvent_Clone_Callback = QChildEvent* (*)();
    using QChildEvent_SetAccepted_Callback = void (*)(QChildEvent*, bool);

  protected:
    // Instance callback storage
    QChildEvent_Clone_Callback qchildevent_clone_callback = nullptr;
    QChildEvent_SetAccepted_Callback qchildevent_setaccepted_callback = nullptr;

    // Instance base flags
    mutable bool qchildevent_clone_isbase = false;
    mutable bool qchildevent_setaccepted_isbase = false;

  public:
    VirtualQChildEvent(QEvent::Type typeVal, QObject* child) : QChildEvent(typeVal, child){};

    ~VirtualQChildEvent() {
        qchildevent_clone_callback = nullptr;
        qchildevent_setaccepted_callback = nullptr;
    }

    // Callback setters
    void setQChildEvent_Clone_Callback(QChildEvent_Clone_Callback cb) { qchildevent_clone_callback = cb; }
    void setQChildEvent_SetAccepted_Callback(QChildEvent_SetAccepted_Callback cb) { qchildevent_setaccepted_callback = cb; }

    // Base flag setters
    void setQChildEvent_Clone_IsBase(bool value) const { qchildevent_clone_isbase = value; }
    void setQChildEvent_SetAccepted_IsBase(bool value) const { qchildevent_setaccepted_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual QChildEvent* clone() const override {
        if (qchildevent_clone_isbase) {
            qchildevent_clone_isbase = false;
            return QChildEvent::clone();
        } else if (qchildevent_clone_callback != nullptr) {
            return qchildevent_clone_callback();
        } else {
            return QChildEvent::clone();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void setAccepted(bool accepted) override {
        if (qchildevent_setaccepted_isbase) {
            qchildevent_setaccepted_isbase = false;
            QChildEvent::setAccepted(accepted);
        } else if (qchildevent_setaccepted_callback != nullptr) {
            qchildevent_setaccepted_callback(this, accepted);
        } else {
            QChildEvent::setAccepted(accepted);
        }
    }
};

// This class is a subclass of QDynamicPropertyChangeEvent so that we can call protected methods
class VirtualQDynamicPropertyChangeEvent : public QDynamicPropertyChangeEvent {

  public:
    // Virtual class public types (including callbacks)
    using QDynamicPropertyChangeEvent_Clone_Callback = QDynamicPropertyChangeEvent* (*)();
    using QDynamicPropertyChangeEvent_SetAccepted_Callback = void (*)(QDynamicPropertyChangeEvent*, bool);

  protected:
    // Instance callback storage
    QDynamicPropertyChangeEvent_Clone_Callback qdynamicpropertychangeevent_clone_callback = nullptr;
    QDynamicPropertyChangeEvent_SetAccepted_Callback qdynamicpropertychangeevent_setaccepted_callback = nullptr;

    // Instance base flags
    mutable bool qdynamicpropertychangeevent_clone_isbase = false;
    mutable bool qdynamicpropertychangeevent_setaccepted_isbase = false;

  public:
    VirtualQDynamicPropertyChangeEvent(const QByteArray& name) : QDynamicPropertyChangeEvent(name){};

    ~VirtualQDynamicPropertyChangeEvent() {
        qdynamicpropertychangeevent_clone_callback = nullptr;
        qdynamicpropertychangeevent_setaccepted_callback = nullptr;
    }

    // Callback setters
    void setQDynamicPropertyChangeEvent_Clone_Callback(QDynamicPropertyChangeEvent_Clone_Callback cb) { qdynamicpropertychangeevent_clone_callback = cb; }
    void setQDynamicPropertyChangeEvent_SetAccepted_Callback(QDynamicPropertyChangeEvent_SetAccepted_Callback cb) { qdynamicpropertychangeevent_setaccepted_callback = cb; }

    // Base flag setters
    void setQDynamicPropertyChangeEvent_Clone_IsBase(bool value) const { qdynamicpropertychangeevent_clone_isbase = value; }
    void setQDynamicPropertyChangeEvent_SetAccepted_IsBase(bool value) const { qdynamicpropertychangeevent_setaccepted_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual QDynamicPropertyChangeEvent* clone() const override {
        if (qdynamicpropertychangeevent_clone_isbase) {
            qdynamicpropertychangeevent_clone_isbase = false;
            return QDynamicPropertyChangeEvent::clone();
        } else if (qdynamicpropertychangeevent_clone_callback != nullptr) {
            return qdynamicpropertychangeevent_clone_callback();
        } else {
            return QDynamicPropertyChangeEvent::clone();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void setAccepted(bool accepted) override {
        if (qdynamicpropertychangeevent_setaccepted_isbase) {
            qdynamicpropertychangeevent_setaccepted_isbase = false;
            QDynamicPropertyChangeEvent::setAccepted(accepted);
        } else if (qdynamicpropertychangeevent_setaccepted_callback != nullptr) {
            qdynamicpropertychangeevent_setaccepted_callback(this, accepted);
        } else {
            QDynamicPropertyChangeEvent::setAccepted(accepted);
        }
    }
};

#endif
