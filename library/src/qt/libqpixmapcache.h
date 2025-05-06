#pragma once
#ifndef SRC_QTC_LIBQPIXMAPCACHE_H
#define SRC_QTC_LIBQPIXMAPCACHE_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPixmapCache__Key)
typedef QPixmapCache::Key QPixmapCache__Key;
#endif
#else
typedef struct QPixmap QPixmap;
typedef struct QPixmapCache QPixmapCache;
typedef struct QPixmapCache__Key QPixmapCache__Key;
#endif

QTLIBC_API QPixmapCache* QPixmapCache_new(QPixmapCache* other);
QTLIBC_API QPixmapCache* QPixmapCache_new2(QPixmapCache* other);
QTLIBC_API void QPixmapCache_CopyAssign(QPixmapCache* self, QPixmapCache* other);
QTLIBC_API void QPixmapCache_MoveAssign(QPixmapCache* self, QPixmapCache* other);
QTLIBC_API int QPixmapCache_CacheLimit();
QTLIBC_API void QPixmapCache_SetCacheLimit(int cacheLimit);
QTLIBC_API bool QPixmapCache_Find(libqt_string key, QPixmap* pixmap);
QTLIBC_API bool QPixmapCache_Find2(QPixmapCache__Key* key, QPixmap* pixmap);
QTLIBC_API bool QPixmapCache_Insert(libqt_string key, QPixmap* pixmap);
QTLIBC_API QPixmapCache__Key* QPixmapCache_InsertWithPixmap(QPixmap* pixmap);
QTLIBC_API bool QPixmapCache_Replace(QPixmapCache__Key* key, QPixmap* pixmap);
QTLIBC_API void QPixmapCache_Remove(libqt_string key);
QTLIBC_API void QPixmapCache_RemoveWithKey(QPixmapCache__Key* key);
QTLIBC_API void QPixmapCache_Clear();
QTLIBC_API void QPixmapCache_Delete(QPixmapCache* self);

QTLIBC_API QPixmapCache__Key* QPixmapCache__Key_new();
QTLIBC_API QPixmapCache__Key* QPixmapCache__Key_new2(QPixmapCache__Key* other);
QTLIBC_API bool QPixmapCache__Key_OperatorEqual(const QPixmapCache__Key* self, QPixmapCache__Key* key);
QTLIBC_API bool QPixmapCache__Key_OperatorNotEqual(const QPixmapCache__Key* self, QPixmapCache__Key* key);
QTLIBC_API void QPixmapCache__Key_OperatorAssign(QPixmapCache__Key* self, QPixmapCache__Key* other);
QTLIBC_API void QPixmapCache__Key_Swap(QPixmapCache__Key* self, QPixmapCache__Key* other);
QTLIBC_API bool QPixmapCache__Key_IsValid(const QPixmapCache__Key* self);
QTLIBC_API void QPixmapCache__Key_Delete(QPixmapCache__Key* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
