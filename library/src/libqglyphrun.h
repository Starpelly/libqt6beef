#pragma once
#ifndef SRCC_LIBQGLYPHRUN_H
#define SRCC_LIBQGLYPHRUN_H

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
typedef struct QGlyphRun QGlyphRun;
typedef struct QPointF QPointF;
typedef struct QRawFont QRawFont;
typedef struct QRectF QRectF;
#endif

#ifdef __cplusplus
typedef QGlyphRun::GlyphRunFlag GlyphRunFlag;   // C++ enum
typedef QGlyphRun::GlyphRunFlags GlyphRunFlags; // C++ QFlags
#else
typedef int GlyphRunFlag;  // C ABI enum
typedef int GlyphRunFlags; // C ABI QFlags
#endif

QTLIBC_API QGlyphRun* QGlyphRun_new();
QTLIBC_API QGlyphRun* QGlyphRun_new2(QGlyphRun* other);
QTLIBC_API void QGlyphRun_OperatorAssign(QGlyphRun* self, QGlyphRun* other);
QTLIBC_API void QGlyphRun_Swap(QGlyphRun* self, QGlyphRun* other);
QTLIBC_API QRawFont* QGlyphRun_RawFont(const QGlyphRun* self);
QTLIBC_API void QGlyphRun_SetRawFont(QGlyphRun* self, QRawFont* rawFont);
QTLIBC_API void QGlyphRun_SetRawData(QGlyphRun* self, const unsigned int* glyphIndexArray, QPointF* glyphPositionArray, int size);
QTLIBC_API libqt_list /* of unsigned int */ QGlyphRun_GlyphIndexes(const QGlyphRun* self);
QTLIBC_API void QGlyphRun_SetGlyphIndexes(QGlyphRun* self, libqt_list /* of unsigned int */ glyphIndexes);
QTLIBC_API libqt_list /* of QPointF* */ QGlyphRun_Positions(const QGlyphRun* self);
QTLIBC_API void QGlyphRun_SetPositions(QGlyphRun* self, libqt_list /* of QPointF* */ positions);
QTLIBC_API void QGlyphRun_Clear(QGlyphRun* self);
QTLIBC_API bool QGlyphRun_OperatorEqual(const QGlyphRun* self, QGlyphRun* other);
QTLIBC_API bool QGlyphRun_OperatorNotEqual(const QGlyphRun* self, QGlyphRun* other);
QTLIBC_API void QGlyphRun_SetOverline(QGlyphRun* self, bool overline);
QTLIBC_API bool QGlyphRun_Overline(const QGlyphRun* self);
QTLIBC_API void QGlyphRun_SetUnderline(QGlyphRun* self, bool underline);
QTLIBC_API bool QGlyphRun_Underline(const QGlyphRun* self);
QTLIBC_API void QGlyphRun_SetStrikeOut(QGlyphRun* self, bool strikeOut);
QTLIBC_API bool QGlyphRun_StrikeOut(const QGlyphRun* self);
QTLIBC_API void QGlyphRun_SetRightToLeft(QGlyphRun* self, bool on);
QTLIBC_API bool QGlyphRun_IsRightToLeft(const QGlyphRun* self);
QTLIBC_API void QGlyphRun_SetFlag(QGlyphRun* self, int flag);
QTLIBC_API void QGlyphRun_SetFlags(QGlyphRun* self, int flags);
QTLIBC_API int QGlyphRun_Flags(const QGlyphRun* self);
QTLIBC_API void QGlyphRun_SetBoundingRect(QGlyphRun* self, QRectF* boundingRect);
QTLIBC_API QRectF* QGlyphRun_BoundingRect(const QGlyphRun* self);
QTLIBC_API bool QGlyphRun_IsEmpty(const QGlyphRun* self);
QTLIBC_API void QGlyphRun_SetFlag2(QGlyphRun* self, int flag, bool enabled);
QTLIBC_API void QGlyphRun_Delete(QGlyphRun* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
