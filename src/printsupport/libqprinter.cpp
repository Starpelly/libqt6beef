#include <QList>
#include <QMarginsF>
#include <QPageLayout>
#include <QPageSize>
#include <QPagedPaintDevice>
#define WORKAROUND_INNER_CLASS_DEFINITION_QPagedPaintDevice__Margins
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPainter>
#include <QPoint>
#include <QPrintEngine>
#include <QPrinter>
#include <QPrinterInfo>
#include <QRect>
#include <QRectF>
#include <QSizeF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qprinter.h>
#include "libqprinter.h"
#include "libqprinter.hxx"

QPrinter* QPrinter_new() {
    return new VirtualQPrinter();
}

QPrinter* QPrinter_new2(QPrinterInfo* printer) {
    return new VirtualQPrinter(*printer);
}

QPrinter* QPrinter_new3(int mode) {
    return new VirtualQPrinter(static_cast<QPrinter::PrinterMode>(mode));
}

QPrinter* QPrinter_new4(QPrinterInfo* printer, int mode) {
    return new VirtualQPrinter(*printer, static_cast<QPrinter::PrinterMode>(mode));
}

void QPrinter_SetOutputFormat(QPrinter* self, int format) {
    self->setOutputFormat(static_cast<QPrinter::OutputFormat>(format));
}

int QPrinter_OutputFormat(const QPrinter* self) {
    return static_cast<int>(self->outputFormat());
}

void QPrinter_SetPdfVersion(QPrinter* self, int version) {
    self->setPdfVersion(static_cast<QPagedPaintDevice::PdfVersion>(version));
}

int QPrinter_PdfVersion(const QPrinter* self) {
    return static_cast<int>(self->pdfVersion());
}

void QPrinter_SetPrinterName(QPrinter* self, libqt_string printerName) {
    QString printerName_QString = QString::fromUtf8(printerName.data, printerName.len);
    self->setPrinterName(printerName_QString);
}

