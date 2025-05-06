#pragma once
#ifndef SRC_QTC_LIBQRAWFONT_H
#define SRC_QTC_LIBQRAWFONT_H

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
typedef struct QChar QChar;
typedef struct QFont QFont;
typedef struct QImage QImage;
typedef struct QPainterPath QPainterPath;
typedef struct QPointF QPointF;
typedef struct QRawFont QRawFont;
typedef struct QRectF QRectF;
typedef struct QTransform QTransform;
#endif

#ifdef __cplusplus
typedef QRawFont::AntialiasingType AntialiasingType; // C++ enum
typedef QRawFont::LayoutFlag LayoutFlag;             // C++ enum
typedef QRawFont::LayoutFlags LayoutFlags;           // C++ QFlags
#else
typedef int AntialiasingType; // C ABI enum
typedef int LayoutFlag;       // C ABI enum
typedef int LayoutFlags;      // C ABI QFlags
#endif

QTLIBC_API QRawFont* QRawFont_new();
QTLIBC_API QRawFont* QRawFont_new2(libqt_string fileName, double pixelSize);
QTLIBC_API QRawFont* QRawFont_new3(libqt_string fontData, double pixelSize);
QTLIBC_API QRawFont* QRawFont_new4(QRawFont* other);
QTLIBC_API QRawFont* QRawFont_new5(libqt_string fileName, double pixelSize, int hintingPreference);
QTLIBC_API QRawFont* QRawFont_new6(libqt_string fontData, double pixelSize, int hintingPreference);
QTLIBC_API void QRawFont_OperatorAssign(QRawFont* self, QRawFont* other);
QTLIBC_API void QRawFont_Swap(QRawFont* self, QRawFont* other);
QTLIBC_API bool QRawFont_IsValid(const QRawFont* self);
QTLIBC_API bool QRawFont_OperatorEqual(const QRawFont* self, QRawFont* other);
QTLIBC_API bool QRawFont_OperatorNotEqual(const QRawFont* self, QRawFont* other);
QTLIBC_API libqt_string QRawFont_FamilyName(const QRawFont* self);
QTLIBC_API libqt_string QRawFont_StyleName(const QRawFont* self);
QTLIBC_API int QRawFont_Style(const QRawFont* self);
QTLIBC_API int QRawFont_Weight(const QRawFont* self);
QTLIBC_API libqt_list /* of unsigned int */ QRawFont_GlyphIndexesForString(const QRawFont* self, libqt_string text);
QTLIBC_API libqt_list /* of QPointF* */ QRawFont_AdvancesForGlyphIndexes(const QRawFont* self, libqt_list /* of unsigned int */ glyphIndexes);
QTLIBC_API libqt_list /* of QPointF* */ QRawFont_AdvancesForGlyphIndexes2(const QRawFont* self, libqt_list /* of unsigned int */ glyphIndexes, int layoutFlags);
QTLIBC_API bool QRawFont_GlyphIndexesForChars(const QRawFont* self, QChar* chars, int numChars, unsigned int* glyphIndexes, int* numGlyphs);
QTLIBC_API bool QRawFont_AdvancesForGlyphIndexes3(const QRawFont* self, const unsigned int* glyphIndexes, QPointF* advances, int numGlyphs);
QTLIBC_API bool QRawFont_AdvancesForGlyphIndexes4(const QRawFont* self, const unsigned int* glyphIndexes, QPointF* advances, int numGlyphs, int layoutFlags);
QTLIBC_API QImage* QRawFont_AlphaMapForGlyph(const QRawFont* self, unsigned int glyphIndex);
QTLIBC_API QPainterPath* QRawFont_PathForGlyph(const QRawFont* self, unsigned int glyphIndex);
QTLIBC_API QRectF* QRawFont_BoundingRect(const QRawFont* self, unsigned int glyphIndex);
QTLIBC_API void QRawFont_SetPixelSize(QRawFont* self, double pixelSize);
QTLIBC_API double QRawFont_PixelSize(const QRawFont* self);
QTLIBC_API int QRawFont_HintingPreference(const QRawFont* self);
QTLIBC_API double QRawFont_Ascent(const QRawFont* self);
QTLIBC_API double QRawFont_CapHeight(const QRawFont* self);
QTLIBC_API double QRawFont_Descent(const QRawFont* self);
QTLIBC_API double QRawFont_Leading(const QRawFont* self);
QTLIBC_API double QRawFont_XHeight(const QRawFont* self);
QTLIBC_API double QRawFont_AverageCharWidth(const QRawFont* self);
QTLIBC_API double QRawFont_MaxCharWidth(const QRawFont* self);
QTLIBC_API double QRawFont_LineThickness(const QRawFont* self);
QTLIBC_API double QRawFont_UnderlinePosition(const QRawFont* self);
QTLIBC_API double QRawFont_UnitsPerEm(const QRawFont* self);
QTLIBC_API void QRawFont_LoadFromFile(QRawFont* self, libqt_string fileName, double pixelSize, int hintingPreference);
QTLIBC_API void QRawFont_LoadFromData(QRawFont* self, libqt_string fontData, double pixelSize, int hintingPreference);
QTLIBC_API bool QRawFont_SupportsCharacter(const QRawFont* self, unsigned int ucs4);
QTLIBC_API bool QRawFont_SupportsCharacterWithCharacter(const QRawFont* self, QChar* character);
QTLIBC_API libqt_list /* of int */ QRawFont_SupportedWritingSystems(const QRawFont* self);
QTLIBC_API libqt_string QRawFont_FontTable(const QRawFont* self, const char* tagName);
QTLIBC_API QRawFont* QRawFont_FromFont(QFont* font);
QTLIBC_API QImage* QRawFont_AlphaMapForGlyph2(const QRawFont* self, unsigned int glyphIndex, int antialiasingType);
QTLIBC_API QImage* QRawFont_AlphaMapForGlyph3(const QRawFont* self, unsigned int glyphIndex, int antialiasingType, QTransform* transform);
QTLIBC_API QRawFont* QRawFont_FromFont2(QFont* font, int writingSystem);
QTLIBC_API void QRawFont_Delete(QRawFont* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
