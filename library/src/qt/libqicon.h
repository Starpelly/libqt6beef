#pragma once
#ifndef SRC_QTC_LIBQICON_H
#define SRC_QTC_LIBQICON_H

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
typedef struct QIcon QIcon;
typedef struct QIconEngine QIconEngine;
typedef struct QPainter QPainter;
typedef struct QPixmap QPixmap;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QVariant QVariant;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QIcon::DataPtr DataPtr; // C++ QFlags
typedef QIcon::Mode Mode;       // C++ enum
typedef QIcon::State State;     // C++ enum
#else
typedef int Mode;  // C ABI enum
typedef int State; // C ABI enum
#endif

QTLIBC_API QIcon* QIcon_new();
QTLIBC_API QIcon* QIcon_new2(QPixmap* pixmap);
QTLIBC_API QIcon* QIcon_new3(QIcon* other);
QTLIBC_API QIcon* QIcon_new4(libqt_string fileName);
QTLIBC_API QIcon* QIcon_new5(QIconEngine* engine);
QTLIBC_API void QIcon_OperatorAssign(QIcon* self, QIcon* other);
QTLIBC_API void QIcon_Swap(QIcon* self, QIcon* other);
QTLIBC_API QVariant* QIcon_ToQVariant(const QIcon* self);
QTLIBC_API QPixmap* QIcon_Pixmap(const QIcon* self, QSize* size);
QTLIBC_API QPixmap* QIcon_Pixmap2(const QIcon* self, int w, int h);
QTLIBC_API QPixmap* QIcon_PixmapWithExtent(const QIcon* self, int extent);
QTLIBC_API QPixmap* QIcon_Pixmap3(const QIcon* self, QSize* size, double devicePixelRatio);
QTLIBC_API QPixmap* QIcon_Pixmap4(const QIcon* self, QWindow* window, QSize* size);
QTLIBC_API QSize* QIcon_ActualSize(const QIcon* self, QSize* size);
QTLIBC_API QSize* QIcon_ActualSize2(const QIcon* self, QWindow* window, QSize* size);
QTLIBC_API libqt_string QIcon_Name(const QIcon* self);
QTLIBC_API void QIcon_Paint(const QIcon* self, QPainter* painter, QRect* rect);
QTLIBC_API void QIcon_Paint2(const QIcon* self, QPainter* painter, int x, int y, int w, int h);
QTLIBC_API bool QIcon_IsNull(const QIcon* self);
QTLIBC_API bool QIcon_IsDetached(const QIcon* self);
QTLIBC_API void QIcon_Detach(QIcon* self);
QTLIBC_API long long QIcon_CacheKey(const QIcon* self);
QTLIBC_API void QIcon_AddPixmap(QIcon* self, QPixmap* pixmap);
QTLIBC_API void QIcon_AddFile(QIcon* self, libqt_string fileName);
QTLIBC_API libqt_list /* of QSize* */ QIcon_AvailableSizes(const QIcon* self);
QTLIBC_API void QIcon_SetIsMask(QIcon* self, bool isMask);
QTLIBC_API bool QIcon_IsMask(const QIcon* self);
QTLIBC_API QIcon* QIcon_FromTheme(libqt_string name);
QTLIBC_API QIcon* QIcon_FromTheme2(libqt_string name, QIcon* fallback);
QTLIBC_API bool QIcon_HasThemeIcon(libqt_string name);
QTLIBC_API libqt_list /* of libqt_string */ QIcon_ThemeSearchPaths();
QTLIBC_API void QIcon_SetThemeSearchPaths(libqt_list /* of libqt_string */ searchpath);
QTLIBC_API libqt_list /* of libqt_string */ QIcon_FallbackSearchPaths();
QTLIBC_API void QIcon_SetFallbackSearchPaths(libqt_list /* of libqt_string */ paths);
QTLIBC_API libqt_string QIcon_ThemeName();
QTLIBC_API void QIcon_SetThemeName(libqt_string path);
QTLIBC_API libqt_string QIcon_FallbackThemeName();
QTLIBC_API void QIcon_SetFallbackThemeName(libqt_string name);
QTLIBC_API QPixmap* QIcon_Pixmap22(const QIcon* self, QSize* size, int mode);
QTLIBC_API QPixmap* QIcon_Pixmap32(const QIcon* self, QSize* size, int mode, int state);
QTLIBC_API QPixmap* QIcon_Pixmap33(const QIcon* self, int w, int h, int mode);
QTLIBC_API QPixmap* QIcon_Pixmap42(const QIcon* self, int w, int h, int mode, int state);
QTLIBC_API QPixmap* QIcon_Pixmap23(const QIcon* self, int extent, int mode);
QTLIBC_API QPixmap* QIcon_Pixmap34(const QIcon* self, int extent, int mode, int state);
QTLIBC_API QPixmap* QIcon_Pixmap35(const QIcon* self, QSize* size, double devicePixelRatio, int mode);
QTLIBC_API QPixmap* QIcon_Pixmap43(const QIcon* self, QSize* size, double devicePixelRatio, int mode, int state);
QTLIBC_API QPixmap* QIcon_Pixmap36(const QIcon* self, QWindow* window, QSize* size, int mode);
QTLIBC_API QPixmap* QIcon_Pixmap44(const QIcon* self, QWindow* window, QSize* size, int mode, int state);
QTLIBC_API QSize* QIcon_ActualSize22(const QIcon* self, QSize* size, int mode);
QTLIBC_API QSize* QIcon_ActualSize3(const QIcon* self, QSize* size, int mode, int state);
QTLIBC_API QSize* QIcon_ActualSize32(const QIcon* self, QWindow* window, QSize* size, int mode);
QTLIBC_API QSize* QIcon_ActualSize4(const QIcon* self, QWindow* window, QSize* size, int mode, int state);
QTLIBC_API void QIcon_Paint3(const QIcon* self, QPainter* painter, QRect* rect, int alignment);
QTLIBC_API void QIcon_Paint4(const QIcon* self, QPainter* painter, QRect* rect, int alignment, int mode);
QTLIBC_API void QIcon_Paint5(const QIcon* self, QPainter* painter, QRect* rect, int alignment, int mode, int state);
QTLIBC_API void QIcon_Paint6(const QIcon* self, QPainter* painter, int x, int y, int w, int h, int alignment);
QTLIBC_API void QIcon_Paint7(const QIcon* self, QPainter* painter, int x, int y, int w, int h, int alignment, int mode);
QTLIBC_API void QIcon_Paint8(const QIcon* self, QPainter* painter, int x, int y, int w, int h, int alignment, int mode, int state);
QTLIBC_API void QIcon_AddPixmap2(QIcon* self, QPixmap* pixmap, int mode);
QTLIBC_API void QIcon_AddPixmap3(QIcon* self, QPixmap* pixmap, int mode, int state);
QTLIBC_API void QIcon_AddFile2(QIcon* self, libqt_string fileName, QSize* size);
QTLIBC_API void QIcon_AddFile3(QIcon* self, libqt_string fileName, QSize* size, int mode);
QTLIBC_API void QIcon_AddFile4(QIcon* self, libqt_string fileName, QSize* size, int mode, int state);
QTLIBC_API libqt_list /* of QSize* */ QIcon_AvailableSizes1(const QIcon* self, int mode);
QTLIBC_API libqt_list /* of QSize* */ QIcon_AvailableSizes2(const QIcon* self, int mode, int state);
QTLIBC_API void QIcon_Delete(QIcon* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
