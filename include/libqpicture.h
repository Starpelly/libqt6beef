#pragma once
#ifndef SRCC_LIBQPICTURE_H
#define SRCC_LIBQPICTURE_H

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
typedef struct QPictureIO QPictureIO;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
#endif

#ifdef __cplusplus
typedef QPicture::DataPtr DataPtr; // C++ QFlags
#else

#endif

QPicture* QPicture_new();
QPicture* QPicture_new2(QPicture* param1);
QPicture* QPicture_new3(int formatVersion);
bool QPicture_IsNull(const QPicture* self);
int QPicture_DevType(const QPicture* self);
void QPicture_OnDevType(const QPicture* self, intptr_t slot);
int QPicture_QBaseDevType(const QPicture* self);
unsigned int QPicture_Size(const QPicture* self);
const char* QPicture_Data(const QPicture* self);
void QPicture_SetData(QPicture* self, const char* data, unsigned int size);
void QPicture_OnSetData(QPicture* self, intptr_t slot);
void QPicture_QBaseSetData(QPicture* self, const char* data, unsigned int size);
bool QPicture_Play(QPicture* self, QPainter* p);
bool QPicture_Load(QPicture* self, QIODevice* dev);
bool QPicture_LoadWithFileName(QPicture* self, libqt_string fileName);
bool QPicture_Save(QPicture* self, QIODevice* dev);
bool QPicture_SaveWithFileName(QPicture* self, libqt_string fileName);
QRect* QPicture_BoundingRect(const QPicture* self);
void QPicture_SetBoundingRect(QPicture* self, QRect* r);
void QPicture_OperatorAssign(QPicture* self, QPicture* p);
void QPicture_Swap(QPicture* self, QPicture* other);
void QPicture_Detach(QPicture* self);
bool QPicture_IsDetached(const QPicture* self);
const char* QPicture_PictureFormat(libqt_string fileName);
libqt_list /* of libqt_string */ QPicture_InputFormats();
libqt_list /* of libqt_string */ QPicture_OutputFormats();
libqt_list /* of libqt_string */ QPicture_InputFormatList();
libqt_list /* of libqt_string */ QPicture_OutputFormatList();
QPaintEngine* QPicture_PaintEngine(const QPicture* self);
void QPicture_OnPaintEngine(const QPicture* self, intptr_t slot);
QPaintEngine* QPicture_QBasePaintEngine(const QPicture* self);
int QPicture_Metric(const QPicture* self, int m);
void QPicture_OnMetric(const QPicture* self, intptr_t slot);
int QPicture_QBaseMetric(const QPicture* self, int m);
bool QPicture_Load2(QPicture* self, QIODevice* dev, const char* format);
bool QPicture_Load22(QPicture* self, libqt_string fileName, const char* format);
bool QPicture_Save2(QPicture* self, QIODevice* dev, const char* format);
bool QPicture_Save22(QPicture* self, libqt_string fileName, const char* format);
void QPicture_InitPainter(const QPicture* self, QPainter* painter);
void QPicture_OnInitPainter(const QPicture* self, intptr_t slot);
void QPicture_QBaseInitPainter(const QPicture* self, QPainter* painter);
QPaintDevice* QPicture_Redirected(const QPicture* self, QPoint* offset);
void QPicture_OnRedirected(const QPicture* self, intptr_t slot);
QPaintDevice* QPicture_QBaseRedirected(const QPicture* self, QPoint* offset);
QPainter* QPicture_SharedPainter(const QPicture* self);
void QPicture_OnSharedPainter(const QPicture* self, intptr_t slot);
QPainter* QPicture_QBaseSharedPainter(const QPicture* self);
void QPicture_Delete(QPicture* self);

QPictureIO* QPictureIO_new();
QPictureIO* QPictureIO_new2(QIODevice* ioDevice, const char* format);
QPictureIO* QPictureIO_new3(libqt_string fileName, const char* format);
QPicture* QPictureIO_Picture(const QPictureIO* self);
int QPictureIO_Status(const QPictureIO* self);
const char* QPictureIO_Format(const QPictureIO* self);
QIODevice* QPictureIO_IoDevice(const QPictureIO* self);
libqt_string QPictureIO_FileName(const QPictureIO* self);
int QPictureIO_Quality(const QPictureIO* self);
libqt_string QPictureIO_Description(const QPictureIO* self);
const char* QPictureIO_Parameters(const QPictureIO* self);
float QPictureIO_Gamma(const QPictureIO* self);
void QPictureIO_SetPicture(QPictureIO* self, QPicture* picture);
void QPictureIO_SetStatus(QPictureIO* self, int status);
void QPictureIO_SetFormat(QPictureIO* self, const char* format);
void QPictureIO_SetIODevice(QPictureIO* self, QIODevice* iODevice);
void QPictureIO_SetFileName(QPictureIO* self, libqt_string fileName);
void QPictureIO_SetQuality(QPictureIO* self, int quality);
void QPictureIO_SetDescription(QPictureIO* self, libqt_string description);
void QPictureIO_SetParameters(QPictureIO* self, const char* parameters);
void QPictureIO_SetGamma(QPictureIO* self, float gamma);
bool QPictureIO_Read(QPictureIO* self);
bool QPictureIO_Write(QPictureIO* self);
libqt_string QPictureIO_PictureFormat(libqt_string fileName);
libqt_string QPictureIO_PictureFormatWithQIODevice(QIODevice* param1);
libqt_list /* of libqt_string */ QPictureIO_InputFormats();
libqt_list /* of libqt_string */ QPictureIO_OutputFormats();
void QPictureIO_Delete(QPictureIO* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
