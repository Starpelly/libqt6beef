#pragma once
#ifndef SRC_QTC_LIBQFONT_H
#define SRC_QTC_LIBQFONT_H

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
typedef struct QFont QFont;
typedef struct QPaintDevice QPaintDevice;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QFont::Capitalization Capitalization;       // C++ enum
typedef QFont::HintingPreference HintingPreference; // C++ enum
typedef QFont::QtGadgetHelper QtGadgetHelper;       // C++ QFlags
typedef QFont::ResolveProperties ResolveProperties; // C++ enum
typedef QFont::SpacingType SpacingType;             // C++ enum
typedef QFont::Stretch Stretch;                     // C++ enum
typedef QFont::Style Style;                         // C++ enum
typedef QFont::StyleHint StyleHint;                 // C++ enum
typedef QFont::StyleStrategy StyleStrategy;         // C++ enum
typedef QFont::Weight Weight;                       // C++ enum
#else
typedef int Capitalization;    // C ABI enum
typedef int HintingPreference; // C ABI enum
typedef int ResolveProperties; // C ABI enum
typedef int SpacingType;       // C ABI enum
typedef int Stretch;           // C ABI enum
typedef int Style;             // C ABI enum
typedef int StyleHint;         // C ABI enum
typedef int StyleStrategy;     // C ABI enum
typedef int Weight;            // C ABI enum
typedef void QtGadgetHelper;   // C ABI QFlags
#endif

