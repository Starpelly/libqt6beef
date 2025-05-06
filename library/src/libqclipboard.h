#pragma once
#ifndef SRCC_LIBQCLIPBOARD_H
#define SRCC_LIBQCLIPBOARD_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QClipboard QClipboard;
typedef struct QEvent QEvent;
typedef struct QImage QImage;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QMimeData QMimeData;
typedef struct QObject QObject;
typedef struct QPixmap QPixmap;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QClipboard::Mode Mode; // C++ enum
#else
typedef int Mode; // C ABI enum
#endif

QTLIBC_API QMetaObject* QClipboard_MetaObject(const QClipboard* self);
QTLIBC_API void* QClipboard_Metacast(QClipboard* self, const char* param1);
QTLIBC_API int QClipboard_Metacall(QClipboard* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QClipboard_Tr(const char* s);
QTLIBC_API void QClipboard_Clear(QClipboard* self);
QTLIBC_API bool QClipboard_SupportsSelection(const QClipboard* self);
QTLIBC_API bool QClipboard_SupportsFindBuffer(const QClipboard* self);
QTLIBC_API bool QClipboard_OwnsSelection(const QClipboard* self);
QTLIBC_API bool QClipboard_OwnsClipboard(const QClipboard* self);
QTLIBC_API bool QClipboard_OwnsFindBuffer(const QClipboard* self);
QTLIBC_API libqt_string QClipboard_Text(const QClipboard* self);
QTLIBC_API libqt_string QClipboard_TextWithSubtype(const QClipboard* self, libqt_string subtype);
QTLIBC_API void QClipboard_SetText(QClipboard* self, libqt_string param1);
QTLIBC_API QMimeData* QClipboard_MimeData(const QClipboard* self);
QTLIBC_API void QClipboard_SetMimeData(QClipboard* self, QMimeData* data);
QTLIBC_API QImage* QClipboard_Image(const QClipboard* self);
QTLIBC_API QPixmap* QClipboard_Pixmap(const QClipboard* self);
QTLIBC_API void QClipboard_SetImage(QClipboard* self, QImage* param1);
QTLIBC_API void QClipboard_SetPixmap(QClipboard* self, QPixmap* param1);
QTLIBC_API void QClipboard_Changed(QClipboard* self, int mode);
void QClipboard_Connect_Changed(QClipboard* self, intptr_t slot);
QTLIBC_API void QClipboard_SelectionChanged(QClipboard* self);
void QClipboard_Connect_SelectionChanged(QClipboard* self, intptr_t slot);
QTLIBC_API void QClipboard_FindBufferChanged(QClipboard* self);
void QClipboard_Connect_FindBufferChanged(QClipboard* self, intptr_t slot);
QTLIBC_API void QClipboard_DataChanged(QClipboard* self);
void QClipboard_Connect_DataChanged(QClipboard* self, intptr_t slot);
QTLIBC_API libqt_string QClipboard_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QClipboard_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QClipboard_Clear1(QClipboard* self, int mode);
QTLIBC_API libqt_string QClipboard_Text1(const QClipboard* self, int mode);
QTLIBC_API libqt_string QClipboard_Text2(const QClipboard* self, libqt_string subtype, int mode);
QTLIBC_API void QClipboard_SetText2(QClipboard* self, libqt_string param1, int mode);
QTLIBC_API QMimeData* QClipboard_MimeData1(const QClipboard* self, int mode);
QTLIBC_API void QClipboard_SetMimeData2(QClipboard* self, QMimeData* data, int mode);
QTLIBC_API QImage* QClipboard_Image1(const QClipboard* self, int mode);
QTLIBC_API QPixmap* QClipboard_Pixmap1(const QClipboard* self, int mode);
QTLIBC_API void QClipboard_SetImage2(QClipboard* self, QImage* param1, int mode);
QTLIBC_API void QClipboard_SetPixmap2(QClipboard* self, QPixmap* param1, int mode);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
