#pragma once
#ifndef SRC_QTC_LIBQPICTURE_H
#define SRC_QTC_LIBQPICTURE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QIODevice QIODevice;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPicture QPicture;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
#endif

#ifdef __cplusplus
typedef QPicture::DataPtr DataPtr; // C++ QFlags
#else

#endif

QTLIBC_API QPicture* QPicture_new();
QTLIBC_API QPicture* QPicture_new2(QPicture* param1);
QTLIBC_API QPicture* QPicture_new3(int formatVersion);
QTLIBC_API bool QPicture_IsNull(const QPicture* self);
QTLIBC_API int QPicture_DevType(const QPicture* self);
QTLIBC_API void QPicture_OnDevType(const QPicture* self, intptr_t slot);
QTLIBC_API int QPicture_QBaseDevType(const QPicture* self);
QTLIBC_API unsigned int QPicture_Size(const QPicture* self);
QTLIBC_API const char* QPicture_Data(const QPicture* self);
QTLIBC_API void QPicture_SetData(QPicture* self, const char* data, unsigned int size);
QTLIBC_API void QPicture_OnSetData(QPicture* self, intptr_t slot);
QTLIBC_API void QPicture_QBaseSetData(QPicture* self, const char* data, unsigned int size);
QTLIBC_API bool QPicture_Play(QPicture* self, QPainter* p);
QTLIBC_API bool QPicture_Load(QPicture* self, QIODevice* dev);
QTLIBC_API bool QPicture_LoadWithFileName(QPicture* self, libqt_string fileName);
QTLIBC_API bool QPicture_Save(QPicture* self, QIODevice* dev);
QTLIBC_API bool QPicture_SaveWithFileName(QPicture* self, libqt_string fileName);
QTLIBC_API QRect* QPicture_BoundingRect(const QPicture* self);
QTLIBC_API void QPicture_SetBoundingRect(QPicture* self, QRect* r);
QTLIBC_API void QPicture_OperatorAssign(QPicture* self, QPicture* p);
QTLIBC_API void QPicture_Swap(QPicture* self, QPicture* other);
QTLIBC_API void QPicture_Detach(QPicture* self);
QTLIBC_API bool QPicture_IsDetached(const QPicture* self);
QTLIBC_API QPaintEngine* QPicture_PaintEngine(const QPicture* self);
QTLIBC_API void QPicture_OnPaintEngine(const QPicture* self, intptr_t slot);
QTLIBC_API QPaintEngine* QPicture_QBasePaintEngine(const QPicture* self);
QTLIBC_API int QPicture_Metric(const QPicture* self, int m);
QTLIBC_API void QPicture_OnMetric(const QPicture* self, intptr_t slot);
QTLIBC_API int QPicture_QBaseMetric(const QPicture* self, int m);
QTLIBC_API void QPicture_InitPainter(const QPicture* self, QPainter* painter);
QTLIBC_API void QPicture_OnInitPainter(const QPicture* self, intptr_t slot);
QTLIBC_API void QPicture_QBaseInitPainter(const QPicture* self, QPainter* painter);
QTLIBC_API QPaintDevice* QPicture_Redirected(const QPicture* self, QPoint* offset);
QTLIBC_API void QPicture_OnRedirected(const QPicture* self, intptr_t slot);
QTLIBC_API QPaintDevice* QPicture_QBaseRedirected(const QPicture* self, QPoint* offset);
QTLIBC_API QPainter* QPicture_SharedPainter(const QPicture* self);
QTLIBC_API void QPicture_OnSharedPainter(const QPicture* self, intptr_t slot);
QTLIBC_API QPainter* QPicture_QBaseSharedPainter(const QPicture* self);
QTLIBC_API void QPicture_Delete(QPicture* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
