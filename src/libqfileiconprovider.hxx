#pragma once
#ifndef SRCC_LIBVIRTUALQFILEICONPROVIDER_H
#define SRCC_LIBVIRTUALQFILEICONPROVIDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

// This class is a subclass of QFileIconProvider so that we can call protected methods
class VirtualQFileIconProvider : public QFileIconProvider {

  public:
    // Virtual class public types (including callbacks)
    using QFileIconProvider_Icon_Callback = QIcon (*)(const QFileIconProvider*, QFileIconProvider::IconType);
    using QFileIconProvider_IconWithInfo_Callback = QIcon (*)(const QFileIconProvider*, const QFileInfo&);
    using QFileIconProvider_Type_Callback = QString (*)(const QFileIconProvider*, const QFileInfo&);

  protected:
    // Instance callback storage
    QFileIconProvider_Icon_Callback qfileiconprovider_icon_callback = nullptr;
    QFileIconProvider_IconWithInfo_Callback qfileiconprovider_iconwithinfo_callback = nullptr;
    QFileIconProvider_Type_Callback qfileiconprovider_type_callback = nullptr;

    // Instance base flags
    mutable bool qfileiconprovider_icon_isbase = false;
    mutable bool qfileiconprovider_iconwithinfo_isbase = false;
    mutable bool qfileiconprovider_type_isbase = false;

  public:
    VirtualQFileIconProvider() : QFileIconProvider(){};

    ~VirtualQFileIconProvider() {
        qfileiconprovider_icon_callback = nullptr;
        qfileiconprovider_iconwithinfo_callback = nullptr;
        qfileiconprovider_type_callback = nullptr;
    }

    // Callback setters
    void setQFileIconProvider_Icon_Callback(QFileIconProvider_Icon_Callback cb) { qfileiconprovider_icon_callback = cb; }
    void setQFileIconProvider_IconWithInfo_Callback(QFileIconProvider_IconWithInfo_Callback cb) { qfileiconprovider_iconwithinfo_callback = cb; }
    void setQFileIconProvider_Type_Callback(QFileIconProvider_Type_Callback cb) { qfileiconprovider_type_callback = cb; }

    // Base flag setters
    void setQFileIconProvider_Icon_IsBase(bool value) const { qfileiconprovider_icon_isbase = value; }
    void setQFileIconProvider_IconWithInfo_IsBase(bool value) const { qfileiconprovider_iconwithinfo_isbase = value; }
    void setQFileIconProvider_Type_IsBase(bool value) const { qfileiconprovider_type_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual QIcon icon(QFileIconProvider::IconType typeVal) const override {
        if (qfileiconprovider_icon_isbase) {
            qfileiconprovider_icon_isbase = false;
            return QFileIconProvider::icon(typeVal);
        } else if (qfileiconprovider_icon_callback != nullptr) {
            return qfileiconprovider_icon_callback(this, typeVal);
        } else {
            return QFileIconProvider::icon(typeVal);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QIcon icon(const QFileInfo& info) const override {
        if (qfileiconprovider_iconwithinfo_isbase) {
            qfileiconprovider_iconwithinfo_isbase = false;
            return QFileIconProvider::icon(info);
        } else if (qfileiconprovider_iconwithinfo_callback != nullptr) {
            return qfileiconprovider_iconwithinfo_callback(this, info);
        } else {
            return QFileIconProvider::icon(info);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QString type(const QFileInfo& info) const override {
        if (qfileiconprovider_type_isbase) {
            qfileiconprovider_type_isbase = false;
            return QFileIconProvider::type(info);
        } else if (qfileiconprovider_type_callback != nullptr) {
            return qfileiconprovider_type_callback(this, info);
        } else {
            return QFileIconProvider::type(info);
        }
    }
};

#endif