libqt_string QPrinter_PrinterName(const QPrinter* self) {
    QString _ret = self->printerName();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

bool QPrinter_IsValid(const QPrinter* self) {
    return self->isValid();
}

void QPrinter_SetOutputFileName(QPrinter* self, libqt_string outputFileName) {
    QString outputFileName_QString = QString::fromUtf8(outputFileName.data, outputFileName.len);
    self->setOutputFileName(outputFileName_QString);
}

libqt_string QPrinter_OutputFileName(const QPrinter* self) {
    QString _ret = self->outputFileName();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QPrinter_SetPrintProgram(QPrinter* self, libqt_string printProgram) {
    QString printProgram_QString = QString::fromUtf8(printProgram.data, printProgram.len);
    self->setPrintProgram(printProgram_QString);
}

libqt_string QPrinter_PrintProgram(const QPrinter* self) {
    QString _ret = self->printProgram();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QPrinter_SetDocName(QPrinter* self, libqt_string docName) {
    QString docName_QString = QString::fromUtf8(docName.data, docName.len);
    self->setDocName(docName_QString);
}

libqt_string QPrinter_DocName(const QPrinter* self) {
    QString _ret = self->docName();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QPrinter_SetCreator(QPrinter* self, libqt_string creator) {
    QString creator_QString = QString::fromUtf8(creator.data, creator.len);
    self->setCreator(creator_QString);
}

libqt_string QPrinter_Creator(const QPrinter* self) {
    QString _ret = self->creator();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QPrinter_SetOrientation(QPrinter* self, int orientation) {
    self->setOrientation(static_cast<QPrinter::Orientation>(orientation));
}

int QPrinter_Orientation(const QPrinter* self) {
    return static_cast<int>(self->orientation());
}

int QPrinter_PageSize(const QPrinter* self) {
    return static_cast<int>(self->pageSize());
}

void QPrinter_SetPaperSize(QPrinter* self, int paperSize) {
    self->setPaperSize(static_cast<QPagedPaintDevice::PageSize>(paperSize));
}

int QPrinter_PaperSize(const QPrinter* self) {
    return static_cast<int>(self->paperSize());
}

void QPrinter_SetPaperSize2(QPrinter* self, QSizeF* paperSize, int unit) {
    self->setPaperSize(*paperSize, static_cast<QPrinter::Unit>(unit));
}

QSizeF* QPrinter_PaperSizeWithUnit(const QPrinter* self, int unit) {
    return new QSizeF(self->paperSize(static_cast<QPrinter::Unit>(unit)));
}

void QPrinter_SetPaperName(QPrinter* self, libqt_string paperName) {
    QString paperName_QString = QString::fromUtf8(paperName.data, paperName.len);
    self->setPaperName(paperName_QString);
}

libqt_string QPrinter_PaperName(const QPrinter* self) {
    QString _ret = self->paperName();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QPrinter_SetPageOrder(QPrinter* self, int pageOrder) {
    self->setPageOrder(static_cast<QPrinter::PageOrder>(pageOrder));
}

int QPrinter_PageOrder(const QPrinter* self) {
    return static_cast<int>(self->pageOrder());
}

void QPrinter_SetResolution(QPrinter* self, int resolution) {
    self->setResolution(static_cast<int>(resolution));
}

int QPrinter_Resolution(const QPrinter* self) {
    return self->resolution();
}

void QPrinter_SetColorMode(QPrinter* self, int colorMode) {
    self->setColorMode(static_cast<QPrinter::ColorMode>(colorMode));
}

int QPrinter_ColorMode(const QPrinter* self) {
    return static_cast<int>(self->colorMode());
}

void QPrinter_SetCollateCopies(QPrinter* self, bool collate) {
    self->setCollateCopies(collate);
}

bool QPrinter_CollateCopies(const QPrinter* self) {
    return self->collateCopies();
}

void QPrinter_SetFullPage(QPrinter* self, bool fullPage) {
    self->setFullPage(fullPage);
}

bool QPrinter_FullPage(const QPrinter* self) {
    return self->fullPage();
}

void QPrinter_SetNumCopies(QPrinter* self, int numCopies) {
    self->setNumCopies(static_cast<int>(numCopies));
}

int QPrinter_NumCopies(const QPrinter* self) {
    return self->numCopies();
}

int QPrinter_ActualNumCopies(const QPrinter* self) {
    return self->actualNumCopies();
}

void QPrinter_SetCopyCount(QPrinter* self, int copyCount) {
    self->setCopyCount(static_cast<int>(copyCount));
}

int QPrinter_CopyCount(const QPrinter* self) {
    return self->copyCount();
}

bool QPrinter_SupportsMultipleCopies(const QPrinter* self) {
    return self->supportsMultipleCopies();
}

void QPrinter_SetPaperSource(QPrinter* self, int paperSource) {
    self->setPaperSource(static_cast<QPrinter::PaperSource>(paperSource));
}

int QPrinter_PaperSource(const QPrinter* self) {
    return static_cast<int>(self->paperSource());
}

void QPrinter_SetDuplex(QPrinter* self, int duplex) {
    self->setDuplex(static_cast<QPrinter::DuplexMode>(duplex));
}

int QPrinter_Duplex(const QPrinter* self) {
    return static_cast<int>(self->duplex());
}

libqt_list /* of int */ QPrinter_SupportedResolutions(const QPrinter* self) {
    QList<int> _ret = self->supportedResolutions();
    // Convert QList<> from C++ memory to manually-managed C memory
    int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
    for (size_t i = 0; i < _ret.length(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.length();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

void QPrinter_SetFontEmbeddingEnabled(QPrinter* self, bool enable) {
    self->setFontEmbeddingEnabled(enable);
}

bool QPrinter_FontEmbeddingEnabled(const QPrinter* self) {
    return self->fontEmbeddingEnabled();
}

void QPrinter_SetDoubleSidedPrinting(QPrinter* self, bool enable) {
    self->setDoubleSidedPrinting(enable);
}

bool QPrinter_DoubleSidedPrinting(const QPrinter* self) {
    return self->doubleSidedPrinting();
}

void QPrinter_SetWinPageSize(QPrinter* self, int winPageSize) {
    self->setWinPageSize(static_cast<int>(winPageSize));
}

int QPrinter_WinPageSize(const QPrinter* self) {
    return self->winPageSize();
}

QRect* QPrinter_PaperRect(const QPrinter* self) {
    return new QRect(self->paperRect());
}

QRect* QPrinter_PageRect(const QPrinter* self) {
    return new QRect(self->pageRect());
}

QRectF* QPrinter_PaperRectWithQPrinterUnit(const QPrinter* self, int param1) {
    return new QRectF(self->paperRect(static_cast<QPrinter::Unit>(param1)));
}

QRectF* QPrinter_PageRectWithQPrinterUnit(const QPrinter* self, int param1) {
    return new QRectF(self->pageRect(static_cast<QPrinter::Unit>(param1)));
}

libqt_string QPrinter_PrinterSelectionOption(const QPrinter* self) {
    QString _ret = self->printerSelectionOption();
    // Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
    QByteArray _b = _ret.toUtf8();
    libqt_string _str;
    _str.len = _b.length();
    _str.data = static_cast<char*>(malloc((_str.len + 1) * sizeof(char)));
    memcpy(_str.data, _b.data(), _str.len);
    _str.data[_str.len] = '\0';
    return _str;
}

void QPrinter_SetPrinterSelectionOption(QPrinter* self, libqt_string printerSelectionOption) {
    QString printerSelectionOption_QString = QString::fromUtf8(printerSelectionOption.data, printerSelectionOption.len);
    self->setPrinterSelectionOption(printerSelectionOption_QString);
}

bool QPrinter_Abort(QPrinter* self) {
    return self->abort();
}

int QPrinter_PrinterState(const QPrinter* self) {
    return static_cast<int>(self->printerState());
}

QPrintEngine* QPrinter_PrintEngine(const QPrinter* self) {
    return self->printEngine();
}

void QPrinter_SetFromTo(QPrinter* self, int fromPage, int toPage) {
    self->setFromTo(static_cast<int>(fromPage), static_cast<int>(toPage));
}

int QPrinter_FromPage(const QPrinter* self) {
    return self->fromPage();
}

int QPrinter_ToPage(const QPrinter* self) {
    return self->toPage();
}

void QPrinter_SetPrintRange(QPrinter* self, int range) {
    self->setPrintRange(static_cast<QPrinter::PrintRange>(range));
}

int QPrinter_PrintRange(const QPrinter* self) {
    return static_cast<int>(self->printRange());
}

void QPrinter_SetPageMargins(QPrinter* self, double left, double top, double right, double bottom, int unit) {
    self->setPageMargins(static_cast<qreal>(left), static_cast<qreal>(top), static_cast<qreal>(right), static_cast<qreal>(bottom), static_cast<QPrinter::Unit>(unit));
}

void QPrinter_GetPageMargins(const QPrinter* self, double* left, double* top, double* right, double* bottom, int unit) {
    self->getPageMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom), static_cast<QPrinter::Unit>(unit));
}

void QPrinter_SetPageSizeWithSize(QPrinter* self, int size) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        self->setPageSize(static_cast<QPagedPaintDevice::PageSize>(size));
    } else {
        self->setPageSize(static_cast<QPagedPaintDevice::PageSize>(size));
    }
}

// Subclass method to allow providing a virtual method re-implementation
void QPrinter_OnSetPageSizeWithSize(QPrinter* self, intptr_t slot) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        vqprinter->setQPrinter_SetPageSizeWithSize_Callback(reinterpret_cast<VirtualQPrinter::QPrinter_SetPageSizeWithSize_Callback>(slot));
    }
}

// Virtual base class handler implementation
void QPrinter_QBaseSetPageSizeWithSize(QPrinter* self, int size) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        vqprinter->setQPrinter_SetPageSizeWithSize_IsBase(true);
        vqprinter->setPageSize(static_cast<QPagedPaintDevice::PageSize>(size));
    } else {
        self->setPageSize(static_cast<QPagedPaintDevice::PageSize>(size));
    }
}

// Derived class handler implementation
int QPrinter_DevType(const QPrinter* self) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        return vqprinter->devType();
    } else {
        return vqprinter->devType();
    }
}

