#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIABINDABLEINTERFACE_H
#define SRC_MULTIMEDIAC_LIBQMEDIABINDABLEINTERFACE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else
typedef struct QMediaBindableInterface QMediaBindableInterface;
typedef struct QMediaObject QMediaObject;
#endif

QMediaObject* QMediaBindableInterface_MediaObject(const QMediaBindableInterface* self);
void QMediaBindableInterface_OnMediaObject(const QMediaBindableInterface* self, intptr_t slot);
QMediaObject* QMediaBindableInterface_QBaseMediaObject(const QMediaBindableInterface* self);
bool QMediaBindableInterface_SetMediaObject(QMediaBindableInterface* self, QMediaObject* object);
void QMediaBindableInterface_OnSetMediaObject(QMediaBindableInterface* self, intptr_t slot);
bool QMediaBindableInterface_QBaseSetMediaObject(QMediaBindableInterface* self, QMediaObject* object);
void QMediaBindableInterface_OperatorAssign(QMediaBindableInterface* self, QMediaBindableInterface* param1);
void QMediaBindableInterface_OnOperatorAssign(QMediaBindableInterface* self, intptr_t slot);
void QMediaBindableInterface_QBaseOperatorAssign(QMediaBindableInterface* self, QMediaBindableInterface* param1);
void QMediaBindableInterface_Delete(QMediaBindableInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
