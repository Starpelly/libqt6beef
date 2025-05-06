#pragma once
#ifndef SRCC_LIBQDRAWUTIL_H
#define SRCC_LIBQDRAWUTIL_H

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
typedef struct QTileRules QTileRules;
#endif

#ifdef __cplusplus
typedef QDrawBorderPixmap::DrawingHint DrawingHint;   // C++ enum
typedef QDrawBorderPixmap::DrawingHints DrawingHints; // C++ QFlags
#else
typedef int DrawingHint;  // C ABI enum
typedef int DrawingHints; // C ABI QFlags
#endif

QTLIBC_API QTileRules* QTileRules_new(QTileRules* other);
QTLIBC_API QTileRules* QTileRules_new2(QTileRules* other);
QTLIBC_API QTileRules* QTileRules_new3(int horizontalRule, int verticalRule);
QTLIBC_API QTileRules* QTileRules_new4();
QTLIBC_API QTileRules* QTileRules_new5(QTileRules* param1);
QTLIBC_API QTileRules* QTileRules_new6(int rule);
QTLIBC_API void QTileRules_CopyAssign(QTileRules* self, QTileRules* other);
QTLIBC_API void QTileRules_MoveAssign(QTileRules* self, QTileRules* other);
QTLIBC_API void QTileRules_Delete(QTileRules* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
