#pragma once
#ifndef SRC_QTC_LIBQFONTDATABASE_H
#define SRC_QTC_LIBQFONTDATABASE_H

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

QTLIBC_API QFontDatabase* QFontDatabase_new(QFontDatabase* other);
QTLIBC_API QFontDatabase* QFontDatabase_new2(QFontDatabase* other);
QTLIBC_API QFontDatabase* QFontDatabase_new3();
QTLIBC_API void QFontDatabase_CopyAssign(QFontDatabase* self, QFontDatabase* other);
QTLIBC_API void QFontDatabase_MoveAssign(QFontDatabase* self, QFontDatabase* other);
QTLIBC_API libqt_list /* of int */ QFontDatabase_StandardSizes();
QTLIBC_API libqt_list /* of int */ QFontDatabase_WritingSystems();
QTLIBC_API libqt_list /* of int */ QFontDatabase_WritingSystemsWithFamily(libqt_string family);
QTLIBC_API libqt_list /* of libqt_string */ QFontDatabase_Families();
QTLIBC_API libqt_list /* of libqt_string */ QFontDatabase_Styles(libqt_string family);
QTLIBC_API libqt_list /* of int */ QFontDatabase_PointSizes(libqt_string family);
QTLIBC_API libqt_list /* of int */ QFontDatabase_SmoothSizes(libqt_string family, libqt_string style);
QTLIBC_API libqt_string QFontDatabase_StyleString(QFont* font);
QTLIBC_API libqt_string QFontDatabase_StyleStringWithFontInfo(QFontInfo* fontInfo);
QTLIBC_API QFont* QFontDatabase_Font(libqt_string family, libqt_string style, int pointSize);
QTLIBC_API bool QFontDatabase_IsBitmapScalable(libqt_string family);
QTLIBC_API bool QFontDatabase_IsSmoothlyScalable(libqt_string family);
QTLIBC_API bool QFontDatabase_IsScalable(libqt_string family);
QTLIBC_API bool QFontDatabase_IsFixedPitch(libqt_string family);
QTLIBC_API bool QFontDatabase_Italic(libqt_string family, libqt_string style);
QTLIBC_API bool QFontDatabase_Bold(libqt_string family, libqt_string style);
QTLIBC_API int QFontDatabase_Weight(libqt_string family, libqt_string style);
QTLIBC_API bool QFontDatabase_HasFamily(libqt_string family);
QTLIBC_API bool QFontDatabase_IsPrivateFamily(libqt_string family);
QTLIBC_API libqt_string QFontDatabase_WritingSystemName(int writingSystem);
QTLIBC_API libqt_string QFontDatabase_WritingSystemSample(int writingSystem);
QTLIBC_API int QFontDatabase_AddApplicationFont(libqt_string fileName);
QTLIBC_API int QFontDatabase_AddApplicationFontFromData(libqt_string fontData);
QTLIBC_API libqt_list /* of libqt_string */ QFontDatabase_ApplicationFontFamilies(int id);
QTLIBC_API bool QFontDatabase_RemoveApplicationFont(int id);
QTLIBC_API bool QFontDatabase_RemoveAllApplicationFonts();
QTLIBC_API QFont* QFontDatabase_SystemFont(int typeVal);
QTLIBC_API libqt_list /* of libqt_string */ QFontDatabase_Families1(int writingSystem);
QTLIBC_API libqt_list /* of int */ QFontDatabase_PointSizes2(libqt_string family, libqt_string style);
QTLIBC_API bool QFontDatabase_IsBitmapScalable2(libqt_string family, libqt_string style);
QTLIBC_API bool QFontDatabase_IsSmoothlyScalable2(libqt_string family, libqt_string style);
QTLIBC_API bool QFontDatabase_IsScalable2(libqt_string family, libqt_string style);
QTLIBC_API bool QFontDatabase_IsFixedPitch2(libqt_string family, libqt_string style);
QTLIBC_API void QFontDatabase_Delete(QFontDatabase* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
