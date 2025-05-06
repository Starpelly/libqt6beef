#pragma once
#ifndef SRC_MULTIMEDIAC_LIBVIRTUALQABSTRACTVIDEOBUFFER_H
#define SRC_MULTIMEDIAC_LIBVIRTUALQABSTRACTVIDEOBUFFER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QAbstractVideoBuffer so that we can call protected methods
class VirtualQAbstractVideoBuffer : public QAbstractVideoBuffer {

  public:
    // Virtual class public types (including callbacks)
    using QAbstractVideoBuffer_Release_Callback = void (*)();
    using QAbstractVideoBuffer_MapMode_Callback = QAbstractVideoBuffer::MapMode (*)();
    using QAbstractVideoBuffer_Unmap_Callback = void (*)();
    using QAbstractVideoBuffer_Handle_Callback = QVariant (*)();

  protected:
    // Instance callback storage
    QAbstractVideoBuffer_Release_Callback qabstractvideobuffer_release_callback = nullptr;
    QAbstractVideoBuffer_MapMode_Callback qabstractvideobuffer_mapmode_callback = nullptr;
    QAbstractVideoBuffer_Unmap_Callback qabstractvideobuffer_unmap_callback = nullptr;
    QAbstractVideoBuffer_Handle_Callback qabstractvideobuffer_handle_callback = nullptr;

    // Instance base flags
    mutable bool qabstractvideobuffer_release_isbase = false;
    mutable bool qabstractvideobuffer_mapmode_isbase = false;
    mutable bool qabstractvideobuffer_unmap_isbase = false;
    mutable bool qabstractvideobuffer_handle_isbase = false;

  public:
    VirtualQAbstractVideoBuffer(QAbstractVideoBuffer::HandleType typeVal) : QAbstractVideoBuffer(typeVal){};

    ~VirtualQAbstractVideoBuffer() {
        qabstractvideobuffer_release_callback = nullptr;
        qabstractvideobuffer_mapmode_callback = nullptr;
        qabstractvideobuffer_unmap_callback = nullptr;
        qabstractvideobuffer_handle_callback = nullptr;
    }

    // Callback setters
    void setQAbstractVideoBuffer_Release_Callback(QAbstractVideoBuffer_Release_Callback cb) { qabstractvideobuffer_release_callback = cb; }
    void setQAbstractVideoBuffer_MapMode_Callback(QAbstractVideoBuffer_MapMode_Callback cb) { qabstractvideobuffer_mapmode_callback = cb; }
    void setQAbstractVideoBuffer_Unmap_Callback(QAbstractVideoBuffer_Unmap_Callback cb) { qabstractvideobuffer_unmap_callback = cb; }
    void setQAbstractVideoBuffer_Handle_Callback(QAbstractVideoBuffer_Handle_Callback cb) { qabstractvideobuffer_handle_callback = cb; }

