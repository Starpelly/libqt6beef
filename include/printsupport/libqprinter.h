#pragma once
#ifndef SRC_PRINTSUPPORTC_LIBQPRINTER_H
#define SRC_PRINTSUPPORTC_LIBQPRINTER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPagedPaintDevice__Margins)
typedef QPagedPaintDevice::Margins QPagedPaintDevice__Margins;
#endif
#else
typedef struct QMarginsF QMarginsF;
typedef struct QPageLayout QPageLayout;
typedef struct QPageSize QPageSize;
typedef struct QPagedPaintDevice QPagedPaintDevice;
typedef struct QPagedPaintDevice__Margins QPagedPaintDevice__Margins;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QPrintEngine QPrintEngine;
typedef struct QPrinter QPrinter;
typedef struct QPrinterInfo QPrinterInfo;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QSizeF QSizeF;
#endif

#ifdef __cplusplus
typedef QPrinter::ColorMode ColorMode;       // C++ enum
typedef QPrinter::DuplexMode DuplexMode;     // C++ enum
typedef QPrinter::Orientation Orientation;   // C++ enum
typedef QPrinter::OutputFormat OutputFormat; // C++ enum
typedef QPrinter::PageOrder PageOrder;       // C++ enum
typedef QPrinter::PaperSize PaperSize;       // C++ QFlags
typedef QPrinter::PaperSource PaperSource;   // C++ enum
typedef QPrinter::PrintRange PrintRange;     // C++ enum
typedef QPrinter::PrinterMode PrinterMode;   // C++ enum
typedef QPrinter::PrinterState PrinterState; // C++ enum
typedef QPrinter::Unit Unit;                 // C++ enum
#else
typedef int ColorMode;    // C ABI enum
typedef int DuplexMode;   // C ABI enum
typedef int Orientation;  // C ABI enum
typedef int OutputFormat; // C ABI enum
typedef int PageOrder;    // C ABI enum
typedef int PaperSize;    // C ABI QFlags
typedef int PaperSource;  // C ABI enum
typedef int PrintRange;   // C ABI enum
typedef int PrinterMode;  // C ABI enum
typedef int PrinterState; // C ABI enum
typedef int Unit;         // C ABI enum
#endif

