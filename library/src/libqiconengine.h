#pragma once
#ifndef SRCC_LIBQICONENGINE_H
#define SRCC_LIBQICONENGINE_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QIconEngine__ScaledPixmapArgument)
typedef QIconEngine::ScaledPixmapArgument QIconEngine__ScaledPixmapArgument;
#endif
#else
typedef struct QDataStream QDataStream;
typedef struct QIconEngine QIconEngine;
typedef struct QIconEngine__ScaledPixmapArgument QIconEngine__ScaledPixmapArgument;
typedef struct QPainter QPainter;
typedef struct QPixmap QPixmap;
typedef struct QRect QRect;
typedef struct QSize QSize;
#endif

#ifdef __cplusplus
typedef QIconEngine::IconEngineHook IconEngineHook; // C++ enum
#else
typedef int IconEngineHook; // C ABI enum
#endif

QTLIBC_API QIconEngine* QIconEngine_new();
QTLIBC_API void QIconEngine_Paint(QIconEngine* self, QPainter* painter, QRect* rect, int mode, int state);
QTLIBC_API void QIconEngine_OnPaint(QIconEngine* self, intptr_t slot);
QTLIBC_API void QIconEngine_QBasePaint(QIconEngine* self, QPainter* painter, QRect* rect, int mode, int state);
QTLIBC_API QSize* QIconEngine_ActualSize(QIconEngine* self, QSize* size, int mode, int state);
QTLIBC_API void QIconEngine_OnActualSize(QIconEngine* self, intptr_t slot);
QTLIBC_API QSize* QIconEngine_QBaseActualSize(QIconEngine* self, QSize* size, int mode, int state);
QTLIBC_API QPixmap* QIconEngine_Pixmap(QIconEngine* self, QSize* size, int mode, int state);
QTLIBC_API void QIconEngine_OnPixmap(QIconEngine* self, intptr_t slot);
QTLIBC_API QPixmap* QIconEngine_QBasePixmap(QIconEngine* self, QSize* size, int mode, int state);
QTLIBC_API void QIconEngine_AddPixmap(QIconEngine* self, QPixmap* pixmap, int mode, int state);
QTLIBC_API void QIconEngine_OnAddPixmap(QIconEngine* self, intptr_t slot);
QTLIBC_API void QIconEngine_QBaseAddPixmap(QIconEngine* self, QPixmap* pixmap, int mode, int state);
QTLIBC_API void QIconEngine_AddFile(QIconEngine* self, libqt_string fileName, QSize* size, int mode, int state);
QTLIBC_API void QIconEngine_OnAddFile(QIconEngine* self, intptr_t slot);
QTLIBC_API void QIconEngine_QBaseAddFile(QIconEngine* self, libqt_string fileName, QSize* size, int mode, int state);
QTLIBC_API libqt_string QIconEngine_Key(const QIconEngine* self);
QTLIBC_API void QIconEngine_OnKey(const QIconEngine* self, intptr_t slot);
QTLIBC_API libqt_string QIconEngine_QBaseKey(const QIconEngine* self);
QTLIBC_API QIconEngine* QIconEngine_Clone(const QIconEngine* self);
QTLIBC_API void QIconEngine_OnClone(const QIconEngine* self, intptr_t slot);
QTLIBC_API QIconEngine* QIconEngine_QBaseClone(const QIconEngine* self);
QTLIBC_API bool QIconEngine_Read(QIconEngine* self, QDataStream* in);
QTLIBC_API void QIconEngine_OnRead(QIconEngine* self, intptr_t slot);
QTLIBC_API bool QIconEngine_QBaseRead(QIconEngine* self, QDataStream* in);
QTLIBC_API bool QIconEngine_Write(const QIconEngine* self, QDataStream* out);
QTLIBC_API void QIconEngine_OnWrite(const QIconEngine* self, intptr_t slot);
QTLIBC_API bool QIconEngine_QBaseWrite(const QIconEngine* self, QDataStream* out);
QTLIBC_API libqt_list /* of QSize* */ QIconEngine_AvailableSizes(QIconEngine* self, int mode, int state);
QTLIBC_API void QIconEngine_OnAvailableSizes(QIconEngine* self, intptr_t slot);
QTLIBC_API libqt_list /* of QSize* */ QIconEngine_QBaseAvailableSizes(QIconEngine* self, int mode, int state);
QTLIBC_API libqt_string QIconEngine_IconName(QIconEngine* self);
QTLIBC_API void QIconEngine_OnIconName(QIconEngine* self, intptr_t slot);
QTLIBC_API libqt_string QIconEngine_QBaseIconName(QIconEngine* self);
QTLIBC_API bool QIconEngine_IsNull(QIconEngine* self);
QTLIBC_API void QIconEngine_OnIsNull(QIconEngine* self, intptr_t slot);
QTLIBC_API bool QIconEngine_QBaseIsNull(QIconEngine* self);
QTLIBC_API QPixmap* QIconEngine_ScaledPixmap(QIconEngine* self, QSize* size, int mode, int state, double scale);
QTLIBC_API void QIconEngine_OnScaledPixmap(QIconEngine* self, intptr_t slot);
QTLIBC_API QPixmap* QIconEngine_QBaseScaledPixmap(QIconEngine* self, QSize* size, int mode, int state, double scale);
QTLIBC_API void QIconEngine_VirtualHook(QIconEngine* self, int id, void* data);
QTLIBC_API void QIconEngine_OnVirtualHook(QIconEngine* self, intptr_t slot);
QTLIBC_API void QIconEngine_QBaseVirtualHook(QIconEngine* self, int id, void* data);
QTLIBC_API void QIconEngine_Delete(QIconEngine* self);

QTLIBC_API QIconEngine__ScaledPixmapArgument* QIconEngine__ScaledPixmapArgument_new(QIconEngine__ScaledPixmapArgument* param1);
QTLIBC_API void QIconEngine__ScaledPixmapArgument_OperatorAssign(QIconEngine__ScaledPixmapArgument* self, QIconEngine__ScaledPixmapArgument* param1);
QTLIBC_API void QIconEngine__ScaledPixmapArgument_Delete(QIconEngine__ScaledPixmapArgument* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
