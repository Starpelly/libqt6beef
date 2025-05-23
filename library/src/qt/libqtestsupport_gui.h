#pragma once
#ifndef SRC_QTC_LIBQTESTSUPPORT_GUI_H
#define SRC_QTC_LIBQTESTSUPPORT_GUI_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTest__QTouchEventSequence)
typedef QTest::QTouchEventSequence QTest__QTouchEventSequence;
#endif
#else
typedef struct QPoint QPoint;
typedef struct QTest__QTouchEventSequence QTest__QTouchEventSequence;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QTest__QTouchEventSequence* QTest__QTouchEventSequence_Press(QTest__QTouchEventSequence* self, int touchId, QPoint* pt);
QTLIBC_API QTest__QTouchEventSequence* QTest__QTouchEventSequence_Move(QTest__QTouchEventSequence* self, int touchId, QPoint* pt);
QTLIBC_API QTest__QTouchEventSequence* QTest__QTouchEventSequence_Release(QTest__QTouchEventSequence* self, int touchId, QPoint* pt);
QTLIBC_API QTest__QTouchEventSequence* QTest__QTouchEventSequence_Stationary(QTest__QTouchEventSequence* self, int touchId);
QTLIBC_API bool QTest__QTouchEventSequence_Commit(QTest__QTouchEventSequence* self, bool processEvents);
QTLIBC_API QTest__QTouchEventSequence* QTest__QTouchEventSequence_Press3(QTest__QTouchEventSequence* self, int touchId, QPoint* pt, QWindow* window);
QTLIBC_API QTest__QTouchEventSequence* QTest__QTouchEventSequence_Move3(QTest__QTouchEventSequence* self, int touchId, QPoint* pt, QWindow* window);
QTLIBC_API QTest__QTouchEventSequence* QTest__QTouchEventSequence_Release3(QTest__QTouchEventSequence* self, int touchId, QPoint* pt, QWindow* window);
QTLIBC_API void QTest__QTouchEventSequence_Delete(QTest__QTouchEventSequence* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
