#pragma once
#ifndef SRC_PRINTSUPPORTC_LIBVIRTUALQPRINTER_H
#define SRC_PRINTSUPPORTC_LIBVIRTUALQPRINTER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

// This class is a subclass of QPrinter so that we can call protected methods
class VirtualQPrinter : public QPrinter {

  public:
    // Virtual class public types (including callbacks)
    using QPrinter_DevType_Callback = int (*)();
    using QPrinter_SetPageSize_Callback = void (*)(QPrinter*, QPagedPaintDevice::PageSize);
    using QPrinter_SetPageSizeMM_Callback = void (*)(QPrinter*, const QSizeF&);
    using QPrinter_NewPage_Callback = bool (*)();
    using QPrinter_PaintEngine_Callback = QPaintEngine* (*)();
    using QPrinter_SetMargins_Callback = void (*)(QPrinter*, const QPagedPaintDevice::Margins&);
    using QPrinter_Metric_Callback = int (*)(const QPrinter*, QPaintDevice::PaintDeviceMetric);
    using QPrinter_InitPainter_Callback = void (*)(const QPrinter*, QPainter*);
    using QPrinter_Redirected_Callback = QPaintDevice* (*)(const QPrinter*, QPoint*);
    using QPrinter_SharedPainter_Callback = QPainter* (*)();
    using QPrinter_SetEngines_Callback = void (*)(QPrinter*, QPrintEngine*, QPaintEngine*);
    using QPrinter_DevicePageLayout_Callback = QPageLayout (*)();

  protected:
    // Instance callback storage
    QPrinter_DevType_Callback qprinter_devtype_callback = nullptr;
    QPrinter_SetPageSize_Callback qprinter_setpagesize_callback = nullptr;
    QPrinter_SetPageSizeMM_Callback qprinter_setpagesizemm_callback = nullptr;
    QPrinter_NewPage_Callback qprinter_newpage_callback = nullptr;
    QPrinter_PaintEngine_Callback qprinter_paintengine_callback = nullptr;
    QPrinter_SetMargins_Callback qprinter_setmargins_callback = nullptr;
    QPrinter_Metric_Callback qprinter_metric_callback = nullptr;
    QPrinter_InitPainter_Callback qprinter_initpainter_callback = nullptr;
    QPrinter_Redirected_Callback qprinter_redirected_callback = nullptr;
    QPrinter_SharedPainter_Callback qprinter_sharedpainter_callback = nullptr;
    QPrinter_SetEngines_Callback qprinter_setengines_callback = nullptr;
    QPrinter_DevicePageLayout_Callback qprinter_devicepagelayout_callback = nullptr;

    // Instance base flags
    mutable bool qprinter_devtype_isbase = false;
    mutable bool qprinter_setpagesize_isbase = false;
    mutable bool qprinter_setpagesizemm_isbase = false;
    mutable bool qprinter_newpage_isbase = false;
    mutable bool qprinter_paintengine_isbase = false;
    mutable bool qprinter_setmargins_isbase = false;
    mutable bool qprinter_metric_isbase = false;
    mutable bool qprinter_initpainter_isbase = false;
    mutable bool qprinter_redirected_isbase = false;
    mutable bool qprinter_sharedpainter_isbase = false;
    mutable bool qprinter_setengines_isbase = false;
    mutable bool qprinter_devicepagelayout_isbase = false;

  public:
    VirtualQPrinter() : QPrinter(){};
    VirtualQPrinter(const QPrinterInfo& printer) : QPrinter(printer){};
    VirtualQPrinter(QPrinter::PrinterMode mode) : QPrinter(mode){};
    VirtualQPrinter(const QPrinterInfo& printer, QPrinter::PrinterMode mode) : QPrinter(printer, mode){};

