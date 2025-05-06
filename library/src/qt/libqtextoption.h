#pragma once
#ifndef SRC_QTC_LIBQTEXTOPTION_H
#define SRC_QTC_LIBQTEXTOPTION_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTextOption__Tab)
typedef QTextOption::Tab QTextOption__Tab;
#endif
#else
typedef struct QChar QChar;
typedef struct QTextOption QTextOption;
typedef struct QTextOption__Tab QTextOption__Tab;
#endif

#ifdef __cplusplus
typedef QTextOption::Flag Flag;         // C++ enum
typedef QTextOption::Flags Flags;       // C++ QFlags
typedef QTextOption::TabType TabType;   // C++ enum
typedef QTextOption::WrapMode WrapMode; // C++ enum
#else
typedef int Flag;     // C ABI enum
typedef int Flags;    // C ABI QFlags
typedef int TabType;  // C ABI enum
typedef int WrapMode; // C ABI enum
#endif

QTLIBC_API QTextOption* QTextOption_new();
QTLIBC_API QTextOption* QTextOption_new2(int alignment);
QTLIBC_API QTextOption* QTextOption_new3(QTextOption* o);
QTLIBC_API void QTextOption_OperatorAssign(QTextOption* self, QTextOption* o);
QTLIBC_API void QTextOption_SetAlignment(QTextOption* self, int alignment);
QTLIBC_API int QTextOption_Alignment(const QTextOption* self);
QTLIBC_API void QTextOption_SetTextDirection(QTextOption* self, int aDirection);
QTLIBC_API int QTextOption_TextDirection(const QTextOption* self);
QTLIBC_API void QTextOption_SetWrapMode(QTextOption* self, int wrap);
QTLIBC_API int QTextOption_WrapMode(const QTextOption* self);
QTLIBC_API void QTextOption_SetFlags(QTextOption* self, int flags);
QTLIBC_API int QTextOption_Flags(const QTextOption* self);
QTLIBC_API void QTextOption_SetTabStopDistance(QTextOption* self, double tabStopDistance);
QTLIBC_API double QTextOption_TabStopDistance(const QTextOption* self);
QTLIBC_API void QTextOption_SetTabArray(QTextOption* self, libqt_list /* of double */ tabStops);
QTLIBC_API libqt_list /* of double */ QTextOption_TabArray(const QTextOption* self);
QTLIBC_API void QTextOption_SetTabs(QTextOption* self, libqt_list /* of QTextOption__Tab* */ tabStops);
QTLIBC_API libqt_list /* of QTextOption__Tab* */ QTextOption_Tabs(const QTextOption* self);
QTLIBC_API void QTextOption_SetUseDesignMetrics(QTextOption* self, bool b);
QTLIBC_API bool QTextOption_UseDesignMetrics(const QTextOption* self);
QTLIBC_API void QTextOption_Delete(QTextOption* self);

QTLIBC_API QTextOption__Tab* QTextOption__Tab_new(QTextOption__Tab* other);
QTLIBC_API QTextOption__Tab* QTextOption__Tab_new2(QTextOption__Tab* other);
QTLIBC_API QTextOption__Tab* QTextOption__Tab_new3();
QTLIBC_API QTextOption__Tab* QTextOption__Tab_new4(double pos, int tabType);
QTLIBC_API QTextOption__Tab* QTextOption__Tab_new5(double pos, int tabType, QChar* delim);
QTLIBC_API void QTextOption__Tab_CopyAssign(QTextOption__Tab* self, QTextOption__Tab* other);
QTLIBC_API void QTextOption__Tab_MoveAssign(QTextOption__Tab* self, QTextOption__Tab* other);
QTLIBC_API bool QTextOption__Tab_OperatorEqual(const QTextOption__Tab* self, QTextOption__Tab* other);
QTLIBC_API bool QTextOption__Tab_OperatorNotEqual(const QTextOption__Tab* self, QTextOption__Tab* other);
QTLIBC_API void QTextOption__Tab_Delete(QTextOption__Tab* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
