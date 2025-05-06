#pragma once
#ifndef SRCC_LIBQFILEDIALOG_H
#define SRCC_LIBQFILEDIALOG_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAbstractFileIconProvider QAbstractFileIconProvider;
typedef struct QAbstractItemDelegate QAbstractItemDelegate;
typedef struct QAbstractProxyModel QAbstractProxyModel;
typedef struct QAction QAction;
typedef struct QActionEvent QActionEvent;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBackingStore QBackingStore;
typedef struct QBindingStorage QBindingStorage;
typedef struct QBitmap QBitmap;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QCursor QCursor;
typedef struct QDialog QDialog;
typedef struct QDir QDir;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QEvent QEvent;
typedef struct QFileDialog QFileDialog;
typedef struct QFocusEvent QFocusEvent;
typedef struct QFont QFont;
typedef struct QFontInfo QFontInfo;
typedef struct QFontMetrics QFontMetrics;
typedef struct QGraphicsEffect QGraphicsEffect;
typedef struct QGraphicsProxyWidget QGraphicsProxyWidget;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QKeySequence QKeySequence;
typedef struct QLayout QLayout;
typedef struct QLocale QLocale;
typedef struct QMargins QMargins;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPalette QPalette;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QResizeEvent QResizeEvent;
typedef struct QScreen QScreen;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSizePolicy QSizePolicy;
typedef struct QStyle QStyle;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QFileDialog::AcceptMode AcceptMode;   // C++ enum
typedef QFileDialog::DialogLabel DialogLabel; // C++ enum
typedef QFileDialog::FileMode FileMode;       // C++ enum
typedef QFileDialog::Option Option;           // C++ enum
typedef QFileDialog::Options Options;         // C++ QFlags
typedef QFileDialog::ViewMode ViewMode;       // C++ enum
#else
typedef int AcceptMode;  // C ABI enum
typedef int DialogLabel; // C ABI enum
typedef int FileMode;    // C ABI enum
typedef int Option;      // C ABI enum
typedef int Options;     // C ABI QFlags
typedef int ViewMode;    // C ABI enum
#endif

