using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsItem__GraphicsItemFlag
{
	ItemIsMovable = 1,
	ItemIsSelectable = 2,
	ItemIsFocusable = 4,
	ItemClipsToShape = 8,
	ItemClipsChildrenToShape = 16,
	ItemIgnoresTransformations = 32,
	ItemIgnoresParentOpacity = 64,
	ItemDoesntPropagateOpacityToChildren = 128,
	ItemStacksBehindParent = 256,
	ItemUsesExtendedStyleOption = 512,
	ItemHasNoContents = 1024,
	ItemSendsGeometryChanges = 2048,
	ItemAcceptsInputMethod = 4096,
	ItemNegativeZStacksBehindParent = 8192,
	ItemIsPanel = 16384,
	ItemIsFocusScope = 32768,
	ItemSendsScenePositionChanges = 65536,
	ItemStopsClickFocusPropagation = 131072,
	ItemStopsFocusHandling = 262144,
	ItemContainsChildrenInShape = 524288,
}
[AllowDuplicates]
public enum QGraphicsItem__GraphicsItemChange
{
	ItemPositionChange = 0,
	ItemVisibleChange = 2,
	ItemEnabledChange = 3,
	ItemSelectedChange = 4,
	ItemParentChange = 5,
	ItemChildAddedChange = 6,
	ItemChildRemovedChange = 7,
	ItemTransformChange = 8,
	ItemPositionHasChanged = 9,
	ItemTransformHasChanged = 10,
	ItemSceneChange = 11,
	ItemVisibleHasChanged = 12,
	ItemEnabledHasChanged = 13,
	ItemSelectedHasChanged = 14,
	ItemParentHasChanged = 15,
	ItemSceneHasChanged = 16,
	ItemCursorChange = 17,
	ItemCursorHasChanged = 18,
	ItemToolTipChange = 19,
	ItemToolTipHasChanged = 20,
	ItemFlagsChange = 21,
	ItemFlagsHaveChanged = 22,
	ItemZValueChange = 23,
	ItemZValueHasChanged = 24,
	ItemOpacityChange = 25,
	ItemOpacityHasChanged = 26,
	ItemScenePositionHasChanged = 27,
	ItemRotationChange = 28,
	ItemRotationHasChanged = 29,
	ItemScaleChange = 30,
	ItemScaleHasChanged = 31,
	ItemTransformOriginPointChange = 32,
	ItemTransformOriginPointHasChanged = 33,
}
[AllowDuplicates]
public enum QGraphicsItem__CacheMode
{
	NoCache = 0,
	ItemCoordinateCache = 1,
	DeviceCoordinateCache = 2,
}
[AllowDuplicates]
public enum QGraphicsItem__PanelModality
{
	NonModal = 0,
	PanelModal = 1,
	SceneModal = 2,
}
[AllowDuplicates]
public enum QGraphicsItem__
{
	Type = 1,
	UserType = 65536,
}
[AllowDuplicates]
public enum QGraphicsItem__Extension
{
	UserExtension = 2147483648,
}
[AllowDuplicates]
public enum QGraphicsPathItem__
{
	Type = 2,
}
[AllowDuplicates]
public enum QGraphicsRectItem__
{
	Type = 3,
}
[AllowDuplicates]
public enum QGraphicsEllipseItem__
{
	Type = 4,
}
[AllowDuplicates]
public enum QGraphicsPolygonItem__
{
	Type = 5,
}
[AllowDuplicates]
public enum QGraphicsLineItem__
{
	Type = 6,
}
[AllowDuplicates]
public enum QGraphicsPixmapItem__ShapeMode
{
	MaskShape = 0,
	BoundingRectShape = 1,
	HeuristicMaskShape = 2,
}
[AllowDuplicates]
public enum QGraphicsPixmapItem__
{
	Type = 7,
}
[AllowDuplicates]
public enum QGraphicsTextItem__
{
	Type = 8,
}
[AllowDuplicates]
public enum QGraphicsSimpleTextItem__
{
	Type = 9,
}
[AllowDuplicates]
public enum QGraphicsItemGroup__
{
	Type = 10,
}
public struct QGraphicsItem
{
	[LinkName("QGraphicsItem_new")]
	public static extern void* QGraphicsItem_new();
	[LinkName("QGraphicsItem_new2")]
	public static extern void* QGraphicsItem_new2(QGraphicsItem parent);
	[LinkName("QGraphicsItem_Scene")]
	public static extern QGraphicsScene QGraphicsItem_Scene(void* c_this);
	[LinkName("QGraphicsItem_ParentItem")]
	public static extern QGraphicsItem QGraphicsItem_ParentItem(void* c_this);
	[LinkName("QGraphicsItem_TopLevelItem")]
	public static extern QGraphicsItem QGraphicsItem_TopLevelItem(void* c_this);
	[LinkName("QGraphicsItem_ParentObject")]
	public static extern QGraphicsObject QGraphicsItem_ParentObject(void* c_this);
	[LinkName("QGraphicsItem_ParentWidget")]
	public static extern QGraphicsWidget QGraphicsItem_ParentWidget(void* c_this);
	[LinkName("QGraphicsItem_TopLevelWidget")]
	public static extern QGraphicsWidget QGraphicsItem_TopLevelWidget(void* c_this);
	[LinkName("QGraphicsItem_Window")]
	public static extern QGraphicsWidget QGraphicsItem_Window(void* c_this);
	[LinkName("QGraphicsItem_Panel")]
	public static extern QGraphicsItem QGraphicsItem_Panel(void* c_this);
	[LinkName("QGraphicsItem_SetParentItem")]
	public static extern void QGraphicsItem_SetParentItem(void* c_this, QGraphicsItem parent);
	[LinkName("QGraphicsItem_ChildItems")]
	public static extern QGraphicsItem[] QGraphicsItem_ChildItems(void* c_this);
	[LinkName("QGraphicsItem_IsWidget")]
	public static extern bool QGraphicsItem_IsWidget(void* c_this);
	[LinkName("QGraphicsItem_IsWindow")]
	public static extern bool QGraphicsItem_IsWindow(void* c_this);
	[LinkName("QGraphicsItem_IsPanel")]
	public static extern bool QGraphicsItem_IsPanel(void* c_this);
	[LinkName("QGraphicsItem_ToGraphicsObject")]
	public static extern QGraphicsObject QGraphicsItem_ToGraphicsObject(void* c_this);
	[LinkName("QGraphicsItem_ToGraphicsObject2")]
	public static extern QGraphicsObject QGraphicsItem_ToGraphicsObject2(void* c_this);
	[LinkName("QGraphicsItem_Group")]
	public static extern QGraphicsItemGroup QGraphicsItem_Group(void* c_this);
	[LinkName("QGraphicsItem_SetGroup")]
	public static extern void QGraphicsItem_SetGroup(void* c_this, QGraphicsItemGroup group);
	[LinkName("QGraphicsItem_Flags")]
	public static extern int64 QGraphicsItem_Flags(void* c_this);
	[LinkName("QGraphicsItem_SetFlag")]
	public static extern void QGraphicsItem_SetFlag(void* c_this, int64 flag);
	[LinkName("QGraphicsItem_SetFlags")]
	public static extern void QGraphicsItem_SetFlags(void* c_this, int64 flags);
	[LinkName("QGraphicsItem_CacheMode")]
	public static extern int64 QGraphicsItem_CacheMode(void* c_this);
	[LinkName("QGraphicsItem_SetCacheMode")]
	public static extern void QGraphicsItem_SetCacheMode(void* c_this, int64 mode);
	[LinkName("QGraphicsItem_PanelModality")]
	public static extern int64 QGraphicsItem_PanelModality(void* c_this);
	[LinkName("QGraphicsItem_SetPanelModality")]
	public static extern void QGraphicsItem_SetPanelModality(void* c_this, int64 panelModality);
	[LinkName("QGraphicsItem_IsBlockedByModalPanel")]
	public static extern bool QGraphicsItem_IsBlockedByModalPanel(void* c_this);
	[LinkName("QGraphicsItem_ToolTip")]
	public static extern char8[] QGraphicsItem_ToolTip(void* c_this);
	[LinkName("QGraphicsItem_SetToolTip")]
	public static extern void QGraphicsItem_SetToolTip(void* c_this, char8[] toolTip);
	[LinkName("QGraphicsItem_Cursor")]
	public static extern QCursor QGraphicsItem_Cursor(void* c_this);
	[LinkName("QGraphicsItem_SetCursor")]
	public static extern void QGraphicsItem_SetCursor(void* c_this, QCursor cursor);
	[LinkName("QGraphicsItem_HasCursor")]
	public static extern bool QGraphicsItem_HasCursor(void* c_this);
	[LinkName("QGraphicsItem_UnsetCursor")]
	public static extern void QGraphicsItem_UnsetCursor(void* c_this);
	[LinkName("QGraphicsItem_IsVisible")]
	public static extern bool QGraphicsItem_IsVisible(void* c_this);
	[LinkName("QGraphicsItem_IsVisibleTo")]
	public static extern bool QGraphicsItem_IsVisibleTo(void* c_this, QGraphicsItem parent);
	[LinkName("QGraphicsItem_SetVisible")]
	public static extern void QGraphicsItem_SetVisible(void* c_this, bool visible);
	[LinkName("QGraphicsItem_Hide")]
	public static extern void QGraphicsItem_Hide(void* c_this);
	[LinkName("QGraphicsItem_Show")]
	public static extern void QGraphicsItem_Show(void* c_this);
	[LinkName("QGraphicsItem_IsEnabled")]
	public static extern bool QGraphicsItem_IsEnabled(void* c_this);
	[LinkName("QGraphicsItem_SetEnabled")]
	public static extern void QGraphicsItem_SetEnabled(void* c_this, bool enabled);
	[LinkName("QGraphicsItem_IsSelected")]
	public static extern bool QGraphicsItem_IsSelected(void* c_this);
	[LinkName("QGraphicsItem_SetSelected")]
	public static extern void QGraphicsItem_SetSelected(void* c_this, bool selected);
	[LinkName("QGraphicsItem_AcceptDrops")]
	public static extern bool QGraphicsItem_AcceptDrops(void* c_this);
	[LinkName("QGraphicsItem_SetAcceptDrops")]
	public static extern void QGraphicsItem_SetAcceptDrops(void* c_this, bool on);
	[LinkName("QGraphicsItem_Opacity")]
	public static extern double QGraphicsItem_Opacity(void* c_this);
	[LinkName("QGraphicsItem_EffectiveOpacity")]
	public static extern double QGraphicsItem_EffectiveOpacity(void* c_this);
	[LinkName("QGraphicsItem_SetOpacity")]
	public static extern void QGraphicsItem_SetOpacity(void* c_this, double opacity);
	[LinkName("QGraphicsItem_GraphicsEffect")]
	public static extern QGraphicsEffect QGraphicsItem_GraphicsEffect(void* c_this);
	[LinkName("QGraphicsItem_SetGraphicsEffect")]
	public static extern void QGraphicsItem_SetGraphicsEffect(void* c_this, QGraphicsEffect effect);
	[LinkName("QGraphicsItem_AcceptedMouseButtons")]
	public static extern int64 QGraphicsItem_AcceptedMouseButtons(void* c_this);
	[LinkName("QGraphicsItem_SetAcceptedMouseButtons")]
	public static extern void QGraphicsItem_SetAcceptedMouseButtons(void* c_this, int64 buttons);
	[LinkName("QGraphicsItem_AcceptHoverEvents")]
	public static extern bool QGraphicsItem_AcceptHoverEvents(void* c_this);
	[LinkName("QGraphicsItem_SetAcceptHoverEvents")]
	public static extern void QGraphicsItem_SetAcceptHoverEvents(void* c_this, bool enabled);
	[LinkName("QGraphicsItem_AcceptTouchEvents")]
	public static extern bool QGraphicsItem_AcceptTouchEvents(void* c_this);
	[LinkName("QGraphicsItem_SetAcceptTouchEvents")]
	public static extern void QGraphicsItem_SetAcceptTouchEvents(void* c_this, bool enabled);
	[LinkName("QGraphicsItem_FiltersChildEvents")]
	public static extern bool QGraphicsItem_FiltersChildEvents(void* c_this);
	[LinkName("QGraphicsItem_SetFiltersChildEvents")]
	public static extern void QGraphicsItem_SetFiltersChildEvents(void* c_this, bool enabled);
	[LinkName("QGraphicsItem_HandlesChildEvents")]
	public static extern bool QGraphicsItem_HandlesChildEvents(void* c_this);
	[LinkName("QGraphicsItem_SetHandlesChildEvents")]
	public static extern void QGraphicsItem_SetHandlesChildEvents(void* c_this, bool enabled);
	[LinkName("QGraphicsItem_IsActive")]
	public static extern bool QGraphicsItem_IsActive(void* c_this);
	[LinkName("QGraphicsItem_SetActive")]
	public static extern void QGraphicsItem_SetActive(void* c_this, bool active);
	[LinkName("QGraphicsItem_HasFocus")]
	public static extern bool QGraphicsItem_HasFocus(void* c_this);
	[LinkName("QGraphicsItem_SetFocus")]
	public static extern void QGraphicsItem_SetFocus(void* c_this);
	[LinkName("QGraphicsItem_ClearFocus")]
	public static extern void QGraphicsItem_ClearFocus(void* c_this);
	[LinkName("QGraphicsItem_FocusProxy")]
	public static extern QGraphicsItem QGraphicsItem_FocusProxy(void* c_this);
	[LinkName("QGraphicsItem_SetFocusProxy")]
	public static extern void QGraphicsItem_SetFocusProxy(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsItem_FocusItem")]
	public static extern QGraphicsItem QGraphicsItem_FocusItem(void* c_this);
	[LinkName("QGraphicsItem_FocusScopeItem")]
	public static extern QGraphicsItem QGraphicsItem_FocusScopeItem(void* c_this);
	[LinkName("QGraphicsItem_GrabMouse")]
	public static extern void QGraphicsItem_GrabMouse(void* c_this);
	[LinkName("QGraphicsItem_UngrabMouse")]
	public static extern void QGraphicsItem_UngrabMouse(void* c_this);
	[LinkName("QGraphicsItem_GrabKeyboard")]
	public static extern void QGraphicsItem_GrabKeyboard(void* c_this);
	[LinkName("QGraphicsItem_UngrabKeyboard")]
	public static extern void QGraphicsItem_UngrabKeyboard(void* c_this);
	[LinkName("QGraphicsItem_Pos")]
	public static extern QPointF QGraphicsItem_Pos(void* c_this);
	[LinkName("QGraphicsItem_X")]
	public static extern double QGraphicsItem_X(void* c_this);
	[LinkName("QGraphicsItem_SetX")]
	public static extern void QGraphicsItem_SetX(void* c_this, double x);
	[LinkName("QGraphicsItem_Y")]
	public static extern double QGraphicsItem_Y(void* c_this);
	[LinkName("QGraphicsItem_SetY")]
	public static extern void QGraphicsItem_SetY(void* c_this, double y);
	[LinkName("QGraphicsItem_ScenePos")]
	public static extern QPointF QGraphicsItem_ScenePos(void* c_this);
	[LinkName("QGraphicsItem_SetPos")]
	public static extern void QGraphicsItem_SetPos(void* c_this, QPointF pos);
	[LinkName("QGraphicsItem_SetPos2")]
	public static extern void QGraphicsItem_SetPos2(void* c_this, double x, double y);
	[LinkName("QGraphicsItem_MoveBy")]
	public static extern void QGraphicsItem_MoveBy(void* c_this, double dx, double dy);
	[LinkName("QGraphicsItem_EnsureVisible")]
	public static extern void QGraphicsItem_EnsureVisible(void* c_this);
	[LinkName("QGraphicsItem_EnsureVisible2")]
	public static extern void QGraphicsItem_EnsureVisible2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_Transform")]
	public static extern QTransform QGraphicsItem_Transform(void* c_this);
	[LinkName("QGraphicsItem_SceneTransform")]
	public static extern QTransform QGraphicsItem_SceneTransform(void* c_this);
	[LinkName("QGraphicsItem_DeviceTransform")]
	public static extern QTransform QGraphicsItem_DeviceTransform(void* c_this, QTransform viewportTransform);
	[LinkName("QGraphicsItem_ItemTransform")]
	public static extern QTransform QGraphicsItem_ItemTransform(void* c_this, QGraphicsItem other);
	[LinkName("QGraphicsItem_SetTransform")]
	public static extern void QGraphicsItem_SetTransform(void* c_this, QTransform matrix);
	[LinkName("QGraphicsItem_ResetTransform")]
	public static extern void QGraphicsItem_ResetTransform(void* c_this);
	[LinkName("QGraphicsItem_SetRotation")]
	public static extern void QGraphicsItem_SetRotation(void* c_this, double angle);
	[LinkName("QGraphicsItem_Rotation")]
	public static extern double QGraphicsItem_Rotation(void* c_this);
	[LinkName("QGraphicsItem_SetScale")]
	public static extern void QGraphicsItem_SetScale(void* c_this, double scale);
	[LinkName("QGraphicsItem_Scale")]
	public static extern double QGraphicsItem_Scale(void* c_this);
	[LinkName("QGraphicsItem_Transformations")]
	public static extern QGraphicsTransform[] QGraphicsItem_Transformations(void* c_this);
	[LinkName("QGraphicsItem_SetTransformations")]
	public static extern void QGraphicsItem_SetTransformations(void* c_this, QGraphicsTransform[] transformations);
	[LinkName("QGraphicsItem_TransformOriginPoint")]
	public static extern QPointF QGraphicsItem_TransformOriginPoint(void* c_this);
	[LinkName("QGraphicsItem_SetTransformOriginPoint")]
	public static extern void QGraphicsItem_SetTransformOriginPoint(void* c_this, QPointF origin);
	[LinkName("QGraphicsItem_SetTransformOriginPoint2")]
	public static extern void QGraphicsItem_SetTransformOriginPoint2(void* c_this, double ax, double ay);
	[LinkName("QGraphicsItem_Advance")]
	public static extern void QGraphicsItem_Advance(void* c_this, int32 phase);
	[LinkName("QGraphicsItem_ZValue")]
	public static extern double QGraphicsItem_ZValue(void* c_this);
	[LinkName("QGraphicsItem_SetZValue")]
	public static extern void QGraphicsItem_SetZValue(void* c_this, double z);
	[LinkName("QGraphicsItem_StackBefore")]
	public static extern void QGraphicsItem_StackBefore(void* c_this, QGraphicsItem sibling);
	[LinkName("QGraphicsItem_BoundingRect")]
	public static extern QRectF QGraphicsItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsItem_ChildrenBoundingRect")]
	public static extern QRectF QGraphicsItem_ChildrenBoundingRect(void* c_this);
	[LinkName("QGraphicsItem_SceneBoundingRect")]
	public static extern QRectF QGraphicsItem_SceneBoundingRect(void* c_this);
	[LinkName("QGraphicsItem_Shape")]
	public static extern QPainterPath QGraphicsItem_Shape(void* c_this);
	[LinkName("QGraphicsItem_IsClipped")]
	public static extern bool QGraphicsItem_IsClipped(void* c_this);
	[LinkName("QGraphicsItem_ClipPath")]
	public static extern QPainterPath QGraphicsItem_ClipPath(void* c_this);
	[LinkName("QGraphicsItem_Contains")]
	public static extern bool QGraphicsItem_Contains(void* c_this, QPointF point);
	[LinkName("QGraphicsItem_CollidesWithItem")]
	public static extern bool QGraphicsItem_CollidesWithItem(void* c_this, QGraphicsItem other, int64 mode);
	[LinkName("QGraphicsItem_CollidesWithPath")]
	public static extern bool QGraphicsItem_CollidesWithPath(void* c_this, QPainterPath path, int64 mode);
	[LinkName("QGraphicsItem_CollidingItems")]
	public static extern QGraphicsItem[] QGraphicsItem_CollidingItems(void* c_this);
	[LinkName("QGraphicsItem_IsObscured")]
	public static extern bool QGraphicsItem_IsObscured(void* c_this);
	[LinkName("QGraphicsItem_IsObscured2")]
	public static extern bool QGraphicsItem_IsObscured2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_IsObscuredBy")]
	public static extern bool QGraphicsItem_IsObscuredBy(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsItem_BoundingRegion")]
	public static extern QRegion QGraphicsItem_BoundingRegion(void* c_this, QTransform itemToDeviceTransform);
	[LinkName("QGraphicsItem_BoundingRegionGranularity")]
	public static extern double QGraphicsItem_BoundingRegionGranularity(void* c_this);
	[LinkName("QGraphicsItem_SetBoundingRegionGranularity")]
	public static extern void QGraphicsItem_SetBoundingRegionGranularity(void* c_this, double granularity);
	[LinkName("QGraphicsItem_Paint")]
	public static extern void QGraphicsItem_Paint(void* c_this, QPainter painter, QStyleOptionGraphicsItem option, QWidget widget);
	[LinkName("QGraphicsItem_Update")]
	public static extern void QGraphicsItem_Update(void* c_this);
	[LinkName("QGraphicsItem_Update2")]
	public static extern void QGraphicsItem_Update2(void* c_this, double x, double y, double width, double height);
	[LinkName("QGraphicsItem_Scroll")]
	public static extern void QGraphicsItem_Scroll(void* c_this, double dx, double dy);
	[LinkName("QGraphicsItem_MapToItem")]
	public static extern QPointF QGraphicsItem_MapToItem(void* c_this, QGraphicsItem item, QPointF point);
	[LinkName("QGraphicsItem_MapToParent")]
	public static extern QPointF QGraphicsItem_MapToParent(void* c_this, QPointF point);
	[LinkName("QGraphicsItem_MapToScene")]
	public static extern QPointF QGraphicsItem_MapToScene(void* c_this, QPointF point);
	[LinkName("QGraphicsItem_MapRectToItem")]
	public static extern QRectF QGraphicsItem_MapRectToItem(void* c_this, QGraphicsItem item, QRectF rect);
	[LinkName("QGraphicsItem_MapRectToParent")]
	public static extern QRectF QGraphicsItem_MapRectToParent(void* c_this, QRectF rect);
	[LinkName("QGraphicsItem_MapRectToScene")]
	public static extern QRectF QGraphicsItem_MapRectToScene(void* c_this, QRectF rect);
	[LinkName("QGraphicsItem_MapToItem4")]
	public static extern QPainterPath QGraphicsItem_MapToItem4(void* c_this, QGraphicsItem item, QPainterPath path);
	[LinkName("QGraphicsItem_MapToParentWithPath")]
	public static extern QPainterPath QGraphicsItem_MapToParentWithPath(void* c_this, QPainterPath path);
	[LinkName("QGraphicsItem_MapToSceneWithPath")]
	public static extern QPainterPath QGraphicsItem_MapToSceneWithPath(void* c_this, QPainterPath path);
	[LinkName("QGraphicsItem_MapFromItem")]
	public static extern QPointF QGraphicsItem_MapFromItem(void* c_this, QGraphicsItem item, QPointF point);
	[LinkName("QGraphicsItem_MapFromParent")]
	public static extern QPointF QGraphicsItem_MapFromParent(void* c_this, QPointF point);
	[LinkName("QGraphicsItem_MapFromScene")]
	public static extern QPointF QGraphicsItem_MapFromScene(void* c_this, QPointF point);
	[LinkName("QGraphicsItem_MapRectFromItem")]
	public static extern QRectF QGraphicsItem_MapRectFromItem(void* c_this, QGraphicsItem item, QRectF rect);
	[LinkName("QGraphicsItem_MapRectFromParent")]
	public static extern QRectF QGraphicsItem_MapRectFromParent(void* c_this, QRectF rect);
	[LinkName("QGraphicsItem_MapRectFromScene")]
	public static extern QRectF QGraphicsItem_MapRectFromScene(void* c_this, QRectF rect);
	[LinkName("QGraphicsItem_MapFromItem4")]
	public static extern QPainterPath QGraphicsItem_MapFromItem4(void* c_this, QGraphicsItem item, QPainterPath path);
	[LinkName("QGraphicsItem_MapFromParentWithPath")]
	public static extern QPainterPath QGraphicsItem_MapFromParentWithPath(void* c_this, QPainterPath path);
	[LinkName("QGraphicsItem_MapFromSceneWithPath")]
	public static extern QPainterPath QGraphicsItem_MapFromSceneWithPath(void* c_this, QPainterPath path);
	[LinkName("QGraphicsItem_MapToItem5")]
	public static extern QPointF QGraphicsItem_MapToItem5(void* c_this, QGraphicsItem item, double x, double y);
	[LinkName("QGraphicsItem_MapToParent2")]
	public static extern QPointF QGraphicsItem_MapToParent2(void* c_this, double x, double y);
	[LinkName("QGraphicsItem_MapToScene2")]
	public static extern QPointF QGraphicsItem_MapToScene2(void* c_this, double x, double y);
	[LinkName("QGraphicsItem_MapRectToItem2")]
	public static extern QRectF QGraphicsItem_MapRectToItem2(void* c_this, QGraphicsItem item, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_MapRectToParent2")]
	public static extern QRectF QGraphicsItem_MapRectToParent2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_MapRectToScene2")]
	public static extern QRectF QGraphicsItem_MapRectToScene2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_MapFromItem5")]
	public static extern QPointF QGraphicsItem_MapFromItem5(void* c_this, QGraphicsItem item, double x, double y);
	[LinkName("QGraphicsItem_MapFromParent2")]
	public static extern QPointF QGraphicsItem_MapFromParent2(void* c_this, double x, double y);
	[LinkName("QGraphicsItem_MapFromScene2")]
	public static extern QPointF QGraphicsItem_MapFromScene2(void* c_this, double x, double y);
	[LinkName("QGraphicsItem_MapRectFromItem2")]
	public static extern QRectF QGraphicsItem_MapRectFromItem2(void* c_this, QGraphicsItem item, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_MapRectFromParent2")]
	public static extern QRectF QGraphicsItem_MapRectFromParent2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_MapRectFromScene2")]
	public static extern QRectF QGraphicsItem_MapRectFromScene2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_IsAncestorOf")]
	public static extern bool QGraphicsItem_IsAncestorOf(void* c_this, QGraphicsItem child);
	[LinkName("QGraphicsItem_CommonAncestorItem")]
	public static extern QGraphicsItem QGraphicsItem_CommonAncestorItem(void* c_this, QGraphicsItem other);
	[LinkName("QGraphicsItem_IsUnderMouse")]
	public static extern bool QGraphicsItem_IsUnderMouse(void* c_this);
	[LinkName("QGraphicsItem_Data")]
	public static extern QVariant QGraphicsItem_Data(void* c_this, int32 key);
	[LinkName("QGraphicsItem_SetData")]
	public static extern void QGraphicsItem_SetData(void* c_this, int32 key, QVariant value);
	[LinkName("QGraphicsItem_InputMethodHints")]
	public static extern int64 QGraphicsItem_InputMethodHints(void* c_this);
	[LinkName("QGraphicsItem_SetInputMethodHints")]
	public static extern void QGraphicsItem_SetInputMethodHints(void* c_this, int64 hints);
	[LinkName("QGraphicsItem_Type")]
	public static extern int32 QGraphicsItem_Type(void* c_this);
	[LinkName("QGraphicsItem_InstallSceneEventFilter")]
	public static extern void QGraphicsItem_InstallSceneEventFilter(void* c_this, QGraphicsItem filterItem);
	[LinkName("QGraphicsItem_RemoveSceneEventFilter")]
	public static extern void QGraphicsItem_RemoveSceneEventFilter(void* c_this, QGraphicsItem filterItem);
	[LinkName("QGraphicsItem_UpdateMicroFocus")]
	public static extern void QGraphicsItem_UpdateMicroFocus(void* c_this);
	[LinkName("QGraphicsItem_SceneEventFilter")]
	public static extern bool QGraphicsItem_SceneEventFilter(void* c_this, QGraphicsItem watched, QEvent event);
	[LinkName("QGraphicsItem_SceneEvent")]
	public static extern bool QGraphicsItem_SceneEvent(void* c_this, QEvent event);
	[LinkName("QGraphicsItem_ContextMenuEvent")]
	public static extern void QGraphicsItem_ContextMenuEvent(void* c_this, QGraphicsSceneContextMenuEvent event);
	[LinkName("QGraphicsItem_DragEnterEvent")]
	public static extern void QGraphicsItem_DragEnterEvent(void* c_this, QGraphicsSceneDragDropEvent event);
	[LinkName("QGraphicsItem_DragLeaveEvent")]
	public static extern void QGraphicsItem_DragLeaveEvent(void* c_this, QGraphicsSceneDragDropEvent event);
	[LinkName("QGraphicsItem_DragMoveEvent")]
	public static extern void QGraphicsItem_DragMoveEvent(void* c_this, QGraphicsSceneDragDropEvent event);
	[LinkName("QGraphicsItem_DropEvent")]
	public static extern void QGraphicsItem_DropEvent(void* c_this, QGraphicsSceneDragDropEvent event);
	[LinkName("QGraphicsItem_FocusInEvent")]
	public static extern void QGraphicsItem_FocusInEvent(void* c_this, QFocusEvent event);
	[LinkName("QGraphicsItem_FocusOutEvent")]
	public static extern void QGraphicsItem_FocusOutEvent(void* c_this, QFocusEvent event);
	[LinkName("QGraphicsItem_HoverEnterEvent")]
	public static extern void QGraphicsItem_HoverEnterEvent(void* c_this, QGraphicsSceneHoverEvent event);
	[LinkName("QGraphicsItem_HoverMoveEvent")]
	public static extern void QGraphicsItem_HoverMoveEvent(void* c_this, QGraphicsSceneHoverEvent event);
	[LinkName("QGraphicsItem_HoverLeaveEvent")]
	public static extern void QGraphicsItem_HoverLeaveEvent(void* c_this, QGraphicsSceneHoverEvent event);
	[LinkName("QGraphicsItem_KeyPressEvent")]
	public static extern void QGraphicsItem_KeyPressEvent(void* c_this, QKeyEvent event);
	[LinkName("QGraphicsItem_KeyReleaseEvent")]
	public static extern void QGraphicsItem_KeyReleaseEvent(void* c_this, QKeyEvent event);
	[LinkName("QGraphicsItem_MousePressEvent")]
	public static extern void QGraphicsItem_MousePressEvent(void* c_this, QGraphicsSceneMouseEvent event);
	[LinkName("QGraphicsItem_MouseMoveEvent")]
	public static extern void QGraphicsItem_MouseMoveEvent(void* c_this, QGraphicsSceneMouseEvent event);
	[LinkName("QGraphicsItem_MouseReleaseEvent")]
	public static extern void QGraphicsItem_MouseReleaseEvent(void* c_this, QGraphicsSceneMouseEvent event);
	[LinkName("QGraphicsItem_MouseDoubleClickEvent")]
	public static extern void QGraphicsItem_MouseDoubleClickEvent(void* c_this, QGraphicsSceneMouseEvent event);
	[LinkName("QGraphicsItem_WheelEvent")]
	public static extern void QGraphicsItem_WheelEvent(void* c_this, QGraphicsSceneWheelEvent event);
	[LinkName("QGraphicsItem_InputMethodEvent")]
	public static extern void QGraphicsItem_InputMethodEvent(void* c_this, QInputMethodEvent event);
	[LinkName("QGraphicsItem_InputMethodQuery")]
	public static extern QVariant QGraphicsItem_InputMethodQuery(void* c_this, int64 query);
	[LinkName("QGraphicsItem_ItemChange")]
	public static extern QVariant QGraphicsItem_ItemChange(void* c_this, int64 change, QVariant value);
	[LinkName("QGraphicsItem_SupportsExtension")]
	public static extern bool QGraphicsItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsItem_SetExtension")]
	public static extern void QGraphicsItem_SetExtension(void* c_this, int64 _extension, QVariant variant);
	[LinkName("QGraphicsItem_Extension")]
	public static extern QVariant QGraphicsItem_Extension(void* c_this, QVariant variant);
	[LinkName("QGraphicsItem_AddToIndex")]
	public static extern void QGraphicsItem_AddToIndex(void* c_this);
	[LinkName("QGraphicsItem_RemoveFromIndex")]
	public static extern void QGraphicsItem_RemoveFromIndex(void* c_this);
	[LinkName("QGraphicsItem_PrepareGeometryChange")]
	public static extern void QGraphicsItem_PrepareGeometryChange(void* c_this);
	[LinkName("QGraphicsItem_SetFlag2")]
	public static extern void QGraphicsItem_SetFlag2(void* c_this, int64 flag, bool enabled);
	[LinkName("QGraphicsItem_SetCacheMode2")]
	public static extern void QGraphicsItem_SetCacheMode2(void* c_this, int64 mode, QSize cacheSize);
	[LinkName("QGraphicsItem_SetFocus1")]
	public static extern void QGraphicsItem_SetFocus1(void* c_this, int64 focusReason);
	[LinkName("QGraphicsItem_EnsureVisible1")]
	public static extern void QGraphicsItem_EnsureVisible1(void* c_this, QRectF rect);
	[LinkName("QGraphicsItem_EnsureVisible22")]
	public static extern void QGraphicsItem_EnsureVisible22(void* c_this, QRectF rect, int32 xmargin);
	[LinkName("QGraphicsItem_EnsureVisible3")]
	public static extern void QGraphicsItem_EnsureVisible3(void* c_this, QRectF rect, int32 xmargin, int32 ymargin);
	[LinkName("QGraphicsItem_EnsureVisible5")]
	public static extern void QGraphicsItem_EnsureVisible5(void* c_this, double x, double y, double w, double h, int32 xmargin);
	[LinkName("QGraphicsItem_EnsureVisible6")]
	public static extern void QGraphicsItem_EnsureVisible6(void* c_this, double x, double y, double w, double h, int32 xmargin, int32 ymargin);
	[LinkName("QGraphicsItem_ItemTransform2")]
	public static extern QTransform QGraphicsItem_ItemTransform2(void* c_this, QGraphicsItem other, bool ok);
	[LinkName("QGraphicsItem_SetTransform2")]
	public static extern void QGraphicsItem_SetTransform2(void* c_this, QTransform matrix, bool combine);
	[LinkName("QGraphicsItem_CollidingItems1")]
	public static extern QGraphicsItem[] QGraphicsItem_CollidingItems1(void* c_this, int64 mode);
	[LinkName("QGraphicsItem_IsObscured1")]
	public static extern bool QGraphicsItem_IsObscured1(void* c_this, QRectF rect);
	[LinkName("QGraphicsItem_Update1")]
	public static extern void QGraphicsItem_Update1(void* c_this, QRectF rect);
	[LinkName("QGraphicsItem_Scroll3")]
	public static extern void QGraphicsItem_Scroll3(void* c_this, double dx, double dy, QRectF rect);
}
public struct QGraphicsObject
{
	[LinkName("QGraphicsObject_new")]
	public static extern void* QGraphicsObject_new();
	[LinkName("QGraphicsObject_new2")]
	public static extern void* QGraphicsObject_new2(QGraphicsItem parent);
	[LinkName("QGraphicsObject_MetaObject")]
	public static extern QMetaObject QGraphicsObject_MetaObject(void* c_this);
	[LinkName("QGraphicsObject_Metacast")]
	public static extern void QGraphicsObject_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsObject_Metacall")]
	public static extern int32 QGraphicsObject_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QGraphicsObject_Tr")]
	public static extern char8[] QGraphicsObject_Tr(char8[] s);
	[LinkName("QGraphicsObject_GrabGesture")]
	public static extern void QGraphicsObject_GrabGesture(void* c_this, int64 typeVal);
	[LinkName("QGraphicsObject_UngrabGesture")]
	public static extern void QGraphicsObject_UngrabGesture(void* c_this, int64 typeVal);
	[LinkName("QGraphicsObject_UpdateMicroFocus")]
	public static extern void QGraphicsObject_UpdateMicroFocus(void* c_this);
	[LinkName("QGraphicsObject_ParentChanged")]
	public static extern void QGraphicsObject_ParentChanged(void* c_this);
	[LinkName("QGraphicsObject_OpacityChanged")]
	public static extern void QGraphicsObject_OpacityChanged(void* c_this);
	[LinkName("QGraphicsObject_VisibleChanged")]
	public static extern void QGraphicsObject_VisibleChanged(void* c_this);
	[LinkName("QGraphicsObject_EnabledChanged")]
	public static extern void QGraphicsObject_EnabledChanged(void* c_this);
	[LinkName("QGraphicsObject_XChanged")]
	public static extern void QGraphicsObject_XChanged(void* c_this);
	[LinkName("QGraphicsObject_YChanged")]
	public static extern void QGraphicsObject_YChanged(void* c_this);
	[LinkName("QGraphicsObject_ZChanged")]
	public static extern void QGraphicsObject_ZChanged(void* c_this);
	[LinkName("QGraphicsObject_RotationChanged")]
	public static extern void QGraphicsObject_RotationChanged(void* c_this);
	[LinkName("QGraphicsObject_ScaleChanged")]
	public static extern void QGraphicsObject_ScaleChanged(void* c_this);
	[LinkName("QGraphicsObject_ChildrenChanged")]
	public static extern void QGraphicsObject_ChildrenChanged(void* c_this);
	[LinkName("QGraphicsObject_WidthChanged")]
	public static extern void QGraphicsObject_WidthChanged(void* c_this);
	[LinkName("QGraphicsObject_HeightChanged")]
	public static extern void QGraphicsObject_HeightChanged(void* c_this);
	[LinkName("QGraphicsObject_Event")]
	public static extern bool QGraphicsObject_Event(void* c_this, QEvent ev);
	[LinkName("QGraphicsObject_Tr2")]
	public static extern char8[] QGraphicsObject_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsObject_Tr3")]
	public static extern char8[] QGraphicsObject_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QGraphicsObject_GrabGesture2")]
	public static extern void QGraphicsObject_GrabGesture2(void* c_this, int64 typeVal, int64 flags);
}
public struct QAbstractGraphicsShapeItem
{
	[LinkName("QAbstractGraphicsShapeItem_new")]
	public static extern void* QAbstractGraphicsShapeItem_new();
	[LinkName("QAbstractGraphicsShapeItem_new2")]
	public static extern void* QAbstractGraphicsShapeItem_new2(QGraphicsItem parent);
	[LinkName("QAbstractGraphicsShapeItem_Pen")]
	public static extern QPen QAbstractGraphicsShapeItem_Pen(void* c_this);
	[LinkName("QAbstractGraphicsShapeItem_SetPen")]
	public static extern void QAbstractGraphicsShapeItem_SetPen(void* c_this, QPen pen);
	[LinkName("QAbstractGraphicsShapeItem_Brush")]
	public static extern QBrush QAbstractGraphicsShapeItem_Brush(void* c_this);
	[LinkName("QAbstractGraphicsShapeItem_SetBrush")]
	public static extern void QAbstractGraphicsShapeItem_SetBrush(void* c_this, QBrush brush);
	[LinkName("QAbstractGraphicsShapeItem_IsObscuredBy")]
	public static extern bool QAbstractGraphicsShapeItem_IsObscuredBy(void* c_this, QGraphicsItem item);
	[LinkName("QAbstractGraphicsShapeItem_OpaqueArea")]
	public static extern QPainterPath QAbstractGraphicsShapeItem_OpaqueArea(void* c_this);
}
public struct QGraphicsPathItem
{
	[LinkName("QGraphicsPathItem_new")]
	public static extern void* QGraphicsPathItem_new();
	[LinkName("QGraphicsPathItem_new2")]
	public static extern void* QGraphicsPathItem_new2(QPainterPath path);
	[LinkName("QGraphicsPathItem_new3")]
	public static extern void* QGraphicsPathItem_new3(QGraphicsItem parent);
	[LinkName("QGraphicsPathItem_new4")]
	public static extern void* QGraphicsPathItem_new4(QPainterPath path, QGraphicsItem parent);
	[LinkName("QGraphicsPathItem_Path")]
	public static extern QPainterPath QGraphicsPathItem_Path(void* c_this);
	[LinkName("QGraphicsPathItem_SetPath")]
	public static extern void QGraphicsPathItem_SetPath(void* c_this, QPainterPath path);
	[LinkName("QGraphicsPathItem_BoundingRect")]
	public static extern QRectF QGraphicsPathItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsPathItem_Shape")]
	public static extern QPainterPath QGraphicsPathItem_Shape(void* c_this);
	[LinkName("QGraphicsPathItem_Contains")]
	public static extern bool QGraphicsPathItem_Contains(void* c_this, QPointF point);
	[LinkName("QGraphicsPathItem_Paint")]
	public static extern void QGraphicsPathItem_Paint(void* c_this, QPainter painter, QStyleOptionGraphicsItem option, QWidget widget);
	[LinkName("QGraphicsPathItem_IsObscuredBy")]
	public static extern bool QGraphicsPathItem_IsObscuredBy(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsPathItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsPathItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsPathItem_Type")]
	public static extern int32 QGraphicsPathItem_Type(void* c_this);
	[LinkName("QGraphicsPathItem_SupportsExtension")]
	public static extern bool QGraphicsPathItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsPathItem_SetExtension")]
	public static extern void QGraphicsPathItem_SetExtension(void* c_this, int64 _extension, QVariant variant);
	[LinkName("QGraphicsPathItem_Extension")]
	public static extern QVariant QGraphicsPathItem_Extension(void* c_this, QVariant variant);
}
public struct QGraphicsRectItem
{
	[LinkName("QGraphicsRectItem_new")]
	public static extern void* QGraphicsRectItem_new();
	[LinkName("QGraphicsRectItem_new2")]
	public static extern void* QGraphicsRectItem_new2(QRectF rect);
	[LinkName("QGraphicsRectItem_new3")]
	public static extern void* QGraphicsRectItem_new3(double x, double y, double w, double h);
	[LinkName("QGraphicsRectItem_new4")]
	public static extern void* QGraphicsRectItem_new4(QGraphicsItem parent);
	[LinkName("QGraphicsRectItem_new5")]
	public static extern void* QGraphicsRectItem_new5(QRectF rect, QGraphicsItem parent);
	[LinkName("QGraphicsRectItem_new6")]
	public static extern void* QGraphicsRectItem_new6(double x, double y, double w, double h, QGraphicsItem parent);
	[LinkName("QGraphicsRectItem_Rect")]
	public static extern QRectF QGraphicsRectItem_Rect(void* c_this);
	[LinkName("QGraphicsRectItem_SetRect")]
	public static extern void QGraphicsRectItem_SetRect(void* c_this, QRectF rect);
	[LinkName("QGraphicsRectItem_SetRect2")]
	public static extern void QGraphicsRectItem_SetRect2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsRectItem_BoundingRect")]
	public static extern QRectF QGraphicsRectItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsRectItem_Shape")]
	public static extern QPainterPath QGraphicsRectItem_Shape(void* c_this);
	[LinkName("QGraphicsRectItem_Contains")]
	public static extern bool QGraphicsRectItem_Contains(void* c_this, QPointF point);
	[LinkName("QGraphicsRectItem_Paint")]
	public static extern void QGraphicsRectItem_Paint(void* c_this, QPainter painter, QStyleOptionGraphicsItem option, QWidget widget);
	[LinkName("QGraphicsRectItem_IsObscuredBy")]
	public static extern bool QGraphicsRectItem_IsObscuredBy(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsRectItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsRectItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsRectItem_Type")]
	public static extern int32 QGraphicsRectItem_Type(void* c_this);
	[LinkName("QGraphicsRectItem_SupportsExtension")]
	public static extern bool QGraphicsRectItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsRectItem_SetExtension")]
	public static extern void QGraphicsRectItem_SetExtension(void* c_this, int64 _extension, QVariant variant);
	[LinkName("QGraphicsRectItem_Extension")]
	public static extern QVariant QGraphicsRectItem_Extension(void* c_this, QVariant variant);
}
public struct QGraphicsEllipseItem
{
	[LinkName("QGraphicsEllipseItem_new")]
	public static extern void* QGraphicsEllipseItem_new();
	[LinkName("QGraphicsEllipseItem_new2")]
	public static extern void* QGraphicsEllipseItem_new2(QRectF rect);
	[LinkName("QGraphicsEllipseItem_new3")]
	public static extern void* QGraphicsEllipseItem_new3(double x, double y, double w, double h);
	[LinkName("QGraphicsEllipseItem_new4")]
	public static extern void* QGraphicsEllipseItem_new4(QGraphicsItem parent);
	[LinkName("QGraphicsEllipseItem_new5")]
	public static extern void* QGraphicsEllipseItem_new5(QRectF rect, QGraphicsItem parent);
	[LinkName("QGraphicsEllipseItem_new6")]
	public static extern void* QGraphicsEllipseItem_new6(double x, double y, double w, double h, QGraphicsItem parent);
	[LinkName("QGraphicsEllipseItem_Rect")]
	public static extern QRectF QGraphicsEllipseItem_Rect(void* c_this);
	[LinkName("QGraphicsEllipseItem_SetRect")]
	public static extern void QGraphicsEllipseItem_SetRect(void* c_this, QRectF rect);
	[LinkName("QGraphicsEllipseItem_SetRect2")]
	public static extern void QGraphicsEllipseItem_SetRect2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsEllipseItem_StartAngle")]
	public static extern int32 QGraphicsEllipseItem_StartAngle(void* c_this);
	[LinkName("QGraphicsEllipseItem_SetStartAngle")]
	public static extern void QGraphicsEllipseItem_SetStartAngle(void* c_this, int32 angle);
	[LinkName("QGraphicsEllipseItem_SpanAngle")]
	public static extern int32 QGraphicsEllipseItem_SpanAngle(void* c_this);
	[LinkName("QGraphicsEllipseItem_SetSpanAngle")]
	public static extern void QGraphicsEllipseItem_SetSpanAngle(void* c_this, int32 angle);
	[LinkName("QGraphicsEllipseItem_BoundingRect")]
	public static extern QRectF QGraphicsEllipseItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsEllipseItem_Shape")]
	public static extern QPainterPath QGraphicsEllipseItem_Shape(void* c_this);
	[LinkName("QGraphicsEllipseItem_Contains")]
	public static extern bool QGraphicsEllipseItem_Contains(void* c_this, QPointF point);
	[LinkName("QGraphicsEllipseItem_Paint")]
	public static extern void QGraphicsEllipseItem_Paint(void* c_this, QPainter painter, QStyleOptionGraphicsItem option, QWidget widget);
	[LinkName("QGraphicsEllipseItem_IsObscuredBy")]
	public static extern bool QGraphicsEllipseItem_IsObscuredBy(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsEllipseItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsEllipseItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsEllipseItem_Type")]
	public static extern int32 QGraphicsEllipseItem_Type(void* c_this);
	[LinkName("QGraphicsEllipseItem_SupportsExtension")]
	public static extern bool QGraphicsEllipseItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsEllipseItem_SetExtension")]
	public static extern void QGraphicsEllipseItem_SetExtension(void* c_this, int64 _extension, QVariant variant);
	[LinkName("QGraphicsEllipseItem_Extension")]
	public static extern QVariant QGraphicsEllipseItem_Extension(void* c_this, QVariant variant);
}
public struct QGraphicsPolygonItem
{
	[LinkName("QGraphicsPolygonItem_new")]
	public static extern void* QGraphicsPolygonItem_new();
	[LinkName("QGraphicsPolygonItem_new2")]
	public static extern void* QGraphicsPolygonItem_new2(QGraphicsItem parent);
	[LinkName("QGraphicsPolygonItem_FillRule")]
	public static extern int64 QGraphicsPolygonItem_FillRule(void* c_this);
	[LinkName("QGraphicsPolygonItem_SetFillRule")]
	public static extern void QGraphicsPolygonItem_SetFillRule(void* c_this, int64 rule);
	[LinkName("QGraphicsPolygonItem_BoundingRect")]
	public static extern QRectF QGraphicsPolygonItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsPolygonItem_Shape")]
	public static extern QPainterPath QGraphicsPolygonItem_Shape(void* c_this);
	[LinkName("QGraphicsPolygonItem_Contains")]
	public static extern bool QGraphicsPolygonItem_Contains(void* c_this, QPointF point);
	[LinkName("QGraphicsPolygonItem_Paint")]
	public static extern void QGraphicsPolygonItem_Paint(void* c_this, QPainter painter, QStyleOptionGraphicsItem option, QWidget widget);
	[LinkName("QGraphicsPolygonItem_IsObscuredBy")]
	public static extern bool QGraphicsPolygonItem_IsObscuredBy(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsPolygonItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsPolygonItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsPolygonItem_Type")]
	public static extern int32 QGraphicsPolygonItem_Type(void* c_this);
	[LinkName("QGraphicsPolygonItem_SupportsExtension")]
	public static extern bool QGraphicsPolygonItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsPolygonItem_SetExtension")]
	public static extern void QGraphicsPolygonItem_SetExtension(void* c_this, int64 _extension, QVariant variant);
	[LinkName("QGraphicsPolygonItem_Extension")]
	public static extern QVariant QGraphicsPolygonItem_Extension(void* c_this, QVariant variant);
}
public struct QGraphicsLineItem
{
	[LinkName("QGraphicsLineItem_new")]
	public static extern void* QGraphicsLineItem_new();
	[LinkName("QGraphicsLineItem_new2")]
	public static extern void* QGraphicsLineItem_new2(QLineF line);
	[LinkName("QGraphicsLineItem_new3")]
	public static extern void* QGraphicsLineItem_new3(double x1, double y1, double x2, double y2);
	[LinkName("QGraphicsLineItem_new4")]
	public static extern void* QGraphicsLineItem_new4(QGraphicsItem parent);
	[LinkName("QGraphicsLineItem_new5")]
	public static extern void* QGraphicsLineItem_new5(QLineF line, QGraphicsItem parent);
	[LinkName("QGraphicsLineItem_new6")]
	public static extern void* QGraphicsLineItem_new6(double x1, double y1, double x2, double y2, QGraphicsItem parent);
	[LinkName("QGraphicsLineItem_Pen")]
	public static extern QPen QGraphicsLineItem_Pen(void* c_this);
	[LinkName("QGraphicsLineItem_SetPen")]
	public static extern void QGraphicsLineItem_SetPen(void* c_this, QPen pen);
	[LinkName("QGraphicsLineItem_Line")]
	public static extern QLineF QGraphicsLineItem_Line(void* c_this);
	[LinkName("QGraphicsLineItem_SetLine")]
	public static extern void QGraphicsLineItem_SetLine(void* c_this, QLineF line);
	[LinkName("QGraphicsLineItem_SetLine2")]
	public static extern void QGraphicsLineItem_SetLine2(void* c_this, double x1, double y1, double x2, double y2);
	[LinkName("QGraphicsLineItem_BoundingRect")]
	public static extern QRectF QGraphicsLineItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsLineItem_Shape")]
	public static extern QPainterPath QGraphicsLineItem_Shape(void* c_this);
	[LinkName("QGraphicsLineItem_Contains")]
	public static extern bool QGraphicsLineItem_Contains(void* c_this, QPointF point);
	[LinkName("QGraphicsLineItem_Paint")]
	public static extern void QGraphicsLineItem_Paint(void* c_this, QPainter painter, QStyleOptionGraphicsItem option, QWidget widget);
	[LinkName("QGraphicsLineItem_IsObscuredBy")]
	public static extern bool QGraphicsLineItem_IsObscuredBy(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsLineItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsLineItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsLineItem_Type")]
	public static extern int32 QGraphicsLineItem_Type(void* c_this);
	[LinkName("QGraphicsLineItem_SupportsExtension")]
	public static extern bool QGraphicsLineItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsLineItem_SetExtension")]
	public static extern void QGraphicsLineItem_SetExtension(void* c_this, int64 _extension, QVariant variant);
	[LinkName("QGraphicsLineItem_Extension")]
	public static extern QVariant QGraphicsLineItem_Extension(void* c_this, QVariant variant);
}
public struct QGraphicsPixmapItem
{
	[LinkName("QGraphicsPixmapItem_new")]
	public static extern void* QGraphicsPixmapItem_new();
	[LinkName("QGraphicsPixmapItem_new2")]
	public static extern void* QGraphicsPixmapItem_new2(QPixmap pixmap);
	[LinkName("QGraphicsPixmapItem_new3")]
	public static extern void* QGraphicsPixmapItem_new3(QGraphicsItem parent);
	[LinkName("QGraphicsPixmapItem_new4")]
	public static extern void* QGraphicsPixmapItem_new4(QPixmap pixmap, QGraphicsItem parent);
	[LinkName("QGraphicsPixmapItem_Pixmap")]
	public static extern QPixmap QGraphicsPixmapItem_Pixmap(void* c_this);
	[LinkName("QGraphicsPixmapItem_SetPixmap")]
	public static extern void QGraphicsPixmapItem_SetPixmap(void* c_this, QPixmap pixmap);
	[LinkName("QGraphicsPixmapItem_TransformationMode")]
	public static extern int64 QGraphicsPixmapItem_TransformationMode(void* c_this);
	[LinkName("QGraphicsPixmapItem_SetTransformationMode")]
	public static extern void QGraphicsPixmapItem_SetTransformationMode(void* c_this, int64 mode);
	[LinkName("QGraphicsPixmapItem_Offset")]
	public static extern QPointF QGraphicsPixmapItem_Offset(void* c_this);
	[LinkName("QGraphicsPixmapItem_SetOffset")]
	public static extern void QGraphicsPixmapItem_SetOffset(void* c_this, QPointF offset);
	[LinkName("QGraphicsPixmapItem_SetOffset2")]
	public static extern void QGraphicsPixmapItem_SetOffset2(void* c_this, double x, double y);
	[LinkName("QGraphicsPixmapItem_BoundingRect")]
	public static extern QRectF QGraphicsPixmapItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsPixmapItem_Shape")]
	public static extern QPainterPath QGraphicsPixmapItem_Shape(void* c_this);
	[LinkName("QGraphicsPixmapItem_Contains")]
	public static extern bool QGraphicsPixmapItem_Contains(void* c_this, QPointF point);
	[LinkName("QGraphicsPixmapItem_Paint")]
	public static extern void QGraphicsPixmapItem_Paint(void* c_this, QPainter painter, QStyleOptionGraphicsItem option, QWidget widget);
	[LinkName("QGraphicsPixmapItem_IsObscuredBy")]
	public static extern bool QGraphicsPixmapItem_IsObscuredBy(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsPixmapItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsPixmapItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsPixmapItem_Type")]
	public static extern int32 QGraphicsPixmapItem_Type(void* c_this);
	[LinkName("QGraphicsPixmapItem_ShapeMode")]
	public static extern int64 QGraphicsPixmapItem_ShapeMode(void* c_this);
	[LinkName("QGraphicsPixmapItem_SetShapeMode")]
	public static extern void QGraphicsPixmapItem_SetShapeMode(void* c_this, int64 mode);
	[LinkName("QGraphicsPixmapItem_SupportsExtension")]
	public static extern bool QGraphicsPixmapItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsPixmapItem_SetExtension")]
	public static extern void QGraphicsPixmapItem_SetExtension(void* c_this, int64 _extension, QVariant variant);
	[LinkName("QGraphicsPixmapItem_Extension")]
	public static extern QVariant QGraphicsPixmapItem_Extension(void* c_this, QVariant variant);
}
public struct QGraphicsTextItem
{
	[LinkName("QGraphicsTextItem_new")]
	public static extern void* QGraphicsTextItem_new();
	[LinkName("QGraphicsTextItem_new2")]
	public static extern void* QGraphicsTextItem_new2(char8[] text);
	[LinkName("QGraphicsTextItem_new3")]
	public static extern void* QGraphicsTextItem_new3(QGraphicsItem parent);
	[LinkName("QGraphicsTextItem_new4")]
	public static extern void* QGraphicsTextItem_new4(char8[] text, QGraphicsItem parent);
	[LinkName("QGraphicsTextItem_MetaObject")]
	public static extern QMetaObject QGraphicsTextItem_MetaObject(void* c_this);
	[LinkName("QGraphicsTextItem_Metacast")]
	public static extern void QGraphicsTextItem_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsTextItem_Metacall")]
	public static extern int32 QGraphicsTextItem_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QGraphicsTextItem_Tr")]
	public static extern char8[] QGraphicsTextItem_Tr(char8[] s);
	[LinkName("QGraphicsTextItem_ToHtml")]
	public static extern char8[] QGraphicsTextItem_ToHtml(void* c_this);
	[LinkName("QGraphicsTextItem_SetHtml")]
	public static extern void QGraphicsTextItem_SetHtml(void* c_this, char8[] html);
	[LinkName("QGraphicsTextItem_ToPlainText")]
	public static extern char8[] QGraphicsTextItem_ToPlainText(void* c_this);
	[LinkName("QGraphicsTextItem_SetPlainText")]
	public static extern void QGraphicsTextItem_SetPlainText(void* c_this, char8[] text);
	[LinkName("QGraphicsTextItem_Font")]
	public static extern QFont QGraphicsTextItem_Font(void* c_this);
	[LinkName("QGraphicsTextItem_SetFont")]
	public static extern void QGraphicsTextItem_SetFont(void* c_this, QFont font);
	[LinkName("QGraphicsTextItem_SetDefaultTextColor")]
	public static extern void QGraphicsTextItem_SetDefaultTextColor(void* c_this, QColor c);
	[LinkName("QGraphicsTextItem_DefaultTextColor")]
	public static extern QColor QGraphicsTextItem_DefaultTextColor(void* c_this);
	[LinkName("QGraphicsTextItem_BoundingRect")]
	public static extern QRectF QGraphicsTextItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsTextItem_Shape")]
	public static extern QPainterPath QGraphicsTextItem_Shape(void* c_this);
	[LinkName("QGraphicsTextItem_Contains")]
	public static extern bool QGraphicsTextItem_Contains(void* c_this, QPointF point);
	[LinkName("QGraphicsTextItem_Paint")]
	public static extern void QGraphicsTextItem_Paint(void* c_this, QPainter painter, QStyleOptionGraphicsItem option, QWidget widget);
	[LinkName("QGraphicsTextItem_IsObscuredBy")]
	public static extern bool QGraphicsTextItem_IsObscuredBy(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsTextItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsTextItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsTextItem_Type")]
	public static extern int32 QGraphicsTextItem_Type(void* c_this);
	[LinkName("QGraphicsTextItem_SetTextWidth")]
	public static extern void QGraphicsTextItem_SetTextWidth(void* c_this, double width);
	[LinkName("QGraphicsTextItem_TextWidth")]
	public static extern double QGraphicsTextItem_TextWidth(void* c_this);
	[LinkName("QGraphicsTextItem_AdjustSize")]
	public static extern void QGraphicsTextItem_AdjustSize(void* c_this);
	[LinkName("QGraphicsTextItem_SetDocument")]
	public static extern void QGraphicsTextItem_SetDocument(void* c_this, QTextDocument document);
	[LinkName("QGraphicsTextItem_Document")]
	public static extern QTextDocument QGraphicsTextItem_Document(void* c_this);
	[LinkName("QGraphicsTextItem_SetTextInteractionFlags")]
	public static extern void QGraphicsTextItem_SetTextInteractionFlags(void* c_this, int64 flags);
	[LinkName("QGraphicsTextItem_TextInteractionFlags")]
	public static extern int64 QGraphicsTextItem_TextInteractionFlags(void* c_this);
	[LinkName("QGraphicsTextItem_SetTabChangesFocus")]
	public static extern void QGraphicsTextItem_SetTabChangesFocus(void* c_this, bool b);
	[LinkName("QGraphicsTextItem_TabChangesFocus")]
	public static extern bool QGraphicsTextItem_TabChangesFocus(void* c_this);
	[LinkName("QGraphicsTextItem_SetOpenExternalLinks")]
	public static extern void QGraphicsTextItem_SetOpenExternalLinks(void* c_this, bool open);
	[LinkName("QGraphicsTextItem_OpenExternalLinks")]
	public static extern bool QGraphicsTextItem_OpenExternalLinks(void* c_this);
	[LinkName("QGraphicsTextItem_SetTextCursor")]
	public static extern void QGraphicsTextItem_SetTextCursor(void* c_this, QTextCursor cursor);
	[LinkName("QGraphicsTextItem_TextCursor")]
	public static extern QTextCursor QGraphicsTextItem_TextCursor(void* c_this);
	[LinkName("QGraphicsTextItem_LinkActivated")]
	public static extern void QGraphicsTextItem_LinkActivated(void* c_this, char8[] param1);
	[LinkName("QGraphicsTextItem_LinkHovered")]
	public static extern void QGraphicsTextItem_LinkHovered(void* c_this, char8[] param1);
	[LinkName("QGraphicsTextItem_SceneEvent")]
	public static extern bool QGraphicsTextItem_SceneEvent(void* c_this, QEvent event);
	[LinkName("QGraphicsTextItem_MousePressEvent")]
	public static extern void QGraphicsTextItem_MousePressEvent(void* c_this, QGraphicsSceneMouseEvent event);
	[LinkName("QGraphicsTextItem_MouseMoveEvent")]
	public static extern void QGraphicsTextItem_MouseMoveEvent(void* c_this, QGraphicsSceneMouseEvent event);
	[LinkName("QGraphicsTextItem_MouseReleaseEvent")]
	public static extern void QGraphicsTextItem_MouseReleaseEvent(void* c_this, QGraphicsSceneMouseEvent event);
	[LinkName("QGraphicsTextItem_MouseDoubleClickEvent")]
	public static extern void QGraphicsTextItem_MouseDoubleClickEvent(void* c_this, QGraphicsSceneMouseEvent event);
	[LinkName("QGraphicsTextItem_ContextMenuEvent")]
	public static extern void QGraphicsTextItem_ContextMenuEvent(void* c_this, QGraphicsSceneContextMenuEvent event);
	[LinkName("QGraphicsTextItem_KeyPressEvent")]
	public static extern void QGraphicsTextItem_KeyPressEvent(void* c_this, QKeyEvent event);
	[LinkName("QGraphicsTextItem_KeyReleaseEvent")]
	public static extern void QGraphicsTextItem_KeyReleaseEvent(void* c_this, QKeyEvent event);
	[LinkName("QGraphicsTextItem_FocusInEvent")]
	public static extern void QGraphicsTextItem_FocusInEvent(void* c_this, QFocusEvent event);
	[LinkName("QGraphicsTextItem_FocusOutEvent")]
	public static extern void QGraphicsTextItem_FocusOutEvent(void* c_this, QFocusEvent event);
	[LinkName("QGraphicsTextItem_DragEnterEvent")]
	public static extern void QGraphicsTextItem_DragEnterEvent(void* c_this, QGraphicsSceneDragDropEvent event);
	[LinkName("QGraphicsTextItem_DragLeaveEvent")]
	public static extern void QGraphicsTextItem_DragLeaveEvent(void* c_this, QGraphicsSceneDragDropEvent event);
	[LinkName("QGraphicsTextItem_DragMoveEvent")]
	public static extern void QGraphicsTextItem_DragMoveEvent(void* c_this, QGraphicsSceneDragDropEvent event);
	[LinkName("QGraphicsTextItem_DropEvent")]
	public static extern void QGraphicsTextItem_DropEvent(void* c_this, QGraphicsSceneDragDropEvent event);
	[LinkName("QGraphicsTextItem_InputMethodEvent")]
	public static extern void QGraphicsTextItem_InputMethodEvent(void* c_this, QInputMethodEvent event);
	[LinkName("QGraphicsTextItem_HoverEnterEvent")]
	public static extern void QGraphicsTextItem_HoverEnterEvent(void* c_this, QGraphicsSceneHoverEvent event);
	[LinkName("QGraphicsTextItem_HoverMoveEvent")]
	public static extern void QGraphicsTextItem_HoverMoveEvent(void* c_this, QGraphicsSceneHoverEvent event);
	[LinkName("QGraphicsTextItem_HoverLeaveEvent")]
	public static extern void QGraphicsTextItem_HoverLeaveEvent(void* c_this, QGraphicsSceneHoverEvent event);
	[LinkName("QGraphicsTextItem_InputMethodQuery")]
	public static extern QVariant QGraphicsTextItem_InputMethodQuery(void* c_this, int64 query);
	[LinkName("QGraphicsTextItem_SupportsExtension")]
	public static extern bool QGraphicsTextItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsTextItem_SetExtension")]
	public static extern void QGraphicsTextItem_SetExtension(void* c_this, int64 _extension, QVariant variant);
	[LinkName("QGraphicsTextItem_Extension")]
	public static extern QVariant QGraphicsTextItem_Extension(void* c_this, QVariant variant);
	[LinkName("QGraphicsTextItem_Tr2")]
	public static extern char8[] QGraphicsTextItem_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsTextItem_Tr3")]
	public static extern char8[] QGraphicsTextItem_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QGraphicsSimpleTextItem
{
	[LinkName("QGraphicsSimpleTextItem_new")]
	public static extern void* QGraphicsSimpleTextItem_new();
	[LinkName("QGraphicsSimpleTextItem_new2")]
	public static extern void* QGraphicsSimpleTextItem_new2(char8[] text);
	[LinkName("QGraphicsSimpleTextItem_new3")]
	public static extern void* QGraphicsSimpleTextItem_new3(QGraphicsItem parent);
	[LinkName("QGraphicsSimpleTextItem_new4")]
	public static extern void* QGraphicsSimpleTextItem_new4(char8[] text, QGraphicsItem parent);
	[LinkName("QGraphicsSimpleTextItem_SetText")]
	public static extern void QGraphicsSimpleTextItem_SetText(void* c_this, char8[] text);
	[LinkName("QGraphicsSimpleTextItem_Text")]
	public static extern char8[] QGraphicsSimpleTextItem_Text(void* c_this);
	[LinkName("QGraphicsSimpleTextItem_SetFont")]
	public static extern void QGraphicsSimpleTextItem_SetFont(void* c_this, QFont font);
	[LinkName("QGraphicsSimpleTextItem_Font")]
	public static extern QFont QGraphicsSimpleTextItem_Font(void* c_this);
	[LinkName("QGraphicsSimpleTextItem_BoundingRect")]
	public static extern QRectF QGraphicsSimpleTextItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsSimpleTextItem_Shape")]
	public static extern QPainterPath QGraphicsSimpleTextItem_Shape(void* c_this);
	[LinkName("QGraphicsSimpleTextItem_Contains")]
	public static extern bool QGraphicsSimpleTextItem_Contains(void* c_this, QPointF point);
	[LinkName("QGraphicsSimpleTextItem_Paint")]
	public static extern void QGraphicsSimpleTextItem_Paint(void* c_this, QPainter painter, QStyleOptionGraphicsItem option, QWidget widget);
	[LinkName("QGraphicsSimpleTextItem_IsObscuredBy")]
	public static extern bool QGraphicsSimpleTextItem_IsObscuredBy(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsSimpleTextItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsSimpleTextItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsSimpleTextItem_Type")]
	public static extern int32 QGraphicsSimpleTextItem_Type(void* c_this);
	[LinkName("QGraphicsSimpleTextItem_SupportsExtension")]
	public static extern bool QGraphicsSimpleTextItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsSimpleTextItem_SetExtension")]
	public static extern void QGraphicsSimpleTextItem_SetExtension(void* c_this, int64 _extension, QVariant variant);
	[LinkName("QGraphicsSimpleTextItem_Extension")]
	public static extern QVariant QGraphicsSimpleTextItem_Extension(void* c_this, QVariant variant);
}
public struct QGraphicsItemGroup
{
	[LinkName("QGraphicsItemGroup_new")]
	public static extern void* QGraphicsItemGroup_new();
	[LinkName("QGraphicsItemGroup_new2")]
	public static extern void* QGraphicsItemGroup_new2(QGraphicsItem parent);
	[LinkName("QGraphicsItemGroup_AddToGroup")]
	public static extern void QGraphicsItemGroup_AddToGroup(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsItemGroup_RemoveFromGroup")]
	public static extern void QGraphicsItemGroup_RemoveFromGroup(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsItemGroup_BoundingRect")]
	public static extern QRectF QGraphicsItemGroup_BoundingRect(void* c_this);
	[LinkName("QGraphicsItemGroup_Paint")]
	public static extern void QGraphicsItemGroup_Paint(void* c_this, QPainter painter, QStyleOptionGraphicsItem option, QWidget widget);
	[LinkName("QGraphicsItemGroup_IsObscuredBy")]
	public static extern bool QGraphicsItemGroup_IsObscuredBy(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsItemGroup_OpaqueArea")]
	public static extern QPainterPath QGraphicsItemGroup_OpaqueArea(void* c_this);
	[LinkName("QGraphicsItemGroup_Type")]
	public static extern int32 QGraphicsItemGroup_Type(void* c_this);
}