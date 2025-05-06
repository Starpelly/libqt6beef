#pragma once
#ifndef SRC_QTC_LIBQPALETTE_H
#define SRC_QTC_LIBQPALETTE_H

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
typedef struct QBrush QBrush;
typedef struct QColor QColor;
typedef struct QPalette QPalette;
typedef struct QVariant QVariant;
#endif

#ifdef __cplusplus
typedef QPalette::ColorGroup ColorGroup;         // C++ enum
typedef QPalette::ColorRole ColorRole;           // C++ enum
typedef QPalette::QtGadgetHelper QtGadgetHelper; // C++ QFlags
typedef QPalette::ResolveMask ResolveMask;       // C++ QFlags
#else
typedef int ColorGroup;       // C ABI enum
typedef int ColorRole;        // C ABI enum
typedef uint64_t ResolveMask; // C ABI QFlags
typedef void QtGadgetHelper;  // C ABI QFlags
#endif

QTLIBC_API QPalette* QPalette_new();
QTLIBC_API QPalette* QPalette_new2(QColor* button);
QTLIBC_API QPalette* QPalette_new3(int button);
QTLIBC_API QPalette* QPalette_new4(QColor* button, QColor* window);
QTLIBC_API QPalette* QPalette_new5(QBrush* windowText, QBrush* button, QBrush* light, QBrush* dark, QBrush* mid, QBrush* text, QBrush* bright_text, QBrush* base, QBrush* window);
QTLIBC_API QPalette* QPalette_new6(QColor* windowText, QColor* window, QColor* light, QColor* dark, QColor* mid, QColor* text, QColor* base);
QTLIBC_API QPalette* QPalette_new7(QPalette* palette);
QTLIBC_API void QPalette_OperatorAssign(QPalette* self, QPalette* palette);
QTLIBC_API void QPalette_Swap(QPalette* self, QPalette* other);
QTLIBC_API QVariant* QPalette_ToQVariant(const QPalette* self);
QTLIBC_API int QPalette_CurrentColorGroup(const QPalette* self);
QTLIBC_API void QPalette_SetCurrentColorGroup(QPalette* self, int cg);
QTLIBC_API QColor* QPalette_Color(const QPalette* self, int cg, int cr);
QTLIBC_API QBrush* QPalette_Brush(const QPalette* self, int cg, int cr);
QTLIBC_API void QPalette_SetColor(QPalette* self, int cg, int cr, QColor* color);
QTLIBC_API void QPalette_SetColor2(QPalette* self, int cr, QColor* color);
QTLIBC_API void QPalette_SetBrush(QPalette* self, int cr, QBrush* brush);
QTLIBC_API bool QPalette_IsBrushSet(const QPalette* self, int cg, int cr);
QTLIBC_API void QPalette_SetBrush2(QPalette* self, int cg, int cr, QBrush* brush);
QTLIBC_API void QPalette_SetColorGroup(QPalette* self, int cr, QBrush* windowText, QBrush* button, QBrush* light, QBrush* dark, QBrush* mid, QBrush* text, QBrush* bright_text, QBrush* base, QBrush* window);
QTLIBC_API bool QPalette_IsEqual(const QPalette* self, int cr1, int cr2);
QTLIBC_API QColor* QPalette_ColorWithCr(const QPalette* self, int cr);
QTLIBC_API QBrush* QPalette_BrushWithCr(const QPalette* self, int cr);
QTLIBC_API QBrush* QPalette_WindowText(const QPalette* self);
QTLIBC_API QBrush* QPalette_Button(const QPalette* self);
QTLIBC_API QBrush* QPalette_Light(const QPalette* self);
QTLIBC_API QBrush* QPalette_Dark(const QPalette* self);
QTLIBC_API QBrush* QPalette_Mid(const QPalette* self);
QTLIBC_API QBrush* QPalette_Text(const QPalette* self);
QTLIBC_API QBrush* QPalette_Base(const QPalette* self);
QTLIBC_API QBrush* QPalette_AlternateBase(const QPalette* self);
QTLIBC_API QBrush* QPalette_ToolTipBase(const QPalette* self);
QTLIBC_API QBrush* QPalette_ToolTipText(const QPalette* self);
QTLIBC_API QBrush* QPalette_Window(const QPalette* self);
QTLIBC_API QBrush* QPalette_Midlight(const QPalette* self);
QTLIBC_API QBrush* QPalette_BrightText(const QPalette* self);
QTLIBC_API QBrush* QPalette_ButtonText(const QPalette* self);
QTLIBC_API QBrush* QPalette_Shadow(const QPalette* self);
QTLIBC_API QBrush* QPalette_Highlight(const QPalette* self);
QTLIBC_API QBrush* QPalette_HighlightedText(const QPalette* self);
QTLIBC_API QBrush* QPalette_Link(const QPalette* self);
QTLIBC_API QBrush* QPalette_LinkVisited(const QPalette* self);
QTLIBC_API QBrush* QPalette_PlaceholderText(const QPalette* self);
QTLIBC_API bool QPalette_OperatorEqual(const QPalette* self, QPalette* p);
QTLIBC_API bool QPalette_OperatorNotEqual(const QPalette* self, QPalette* p);
QTLIBC_API bool QPalette_IsCopyOf(const QPalette* self, QPalette* p);
QTLIBC_API long long QPalette_CacheKey(const QPalette* self);
QTLIBC_API QPalette* QPalette_Resolve(const QPalette* self, QPalette* other);
QTLIBC_API unsigned long long QPalette_ResolveMask(const QPalette* self);
QTLIBC_API void QPalette_SetResolveMask(QPalette* self, unsigned long long mask);
QTLIBC_API void QPalette_Delete(QPalette* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
