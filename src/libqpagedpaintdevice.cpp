#include <QMarginsF>
#include <QPageLayout>
#include <QPageSize>
#include <QPagedPaintDevice>
#define WORKAROUND_INNER_CLASS_DEFINITION_QPagedPaintDevice__Margins
#include <QPaintDevice>
#include <QPaintEngine>
#include <QSizeF>
#include <qpagedpaintdevice.h>
#include "libqpagedpaintdevice.h"
#include "libqpagedpaintdevice.hxx"

bool QPagedPaintDevice_NewPage(QPagedPaintDevice* self) {
    return self->newPage();
}

bool QPagedPaintDevice_SetPageLayout(QPagedPaintDevice* self, QPageLayout* pageLayout) {
    return self->setPageLayout(*pageLayout);
}

bool QPagedPaintDevice_SetPageSize(QPagedPaintDevice* self, QPageSize* pageSize) {
    return self->setPageSize(*pageSize);
}

bool QPagedPaintDevice_SetPageOrientation(QPagedPaintDevice* self, int orientation) {
    return self->setPageOrientation(static_cast<QPageLayout::Orientation>(orientation));
}

bool QPagedPaintDevice_SetPageMargins(QPagedPaintDevice* self, QMarginsF* margins) {
    return self->setPageMargins(*margins);
}

bool QPagedPaintDevice_SetPageMargins2(QPagedPaintDevice* self, QMarginsF* margins, int units) {
    return self->setPageMargins(*margins, static_cast<QPageLayout::Unit>(units));
}

QPageLayout* QPagedPaintDevice_PageLayout(const QPagedPaintDevice* self) {
    return new QPageLayout(self->pageLayout());
}

void QPagedPaintDevice_SetPageSizeWithSize(QPagedPaintDevice* self, int size) {
    self->setPageSize(static_cast<QPagedPaintDevice::PageSize>(size));
}

int QPagedPaintDevice_PageSize(const QPagedPaintDevice* self) {
    return static_cast<int>(self->pageSize());
}

void QPagedPaintDevice_SetPageSizeMM(QPagedPaintDevice* self, QSizeF* size) {
    self->setPageSizeMM(*size);
}

QSizeF* QPagedPaintDevice_PageSizeMM(const QPagedPaintDevice* self) {
    return new QSizeF(self->pageSizeMM());
}

void QPagedPaintDevice_SetMargins(QPagedPaintDevice* self, QPagedPaintDevice__Margins* margins) {
    self->setMargins(*margins);
}

QPagedPaintDevice__Margins* QPagedPaintDevice_Margins(const QPagedPaintDevice* self) {
    return new QPagedPaintDevice::Margins(self->margins());
}

int QPagedPaintDevice_DevType(const QPagedPaintDevice* self) {
    return self->devType();
}

QPaintEngine* QPagedPaintDevice_PaintEngine(const QPagedPaintDevice* self) {
    return self->paintEngine();
}

void QPagedPaintDevice_Delete(QPagedPaintDevice* self) {
    delete self;
}
