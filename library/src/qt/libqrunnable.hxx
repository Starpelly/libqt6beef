#pragma once
#ifndef SRC_QTC_LIBVIRTUALQRUNNABLE_H
#define SRC_QTC_LIBVIRTUALQRUNNABLE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

// This class is a subclass of QRunnable so that we can call protected methods
class VirtualQRunnable : public QRunnable {

  public:
    // Virtual class public types (including callbacks)
    using QRunnable_Run_Callback = void (*)();

  protected:
    // Instance callback storage
    QRunnable_Run_Callback qrunnable_run_callback = nullptr;

    // Instance base flags
    mutable bool qrunnable_run_isbase = false;

  public:
    VirtualQRunnable() : QRunnable(){};

    ~VirtualQRunnable() {
        qrunnable_run_callback = nullptr;
    }

    // Callback setters
    void setQRunnable_Run_Callback(QRunnable_Run_Callback cb) { qrunnable_run_callback = cb; }

    // Base flag setters
    void setQRunnable_Run_IsBase(bool value) const { qrunnable_run_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual void run() override {
        qrunnable_run_callback();
    }
};

#endif