QTLIBC_API QFont* QFont_new();
QTLIBC_API QFont* QFont_new2(libqt_string family);
QTLIBC_API QFont* QFont_new3(libqt_list /* of libqt_string */ families);
QTLIBC_API QFont* QFont_new4(QFont* font, QPaintDevice* pd);
QTLIBC_API QFont* QFont_new5(QFont* font);
QTLIBC_API QFont* QFont_new6(libqt_string family, int pointSize);
QTLIBC_API QFont* QFont_new7(libqt_string family, int pointSize, int weight);
QTLIBC_API QFont* QFont_new8(libqt_string family, int pointSize, int weight, bool italic);
QTLIBC_API QFont* QFont_new9(libqt_list /* of libqt_string */ families, int pointSize);
QTLIBC_API QFont* QFont_new10(libqt_list /* of libqt_string */ families, int pointSize, int weight);
QTLIBC_API QFont* QFont_new11(libqt_list /* of libqt_string */ families, int pointSize, int weight, bool italic);
QTLIBC_API void QFont_Swap(QFont* self, QFont* other);
QTLIBC_API libqt_string QFont_Family(const QFont* self);
QTLIBC_API void QFont_SetFamily(QFont* self, libqt_string family);
QTLIBC_API libqt_list /* of libqt_string */ QFont_Families(const QFont* self);
QTLIBC_API void QFont_SetFamilies(QFont* self, libqt_list /* of libqt_string */ families);
QTLIBC_API libqt_string QFont_StyleName(const QFont* self);
QTLIBC_API void QFont_SetStyleName(QFont* self, libqt_string styleName);
QTLIBC_API int QFont_PointSize(const QFont* self);
QTLIBC_API void QFont_SetPointSize(QFont* self, int pointSize);
QTLIBC_API double QFont_PointSizeF(const QFont* self);
QTLIBC_API void QFont_SetPointSizeF(QFont* self, double pointSizeF);
QTLIBC_API int QFont_PixelSize(const QFont* self);
QTLIBC_API void QFont_SetPixelSize(QFont* self, int pixelSize);
QTLIBC_API int QFont_Weight(const QFont* self);
QTLIBC_API void QFont_SetWeight(QFont* self, int weight);
QTLIBC_API bool QFont_Bold(const QFont* self);
QTLIBC_API void QFont_SetBold(QFont* self, bool bold);
QTLIBC_API void QFont_SetStyle(QFont* self, int style);
QTLIBC_API int QFont_Style(const QFont* self);
QTLIBC_API bool QFont_Italic(const QFont* self);
QTLIBC_API void QFont_SetItalic(QFont* self, bool b);
QTLIBC_API bool QFont_Underline(const QFont* self);
QTLIBC_API void QFont_SetUnderline(QFont* self, bool underline);
QTLIBC_API bool QFont_Overline(const QFont* self);
QTLIBC_API void QFont_SetOverline(QFont* self, bool overline);
QTLIBC_API bool QFont_StrikeOut(const QFont* self);
QTLIBC_API void QFont_SetStrikeOut(QFont* self, bool strikeOut);
QTLIBC_API bool QFont_FixedPitch(const QFont* self);
QTLIBC_API void QFont_SetFixedPitch(QFont* self, bool fixedPitch);
QTLIBC_API bool QFont_Kerning(const QFont* self);
QTLIBC_API void QFont_SetKerning(QFont* self, bool kerning);
QTLIBC_API int QFont_StyleHint(const QFont* self);
QTLIBC_API int QFont_StyleStrategy(const QFont* self);
QTLIBC_API void QFont_SetStyleHint(QFont* self, int param1);
QTLIBC_API void QFont_SetStyleStrategy(QFont* self, int s);
QTLIBC_API int QFont_Stretch(const QFont* self);
QTLIBC_API void QFont_SetStretch(QFont* self, int stretch);
QTLIBC_API double QFont_LetterSpacing(const QFont* self);
QTLIBC_API int QFont_LetterSpacingType(const QFont* self);
QTLIBC_API void QFont_SetLetterSpacing(QFont* self, int typeVal, double spacing);
QTLIBC_API double QFont_WordSpacing(const QFont* self);
QTLIBC_API void QFont_SetWordSpacing(QFont* self, double spacing);
QTLIBC_API void QFont_SetCapitalization(QFont* self, int capitalization);
QTLIBC_API int QFont_Capitalization(const QFont* self);
QTLIBC_API void QFont_SetHintingPreference(QFont* self, int hintingPreference);
QTLIBC_API int QFont_HintingPreference(const QFont* self);
QTLIBC_API bool QFont_ExactMatch(const QFont* self);
QTLIBC_API void QFont_OperatorAssign(QFont* self, QFont* param1);
QTLIBC_API bool QFont_OperatorEqual(const QFont* self, QFont* param1);
QTLIBC_API bool QFont_OperatorNotEqual(const QFont* self, QFont* param1);
QTLIBC_API bool QFont_OperatorLesser(const QFont* self, QFont* param1);
QTLIBC_API QVariant* QFont_ToQVariant(const QFont* self);
QTLIBC_API bool QFont_IsCopyOf(const QFont* self, QFont* param1);
QTLIBC_API libqt_string QFont_Key(const QFont* self);
QTLIBC_API libqt_string QFont_ToString(const QFont* self);
QTLIBC_API bool QFont_FromString(QFont* self, libqt_string param1);
QTLIBC_API libqt_string QFont_Substitute(libqt_string param1);
QTLIBC_API libqt_list /* of libqt_string */ QFont_Substitutes(libqt_string param1);
QTLIBC_API libqt_list /* of libqt_string */ QFont_Substitutions();
QTLIBC_API void QFont_InsertSubstitution(libqt_string param1, libqt_string param2);
QTLIBC_API void QFont_InsertSubstitutions(libqt_string param1, libqt_list /* of libqt_string */ param2);
QTLIBC_API void QFont_RemoveSubstitutions(libqt_string param1);
QTLIBC_API void QFont_Initialize();
QTLIBC_API void QFont_Cleanup();
QTLIBC_API void QFont_CacheStatistics();
QTLIBC_API libqt_string QFont_DefaultFamily(const QFont* self);
QTLIBC_API QFont* QFont_Resolve(const QFont* self, QFont* param1);
QTLIBC_API unsigned int QFont_ResolveMask(const QFont* self);
QTLIBC_API void QFont_SetResolveMask(QFont* self, unsigned int mask);
QTLIBC_API void QFont_SetLegacyWeight(QFont* self, int legacyWeight);
QTLIBC_API int QFont_LegacyWeight(const QFont* self);
QTLIBC_API void QFont_SetStyleHint2(QFont* self, int param1, int param2);
QTLIBC_API void QFont_Delete(QFont* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