// Base class handler implementation
int QPrinter_QBaseDevType(const QPrinter* self) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        vqprinter->setQPrinter_DevType_IsBase(true);
        return vqprinter->devType();
    } else {
        return vqprinter->devType();
    }
}

// Auxiliary method to allow providing re-implementation
void QPrinter_OnDevType(const QPrinter* self, intptr_t slot) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        vqprinter->setQPrinter_DevType_Callback(reinterpret_cast<VirtualQPrinter::QPrinter_DevType_Callback>(slot));
    }
}

// Derived class handler implementation
void QPrinter_SetPageSize(QPrinter* self, int pageSize) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        vqprinter->setPageSize(static_cast<QPagedPaintDevice::PageSize>(pageSize));
    } else {
        vqprinter->setPageSize(static_cast<QPagedPaintDevice::PageSize>(pageSize));
    }
}

// Base class handler implementation
void QPrinter_QBaseSetPageSize(QPrinter* self, int pageSize) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        vqprinter->setQPrinter_SetPageSize_IsBase(true);
        vqprinter->setPageSize(static_cast<QPagedPaintDevice::PageSize>(pageSize));
    } else {
        vqprinter->setPageSize(static_cast<QPagedPaintDevice::PageSize>(pageSize));
    }
}

// Auxiliary method to allow providing re-implementation
void QPrinter_OnSetPageSize(QPrinter* self, intptr_t slot) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        vqprinter->setQPrinter_SetPageSize_Callback(reinterpret_cast<VirtualQPrinter::QPrinter_SetPageSize_Callback>(slot));
    }
}

