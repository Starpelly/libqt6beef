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
	public static extern QGraphicsItem* QGraphicsItem_new();
	[LinkName("QGraphicsItem_new2")]
	public static extern QGraphicsItem* QGraphicsItem_new2(QGraphicsItem* parent);
	[LinkName("QGraphicsItem_Scene")]
	public static extern QGraphicsScene* QGraphicsItem_Scene(Self* c_this);
	[LinkName("QGraphicsItem_ParentItem")]
	public static extern QGraphicsItem* QGraphicsItem_ParentItem(Self* c_this);
	[LinkName("QGraphicsItem_TopLevelItem")]
	public static extern QGraphicsItem* QGraphicsItem_TopLevelItem(Self* c_this);
	[LinkName("QGraphicsItem_ParentObject")]
	public static extern QGraphicsObject* QGraphicsItem_ParentObject(Self* c_this);
	[LinkName("QGraphicsItem_ParentWidget")]
	public static extern QGraphicsWidget* QGraphicsItem_ParentWidget(Self* c_this);
	[LinkName("QGraphicsItem_TopLevelWidget")]
	public static extern QGraphicsWidget* QGraphicsItem_TopLevelWidget(Self* c_this);
	[LinkName("QGraphicsItem_Window")]
	public static extern QGraphicsWidget* QGraphicsItem_Window(Self* c_this);
	[LinkName("QGraphicsItem_Panel")]
	public static extern QGraphicsItem* QGraphicsItem_Panel(Self* c_this);
	[LinkName("QGraphicsItem_SetParentItem")]
	public static extern void QGraphicsItem_SetParentItem(Self* c_this, QGraphicsItem* parent);
	[LinkName("QGraphicsItem_ChildItems")]
	public static extern QGraphicsItem*[] QGraphicsItem_ChildItems(Self* c_this);
	[LinkName("QGraphicsItem_IsWidget")]
	public static extern bool QGraphicsItem_IsWidget(Self* c_this);
	[LinkName("QGraphicsItem_IsWindow")]
	public static extern bool QGraphicsItem_IsWindow(Self* c_this);
	[LinkName("QGraphicsItem_IsPanel")]
	public static extern bool QGraphicsItem_IsPanel(Self* c_this);
	[LinkName("QGraphicsItem_ToGraphicsObject")]
	public static extern QGraphicsObject* QGraphicsItem_ToGraphicsObject(Self* c_this);
	[LinkName("QGraphicsItem_ToGraphicsObject2")]
	public static extern QGraphicsObject* QGraphicsItem_ToGraphicsObject2(Self* c_this);
	[LinkName("QGraphicsItem_Group")]
	public static extern QGraphicsItemGroup* QGraphicsItem_Group(Self* c_this);
	[LinkName("QGraphicsItem_SetGroup")]
	public static extern void QGraphicsItem_SetGroup(Self* c_this, QGraphicsItemGroup* group);
	[LinkName("QGraphicsItem_Flags")]
	public static extern int64 QGraphicsItem_Flags(Self* c_this);
	[LinkName("QGraphicsItem_SetFlag")]
	public static extern void QGraphicsItem_SetFlag(Self* c_this, int64 flag);
	[LinkName("QGraphicsItem_SetFlags")]
	public static extern void QGraphicsItem_SetFlags(Self* c_this, int64 flags);
	[LinkName("QGraphicsItem_CacheMode")]
	public static extern int64 QGraphicsItem_CacheMode(Self* c_this);
	[LinkName("QGraphicsItem_SetCacheMode")]
	public static extern void QGraphicsItem_SetCacheMode(Self* c_this, int64 mode);
	[LinkName("QGraphicsItem_PanelModality")]
	public static extern int64 QGraphicsItem_PanelModality(Self* c_this);
	[LinkName("QGraphicsItem_SetPanelModality")]
	public static extern void QGraphicsItem_SetPanelModality(Self* c_this, int64 panelModality);
	[LinkName("QGraphicsItem_IsBlockedByModalPanel")]
	public static extern bool QGraphicsItem_IsBlockedByModalPanel(Self* c_this);
	[LinkName("QGraphicsItem_ToolTip")]
	public static extern libqt_string QGraphicsItem_ToolTip(Self* c_this);
	[LinkName("QGraphicsItem_SetToolTip")]
	public static extern void QGraphicsItem_SetToolTip(Self* c_this, libqt_string toolTip);
	[LinkName("QGraphicsItem_Cursor")]
	public static extern QCursor QGraphicsItem_Cursor(Self* c_this);
	[LinkName("QGraphicsItem_SetCursor")]
	public static extern void QGraphicsItem_SetCursor(Self* c_this, QCursor* cursor);
	[LinkName("QGraphicsItem_HasCursor")]
	public static extern bool QGraphicsItem_HasCursor(Self* c_this);
	[LinkName("QGraphicsItem_UnsetCursor")]
	public static extern void QGraphicsItem_UnsetCursor(Self* c_this);
	[LinkName("QGraphicsItem_IsVisible")]
	public static extern bool QGraphicsItem_IsVisible(Self* c_this);
	[LinkName("QGraphicsItem_IsVisibleTo")]
	public static extern bool QGraphicsItem_IsVisibleTo(Self* c_this, QGraphicsItem* parent);
	[LinkName("QGraphicsItem_SetVisible")]
	public static extern void QGraphicsItem_SetVisible(Self* c_this, bool visible);
	[LinkName("QGraphicsItem_Hide")]
	public static extern void QGraphicsItem_Hide(Self* c_this);
	[LinkName("QGraphicsItem_Show")]
	public static extern void QGraphicsItem_Show(Self* c_this);
	[LinkName("QGraphicsItem_IsEnabled")]
	public static extern bool QGraphicsItem_IsEnabled(Self* c_this);
	[LinkName("QGraphicsItem_SetEnabled")]
	public static extern void QGraphicsItem_SetEnabled(Self* c_this, bool enabled);
	[LinkName("QGraphicsItem_IsSelected")]
	public static extern bool QGraphicsItem_IsSelected(Self* c_this);
	[LinkName("QGraphicsItem_SetSelected")]
	public static extern void QGraphicsItem_SetSelected(Self* c_this, bool selected);
	[LinkName("QGraphicsItem_AcceptDrops")]
	public static extern bool QGraphicsItem_AcceptDrops(Self* c_this);
	[LinkName("QGraphicsItem_SetAcceptDrops")]
	public static extern void QGraphicsItem_SetAcceptDrops(Self* c_this, bool on);
	[LinkName("QGraphicsItem_Opacity")]
	public static extern double QGraphicsItem_Opacity(Self* c_this);
	[LinkName("QGraphicsItem_EffectiveOpacity")]
	public static extern double QGraphicsItem_EffectiveOpacity(Self* c_this);
	[LinkName("QGraphicsItem_SetOpacity")]
	public static extern void QGraphicsItem_SetOpacity(Self* c_this, double opacity);
	[LinkName("QGraphicsItem_GraphicsEffect")]
	public static extern QGraphicsEffect* QGraphicsItem_GraphicsEffect(Self* c_this);
	[LinkName("QGraphicsItem_SetGraphicsEffect")]
	public static extern void QGraphicsItem_SetGraphicsEffect(Self* c_this, QGraphicsEffect* effect);
	[LinkName("QGraphicsItem_AcceptedMouseButtons")]
	public static extern int64 QGraphicsItem_AcceptedMouseButtons(Self* c_this);
	[LinkName("QGraphicsItem_SetAcceptedMouseButtons")]
	public static extern void QGraphicsItem_SetAcceptedMouseButtons(Self* c_this, int64 buttons);
	[LinkName("QGraphicsItem_AcceptHoverEvents")]
	public static extern bool QGraphicsItem_AcceptHoverEvents(Self* c_this);
	[LinkName("QGraphicsItem_SetAcceptHoverEvents")]
	public static extern void QGraphicsItem_SetAcceptHoverEvents(Self* c_this, bool enabled);
	[LinkName("QGraphicsItem_AcceptTouchEvents")]
	public static extern bool QGraphicsItem_AcceptTouchEvents(Self* c_this);
	[LinkName("QGraphicsItem_SetAcceptTouchEvents")]
	public static extern void QGraphicsItem_SetAcceptTouchEvents(Self* c_this, bool enabled);
	[LinkName("QGraphicsItem_FiltersChildEvents")]
	public static extern bool QGraphicsItem_FiltersChildEvents(Self* c_this);
	[LinkName("QGraphicsItem_SetFiltersChildEvents")]
	public static extern void QGraphicsItem_SetFiltersChildEvents(Self* c_this, bool enabled);
	[LinkName("QGraphicsItem_HandlesChildEvents")]
	public static extern bool QGraphicsItem_HandlesChildEvents(Self* c_this);
	[LinkName("QGraphicsItem_SetHandlesChildEvents")]
	public static extern void QGraphicsItem_SetHandlesChildEvents(Self* c_this, bool enabled);
	[LinkName("QGraphicsItem_IsActive")]
	public static extern bool QGraphicsItem_IsActive(Self* c_this);
	[LinkName("QGraphicsItem_SetActive")]
	public static extern void QGraphicsItem_SetActive(Self* c_this, bool active);
	[LinkName("QGraphicsItem_HasFocus")]
	public static extern bool QGraphicsItem_HasFocus(Self* c_this);
	[LinkName("QGraphicsItem_SetFocus")]
	public static extern void QGraphicsItem_SetFocus(Self* c_this);
	[LinkName("QGraphicsItem_ClearFocus")]
	public static extern void QGraphicsItem_ClearFocus(Self* c_this);
	[LinkName("QGraphicsItem_FocusProxy")]
	public static extern QGraphicsItem* QGraphicsItem_FocusProxy(Self* c_this);
	[LinkName("QGraphicsItem_SetFocusProxy")]
	public static extern void QGraphicsItem_SetFocusProxy(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsItem_FocusItem")]
	public static extern QGraphicsItem* QGraphicsItem_FocusItem(Self* c_this);
	[LinkName("QGraphicsItem_FocusScopeItem")]
	public static extern QGraphicsItem* QGraphicsItem_FocusScopeItem(Self* c_this);
	[LinkName("QGraphicsItem_GrabMouse")]
	public static extern void QGraphicsItem_GrabMouse(Self* c_this);
	[LinkName("QGraphicsItem_UngrabMouse")]
	public static extern void QGraphicsItem_UngrabMouse(Self* c_this);
	[LinkName("QGraphicsItem_GrabKeyboard")]
	public static extern void QGraphicsItem_GrabKeyboard(Self* c_this);
	[LinkName("QGraphicsItem_UngrabKeyboard")]
	public static extern void QGraphicsItem_UngrabKeyboard(Self* c_this);
	[LinkName("QGraphicsItem_Pos")]
	public static extern QPointF QGraphicsItem_Pos(Self* c_this);
	[LinkName("QGraphicsItem_X")]
	public static extern double QGraphicsItem_X(Self* c_this);
	[LinkName("QGraphicsItem_SetX")]
	public static extern void QGraphicsItem_SetX(Self* c_this, double x);
	[LinkName("QGraphicsItem_Y")]
	public static extern double QGraphicsItem_Y(Self* c_this);
	[LinkName("QGraphicsItem_SetY")]
	public static extern void QGraphicsItem_SetY(Self* c_this, double y);
	[LinkName("QGraphicsItem_ScenePos")]
	public static extern QPointF QGraphicsItem_ScenePos(Self* c_this);
	[LinkName("QGraphicsItem_SetPos")]
	public static extern void QGraphicsItem_SetPos(Self* c_this, QPointF* pos);
	[LinkName("QGraphicsItem_SetPos2")]
	public static extern void QGraphicsItem_SetPos2(Self* c_this, double x, double y);
	[LinkName("QGraphicsItem_MoveBy")]
	public static extern void QGraphicsItem_MoveBy(Self* c_this, double dx, double dy);
	[LinkName("QGraphicsItem_EnsureVisible")]
	public static extern void QGraphicsItem_EnsureVisible(Self* c_this);
	[LinkName("QGraphicsItem_EnsureVisible2")]
	public static extern void QGraphicsItem_EnsureVisible2(Self* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_Transform")]
	public static extern QTransform QGraphicsItem_Transform(Self* c_this);
	[LinkName("QGraphicsItem_SceneTransform")]
	public static extern QTransform QGraphicsItem_SceneTransform(Self* c_this);
	[LinkName("QGraphicsItem_DeviceTransform")]
	public static extern QTransform QGraphicsItem_DeviceTransform(Self* c_this, QTransform* viewportTransform);
	[LinkName("QGraphicsItem_ItemTransform")]
	public static extern QTransform QGraphicsItem_ItemTransform(Self* c_this, QGraphicsItem* other);
	[LinkName("QGraphicsItem_SetTransform")]
	public static extern void QGraphicsItem_SetTransform(Self* c_this, QTransform* matrix);
	[LinkName("QGraphicsItem_ResetTransform")]
	public static extern void QGraphicsItem_ResetTransform(Self* c_this);
	[LinkName("QGraphicsItem_SetRotation")]
	public static extern void QGraphicsItem_SetRotation(Self* c_this, double angle);
	[LinkName("QGraphicsItem_Rotation")]
	public static extern double QGraphicsItem_Rotation(Self* c_this);
	[LinkName("QGraphicsItem_SetScale")]
	public static extern void QGraphicsItem_SetScale(Self* c_this, double scale);
	[LinkName("QGraphicsItem_Scale")]
	public static extern double QGraphicsItem_Scale(Self* c_this);
	[LinkName("QGraphicsItem_Transformations")]
	public static extern QGraphicsTransform*[] QGraphicsItem_Transformations(Self* c_this);
	[LinkName("QGraphicsItem_SetTransformations")]
	public static extern void QGraphicsItem_SetTransformations(Self* c_this, QGraphicsTransform*[] transformations);
	[LinkName("QGraphicsItem_TransformOriginPoint")]
	public static extern QPointF QGraphicsItem_TransformOriginPoint(Self* c_this);
	[LinkName("QGraphicsItem_SetTransformOriginPoint")]
	public static extern void QGraphicsItem_SetTransformOriginPoint(Self* c_this, QPointF* origin);
	[LinkName("QGraphicsItem_SetTransformOriginPoint2")]
	public static extern void QGraphicsItem_SetTransformOriginPoint2(Self* c_this, double ax, double ay);
	[LinkName("QGraphicsItem_Advance")]
	public static extern void QGraphicsItem_Advance(Self* c_this, int32 phase);
	[LinkName("QGraphicsItem_ZValue")]
	public static extern double QGraphicsItem_ZValue(Self* c_this);
	[LinkName("QGraphicsItem_SetZValue")]
	public static extern void QGraphicsItem_SetZValue(Self* c_this, double z);
	[LinkName("QGraphicsItem_StackBefore")]
	public static extern void QGraphicsItem_StackBefore(Self* c_this, QGraphicsItem* sibling);
	[LinkName("QGraphicsItem_BoundingRect")]
	public static extern QRectF QGraphicsItem_BoundingRect(Self* c_this);
	[LinkName("QGraphicsItem_ChildrenBoundingRect")]
	public static extern QRectF QGraphicsItem_ChildrenBoundingRect(Self* c_this);
	[LinkName("QGraphicsItem_SceneBoundingRect")]
	public static extern QRectF QGraphicsItem_SceneBoundingRect(Self* c_this);
	[LinkName("QGraphicsItem_Shape")]
	public static extern QPainterPath QGraphicsItem_Shape(Self* c_this);
	[LinkName("QGraphicsItem_IsClipped")]
	public static extern bool QGraphicsItem_IsClipped(Self* c_this);
	[LinkName("QGraphicsItem_ClipPath")]
	public static extern QPainterPath QGraphicsItem_ClipPath(Self* c_this);
	[LinkName("QGraphicsItem_Contains")]
	public static extern bool QGraphicsItem_Contains(Self* c_this, QPointF* point);
	[LinkName("QGraphicsItem_CollidesWithItem")]
	public static extern bool QGraphicsItem_CollidesWithItem(Self* c_this, QGraphicsItem* other, int64 mode);
	[LinkName("QGraphicsItem_CollidesWithPath")]
	public static extern bool QGraphicsItem_CollidesWithPath(Self* c_this, QPainterPath* path, int64 mode);
	[LinkName("QGraphicsItem_CollidingItems")]
	public static extern QGraphicsItem*[] QGraphicsItem_CollidingItems(Self* c_this);
	[LinkName("QGraphicsItem_IsObscured")]
	public static extern bool QGraphicsItem_IsObscured(Self* c_this);
	[LinkName("QGraphicsItem_IsObscured2")]
	public static extern bool QGraphicsItem_IsObscured2(Self* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_IsObscuredBy")]
	public static extern bool QGraphicsItem_IsObscuredBy(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsItem_OpaqueArea(Self* c_this);
	[LinkName("QGraphicsItem_BoundingRegion")]
	public static extern QRegion QGraphicsItem_BoundingRegion(Self* c_this, QTransform* itemToDeviceTransform);
	[LinkName("QGraphicsItem_BoundingRegionGranularity")]
	public static extern double QGraphicsItem_BoundingRegionGranularity(Self* c_this);
	[LinkName("QGraphicsItem_SetBoundingRegionGranularity")]
	public static extern void QGraphicsItem_SetBoundingRegionGranularity(Self* c_this, double granularity);
	[LinkName("QGraphicsItem_Paint")]
	public static extern void QGraphicsItem_Paint(Self* c_this, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	[LinkName("QGraphicsItem_Update")]
	public static extern void QGraphicsItem_Update(Self* c_this);
	[LinkName("QGraphicsItem_Update2")]
	public static extern void QGraphicsItem_Update2(Self* c_this, double x, double y, double width, double height);
	[LinkName("QGraphicsItem_Scroll")]
	public static extern void QGraphicsItem_Scroll(Self* c_this, double dx, double dy);
	[LinkName("QGraphicsItem_MapToItem")]
	public static extern QPointF QGraphicsItem_MapToItem(Self* c_this, QGraphicsItem* item, QPointF* point);
	[LinkName("QGraphicsItem_MapToParent")]
	public static extern QPointF QGraphicsItem_MapToParent(Self* c_this, QPointF* point);
	[LinkName("QGraphicsItem_MapToScene")]
	public static extern QPointF QGraphicsItem_MapToScene(Self* c_this, QPointF* point);
	[LinkName("QGraphicsItem_MapRectToItem")]
	public static extern QRectF QGraphicsItem_MapRectToItem(Self* c_this, QGraphicsItem* item, QRectF* rect);
	[LinkName("QGraphicsItem_MapRectToParent")]
	public static extern QRectF QGraphicsItem_MapRectToParent(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsItem_MapRectToScene")]
	public static extern QRectF QGraphicsItem_MapRectToScene(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsItem_MapToItem4")]
	public static extern QPainterPath QGraphicsItem_MapToItem4(Self* c_this, QGraphicsItem* item, QPainterPath* path);
	[LinkName("QGraphicsItem_MapToParentWithPath")]
	public static extern QPainterPath QGraphicsItem_MapToParentWithPath(Self* c_this, QPainterPath* path);
	[LinkName("QGraphicsItem_MapToSceneWithPath")]
	public static extern QPainterPath QGraphicsItem_MapToSceneWithPath(Self* c_this, QPainterPath* path);
	[LinkName("QGraphicsItem_MapFromItem")]
	public static extern QPointF QGraphicsItem_MapFromItem(Self* c_this, QGraphicsItem* item, QPointF* point);
	[LinkName("QGraphicsItem_MapFromParent")]
	public static extern QPointF QGraphicsItem_MapFromParent(Self* c_this, QPointF* point);
	[LinkName("QGraphicsItem_MapFromScene")]
	public static extern QPointF QGraphicsItem_MapFromScene(Self* c_this, QPointF* point);
	[LinkName("QGraphicsItem_MapRectFromItem")]
	public static extern QRectF QGraphicsItem_MapRectFromItem(Self* c_this, QGraphicsItem* item, QRectF* rect);
	[LinkName("QGraphicsItem_MapRectFromParent")]
	public static extern QRectF QGraphicsItem_MapRectFromParent(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsItem_MapRectFromScene")]
	public static extern QRectF QGraphicsItem_MapRectFromScene(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsItem_MapFromItem4")]
	public static extern QPainterPath QGraphicsItem_MapFromItem4(Self* c_this, QGraphicsItem* item, QPainterPath* path);
	[LinkName("QGraphicsItem_MapFromParentWithPath")]
	public static extern QPainterPath QGraphicsItem_MapFromParentWithPath(Self* c_this, QPainterPath* path);
	[LinkName("QGraphicsItem_MapFromSceneWithPath")]
	public static extern QPainterPath QGraphicsItem_MapFromSceneWithPath(Self* c_this, QPainterPath* path);
	[LinkName("QGraphicsItem_MapToItem5")]
	public static extern QPointF QGraphicsItem_MapToItem5(Self* c_this, QGraphicsItem* item, double x, double y);
	[LinkName("QGraphicsItem_MapToParent2")]
	public static extern QPointF QGraphicsItem_MapToParent2(Self* c_this, double x, double y);
	[LinkName("QGraphicsItem_MapToScene2")]
	public static extern QPointF QGraphicsItem_MapToScene2(Self* c_this, double x, double y);
	[LinkName("QGraphicsItem_MapRectToItem2")]
	public static extern QRectF QGraphicsItem_MapRectToItem2(Self* c_this, QGraphicsItem* item, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_MapRectToParent2")]
	public static extern QRectF QGraphicsItem_MapRectToParent2(Self* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_MapRectToScene2")]
	public static extern QRectF QGraphicsItem_MapRectToScene2(Self* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_MapFromItem5")]
	public static extern QPointF QGraphicsItem_MapFromItem5(Self* c_this, QGraphicsItem* item, double x, double y);
	[LinkName("QGraphicsItem_MapFromParent2")]
	public static extern QPointF QGraphicsItem_MapFromParent2(Self* c_this, double x, double y);
	[LinkName("QGraphicsItem_MapFromScene2")]
	public static extern QPointF QGraphicsItem_MapFromScene2(Self* c_this, double x, double y);
	[LinkName("QGraphicsItem_MapRectFromItem2")]
	public static extern QRectF QGraphicsItem_MapRectFromItem2(Self* c_this, QGraphicsItem* item, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_MapRectFromParent2")]
	public static extern QRectF QGraphicsItem_MapRectFromParent2(Self* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_MapRectFromScene2")]
	public static extern QRectF QGraphicsItem_MapRectFromScene2(Self* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_IsAncestorOf")]
	public static extern bool QGraphicsItem_IsAncestorOf(Self* c_this, QGraphicsItem* child);
	[LinkName("QGraphicsItem_CommonAncestorItem")]
	public static extern QGraphicsItem* QGraphicsItem_CommonAncestorItem(Self* c_this, QGraphicsItem* other);
	[LinkName("QGraphicsItem_IsUnderMouse")]
	public static extern bool QGraphicsItem_IsUnderMouse(Self* c_this);
	[LinkName("QGraphicsItem_Data")]
	public static extern QVariant QGraphicsItem_Data(Self* c_this, int32 key);
	[LinkName("QGraphicsItem_SetData")]
	public static extern void QGraphicsItem_SetData(Self* c_this, int32 key, QVariant* value);
	[LinkName("QGraphicsItem_InputMethodHints")]
	public static extern int64 QGraphicsItem_InputMethodHints(Self* c_this);
	[LinkName("QGraphicsItem_SetInputMethodHints")]
	public static extern void QGraphicsItem_SetInputMethodHints(Self* c_this, int64 hints);
	[LinkName("QGraphicsItem_Type")]
	public static extern int32 QGraphicsItem_Type(Self* c_this);
	[LinkName("QGraphicsItem_InstallSceneEventFilter")]
	public static extern void QGraphicsItem_InstallSceneEventFilter(Self* c_this, QGraphicsItem* filterItem);
	[LinkName("QGraphicsItem_RemoveSceneEventFilter")]
	public static extern void QGraphicsItem_RemoveSceneEventFilter(Self* c_this, QGraphicsItem* filterItem);
	[LinkName("QGraphicsItem_UpdateMicroFocus")]
	public static extern void QGraphicsItem_UpdateMicroFocus(Self* c_this);
	[LinkName("QGraphicsItem_SceneEventFilter")]
	public static extern bool QGraphicsItem_SceneEventFilter(Self* c_this, QGraphicsItem* watched, QEvent* event);
	[LinkName("QGraphicsItem_SceneEvent")]
	public static extern bool QGraphicsItem_SceneEvent(Self* c_this, QEvent* event);
	[LinkName("QGraphicsItem_ContextMenuEvent")]
	public static extern void QGraphicsItem_ContextMenuEvent(Self* c_this, QGraphicsSceneContextMenuEvent* event);
	[LinkName("QGraphicsItem_DragEnterEvent")]
	public static extern void QGraphicsItem_DragEnterEvent(Self* c_this, QGraphicsSceneDragDropEvent* event);
	[LinkName("QGraphicsItem_DragLeaveEvent")]
	public static extern void QGraphicsItem_DragLeaveEvent(Self* c_this, QGraphicsSceneDragDropEvent* event);
	[LinkName("QGraphicsItem_DragMoveEvent")]
	public static extern void QGraphicsItem_DragMoveEvent(Self* c_this, QGraphicsSceneDragDropEvent* event);
	[LinkName("QGraphicsItem_DropEvent")]
	public static extern void QGraphicsItem_DropEvent(Self* c_this, QGraphicsSceneDragDropEvent* event);
	[LinkName("QGraphicsItem_FocusInEvent")]
	public static extern void QGraphicsItem_FocusInEvent(Self* c_this, QFocusEvent* event);
	[LinkName("QGraphicsItem_FocusOutEvent")]
	public static extern void QGraphicsItem_FocusOutEvent(Self* c_this, QFocusEvent* event);
	[LinkName("QGraphicsItem_HoverEnterEvent")]
	public static extern void QGraphicsItem_HoverEnterEvent(Self* c_this, QGraphicsSceneHoverEvent* event);
	[LinkName("QGraphicsItem_HoverMoveEvent")]
	public static extern void QGraphicsItem_HoverMoveEvent(Self* c_this, QGraphicsSceneHoverEvent* event);
	[LinkName("QGraphicsItem_HoverLeaveEvent")]
	public static extern void QGraphicsItem_HoverLeaveEvent(Self* c_this, QGraphicsSceneHoverEvent* event);
	[LinkName("QGraphicsItem_KeyPressEvent")]
	public static extern void QGraphicsItem_KeyPressEvent(Self* c_this, QKeyEvent* event);
	[LinkName("QGraphicsItem_KeyReleaseEvent")]
	public static extern void QGraphicsItem_KeyReleaseEvent(Self* c_this, QKeyEvent* event);
	[LinkName("QGraphicsItem_MousePressEvent")]
	public static extern void QGraphicsItem_MousePressEvent(Self* c_this, QGraphicsSceneMouseEvent* event);
	[LinkName("QGraphicsItem_MouseMoveEvent")]
	public static extern void QGraphicsItem_MouseMoveEvent(Self* c_this, QGraphicsSceneMouseEvent* event);
	[LinkName("QGraphicsItem_MouseReleaseEvent")]
	public static extern void QGraphicsItem_MouseReleaseEvent(Self* c_this, QGraphicsSceneMouseEvent* event);
	[LinkName("QGraphicsItem_MouseDoubleClickEvent")]
	public static extern void QGraphicsItem_MouseDoubleClickEvent(Self* c_this, QGraphicsSceneMouseEvent* event);
	[LinkName("QGraphicsItem_WheelEvent")]
	public static extern void QGraphicsItem_WheelEvent(Self* c_this, QGraphicsSceneWheelEvent* event);
	[LinkName("QGraphicsItem_InputMethodEvent")]
	public static extern void QGraphicsItem_InputMethodEvent(Self* c_this, QInputMethodEvent* event);
	[LinkName("QGraphicsItem_InputMethodQuery")]
	public static extern QVariant QGraphicsItem_InputMethodQuery(Self* c_this, int64 query);
	[LinkName("QGraphicsItem_ItemChange")]
	public static extern QVariant QGraphicsItem_ItemChange(Self* c_this, int64 change, QVariant* value);
	[LinkName("QGraphicsItem_SupportsExtension")]
	public static extern bool QGraphicsItem_SupportsExtension(Self* c_this, int64 _extension);
	[LinkName("QGraphicsItem_SetExtension")]
	public static extern void QGraphicsItem_SetExtension(Self* c_this, int64 _extension, QVariant* variant);
	[LinkName("QGraphicsItem_Extension")]
	public static extern QVariant QGraphicsItem_Extension(Self* c_this, QVariant* variant);
	[LinkName("QGraphicsItem_AddToIndex")]
	public static extern void QGraphicsItem_AddToIndex(Self* c_this);
	[LinkName("QGraphicsItem_RemoveFromIndex")]
	public static extern void QGraphicsItem_RemoveFromIndex(Self* c_this);
	[LinkName("QGraphicsItem_PrepareGeometryChange")]
	public static extern void QGraphicsItem_PrepareGeometryChange(Self* c_this);
	[LinkName("QGraphicsItem_SetFlag2")]
	public static extern void QGraphicsItem_SetFlag2(Self* c_this, int64 flag, bool enabled);
	[LinkName("QGraphicsItem_SetCacheMode2")]
	public static extern void QGraphicsItem_SetCacheMode2(Self* c_this, int64 mode, QSize* cacheSize);
	[LinkName("QGraphicsItem_SetFocus1")]
	public static extern void QGraphicsItem_SetFocus1(Self* c_this, int64 focusReason);
	[LinkName("QGraphicsItem_EnsureVisible1")]
	public static extern void QGraphicsItem_EnsureVisible1(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsItem_EnsureVisible22")]
	public static extern void QGraphicsItem_EnsureVisible22(Self* c_this, QRectF* rect, int32 xmargin);
	[LinkName("QGraphicsItem_EnsureVisible3")]
	public static extern void QGraphicsItem_EnsureVisible3(Self* c_this, QRectF* rect, int32 xmargin, int32 ymargin);
	[LinkName("QGraphicsItem_EnsureVisible5")]
	public static extern void QGraphicsItem_EnsureVisible5(Self* c_this, double x, double y, double w, double h, int32 xmargin);
	[LinkName("QGraphicsItem_EnsureVisible6")]
	public static extern void QGraphicsItem_EnsureVisible6(Self* c_this, double x, double y, double w, double h, int32 xmargin, int32 ymargin);
	[LinkName("QGraphicsItem_ItemTransform2")]
	public static extern QTransform QGraphicsItem_ItemTransform2(Self* c_this, QGraphicsItem* other, bool* ok);
	[LinkName("QGraphicsItem_SetTransform2")]
	public static extern void QGraphicsItem_SetTransform2(Self* c_this, QTransform* matrix, bool combine);
	[LinkName("QGraphicsItem_CollidingItems1")]
	public static extern QGraphicsItem*[] QGraphicsItem_CollidingItems1(Self* c_this, int64 mode);
	[LinkName("QGraphicsItem_IsObscured1")]
	public static extern bool QGraphicsItem_IsObscured1(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsItem_Update1")]
	public static extern void QGraphicsItem_Update1(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsItem_Scroll3")]
	public static extern void QGraphicsItem_Scroll3(Self* c_this, double dx, double dy, QRectF* rect);
}
public struct QGraphicsObject : QGraphicsItem
{
	[LinkName("QGraphicsObject_new")]
	public static extern QGraphicsObject* QGraphicsObject_new();
	[LinkName("QGraphicsObject_new2")]
	public static extern QGraphicsObject* QGraphicsObject_new2(QGraphicsItem* parent);
	[LinkName("QGraphicsObject_MetaObject")]
	public static extern QMetaObject* QGraphicsObject_MetaObject(Self* c_this);
	[LinkName("QGraphicsObject_Metacast")]
	public static extern void* QGraphicsObject_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGraphicsObject_Metacall")]
	public static extern int32 QGraphicsObject_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsObject_Tr")]
	public static extern libqt_string QGraphicsObject_Tr(char8[] s);
	[LinkName("QGraphicsObject_GrabGesture")]
	public static extern void QGraphicsObject_GrabGesture(Self* c_this, int64 typeVal);
	[LinkName("QGraphicsObject_UngrabGesture")]
	public static extern void QGraphicsObject_UngrabGesture(Self* c_this, int64 typeVal);
	[LinkName("QGraphicsObject_UpdateMicroFocus")]
	public static extern void QGraphicsObject_UpdateMicroFocus(Self* c_this);
	[LinkName("QGraphicsObject_ParentChanged")]
	public static extern void QGraphicsObject_ParentChanged(Self* c_this);
	[LinkName("QGraphicsObject_OpacityChanged")]
	public static extern void QGraphicsObject_OpacityChanged(Self* c_this);
	[LinkName("QGraphicsObject_VisibleChanged")]
	public static extern void QGraphicsObject_VisibleChanged(Self* c_this);
	[LinkName("QGraphicsObject_EnabledChanged")]
	public static extern void QGraphicsObject_EnabledChanged(Self* c_this);
	[LinkName("QGraphicsObject_XChanged")]
	public static extern void QGraphicsObject_XChanged(Self* c_this);
	[LinkName("QGraphicsObject_YChanged")]
	public static extern void QGraphicsObject_YChanged(Self* c_this);
	[LinkName("QGraphicsObject_ZChanged")]
	public static extern void QGraphicsObject_ZChanged(Self* c_this);
	[LinkName("QGraphicsObject_RotationChanged")]
	public static extern void QGraphicsObject_RotationChanged(Self* c_this);
	[LinkName("QGraphicsObject_ScaleChanged")]
	public static extern void QGraphicsObject_ScaleChanged(Self* c_this);
	[LinkName("QGraphicsObject_ChildrenChanged")]
	public static extern void QGraphicsObject_ChildrenChanged(Self* c_this);
	[LinkName("QGraphicsObject_WidthChanged")]
	public static extern void QGraphicsObject_WidthChanged(Self* c_this);
	[LinkName("QGraphicsObject_HeightChanged")]
	public static extern void QGraphicsObject_HeightChanged(Self* c_this);
	[LinkName("QGraphicsObject_Event")]
	public static extern bool QGraphicsObject_Event(Self* c_this, QEvent* ev);
	[LinkName("QGraphicsObject_Tr2")]
	public static extern libqt_string QGraphicsObject_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsObject_Tr3")]
	public static extern libqt_string QGraphicsObject_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QGraphicsObject_GrabGesture2")]
	public static extern void QGraphicsObject_GrabGesture2(Self* c_this, int64 typeVal, int64 flags);
}
public struct QAbstractGraphicsShapeItem : QGraphicsItem
{
	[LinkName("QAbstractGraphicsShapeItem_new")]
	public static extern QAbstractGraphicsShapeItem* QAbstractGraphicsShapeItem_new();
	[LinkName("QAbstractGraphicsShapeItem_new2")]
	public static extern QAbstractGraphicsShapeItem* QAbstractGraphicsShapeItem_new2(QGraphicsItem* parent);
	[LinkName("QAbstractGraphicsShapeItem_Pen")]
	public static extern QPen QAbstractGraphicsShapeItem_Pen(Self* c_this);
	[LinkName("QAbstractGraphicsShapeItem_SetPen")]
	public static extern void QAbstractGraphicsShapeItem_SetPen(Self* c_this, QPen* pen);
	[LinkName("QAbstractGraphicsShapeItem_Brush")]
	public static extern QBrush QAbstractGraphicsShapeItem_Brush(Self* c_this);
	[LinkName("QAbstractGraphicsShapeItem_SetBrush")]
	public static extern void QAbstractGraphicsShapeItem_SetBrush(Self* c_this, QBrush* brush);
	[LinkName("QAbstractGraphicsShapeItem_IsObscuredBy")]
	public static extern bool QAbstractGraphicsShapeItem_IsObscuredBy(Self* c_this, QGraphicsItem* item);
	[LinkName("QAbstractGraphicsShapeItem_OpaqueArea")]
	public static extern QPainterPath QAbstractGraphicsShapeItem_OpaqueArea(Self* c_this);
}
public struct QGraphicsPathItem : QAbstractGraphicsShapeItem
{
	[LinkName("QGraphicsPathItem_new")]
	public static extern QGraphicsPathItem* QGraphicsPathItem_new();
	[LinkName("QGraphicsPathItem_new2")]
	public static extern QGraphicsPathItem* QGraphicsPathItem_new2(QPainterPath* path);
	[LinkName("QGraphicsPathItem_new3")]
	public static extern QGraphicsPathItem* QGraphicsPathItem_new3(QGraphicsItem* parent);
	[LinkName("QGraphicsPathItem_new4")]
	public static extern QGraphicsPathItem* QGraphicsPathItem_new4(QPainterPath* path, QGraphicsItem* parent);
	[LinkName("QGraphicsPathItem_Path")]
	public static extern QPainterPath QGraphicsPathItem_Path(Self* c_this);
	[LinkName("QGraphicsPathItem_SetPath")]
	public static extern void QGraphicsPathItem_SetPath(Self* c_this, QPainterPath* path);
	[LinkName("QGraphicsPathItem_BoundingRect")]
	public static extern QRectF QGraphicsPathItem_BoundingRect(Self* c_this);
	[LinkName("QGraphicsPathItem_Shape")]
	public static extern QPainterPath QGraphicsPathItem_Shape(Self* c_this);
	[LinkName("QGraphicsPathItem_Contains")]
	public static extern bool QGraphicsPathItem_Contains(Self* c_this, QPointF* point);
	[LinkName("QGraphicsPathItem_Paint")]
	public static extern void QGraphicsPathItem_Paint(Self* c_this, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	[LinkName("QGraphicsPathItem_IsObscuredBy")]
	public static extern bool QGraphicsPathItem_IsObscuredBy(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsPathItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsPathItem_OpaqueArea(Self* c_this);
	[LinkName("QGraphicsPathItem_Type")]
	public static extern int32 QGraphicsPathItem_Type(Self* c_this);
	[LinkName("QGraphicsPathItem_SupportsExtension")]
	public static extern bool QGraphicsPathItem_SupportsExtension(Self* c_this, int64 _extension);
	[LinkName("QGraphicsPathItem_SetExtension")]
	public static extern void QGraphicsPathItem_SetExtension(Self* c_this, int64 _extension, QVariant* variant);
	[LinkName("QGraphicsPathItem_Extension")]
	public static extern QVariant QGraphicsPathItem_Extension(Self* c_this, QVariant* variant);
}
public struct QGraphicsRectItem : QAbstractGraphicsShapeItem
{
	[LinkName("QGraphicsRectItem_new")]
	public static extern QGraphicsRectItem* QGraphicsRectItem_new();
	[LinkName("QGraphicsRectItem_new2")]
	public static extern QGraphicsRectItem* QGraphicsRectItem_new2(QRectF* rect);
	[LinkName("QGraphicsRectItem_new3")]
	public static extern QGraphicsRectItem* QGraphicsRectItem_new3(double x, double y, double w, double h);
	[LinkName("QGraphicsRectItem_new4")]
	public static extern QGraphicsRectItem* QGraphicsRectItem_new4(QGraphicsItem* parent);
	[LinkName("QGraphicsRectItem_new5")]
	public static extern QGraphicsRectItem* QGraphicsRectItem_new5(QRectF* rect, QGraphicsItem* parent);
	[LinkName("QGraphicsRectItem_new6")]
	public static extern QGraphicsRectItem* QGraphicsRectItem_new6(double x, double y, double w, double h, QGraphicsItem* parent);
	[LinkName("QGraphicsRectItem_Rect")]
	public static extern QRectF QGraphicsRectItem_Rect(Self* c_this);
	[LinkName("QGraphicsRectItem_SetRect")]
	public static extern void QGraphicsRectItem_SetRect(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsRectItem_SetRect2")]
	public static extern void QGraphicsRectItem_SetRect2(Self* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsRectItem_BoundingRect")]
	public static extern QRectF QGraphicsRectItem_BoundingRect(Self* c_this);
	[LinkName("QGraphicsRectItem_Shape")]
	public static extern QPainterPath QGraphicsRectItem_Shape(Self* c_this);
	[LinkName("QGraphicsRectItem_Contains")]
	public static extern bool QGraphicsRectItem_Contains(Self* c_this, QPointF* point);
	[LinkName("QGraphicsRectItem_Paint")]
	public static extern void QGraphicsRectItem_Paint(Self* c_this, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	[LinkName("QGraphicsRectItem_IsObscuredBy")]
	public static extern bool QGraphicsRectItem_IsObscuredBy(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsRectItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsRectItem_OpaqueArea(Self* c_this);
	[LinkName("QGraphicsRectItem_Type")]
	public static extern int32 QGraphicsRectItem_Type(Self* c_this);
	[LinkName("QGraphicsRectItem_SupportsExtension")]
	public static extern bool QGraphicsRectItem_SupportsExtension(Self* c_this, int64 _extension);
	[LinkName("QGraphicsRectItem_SetExtension")]
	public static extern void QGraphicsRectItem_SetExtension(Self* c_this, int64 _extension, QVariant* variant);
	[LinkName("QGraphicsRectItem_Extension")]
	public static extern QVariant QGraphicsRectItem_Extension(Self* c_this, QVariant* variant);
}
public struct QGraphicsEllipseItem : QAbstractGraphicsShapeItem
{
	[LinkName("QGraphicsEllipseItem_new")]
	public static extern QGraphicsEllipseItem* QGraphicsEllipseItem_new();
	[LinkName("QGraphicsEllipseItem_new2")]
	public static extern QGraphicsEllipseItem* QGraphicsEllipseItem_new2(QRectF* rect);
	[LinkName("QGraphicsEllipseItem_new3")]
	public static extern QGraphicsEllipseItem* QGraphicsEllipseItem_new3(double x, double y, double w, double h);
	[LinkName("QGraphicsEllipseItem_new4")]
	public static extern QGraphicsEllipseItem* QGraphicsEllipseItem_new4(QGraphicsItem* parent);
	[LinkName("QGraphicsEllipseItem_new5")]
	public static extern QGraphicsEllipseItem* QGraphicsEllipseItem_new5(QRectF* rect, QGraphicsItem* parent);
	[LinkName("QGraphicsEllipseItem_new6")]
	public static extern QGraphicsEllipseItem* QGraphicsEllipseItem_new6(double x, double y, double w, double h, QGraphicsItem* parent);
	[LinkName("QGraphicsEllipseItem_Rect")]
	public static extern QRectF QGraphicsEllipseItem_Rect(Self* c_this);
	[LinkName("QGraphicsEllipseItem_SetRect")]
	public static extern void QGraphicsEllipseItem_SetRect(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsEllipseItem_SetRect2")]
	public static extern void QGraphicsEllipseItem_SetRect2(Self* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsEllipseItem_StartAngle")]
	public static extern int32 QGraphicsEllipseItem_StartAngle(Self* c_this);
	[LinkName("QGraphicsEllipseItem_SetStartAngle")]
	public static extern void QGraphicsEllipseItem_SetStartAngle(Self* c_this, int32 angle);
	[LinkName("QGraphicsEllipseItem_SpanAngle")]
	public static extern int32 QGraphicsEllipseItem_SpanAngle(Self* c_this);
	[LinkName("QGraphicsEllipseItem_SetSpanAngle")]
	public static extern void QGraphicsEllipseItem_SetSpanAngle(Self* c_this, int32 angle);
	[LinkName("QGraphicsEllipseItem_BoundingRect")]
	public static extern QRectF QGraphicsEllipseItem_BoundingRect(Self* c_this);
	[LinkName("QGraphicsEllipseItem_Shape")]
	public static extern QPainterPath QGraphicsEllipseItem_Shape(Self* c_this);
	[LinkName("QGraphicsEllipseItem_Contains")]
	public static extern bool QGraphicsEllipseItem_Contains(Self* c_this, QPointF* point);
	[LinkName("QGraphicsEllipseItem_Paint")]
	public static extern void QGraphicsEllipseItem_Paint(Self* c_this, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	[LinkName("QGraphicsEllipseItem_IsObscuredBy")]
	public static extern bool QGraphicsEllipseItem_IsObscuredBy(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsEllipseItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsEllipseItem_OpaqueArea(Self* c_this);
	[LinkName("QGraphicsEllipseItem_Type")]
	public static extern int32 QGraphicsEllipseItem_Type(Self* c_this);
	[LinkName("QGraphicsEllipseItem_SupportsExtension")]
	public static extern bool QGraphicsEllipseItem_SupportsExtension(Self* c_this, int64 _extension);
	[LinkName("QGraphicsEllipseItem_SetExtension")]
	public static extern void QGraphicsEllipseItem_SetExtension(Self* c_this, int64 _extension, QVariant* variant);
	[LinkName("QGraphicsEllipseItem_Extension")]
	public static extern QVariant QGraphicsEllipseItem_Extension(Self* c_this, QVariant* variant);
}
public struct QGraphicsPolygonItem : QAbstractGraphicsShapeItem
{
	[LinkName("QGraphicsPolygonItem_new")]
	public static extern QGraphicsPolygonItem* QGraphicsPolygonItem_new();
	[LinkName("QGraphicsPolygonItem_new2")]
	public static extern QGraphicsPolygonItem* QGraphicsPolygonItem_new2(QGraphicsItem* parent);
	[LinkName("QGraphicsPolygonItem_FillRule")]
	public static extern int64 QGraphicsPolygonItem_FillRule(Self* c_this);
	[LinkName("QGraphicsPolygonItem_SetFillRule")]
	public static extern void QGraphicsPolygonItem_SetFillRule(Self* c_this, int64 rule);
	[LinkName("QGraphicsPolygonItem_BoundingRect")]
	public static extern QRectF QGraphicsPolygonItem_BoundingRect(Self* c_this);
	[LinkName("QGraphicsPolygonItem_Shape")]
	public static extern QPainterPath QGraphicsPolygonItem_Shape(Self* c_this);
	[LinkName("QGraphicsPolygonItem_Contains")]
	public static extern bool QGraphicsPolygonItem_Contains(Self* c_this, QPointF* point);
	[LinkName("QGraphicsPolygonItem_Paint")]
	public static extern void QGraphicsPolygonItem_Paint(Self* c_this, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	[LinkName("QGraphicsPolygonItem_IsObscuredBy")]
	public static extern bool QGraphicsPolygonItem_IsObscuredBy(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsPolygonItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsPolygonItem_OpaqueArea(Self* c_this);
	[LinkName("QGraphicsPolygonItem_Type")]
	public static extern int32 QGraphicsPolygonItem_Type(Self* c_this);
	[LinkName("QGraphicsPolygonItem_SupportsExtension")]
	public static extern bool QGraphicsPolygonItem_SupportsExtension(Self* c_this, int64 _extension);
	[LinkName("QGraphicsPolygonItem_SetExtension")]
	public static extern void QGraphicsPolygonItem_SetExtension(Self* c_this, int64 _extension, QVariant* variant);
	[LinkName("QGraphicsPolygonItem_Extension")]
	public static extern QVariant QGraphicsPolygonItem_Extension(Self* c_this, QVariant* variant);
}
public struct QGraphicsLineItem : QGraphicsItem
{
	[LinkName("QGraphicsLineItem_new")]
	public static extern QGraphicsLineItem* QGraphicsLineItem_new();
	[LinkName("QGraphicsLineItem_new2")]
	public static extern QGraphicsLineItem* QGraphicsLineItem_new2(QLineF* line);
	[LinkName("QGraphicsLineItem_new3")]
	public static extern QGraphicsLineItem* QGraphicsLineItem_new3(double x1, double y1, double x2, double y2);
	[LinkName("QGraphicsLineItem_new4")]
	public static extern QGraphicsLineItem* QGraphicsLineItem_new4(QGraphicsItem* parent);
	[LinkName("QGraphicsLineItem_new5")]
	public static extern QGraphicsLineItem* QGraphicsLineItem_new5(QLineF* line, QGraphicsItem* parent);
	[LinkName("QGraphicsLineItem_new6")]
	public static extern QGraphicsLineItem* QGraphicsLineItem_new6(double x1, double y1, double x2, double y2, QGraphicsItem* parent);
	[LinkName("QGraphicsLineItem_Pen")]
	public static extern QPen QGraphicsLineItem_Pen(Self* c_this);
	[LinkName("QGraphicsLineItem_SetPen")]
	public static extern void QGraphicsLineItem_SetPen(Self* c_this, QPen* pen);
	[LinkName("QGraphicsLineItem_Line")]
	public static extern QLineF QGraphicsLineItem_Line(Self* c_this);
	[LinkName("QGraphicsLineItem_SetLine")]
	public static extern void QGraphicsLineItem_SetLine(Self* c_this, QLineF* line);
	[LinkName("QGraphicsLineItem_SetLine2")]
	public static extern void QGraphicsLineItem_SetLine2(Self* c_this, double x1, double y1, double x2, double y2);
	[LinkName("QGraphicsLineItem_BoundingRect")]
	public static extern QRectF QGraphicsLineItem_BoundingRect(Self* c_this);
	[LinkName("QGraphicsLineItem_Shape")]
	public static extern QPainterPath QGraphicsLineItem_Shape(Self* c_this);
	[LinkName("QGraphicsLineItem_Contains")]
	public static extern bool QGraphicsLineItem_Contains(Self* c_this, QPointF* point);
	[LinkName("QGraphicsLineItem_Paint")]
	public static extern void QGraphicsLineItem_Paint(Self* c_this, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	[LinkName("QGraphicsLineItem_IsObscuredBy")]
	public static extern bool QGraphicsLineItem_IsObscuredBy(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsLineItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsLineItem_OpaqueArea(Self* c_this);
	[LinkName("QGraphicsLineItem_Type")]
	public static extern int32 QGraphicsLineItem_Type(Self* c_this);
	[LinkName("QGraphicsLineItem_SupportsExtension")]
	public static extern bool QGraphicsLineItem_SupportsExtension(Self* c_this, int64 _extension);
	[LinkName("QGraphicsLineItem_SetExtension")]
	public static extern void QGraphicsLineItem_SetExtension(Self* c_this, int64 _extension, QVariant* variant);
	[LinkName("QGraphicsLineItem_Extension")]
	public static extern QVariant QGraphicsLineItem_Extension(Self* c_this, QVariant* variant);
}
public struct QGraphicsPixmapItem : QGraphicsItem
{
	[LinkName("QGraphicsPixmapItem_new")]
	public static extern QGraphicsPixmapItem* QGraphicsPixmapItem_new();
	[LinkName("QGraphicsPixmapItem_new2")]
	public static extern QGraphicsPixmapItem* QGraphicsPixmapItem_new2(QPixmap* pixmap);
	[LinkName("QGraphicsPixmapItem_new3")]
	public static extern QGraphicsPixmapItem* QGraphicsPixmapItem_new3(QGraphicsItem* parent);
	[LinkName("QGraphicsPixmapItem_new4")]
	public static extern QGraphicsPixmapItem* QGraphicsPixmapItem_new4(QPixmap* pixmap, QGraphicsItem* parent);
	[LinkName("QGraphicsPixmapItem_Pixmap")]
	public static extern QPixmap QGraphicsPixmapItem_Pixmap(Self* c_this);
	[LinkName("QGraphicsPixmapItem_SetPixmap")]
	public static extern void QGraphicsPixmapItem_SetPixmap(Self* c_this, QPixmap* pixmap);
	[LinkName("QGraphicsPixmapItem_TransformationMode")]
	public static extern int64 QGraphicsPixmapItem_TransformationMode(Self* c_this);
	[LinkName("QGraphicsPixmapItem_SetTransformationMode")]
	public static extern void QGraphicsPixmapItem_SetTransformationMode(Self* c_this, int64 mode);
	[LinkName("QGraphicsPixmapItem_Offset")]
	public static extern QPointF QGraphicsPixmapItem_Offset(Self* c_this);
	[LinkName("QGraphicsPixmapItem_SetOffset")]
	public static extern void QGraphicsPixmapItem_SetOffset(Self* c_this, QPointF* offset);
	[LinkName("QGraphicsPixmapItem_SetOffset2")]
	public static extern void QGraphicsPixmapItem_SetOffset2(Self* c_this, double x, double y);
	[LinkName("QGraphicsPixmapItem_BoundingRect")]
	public static extern QRectF QGraphicsPixmapItem_BoundingRect(Self* c_this);
	[LinkName("QGraphicsPixmapItem_Shape")]
	public static extern QPainterPath QGraphicsPixmapItem_Shape(Self* c_this);
	[LinkName("QGraphicsPixmapItem_Contains")]
	public static extern bool QGraphicsPixmapItem_Contains(Self* c_this, QPointF* point);
	[LinkName("QGraphicsPixmapItem_Paint")]
	public static extern void QGraphicsPixmapItem_Paint(Self* c_this, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	[LinkName("QGraphicsPixmapItem_IsObscuredBy")]
	public static extern bool QGraphicsPixmapItem_IsObscuredBy(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsPixmapItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsPixmapItem_OpaqueArea(Self* c_this);
	[LinkName("QGraphicsPixmapItem_Type")]
	public static extern int32 QGraphicsPixmapItem_Type(Self* c_this);
	[LinkName("QGraphicsPixmapItem_ShapeMode")]
	public static extern int64 QGraphicsPixmapItem_ShapeMode(Self* c_this);
	[LinkName("QGraphicsPixmapItem_SetShapeMode")]
	public static extern void QGraphicsPixmapItem_SetShapeMode(Self* c_this, int64 mode);
	[LinkName("QGraphicsPixmapItem_SupportsExtension")]
	public static extern bool QGraphicsPixmapItem_SupportsExtension(Self* c_this, int64 _extension);
	[LinkName("QGraphicsPixmapItem_SetExtension")]
	public static extern void QGraphicsPixmapItem_SetExtension(Self* c_this, int64 _extension, QVariant* variant);
	[LinkName("QGraphicsPixmapItem_Extension")]
	public static extern QVariant QGraphicsPixmapItem_Extension(Self* c_this, QVariant* variant);
}
public struct QGraphicsTextItem : QGraphicsObject
{
	[LinkName("QGraphicsTextItem_new")]
	public static extern QGraphicsTextItem* QGraphicsTextItem_new();
	[LinkName("QGraphicsTextItem_new2")]
	public static extern QGraphicsTextItem* QGraphicsTextItem_new2(libqt_string text);
	[LinkName("QGraphicsTextItem_new3")]
	public static extern QGraphicsTextItem* QGraphicsTextItem_new3(QGraphicsItem* parent);
	[LinkName("QGraphicsTextItem_new4")]
	public static extern QGraphicsTextItem* QGraphicsTextItem_new4(libqt_string text, QGraphicsItem* parent);
	[LinkName("QGraphicsTextItem_MetaObject")]
	public static extern QMetaObject* QGraphicsTextItem_MetaObject(Self* c_this);
	[LinkName("QGraphicsTextItem_Metacast")]
	public static extern void* QGraphicsTextItem_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGraphicsTextItem_Metacall")]
	public static extern int32 QGraphicsTextItem_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsTextItem_Tr")]
	public static extern libqt_string QGraphicsTextItem_Tr(char8[] s);
	[LinkName("QGraphicsTextItem_ToHtml")]
	public static extern libqt_string QGraphicsTextItem_ToHtml(Self* c_this);
	[LinkName("QGraphicsTextItem_SetHtml")]
	public static extern void QGraphicsTextItem_SetHtml(Self* c_this, libqt_string html);
	[LinkName("QGraphicsTextItem_ToPlainText")]
	public static extern libqt_string QGraphicsTextItem_ToPlainText(Self* c_this);
	[LinkName("QGraphicsTextItem_SetPlainText")]
	public static extern void QGraphicsTextItem_SetPlainText(Self* c_this, libqt_string text);
	[LinkName("QGraphicsTextItem_Font")]
	public static extern QFont QGraphicsTextItem_Font(Self* c_this);
	[LinkName("QGraphicsTextItem_SetFont")]
	public static extern void QGraphicsTextItem_SetFont(Self* c_this, QFont* font);
	[LinkName("QGraphicsTextItem_SetDefaultTextColor")]
	public static extern void QGraphicsTextItem_SetDefaultTextColor(Self* c_this, QColor* c);
	[LinkName("QGraphicsTextItem_DefaultTextColor")]
	public static extern QColor QGraphicsTextItem_DefaultTextColor(Self* c_this);
	[LinkName("QGraphicsTextItem_BoundingRect")]
	public static extern QRectF QGraphicsTextItem_BoundingRect(Self* c_this);
	[LinkName("QGraphicsTextItem_Shape")]
	public static extern QPainterPath QGraphicsTextItem_Shape(Self* c_this);
	[LinkName("QGraphicsTextItem_Contains")]
	public static extern bool QGraphicsTextItem_Contains(Self* c_this, QPointF* point);
	[LinkName("QGraphicsTextItem_Paint")]
	public static extern void QGraphicsTextItem_Paint(Self* c_this, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	[LinkName("QGraphicsTextItem_IsObscuredBy")]
	public static extern bool QGraphicsTextItem_IsObscuredBy(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsTextItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsTextItem_OpaqueArea(Self* c_this);
	[LinkName("QGraphicsTextItem_Type")]
	public static extern int32 QGraphicsTextItem_Type(Self* c_this);
	[LinkName("QGraphicsTextItem_SetTextWidth")]
	public static extern void QGraphicsTextItem_SetTextWidth(Self* c_this, double width);
	[LinkName("QGraphicsTextItem_TextWidth")]
	public static extern double QGraphicsTextItem_TextWidth(Self* c_this);
	[LinkName("QGraphicsTextItem_AdjustSize")]
	public static extern void QGraphicsTextItem_AdjustSize(Self* c_this);
	[LinkName("QGraphicsTextItem_SetDocument")]
	public static extern void QGraphicsTextItem_SetDocument(Self* c_this, QTextDocument* document);
	[LinkName("QGraphicsTextItem_Document")]
	public static extern QTextDocument* QGraphicsTextItem_Document(Self* c_this);
	[LinkName("QGraphicsTextItem_SetTextInteractionFlags")]
	public static extern void QGraphicsTextItem_SetTextInteractionFlags(Self* c_this, int64 flags);
	[LinkName("QGraphicsTextItem_TextInteractionFlags")]
	public static extern int64 QGraphicsTextItem_TextInteractionFlags(Self* c_this);
	[LinkName("QGraphicsTextItem_SetTabChangesFocus")]
	public static extern void QGraphicsTextItem_SetTabChangesFocus(Self* c_this, bool b);
	[LinkName("QGraphicsTextItem_TabChangesFocus")]
	public static extern bool QGraphicsTextItem_TabChangesFocus(Self* c_this);
	[LinkName("QGraphicsTextItem_SetOpenExternalLinks")]
	public static extern void QGraphicsTextItem_SetOpenExternalLinks(Self* c_this, bool open);
	[LinkName("QGraphicsTextItem_OpenExternalLinks")]
	public static extern bool QGraphicsTextItem_OpenExternalLinks(Self* c_this);
	[LinkName("QGraphicsTextItem_SetTextCursor")]
	public static extern void QGraphicsTextItem_SetTextCursor(Self* c_this, QTextCursor* cursor);
	[LinkName("QGraphicsTextItem_TextCursor")]
	public static extern QTextCursor QGraphicsTextItem_TextCursor(Self* c_this);
	[LinkName("QGraphicsTextItem_LinkActivated")]
	public static extern void QGraphicsTextItem_LinkActivated(Self* c_this, libqt_string param1);
	[LinkName("QGraphicsTextItem_LinkHovered")]
	public static extern void QGraphicsTextItem_LinkHovered(Self* c_this, libqt_string param1);
	[LinkName("QGraphicsTextItem_SceneEvent")]
	public static extern bool QGraphicsTextItem_SceneEvent(Self* c_this, QEvent* event);
	[LinkName("QGraphicsTextItem_MousePressEvent")]
	public static extern void QGraphicsTextItem_MousePressEvent(Self* c_this, QGraphicsSceneMouseEvent* event);
	[LinkName("QGraphicsTextItem_MouseMoveEvent")]
	public static extern void QGraphicsTextItem_MouseMoveEvent(Self* c_this, QGraphicsSceneMouseEvent* event);
	[LinkName("QGraphicsTextItem_MouseReleaseEvent")]
	public static extern void QGraphicsTextItem_MouseReleaseEvent(Self* c_this, QGraphicsSceneMouseEvent* event);
	[LinkName("QGraphicsTextItem_MouseDoubleClickEvent")]
	public static extern void QGraphicsTextItem_MouseDoubleClickEvent(Self* c_this, QGraphicsSceneMouseEvent* event);
	[LinkName("QGraphicsTextItem_ContextMenuEvent")]
	public static extern void QGraphicsTextItem_ContextMenuEvent(Self* c_this, QGraphicsSceneContextMenuEvent* event);
	[LinkName("QGraphicsTextItem_KeyPressEvent")]
	public static extern void QGraphicsTextItem_KeyPressEvent(Self* c_this, QKeyEvent* event);
	[LinkName("QGraphicsTextItem_KeyReleaseEvent")]
	public static extern void QGraphicsTextItem_KeyReleaseEvent(Self* c_this, QKeyEvent* event);
	[LinkName("QGraphicsTextItem_FocusInEvent")]
	public static extern void QGraphicsTextItem_FocusInEvent(Self* c_this, QFocusEvent* event);
	[LinkName("QGraphicsTextItem_FocusOutEvent")]
	public static extern void QGraphicsTextItem_FocusOutEvent(Self* c_this, QFocusEvent* event);
	[LinkName("QGraphicsTextItem_DragEnterEvent")]
	public static extern void QGraphicsTextItem_DragEnterEvent(Self* c_this, QGraphicsSceneDragDropEvent* event);
	[LinkName("QGraphicsTextItem_DragLeaveEvent")]
	public static extern void QGraphicsTextItem_DragLeaveEvent(Self* c_this, QGraphicsSceneDragDropEvent* event);
	[LinkName("QGraphicsTextItem_DragMoveEvent")]
	public static extern void QGraphicsTextItem_DragMoveEvent(Self* c_this, QGraphicsSceneDragDropEvent* event);
	[LinkName("QGraphicsTextItem_DropEvent")]
	public static extern void QGraphicsTextItem_DropEvent(Self* c_this, QGraphicsSceneDragDropEvent* event);
	[LinkName("QGraphicsTextItem_InputMethodEvent")]
	public static extern void QGraphicsTextItem_InputMethodEvent(Self* c_this, QInputMethodEvent* event);
	[LinkName("QGraphicsTextItem_HoverEnterEvent")]
	public static extern void QGraphicsTextItem_HoverEnterEvent(Self* c_this, QGraphicsSceneHoverEvent* event);
	[LinkName("QGraphicsTextItem_HoverMoveEvent")]
	public static extern void QGraphicsTextItem_HoverMoveEvent(Self* c_this, QGraphicsSceneHoverEvent* event);
	[LinkName("QGraphicsTextItem_HoverLeaveEvent")]
	public static extern void QGraphicsTextItem_HoverLeaveEvent(Self* c_this, QGraphicsSceneHoverEvent* event);
	[LinkName("QGraphicsTextItem_InputMethodQuery")]
	public static extern QVariant QGraphicsTextItem_InputMethodQuery(Self* c_this, int64 query);
	[LinkName("QGraphicsTextItem_SupportsExtension")]
	public static extern bool QGraphicsTextItem_SupportsExtension(Self* c_this, int64 _extension);
	[LinkName("QGraphicsTextItem_SetExtension")]
	public static extern void QGraphicsTextItem_SetExtension(Self* c_this, int64 _extension, QVariant* variant);
	[LinkName("QGraphicsTextItem_Extension")]
	public static extern QVariant QGraphicsTextItem_Extension(Self* c_this, QVariant* variant);
	[LinkName("QGraphicsTextItem_Tr2")]
	public static extern libqt_string QGraphicsTextItem_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsTextItem_Tr3")]
	public static extern libqt_string QGraphicsTextItem_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QGraphicsSimpleTextItem : QAbstractGraphicsShapeItem
{
	[LinkName("QGraphicsSimpleTextItem_new")]
	public static extern QGraphicsSimpleTextItem* QGraphicsSimpleTextItem_new();
	[LinkName("QGraphicsSimpleTextItem_new2")]
	public static extern QGraphicsSimpleTextItem* QGraphicsSimpleTextItem_new2(libqt_string text);
	[LinkName("QGraphicsSimpleTextItem_new3")]
	public static extern QGraphicsSimpleTextItem* QGraphicsSimpleTextItem_new3(QGraphicsItem* parent);
	[LinkName("QGraphicsSimpleTextItem_new4")]
	public static extern QGraphicsSimpleTextItem* QGraphicsSimpleTextItem_new4(libqt_string text, QGraphicsItem* parent);
	[LinkName("QGraphicsSimpleTextItem_SetText")]
	public static extern void QGraphicsSimpleTextItem_SetText(Self* c_this, libqt_string text);
	[LinkName("QGraphicsSimpleTextItem_Text")]
	public static extern libqt_string QGraphicsSimpleTextItem_Text(Self* c_this);
	[LinkName("QGraphicsSimpleTextItem_SetFont")]
	public static extern void QGraphicsSimpleTextItem_SetFont(Self* c_this, QFont* font);
	[LinkName("QGraphicsSimpleTextItem_Font")]
	public static extern QFont QGraphicsSimpleTextItem_Font(Self* c_this);
	[LinkName("QGraphicsSimpleTextItem_BoundingRect")]
	public static extern QRectF QGraphicsSimpleTextItem_BoundingRect(Self* c_this);
	[LinkName("QGraphicsSimpleTextItem_Shape")]
	public static extern QPainterPath QGraphicsSimpleTextItem_Shape(Self* c_this);
	[LinkName("QGraphicsSimpleTextItem_Contains")]
	public static extern bool QGraphicsSimpleTextItem_Contains(Self* c_this, QPointF* point);
	[LinkName("QGraphicsSimpleTextItem_Paint")]
	public static extern void QGraphicsSimpleTextItem_Paint(Self* c_this, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	[LinkName("QGraphicsSimpleTextItem_IsObscuredBy")]
	public static extern bool QGraphicsSimpleTextItem_IsObscuredBy(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsSimpleTextItem_OpaqueArea")]
	public static extern QPainterPath QGraphicsSimpleTextItem_OpaqueArea(Self* c_this);
	[LinkName("QGraphicsSimpleTextItem_Type")]
	public static extern int32 QGraphicsSimpleTextItem_Type(Self* c_this);
	[LinkName("QGraphicsSimpleTextItem_SupportsExtension")]
	public static extern bool QGraphicsSimpleTextItem_SupportsExtension(Self* c_this, int64 _extension);
	[LinkName("QGraphicsSimpleTextItem_SetExtension")]
	public static extern void QGraphicsSimpleTextItem_SetExtension(Self* c_this, int64 _extension, QVariant* variant);
	[LinkName("QGraphicsSimpleTextItem_Extension")]
	public static extern QVariant QGraphicsSimpleTextItem_Extension(Self* c_this, QVariant* variant);
}
public struct QGraphicsItemGroup : QGraphicsItem
{
	[LinkName("QGraphicsItemGroup_new")]
	public static extern QGraphicsItemGroup* QGraphicsItemGroup_new();
	[LinkName("QGraphicsItemGroup_new2")]
	public static extern QGraphicsItemGroup* QGraphicsItemGroup_new2(QGraphicsItem* parent);
	[LinkName("QGraphicsItemGroup_AddToGroup")]
	public static extern void QGraphicsItemGroup_AddToGroup(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsItemGroup_RemoveFromGroup")]
	public static extern void QGraphicsItemGroup_RemoveFromGroup(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsItemGroup_BoundingRect")]
	public static extern QRectF QGraphicsItemGroup_BoundingRect(Self* c_this);
	[LinkName("QGraphicsItemGroup_Paint")]
	public static extern void QGraphicsItemGroup_Paint(Self* c_this, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	[LinkName("QGraphicsItemGroup_IsObscuredBy")]
	public static extern bool QGraphicsItemGroup_IsObscuredBy(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsItemGroup_OpaqueArea")]
	public static extern QPainterPath QGraphicsItemGroup_OpaqueArea(Self* c_this);
	[LinkName("QGraphicsItemGroup_Type")]
	public static extern int32 QGraphicsItemGroup_Type(Self* c_this);
}