    // Base flag setters
    void setQAbstractVideoBuffer_Release_IsBase(bool value) const { qabstractvideobuffer_release_isbase = value; }
    void setQAbstractVideoBuffer_MapMode_IsBase(bool value) const { qabstractvideobuffer_mapmode_isbase = value; }
    void setQAbstractVideoBuffer_Unmap_IsBase(bool value) const { qabstractvideobuffer_unmap_isbase = value; }
    void setQAbstractVideoBuffer_Handle_IsBase(bool value) const { qabstractvideobuffer_handle_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual void release() override {
        if (qabstractvideobuffer_release_isbase) {
            qabstractvideobuffer_release_isbase = false;
            QAbstractVideoBuffer::release();
        } else if (qabstractvideobuffer_release_callback != nullptr) {
            qabstractvideobuffer_release_callback();
        } else {
            QAbstractVideoBuffer::release();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QAbstractVideoBuffer::MapMode mapMode() const override {
        return qabstractvideobuffer_mapmode_callback();
    }

    // Virtual method for C ABI access and custom callback
    virtual void unmap() override {
        qabstractvideobuffer_unmap_callback();
    }

    // Virtual method for C ABI access and custom callback
    virtual QVariant handle() const override {
        if (qabstractvideobuffer_handle_isbase) {
            qabstractvideobuffer_handle_isbase = false;
            return QAbstractVideoBuffer::handle();
        } else if (qabstractvideobuffer_handle_callback != nullptr) {
            return qabstractvideobuffer_handle_callback();
        } else {
            return QAbstractVideoBuffer::handle();
        }
    }
};

// This class is a subclass of QAbstractPlanarVideoBuffer so that we can call protected methods
class VirtualQAbstractPlanarVideoBuffer : public QAbstractPlanarVideoBuffer {

  public:
    // Virtual class public types (including callbacks)
    using QAbstractPlanarVideoBuffer_Map_Callback = uchar* (*)(QAbstractPlanarVideoBuffer*, QAbstractVideoBuffer::MapMode, int*, int*);
    using QAbstractPlanarVideoBuffer_Release_Callback = void (*)();
    using QAbstractPlanarVideoBuffer_MapMode_Callback = QAbstractVideoBuffer::MapMode (*)();
    using QAbstractPlanarVideoBuffer_Unmap_Callback = void (*)();
    using QAbstractPlanarVideoBuffer_Handle_Callback = QVariant (*)();

  protected:
    // Instance callback storage
    QAbstractPlanarVideoBuffer_Map_Callback qabstractplanarvideobuffer_map_callback = nullptr;
    QAbstractPlanarVideoBuffer_Release_Callback qabstractplanarvideobuffer_release_callback = nullptr;
    QAbstractPlanarVideoBuffer_MapMode_Callback qabstractplanarvideobuffer_mapmode_callback = nullptr;
    QAbstractPlanarVideoBuffer_Unmap_Callback qabstractplanarvideobuffer_unmap_callback = nullptr;
    QAbstractPlanarVideoBuffer_Handle_Callback qabstractplanarvideobuffer_handle_callback = nullptr;

    // Instance base flags
    mutable bool qabstractplanarvideobuffer_map_isbase = false;
    mutable bool qabstractplanarvideobuffer_release_isbase = false;
    mutable bool qabstractplanarvideobuffer_mapmode_isbase = false;
    mutable bool qabstractplanarvideobuffer_unmap_isbase = false;
    mutable bool qabstractplanarvideobuffer_handle_isbase = false;

  public:
    VirtualQAbstractPlanarVideoBuffer(QAbstractVideoBuffer::HandleType typeVal) : QAbstractPlanarVideoBuffer(typeVal){};

    ~VirtualQAbstractPlanarVideoBuffer() {
        qabstractplanarvideobuffer_map_callback = nullptr;
        qabstractplanarvideobuffer_release_callback = nullptr;
        qabstractplanarvideobuffer_mapmode_callback = nullptr;
        qabstractplanarvideobuffer_unmap_callback = nullptr;
        qabstractplanarvideobuffer_handle_callback = nullptr;
    }

    // Callback setters
    void setQAbstractPlanarVideoBuffer_Map_Callback(QAbstractPlanarVideoBuffer_Map_Callback cb) { qabstractplanarvideobuffer_map_callback = cb; }
    void setQAbstractPlanarVideoBuffer_Release_Callback(QAbstractPlanarVideoBuffer_Release_Callback cb) { qabstractplanarvideobuffer_release_callback = cb; }
    void setQAbstractPlanarVideoBuffer_MapMode_Callback(QAbstractPlanarVideoBuffer_MapMode_Callback cb) { qabstractplanarvideobuffer_mapmode_callback = cb; }
    void setQAbstractPlanarVideoBuffer_Unmap_Callback(QAbstractPlanarVideoBuffer_Unmap_Callback cb) { qabstractplanarvideobuffer_unmap_callback = cb; }
    void setQAbstractPlanarVideoBuffer_Handle_Callback(QAbstractPlanarVideoBuffer_Handle_Callback cb) { qabstractplanarvideobuffer_handle_callback = cb; }

    // Base flag setters
    void setQAbstractPlanarVideoBuffer_Map_IsBase(bool value) const { qabstractplanarvideobuffer_map_isbase = value; }
    void setQAbstractPlanarVideoBuffer_Release_IsBase(bool value) const { qabstractplanarvideobuffer_release_isbase = value; }
    void setQAbstractPlanarVideoBuffer_MapMode_IsBase(bool value) const { qabstractplanarvideobuffer_mapmode_isbase = value; }
    void setQAbstractPlanarVideoBuffer_Unmap_IsBase(bool value) const { qabstractplanarvideobuffer_unmap_isbase = value; }
    void setQAbstractPlanarVideoBuffer_Handle_IsBase(bool value) const { qabstractplanarvideobuffer_handle_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual uchar* map(QAbstractVideoBuffer::MapMode mode, int* numBytes, int* bytesPerLine) override {
        if (qabstractplanarvideobuffer_map_isbase) {
            qabstractplanarvideobuffer_map_isbase = false;
            return QAbstractPlanarVideoBuffer::map(mode, numBytes, bytesPerLine);
        } else if (qabstractplanarvideobuffer_map_callback != nullptr) {
            return qabstractplanarvideobuffer_map_callback(this, mode, numBytes, bytesPerLine);
        } else {
            return QAbstractPlanarVideoBuffer::map(mode, numBytes, bytesPerLine);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void release() override {
        if (qabstractplanarvideobuffer_release_isbase) {
            qabstractplanarvideobuffer_release_isbase = false;
            QAbstractPlanarVideoBuffer::release();
        } else if (qabstractplanarvideobuffer_release_callback != nullptr) {
            qabstractplanarvideobuffer_release_callback();
        } else {
            QAbstractPlanarVideoBuffer::release();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QAbstractVideoBuffer::MapMode mapMode() const override {
        return qabstractplanarvideobuffer_mapmode_callback();
    }

    // Virtual method for C ABI access and custom callback
    virtual void unmap() override {
        qabstractplanarvideobuffer_unmap_callback();
    }

    // Virtual method for C ABI access and custom callback
    virtual QVariant handle() const override {
        if (qabstractplanarvideobuffer_handle_isbase) {
            qabstractplanarvideobuffer_handle_isbase = false;
            return QAbstractPlanarVideoBuffer::handle();
        } else if (qabstractplanarvideobuffer_handle_callback != nullptr) {
            return qabstractplanarvideobuffer_handle_callback();
        } else {
            return QAbstractPlanarVideoBuffer::handle();
        }
    }
};

#endif
