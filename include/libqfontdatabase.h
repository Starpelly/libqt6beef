#pragma once
#ifndef SRCC_LIBQFONTDATABASE_H
#define SRCC_LIBQFONTDATABASE_H

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
typedef struct QFontDatabase QFontDatabase;
typedef struct QFontInfo QFontInfo;
#endif

#ifdef __cplusplus
typedef QFontDatabase::QtGadgetHelper QtGadgetHelper; // C++ QFlags
typedef QFontDatabase::SystemFont SystemFont;         // C++ enum
typedef QFontDatabase::WritingSystem WritingSystem;   // C++ enum
#else
typedef int SystemFont;      // C ABI enum
typedef int WritingSystem;   // C ABI enum
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QFontDatabase* QFontDatabase_new(QFontDatabase* other);
QFontDatabase* QFontDatabase_new2(QFontDatabase* other);
QFontDatabase* QFontDatabase_new3();
void QFontDatabase_CopyAssign(QFontDatabase* self, QFontDatabase* other);
void QFontDatabase_MoveAssign(QFontDatabase* self, QFontDatabase* other);
libqt_list /* of int */ QFontDatabase_StandardSizes();
libqt_list /* of int */ QFontDatabase_WritingSystems(const QFontDatabase* self);
libqt_list /* of int */ QFontDatabase_WritingSystemsWithFamily(const QFontDatabase* self, libqt_string family);
libqt_list /* of libqt_string */ QFontDatabase_Families(const QFontDatabase* self);
libqt_list /* of libqt_string */ QFontDatabase_Styles(const QFontDatabase* self, libqt_string family);
libqt_list /* of int */ QFontDatabase_PointSizes(QFontDatabase* self, libqt_string family);
libqt_list /* of int */ QFontDatabase_SmoothSizes(QFontDatabase* self, libqt_string family, libqt_string style);
libqt_string QFontDatabase_StyleString(QFontDatabase* self, QFont* font);
libqt_string QFontDatabase_StyleStringWithFontInfo(QFontDatabase* self, QFontInfo* fontInfo);
QFont* QFontDatabase_Font(const QFontDatabase* self, libqt_string family, libqt_string style, int pointSize);
bool QFontDatabase_IsBitmapScalable(const QFontDatabase* self, libqt_string family);
bool QFontDatabase_IsSmoothlyScalable(const QFontDatabase* self, libqt_string family);
bool QFontDatabase_IsScalable(const QFontDatabase* self, libqt_string family);
bool QFontDatabase_IsFixedPitch(const QFontDatabase* self, libqt_string family);
bool QFontDatabase_Italic(const QFontDatabase* self, libqt_string family, libqt_string style);
bool QFontDatabase_Bold(const QFontDatabase* self, libqt_string family, libqt_string style);
int QFontDatabase_Weight(const QFontDatabase* self, libqt_string family, libqt_string style);
bool QFontDatabase_HasFamily(const QFontDatabase* self, libqt_string family);
bool QFontDatabase_IsPrivateFamily(const QFontDatabase* self, libqt_string family);
libqt_string QFontDatabase_WritingSystemName(int writingSystem);
libqt_string QFontDatabase_WritingSystemSample(int writingSystem);
int QFontDatabase_AddApplicationFont(libqt_string fileName);
int QFontDatabase_AddApplicationFontFromData(libqt_string fontData);
libqt_list /* of libqt_string */ QFontDatabase_ApplicationFontFamilies(int id);
bool QFontDatabase_RemoveApplicationFont(int id);
bool QFontDatabase_RemoveAllApplicationFonts();
bool QFontDatabase_SupportsThreadedFontRendering();
QFont* QFontDatabase_SystemFont(int typeVal);
libqt_list /* of libqt_string */ QFontDatabase_Families1(const QFontDatabase* self, int writingSystem);
libqt_list /* of int */ QFontDatabase_PointSizes2(QFontDatabase* self, libqt_string family, libqt_string style);
bool QFontDatabase_IsBitmapScalable2(const QFontDatabase* self, libqt_string family, libqt_string style);
bool QFontDatabase_IsSmoothlyScalable2(const QFontDatabase* self, libqt_string family, libqt_string style);
bool QFontDatabase_IsScalable2(const QFontDatabase* self, libqt_string family, libqt_string style);
bool QFontDatabase_IsFixedPitch2(const QFontDatabase* self, libqt_string family, libqt_string style);
void QFontDatabase_Delete(QFontDatabase* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
