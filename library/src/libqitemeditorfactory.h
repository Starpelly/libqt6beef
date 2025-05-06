#pragma once
#ifndef SRCC_LIBQITEMEDITORFACTORY_H
#define SRCC_LIBQITEMEDITORFACTORY_H

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
typedef struct QItemEditorCreatorBase QItemEditorCreatorBase;
typedef struct QItemEditorFactory QItemEditorFactory;
typedef struct QWidget QWidget;
#endif

QTLIBC_API QWidget* QItemEditorCreatorBase_CreateWidget(const QItemEditorCreatorBase* self, QWidget* parent);
QTLIBC_API libqt_string QItemEditorCreatorBase_ValuePropertyName(const QItemEditorCreatorBase* self);
QTLIBC_API void QItemEditorCreatorBase_OperatorAssign(QItemEditorCreatorBase* self, QItemEditorCreatorBase* param1);
QTLIBC_API void QItemEditorCreatorBase_Delete(QItemEditorCreatorBase* self);

QTLIBC_API QItemEditorFactory* QItemEditorFactory_new();
QTLIBC_API QItemEditorFactory* QItemEditorFactory_new2(QItemEditorFactory* param1);
QTLIBC_API QWidget* QItemEditorFactory_CreateEditor(const QItemEditorFactory* self, int userType, QWidget* parent);
QTLIBC_API void QItemEditorFactory_OnCreateEditor(const QItemEditorFactory* self, intptr_t slot);
QTLIBC_API QWidget* QItemEditorFactory_QBaseCreateEditor(const QItemEditorFactory* self, int userType, QWidget* parent);
QTLIBC_API libqt_string QItemEditorFactory_ValuePropertyName(const QItemEditorFactory* self, int userType);
QTLIBC_API void QItemEditorFactory_OnValuePropertyName(const QItemEditorFactory* self, intptr_t slot);
QTLIBC_API libqt_string QItemEditorFactory_QBaseValuePropertyName(const QItemEditorFactory* self, int userType);
QTLIBC_API void QItemEditorFactory_RegisterEditor(QItemEditorFactory* self, int userType, QItemEditorCreatorBase* creator);
QTLIBC_API QItemEditorFactory* QItemEditorFactory_DefaultFactory();
QTLIBC_API void QItemEditorFactory_SetDefaultFactory(QItemEditorFactory* factory);
QTLIBC_API void QItemEditorFactory_Delete(QItemEditorFactory* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