QPrinter* QPrinter_new();
QPrinter* QPrinter_new2(QPrinterInfo* printer);
QPrinter* QPrinter_new3(int mode);
QPrinter* QPrinter_new4(QPrinterInfo* printer, int mode);
int QPrinter_DevType(const QPrinter* self);
void QPrinter_OnDevType(const QPrinter* self, intptr_t slot);
int QPrinter_QBaseDevType(const QPrinter* self);
void QPrinter_SetOutputFormat(QPrinter* self, int format);
int QPrinter_OutputFormat(const QPrinter* self);
void QPrinter_SetPdfVersion(QPrinter* self, int version);
int QPrinter_PdfVersion(const QPrinter* self);
void QPrinter_SetPrinterName(QPrinter* self, libqt_string printerName);
libqt_string QPrinter_PrinterName(const QPrinter* self);
bool QPrinter_IsValid(const QPrinter* self);
void QPrinter_SetOutputFileName(QPrinter* self, libqt_string outputFileName);
libqt_string QPrinter_OutputFileName(const QPrinter* self);
void QPrinter_SetPrintProgram(QPrinter* self, libqt_string printProgram);
libqt_string QPrinter_PrintProgram(const QPrinter* self);
void QPrinter_SetDocName(QPrinter* self, libqt_string docName);
libqt_string QPrinter_DocName(const QPrinter* self);
void QPrinter_SetCreator(QPrinter* self, libqt_string creator);
libqt_string QPrinter_Creator(const QPrinter* self);
void QPrinter_SetOrientation(QPrinter* self, int orientation);
int QPrinter_Orientation(const QPrinter* self);
void QPrinter_SetPageSize(QPrinter* self, int pageSize);
void QPrinter_OnSetPageSize(QPrinter* self, intptr_t slot);
void QPrinter_QBaseSetPageSize(QPrinter* self, int pageSize);
int QPrinter_PageSize(const QPrinter* self);
void QPrinter_SetPageSizeMM(QPrinter* self, QSizeF* size);
void QPrinter_OnSetPageSizeMM(QPrinter* self, intptr_t slot);
void QPrinter_QBaseSetPageSizeMM(QPrinter* self, QSizeF* size);
void QPrinter_SetPaperSize(QPrinter* self, int paperSize);
int QPrinter_PaperSize(const QPrinter* self);
void QPrinter_SetPaperSize2(QPrinter* self, QSizeF* paperSize, int unit);
QSizeF* QPrinter_PaperSizeWithUnit(const QPrinter* self, int unit);
void QPrinter_SetPaperName(QPrinter* self, libqt_string paperName);
libqt_string QPrinter_PaperName(const QPrinter* self);
void QPrinter_SetPageOrder(QPrinter* self, int pageOrder);
int QPrinter_PageOrder(const QPrinter* self);
void QPrinter_SetResolution(QPrinter* self, int resolution);
int QPrinter_Resolution(const QPrinter* self);
void QPrinter_SetColorMode(QPrinter* self, int colorMode);
int QPrinter_ColorMode(const QPrinter* self);
void QPrinter_SetCollateCopies(QPrinter* self, bool collate);
bool QPrinter_CollateCopies(const QPrinter* self);
void QPrinter_SetFullPage(QPrinter* self, bool fullPage);
bool QPrinter_FullPage(const QPrinter* self);
void QPrinter_SetNumCopies(QPrinter* self, int numCopies);
int QPrinter_NumCopies(const QPrinter* self);
int QPrinter_ActualNumCopies(const QPrinter* self);
void QPrinter_SetCopyCount(QPrinter* self, int copyCount);
int QPrinter_CopyCount(const QPrinter* self);
bool QPrinter_SupportsMultipleCopies(const QPrinter* self);
void QPrinter_SetPaperSource(QPrinter* self, int paperSource);
int QPrinter_PaperSource(const QPrinter* self);
void QPrinter_SetDuplex(QPrinter* self, int duplex);
int QPrinter_Duplex(const QPrinter* self);
libqt_list /* of int */ QPrinter_SupportedResolutions(const QPrinter* self);
void QPrinter_SetFontEmbeddingEnabled(QPrinter* self, bool enable);
bool QPrinter_FontEmbeddingEnabled(const QPrinter* self);
void QPrinter_SetDoubleSidedPrinting(QPrinter* self, bool enable);
bool QPrinter_DoubleSidedPrinting(const QPrinter* self);
void QPrinter_SetWinPageSize(QPrinter* self, int winPageSize);
int QPrinter_WinPageSize(const QPrinter* self);
QRect* QPrinter_PaperRect(const QPrinter* self);
QRect* QPrinter_PageRect(const QPrinter* self);
QRectF* QPrinter_PaperRectWithQPrinterUnit(const QPrinter* self, int param1);
QRectF* QPrinter_PageRectWithQPrinterUnit(const QPrinter* self, int param1);
libqt_string QPrinter_PrinterSelectionOption(const QPrinter* self);
void QPrinter_SetPrinterSelectionOption(QPrinter* self, libqt_string printerSelectionOption);
bool QPrinter_NewPage(QPrinter* self);
void QPrinter_OnNewPage(QPrinter* self, intptr_t slot);
bool QPrinter_QBaseNewPage(QPrinter* self);
bool QPrinter_Abort(QPrinter* self);
int QPrinter_PrinterState(const QPrinter* self);
QPaintEngine* QPrinter_PaintEngine(const QPrinter* self);
void QPrinter_OnPaintEngine(const QPrinter* self, intptr_t slot);
QPaintEngine* QPrinter_QBasePaintEngine(const QPrinter* self);
QPrintEngine* QPrinter_PrintEngine(const QPrinter* self);
void QPrinter_SetFromTo(QPrinter* self, int fromPage, int toPage);
int QPrinter_FromPage(const QPrinter* self);
int QPrinter_ToPage(const QPrinter* self);
void QPrinter_SetPrintRange(QPrinter* self, int range);
int QPrinter_PrintRange(const QPrinter* self);
void QPrinter_SetMargins(QPrinter* self, QPagedPaintDevice__Margins* m);
void QPrinter_OnSetMargins(QPrinter* self, intptr_t slot);
void QPrinter_QBaseSetMargins(QPrinter* self, QPagedPaintDevice__Margins* m);
void QPrinter_SetPageMargins(QPrinter* self, double left, double top, double right, double bottom, int unit);
void QPrinter_GetPageMargins(const QPrinter* self, double* left, double* top, double* right, double* bottom, int unit);
int QPrinter_Metric(const QPrinter* self, int param1);
void QPrinter_OnMetric(const QPrinter* self, intptr_t slot);
int QPrinter_QBaseMetric(const QPrinter* self, int param1);
void QPrinter_SetPageSizeWithSize(QPrinter* self, int size);
void QPrinter_OnSetPageSizeWithSize(QPrinter* self, intptr_t slot);
void QPrinter_QBaseSetPageSizeWithSize(QPrinter* self, int size);
void QPrinter_InitPainter(const QPrinter* self, QPainter* painter);
void QPrinter_OnInitPainter(const QPrinter* self, intptr_t slot);
void QPrinter_QBaseInitPainter(const QPrinter* self, QPainter* painter);
QPaintDevice* QPrinter_Redirected(const QPrinter* self, QPoint* offset);
void QPrinter_OnRedirected(const QPrinter* self, intptr_t slot);
QPaintDevice* QPrinter_QBaseRedirected(const QPrinter* self, QPoint* offset);
QPainter* QPrinter_SharedPainter(const QPrinter* self);
void QPrinter_OnSharedPainter(const QPrinter* self, intptr_t slot);
QPainter* QPrinter_QBaseSharedPainter(const QPrinter* self);
void QPrinter_SetEngines(QPrinter* self, QPrintEngine* printEngine, QPaintEngine* paintEngine);
void QPrinter_OnSetEngines(QPrinter* self, intptr_t slot);
void QPrinter_QBaseSetEngines(QPrinter* self, QPrintEngine* printEngine, QPaintEngine* paintEngine);
QPageLayout* QPrinter_DevicePageLayout(const QPrinter* self);
void QPrinter_OnDevicePageLayout(const QPrinter* self, intptr_t slot);
QPageLayout* QPrinter_QBaseDevicePageLayout(const QPrinter* self);
void QPrinter_Delete(QPrinter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
