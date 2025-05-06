#pragma once
#ifndef SRC_QTC_LIBQWHATSTHIS_H
#define SRC_QTC_LIBQWHATSTHIS_H

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
typedef struct QAction QAction;
typedef struct QObject QObject;
typedef struct QPoint QPoint;
typedef struct QWhatsThis QWhatsThis;
typedef struct QWidget QWidget;
#endif

QTLIBC_API QWhatsThis* QWhatsThis_new(QWhatsThis* other);
QTLIBC_API QWhatsThis* QWhatsThis_new2(QWhatsThis* other);
QTLIBC_API void QWhatsThis_CopyAssign(QWhatsThis* self, QWhatsThis* other);
QTLIBC_API void QWhatsThis_MoveAssign(QWhatsThis* self, QWhatsThis* other);
QTLIBC_API void QWhatsThis_EnterWhatsThisMode();
QTLIBC_API bool QWhatsThis_InWhatsThisMode();
QTLIBC_API void QWhatsThis_LeaveWhatsThisMode();
QTLIBC_API void QWhatsThis_ShowText(QPoint* pos, libqt_string text);
QTLIBC_API void QWhatsThis_HideText();
QTLIBC_API QAction* QWhatsThis_CreateAction();
QTLIBC_API void QWhatsThis_ShowText3(QPoint* pos, libqt_string text, QWidget* w);
QTLIBC_API QAction* QWhatsThis_CreateAction1(QObject* parent);
QTLIBC_API void QWhatsThis_Delete(QWhatsThis* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
