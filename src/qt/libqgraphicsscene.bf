using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsScene__ItemIndexMethod
{
	BspTreeIndex = 0,
	NoIndex = -1,
}
[AllowDuplicates]
public enum QGraphicsScene__SceneLayer
{
	ItemLayer = 1,
	BackgroundLayer = 2,
	ForegroundLayer = 4,
	AllLayers = 65535,
}
public struct QGraphicsScene : QObject
{
	[LinkName("QGraphicsScene_new")]
	public static extern QGraphicsScene* QGraphicsScene_new();
	[LinkName("QGraphicsScene_new2")]
	public static extern QGraphicsScene* QGraphicsScene_new2(QRectF* sceneRect);
	[LinkName("QGraphicsScene_new3")]
	public static extern QGraphicsScene* QGraphicsScene_new3(double x, double y, double width, double height);
	[LinkName("QGraphicsScene_new4")]
	public static extern QGraphicsScene* QGraphicsScene_new4(QObject* parent);
	[LinkName("QGraphicsScene_new5")]
	public static extern QGraphicsScene* QGraphicsScene_new5(QRectF* sceneRect, QObject* parent);
	[LinkName("QGraphicsScene_new6")]
	public static extern QGraphicsScene* QGraphicsScene_new6(double x, double y, double width, double height, QObject* parent);
	[LinkName("QGraphicsScene_MetaObject")]
	public static extern QMetaObject* QGraphicsScene_MetaObject(Self* c_this);
	[LinkName("QGraphicsScene_Metacast")]
	public static extern void* QGraphicsScene_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGraphicsScene_Metacall")]
	public static extern int32 QGraphicsScene_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsScene_Tr")]
	public static extern libqt_string QGraphicsScene_Tr(char8[] s);
	[LinkName("QGraphicsScene_SceneRect")]
	public static extern QRectF QGraphicsScene_SceneRect(Self* c_this);
	[LinkName("QGraphicsScene_Width")]
	public static extern double QGraphicsScene_Width(Self* c_this);
	[LinkName("QGraphicsScene_Height")]
	public static extern double QGraphicsScene_Height(Self* c_this);
	[LinkName("QGraphicsScene_SetSceneRect")]
	public static extern void QGraphicsScene_SetSceneRect(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsScene_SetSceneRect2")]
	public static extern void QGraphicsScene_SetSceneRect2(Self* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsScene_Render")]
	public static extern void QGraphicsScene_Render(Self* c_this, QPainter* painter);
	[LinkName("QGraphicsScene_ItemIndexMethod")]
	public static extern int64 QGraphicsScene_ItemIndexMethod(Self* c_this);
	[LinkName("QGraphicsScene_SetItemIndexMethod")]
	public static extern void QGraphicsScene_SetItemIndexMethod(Self* c_this, int64 method);
	[LinkName("QGraphicsScene_BspTreeDepth")]
	public static extern int32 QGraphicsScene_BspTreeDepth(Self* c_this);
	[LinkName("QGraphicsScene_SetBspTreeDepth")]
	public static extern void QGraphicsScene_SetBspTreeDepth(Self* c_this, int32 depth);
	[LinkName("QGraphicsScene_ItemsBoundingRect")]
	public static extern QRectF QGraphicsScene_ItemsBoundingRect(Self* c_this);
	[LinkName("QGraphicsScene_Items")]
	public static extern QGraphicsItem*[] QGraphicsScene_Items(Self* c_this);
	[LinkName("QGraphicsScene_ItemsWithPos")]
	public static extern QGraphicsItem*[] QGraphicsScene_ItemsWithPos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsScene_ItemsWithRect")]
	public static extern QGraphicsItem*[] QGraphicsScene_ItemsWithRect(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsScene_ItemsWithPath")]
	public static extern QGraphicsItem*[] QGraphicsScene_ItemsWithPath(Self* c_this, QPainterPath* path);
	[LinkName("QGraphicsScene_Items2")]
	public static extern QGraphicsItem*[] QGraphicsScene_Items2(Self* c_this, double x, double y, double w, double h, int64 mode, int64 order);
	[LinkName("QGraphicsScene_CollidingItems")]
	public static extern QGraphicsItem*[] QGraphicsScene_CollidingItems(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsScene_ItemAt")]
	public static extern QGraphicsItem* QGraphicsScene_ItemAt(Self* c_this, QPointF* pos, QTransform* deviceTransform);
	[LinkName("QGraphicsScene_ItemAt2")]
	public static extern QGraphicsItem* QGraphicsScene_ItemAt2(Self* c_this, double x, double y, QTransform* deviceTransform);
	[LinkName("QGraphicsScene_SelectedItems")]
	public static extern QGraphicsItem*[] QGraphicsScene_SelectedItems(Self* c_this);
	[LinkName("QGraphicsScene_SelectionArea")]
	public static extern QPainterPath QGraphicsScene_SelectionArea(Self* c_this);
	[LinkName("QGraphicsScene_SetSelectionArea")]
	public static extern void QGraphicsScene_SetSelectionArea(Self* c_this, QPainterPath* path, QTransform* deviceTransform);
	[LinkName("QGraphicsScene_SetSelectionAreaWithPath")]
	public static extern void QGraphicsScene_SetSelectionAreaWithPath(Self* c_this, QPainterPath* path);
	[LinkName("QGraphicsScene_CreateItemGroup")]
	public static extern QGraphicsItemGroup* QGraphicsScene_CreateItemGroup(Self* c_this, QGraphicsItem*[] items);
	[LinkName("QGraphicsScene_DestroyItemGroup")]
	public static extern void QGraphicsScene_DestroyItemGroup(Self* c_this, QGraphicsItemGroup* group);
	[LinkName("QGraphicsScene_AddItem")]
	public static extern void QGraphicsScene_AddItem(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsScene_AddEllipse")]
	public static extern QGraphicsEllipseItem* QGraphicsScene_AddEllipse(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsScene_AddLine")]
	public static extern QGraphicsLineItem* QGraphicsScene_AddLine(Self* c_this, QLineF* line);
	[LinkName("QGraphicsScene_AddPath")]
	public static extern QGraphicsPathItem* QGraphicsScene_AddPath(Self* c_this, QPainterPath* path);
	[LinkName("QGraphicsScene_AddPixmap")]
	public static extern QGraphicsPixmapItem* QGraphicsScene_AddPixmap(Self* c_this, QPixmap* pixmap);
	[LinkName("QGraphicsScene_AddRect")]
	public static extern QGraphicsRectItem* QGraphicsScene_AddRect(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsScene_AddText")]
	public static extern QGraphicsTextItem* QGraphicsScene_AddText(Self* c_this, libqt_string text);
	[LinkName("QGraphicsScene_AddSimpleText")]
	public static extern QGraphicsSimpleTextItem* QGraphicsScene_AddSimpleText(Self* c_this, libqt_string text);
	[LinkName("QGraphicsScene_AddWidget")]
	public static extern QGraphicsProxyWidget* QGraphicsScene_AddWidget(Self* c_this, QWidget* widget);
	[LinkName("QGraphicsScene_AddEllipse2")]
	public static extern QGraphicsEllipseItem* QGraphicsScene_AddEllipse2(Self* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsScene_AddLine2")]
	public static extern QGraphicsLineItem* QGraphicsScene_AddLine2(Self* c_this, double x1, double y1, double x2, double y2);
	[LinkName("QGraphicsScene_AddRect2")]
	public static extern QGraphicsRectItem* QGraphicsScene_AddRect2(Self* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsScene_RemoveItem")]
	public static extern void QGraphicsScene_RemoveItem(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsScene_FocusItem")]
	public static extern QGraphicsItem* QGraphicsScene_FocusItem(Self* c_this);
	[LinkName("QGraphicsScene_SetFocusItem")]
	public static extern void QGraphicsScene_SetFocusItem(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsScene_HasFocus")]
	public static extern bool QGraphicsScene_HasFocus(Self* c_this);
	[LinkName("QGraphicsScene_SetFocus")]
	public static extern void QGraphicsScene_SetFocus(Self* c_this);
	[LinkName("QGraphicsScene_ClearFocus")]
	public static extern void QGraphicsScene_ClearFocus(Self* c_this);
	[LinkName("QGraphicsScene_SetStickyFocus")]
	public static extern void QGraphicsScene_SetStickyFocus(Self* c_this, bool enabled);
	[LinkName("QGraphicsScene_StickyFocus")]
	public static extern bool QGraphicsScene_StickyFocus(Self* c_this);
	[LinkName("QGraphicsScene_MouseGrabberItem")]
	public static extern QGraphicsItem* QGraphicsScene_MouseGrabberItem(Self* c_this);
	[LinkName("QGraphicsScene_BackgroundBrush")]
	public static extern QBrush QGraphicsScene_BackgroundBrush(Self* c_this);
	[LinkName("QGraphicsScene_SetBackgroundBrush")]
	public static extern void QGraphicsScene_SetBackgroundBrush(Self* c_this, QBrush* brush);
	[LinkName("QGraphicsScene_ForegroundBrush")]
	public static extern QBrush QGraphicsScene_ForegroundBrush(Self* c_this);
	[LinkName("QGraphicsScene_SetForegroundBrush")]
	public static extern void QGraphicsScene_SetForegroundBrush(Self* c_this, QBrush* brush);
	[LinkName("QGraphicsScene_InputMethodQuery")]
	public static extern QVariant QGraphicsScene_InputMethodQuery(Self* c_this, int64 query);
	[LinkName("QGraphicsScene_Views")]
	public static extern QGraphicsView*[] QGraphicsScene_Views(Self* c_this);
	[LinkName("QGraphicsScene_Update")]
	public static extern void QGraphicsScene_Update(Self* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsScene_Invalidate")]
	public static extern void QGraphicsScene_Invalidate(Self* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsScene_Style")]
	public static extern QStyle* QGraphicsScene_Style(Self* c_this);
	[LinkName("QGraphicsScene_SetStyle")]
	public static extern void QGraphicsScene_SetStyle(Self* c_this, QStyle* style);
	[LinkName("QGraphicsScene_Font")]
	public static extern QFont QGraphicsScene_Font(Self* c_this);
	[LinkName("QGraphicsScene_SetFont")]
	public static extern void QGraphicsScene_SetFont(Self* c_this, QFont* font);
	[LinkName("QGraphicsScene_Palette")]
	public static extern QPalette QGraphicsScene_Palette(Self* c_this);
	[LinkName("QGraphicsScene_SetPalette")]
	public static extern void QGraphicsScene_SetPalette(Self* c_this, QPalette* palette);
	[LinkName("QGraphicsScene_IsActive")]
	public static extern bool QGraphicsScene_IsActive(Self* c_this);
	[LinkName("QGraphicsScene_ActivePanel")]
	public static extern QGraphicsItem* QGraphicsScene_ActivePanel(Self* c_this);
	[LinkName("QGraphicsScene_SetActivePanel")]
	public static extern void QGraphicsScene_SetActivePanel(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsScene_ActiveWindow")]
	public static extern QGraphicsWidget* QGraphicsScene_ActiveWindow(Self* c_this);
	[LinkName("QGraphicsScene_SetActiveWindow")]
	public static extern void QGraphicsScene_SetActiveWindow(Self* c_this, QGraphicsWidget* widget);
	[LinkName("QGraphicsScene_SendEvent")]
	public static extern bool QGraphicsScene_SendEvent(Self* c_this, QGraphicsItem* item, QEvent* event);
	[LinkName("QGraphicsScene_MinimumRenderSize")]
	public static extern double QGraphicsScene_MinimumRenderSize(Self* c_this);
	[LinkName("QGraphicsScene_SetMinimumRenderSize")]
	public static extern void QGraphicsScene_SetMinimumRenderSize(Self* c_this, double minSize);
	[LinkName("QGraphicsScene_FocusOnTouch")]
	public static extern bool QGraphicsScene_FocusOnTouch(Self* c_this);
	[LinkName("QGraphicsScene_SetFocusOnTouch")]
	public static extern void QGraphicsScene_SetFocusOnTouch(Self* c_this, bool enabled);
	[LinkName("QGraphicsScene_Update2")]
	public static extern void QGraphicsScene_Update2(Self* c_this);
	[LinkName("QGraphicsScene_Invalidate2")]
	public static extern void QGraphicsScene_Invalidate2(Self* c_this);
	[LinkName("QGraphicsScene_Advance")]
	public static extern void QGraphicsScene_Advance(Self* c_this);
	[LinkName("QGraphicsScene_ClearSelection")]
	public static extern void QGraphicsScene_ClearSelection(Self* c_this);
	[LinkName("QGraphicsScene_Clear")]
	public static extern void QGraphicsScene_Clear(Self* c_this);
	[LinkName("QGraphicsScene_Event")]
	public static extern bool QGraphicsScene_Event(Self* c_this, QEvent* event);
	[LinkName("QGraphicsScene_EventFilter")]
	public static extern bool QGraphicsScene_EventFilter(Self* c_this, QObject* watched, QEvent* event);
	[LinkName("QGraphicsScene_ContextMenuEvent")]
	public static extern void QGraphicsScene_ContextMenuEvent(Self* c_this, QGraphicsSceneContextMenuEvent* event);
	[LinkName("QGraphicsScene_DragEnterEvent")]
	public static extern void QGraphicsScene_DragEnterEvent(Self* c_this, QGraphicsSceneDragDropEvent* event);
	[LinkName("QGraphicsScene_DragMoveEvent")]
	public static extern void QGraphicsScene_DragMoveEvent(Self* c_this, QGraphicsSceneDragDropEvent* event);
	[LinkName("QGraphicsScene_DragLeaveEvent")]
	public static extern void QGraphicsScene_DragLeaveEvent(Self* c_this, QGraphicsSceneDragDropEvent* event);
	[LinkName("QGraphicsScene_DropEvent")]
	public static extern void QGraphicsScene_DropEvent(Self* c_this, QGraphicsSceneDragDropEvent* event);
	[LinkName("QGraphicsScene_FocusInEvent")]
	public static extern void QGraphicsScene_FocusInEvent(Self* c_this, QFocusEvent* event);
	[LinkName("QGraphicsScene_FocusOutEvent")]
	public static extern void QGraphicsScene_FocusOutEvent(Self* c_this, QFocusEvent* event);
	[LinkName("QGraphicsScene_HelpEvent")]
	public static extern void QGraphicsScene_HelpEvent(Self* c_this, QGraphicsSceneHelpEvent* event);
	[LinkName("QGraphicsScene_KeyPressEvent")]
	public static extern void QGraphicsScene_KeyPressEvent(Self* c_this, QKeyEvent* event);
	[LinkName("QGraphicsScene_KeyReleaseEvent")]
	public static extern void QGraphicsScene_KeyReleaseEvent(Self* c_this, QKeyEvent* event);
	[LinkName("QGraphicsScene_MousePressEvent")]
	public static extern void QGraphicsScene_MousePressEvent(Self* c_this, QGraphicsSceneMouseEvent* event);
	[LinkName("QGraphicsScene_MouseMoveEvent")]
	public static extern void QGraphicsScene_MouseMoveEvent(Self* c_this, QGraphicsSceneMouseEvent* event);
	[LinkName("QGraphicsScene_MouseReleaseEvent")]
	public static extern void QGraphicsScene_MouseReleaseEvent(Self* c_this, QGraphicsSceneMouseEvent* event);
	[LinkName("QGraphicsScene_MouseDoubleClickEvent")]
	public static extern void QGraphicsScene_MouseDoubleClickEvent(Self* c_this, QGraphicsSceneMouseEvent* event);
	[LinkName("QGraphicsScene_WheelEvent")]
	public static extern void QGraphicsScene_WheelEvent(Self* c_this, QGraphicsSceneWheelEvent* event);
	[LinkName("QGraphicsScene_InputMethodEvent")]
	public static extern void QGraphicsScene_InputMethodEvent(Self* c_this, QInputMethodEvent* event);
	[LinkName("QGraphicsScene_DrawBackground")]
	public static extern void QGraphicsScene_DrawBackground(Self* c_this, QPainter* painter, QRectF* rect);
	[LinkName("QGraphicsScene_DrawForeground")]
	public static extern void QGraphicsScene_DrawForeground(Self* c_this, QPainter* painter, QRectF* rect);
	[LinkName("QGraphicsScene_FocusNextPrevChild")]
	public static extern bool QGraphicsScene_FocusNextPrevChild(Self* c_this, bool next);
	[LinkName("QGraphicsScene_Changed")]
	public static extern void QGraphicsScene_Changed(Self* c_this, QRectF[] region);
	[LinkName("QGraphicsScene_SceneRectChanged")]
	public static extern void QGraphicsScene_SceneRectChanged(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsScene_SelectionChanged")]
	public static extern void QGraphicsScene_SelectionChanged(Self* c_this);
	[LinkName("QGraphicsScene_FocusItemChanged")]
	public static extern void QGraphicsScene_FocusItemChanged(Self* c_this, QGraphicsItem* newFocus, QGraphicsItem* oldFocus, int64 reason);
	[LinkName("QGraphicsScene_Tr2")]
	public static extern libqt_string QGraphicsScene_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsScene_Tr3")]
	public static extern libqt_string QGraphicsScene_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QGraphicsScene_Render2")]
	public static extern void QGraphicsScene_Render2(Self* c_this, QPainter* painter, QRectF* target);
	[LinkName("QGraphicsScene_Render3")]
	public static extern void QGraphicsScene_Render3(Self* c_this, QPainter* painter, QRectF* target, QRectF* source);
	[LinkName("QGraphicsScene_Render4")]
	public static extern void QGraphicsScene_Render4(Self* c_this, QPainter* painter, QRectF* target, QRectF* source, int64 aspectRatioMode);
	[LinkName("QGraphicsScene_Items1")]
	public static extern QGraphicsItem*[] QGraphicsScene_Items1(Self* c_this, int64 order);
	[LinkName("QGraphicsScene_Items22")]
	public static extern QGraphicsItem*[] QGraphicsScene_Items22(Self* c_this, QPointF* pos, int64 mode);
	[LinkName("QGraphicsScene_Items3")]
	public static extern QGraphicsItem*[] QGraphicsScene_Items3(Self* c_this, QPointF* pos, int64 mode, int64 order);
	[LinkName("QGraphicsScene_Items4")]
	public static extern QGraphicsItem*[] QGraphicsScene_Items4(Self* c_this, QPointF* pos, int64 mode, int64 order, QTransform* deviceTransform);
	[LinkName("QGraphicsScene_Items23")]
	public static extern QGraphicsItem*[] QGraphicsScene_Items23(Self* c_this, QRectF* rect, int64 mode);
	[LinkName("QGraphicsScene_Items32")]
	public static extern QGraphicsItem*[] QGraphicsScene_Items32(Self* c_this, QRectF* rect, int64 mode, int64 order);
	[LinkName("QGraphicsScene_Items42")]
	public static extern QGraphicsItem*[] QGraphicsScene_Items42(Self* c_this, QRectF* rect, int64 mode, int64 order, QTransform* deviceTransform);
	[LinkName("QGraphicsScene_Items25")]
	public static extern QGraphicsItem*[] QGraphicsScene_Items25(Self* c_this, QPainterPath* path, int64 mode);
	[LinkName("QGraphicsScene_Items34")]
	public static extern QGraphicsItem*[] QGraphicsScene_Items34(Self* c_this, QPainterPath* path, int64 mode, int64 order);
	[LinkName("QGraphicsScene_Items44")]
	public static extern QGraphicsItem*[] QGraphicsScene_Items44(Self* c_this, QPainterPath* path, int64 mode, int64 order, QTransform* deviceTransform);
	[LinkName("QGraphicsScene_Items7")]
	public static extern QGraphicsItem*[] QGraphicsScene_Items7(Self* c_this, double x, double y, double w, double h, int64 mode, int64 order, QTransform* deviceTransform);
	[LinkName("QGraphicsScene_CollidingItems2")]
	public static extern QGraphicsItem*[] QGraphicsScene_CollidingItems2(Self* c_this, QGraphicsItem* item, int64 mode);
	[LinkName("QGraphicsScene_SetSelectionArea2")]
	public static extern void QGraphicsScene_SetSelectionArea2(Self* c_this, QPainterPath* path, int64 selectionOperation);
	[LinkName("QGraphicsScene_SetSelectionArea3")]
	public static extern void QGraphicsScene_SetSelectionArea3(Self* c_this, QPainterPath* path, int64 selectionOperation, int64 mode);
	[LinkName("QGraphicsScene_SetSelectionArea4")]
	public static extern void QGraphicsScene_SetSelectionArea4(Self* c_this, QPainterPath* path, int64 selectionOperation, int64 mode, QTransform* deviceTransform);
	[LinkName("QGraphicsScene_AddEllipse22")]
	public static extern QGraphicsEllipseItem* QGraphicsScene_AddEllipse22(Self* c_this, QRectF* rect, QPen* pen);
	[LinkName("QGraphicsScene_AddEllipse3")]
	public static extern QGraphicsEllipseItem* QGraphicsScene_AddEllipse3(Self* c_this, QRectF* rect, QPen* pen, QBrush* brush);
	[LinkName("QGraphicsScene_AddLine22")]
	public static extern QGraphicsLineItem* QGraphicsScene_AddLine22(Self* c_this, QLineF* line, QPen* pen);
	[LinkName("QGraphicsScene_AddPath2")]
	public static extern QGraphicsPathItem* QGraphicsScene_AddPath2(Self* c_this, QPainterPath* path, QPen* pen);
	[LinkName("QGraphicsScene_AddPath3")]
	public static extern QGraphicsPathItem* QGraphicsScene_AddPath3(Self* c_this, QPainterPath* path, QPen* pen, QBrush* brush);
	[LinkName("QGraphicsScene_AddRect22")]
	public static extern QGraphicsRectItem* QGraphicsScene_AddRect22(Self* c_this, QRectF* rect, QPen* pen);
	[LinkName("QGraphicsScene_AddRect3")]
	public static extern QGraphicsRectItem* QGraphicsScene_AddRect3(Self* c_this, QRectF* rect, QPen* pen, QBrush* brush);
	[LinkName("QGraphicsScene_AddText2")]
	public static extern QGraphicsTextItem* QGraphicsScene_AddText2(Self* c_this, libqt_string text, QFont* font);
	[LinkName("QGraphicsScene_AddSimpleText2")]
	public static extern QGraphicsSimpleTextItem* QGraphicsScene_AddSimpleText2(Self* c_this, libqt_string text, QFont* font);
	[LinkName("QGraphicsScene_AddWidget2")]
	public static extern QGraphicsProxyWidget* QGraphicsScene_AddWidget2(Self* c_this, QWidget* widget, int64 wFlags);
	[LinkName("QGraphicsScene_AddEllipse5")]
	public static extern QGraphicsEllipseItem* QGraphicsScene_AddEllipse5(Self* c_this, double x, double y, double w, double h, QPen* pen);
	[LinkName("QGraphicsScene_AddEllipse6")]
	public static extern QGraphicsEllipseItem* QGraphicsScene_AddEllipse6(Self* c_this, double x, double y, double w, double h, QPen* pen, QBrush* brush);
	[LinkName("QGraphicsScene_AddLine5")]
	public static extern QGraphicsLineItem* QGraphicsScene_AddLine5(Self* c_this, double x1, double y1, double x2, double y2, QPen* pen);
	[LinkName("QGraphicsScene_AddRect5")]
	public static extern QGraphicsRectItem* QGraphicsScene_AddRect5(Self* c_this, double x, double y, double w, double h, QPen* pen);
	[LinkName("QGraphicsScene_AddRect6")]
	public static extern QGraphicsRectItem* QGraphicsScene_AddRect6(Self* c_this, double x, double y, double w, double h, QPen* pen, QBrush* brush);
	[LinkName("QGraphicsScene_SetFocusItem2")]
	public static extern void QGraphicsScene_SetFocusItem2(Self* c_this, QGraphicsItem* item, int64 focusReason);
	[LinkName("QGraphicsScene_SetFocus1")]
	public static extern void QGraphicsScene_SetFocus1(Self* c_this, int64 focusReason);
	[LinkName("QGraphicsScene_Invalidate5")]
	public static extern void QGraphicsScene_Invalidate5(Self* c_this, double x, double y, double w, double h, int64 layers);
	[LinkName("QGraphicsScene_Update1")]
	public static extern void QGraphicsScene_Update1(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsScene_Invalidate1")]
	public static extern void QGraphicsScene_Invalidate1(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsScene_Invalidate22")]
	public static extern void QGraphicsScene_Invalidate22(Self* c_this, QRectF* rect, int64 layers);
}