// Derived class handler implementation
void QPrinter_SetPageSizeMM(QPrinter* self, QSizeF* size) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        vqprinter->setPageSizeMM(*size);
    } else {
        vqprinter->setPageSizeMM(*size);
    }
}

// Base class handler implementation
void QPrinter_QBaseSetPageSizeMM(QPrinter* self, QSizeF* size) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        vqprinter->setQPrinter_SetPageSizeMM_IsBase(true);
        vqprinter->setPageSizeMM(*size);
    } else {
        vqprinter->setPageSizeMM(*size);
    }
}

// Auxiliary method to allow providing re-implementation
void QPrinter_OnSetPageSizeMM(QPrinter* self, intptr_t slot) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        vqprinter->setQPrinter_SetPageSizeMM_Callback(reinterpret_cast<VirtualQPrinter::QPrinter_SetPageSizeMM_Callback>(slot));
    }
}

// Derived class handler implementation
bool QPrinter_NewPage(QPrinter* self) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        return vqprinter->newPage();
    } else {
        return vqprinter->newPage();
    }
}

// Base class handler implementation
bool QPrinter_QBaseNewPage(QPrinter* self) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        vqprinter->setQPrinter_NewPage_IsBase(true);
        return vqprinter->newPage();
    } else {
        return vqprinter->newPage();
    }
}

// Auxiliary method to allow providing re-implementation
void QPrinter_OnNewPage(QPrinter* self, intptr_t slot) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        vqprinter->setQPrinter_NewPage_Callback(reinterpret_cast<VirtualQPrinter::QPrinter_NewPage_Callback>(slot));
    }
}

// Derived class handler implementation
QPaintEngine* QPrinter_PaintEngine(const QPrinter* self) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        return vqprinter->paintEngine();
    } else {
        return vqprinter->paintEngine();
    }
}

// Base class handler implementation
QPaintEngine* QPrinter_QBasePaintEngine(const QPrinter* self) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        vqprinter->setQPrinter_PaintEngine_IsBase(true);
        return vqprinter->paintEngine();
    } else {
        return vqprinter->paintEngine();
    }
}

// Auxiliary method to allow providing re-implementation
void QPrinter_OnPaintEngine(const QPrinter* self, intptr_t slot) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        vqprinter->setQPrinter_PaintEngine_Callback(reinterpret_cast<VirtualQPrinter::QPrinter_PaintEngine_Callback>(slot));
    }
}

// Derived class handler implementation
void QPrinter_SetMargins(QPrinter* self, QPagedPaintDevice__Margins* m) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        vqprinter->setMargins(*m);
    } else {
        vqprinter->setMargins(*m);
    }
}

// Base class handler implementation
void QPrinter_QBaseSetMargins(QPrinter* self, QPagedPaintDevice__Margins* m) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        vqprinter->setQPrinter_SetMargins_IsBase(true);
        vqprinter->setMargins(*m);
    } else {
        vqprinter->setMargins(*m);
    }
}

// Auxiliary method to allow providing re-implementation
void QPrinter_OnSetMargins(QPrinter* self, intptr_t slot) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        vqprinter->setQPrinter_SetMargins_Callback(reinterpret_cast<VirtualQPrinter::QPrinter_SetMargins_Callback>(slot));
    }
}

// Derived class handler implementation
int QPrinter_Metric(const QPrinter* self, int param1) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        return vqprinter->metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));
    } else {
        return vqprinter->metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));
    }
}

// Base class handler implementation
int QPrinter_QBaseMetric(const QPrinter* self, int param1) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        vqprinter->setQPrinter_Metric_IsBase(true);
        return vqprinter->metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));
    } else {
        return vqprinter->metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));
    }
}

// Auxiliary method to allow providing re-implementation
void QPrinter_OnMetric(const QPrinter* self, intptr_t slot) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        vqprinter->setQPrinter_Metric_Callback(reinterpret_cast<VirtualQPrinter::QPrinter_Metric_Callback>(slot));
    }
}