    ~VirtualQPrinter() {
        qprinter_devtype_callback = nullptr;
        qprinter_setpagesize_callback = nullptr;
        qprinter_setpagesizemm_callback = nullptr;
        qprinter_newpage_callback = nullptr;
        qprinter_paintengine_callback = nullptr;
        qprinter_setmargins_callback = nullptr;
        qprinter_metric_callback = nullptr;
        qprinter_initpainter_callback = nullptr;
        qprinter_redirected_callback = nullptr;
        qprinter_sharedpainter_callback = nullptr;
        qprinter_setengines_callback = nullptr;
        qprinter_devicepagelayout_callback = nullptr;
    }

    // Callback setters
    void setQPrinter_DevType_Callback(QPrinter_DevType_Callback cb) { qprinter_devtype_callback = cb; }
    void setQPrinter_SetPageSize_Callback(QPrinter_SetPageSize_Callback cb) { qprinter_setpagesize_callback = cb; }
    void setQPrinter_SetPageSizeMM_Callback(QPrinter_SetPageSizeMM_Callback cb) { qprinter_setpagesizemm_callback = cb; }
    void setQPrinter_NewPage_Callback(QPrinter_NewPage_Callback cb) { qprinter_newpage_callback = cb; }
    void setQPrinter_PaintEngine_Callback(QPrinter_PaintEngine_Callback cb) { qprinter_paintengine_callback = cb; }
    void setQPrinter_SetMargins_Callback(QPrinter_SetMargins_Callback cb) { qprinter_setmargins_callback = cb; }
    void setQPrinter_Metric_Callback(QPrinter_Metric_Callback cb) { qprinter_metric_callback = cb; }
    void setQPrinter_InitPainter_Callback(QPrinter_InitPainter_Callback cb) { qprinter_initpainter_callback = cb; }
    void setQPrinter_Redirected_Callback(QPrinter_Redirected_Callback cb) { qprinter_redirected_callback = cb; }
    void setQPrinter_SharedPainter_Callback(QPrinter_SharedPainter_Callback cb) { qprinter_sharedpainter_callback = cb; }
    void setQPrinter_SetEngines_Callback(QPrinter_SetEngines_Callback cb) { qprinter_setengines_callback = cb; }
    void setQPrinter_DevicePageLayout_Callback(QPrinter_DevicePageLayout_Callback cb) { qprinter_devicepagelayout_callback = cb; }

    // Base flag setters
    void setQPrinter_DevType_IsBase(bool value) const { qprinter_devtype_isbase = value; }
    void setQPrinter_SetPageSize_IsBase(bool value) const { qprinter_setpagesize_isbase = value; }
    void setQPrinter_SetPageSizeMM_IsBase(bool value) const { qprinter_setpagesizemm_isbase = value; }
    void setQPrinter_NewPage_IsBase(bool value) const { qprinter_newpage_isbase = value; }
    void setQPrinter_PaintEngine_IsBase(bool value) const { qprinter_paintengine_isbase = value; }
    void setQPrinter_SetMargins_IsBase(bool value) const { qprinter_setmargins_isbase = value; }
    void setQPrinter_Metric_IsBase(bool value) const { qprinter_metric_isbase = value; }
    void setQPrinter_InitPainter_IsBase(bool value) const { qprinter_initpainter_isbase = value; }
    void setQPrinter_Redirected_IsBase(bool value) const { qprinter_redirected_isbase = value; }
    void setQPrinter_SharedPainter_IsBase(bool value) const { qprinter_sharedpainter_isbase = value; }
    void setQPrinter_SetEngines_IsBase(bool value) const { qprinter_setengines_isbase = value; }
    void setQPrinter_DevicePageLayout_IsBase(bool value) const { qprinter_devicepagelayout_isbase = value; }