QTLIBC_API QFileDialog* QFileDialog_new(QWidget* parent);
QTLIBC_API QFileDialog* QFileDialog_new2(QWidget* parent, int f);
QTLIBC_API QFileDialog* QFileDialog_new3();
QTLIBC_API QFileDialog* QFileDialog_new4(QWidget* parent, libqt_string caption);
QTLIBC_API QFileDialog* QFileDialog_new5(QWidget* parent, libqt_string caption, libqt_string directory);
QTLIBC_API QFileDialog* QFileDialog_new6(QWidget* parent, libqt_string caption, libqt_string directory, libqt_string filter);
QTLIBC_API QMetaObject* QFileDialog_MetaObject(const QFileDialog* self);
QTLIBC_API void* QFileDialog_Metacast(QFileDialog* self, const char* param1);
QTLIBC_API int QFileDialog_Metacall(QFileDialog* self, int param1, int param2, void** param3);
QTLIBC_API void QFileDialog_OnMetacall(QFileDialog* self, intptr_t slot);
QTLIBC_API int QFileDialog_QBaseMetacall(QFileDialog* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QFileDialog_Tr(const char* s);
QTLIBC_API void QFileDialog_SetDirectory(QFileDialog* self, libqt_string directory);
QTLIBC_API void QFileDialog_SetDirectoryWithDirectory(QFileDialog* self, QDir* directory);
QTLIBC_API QDir* QFileDialog_Directory(const QFileDialog* self);
QTLIBC_API void QFileDialog_SetDirectoryUrl(QFileDialog* self, QUrl* directory);
QTLIBC_API QUrl* QFileDialog_DirectoryUrl(const QFileDialog* self);
QTLIBC_API void QFileDialog_SelectFile(QFileDialog* self, libqt_string filename);
QTLIBC_API libqt_list /* of libqt_string */ QFileDialog_SelectedFiles(const QFileDialog* self);
QTLIBC_API void QFileDialog_SelectUrl(QFileDialog* self, QUrl* url);
QTLIBC_API libqt_list /* of QUrl* */ QFileDialog_SelectedUrls(const QFileDialog* self);
QTLIBC_API void QFileDialog_SetNameFilter(QFileDialog* self, libqt_string filter);
QTLIBC_API void QFileDialog_SetNameFilters(QFileDialog* self, libqt_list /* of libqt_string */ filters);
QTLIBC_API libqt_list /* of libqt_string */ QFileDialog_NameFilters(const QFileDialog* self);
QTLIBC_API void QFileDialog_SelectNameFilter(QFileDialog* self, libqt_string filter);
QTLIBC_API libqt_string QFileDialog_SelectedMimeTypeFilter(const QFileDialog* self);
QTLIBC_API libqt_string QFileDialog_SelectedNameFilter(const QFileDialog* self);
QTLIBC_API void QFileDialog_SetMimeTypeFilters(QFileDialog* self, libqt_list /* of libqt_string */ filters);
QTLIBC_API libqt_list /* of libqt_string */ QFileDialog_MimeTypeFilters(const QFileDialog* self);
QTLIBC_API void QFileDialog_SelectMimeTypeFilter(QFileDialog* self, libqt_string filter);
QTLIBC_API int QFileDialog_Filter(const QFileDialog* self);
QTLIBC_API void QFileDialog_SetFilter(QFileDialog* self, int filters);
QTLIBC_API void QFileDialog_SetViewMode(QFileDialog* self, int mode);
QTLIBC_API int QFileDialog_ViewMode(const QFileDialog* self);
QTLIBC_API void QFileDialog_SetFileMode(QFileDialog* self, int mode);
QTLIBC_API int QFileDialog_FileMode(const QFileDialog* self);
QTLIBC_API void QFileDialog_SetAcceptMode(QFileDialog* self, int mode);
QTLIBC_API int QFileDialog_AcceptMode(const QFileDialog* self);
QTLIBC_API void QFileDialog_SetSidebarUrls(QFileDialog* self, libqt_list /* of QUrl* */ urls);
QTLIBC_API libqt_list /* of QUrl* */ QFileDialog_SidebarUrls(const QFileDialog* self);
QTLIBC_API libqt_string QFileDialog_SaveState(const QFileDialog* self);
QTLIBC_API bool QFileDialog_RestoreState(QFileDialog* self, libqt_string state);
QTLIBC_API void QFileDialog_SetDefaultSuffix(QFileDialog* self, libqt_string suffix);
QTLIBC_API libqt_string QFileDialog_DefaultSuffix(const QFileDialog* self);
QTLIBC_API void QFileDialog_SetHistory(QFileDialog* self, libqt_list /* of libqt_string */ paths);
QTLIBC_API libqt_list /* of libqt_string */ QFileDialog_History(const QFileDialog* self);
QTLIBC_API void QFileDialog_SetItemDelegate(QFileDialog* self, QAbstractItemDelegate* delegate);
QTLIBC_API QAbstractItemDelegate* QFileDialog_ItemDelegate(const QFileDialog* self);
QTLIBC_API void QFileDialog_SetIconProvider(QFileDialog* self, QAbstractFileIconProvider* provider);
QTLIBC_API QAbstractFileIconProvider* QFileDialog_IconProvider(const QFileDialog* self);
QTLIBC_API void QFileDialog_SetLabelText(QFileDialog* self, int label, libqt_string text);
QTLIBC_API libqt_string QFileDialog_LabelText(const QFileDialog* self, int label);
QTLIBC_API void QFileDialog_SetSupportedSchemes(QFileDialog* self, libqt_list /* of libqt_string */ schemes);
QTLIBC_API libqt_list /* of libqt_string */ QFileDialog_SupportedSchemes(const QFileDialog* self);
QTLIBC_API void QFileDialog_SetProxyModel(QFileDialog* self, QAbstractProxyModel* model);
QTLIBC_API QAbstractProxyModel* QFileDialog_ProxyModel(const QFileDialog* self);
QTLIBC_API void QFileDialog_SetOption(QFileDialog* self, int option);
QTLIBC_API bool QFileDialog_TestOption(const QFileDialog* self, int option);
QTLIBC_API void QFileDialog_SetOptions(QFileDialog* self, int options);
QTLIBC_API int QFileDialog_Options(const QFileDialog* self);
QTLIBC_API void QFileDialog_SetVisible(QFileDialog* self, bool visible);
QTLIBC_API void QFileDialog_OnSetVisible(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseSetVisible(QFileDialog* self, bool visible);
QTLIBC_API void QFileDialog_FileSelected(QFileDialog* self, libqt_string file);
void QFileDialog_Connect_FileSelected(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_FilesSelected(QFileDialog* self, libqt_list /* of libqt_string */ files);
void QFileDialog_Connect_FilesSelected(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_CurrentChanged(QFileDialog* self, libqt_string path);
void QFileDialog_Connect_CurrentChanged(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_DirectoryEntered(QFileDialog* self, libqt_string directory);
void QFileDialog_Connect_DirectoryEntered(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_UrlSelected(QFileDialog* self, QUrl* url);
void QFileDialog_Connect_UrlSelected(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_UrlsSelected(QFileDialog* self, libqt_list /* of QUrl* */ urls);
void QFileDialog_Connect_UrlsSelected(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_CurrentUrlChanged(QFileDialog* self, QUrl* url);
void QFileDialog_Connect_CurrentUrlChanged(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_DirectoryUrlEntered(QFileDialog* self, QUrl* directory);
void QFileDialog_Connect_DirectoryUrlEntered(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_FilterSelected(QFileDialog* self, libqt_string filter);
void QFileDialog_Connect_FilterSelected(QFileDialog* self, intptr_t slot);
QTLIBC_API libqt_string QFileDialog_GetOpenFileName();
QTLIBC_API QUrl* QFileDialog_GetOpenFileUrl();
QTLIBC_API libqt_string QFileDialog_GetSaveFileName();
QTLIBC_API QUrl* QFileDialog_GetSaveFileUrl();
QTLIBC_API libqt_string QFileDialog_GetExistingDirectory();
QTLIBC_API QUrl* QFileDialog_GetExistingDirectoryUrl();
QTLIBC_API libqt_list /* of libqt_string */ QFileDialog_GetOpenFileNames();
QTLIBC_API libqt_list /* of QUrl* */ QFileDialog_GetOpenFileUrls();
QTLIBC_API void QFileDialog_SaveFileContent(libqt_string fileContent, libqt_string fileNameHint);
QTLIBC_API void QFileDialog_Done(QFileDialog* self, int result);
QTLIBC_API void QFileDialog_OnDone(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseDone(QFileDialog* self, int result);
QTLIBC_API void QFileDialog_Accept(QFileDialog* self);
QTLIBC_API void QFileDialog_OnAccept(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseAccept(QFileDialog* self);
QTLIBC_API void QFileDialog_ChangeEvent(QFileDialog* self, QEvent* e);
QTLIBC_API void QFileDialog_OnChangeEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseChangeEvent(QFileDialog* self, QEvent* e);
QTLIBC_API libqt_string QFileDialog_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QFileDialog_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QFileDialog_SetOption2(QFileDialog* self, int option, bool on);
QTLIBC_API libqt_string QFileDialog_GetOpenFileName1(QWidget* parent);
QTLIBC_API libqt_string QFileDialog_GetOpenFileName2(QWidget* parent, libqt_string caption);
QTLIBC_API libqt_string QFileDialog_GetOpenFileName3(QWidget* parent, libqt_string caption, libqt_string dir);
QTLIBC_API libqt_string QFileDialog_GetOpenFileName4(QWidget* parent, libqt_string caption, libqt_string dir, libqt_string filter);
QTLIBC_API QUrl* QFileDialog_GetOpenFileUrl1(QWidget* parent);
QTLIBC_API QUrl* QFileDialog_GetOpenFileUrl2(QWidget* parent, libqt_string caption);
QTLIBC_API QUrl* QFileDialog_GetOpenFileUrl3(QWidget* parent, libqt_string caption, QUrl* dir);
QTLIBC_API QUrl* QFileDialog_GetOpenFileUrl4(QWidget* parent, libqt_string caption, QUrl* dir, libqt_string filter);
QTLIBC_API libqt_string QFileDialog_GetSaveFileName1(QWidget* parent);
QTLIBC_API libqt_string QFileDialog_GetSaveFileName2(QWidget* parent, libqt_string caption);
QTLIBC_API libqt_string QFileDialog_GetSaveFileName3(QWidget* parent, libqt_string caption, libqt_string dir);
QTLIBC_API libqt_string QFileDialog_GetSaveFileName4(QWidget* parent, libqt_string caption, libqt_string dir, libqt_string filter);
QTLIBC_API QUrl* QFileDialog_GetSaveFileUrl1(QWidget* parent);
QTLIBC_API QUrl* QFileDialog_GetSaveFileUrl2(QWidget* parent, libqt_string caption);
QTLIBC_API QUrl* QFileDialog_GetSaveFileUrl3(QWidget* parent, libqt_string caption, QUrl* dir);
QTLIBC_API QUrl* QFileDialog_GetSaveFileUrl4(QWidget* parent, libqt_string caption, QUrl* dir, libqt_string filter);
QTLIBC_API libqt_string QFileDialog_GetExistingDirectory1(QWidget* parent);
QTLIBC_API libqt_string QFileDialog_GetExistingDirectory2(QWidget* parent, libqt_string caption);
QTLIBC_API libqt_string QFileDialog_GetExistingDirectory3(QWidget* parent, libqt_string caption, libqt_string dir);
QTLIBC_API libqt_string QFileDialog_GetExistingDirectory4(QWidget* parent, libqt_string caption, libqt_string dir, int options);
QTLIBC_API QUrl* QFileDialog_GetExistingDirectoryUrl1(QWidget* parent);
QTLIBC_API QUrl* QFileDialog_GetExistingDirectoryUrl2(QWidget* parent, libqt_string caption);
QTLIBC_API QUrl* QFileDialog_GetExistingDirectoryUrl3(QWidget* parent, libqt_string caption, QUrl* dir);
QTLIBC_API QUrl* QFileDialog_GetExistingDirectoryUrl4(QWidget* parent, libqt_string caption, QUrl* dir, int options);
QTLIBC_API QUrl* QFileDialog_GetExistingDirectoryUrl5(QWidget* parent, libqt_string caption, QUrl* dir, int options, libqt_list /* of libqt_string */ supportedSchemes);
QTLIBC_API libqt_list /* of libqt_string */ QFileDialog_GetOpenFileNames1(QWidget* parent);
QTLIBC_API libqt_list /* of libqt_string */ QFileDialog_GetOpenFileNames2(QWidget* parent, libqt_string caption);
QTLIBC_API libqt_list /* of libqt_string */ QFileDialog_GetOpenFileNames3(QWidget* parent, libqt_string caption, libqt_string dir);
QTLIBC_API libqt_list /* of libqt_string */ QFileDialog_GetOpenFileNames4(QWidget* parent, libqt_string caption, libqt_string dir, libqt_string filter);
QTLIBC_API libqt_list /* of QUrl* */ QFileDialog_GetOpenFileUrls1(QWidget* parent);
QTLIBC_API libqt_list /* of QUrl* */ QFileDialog_GetOpenFileUrls2(QWidget* parent, libqt_string caption);
QTLIBC_API libqt_list /* of QUrl* */ QFileDialog_GetOpenFileUrls3(QWidget* parent, libqt_string caption, QUrl* dir);
QTLIBC_API libqt_list /* of QUrl* */ QFileDialog_GetOpenFileUrls4(QWidget* parent, libqt_string caption, QUrl* dir, libqt_string filter);
QTLIBC_API QSize* QFileDialog_SizeHint(const QFileDialog* self);
QTLIBC_API void QFileDialog_OnSizeHint(const QFileDialog* self, intptr_t slot);
QTLIBC_API QSize* QFileDialog_QBaseSizeHint(const QFileDialog* self);
QTLIBC_API QSize* QFileDialog_MinimumSizeHint(const QFileDialog* self);
QTLIBC_API void QFileDialog_OnMinimumSizeHint(const QFileDialog* self, intptr_t slot);
QTLIBC_API QSize* QFileDialog_QBaseMinimumSizeHint(const QFileDialog* self);
QTLIBC_API void QFileDialog_Open(QFileDialog* self);
QTLIBC_API void QFileDialog_OnOpen(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseOpen(QFileDialog* self);
QTLIBC_API int QFileDialog_Exec(QFileDialog* self);
QTLIBC_API void QFileDialog_OnExec(QFileDialog* self, intptr_t slot);
QTLIBC_API int QFileDialog_QBaseExec(QFileDialog* self);
QTLIBC_API void QFileDialog_Reject(QFileDialog* self);
QTLIBC_API void QFileDialog_OnReject(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseReject(QFileDialog* self);
QTLIBC_API void QFileDialog_KeyPressEvent(QFileDialog* self, QKeyEvent* param1);
QTLIBC_API void QFileDialog_OnKeyPressEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseKeyPressEvent(QFileDialog* self, QKeyEvent* param1);
QTLIBC_API void QFileDialog_CloseEvent(QFileDialog* self, QCloseEvent* param1);
QTLIBC_API void QFileDialog_OnCloseEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseCloseEvent(QFileDialog* self, QCloseEvent* param1);
QTLIBC_API void QFileDialog_ShowEvent(QFileDialog* self, QShowEvent* param1);
QTLIBC_API void QFileDialog_OnShowEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseShowEvent(QFileDialog* self, QShowEvent* param1);
QTLIBC_API void QFileDialog_ResizeEvent(QFileDialog* self, QResizeEvent* param1);
QTLIBC_API void QFileDialog_OnResizeEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseResizeEvent(QFileDialog* self, QResizeEvent* param1);
QTLIBC_API void QFileDialog_ContextMenuEvent(QFileDialog* self, QContextMenuEvent* param1);
QTLIBC_API void QFileDialog_OnContextMenuEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseContextMenuEvent(QFileDialog* self, QContextMenuEvent* param1);
QTLIBC_API bool QFileDialog_EventFilter(QFileDialog* self, QObject* param1, QEvent* param2);
QTLIBC_API void QFileDialog_OnEventFilter(QFileDialog* self, intptr_t slot);
QTLIBC_API bool QFileDialog_QBaseEventFilter(QFileDialog* self, QObject* param1, QEvent* param2);
QTLIBC_API int QFileDialog_DevType(const QFileDialog* self);
QTLIBC_API void QFileDialog_OnDevType(const QFileDialog* self, intptr_t slot);
QTLIBC_API int QFileDialog_QBaseDevType(const QFileDialog* self);
QTLIBC_API int QFileDialog_HeightForWidth(const QFileDialog* self, int param1);
QTLIBC_API void QFileDialog_OnHeightForWidth(const QFileDialog* self, intptr_t slot);
QTLIBC_API int QFileDialog_QBaseHeightForWidth(const QFileDialog* self, int param1);
QTLIBC_API bool QFileDialog_HasHeightForWidth(const QFileDialog* self);
QTLIBC_API void QFileDialog_OnHasHeightForWidth(const QFileDialog* self, intptr_t slot);
QTLIBC_API bool QFileDialog_QBaseHasHeightForWidth(const QFileDialog* self);
QTLIBC_API QPaintEngine* QFileDialog_PaintEngine(const QFileDialog* self);
QTLIBC_API void QFileDialog_OnPaintEngine(const QFileDialog* self, intptr_t slot);
QTLIBC_API QPaintEngine* QFileDialog_QBasePaintEngine(const QFileDialog* self);
QTLIBC_API bool QFileDialog_Event(QFileDialog* self, QEvent* event);
QTLIBC_API void QFileDialog_OnEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API bool QFileDialog_QBaseEvent(QFileDialog* self, QEvent* event);
QTLIBC_API void QFileDialog_MousePressEvent(QFileDialog* self, QMouseEvent* event);
QTLIBC_API void QFileDialog_OnMousePressEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseMousePressEvent(QFileDialog* self, QMouseEvent* event);
QTLIBC_API void QFileDialog_MouseReleaseEvent(QFileDialog* self, QMouseEvent* event);
QTLIBC_API void QFileDialog_OnMouseReleaseEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseMouseReleaseEvent(QFileDialog* self, QMouseEvent* event);
QTLIBC_API void QFileDialog_MouseDoubleClickEvent(QFileDialog* self, QMouseEvent* event);
QTLIBC_API void QFileDialog_OnMouseDoubleClickEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseMouseDoubleClickEvent(QFileDialog* self, QMouseEvent* event);
QTLIBC_API void QFileDialog_MouseMoveEvent(QFileDialog* self, QMouseEvent* event);
QTLIBC_API void QFileDialog_OnMouseMoveEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseMouseMoveEvent(QFileDialog* self, QMouseEvent* event);
QTLIBC_API void QFileDialog_WheelEvent(QFileDialog* self, QWheelEvent* event);
QTLIBC_API void QFileDialog_OnWheelEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseWheelEvent(QFileDialog* self, QWheelEvent* event);
QTLIBC_API void QFileDialog_KeyReleaseEvent(QFileDialog* self, QKeyEvent* event);
QTLIBC_API void QFileDialog_OnKeyReleaseEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseKeyReleaseEvent(QFileDialog* self, QKeyEvent* event);
QTLIBC_API void QFileDialog_FocusInEvent(QFileDialog* self, QFocusEvent* event);
QTLIBC_API void QFileDialog_OnFocusInEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseFocusInEvent(QFileDialog* self, QFocusEvent* event);
QTLIBC_API void QFileDialog_FocusOutEvent(QFileDialog* self, QFocusEvent* event);
QTLIBC_API void QFileDialog_OnFocusOutEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseFocusOutEvent(QFileDialog* self, QFocusEvent* event);
QTLIBC_API void QFileDialog_EnterEvent(QFileDialog* self, QEnterEvent* event);
QTLIBC_API void QFileDialog_OnEnterEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseEnterEvent(QFileDialog* self, QEnterEvent* event);
QTLIBC_API void QFileDialog_LeaveEvent(QFileDialog* self, QEvent* event);
QTLIBC_API void QFileDialog_OnLeaveEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseLeaveEvent(QFileDialog* self, QEvent* event);
QTLIBC_API void QFileDialog_PaintEvent(QFileDialog* self, QPaintEvent* event);
QTLIBC_API void QFileDialog_OnPaintEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBasePaintEvent(QFileDialog* self, QPaintEvent* event);
QTLIBC_API void QFileDialog_MoveEvent(QFileDialog* self, QMoveEvent* event);
QTLIBC_API void QFileDialog_OnMoveEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseMoveEvent(QFileDialog* self, QMoveEvent* event);
QTLIBC_API void QFileDialog_TabletEvent(QFileDialog* self, QTabletEvent* event);
QTLIBC_API void QFileDialog_OnTabletEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseTabletEvent(QFileDialog* self, QTabletEvent* event);
QTLIBC_API void QFileDialog_ActionEvent(QFileDialog* self, QActionEvent* event);
QTLIBC_API void QFileDialog_OnActionEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseActionEvent(QFileDialog* self, QActionEvent* event);
QTLIBC_API void QFileDialog_DragEnterEvent(QFileDialog* self, QDragEnterEvent* event);
QTLIBC_API void QFileDialog_OnDragEnterEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseDragEnterEvent(QFileDialog* self, QDragEnterEvent* event);
QTLIBC_API void QFileDialog_DragMoveEvent(QFileDialog* self, QDragMoveEvent* event);
QTLIBC_API void QFileDialog_OnDragMoveEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseDragMoveEvent(QFileDialog* self, QDragMoveEvent* event);
QTLIBC_API void QFileDialog_DragLeaveEvent(QFileDialog* self, QDragLeaveEvent* event);
QTLIBC_API void QFileDialog_OnDragLeaveEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseDragLeaveEvent(QFileDialog* self, QDragLeaveEvent* event);
QTLIBC_API void QFileDialog_DropEvent(QFileDialog* self, QDropEvent* event);
QTLIBC_API void QFileDialog_OnDropEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseDropEvent(QFileDialog* self, QDropEvent* event);
QTLIBC_API void QFileDialog_HideEvent(QFileDialog* self, QHideEvent* event);
QTLIBC_API void QFileDialog_OnHideEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseHideEvent(QFileDialog* self, QHideEvent* event);
QTLIBC_API bool QFileDialog_NativeEvent(QFileDialog* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QFileDialog_OnNativeEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API bool QFileDialog_QBaseNativeEvent(QFileDialog* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QFileDialog_InputMethodEvent(QFileDialog* self, QInputMethodEvent* param1);
QTLIBC_API void QFileDialog_OnInputMethodEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseInputMethodEvent(QFileDialog* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QFileDialog_InputMethodQuery(const QFileDialog* self, int param1);
QTLIBC_API void QFileDialog_OnInputMethodQuery(const QFileDialog* self, intptr_t slot);
QTLIBC_API QVariant* QFileDialog_QBaseInputMethodQuery(const QFileDialog* self, int param1);
QTLIBC_API bool QFileDialog_FocusNextPrevChild(QFileDialog* self, bool next);
QTLIBC_API void QFileDialog_OnFocusNextPrevChild(QFileDialog* self, intptr_t slot);
QTLIBC_API bool QFileDialog_QBaseFocusNextPrevChild(QFileDialog* self, bool next);
QTLIBC_API void QFileDialog_TimerEvent(QFileDialog* self, QTimerEvent* event);
QTLIBC_API void QFileDialog_OnTimerEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseTimerEvent(QFileDialog* self, QTimerEvent* event);
QTLIBC_API void QFileDialog_ChildEvent(QFileDialog* self, QChildEvent* event);
QTLIBC_API void QFileDialog_OnChildEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseChildEvent(QFileDialog* self, QChildEvent* event);
QTLIBC_API void QFileDialog_CustomEvent(QFileDialog* self, QEvent* event);
QTLIBC_API void QFileDialog_OnCustomEvent(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseCustomEvent(QFileDialog* self, QEvent* event);
QTLIBC_API void QFileDialog_ConnectNotify(QFileDialog* self, QMetaMethod* signal);
QTLIBC_API void QFileDialog_OnConnectNotify(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseConnectNotify(QFileDialog* self, QMetaMethod* signal);
QTLIBC_API void QFileDialog_DisconnectNotify(QFileDialog* self, QMetaMethod* signal);
QTLIBC_API void QFileDialog_OnDisconnectNotify(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseDisconnectNotify(QFileDialog* self, QMetaMethod* signal);
QTLIBC_API int QFileDialog_Metric(const QFileDialog* self, int param1);
QTLIBC_API void QFileDialog_OnMetric(const QFileDialog* self, intptr_t slot);
QTLIBC_API int QFileDialog_QBaseMetric(const QFileDialog* self, int param1);
QTLIBC_API void QFileDialog_InitPainter(const QFileDialog* self, QPainter* painter);
QTLIBC_API void QFileDialog_OnInitPainter(const QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseInitPainter(const QFileDialog* self, QPainter* painter);
QTLIBC_API QPaintDevice* QFileDialog_Redirected(const QFileDialog* self, QPoint* offset);
QTLIBC_API void QFileDialog_OnRedirected(const QFileDialog* self, intptr_t slot);
QTLIBC_API QPaintDevice* QFileDialog_QBaseRedirected(const QFileDialog* self, QPoint* offset);
QTLIBC_API QPainter* QFileDialog_SharedPainter(const QFileDialog* self);
QTLIBC_API void QFileDialog_OnSharedPainter(const QFileDialog* self, intptr_t slot);
QTLIBC_API QPainter* QFileDialog_QBaseSharedPainter(const QFileDialog* self);
QTLIBC_API void QFileDialog_AdjustPosition(QFileDialog* self, QWidget* param1);
QTLIBC_API void QFileDialog_OnAdjustPosition(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseAdjustPosition(QFileDialog* self, QWidget* param1);
QTLIBC_API void QFileDialog_UpdateMicroFocus(QFileDialog* self);
QTLIBC_API void QFileDialog_OnUpdateMicroFocus(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseUpdateMicroFocus(QFileDialog* self);
QTLIBC_API void QFileDialog_Create(QFileDialog* self);
QTLIBC_API void QFileDialog_OnCreate(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseCreate(QFileDialog* self);
QTLIBC_API void QFileDialog_Destroy(QFileDialog* self);
QTLIBC_API void QFileDialog_OnDestroy(QFileDialog* self, intptr_t slot);
QTLIBC_API void QFileDialog_QBaseDestroy(QFileDialog* self);
QTLIBC_API bool QFileDialog_FocusNextChild(QFileDialog* self);
QTLIBC_API void QFileDialog_OnFocusNextChild(QFileDialog* self, intptr_t slot);
QTLIBC_API bool QFileDialog_QBaseFocusNextChild(QFileDialog* self);
QTLIBC_API bool QFileDialog_FocusPreviousChild(QFileDialog* self);
QTLIBC_API void QFileDialog_OnFocusPreviousChild(QFileDialog* self, intptr_t slot);
QTLIBC_API bool QFileDialog_QBaseFocusPreviousChild(QFileDialog* self);
QTLIBC_API QObject* QFileDialog_Sender(const QFileDialog* self);
QTLIBC_API void QFileDialog_OnSender(const QFileDialog* self, intptr_t slot);
QTLIBC_API QObject* QFileDialog_QBaseSender(const QFileDialog* self);
QTLIBC_API int QFileDialog_SenderSignalIndex(const QFileDialog* self);
QTLIBC_API void QFileDialog_OnSenderSignalIndex(const QFileDialog* self, intptr_t slot);
QTLIBC_API int QFileDialog_QBaseSenderSignalIndex(const QFileDialog* self);
QTLIBC_API int QFileDialog_Receivers(const QFileDialog* self, const char* signal);
QTLIBC_API void QFileDialog_OnReceivers(const QFileDialog* self, intptr_t slot);
QTLIBC_API int QFileDialog_QBaseReceivers(const QFileDialog* self, const char* signal);
QTLIBC_API bool QFileDialog_IsSignalConnected(const QFileDialog* self, QMetaMethod* signal);
QTLIBC_API void QFileDialog_OnIsSignalConnected(const QFileDialog* self, intptr_t slot);
QTLIBC_API bool QFileDialog_QBaseIsSignalConnected(const QFileDialog* self, QMetaMethod* signal);
QTLIBC_API void QFileDialog_Delete(QFileDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