// Derived class handler implementation
void QPrinter_InitPainter(const QPrinter* self, QPainter* painter) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        vqprinter->initPainter(painter);
    } else {
        vqprinter->initPainter(painter);
    }
}

// Base class handler implementation
void QPrinter_QBaseInitPainter(const QPrinter* self, QPainter* painter) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        vqprinter->setQPrinter_InitPainter_IsBase(true);
        vqprinter->initPainter(painter);
    } else {
        vqprinter->initPainter(painter);
    }
}

// Auxiliary method to allow providing re-implementation
void QPrinter_OnInitPainter(const QPrinter* self, intptr_t slot) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        vqprinter->setQPrinter_InitPainter_Callback(reinterpret_cast<VirtualQPrinter::QPrinter_InitPainter_Callback>(slot));
    }
}

// Derived class handler implementation
QPaintDevice* QPrinter_Redirected(const QPrinter* self, QPoint* offset) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        return vqprinter->redirected(offset);
    } else {
        return vqprinter->redirected(offset);
    }
}

// Base class handler implementation
QPaintDevice* QPrinter_QBaseRedirected(const QPrinter* self, QPoint* offset) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        vqprinter->setQPrinter_Redirected_IsBase(true);
        return vqprinter->redirected(offset);
    } else {
        return vqprinter->redirected(offset);
    }
}

// Auxiliary method to allow providing re-implementation
void QPrinter_OnRedirected(const QPrinter* self, intptr_t slot) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        vqprinter->setQPrinter_Redirected_Callback(reinterpret_cast<VirtualQPrinter::QPrinter_Redirected_Callback>(slot));
    }
}

// Derived class handler implementation
QPainter* QPrinter_SharedPainter(const QPrinter* self) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        return vqprinter->sharedPainter();
    } else {
        return vqprinter->sharedPainter();
    }
}

// Base class handler implementation
QPainter* QPrinter_QBaseSharedPainter(const QPrinter* self) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        vqprinter->setQPrinter_SharedPainter_IsBase(true);
        return vqprinter->sharedPainter();
    } else {
        return vqprinter->sharedPainter();
    }
}

// Auxiliary method to allow providing re-implementation
void QPrinter_OnSharedPainter(const QPrinter* self, intptr_t slot) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        vqprinter->setQPrinter_SharedPainter_Callback(reinterpret_cast<VirtualQPrinter::QPrinter_SharedPainter_Callback>(slot));
    }
}

// Derived class handler implementation
void QPrinter_SetEngines(QPrinter* self, QPrintEngine* printEngine, QPaintEngine* paintEngine) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        vqprinter->setEngines(printEngine, paintEngine);
    } else {
        vqprinter->setEngines(printEngine, paintEngine);
    }
}

// Base class handler implementation
void QPrinter_QBaseSetEngines(QPrinter* self, QPrintEngine* printEngine, QPaintEngine* paintEngine) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        vqprinter->setQPrinter_SetEngines_IsBase(true);
        vqprinter->setEngines(printEngine, paintEngine);
    } else {
        vqprinter->setEngines(printEngine, paintEngine);
    }
}

// Auxiliary method to allow providing re-implementation
void QPrinter_OnSetEngines(QPrinter* self, intptr_t slot) {
    if (auto* vqprinter = dynamic_cast<VirtualQPrinter*>(self)) {
        vqprinter->setQPrinter_SetEngines_Callback(reinterpret_cast<VirtualQPrinter::QPrinter_SetEngines_Callback>(slot));
    }
}

// Derived class handler implementation
QPageLayout* QPrinter_DevicePageLayout(const QPrinter* self) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        return new QPageLayout(vqprinter->devicePageLayout());
    }
    return {};
}

// Base class handler implementation
QPageLayout* QPrinter_QBaseDevicePageLayout(const QPrinter* self) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        vqprinter->setQPrinter_DevicePageLayout_IsBase(true);
        return new QPageLayout(vqprinter->devicePageLayout());
    }
    return {};
}

// Auxiliary method to allow providing re-implementation
void QPrinter_OnDevicePageLayout(const QPrinter* self, intptr_t slot) {
    if (auto* vqprinter = const_cast<VirtualQPrinter*>(dynamic_cast<const VirtualQPrinter*>(self))) {
        vqprinter->setQPrinter_DevicePageLayout_Callback(reinterpret_cast<VirtualQPrinter::QPrinter_DevicePageLayout_Callback>(slot));
    }
}

void QPrinter_Delete(QPrinter* self) {
    delete self;
}