    // Virtual method for C ABI access and custom callback
    virtual int devType() const override {
        if (qprinter_devtype_isbase) {
            qprinter_devtype_isbase = false;
            return QPrinter::devType();
        } else if (qprinter_devtype_callback != nullptr) {
            return qprinter_devtype_callback();
        } else {
            return QPrinter::devType();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void setPageSize(QPagedPaintDevice::PageSize pageSize) override {
        if (qprinter_setpagesize_isbase) {
            qprinter_setpagesize_isbase = false;
            QPrinter::setPageSize(pageSize);
        } else if (qprinter_setpagesize_callback != nullptr) {
            qprinter_setpagesize_callback(this, pageSize);
        } else {
            QPrinter::setPageSize(pageSize);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void setPageSizeMM(const QSizeF& size) override {
        if (qprinter_setpagesizemm_isbase) {
            qprinter_setpagesizemm_isbase = false;
            QPrinter::setPageSizeMM(size);
        } else if (qprinter_setpagesizemm_callback != nullptr) {
            qprinter_setpagesizemm_callback(this, size);
        } else {
            QPrinter::setPageSizeMM(size);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual bool newPage() override {
        if (qprinter_newpage_isbase) {
            qprinter_newpage_isbase = false;
            return QPrinter::newPage();
        } else if (qprinter_newpage_callback != nullptr) {
            return qprinter_newpage_callback();
        } else {
            return QPrinter::newPage();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QPaintEngine* paintEngine() const override {
        if (qprinter_paintengine_isbase) {
            qprinter_paintengine_isbase = false;
            return QPrinter::paintEngine();
        } else if (qprinter_paintengine_callback != nullptr) {
            return qprinter_paintengine_callback();
        } else {
            return QPrinter::paintEngine();
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void setMargins(const QPagedPaintDevice::Margins& m) override {
        if (qprinter_setmargins_isbase) {
            qprinter_setmargins_isbase = false;
            QPrinter::setMargins(m);
        } else if (qprinter_setmargins_callback != nullptr) {
            qprinter_setmargins_callback(this, m);
        } else {
            QPrinter::setMargins(m);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
        if (qprinter_metric_isbase) {
            qprinter_metric_isbase = false;
            return QPrinter::metric(param1);
        } else if (qprinter_metric_callback != nullptr) {
            return qprinter_metric_callback(this, param1);
        } else {
            return QPrinter::metric(param1);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual void initPainter(QPainter* painter) const override {
        if (qprinter_initpainter_isbase) {
            qprinter_initpainter_isbase = false;
            QPrinter::initPainter(painter);
        } else if (qprinter_initpainter_callback != nullptr) {
            qprinter_initpainter_callback(this, painter);
        } else {
            QPrinter::initPainter(painter);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QPaintDevice* redirected(QPoint* offset) const override {
        if (qprinter_redirected_isbase) {
            qprinter_redirected_isbase = false;
            return QPrinter::redirected(offset);
        } else if (qprinter_redirected_callback != nullptr) {
            return qprinter_redirected_callback(this, offset);
        } else {
            return QPrinter::redirected(offset);
        }
    }

    // Virtual method for C ABI access and custom callback
    virtual QPainter* sharedPainter() const override {
        if (qprinter_sharedpainter_isbase) {
            qprinter_sharedpainter_isbase = false;
            return QPrinter::sharedPainter();
        } else if (qprinter_sharedpainter_callback != nullptr) {
            return qprinter_sharedpainter_callback();
        } else {
            return QPrinter::sharedPainter();
        }
    }

    // Virtual method for C ABI access and custom callback
    void setEngines(QPrintEngine* printEngine, QPaintEngine* paintEngine) {
        if (qprinter_setengines_isbase) {
            qprinter_setengines_isbase = false;
            QPrinter::setEngines(printEngine, paintEngine);
        } else if (qprinter_setengines_callback != nullptr) {
            qprinter_setengines_callback(this, printEngine, paintEngine);
        } else {
            QPrinter::setEngines(printEngine, paintEngine);
        }
    }

    // Virtual method for C ABI access and custom callback
    QPageLayout devicePageLayout() const {
        if (qprinter_devicepagelayout_isbase) {
            qprinter_devicepagelayout_isbase = false;
            return QPrinter::devicePageLayout();
        } else if (qprinter_devicepagelayout_callback != nullptr) {
            return qprinter_devicepagelayout_callback();
        } else {
            return QPrinter::devicePageLayout();
        }
    }
};

#endif
