#pragma once
#ifndef SRC_QTC_LIBQACCESSIBLE_BASE_H
#define SRC_QTC_LIBQACCESSIBLE_BASE_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QAccessible__ActivationObserver)
typedef QAccessible::ActivationObserver QAccessible__ActivationObserver;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QAccessible__State)
typedef QAccessible::State QAccessible__State;
#endif
#else
typedef struct QAccessible QAccessible;
typedef struct QAccessibleEvent QAccessibleEvent;
typedef struct QAccessibleInterface QAccessibleInterface;
typedef struct QAccessible__ActivationObserver QAccessible__ActivationObserver;
typedef struct QAccessible__State QAccessible__State;
typedef struct QObject QObject;
typedef struct QTextCursor QTextCursor;
#endif

#ifdef __cplusplus
typedef QAccessible::Event Event;                         // C++ enum
typedef QAccessible::Id Id;                               // C++ QFlags
typedef QAccessible::InterfaceFactory InterfaceFactory;   // C++ QFlags
typedef QAccessible::InterfaceType InterfaceType;         // C++ enum
typedef QAccessible::QtGadgetHelper QtGadgetHelper;       // C++ QFlags
typedef QAccessible::Relation Relation;                   // C++ QFlags
typedef QAccessible::RelationFlag RelationFlag;           // C++ enum
typedef QAccessible::Role Role;                           // C++ enum
typedef QAccessible::RootObjectHandler RootObjectHandler; // C++ QFlags
typedef QAccessible::Text Text;                           // C++ enum
typedef QAccessible::TextBoundaryType TextBoundaryType;   // C++ enum
typedef QAccessible::UpdateHandler UpdateHandler;         // C++ QFlags
#else
typedef int Event;            // C ABI enum
typedef int InterfaceType;    // C ABI enum
typedef int Relation;         // C ABI QFlags
typedef int RelationFlag;     // C ABI enum
typedef int Role;             // C ABI enum
typedef int Text;             // C ABI enum
typedef int TextBoundaryType; // C ABI enum
typedef unsigned int Id;      // C ABI QFlags
typedef void QtGadgetHelper;  // C ABI QFlags
#endif

QTLIBC_API QAccessible* QAccessible_new(QAccessible* other);
QTLIBC_API QAccessible* QAccessible_new2(QAccessible* other);
QTLIBC_API void QAccessible_CopyAssign(QAccessible* self, QAccessible* other);
QTLIBC_API void QAccessible_MoveAssign(QAccessible* self, QAccessible* other);
QTLIBC_API void QAccessible_InstallActivationObserver(QAccessible__ActivationObserver* param1);
QTLIBC_API void QAccessible_RemoveActivationObserver(QAccessible__ActivationObserver* param1);
QTLIBC_API QAccessibleInterface* QAccessible_QueryAccessibleInterface(QObject* param1);
QTLIBC_API unsigned int QAccessible_UniqueId(QAccessibleInterface* iface);
QTLIBC_API QAccessibleInterface* QAccessible_AccessibleInterface(unsigned int uniqueId);
QTLIBC_API unsigned int QAccessible_RegisterAccessibleInterface(QAccessibleInterface* iface);
QTLIBC_API void QAccessible_DeleteAccessibleInterface(unsigned int uniqueId);
QTLIBC_API void QAccessible_UpdateAccessibility(QAccessibleEvent* event);
QTLIBC_API bool QAccessible_IsActive();
QTLIBC_API void QAccessible_SetActive(bool active);
QTLIBC_API void QAccessible_SetRootObject(QObject* object);
QTLIBC_API void QAccessible_Cleanup();
QTLIBC_API libqt_pair /* tuple of int and int */ QAccessible_QAccessibleTextBoundaryHelper(QTextCursor* cursor, int boundaryType);
QTLIBC_API void QAccessible_Delete(QAccessible* self);

QTLIBC_API QAccessible__State* QAccessible__State_new(QAccessible__State* other);
QTLIBC_API QAccessible__State* QAccessible__State_new2(QAccessible__State* other);
QTLIBC_API QAccessible__State* QAccessible__State_new3();
QTLIBC_API void QAccessible__State_CopyAssign(QAccessible__State* self, QAccessible__State* other);
QTLIBC_API void QAccessible__State_MoveAssign(QAccessible__State* self, QAccessible__State* other);
QTLIBC_API void QAccessible__State_Delete(QAccessible__State* self);

QTLIBC_API void QAccessible__ActivationObserver_AccessibilityActiveChanged(QAccessible__ActivationObserver* self, bool active);
QTLIBC_API void QAccessible__ActivationObserver_OperatorAssign(QAccessible__ActivationObserver* self, QAccessible__ActivationObserver* param1);
QTLIBC_API void QAccessible__ActivationObserver_Delete(QAccessible__ActivationObserver* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
