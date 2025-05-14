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
public interface IQGraphicsItem
{
	void* NativePtr { get; }
}
public struct QGraphicsItemPtr : IQGraphicsItem, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsItem_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsItem_Delete(this.nativePtr);
	}
	
	public void* Scene()
	{
		return CQt.QGraphicsItem_Scene(this.nativePtr);
	}
	
	public void* ParentItem()
	{
		return CQt.QGraphicsItem_ParentItem(this.nativePtr);
	}
	
	public void* TopLevelItem()
	{
		return CQt.QGraphicsItem_TopLevelItem(this.nativePtr);
	}
	
	public void* ParentObject()
	{
		return CQt.QGraphicsItem_ParentObject(this.nativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QGraphicsItem_ParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QGraphicsItem_TopLevelWidget(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QGraphicsItem_Window(this.nativePtr);
	}
	
	public void* Panel()
	{
		return CQt.QGraphicsItem_Panel(this.nativePtr);
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		CQt.QGraphicsItem_SetParentItem(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void*[] ChildItems()
	{
		return CQt.QGraphicsItem_ChildItems(this.nativePtr);
	}
	
	public bool IsWidget()
	{
		return CQt.QGraphicsItem_IsWidget(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QGraphicsItem_IsWindow(this.nativePtr);
	}
	
	public bool IsPanel()
	{
		return CQt.QGraphicsItem_IsPanel(this.nativePtr);
	}
	
	public void* ToGraphicsObject()
	{
		return CQt.QGraphicsItem_ToGraphicsObject(this.nativePtr);
	}
	
	public void* ToGraphicsObject2()
	{
		return CQt.QGraphicsItem_ToGraphicsObject2(this.nativePtr);
	}
	
	public void* Group()
	{
		return CQt.QGraphicsItem_Group(this.nativePtr);
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		CQt.QGraphicsItem_SetGroup(this.nativePtr, (group == default || group.NativePtr == default) ? default : group.NativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QGraphicsItem_Flags(this.nativePtr);
	}
	
	public void SetFlag(int64 flag)
	{
		CQt.QGraphicsItem_SetFlag(this.nativePtr, (int64)flag);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QGraphicsItem_SetFlags(this.nativePtr, flags);
	}
	
	public int64 CacheMode()
	{
		return CQt.QGraphicsItem_CacheMode(this.nativePtr);
	}
	
	public void SetCacheMode(int64 mode)
	{
		CQt.QGraphicsItem_SetCacheMode(this.nativePtr, (int64)mode);
	}
	
	public int64 PanelModality()
	{
		return CQt.QGraphicsItem_PanelModality(this.nativePtr);
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		CQt.QGraphicsItem_SetPanelModality(this.nativePtr, (int64)panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return CQt.QGraphicsItem_IsBlockedByModalPanel(this.nativePtr);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QGraphicsItem_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QGraphicsItem_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public void Cursor()
	{
		CQt.QGraphicsItem_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QGraphicsItem_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
	}
	
	public bool HasCursor()
	{
		return CQt.QGraphicsItem_HasCursor(this.nativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QGraphicsItem_UnsetCursor(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QGraphicsItem_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return CQt.QGraphicsItem_IsVisibleTo(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QGraphicsItem_SetVisible(this.nativePtr, visible);
	}
	
	public void Hide()
	{
		CQt.QGraphicsItem_Hide(this.nativePtr);
	}
	
	public void Show()
	{
		CQt.QGraphicsItem_Show(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsItem_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QGraphicsItem_SetEnabled(this.nativePtr, enabled);
	}
	
	public bool IsSelected()
	{
		return CQt.QGraphicsItem_IsSelected(this.nativePtr);
	}
	
	public void SetSelected(bool selected)
	{
		CQt.QGraphicsItem_SetSelected(this.nativePtr, selected);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QGraphicsItem_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QGraphicsItem_SetAcceptDrops(this.nativePtr, on);
	}
	
	public double Opacity()
	{
		return CQt.QGraphicsItem_Opacity(this.nativePtr);
	}
	
	public double EffectiveOpacity()
	{
		return CQt.QGraphicsItem_EffectiveOpacity(this.nativePtr);
	}
	
	public void SetOpacity(double opacity)
	{
		CQt.QGraphicsItem_SetOpacity(this.nativePtr, opacity);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QGraphicsItem_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QGraphicsItem_SetGraphicsEffect(this.nativePtr, (effect == default || effect.NativePtr == default) ? default : effect.NativePtr);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return CQt.QGraphicsItem_AcceptedMouseButtons(this.nativePtr);
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		CQt.QGraphicsItem_SetAcceptedMouseButtons(this.nativePtr, buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return CQt.QGraphicsItem_AcceptHoverEvents(this.nativePtr);
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptHoverEvents(this.nativePtr, enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return CQt.QGraphicsItem_AcceptTouchEvents(this.nativePtr);
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptTouchEvents(this.nativePtr, enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return CQt.QGraphicsItem_FiltersChildEvents(this.nativePtr);
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetFiltersChildEvents(this.nativePtr, enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return CQt.QGraphicsItem_HandlesChildEvents(this.nativePtr);
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetHandlesChildEvents(this.nativePtr, enabled);
	}
	
	public bool IsActive()
	{
		return CQt.QGraphicsItem_IsActive(this.nativePtr);
	}
	
	public void SetActive(bool active)
	{
		CQt.QGraphicsItem_SetActive(this.nativePtr, active);
	}
	
	public bool HasFocus()
	{
		return CQt.QGraphicsItem_HasFocus(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QGraphicsItem_SetFocus(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QGraphicsItem_ClearFocus(this.nativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QGraphicsItem_FocusProxy(this.nativePtr);
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		CQt.QGraphicsItem_SetFocusProxy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* FocusItem()
	{
		return CQt.QGraphicsItem_FocusItem(this.nativePtr);
	}
	
	public void* FocusScopeItem()
	{
		return CQt.QGraphicsItem_FocusScopeItem(this.nativePtr);
	}
	
	public void GrabMouse()
	{
		CQt.QGraphicsItem_GrabMouse(this.nativePtr);
	}
	
	public void UngrabMouse()
	{
		CQt.QGraphicsItem_UngrabMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QGraphicsItem_GrabKeyboard(this.nativePtr);
	}
	
	public void UngrabKeyboard()
	{
		CQt.QGraphicsItem_UngrabKeyboard(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsItem_Pos(this.nativePtr);
	}
	
	public double X()
	{
		return CQt.QGraphicsItem_X(this.nativePtr);
	}
	
	public void SetX(double x)
	{
		CQt.QGraphicsItem_SetX(this.nativePtr, x);
	}
	
	public double Y()
	{
		return CQt.QGraphicsItem_Y(this.nativePtr);
	}
	
	public void SetY(double y)
	{
		CQt.QGraphicsItem_SetY(this.nativePtr, y);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsItem_ScenePos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsItem_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void SetPos2(double x, double y)
	{
		CQt.QGraphicsItem_SetPos2(this.nativePtr, x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		CQt.QGraphicsItem_MoveBy(this.nativePtr, dx, dy);
	}
	
	public void EnsureVisible()
	{
		CQt.QGraphicsItem_EnsureVisible(this.nativePtr);
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_EnsureVisible2(this.nativePtr, x, y, w, h);
	}
	
	public void Transform()
	{
		CQt.QGraphicsItem_Transform(this.nativePtr);
	}
	
	public void SceneTransform()
	{
		CQt.QGraphicsItem_SceneTransform(this.nativePtr);
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		CQt.QGraphicsItem_DeviceTransform(this.nativePtr, (viewportTransform == default || viewportTransform.NativePtr == default) ? default : viewportTransform.NativePtr);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		CQt.QGraphicsItem_ItemTransform(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		CQt.QGraphicsItem_SetTransform(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public void ResetTransform()
	{
		CQt.QGraphicsItem_ResetTransform(this.nativePtr);
	}
	
	public void SetRotation(double angle)
	{
		CQt.QGraphicsItem_SetRotation(this.nativePtr, angle);
	}
	
	public double Rotation()
	{
		return CQt.QGraphicsItem_Rotation(this.nativePtr);
	}
	
	public void SetScale(double scale)
	{
		CQt.QGraphicsItem_SetScale(this.nativePtr, scale);
	}
	
	public double Scale()
	{
		return CQt.QGraphicsItem_Scale(this.nativePtr);
	}
	
	public void*[] Transformations()
	{
		return CQt.QGraphicsItem_Transformations(this.nativePtr);
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		CQt.QGraphicsItem_SetTransformations(this.nativePtr, null);
	}
	
	public void TransformOriginPoint()
	{
		CQt.QGraphicsItem_TransformOriginPoint(this.nativePtr);
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint(this.nativePtr, (origin == default || origin.NativePtr == default) ? default : origin.NativePtr);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint2(this.nativePtr, ax, ay);
	}
	
	public void Advance(int32 phase)
	{
		CQt.QGraphicsItem_Advance(this.nativePtr, phase);
	}
	
	public double ZValue()
	{
		return CQt.QGraphicsItem_ZValue(this.nativePtr);
	}
	
	public void SetZValue(double z)
	{
		CQt.QGraphicsItem_SetZValue(this.nativePtr, z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		CQt.QGraphicsItem_StackBefore(this.nativePtr, (sibling == default || sibling.NativePtr == default) ? default : sibling.NativePtr);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsItem_BoundingRect(this.nativePtr);
	}
	
	public void ChildrenBoundingRect()
	{
		CQt.QGraphicsItem_ChildrenBoundingRect(this.nativePtr);
	}
	
	public void SceneBoundingRect()
	{
		CQt.QGraphicsItem_SceneBoundingRect(this.nativePtr);
	}
	
	public void Shape()
	{
		CQt.QGraphicsItem_Shape(this.nativePtr);
	}
	
	public bool IsClipped()
	{
		return CQt.QGraphicsItem_IsClipped(this.nativePtr);
	}
	
	public void ClipPath()
	{
		CQt.QGraphicsItem_ClipPath(this.nativePtr);
	}
	
	public bool Contains(IQPointF point)
	{
		return CQt.QGraphicsItem_Contains(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, (int64)mode);
	}
	
	public bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode);
	}
	
	public void*[] CollidingItems()
	{
		return CQt.QGraphicsItem_CollidingItems(this.nativePtr);
	}
	
	public bool IsObscured()
	{
		return CQt.QGraphicsItem_IsObscured(this.nativePtr);
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return CQt.QGraphicsItem_IsObscured2(this.nativePtr, x, y, w, h);
	}
	
	public bool IsObscuredBy(IQGraphicsItem item)
	{
		return CQt.QGraphicsItem_IsObscuredBy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void OpaqueArea()
	{
		CQt.QGraphicsItem_OpaqueArea(this.nativePtr);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		CQt.QGraphicsItem_BoundingRegion(this.nativePtr, (itemToDeviceTransform == default || itemToDeviceTransform.NativePtr == default) ? default : itemToDeviceTransform.NativePtr);
	}
	
	public double BoundingRegionGranularity()
	{
		return CQt.QGraphicsItem_BoundingRegionGranularity(this.nativePtr);
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		CQt.QGraphicsItem_SetBoundingRegionGranularity(this.nativePtr, granularity);
	}
	
	public void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		CQt.QGraphicsItem_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void Update()
	{
		CQt.QGraphicsItem_Update(this.nativePtr);
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		CQt.QGraphicsItem_Update2(this.nativePtr, x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		CQt.QGraphicsItem_Scroll(this.nativePtr, dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapToParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapToScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapToItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapToParent2(this.nativePtr, x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapToScene2(this.nativePtr, x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToScene2(this.nativePtr, x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapFromItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromParent2(this.nativePtr, x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromScene2(this.nativePtr, x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromScene2(this.nativePtr, x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return CQt.QGraphicsItem_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return CQt.QGraphicsItem_CommonAncestorItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsUnderMouse()
	{
		return CQt.QGraphicsItem_IsUnderMouse(this.nativePtr);
	}
	
	public void Data(int32 key)
	{
		CQt.QGraphicsItem_Data(this.nativePtr, key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		CQt.QGraphicsItem_SetData(this.nativePtr, key, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QGraphicsItem_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QGraphicsItem_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public int32 Type()
	{
		return CQt.QGraphicsItem_Type(this.nativePtr);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_InstallSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_RemoveSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void UpdateMicroFocus()
	{
		CQt.QGraphicsItem_UpdateMicroFocus(this.nativePtr);
	}
	
	public bool SceneEventFilter(IQGraphicsItem watched, IQEvent event)
	{
		return CQt.QGraphicsItem_SceneEventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public bool SceneEvent(IQEvent event)
	{
		return CQt.QGraphicsItem_SceneEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void ContextMenuEvent(IQGraphicsSceneContextMenuEvent event)
	{
		CQt.QGraphicsItem_ContextMenuEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DragEnterEvent(IQGraphicsSceneDragDropEvent event)
	{
		CQt.QGraphicsItem_DragEnterEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DragLeaveEvent(IQGraphicsSceneDragDropEvent event)
	{
		CQt.QGraphicsItem_DragLeaveEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DragMoveEvent(IQGraphicsSceneDragDropEvent event)
	{
		CQt.QGraphicsItem_DragMoveEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DropEvent(IQGraphicsSceneDragDropEvent event)
	{
		CQt.QGraphicsItem_DropEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void FocusInEvent(IQFocusEvent event)
	{
		CQt.QGraphicsItem_FocusInEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void FocusOutEvent(IQFocusEvent event)
	{
		CQt.QGraphicsItem_FocusOutEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void HoverEnterEvent(IQGraphicsSceneHoverEvent event)
	{
		CQt.QGraphicsItem_HoverEnterEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void HoverMoveEvent(IQGraphicsSceneHoverEvent event)
	{
		CQt.QGraphicsItem_HoverMoveEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void HoverLeaveEvent(IQGraphicsSceneHoverEvent event)
	{
		CQt.QGraphicsItem_HoverLeaveEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void KeyPressEvent(IQKeyEvent event)
	{
		CQt.QGraphicsItem_KeyPressEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void KeyReleaseEvent(IQKeyEvent event)
	{
		CQt.QGraphicsItem_KeyReleaseEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void MousePressEvent(IQGraphicsSceneMouseEvent event)
	{
		CQt.QGraphicsItem_MousePressEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void MouseMoveEvent(IQGraphicsSceneMouseEvent event)
	{
		CQt.QGraphicsItem_MouseMoveEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void MouseReleaseEvent(IQGraphicsSceneMouseEvent event)
	{
		CQt.QGraphicsItem_MouseReleaseEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void MouseDoubleClickEvent(IQGraphicsSceneMouseEvent event)
	{
		CQt.QGraphicsItem_MouseDoubleClickEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void WheelEvent(IQGraphicsSceneWheelEvent event)
	{
		CQt.QGraphicsItem_WheelEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void InputMethodEvent(IQInputMethodEvent event)
	{
		CQt.QGraphicsItem_InputMethodEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void InputMethodQuery(int64 query)
	{
		CQt.QGraphicsItem_InputMethodQuery(this.nativePtr, (int64)query);
	}
	
	public void ItemChange(int64 change, IQVariant value)
	{
		CQt.QGraphicsItem_ItemChange(this.nativePtr, (int64)change, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public bool SupportsExtension(int64 _extension)
	{
		return CQt.QGraphicsItem_SupportsExtension(this.nativePtr, (int64)_extension);
	}
	
	public void SetExtension(int64 _extension, IQVariant variant)
	{
		CQt.QGraphicsItem_SetExtension(this.nativePtr, (int64)_extension, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void Extension(IQVariant variant)
	{
		CQt.QGraphicsItem_Extension(this.nativePtr, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void AddToIndex()
	{
		CQt.QGraphicsItem_AddToIndex(this.nativePtr);
	}
	
	public void RemoveFromIndex()
	{
		CQt.QGraphicsItem_RemoveFromIndex(this.nativePtr);
	}
	
	public void PrepareGeometryChange()
	{
		CQt.QGraphicsItem_PrepareGeometryChange(this.nativePtr);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsItem_SetFlag2(this.nativePtr, (int64)flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		CQt.QGraphicsItem_SetCacheMode2(this.nativePtr, (int64)mode, (cacheSize == default || cacheSize.NativePtr == default) ? default : cacheSize.NativePtr);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsItem_SetFocus1(this.nativePtr, (int64)focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		CQt.QGraphicsItem_EnsureVisible1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible5(this.nativePtr, x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible6(this.nativePtr, x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		CQt.QGraphicsItem_ItemTransform2(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		CQt.QGraphicsItem_SetTransform2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return CQt.QGraphicsItem_CollidingItems1(this.nativePtr, (int64)mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return CQt.QGraphicsItem_IsObscured1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Update1(IQRectF rect)
	{
		CQt.QGraphicsItem_Update1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		CQt.QGraphicsItem_Scroll3(this.nativePtr, dx, dy, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
}
public class QGraphicsItem
{
	public QGraphicsItemPtr handle;
	
	public static implicit operator QGraphicsItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsItemPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void* Scene()
	{
		return this.handle.Scene();
	}
	
	public void* ParentItem()
	{
		return this.handle.ParentItem();
	}
	
	public void* TopLevelItem()
	{
		return this.handle.TopLevelItem();
	}
	
	public void* ParentObject()
	{
		return this.handle.ParentObject();
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public void* TopLevelWidget()
	{
		return this.handle.TopLevelWidget();
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* Panel()
	{
		return this.handle.Panel();
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		this.handle.SetParentItem(parent);
	}
	
	public void*[] ChildItems()
	{
		return this.handle.ChildItems();
	}
	
	public bool IsWidget()
	{
		return this.handle.IsWidget();
	}
	
	public bool IsWindow()
	{
		return this.handle.IsWindow();
	}
	
	public bool IsPanel()
	{
		return this.handle.IsPanel();
	}
	
	public void* ToGraphicsObject()
	{
		return this.handle.ToGraphicsObject();
	}
	
	public void* ToGraphicsObject2()
	{
		return this.handle.ToGraphicsObject2();
	}
	
	public void* Group()
	{
		return this.handle.Group();
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		this.handle.SetGroup(group);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlag(int64 flag)
	{
		this.handle.SetFlag(flag);
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int64 CacheMode()
	{
		return this.handle.CacheMode();
	}
	
	public void SetCacheMode(int64 mode)
	{
		this.handle.SetCacheMode(mode);
	}
	
	public int64 PanelModality()
	{
		return this.handle.PanelModality();
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		this.handle.SetPanelModality(panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return this.handle.IsBlockedByModalPanel();
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public bool HasCursor()
	{
		return this.handle.HasCursor();
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return this.handle.IsVisibleTo(parent);
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public bool IsSelected()
	{
		return this.handle.IsSelected();
	}
	
	public void SetSelected(bool selected)
	{
		this.handle.SetSelected(selected);
	}
	
	public bool AcceptDrops()
	{
		return this.handle.AcceptDrops();
	}
	
	public void SetAcceptDrops(bool on)
	{
		this.handle.SetAcceptDrops(on);
	}
	
	public double Opacity()
	{
		return this.handle.Opacity();
	}
	
	public double EffectiveOpacity()
	{
		return this.handle.EffectiveOpacity();
	}
	
	public void SetOpacity(double opacity)
	{
		this.handle.SetOpacity(opacity);
	}
	
	public void* GraphicsEffect()
	{
		return this.handle.GraphicsEffect();
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		this.handle.SetGraphicsEffect(effect);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return this.handle.AcceptedMouseButtons();
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		this.handle.SetAcceptedMouseButtons(buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return this.handle.AcceptHoverEvents();
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		this.handle.SetAcceptHoverEvents(enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return this.handle.AcceptTouchEvents();
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		this.handle.SetAcceptTouchEvents(enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return this.handle.FiltersChildEvents();
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		this.handle.SetFiltersChildEvents(enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return this.handle.HandlesChildEvents();
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		this.handle.SetHandlesChildEvents(enabled);
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void SetActive(bool active)
	{
		this.handle.SetActive(active);
	}
	
	public bool HasFocus()
	{
		return this.handle.HasFocus();
	}
	
	public void SetFocus()
	{
		this.handle.SetFocus();
	}
	
	public void ClearFocus()
	{
		this.handle.ClearFocus();
	}
	
	public void* FocusProxy()
	{
		return this.handle.FocusProxy();
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		this.handle.SetFocusProxy(item);
	}
	
	public void* FocusItem()
	{
		return this.handle.FocusItem();
	}
	
	public void* FocusScopeItem()
	{
		return this.handle.FocusScopeItem();
	}
	
	public void GrabMouse()
	{
		this.handle.GrabMouse();
	}
	
	public void UngrabMouse()
	{
		this.handle.UngrabMouse();
	}
	
	public void GrabKeyboard()
	{
		this.handle.GrabKeyboard();
	}
	
	public void UngrabKeyboard()
	{
		this.handle.UngrabKeyboard();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public double X()
	{
		return this.handle.X();
	}
	
	public void SetX(double x)
	{
		this.handle.SetX(x);
	}
	
	public double Y()
	{
		return this.handle.Y();
	}
	
	public void SetY(double y)
	{
		this.handle.SetY(y);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void SetPos2(double x, double y)
	{
		this.handle.SetPos2(x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		this.handle.MoveBy(dx, dy);
	}
	
	public void EnsureVisible()
	{
		this.handle.EnsureVisible();
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		this.handle.EnsureVisible2(x, y, w, h);
	}
	
	public void Transform()
	{
		this.handle.Transform();
	}
	
	public void SceneTransform()
	{
		this.handle.SceneTransform();
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		this.handle.DeviceTransform(viewportTransform);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		this.handle.ItemTransform(other);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		this.handle.SetTransform(matrix);
	}
	
	public void ResetTransform()
	{
		this.handle.ResetTransform();
	}
	
	public void SetRotation(double angle)
	{
		this.handle.SetRotation(angle);
	}
	
	public double Rotation()
	{
		return this.handle.Rotation();
	}
	
	public void SetScale(double scale)
	{
		this.handle.SetScale(scale);
	}
	
	public double Scale()
	{
		return this.handle.Scale();
	}
	
	public void*[] Transformations()
	{
		return this.handle.Transformations();
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		this.handle.SetTransformations(null);
	}
	
	public void TransformOriginPoint()
	{
		this.handle.TransformOriginPoint();
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		this.handle.SetTransformOriginPoint(origin);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		this.handle.SetTransformOriginPoint2(ax, ay);
	}
	
	public virtual void Advance(int32 phase)
	{
		this.handle.Advance(phase);
	}
	
	public double ZValue()
	{
		return this.handle.ZValue();
	}
	
	public void SetZValue(double z)
	{
		this.handle.SetZValue(z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		this.handle.StackBefore(sibling);
	}
	
	public virtual void BoundingRect()
	{
		this.handle.BoundingRect();
	}
	
	public void ChildrenBoundingRect()
	{
		this.handle.ChildrenBoundingRect();
	}
	
	public void SceneBoundingRect()
	{
		this.handle.SceneBoundingRect();
	}
	
	public virtual void Shape()
	{
		this.handle.Shape();
	}
	
	public bool IsClipped()
	{
		return this.handle.IsClipped();
	}
	
	public void ClipPath()
	{
		this.handle.ClipPath();
	}
	
	public virtual bool Contains(IQPointF point)
	{
		return this.handle.Contains(point);
	}
	
	public virtual bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return this.handle.CollidesWithItem(other, mode);
	}
	
	public virtual bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return this.handle.CollidesWithPath(path, mode);
	}
	
	public void*[] CollidingItems()
	{
		return this.handle.CollidingItems();
	}
	
	public bool IsObscured()
	{
		return this.handle.IsObscured();
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return this.handle.IsObscured2(x, y, w, h);
	}
	
	public virtual bool IsObscuredBy(IQGraphicsItem item)
	{
		return this.handle.IsObscuredBy(item);
	}
	
	public virtual void OpaqueArea()
	{
		this.handle.OpaqueArea();
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		this.handle.BoundingRegion(itemToDeviceTransform);
	}
	
	public double BoundingRegionGranularity()
	{
		return this.handle.BoundingRegionGranularity();
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		this.handle.SetBoundingRegionGranularity(granularity);
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		this.handle.Paint(painter, option, widget);
	}
	
	public void Update()
	{
		this.handle.Update();
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		this.handle.Update2(x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		this.handle.Scroll(dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapToItem(item, point);
	}
	
	public void MapToParent(IQPointF point)
	{
		this.handle.MapToParent(point);
	}
	
	public void MapToScene(IQPointF point)
	{
		this.handle.MapToScene(point);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectToItem(item, rect);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		this.handle.MapRectToParent(rect);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		this.handle.MapRectToScene(rect);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapToItem4(item, path);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		this.handle.MapToParentWithPath(path);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		this.handle.MapToSceneWithPath(path);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapFromItem(item, point);
	}
	
	public void MapFromParent(IQPointF point)
	{
		this.handle.MapFromParent(point);
	}
	
	public void MapFromScene(IQPointF point)
	{
		this.handle.MapFromScene(point);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectFromItem(item, rect);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		this.handle.MapRectFromParent(rect);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		this.handle.MapRectFromScene(rect);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapFromItem4(item, path);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		this.handle.MapFromParentWithPath(path);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		this.handle.MapFromSceneWithPath(path);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapToItem5(item, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		this.handle.MapToParent2(x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		this.handle.MapToScene2(x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectToItem2(item, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectToParent2(x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectToScene2(x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapFromItem5(item, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		this.handle.MapFromParent2(x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		this.handle.MapFromScene2(x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectFromItem2(item, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromParent2(x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromScene2(x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return this.handle.CommonAncestorItem(other);
	}
	
	public bool IsUnderMouse()
	{
		return this.handle.IsUnderMouse();
	}
	
	public void Data(int32 key)
	{
		this.handle.Data(key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		this.handle.SetData(key, value);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
	}
	
	public virtual int32 Type()
	{
		return this.handle.Type();
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.InstallSceneEventFilter(filterItem);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.RemoveSceneEventFilter(filterItem);
	}
	
	public void UpdateMicroFocus()
	{
		this.handle.UpdateMicroFocus();
	}
	
	public virtual bool SceneEventFilter(IQGraphicsItem watched, IQEvent event)
	{
		return this.handle.SceneEventFilter(watched, event);
	}
	
	public virtual bool SceneEvent(IQEvent event)
	{
		return this.handle.SceneEvent(event);
	}
	
	public virtual void ContextMenuEvent(IQGraphicsSceneContextMenuEvent event)
	{
		this.handle.ContextMenuEvent(event);
	}
	
	public virtual void DragEnterEvent(IQGraphicsSceneDragDropEvent event)
	{
		this.handle.DragEnterEvent(event);
	}
	
	public virtual void DragLeaveEvent(IQGraphicsSceneDragDropEvent event)
	{
		this.handle.DragLeaveEvent(event);
	}
	
	public virtual void DragMoveEvent(IQGraphicsSceneDragDropEvent event)
	{
		this.handle.DragMoveEvent(event);
	}
	
	public virtual void DropEvent(IQGraphicsSceneDragDropEvent event)
	{
		this.handle.DropEvent(event);
	}
	
	public virtual void FocusInEvent(IQFocusEvent event)
	{
		this.handle.FocusInEvent(event);
	}
	
	public virtual void FocusOutEvent(IQFocusEvent event)
	{
		this.handle.FocusOutEvent(event);
	}
	
	public virtual void HoverEnterEvent(IQGraphicsSceneHoverEvent event)
	{
		this.handle.HoverEnterEvent(event);
	}
	
	public virtual void HoverMoveEvent(IQGraphicsSceneHoverEvent event)
	{
		this.handle.HoverMoveEvent(event);
	}
	
	public virtual void HoverLeaveEvent(IQGraphicsSceneHoverEvent event)
	{
		this.handle.HoverLeaveEvent(event);
	}
	
	public virtual void KeyPressEvent(IQKeyEvent event)
	{
		this.handle.KeyPressEvent(event);
	}
	
	public virtual void KeyReleaseEvent(IQKeyEvent event)
	{
		this.handle.KeyReleaseEvent(event);
	}
	
	public virtual void MousePressEvent(IQGraphicsSceneMouseEvent event)
	{
		this.handle.MousePressEvent(event);
	}
	
	public virtual void MouseMoveEvent(IQGraphicsSceneMouseEvent event)
	{
		this.handle.MouseMoveEvent(event);
	}
	
	public virtual void MouseReleaseEvent(IQGraphicsSceneMouseEvent event)
	{
		this.handle.MouseReleaseEvent(event);
	}
	
	public virtual void MouseDoubleClickEvent(IQGraphicsSceneMouseEvent event)
	{
		this.handle.MouseDoubleClickEvent(event);
	}
	
	public virtual void WheelEvent(IQGraphicsSceneWheelEvent event)
	{
		this.handle.WheelEvent(event);
	}
	
	public virtual void InputMethodEvent(IQInputMethodEvent event)
	{
		this.handle.InputMethodEvent(event);
	}
	
	public virtual void InputMethodQuery(int64 query)
	{
		this.handle.InputMethodQuery(query);
	}
	
	public virtual void ItemChange(int64 change, IQVariant value)
	{
		this.handle.ItemChange(change, value);
	}
	
	public virtual bool SupportsExtension(int64 _extension)
	{
		return this.handle.SupportsExtension(_extension);
	}
	
	public virtual void SetExtension(int64 _extension, IQVariant variant)
	{
		this.handle.SetExtension(_extension, variant);
	}
	
	public virtual void Extension(IQVariant variant)
	{
		this.handle.Extension(variant);
	}
	
	public void AddToIndex()
	{
		this.handle.AddToIndex();
	}
	
	public void RemoveFromIndex()
	{
		this.handle.RemoveFromIndex();
	}
	
	public void PrepareGeometryChange()
	{
		this.handle.PrepareGeometryChange();
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		this.handle.SetFlag2(flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		this.handle.SetCacheMode2(mode, cacheSize);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		this.handle.SetFocus1(focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		this.handle.EnsureVisible1(rect);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		this.handle.EnsureVisible22(rect, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible3(rect, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		this.handle.EnsureVisible5(x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible6(x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		this.handle.ItemTransform2(other, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		this.handle.SetTransform2(matrix, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return this.handle.CollidingItems1(mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return this.handle.IsObscured1(rect);
	}
	
	public void Update1(IQRectF rect)
	{
		this.handle.Update1(rect);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		this.handle.Scroll3(dx, dy, rect);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsItem_new")]
	public static extern void* QGraphicsItem_new();
	[LinkName("QGraphicsItem_new2")]
	public static extern void* QGraphicsItem_new2(void* parent);
	[LinkName("QGraphicsItem_Scene")]
	public static extern void* QGraphicsItem_Scene(void* c_this);
	[LinkName("QGraphicsItem_ParentItem")]
	public static extern void* QGraphicsItem_ParentItem(void* c_this);
	[LinkName("QGraphicsItem_TopLevelItem")]
	public static extern void* QGraphicsItem_TopLevelItem(void* c_this);
	[LinkName("QGraphicsItem_ParentObject")]
	public static extern void* QGraphicsItem_ParentObject(void* c_this);
	[LinkName("QGraphicsItem_ParentWidget")]
	public static extern void* QGraphicsItem_ParentWidget(void* c_this);
	[LinkName("QGraphicsItem_TopLevelWidget")]
	public static extern void* QGraphicsItem_TopLevelWidget(void* c_this);
	[LinkName("QGraphicsItem_Window")]
	public static extern void* QGraphicsItem_Window(void* c_this);
	[LinkName("QGraphicsItem_Panel")]
	public static extern void* QGraphicsItem_Panel(void* c_this);
	[LinkName("QGraphicsItem_SetParentItem")]
	public static extern void QGraphicsItem_SetParentItem(void* c_this, void* parent);
	[LinkName("QGraphicsItem_ChildItems")]
	public static extern void*[] QGraphicsItem_ChildItems(void* c_this);
	[LinkName("QGraphicsItem_IsWidget")]
	public static extern bool QGraphicsItem_IsWidget(void* c_this);
	[LinkName("QGraphicsItem_IsWindow")]
	public static extern bool QGraphicsItem_IsWindow(void* c_this);
	[LinkName("QGraphicsItem_IsPanel")]
	public static extern bool QGraphicsItem_IsPanel(void* c_this);
	[LinkName("QGraphicsItem_ToGraphicsObject")]
	public static extern void* QGraphicsItem_ToGraphicsObject(void* c_this);
	[LinkName("QGraphicsItem_ToGraphicsObject2")]
	public static extern void* QGraphicsItem_ToGraphicsObject2(void* c_this);
	[LinkName("QGraphicsItem_Group")]
	public static extern void* QGraphicsItem_Group(void* c_this);
	[LinkName("QGraphicsItem_SetGroup")]
	public static extern void QGraphicsItem_SetGroup(void* c_this, void* group);
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
	public static extern libqt_string QGraphicsItem_ToolTip(void* c_this);
	[LinkName("QGraphicsItem_SetToolTip")]
	public static extern void QGraphicsItem_SetToolTip(void* c_this, libqt_string toolTip);
	[LinkName("QGraphicsItem_Cursor")]
	public static extern void QGraphicsItem_Cursor(void* c_this);
	[LinkName("QGraphicsItem_SetCursor")]
	public static extern void QGraphicsItem_SetCursor(void* c_this, void* cursor);
	[LinkName("QGraphicsItem_HasCursor")]
	public static extern bool QGraphicsItem_HasCursor(void* c_this);
	[LinkName("QGraphicsItem_UnsetCursor")]
	public static extern void QGraphicsItem_UnsetCursor(void* c_this);
	[LinkName("QGraphicsItem_IsVisible")]
	public static extern bool QGraphicsItem_IsVisible(void* c_this);
	[LinkName("QGraphicsItem_IsVisibleTo")]
	public static extern bool QGraphicsItem_IsVisibleTo(void* c_this, void* parent);
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
	public static extern void* QGraphicsItem_GraphicsEffect(void* c_this);
	[LinkName("QGraphicsItem_SetGraphicsEffect")]
	public static extern void QGraphicsItem_SetGraphicsEffect(void* c_this, void* effect);
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
	public static extern void* QGraphicsItem_FocusProxy(void* c_this);
	[LinkName("QGraphicsItem_SetFocusProxy")]
	public static extern void QGraphicsItem_SetFocusProxy(void* c_this, void* item);
	[LinkName("QGraphicsItem_FocusItem")]
	public static extern void* QGraphicsItem_FocusItem(void* c_this);
	[LinkName("QGraphicsItem_FocusScopeItem")]
	public static extern void* QGraphicsItem_FocusScopeItem(void* c_this);
	[LinkName("QGraphicsItem_GrabMouse")]
	public static extern void QGraphicsItem_GrabMouse(void* c_this);
	[LinkName("QGraphicsItem_UngrabMouse")]
	public static extern void QGraphicsItem_UngrabMouse(void* c_this);
	[LinkName("QGraphicsItem_GrabKeyboard")]
	public static extern void QGraphicsItem_GrabKeyboard(void* c_this);
	[LinkName("QGraphicsItem_UngrabKeyboard")]
	public static extern void QGraphicsItem_UngrabKeyboard(void* c_this);
	[LinkName("QGraphicsItem_Pos")]
	public static extern void QGraphicsItem_Pos(void* c_this);
	[LinkName("QGraphicsItem_X")]
	public static extern double QGraphicsItem_X(void* c_this);
	[LinkName("QGraphicsItem_SetX")]
	public static extern void QGraphicsItem_SetX(void* c_this, double x);
	[LinkName("QGraphicsItem_Y")]
	public static extern double QGraphicsItem_Y(void* c_this);
	[LinkName("QGraphicsItem_SetY")]
	public static extern void QGraphicsItem_SetY(void* c_this, double y);
	[LinkName("QGraphicsItem_ScenePos")]
	public static extern void QGraphicsItem_ScenePos(void* c_this);
	[LinkName("QGraphicsItem_SetPos")]
	public static extern void QGraphicsItem_SetPos(void* c_this, void* pos);
	[LinkName("QGraphicsItem_SetPos2")]
	public static extern void QGraphicsItem_SetPos2(void* c_this, double x, double y);
	[LinkName("QGraphicsItem_MoveBy")]
	public static extern void QGraphicsItem_MoveBy(void* c_this, double dx, double dy);
	[LinkName("QGraphicsItem_EnsureVisible")]
	public static extern void QGraphicsItem_EnsureVisible(void* c_this);
	[LinkName("QGraphicsItem_EnsureVisible2")]
	public static extern void QGraphicsItem_EnsureVisible2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_Transform")]
	public static extern void QGraphicsItem_Transform(void* c_this);
	[LinkName("QGraphicsItem_SceneTransform")]
	public static extern void QGraphicsItem_SceneTransform(void* c_this);
	[LinkName("QGraphicsItem_DeviceTransform")]
	public static extern void QGraphicsItem_DeviceTransform(void* c_this, void* viewportTransform);
	[LinkName("QGraphicsItem_ItemTransform")]
	public static extern void QGraphicsItem_ItemTransform(void* c_this, void* other);
	[LinkName("QGraphicsItem_SetTransform")]
	public static extern void QGraphicsItem_SetTransform(void* c_this, void* matrix);
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
	public static extern void*[] QGraphicsItem_Transformations(void* c_this);
	[LinkName("QGraphicsItem_SetTransformations")]
	public static extern void QGraphicsItem_SetTransformations(void* c_this, void*[] transformations);
	[LinkName("QGraphicsItem_TransformOriginPoint")]
	public static extern void QGraphicsItem_TransformOriginPoint(void* c_this);
	[LinkName("QGraphicsItem_SetTransformOriginPoint")]
	public static extern void QGraphicsItem_SetTransformOriginPoint(void* c_this, void* origin);
	[LinkName("QGraphicsItem_SetTransformOriginPoint2")]
	public static extern void QGraphicsItem_SetTransformOriginPoint2(void* c_this, double ax, double ay);
	[LinkName("QGraphicsItem_Advance")]
	public static extern void QGraphicsItem_Advance(void* c_this, int32 phase);
	[LinkName("QGraphicsItem_ZValue")]
	public static extern double QGraphicsItem_ZValue(void* c_this);
	[LinkName("QGraphicsItem_SetZValue")]
	public static extern void QGraphicsItem_SetZValue(void* c_this, double z);
	[LinkName("QGraphicsItem_StackBefore")]
	public static extern void QGraphicsItem_StackBefore(void* c_this, void* sibling);
	[LinkName("QGraphicsItem_BoundingRect")]
	public static extern void QGraphicsItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsItem_ChildrenBoundingRect")]
	public static extern void QGraphicsItem_ChildrenBoundingRect(void* c_this);
	[LinkName("QGraphicsItem_SceneBoundingRect")]
	public static extern void QGraphicsItem_SceneBoundingRect(void* c_this);
	[LinkName("QGraphicsItem_Shape")]
	public static extern void QGraphicsItem_Shape(void* c_this);
	[LinkName("QGraphicsItem_IsClipped")]
	public static extern bool QGraphicsItem_IsClipped(void* c_this);
	[LinkName("QGraphicsItem_ClipPath")]
	public static extern void QGraphicsItem_ClipPath(void* c_this);
	[LinkName("QGraphicsItem_Contains")]
	public static extern bool QGraphicsItem_Contains(void* c_this, void* point);
	[LinkName("QGraphicsItem_CollidesWithItem")]
	public static extern bool QGraphicsItem_CollidesWithItem(void* c_this, void* other, int64 mode);
	[LinkName("QGraphicsItem_CollidesWithPath")]
	public static extern bool QGraphicsItem_CollidesWithPath(void* c_this, void* path, int64 mode);
	[LinkName("QGraphicsItem_CollidingItems")]
	public static extern void*[] QGraphicsItem_CollidingItems(void* c_this);
	[LinkName("QGraphicsItem_IsObscured")]
	public static extern bool QGraphicsItem_IsObscured(void* c_this);
	[LinkName("QGraphicsItem_IsObscured2")]
	public static extern bool QGraphicsItem_IsObscured2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_IsObscuredBy")]
	public static extern bool QGraphicsItem_IsObscuredBy(void* c_this, void* item);
	[LinkName("QGraphicsItem_OpaqueArea")]
	public static extern void QGraphicsItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsItem_BoundingRegion")]
	public static extern void QGraphicsItem_BoundingRegion(void* c_this, void* itemToDeviceTransform);
	[LinkName("QGraphicsItem_BoundingRegionGranularity")]
	public static extern double QGraphicsItem_BoundingRegionGranularity(void* c_this);
	[LinkName("QGraphicsItem_SetBoundingRegionGranularity")]
	public static extern void QGraphicsItem_SetBoundingRegionGranularity(void* c_this, double granularity);
	[LinkName("QGraphicsItem_Paint")]
	public static extern void QGraphicsItem_Paint(void* c_this, void* painter, void* option, void* widget);
	[LinkName("QGraphicsItem_Update")]
	public static extern void QGraphicsItem_Update(void* c_this);
	[LinkName("QGraphicsItem_Update2")]
	public static extern void QGraphicsItem_Update2(void* c_this, double x, double y, double width, double height);
	[LinkName("QGraphicsItem_Scroll")]
	public static extern void QGraphicsItem_Scroll(void* c_this, double dx, double dy);
	[LinkName("QGraphicsItem_MapToItem")]
	public static extern void QGraphicsItem_MapToItem(void* c_this, void* item, void* point);
	[LinkName("QGraphicsItem_MapToParent")]
	public static extern void QGraphicsItem_MapToParent(void* c_this, void* point);
	[LinkName("QGraphicsItem_MapToScene")]
	public static extern void QGraphicsItem_MapToScene(void* c_this, void* point);
	[LinkName("QGraphicsItem_MapRectToItem")]
	public static extern void QGraphicsItem_MapRectToItem(void* c_this, void* item, void* rect);
	[LinkName("QGraphicsItem_MapRectToParent")]
	public static extern void QGraphicsItem_MapRectToParent(void* c_this, void* rect);
	[LinkName("QGraphicsItem_MapRectToScene")]
	public static extern void QGraphicsItem_MapRectToScene(void* c_this, void* rect);
	[LinkName("QGraphicsItem_MapToItem4")]
	public static extern void QGraphicsItem_MapToItem4(void* c_this, void* item, void* path);
	[LinkName("QGraphicsItem_MapToParentWithPath")]
	public static extern void QGraphicsItem_MapToParentWithPath(void* c_this, void* path);
	[LinkName("QGraphicsItem_MapToSceneWithPath")]
	public static extern void QGraphicsItem_MapToSceneWithPath(void* c_this, void* path);
	[LinkName("QGraphicsItem_MapFromItem")]
	public static extern void QGraphicsItem_MapFromItem(void* c_this, void* item, void* point);
	[LinkName("QGraphicsItem_MapFromParent")]
	public static extern void QGraphicsItem_MapFromParent(void* c_this, void* point);
	[LinkName("QGraphicsItem_MapFromScene")]
	public static extern void QGraphicsItem_MapFromScene(void* c_this, void* point);
	[LinkName("QGraphicsItem_MapRectFromItem")]
	public static extern void QGraphicsItem_MapRectFromItem(void* c_this, void* item, void* rect);
	[LinkName("QGraphicsItem_MapRectFromParent")]
	public static extern void QGraphicsItem_MapRectFromParent(void* c_this, void* rect);
	[LinkName("QGraphicsItem_MapRectFromScene")]
	public static extern void QGraphicsItem_MapRectFromScene(void* c_this, void* rect);
	[LinkName("QGraphicsItem_MapFromItem4")]
	public static extern void QGraphicsItem_MapFromItem4(void* c_this, void* item, void* path);
	[LinkName("QGraphicsItem_MapFromParentWithPath")]
	public static extern void QGraphicsItem_MapFromParentWithPath(void* c_this, void* path);
	[LinkName("QGraphicsItem_MapFromSceneWithPath")]
	public static extern void QGraphicsItem_MapFromSceneWithPath(void* c_this, void* path);
	[LinkName("QGraphicsItem_MapToItem5")]
	public static extern void QGraphicsItem_MapToItem5(void* c_this, void* item, double x, double y);
	[LinkName("QGraphicsItem_MapToParent2")]
	public static extern void QGraphicsItem_MapToParent2(void* c_this, double x, double y);
	[LinkName("QGraphicsItem_MapToScene2")]
	public static extern void QGraphicsItem_MapToScene2(void* c_this, double x, double y);
	[LinkName("QGraphicsItem_MapRectToItem2")]
	public static extern void QGraphicsItem_MapRectToItem2(void* c_this, void* item, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_MapRectToParent2")]
	public static extern void QGraphicsItem_MapRectToParent2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_MapRectToScene2")]
	public static extern void QGraphicsItem_MapRectToScene2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_MapFromItem5")]
	public static extern void QGraphicsItem_MapFromItem5(void* c_this, void* item, double x, double y);
	[LinkName("QGraphicsItem_MapFromParent2")]
	public static extern void QGraphicsItem_MapFromParent2(void* c_this, double x, double y);
	[LinkName("QGraphicsItem_MapFromScene2")]
	public static extern void QGraphicsItem_MapFromScene2(void* c_this, double x, double y);
	[LinkName("QGraphicsItem_MapRectFromItem2")]
	public static extern void QGraphicsItem_MapRectFromItem2(void* c_this, void* item, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_MapRectFromParent2")]
	public static extern void QGraphicsItem_MapRectFromParent2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_MapRectFromScene2")]
	public static extern void QGraphicsItem_MapRectFromScene2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsItem_IsAncestorOf")]
	public static extern bool QGraphicsItem_IsAncestorOf(void* c_this, void* child);
	[LinkName("QGraphicsItem_CommonAncestorItem")]
	public static extern void* QGraphicsItem_CommonAncestorItem(void* c_this, void* other);
	[LinkName("QGraphicsItem_IsUnderMouse")]
	public static extern bool QGraphicsItem_IsUnderMouse(void* c_this);
	[LinkName("QGraphicsItem_Data")]
	public static extern void QGraphicsItem_Data(void* c_this, int32 key);
	[LinkName("QGraphicsItem_SetData")]
	public static extern void QGraphicsItem_SetData(void* c_this, int32 key, void* value);
	[LinkName("QGraphicsItem_InputMethodHints")]
	public static extern int64 QGraphicsItem_InputMethodHints(void* c_this);
	[LinkName("QGraphicsItem_SetInputMethodHints")]
	public static extern void QGraphicsItem_SetInputMethodHints(void* c_this, int64 hints);
	[LinkName("QGraphicsItem_Type")]
	public static extern int32 QGraphicsItem_Type(void* c_this);
	[LinkName("QGraphicsItem_InstallSceneEventFilter")]
	public static extern void QGraphicsItem_InstallSceneEventFilter(void* c_this, void* filterItem);
	[LinkName("QGraphicsItem_RemoveSceneEventFilter")]
	public static extern void QGraphicsItem_RemoveSceneEventFilter(void* c_this, void* filterItem);
	[LinkName("QGraphicsItem_UpdateMicroFocus")]
	public static extern void QGraphicsItem_UpdateMicroFocus(void* c_this);
	[LinkName("QGraphicsItem_SceneEventFilter")]
	public static extern bool QGraphicsItem_SceneEventFilter(void* c_this, void* watched, void* event);
	[LinkName("QGraphicsItem_SceneEvent")]
	public static extern bool QGraphicsItem_SceneEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_ContextMenuEvent")]
	public static extern void QGraphicsItem_ContextMenuEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_DragEnterEvent")]
	public static extern void QGraphicsItem_DragEnterEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_DragLeaveEvent")]
	public static extern void QGraphicsItem_DragLeaveEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_DragMoveEvent")]
	public static extern void QGraphicsItem_DragMoveEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_DropEvent")]
	public static extern void QGraphicsItem_DropEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_FocusInEvent")]
	public static extern void QGraphicsItem_FocusInEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_FocusOutEvent")]
	public static extern void QGraphicsItem_FocusOutEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_HoverEnterEvent")]
	public static extern void QGraphicsItem_HoverEnterEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_HoverMoveEvent")]
	public static extern void QGraphicsItem_HoverMoveEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_HoverLeaveEvent")]
	public static extern void QGraphicsItem_HoverLeaveEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_KeyPressEvent")]
	public static extern void QGraphicsItem_KeyPressEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_KeyReleaseEvent")]
	public static extern void QGraphicsItem_KeyReleaseEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_MousePressEvent")]
	public static extern void QGraphicsItem_MousePressEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_MouseMoveEvent")]
	public static extern void QGraphicsItem_MouseMoveEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_MouseReleaseEvent")]
	public static extern void QGraphicsItem_MouseReleaseEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_MouseDoubleClickEvent")]
	public static extern void QGraphicsItem_MouseDoubleClickEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_WheelEvent")]
	public static extern void QGraphicsItem_WheelEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_InputMethodEvent")]
	public static extern void QGraphicsItem_InputMethodEvent(void* c_this, void* event);
	[LinkName("QGraphicsItem_InputMethodQuery")]
	public static extern void QGraphicsItem_InputMethodQuery(void* c_this, int64 query);
	[LinkName("QGraphicsItem_ItemChange")]
	public static extern void QGraphicsItem_ItemChange(void* c_this, int64 change, void* value);
	[LinkName("QGraphicsItem_SupportsExtension")]
	public static extern bool QGraphicsItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsItem_SetExtension")]
	public static extern void QGraphicsItem_SetExtension(void* c_this, int64 _extension, void* variant);
	[LinkName("QGraphicsItem_Extension")]
	public static extern void QGraphicsItem_Extension(void* c_this, void* variant);
	[LinkName("QGraphicsItem_AddToIndex")]
	public static extern void QGraphicsItem_AddToIndex(void* c_this);
	[LinkName("QGraphicsItem_RemoveFromIndex")]
	public static extern void QGraphicsItem_RemoveFromIndex(void* c_this);
	[LinkName("QGraphicsItem_PrepareGeometryChange")]
	public static extern void QGraphicsItem_PrepareGeometryChange(void* c_this);
	[LinkName("QGraphicsItem_SetFlag2")]
	public static extern void QGraphicsItem_SetFlag2(void* c_this, int64 flag, bool enabled);
	[LinkName("QGraphicsItem_SetCacheMode2")]
	public static extern void QGraphicsItem_SetCacheMode2(void* c_this, int64 mode, void* cacheSize);
	[LinkName("QGraphicsItem_SetFocus1")]
	public static extern void QGraphicsItem_SetFocus1(void* c_this, int64 focusReason);
	[LinkName("QGraphicsItem_EnsureVisible1")]
	public static extern void QGraphicsItem_EnsureVisible1(void* c_this, void* rect);
	[LinkName("QGraphicsItem_EnsureVisible22")]
	public static extern void QGraphicsItem_EnsureVisible22(void* c_this, void* rect, int32 xmargin);
	[LinkName("QGraphicsItem_EnsureVisible3")]
	public static extern void QGraphicsItem_EnsureVisible3(void* c_this, void* rect, int32 xmargin, int32 ymargin);
	[LinkName("QGraphicsItem_EnsureVisible5")]
	public static extern void QGraphicsItem_EnsureVisible5(void* c_this, double x, double y, double w, double h, int32 xmargin);
	[LinkName("QGraphicsItem_EnsureVisible6")]
	public static extern void QGraphicsItem_EnsureVisible6(void* c_this, double x, double y, double w, double h, int32 xmargin, int32 ymargin);
	[LinkName("QGraphicsItem_ItemTransform2")]
	public static extern void QGraphicsItem_ItemTransform2(void* c_this, void* other, bool* ok);
	[LinkName("QGraphicsItem_SetTransform2")]
	public static extern void QGraphicsItem_SetTransform2(void* c_this, void* matrix, bool combine);
	[LinkName("QGraphicsItem_CollidingItems1")]
	public static extern void*[] QGraphicsItem_CollidingItems1(void* c_this, int64 mode);
	[LinkName("QGraphicsItem_IsObscured1")]
	public static extern bool QGraphicsItem_IsObscured1(void* c_this, void* rect);
	[LinkName("QGraphicsItem_Update1")]
	public static extern void QGraphicsItem_Update1(void* c_this, void* rect);
	[LinkName("QGraphicsItem_Scroll3")]
	public static extern void QGraphicsItem_Scroll3(void* c_this, double dx, double dy, void* rect);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsItem_Delete")]
	public static extern void QGraphicsItem_Delete(void* self);
}
public interface IQGraphicsObject
{
	void* NativePtr { get; }
}
public struct QGraphicsObjectPtr : IQGraphicsObject, IDisposable, IQObject, IQGraphicsItem
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsObject_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsObject_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QGraphicsObject_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QGraphicsObject_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QGraphicsObject_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QGraphicsObject_Tr(s);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QGraphicsObject_GrabGesture(this.nativePtr, (int64)typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QGraphicsObject_UngrabGesture(this.nativePtr, (int64)typeVal);
	}
	
	public void UpdateMicroFocus()
	{
		CQt.QGraphicsObject_UpdateMicroFocus(this.nativePtr);
	}
	
	public bool Event(IQEvent ev)
	{
		return CQt.QGraphicsObject_Event(this.nativePtr, (ev == default || ev.NativePtr == default) ? default : ev.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QGraphicsObject_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QGraphicsObject_Tr3(s, c, n);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QGraphicsObject_GrabGesture2(this.nativePtr, (int64)typeVal, flags);
	}
	
	public bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(char8* name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (member == default || member.NativePtr == default) ? default : member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Property(char8* name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8* classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, (int64)timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr, (int64)typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member, (int64)typeVal);
	}
	
	public void* Scene()
	{
		return CQt.QGraphicsItem_Scene(this.nativePtr);
	}
	
	public void* ParentItem()
	{
		return CQt.QGraphicsItem_ParentItem(this.nativePtr);
	}
	
	public void* TopLevelItem()
	{
		return CQt.QGraphicsItem_TopLevelItem(this.nativePtr);
	}
	
	public void* ParentObject()
	{
		return CQt.QGraphicsItem_ParentObject(this.nativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QGraphicsItem_ParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QGraphicsItem_TopLevelWidget(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QGraphicsItem_Window(this.nativePtr);
	}
	
	public void* Panel()
	{
		return CQt.QGraphicsItem_Panel(this.nativePtr);
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		CQt.QGraphicsItem_SetParentItem(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void*[] ChildItems()
	{
		return CQt.QGraphicsItem_ChildItems(this.nativePtr);
	}
	
	public bool IsWidget()
	{
		return CQt.QGraphicsItem_IsWidget(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QGraphicsItem_IsWindow(this.nativePtr);
	}
	
	public bool IsPanel()
	{
		return CQt.QGraphicsItem_IsPanel(this.nativePtr);
	}
	
	public void* ToGraphicsObject()
	{
		return CQt.QGraphicsItem_ToGraphicsObject(this.nativePtr);
	}
	
	public void* ToGraphicsObject2()
	{
		return CQt.QGraphicsItem_ToGraphicsObject2(this.nativePtr);
	}
	
	public void* Group()
	{
		return CQt.QGraphicsItem_Group(this.nativePtr);
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		CQt.QGraphicsItem_SetGroup(this.nativePtr, (group == default || group.NativePtr == default) ? default : group.NativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QGraphicsItem_Flags(this.nativePtr);
	}
	
	public void SetFlag(int64 flag)
	{
		CQt.QGraphicsItem_SetFlag(this.nativePtr, (int64)flag);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QGraphicsItem_SetFlags(this.nativePtr, flags);
	}
	
	public int64 CacheMode()
	{
		return CQt.QGraphicsItem_CacheMode(this.nativePtr);
	}
	
	public void SetCacheMode(int64 mode)
	{
		CQt.QGraphicsItem_SetCacheMode(this.nativePtr, (int64)mode);
	}
	
	public int64 PanelModality()
	{
		return CQt.QGraphicsItem_PanelModality(this.nativePtr);
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		CQt.QGraphicsItem_SetPanelModality(this.nativePtr, (int64)panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return CQt.QGraphicsItem_IsBlockedByModalPanel(this.nativePtr);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QGraphicsItem_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QGraphicsItem_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public void Cursor()
	{
		CQt.QGraphicsItem_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QGraphicsItem_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
	}
	
	public bool HasCursor()
	{
		return CQt.QGraphicsItem_HasCursor(this.nativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QGraphicsItem_UnsetCursor(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QGraphicsItem_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return CQt.QGraphicsItem_IsVisibleTo(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QGraphicsItem_SetVisible(this.nativePtr, visible);
	}
	
	public void Hide()
	{
		CQt.QGraphicsItem_Hide(this.nativePtr);
	}
	
	public void Show()
	{
		CQt.QGraphicsItem_Show(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsItem_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QGraphicsItem_SetEnabled(this.nativePtr, enabled);
	}
	
	public bool IsSelected()
	{
		return CQt.QGraphicsItem_IsSelected(this.nativePtr);
	}
	
	public void SetSelected(bool selected)
	{
		CQt.QGraphicsItem_SetSelected(this.nativePtr, selected);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QGraphicsItem_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QGraphicsItem_SetAcceptDrops(this.nativePtr, on);
	}
	
	public double Opacity()
	{
		return CQt.QGraphicsItem_Opacity(this.nativePtr);
	}
	
	public double EffectiveOpacity()
	{
		return CQt.QGraphicsItem_EffectiveOpacity(this.nativePtr);
	}
	
	public void SetOpacity(double opacity)
	{
		CQt.QGraphicsItem_SetOpacity(this.nativePtr, opacity);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QGraphicsItem_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QGraphicsItem_SetGraphicsEffect(this.nativePtr, (effect == default || effect.NativePtr == default) ? default : effect.NativePtr);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return CQt.QGraphicsItem_AcceptedMouseButtons(this.nativePtr);
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		CQt.QGraphicsItem_SetAcceptedMouseButtons(this.nativePtr, buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return CQt.QGraphicsItem_AcceptHoverEvents(this.nativePtr);
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptHoverEvents(this.nativePtr, enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return CQt.QGraphicsItem_AcceptTouchEvents(this.nativePtr);
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptTouchEvents(this.nativePtr, enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return CQt.QGraphicsItem_FiltersChildEvents(this.nativePtr);
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetFiltersChildEvents(this.nativePtr, enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return CQt.QGraphicsItem_HandlesChildEvents(this.nativePtr);
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetHandlesChildEvents(this.nativePtr, enabled);
	}
	
	public bool IsActive()
	{
		return CQt.QGraphicsItem_IsActive(this.nativePtr);
	}
	
	public void SetActive(bool active)
	{
		CQt.QGraphicsItem_SetActive(this.nativePtr, active);
	}
	
	public bool HasFocus()
	{
		return CQt.QGraphicsItem_HasFocus(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QGraphicsItem_SetFocus(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QGraphicsItem_ClearFocus(this.nativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QGraphicsItem_FocusProxy(this.nativePtr);
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		CQt.QGraphicsItem_SetFocusProxy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* FocusItem()
	{
		return CQt.QGraphicsItem_FocusItem(this.nativePtr);
	}
	
	public void* FocusScopeItem()
	{
		return CQt.QGraphicsItem_FocusScopeItem(this.nativePtr);
	}
	
	public void GrabMouse()
	{
		CQt.QGraphicsItem_GrabMouse(this.nativePtr);
	}
	
	public void UngrabMouse()
	{
		CQt.QGraphicsItem_UngrabMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QGraphicsItem_GrabKeyboard(this.nativePtr);
	}
	
	public void UngrabKeyboard()
	{
		CQt.QGraphicsItem_UngrabKeyboard(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsItem_Pos(this.nativePtr);
	}
	
	public double X()
	{
		return CQt.QGraphicsItem_X(this.nativePtr);
	}
	
	public void SetX(double x)
	{
		CQt.QGraphicsItem_SetX(this.nativePtr, x);
	}
	
	public double Y()
	{
		return CQt.QGraphicsItem_Y(this.nativePtr);
	}
	
	public void SetY(double y)
	{
		CQt.QGraphicsItem_SetY(this.nativePtr, y);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsItem_ScenePos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsItem_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void SetPos2(double x, double y)
	{
		CQt.QGraphicsItem_SetPos2(this.nativePtr, x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		CQt.QGraphicsItem_MoveBy(this.nativePtr, dx, dy);
	}
	
	public void EnsureVisible()
	{
		CQt.QGraphicsItem_EnsureVisible(this.nativePtr);
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_EnsureVisible2(this.nativePtr, x, y, w, h);
	}
	
	public void Transform()
	{
		CQt.QGraphicsItem_Transform(this.nativePtr);
	}
	
	public void SceneTransform()
	{
		CQt.QGraphicsItem_SceneTransform(this.nativePtr);
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		CQt.QGraphicsItem_DeviceTransform(this.nativePtr, (viewportTransform == default || viewportTransform.NativePtr == default) ? default : viewportTransform.NativePtr);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		CQt.QGraphicsItem_ItemTransform(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		CQt.QGraphicsItem_SetTransform(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public void ResetTransform()
	{
		CQt.QGraphicsItem_ResetTransform(this.nativePtr);
	}
	
	public void SetRotation(double angle)
	{
		CQt.QGraphicsItem_SetRotation(this.nativePtr, angle);
	}
	
	public double Rotation()
	{
		return CQt.QGraphicsItem_Rotation(this.nativePtr);
	}
	
	public void SetScale(double scale)
	{
		CQt.QGraphicsItem_SetScale(this.nativePtr, scale);
	}
	
	public double Scale()
	{
		return CQt.QGraphicsItem_Scale(this.nativePtr);
	}
	
	public void*[] Transformations()
	{
		return CQt.QGraphicsItem_Transformations(this.nativePtr);
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		CQt.QGraphicsItem_SetTransformations(this.nativePtr, null);
	}
	
	public void TransformOriginPoint()
	{
		CQt.QGraphicsItem_TransformOriginPoint(this.nativePtr);
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint(this.nativePtr, (origin == default || origin.NativePtr == default) ? default : origin.NativePtr);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint2(this.nativePtr, ax, ay);
	}
	
	public void Advance(int32 phase)
	{
		CQt.QGraphicsItem_Advance(this.nativePtr, phase);
	}
	
	public double ZValue()
	{
		return CQt.QGraphicsItem_ZValue(this.nativePtr);
	}
	
	public void SetZValue(double z)
	{
		CQt.QGraphicsItem_SetZValue(this.nativePtr, z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		CQt.QGraphicsItem_StackBefore(this.nativePtr, (sibling == default || sibling.NativePtr == default) ? default : sibling.NativePtr);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsItem_BoundingRect(this.nativePtr);
	}
	
	public void ChildrenBoundingRect()
	{
		CQt.QGraphicsItem_ChildrenBoundingRect(this.nativePtr);
	}
	
	public void SceneBoundingRect()
	{
		CQt.QGraphicsItem_SceneBoundingRect(this.nativePtr);
	}
	
	public void Shape()
	{
		CQt.QGraphicsItem_Shape(this.nativePtr);
	}
	
	public bool IsClipped()
	{
		return CQt.QGraphicsItem_IsClipped(this.nativePtr);
	}
	
	public void ClipPath()
	{
		CQt.QGraphicsItem_ClipPath(this.nativePtr);
	}
	
	public bool Contains(IQPointF point)
	{
		return CQt.QGraphicsItem_Contains(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, (int64)mode);
	}
	
	public bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode);
	}
	
	public void*[] CollidingItems()
	{
		return CQt.QGraphicsItem_CollidingItems(this.nativePtr);
	}
	
	public bool IsObscured()
	{
		return CQt.QGraphicsItem_IsObscured(this.nativePtr);
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return CQt.QGraphicsItem_IsObscured2(this.nativePtr, x, y, w, h);
	}
	
	public bool IsObscuredBy(IQGraphicsItem item)
	{
		return CQt.QGraphicsItem_IsObscuredBy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void OpaqueArea()
	{
		CQt.QGraphicsItem_OpaqueArea(this.nativePtr);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		CQt.QGraphicsItem_BoundingRegion(this.nativePtr, (itemToDeviceTransform == default || itemToDeviceTransform.NativePtr == default) ? default : itemToDeviceTransform.NativePtr);
	}
	
	public double BoundingRegionGranularity()
	{
		return CQt.QGraphicsItem_BoundingRegionGranularity(this.nativePtr);
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		CQt.QGraphicsItem_SetBoundingRegionGranularity(this.nativePtr, granularity);
	}
	
	public void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		CQt.QGraphicsItem_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void Update()
	{
		CQt.QGraphicsItem_Update(this.nativePtr);
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		CQt.QGraphicsItem_Update2(this.nativePtr, x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		CQt.QGraphicsItem_Scroll(this.nativePtr, dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapToParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapToScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapToItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapToParent2(this.nativePtr, x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapToScene2(this.nativePtr, x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToScene2(this.nativePtr, x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapFromItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromParent2(this.nativePtr, x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromScene2(this.nativePtr, x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromScene2(this.nativePtr, x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return CQt.QGraphicsItem_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return CQt.QGraphicsItem_CommonAncestorItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsUnderMouse()
	{
		return CQt.QGraphicsItem_IsUnderMouse(this.nativePtr);
	}
	
	public void Data(int32 key)
	{
		CQt.QGraphicsItem_Data(this.nativePtr, key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		CQt.QGraphicsItem_SetData(this.nativePtr, key, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QGraphicsItem_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QGraphicsItem_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public int32 Type()
	{
		return CQt.QGraphicsItem_Type(this.nativePtr);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_InstallSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_RemoveSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsItem_SetFlag2(this.nativePtr, (int64)flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		CQt.QGraphicsItem_SetCacheMode2(this.nativePtr, (int64)mode, (cacheSize == default || cacheSize.NativePtr == default) ? default : cacheSize.NativePtr);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsItem_SetFocus1(this.nativePtr, (int64)focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		CQt.QGraphicsItem_EnsureVisible1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible5(this.nativePtr, x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible6(this.nativePtr, x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		CQt.QGraphicsItem_ItemTransform2(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		CQt.QGraphicsItem_SetTransform2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return CQt.QGraphicsItem_CollidingItems1(this.nativePtr, (int64)mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return CQt.QGraphicsItem_IsObscured1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Update1(IQRectF rect)
	{
		CQt.QGraphicsItem_Update1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		CQt.QGraphicsItem_Scroll3(this.nativePtr, dx, dy, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
}
public class QGraphicsObject
{
	public QGraphicsObjectPtr handle;
	
	public static implicit operator QGraphicsObjectPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsObjectPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* MetaObject()
	{
		return this.handle.MetaObject();
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return this.handle.Metacast(param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return this.handle.Metacall(param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return QGraphicsObjectPtr.Tr(s);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		this.handle.GrabGesture(typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		this.handle.UngrabGesture(typeVal);
	}
	
	public void UpdateMicroFocus()
	{
		this.handle.UpdateMicroFocus();
	}
	
	public virtual bool Event(IQEvent ev)
	{
		return this.handle.Event(ev);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QGraphicsObjectPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QGraphicsObjectPtr.Tr3(s, c, n);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		this.handle.GrabGesture2(typeVal, flags);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return this.handle.EventFilter(watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return this.handle.ObjectName();
	}
	
	public void SetObjectName(char8* name)
	{
		this.handle.SetObjectName(name);
	}
	
	public bool IsWidgetType()
	{
		return this.handle.IsWidgetType();
	}
	
	public bool IsWindowType()
	{
		return this.handle.IsWindowType();
	}
	
	public bool IsQuickItemType()
	{
		return this.handle.IsQuickItemType();
	}
	
	public bool SignalsBlocked()
	{
		return this.handle.SignalsBlocked();
	}
	
	public bool BlockSignals(bool b)
	{
		return this.handle.BlockSignals(b);
	}
	
	public void* Thread()
	{
		return this.handle.Thread();
	}
	
	public void MoveToThread(IQThread thread)
	{
		this.handle.MoveToThread(thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return this.handle.StartTimer(interval);
	}
	
	public void KillTimer(int32 id)
	{
		this.handle.KillTimer(id);
	}
	
	public void*[] Children()
	{
		return this.handle.Children();
	}
	
	public void SetParent(IQObject parent)
	{
		this.handle.SetParent(parent);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		this.handle.InstallEventFilter(filterObj);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		this.handle.RemoveEventFilter(obj);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		QGraphicsObjectPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QGraphicsObjectPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QGraphicsObjectPtr.DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		this.handle.DumpObjectTree();
	}
	
	public void DumpObjectInfo()
	{
		this.handle.DumpObjectInfo();
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return this.handle.SetProperty(name, value);
	}
	
	public void Property(char8* name)
	{
		this.handle.Property(name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return this.handle.DynamicPropertyNames();
	}
	
	public void* BindingStorage()
	{
		return this.handle.BindingStorage();
	}
	
	public void* BindingStorage2()
	{
		return this.handle.BindingStorage2();
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public bool Inherits(char8* classname)
	{
		return this.handle.Inherits(classname);
	}
	
	public void DeleteLater()
	{
		this.handle.DeleteLater();
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return this.handle.StartTimer2(interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		QGraphicsObjectPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
	public void* Scene()
	{
		return this.handle.Scene();
	}
	
	public void* ParentItem()
	{
		return this.handle.ParentItem();
	}
	
	public void* TopLevelItem()
	{
		return this.handle.TopLevelItem();
	}
	
	public void* ParentObject()
	{
		return this.handle.ParentObject();
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public void* TopLevelWidget()
	{
		return this.handle.TopLevelWidget();
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* Panel()
	{
		return this.handle.Panel();
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		this.handle.SetParentItem(parent);
	}
	
	public void*[] ChildItems()
	{
		return this.handle.ChildItems();
	}
	
	public bool IsWidget()
	{
		return this.handle.IsWidget();
	}
	
	public bool IsWindow()
	{
		return this.handle.IsWindow();
	}
	
	public bool IsPanel()
	{
		return this.handle.IsPanel();
	}
	
	public void* ToGraphicsObject()
	{
		return this.handle.ToGraphicsObject();
	}
	
	public void* ToGraphicsObject2()
	{
		return this.handle.ToGraphicsObject2();
	}
	
	public void* Group()
	{
		return this.handle.Group();
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		this.handle.SetGroup(group);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlag(int64 flag)
	{
		this.handle.SetFlag(flag);
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int64 CacheMode()
	{
		return this.handle.CacheMode();
	}
	
	public void SetCacheMode(int64 mode)
	{
		this.handle.SetCacheMode(mode);
	}
	
	public int64 PanelModality()
	{
		return this.handle.PanelModality();
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		this.handle.SetPanelModality(panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return this.handle.IsBlockedByModalPanel();
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public bool HasCursor()
	{
		return this.handle.HasCursor();
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return this.handle.IsVisibleTo(parent);
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public bool IsSelected()
	{
		return this.handle.IsSelected();
	}
	
	public void SetSelected(bool selected)
	{
		this.handle.SetSelected(selected);
	}
	
	public bool AcceptDrops()
	{
		return this.handle.AcceptDrops();
	}
	
	public void SetAcceptDrops(bool on)
	{
		this.handle.SetAcceptDrops(on);
	}
	
	public double Opacity()
	{
		return this.handle.Opacity();
	}
	
	public double EffectiveOpacity()
	{
		return this.handle.EffectiveOpacity();
	}
	
	public void SetOpacity(double opacity)
	{
		this.handle.SetOpacity(opacity);
	}
	
	public void* GraphicsEffect()
	{
		return this.handle.GraphicsEffect();
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		this.handle.SetGraphicsEffect(effect);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return this.handle.AcceptedMouseButtons();
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		this.handle.SetAcceptedMouseButtons(buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return this.handle.AcceptHoverEvents();
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		this.handle.SetAcceptHoverEvents(enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return this.handle.AcceptTouchEvents();
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		this.handle.SetAcceptTouchEvents(enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return this.handle.FiltersChildEvents();
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		this.handle.SetFiltersChildEvents(enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return this.handle.HandlesChildEvents();
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		this.handle.SetHandlesChildEvents(enabled);
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void SetActive(bool active)
	{
		this.handle.SetActive(active);
	}
	
	public bool HasFocus()
	{
		return this.handle.HasFocus();
	}
	
	public void SetFocus()
	{
		this.handle.SetFocus();
	}
	
	public void ClearFocus()
	{
		this.handle.ClearFocus();
	}
	
	public void* FocusProxy()
	{
		return this.handle.FocusProxy();
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		this.handle.SetFocusProxy(item);
	}
	
	public void* FocusItem()
	{
		return this.handle.FocusItem();
	}
	
	public void* FocusScopeItem()
	{
		return this.handle.FocusScopeItem();
	}
	
	public void GrabMouse()
	{
		this.handle.GrabMouse();
	}
	
	public void UngrabMouse()
	{
		this.handle.UngrabMouse();
	}
	
	public void GrabKeyboard()
	{
		this.handle.GrabKeyboard();
	}
	
	public void UngrabKeyboard()
	{
		this.handle.UngrabKeyboard();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public double X()
	{
		return this.handle.X();
	}
	
	public void SetX(double x)
	{
		this.handle.SetX(x);
	}
	
	public double Y()
	{
		return this.handle.Y();
	}
	
	public void SetY(double y)
	{
		this.handle.SetY(y);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void SetPos2(double x, double y)
	{
		this.handle.SetPos2(x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		this.handle.MoveBy(dx, dy);
	}
	
	public void EnsureVisible()
	{
		this.handle.EnsureVisible();
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		this.handle.EnsureVisible2(x, y, w, h);
	}
	
	public void Transform()
	{
		this.handle.Transform();
	}
	
	public void SceneTransform()
	{
		this.handle.SceneTransform();
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		this.handle.DeviceTransform(viewportTransform);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		this.handle.ItemTransform(other);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		this.handle.SetTransform(matrix);
	}
	
	public void ResetTransform()
	{
		this.handle.ResetTransform();
	}
	
	public void SetRotation(double angle)
	{
		this.handle.SetRotation(angle);
	}
	
	public double Rotation()
	{
		return this.handle.Rotation();
	}
	
	public void SetScale(double scale)
	{
		this.handle.SetScale(scale);
	}
	
	public double Scale()
	{
		return this.handle.Scale();
	}
	
	public void*[] Transformations()
	{
		return this.handle.Transformations();
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		this.handle.SetTransformations(null);
	}
	
	public void TransformOriginPoint()
	{
		this.handle.TransformOriginPoint();
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		this.handle.SetTransformOriginPoint(origin);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		this.handle.SetTransformOriginPoint2(ax, ay);
	}
	
	public virtual void Advance(int32 phase)
	{
		this.handle.Advance(phase);
	}
	
	public double ZValue()
	{
		return this.handle.ZValue();
	}
	
	public void SetZValue(double z)
	{
		this.handle.SetZValue(z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		this.handle.StackBefore(sibling);
	}
	
	public virtual void BoundingRect()
	{
		this.handle.BoundingRect();
	}
	
	public void ChildrenBoundingRect()
	{
		this.handle.ChildrenBoundingRect();
	}
	
	public void SceneBoundingRect()
	{
		this.handle.SceneBoundingRect();
	}
	
	public virtual void Shape()
	{
		this.handle.Shape();
	}
	
	public bool IsClipped()
	{
		return this.handle.IsClipped();
	}
	
	public void ClipPath()
	{
		this.handle.ClipPath();
	}
	
	public virtual bool Contains(IQPointF point)
	{
		return this.handle.Contains(point);
	}
	
	public virtual bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return this.handle.CollidesWithItem(other, mode);
	}
	
	public virtual bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return this.handle.CollidesWithPath(path, mode);
	}
	
	public void*[] CollidingItems()
	{
		return this.handle.CollidingItems();
	}
	
	public bool IsObscured()
	{
		return this.handle.IsObscured();
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return this.handle.IsObscured2(x, y, w, h);
	}
	
	public virtual bool IsObscuredBy(IQGraphicsItem item)
	{
		return this.handle.IsObscuredBy(item);
	}
	
	public virtual void OpaqueArea()
	{
		this.handle.OpaqueArea();
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		this.handle.BoundingRegion(itemToDeviceTransform);
	}
	
	public double BoundingRegionGranularity()
	{
		return this.handle.BoundingRegionGranularity();
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		this.handle.SetBoundingRegionGranularity(granularity);
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		this.handle.Paint(painter, option, widget);
	}
	
	public void Update()
	{
		this.handle.Update();
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		this.handle.Update2(x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		this.handle.Scroll(dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapToItem(item, point);
	}
	
	public void MapToParent(IQPointF point)
	{
		this.handle.MapToParent(point);
	}
	
	public void MapToScene(IQPointF point)
	{
		this.handle.MapToScene(point);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectToItem(item, rect);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		this.handle.MapRectToParent(rect);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		this.handle.MapRectToScene(rect);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapToItem4(item, path);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		this.handle.MapToParentWithPath(path);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		this.handle.MapToSceneWithPath(path);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapFromItem(item, point);
	}
	
	public void MapFromParent(IQPointF point)
	{
		this.handle.MapFromParent(point);
	}
	
	public void MapFromScene(IQPointF point)
	{
		this.handle.MapFromScene(point);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectFromItem(item, rect);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		this.handle.MapRectFromParent(rect);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		this.handle.MapRectFromScene(rect);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapFromItem4(item, path);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		this.handle.MapFromParentWithPath(path);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		this.handle.MapFromSceneWithPath(path);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapToItem5(item, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		this.handle.MapToParent2(x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		this.handle.MapToScene2(x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectToItem2(item, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectToParent2(x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectToScene2(x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapFromItem5(item, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		this.handle.MapFromParent2(x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		this.handle.MapFromScene2(x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectFromItem2(item, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromParent2(x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromScene2(x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return this.handle.CommonAncestorItem(other);
	}
	
	public bool IsUnderMouse()
	{
		return this.handle.IsUnderMouse();
	}
	
	public void Data(int32 key)
	{
		this.handle.Data(key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		this.handle.SetData(key, value);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
	}
	
	public virtual int32 Type()
	{
		return this.handle.Type();
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.InstallSceneEventFilter(filterItem);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.RemoveSceneEventFilter(filterItem);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		this.handle.SetFlag2(flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		this.handle.SetCacheMode2(mode, cacheSize);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		this.handle.SetFocus1(focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		this.handle.EnsureVisible1(rect);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		this.handle.EnsureVisible22(rect, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible3(rect, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		this.handle.EnsureVisible5(x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible6(x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		this.handle.ItemTransform2(other, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		this.handle.SetTransform2(matrix, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return this.handle.CollidingItems1(mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return this.handle.IsObscured1(rect);
	}
	
	public void Update1(IQRectF rect)
	{
		this.handle.Update1(rect);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		this.handle.Scroll3(dx, dy, rect);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsObject_new")]
	public static extern void* QGraphicsObject_new();
	[LinkName("QGraphicsObject_new2")]
	public static extern void* QGraphicsObject_new2(void* parent);
	[LinkName("QGraphicsObject_MetaObject")]
	public static extern void* QGraphicsObject_MetaObject(void* c_this);
	[LinkName("QGraphicsObject_Metacast")]
	public static extern void* QGraphicsObject_Metacast(void* c_this, char8* param1);
	[LinkName("QGraphicsObject_Metacall")]
	public static extern int32 QGraphicsObject_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QGraphicsObject_Tr")]
	public static extern libqt_string QGraphicsObject_Tr(char8* s);
	[LinkName("QGraphicsObject_GrabGesture")]
	public static extern void QGraphicsObject_GrabGesture(void* c_this, int64 typeVal);
	[LinkName("QGraphicsObject_UngrabGesture")]
	public static extern void QGraphicsObject_UngrabGesture(void* c_this, int64 typeVal);
	[LinkName("QGraphicsObject_UpdateMicroFocus")]
	public static extern void QGraphicsObject_UpdateMicroFocus(void* c_this);
	[LinkName("QGraphicsObject_Connect_ParentChanged")]
	public static extern void QGraphicsObject_Connect_ParentChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsObject_Connect_OpacityChanged")]
	public static extern void QGraphicsObject_Connect_OpacityChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsObject_Connect_VisibleChanged")]
	public static extern void QGraphicsObject_Connect_VisibleChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsObject_Connect_EnabledChanged")]
	public static extern void QGraphicsObject_Connect_EnabledChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsObject_Connect_XChanged")]
	public static extern void QGraphicsObject_Connect_XChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsObject_Connect_YChanged")]
	public static extern void QGraphicsObject_Connect_YChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsObject_Connect_ZChanged")]
	public static extern void QGraphicsObject_Connect_ZChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsObject_Connect_RotationChanged")]
	public static extern void QGraphicsObject_Connect_RotationChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsObject_Connect_ScaleChanged")]
	public static extern void QGraphicsObject_Connect_ScaleChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsObject_Connect_ChildrenChanged")]
	public static extern void QGraphicsObject_Connect_ChildrenChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsObject_Connect_WidthChanged")]
	public static extern void QGraphicsObject_Connect_WidthChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsObject_Connect_HeightChanged")]
	public static extern void QGraphicsObject_Connect_HeightChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsObject_Event")]
	public static extern bool QGraphicsObject_Event(void* c_this, void* ev);
	[LinkName("QGraphicsObject_Tr2")]
	public static extern libqt_string QGraphicsObject_Tr2(char8* s, char8* c);
	[LinkName("QGraphicsObject_Tr3")]
	public static extern libqt_string QGraphicsObject_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QGraphicsObject_GrabGesture2")]
	public static extern void QGraphicsObject_GrabGesture2(void* c_this, int64 typeVal, int64 flags);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsObject_Delete")]
	public static extern void QGraphicsObject_Delete(void* self);
}
public interface IQAbstractGraphicsShapeItem
{
	void* NativePtr { get; }
}
public struct QAbstractGraphicsShapeItemPtr : IQAbstractGraphicsShapeItem, IDisposable, IQGraphicsItem
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QAbstractGraphicsShapeItem_new());
	}
	
	public void Dispose()
	{
		CQt.QAbstractGraphicsShapeItem_Delete(this.nativePtr);
	}
	
	public void Pen()
	{
		CQt.QAbstractGraphicsShapeItem_Pen(this.nativePtr);
	}
	
	public void SetPen(IQPen pen)
	{
		CQt.QAbstractGraphicsShapeItem_SetPen(this.nativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void Brush()
	{
		CQt.QAbstractGraphicsShapeItem_Brush(this.nativePtr);
	}
	
	public void SetBrush(IQBrush brush)
	{
		CQt.QAbstractGraphicsShapeItem_SetBrush(this.nativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public bool IsObscuredBy(IQGraphicsItem item)
	{
		return CQt.QAbstractGraphicsShapeItem_IsObscuredBy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void OpaqueArea()
	{
		CQt.QAbstractGraphicsShapeItem_OpaqueArea(this.nativePtr);
	}
	
	public void* Scene()
	{
		return CQt.QGraphicsItem_Scene(this.nativePtr);
	}
	
	public void* ParentItem()
	{
		return CQt.QGraphicsItem_ParentItem(this.nativePtr);
	}
	
	public void* TopLevelItem()
	{
		return CQt.QGraphicsItem_TopLevelItem(this.nativePtr);
	}
	
	public void* ParentObject()
	{
		return CQt.QGraphicsItem_ParentObject(this.nativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QGraphicsItem_ParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QGraphicsItem_TopLevelWidget(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QGraphicsItem_Window(this.nativePtr);
	}
	
	public void* Panel()
	{
		return CQt.QGraphicsItem_Panel(this.nativePtr);
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		CQt.QGraphicsItem_SetParentItem(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void*[] ChildItems()
	{
		return CQt.QGraphicsItem_ChildItems(this.nativePtr);
	}
	
	public bool IsWidget()
	{
		return CQt.QGraphicsItem_IsWidget(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QGraphicsItem_IsWindow(this.nativePtr);
	}
	
	public bool IsPanel()
	{
		return CQt.QGraphicsItem_IsPanel(this.nativePtr);
	}
	
	public void* ToGraphicsObject()
	{
		return CQt.QGraphicsItem_ToGraphicsObject(this.nativePtr);
	}
	
	public void* ToGraphicsObject2()
	{
		return CQt.QGraphicsItem_ToGraphicsObject2(this.nativePtr);
	}
	
	public void* Group()
	{
		return CQt.QGraphicsItem_Group(this.nativePtr);
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		CQt.QGraphicsItem_SetGroup(this.nativePtr, (group == default || group.NativePtr == default) ? default : group.NativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QGraphicsItem_Flags(this.nativePtr);
	}
	
	public void SetFlag(int64 flag)
	{
		CQt.QGraphicsItem_SetFlag(this.nativePtr, (int64)flag);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QGraphicsItem_SetFlags(this.nativePtr, flags);
	}
	
	public int64 CacheMode()
	{
		return CQt.QGraphicsItem_CacheMode(this.nativePtr);
	}
	
	public void SetCacheMode(int64 mode)
	{
		CQt.QGraphicsItem_SetCacheMode(this.nativePtr, (int64)mode);
	}
	
	public int64 PanelModality()
	{
		return CQt.QGraphicsItem_PanelModality(this.nativePtr);
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		CQt.QGraphicsItem_SetPanelModality(this.nativePtr, (int64)panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return CQt.QGraphicsItem_IsBlockedByModalPanel(this.nativePtr);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QGraphicsItem_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QGraphicsItem_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public void Cursor()
	{
		CQt.QGraphicsItem_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QGraphicsItem_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
	}
	
	public bool HasCursor()
	{
		return CQt.QGraphicsItem_HasCursor(this.nativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QGraphicsItem_UnsetCursor(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QGraphicsItem_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return CQt.QGraphicsItem_IsVisibleTo(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QGraphicsItem_SetVisible(this.nativePtr, visible);
	}
	
	public void Hide()
	{
		CQt.QGraphicsItem_Hide(this.nativePtr);
	}
	
	public void Show()
	{
		CQt.QGraphicsItem_Show(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsItem_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QGraphicsItem_SetEnabled(this.nativePtr, enabled);
	}
	
	public bool IsSelected()
	{
		return CQt.QGraphicsItem_IsSelected(this.nativePtr);
	}
	
	public void SetSelected(bool selected)
	{
		CQt.QGraphicsItem_SetSelected(this.nativePtr, selected);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QGraphicsItem_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QGraphicsItem_SetAcceptDrops(this.nativePtr, on);
	}
	
	public double Opacity()
	{
		return CQt.QGraphicsItem_Opacity(this.nativePtr);
	}
	
	public double EffectiveOpacity()
	{
		return CQt.QGraphicsItem_EffectiveOpacity(this.nativePtr);
	}
	
	public void SetOpacity(double opacity)
	{
		CQt.QGraphicsItem_SetOpacity(this.nativePtr, opacity);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QGraphicsItem_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QGraphicsItem_SetGraphicsEffect(this.nativePtr, (effect == default || effect.NativePtr == default) ? default : effect.NativePtr);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return CQt.QGraphicsItem_AcceptedMouseButtons(this.nativePtr);
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		CQt.QGraphicsItem_SetAcceptedMouseButtons(this.nativePtr, buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return CQt.QGraphicsItem_AcceptHoverEvents(this.nativePtr);
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptHoverEvents(this.nativePtr, enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return CQt.QGraphicsItem_AcceptTouchEvents(this.nativePtr);
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptTouchEvents(this.nativePtr, enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return CQt.QGraphicsItem_FiltersChildEvents(this.nativePtr);
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetFiltersChildEvents(this.nativePtr, enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return CQt.QGraphicsItem_HandlesChildEvents(this.nativePtr);
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetHandlesChildEvents(this.nativePtr, enabled);
	}
	
	public bool IsActive()
	{
		return CQt.QGraphicsItem_IsActive(this.nativePtr);
	}
	
	public void SetActive(bool active)
	{
		CQt.QGraphicsItem_SetActive(this.nativePtr, active);
	}
	
	public bool HasFocus()
	{
		return CQt.QGraphicsItem_HasFocus(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QGraphicsItem_SetFocus(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QGraphicsItem_ClearFocus(this.nativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QGraphicsItem_FocusProxy(this.nativePtr);
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		CQt.QGraphicsItem_SetFocusProxy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* FocusItem()
	{
		return CQt.QGraphicsItem_FocusItem(this.nativePtr);
	}
	
	public void* FocusScopeItem()
	{
		return CQt.QGraphicsItem_FocusScopeItem(this.nativePtr);
	}
	
	public void GrabMouse()
	{
		CQt.QGraphicsItem_GrabMouse(this.nativePtr);
	}
	
	public void UngrabMouse()
	{
		CQt.QGraphicsItem_UngrabMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QGraphicsItem_GrabKeyboard(this.nativePtr);
	}
	
	public void UngrabKeyboard()
	{
		CQt.QGraphicsItem_UngrabKeyboard(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsItem_Pos(this.nativePtr);
	}
	
	public double X()
	{
		return CQt.QGraphicsItem_X(this.nativePtr);
	}
	
	public void SetX(double x)
	{
		CQt.QGraphicsItem_SetX(this.nativePtr, x);
	}
	
	public double Y()
	{
		return CQt.QGraphicsItem_Y(this.nativePtr);
	}
	
	public void SetY(double y)
	{
		CQt.QGraphicsItem_SetY(this.nativePtr, y);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsItem_ScenePos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsItem_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void SetPos2(double x, double y)
	{
		CQt.QGraphicsItem_SetPos2(this.nativePtr, x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		CQt.QGraphicsItem_MoveBy(this.nativePtr, dx, dy);
	}
	
	public void EnsureVisible()
	{
		CQt.QGraphicsItem_EnsureVisible(this.nativePtr);
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_EnsureVisible2(this.nativePtr, x, y, w, h);
	}
	
	public void Transform()
	{
		CQt.QGraphicsItem_Transform(this.nativePtr);
	}
	
	public void SceneTransform()
	{
		CQt.QGraphicsItem_SceneTransform(this.nativePtr);
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		CQt.QGraphicsItem_DeviceTransform(this.nativePtr, (viewportTransform == default || viewportTransform.NativePtr == default) ? default : viewportTransform.NativePtr);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		CQt.QGraphicsItem_ItemTransform(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		CQt.QGraphicsItem_SetTransform(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public void ResetTransform()
	{
		CQt.QGraphicsItem_ResetTransform(this.nativePtr);
	}
	
	public void SetRotation(double angle)
	{
		CQt.QGraphicsItem_SetRotation(this.nativePtr, angle);
	}
	
	public double Rotation()
	{
		return CQt.QGraphicsItem_Rotation(this.nativePtr);
	}
	
	public void SetScale(double scale)
	{
		CQt.QGraphicsItem_SetScale(this.nativePtr, scale);
	}
	
	public double Scale()
	{
		return CQt.QGraphicsItem_Scale(this.nativePtr);
	}
	
	public void*[] Transformations()
	{
		return CQt.QGraphicsItem_Transformations(this.nativePtr);
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		CQt.QGraphicsItem_SetTransformations(this.nativePtr, null);
	}
	
	public void TransformOriginPoint()
	{
		CQt.QGraphicsItem_TransformOriginPoint(this.nativePtr);
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint(this.nativePtr, (origin == default || origin.NativePtr == default) ? default : origin.NativePtr);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint2(this.nativePtr, ax, ay);
	}
	
	public void Advance(int32 phase)
	{
		CQt.QGraphicsItem_Advance(this.nativePtr, phase);
	}
	
	public double ZValue()
	{
		return CQt.QGraphicsItem_ZValue(this.nativePtr);
	}
	
	public void SetZValue(double z)
	{
		CQt.QGraphicsItem_SetZValue(this.nativePtr, z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		CQt.QGraphicsItem_StackBefore(this.nativePtr, (sibling == default || sibling.NativePtr == default) ? default : sibling.NativePtr);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsItem_BoundingRect(this.nativePtr);
	}
	
	public void ChildrenBoundingRect()
	{
		CQt.QGraphicsItem_ChildrenBoundingRect(this.nativePtr);
	}
	
	public void SceneBoundingRect()
	{
		CQt.QGraphicsItem_SceneBoundingRect(this.nativePtr);
	}
	
	public void Shape()
	{
		CQt.QGraphicsItem_Shape(this.nativePtr);
	}
	
	public bool IsClipped()
	{
		return CQt.QGraphicsItem_IsClipped(this.nativePtr);
	}
	
	public void ClipPath()
	{
		CQt.QGraphicsItem_ClipPath(this.nativePtr);
	}
	
	public bool Contains(IQPointF point)
	{
		return CQt.QGraphicsItem_Contains(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, (int64)mode);
	}
	
	public bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode);
	}
	
	public void*[] CollidingItems()
	{
		return CQt.QGraphicsItem_CollidingItems(this.nativePtr);
	}
	
	public bool IsObscured()
	{
		return CQt.QGraphicsItem_IsObscured(this.nativePtr);
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return CQt.QGraphicsItem_IsObscured2(this.nativePtr, x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		CQt.QGraphicsItem_BoundingRegion(this.nativePtr, (itemToDeviceTransform == default || itemToDeviceTransform.NativePtr == default) ? default : itemToDeviceTransform.NativePtr);
	}
	
	public double BoundingRegionGranularity()
	{
		return CQt.QGraphicsItem_BoundingRegionGranularity(this.nativePtr);
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		CQt.QGraphicsItem_SetBoundingRegionGranularity(this.nativePtr, granularity);
	}
	
	public void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		CQt.QGraphicsItem_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void Update()
	{
		CQt.QGraphicsItem_Update(this.nativePtr);
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		CQt.QGraphicsItem_Update2(this.nativePtr, x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		CQt.QGraphicsItem_Scroll(this.nativePtr, dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapToParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapToScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapToItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapToParent2(this.nativePtr, x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapToScene2(this.nativePtr, x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToScene2(this.nativePtr, x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapFromItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromParent2(this.nativePtr, x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromScene2(this.nativePtr, x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromScene2(this.nativePtr, x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return CQt.QGraphicsItem_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return CQt.QGraphicsItem_CommonAncestorItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsUnderMouse()
	{
		return CQt.QGraphicsItem_IsUnderMouse(this.nativePtr);
	}
	
	public void Data(int32 key)
	{
		CQt.QGraphicsItem_Data(this.nativePtr, key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		CQt.QGraphicsItem_SetData(this.nativePtr, key, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QGraphicsItem_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QGraphicsItem_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public int32 Type()
	{
		return CQt.QGraphicsItem_Type(this.nativePtr);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_InstallSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_RemoveSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsItem_SetFlag2(this.nativePtr, (int64)flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		CQt.QGraphicsItem_SetCacheMode2(this.nativePtr, (int64)mode, (cacheSize == default || cacheSize.NativePtr == default) ? default : cacheSize.NativePtr);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsItem_SetFocus1(this.nativePtr, (int64)focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		CQt.QGraphicsItem_EnsureVisible1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible5(this.nativePtr, x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible6(this.nativePtr, x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		CQt.QGraphicsItem_ItemTransform2(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		CQt.QGraphicsItem_SetTransform2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return CQt.QGraphicsItem_CollidingItems1(this.nativePtr, (int64)mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return CQt.QGraphicsItem_IsObscured1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Update1(IQRectF rect)
	{
		CQt.QGraphicsItem_Update1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		CQt.QGraphicsItem_Scroll3(this.nativePtr, dx, dy, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
}
public class QAbstractGraphicsShapeItem
{
	public QAbstractGraphicsShapeItemPtr handle;
	
	public static implicit operator QAbstractGraphicsShapeItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QAbstractGraphicsShapeItemPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Pen()
	{
		this.handle.Pen();
	}
	
	public void SetPen(IQPen pen)
	{
		this.handle.SetPen(pen);
	}
	
	public void Brush()
	{
		this.handle.Brush();
	}
	
	public void SetBrush(IQBrush brush)
	{
		this.handle.SetBrush(brush);
	}
	
	public virtual bool IsObscuredBy(IQGraphicsItem item)
	{
		return this.handle.IsObscuredBy(item);
	}
	
	public virtual void OpaqueArea()
	{
		this.handle.OpaqueArea();
	}
	
	public void* Scene()
	{
		return this.handle.Scene();
	}
	
	public void* ParentItem()
	{
		return this.handle.ParentItem();
	}
	
	public void* TopLevelItem()
	{
		return this.handle.TopLevelItem();
	}
	
	public void* ParentObject()
	{
		return this.handle.ParentObject();
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public void* TopLevelWidget()
	{
		return this.handle.TopLevelWidget();
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* Panel()
	{
		return this.handle.Panel();
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		this.handle.SetParentItem(parent);
	}
	
	public void*[] ChildItems()
	{
		return this.handle.ChildItems();
	}
	
	public bool IsWidget()
	{
		return this.handle.IsWidget();
	}
	
	public bool IsWindow()
	{
		return this.handle.IsWindow();
	}
	
	public bool IsPanel()
	{
		return this.handle.IsPanel();
	}
	
	public void* ToGraphicsObject()
	{
		return this.handle.ToGraphicsObject();
	}
	
	public void* ToGraphicsObject2()
	{
		return this.handle.ToGraphicsObject2();
	}
	
	public void* Group()
	{
		return this.handle.Group();
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		this.handle.SetGroup(group);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlag(int64 flag)
	{
		this.handle.SetFlag(flag);
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int64 CacheMode()
	{
		return this.handle.CacheMode();
	}
	
	public void SetCacheMode(int64 mode)
	{
		this.handle.SetCacheMode(mode);
	}
	
	public int64 PanelModality()
	{
		return this.handle.PanelModality();
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		this.handle.SetPanelModality(panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return this.handle.IsBlockedByModalPanel();
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public bool HasCursor()
	{
		return this.handle.HasCursor();
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return this.handle.IsVisibleTo(parent);
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public bool IsSelected()
	{
		return this.handle.IsSelected();
	}
	
	public void SetSelected(bool selected)
	{
		this.handle.SetSelected(selected);
	}
	
	public bool AcceptDrops()
	{
		return this.handle.AcceptDrops();
	}
	
	public void SetAcceptDrops(bool on)
	{
		this.handle.SetAcceptDrops(on);
	}
	
	public double Opacity()
	{
		return this.handle.Opacity();
	}
	
	public double EffectiveOpacity()
	{
		return this.handle.EffectiveOpacity();
	}
	
	public void SetOpacity(double opacity)
	{
		this.handle.SetOpacity(opacity);
	}
	
	public void* GraphicsEffect()
	{
		return this.handle.GraphicsEffect();
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		this.handle.SetGraphicsEffect(effect);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return this.handle.AcceptedMouseButtons();
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		this.handle.SetAcceptedMouseButtons(buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return this.handle.AcceptHoverEvents();
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		this.handle.SetAcceptHoverEvents(enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return this.handle.AcceptTouchEvents();
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		this.handle.SetAcceptTouchEvents(enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return this.handle.FiltersChildEvents();
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		this.handle.SetFiltersChildEvents(enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return this.handle.HandlesChildEvents();
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		this.handle.SetHandlesChildEvents(enabled);
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void SetActive(bool active)
	{
		this.handle.SetActive(active);
	}
	
	public bool HasFocus()
	{
		return this.handle.HasFocus();
	}
	
	public void SetFocus()
	{
		this.handle.SetFocus();
	}
	
	public void ClearFocus()
	{
		this.handle.ClearFocus();
	}
	
	public void* FocusProxy()
	{
		return this.handle.FocusProxy();
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		this.handle.SetFocusProxy(item);
	}
	
	public void* FocusItem()
	{
		return this.handle.FocusItem();
	}
	
	public void* FocusScopeItem()
	{
		return this.handle.FocusScopeItem();
	}
	
	public void GrabMouse()
	{
		this.handle.GrabMouse();
	}
	
	public void UngrabMouse()
	{
		this.handle.UngrabMouse();
	}
	
	public void GrabKeyboard()
	{
		this.handle.GrabKeyboard();
	}
	
	public void UngrabKeyboard()
	{
		this.handle.UngrabKeyboard();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public double X()
	{
		return this.handle.X();
	}
	
	public void SetX(double x)
	{
		this.handle.SetX(x);
	}
	
	public double Y()
	{
		return this.handle.Y();
	}
	
	public void SetY(double y)
	{
		this.handle.SetY(y);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void SetPos2(double x, double y)
	{
		this.handle.SetPos2(x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		this.handle.MoveBy(dx, dy);
	}
	
	public void EnsureVisible()
	{
		this.handle.EnsureVisible();
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		this.handle.EnsureVisible2(x, y, w, h);
	}
	
	public void Transform()
	{
		this.handle.Transform();
	}
	
	public void SceneTransform()
	{
		this.handle.SceneTransform();
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		this.handle.DeviceTransform(viewportTransform);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		this.handle.ItemTransform(other);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		this.handle.SetTransform(matrix);
	}
	
	public void ResetTransform()
	{
		this.handle.ResetTransform();
	}
	
	public void SetRotation(double angle)
	{
		this.handle.SetRotation(angle);
	}
	
	public double Rotation()
	{
		return this.handle.Rotation();
	}
	
	public void SetScale(double scale)
	{
		this.handle.SetScale(scale);
	}
	
	public double Scale()
	{
		return this.handle.Scale();
	}
	
	public void*[] Transformations()
	{
		return this.handle.Transformations();
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		this.handle.SetTransformations(null);
	}
	
	public void TransformOriginPoint()
	{
		this.handle.TransformOriginPoint();
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		this.handle.SetTransformOriginPoint(origin);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		this.handle.SetTransformOriginPoint2(ax, ay);
	}
	
	public virtual void Advance(int32 phase)
	{
		this.handle.Advance(phase);
	}
	
	public double ZValue()
	{
		return this.handle.ZValue();
	}
	
	public void SetZValue(double z)
	{
		this.handle.SetZValue(z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		this.handle.StackBefore(sibling);
	}
	
	public virtual void BoundingRect()
	{
		this.handle.BoundingRect();
	}
	
	public void ChildrenBoundingRect()
	{
		this.handle.ChildrenBoundingRect();
	}
	
	public void SceneBoundingRect()
	{
		this.handle.SceneBoundingRect();
	}
	
	public virtual void Shape()
	{
		this.handle.Shape();
	}
	
	public bool IsClipped()
	{
		return this.handle.IsClipped();
	}
	
	public void ClipPath()
	{
		this.handle.ClipPath();
	}
	
	public virtual bool Contains(IQPointF point)
	{
		return this.handle.Contains(point);
	}
	
	public virtual bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return this.handle.CollidesWithItem(other, mode);
	}
	
	public virtual bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return this.handle.CollidesWithPath(path, mode);
	}
	
	public void*[] CollidingItems()
	{
		return this.handle.CollidingItems();
	}
	
	public bool IsObscured()
	{
		return this.handle.IsObscured();
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return this.handle.IsObscured2(x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		this.handle.BoundingRegion(itemToDeviceTransform);
	}
	
	public double BoundingRegionGranularity()
	{
		return this.handle.BoundingRegionGranularity();
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		this.handle.SetBoundingRegionGranularity(granularity);
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		this.handle.Paint(painter, option, widget);
	}
	
	public void Update()
	{
		this.handle.Update();
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		this.handle.Update2(x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		this.handle.Scroll(dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapToItem(item, point);
	}
	
	public void MapToParent(IQPointF point)
	{
		this.handle.MapToParent(point);
	}
	
	public void MapToScene(IQPointF point)
	{
		this.handle.MapToScene(point);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectToItem(item, rect);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		this.handle.MapRectToParent(rect);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		this.handle.MapRectToScene(rect);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapToItem4(item, path);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		this.handle.MapToParentWithPath(path);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		this.handle.MapToSceneWithPath(path);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapFromItem(item, point);
	}
	
	public void MapFromParent(IQPointF point)
	{
		this.handle.MapFromParent(point);
	}
	
	public void MapFromScene(IQPointF point)
	{
		this.handle.MapFromScene(point);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectFromItem(item, rect);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		this.handle.MapRectFromParent(rect);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		this.handle.MapRectFromScene(rect);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapFromItem4(item, path);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		this.handle.MapFromParentWithPath(path);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		this.handle.MapFromSceneWithPath(path);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapToItem5(item, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		this.handle.MapToParent2(x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		this.handle.MapToScene2(x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectToItem2(item, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectToParent2(x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectToScene2(x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapFromItem5(item, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		this.handle.MapFromParent2(x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		this.handle.MapFromScene2(x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectFromItem2(item, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromParent2(x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromScene2(x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return this.handle.CommonAncestorItem(other);
	}
	
	public bool IsUnderMouse()
	{
		return this.handle.IsUnderMouse();
	}
	
	public void Data(int32 key)
	{
		this.handle.Data(key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		this.handle.SetData(key, value);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
	}
	
	public virtual int32 Type()
	{
		return this.handle.Type();
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.InstallSceneEventFilter(filterItem);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.RemoveSceneEventFilter(filterItem);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		this.handle.SetFlag2(flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		this.handle.SetCacheMode2(mode, cacheSize);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		this.handle.SetFocus1(focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		this.handle.EnsureVisible1(rect);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		this.handle.EnsureVisible22(rect, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible3(rect, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		this.handle.EnsureVisible5(x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible6(x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		this.handle.ItemTransform2(other, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		this.handle.SetTransform2(matrix, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return this.handle.CollidingItems1(mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return this.handle.IsObscured1(rect);
	}
	
	public void Update1(IQRectF rect)
	{
		this.handle.Update1(rect);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		this.handle.Scroll3(dx, dy, rect);
	}
	
}
extension CQt
{
	[LinkName("QAbstractGraphicsShapeItem_new")]
	public static extern void* QAbstractGraphicsShapeItem_new();
	[LinkName("QAbstractGraphicsShapeItem_new2")]
	public static extern void* QAbstractGraphicsShapeItem_new2(void* parent);
	[LinkName("QAbstractGraphicsShapeItem_Pen")]
	public static extern void QAbstractGraphicsShapeItem_Pen(void* c_this);
	[LinkName("QAbstractGraphicsShapeItem_SetPen")]
	public static extern void QAbstractGraphicsShapeItem_SetPen(void* c_this, void* pen);
	[LinkName("QAbstractGraphicsShapeItem_Brush")]
	public static extern void QAbstractGraphicsShapeItem_Brush(void* c_this);
	[LinkName("QAbstractGraphicsShapeItem_SetBrush")]
	public static extern void QAbstractGraphicsShapeItem_SetBrush(void* c_this, void* brush);
	[LinkName("QAbstractGraphicsShapeItem_IsObscuredBy")]
	public static extern bool QAbstractGraphicsShapeItem_IsObscuredBy(void* c_this, void* item);
	[LinkName("QAbstractGraphicsShapeItem_OpaqueArea")]
	public static extern void QAbstractGraphicsShapeItem_OpaqueArea(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QAbstractGraphicsShapeItem_Delete")]
	public static extern void QAbstractGraphicsShapeItem_Delete(void* self);
}
public interface IQGraphicsPathItem
{
	void* NativePtr { get; }
}
public struct QGraphicsPathItemPtr : IQGraphicsPathItem, IDisposable, IQAbstractGraphicsShapeItem
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsPathItem_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsPathItem_Delete(this.nativePtr);
	}
	
	public void Path()
	{
		CQt.QGraphicsPathItem_Path(this.nativePtr);
	}
	
	public void SetPath(IQPainterPath path)
	{
		CQt.QGraphicsPathItem_SetPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsPathItem_BoundingRect(this.nativePtr);
	}
	
	public void Shape()
	{
		CQt.QGraphicsPathItem_Shape(this.nativePtr);
	}
	
	public bool Contains(IQPointF point)
	{
		return CQt.QGraphicsPathItem_Contains(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		CQt.QGraphicsPathItem_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public bool IsObscuredBy(IQGraphicsItem item)
	{
		return CQt.QGraphicsPathItem_IsObscuredBy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void OpaqueArea()
	{
		CQt.QGraphicsPathItem_OpaqueArea(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QGraphicsPathItem_Type(this.nativePtr);
	}
	
	public bool SupportsExtension(int64 _extension)
	{
		return CQt.QGraphicsPathItem_SupportsExtension(this.nativePtr, (int64)_extension);
	}
	
	public void SetExtension(int64 _extension, IQVariant variant)
	{
		CQt.QGraphicsPathItem_SetExtension(this.nativePtr, (int64)_extension, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void Extension(IQVariant variant)
	{
		CQt.QGraphicsPathItem_Extension(this.nativePtr, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void Pen()
	{
		CQt.QAbstractGraphicsShapeItem_Pen(this.nativePtr);
	}
	
	public void SetPen(IQPen pen)
	{
		CQt.QAbstractGraphicsShapeItem_SetPen(this.nativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void Brush()
	{
		CQt.QAbstractGraphicsShapeItem_Brush(this.nativePtr);
	}
	
	public void SetBrush(IQBrush brush)
	{
		CQt.QAbstractGraphicsShapeItem_SetBrush(this.nativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void* Scene()
	{
		return CQt.QGraphicsItem_Scene(this.nativePtr);
	}
	
	public void* ParentItem()
	{
		return CQt.QGraphicsItem_ParentItem(this.nativePtr);
	}
	
	public void* TopLevelItem()
	{
		return CQt.QGraphicsItem_TopLevelItem(this.nativePtr);
	}
	
	public void* ParentObject()
	{
		return CQt.QGraphicsItem_ParentObject(this.nativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QGraphicsItem_ParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QGraphicsItem_TopLevelWidget(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QGraphicsItem_Window(this.nativePtr);
	}
	
	public void* Panel()
	{
		return CQt.QGraphicsItem_Panel(this.nativePtr);
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		CQt.QGraphicsItem_SetParentItem(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void*[] ChildItems()
	{
		return CQt.QGraphicsItem_ChildItems(this.nativePtr);
	}
	
	public bool IsWidget()
	{
		return CQt.QGraphicsItem_IsWidget(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QGraphicsItem_IsWindow(this.nativePtr);
	}
	
	public bool IsPanel()
	{
		return CQt.QGraphicsItem_IsPanel(this.nativePtr);
	}
	
	public void* ToGraphicsObject()
	{
		return CQt.QGraphicsItem_ToGraphicsObject(this.nativePtr);
	}
	
	public void* ToGraphicsObject2()
	{
		return CQt.QGraphicsItem_ToGraphicsObject2(this.nativePtr);
	}
	
	public void* Group()
	{
		return CQt.QGraphicsItem_Group(this.nativePtr);
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		CQt.QGraphicsItem_SetGroup(this.nativePtr, (group == default || group.NativePtr == default) ? default : group.NativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QGraphicsItem_Flags(this.nativePtr);
	}
	
	public void SetFlag(int64 flag)
	{
		CQt.QGraphicsItem_SetFlag(this.nativePtr, (int64)flag);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QGraphicsItem_SetFlags(this.nativePtr, flags);
	}
	
	public int64 CacheMode()
	{
		return CQt.QGraphicsItem_CacheMode(this.nativePtr);
	}
	
	public void SetCacheMode(int64 mode)
	{
		CQt.QGraphicsItem_SetCacheMode(this.nativePtr, (int64)mode);
	}
	
	public int64 PanelModality()
	{
		return CQt.QGraphicsItem_PanelModality(this.nativePtr);
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		CQt.QGraphicsItem_SetPanelModality(this.nativePtr, (int64)panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return CQt.QGraphicsItem_IsBlockedByModalPanel(this.nativePtr);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QGraphicsItem_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QGraphicsItem_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public void Cursor()
	{
		CQt.QGraphicsItem_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QGraphicsItem_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
	}
	
	public bool HasCursor()
	{
		return CQt.QGraphicsItem_HasCursor(this.nativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QGraphicsItem_UnsetCursor(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QGraphicsItem_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return CQt.QGraphicsItem_IsVisibleTo(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QGraphicsItem_SetVisible(this.nativePtr, visible);
	}
	
	public void Hide()
	{
		CQt.QGraphicsItem_Hide(this.nativePtr);
	}
	
	public void Show()
	{
		CQt.QGraphicsItem_Show(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsItem_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QGraphicsItem_SetEnabled(this.nativePtr, enabled);
	}
	
	public bool IsSelected()
	{
		return CQt.QGraphicsItem_IsSelected(this.nativePtr);
	}
	
	public void SetSelected(bool selected)
	{
		CQt.QGraphicsItem_SetSelected(this.nativePtr, selected);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QGraphicsItem_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QGraphicsItem_SetAcceptDrops(this.nativePtr, on);
	}
	
	public double Opacity()
	{
		return CQt.QGraphicsItem_Opacity(this.nativePtr);
	}
	
	public double EffectiveOpacity()
	{
		return CQt.QGraphicsItem_EffectiveOpacity(this.nativePtr);
	}
	
	public void SetOpacity(double opacity)
	{
		CQt.QGraphicsItem_SetOpacity(this.nativePtr, opacity);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QGraphicsItem_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QGraphicsItem_SetGraphicsEffect(this.nativePtr, (effect == default || effect.NativePtr == default) ? default : effect.NativePtr);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return CQt.QGraphicsItem_AcceptedMouseButtons(this.nativePtr);
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		CQt.QGraphicsItem_SetAcceptedMouseButtons(this.nativePtr, buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return CQt.QGraphicsItem_AcceptHoverEvents(this.nativePtr);
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptHoverEvents(this.nativePtr, enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return CQt.QGraphicsItem_AcceptTouchEvents(this.nativePtr);
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptTouchEvents(this.nativePtr, enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return CQt.QGraphicsItem_FiltersChildEvents(this.nativePtr);
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetFiltersChildEvents(this.nativePtr, enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return CQt.QGraphicsItem_HandlesChildEvents(this.nativePtr);
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetHandlesChildEvents(this.nativePtr, enabled);
	}
	
	public bool IsActive()
	{
		return CQt.QGraphicsItem_IsActive(this.nativePtr);
	}
	
	public void SetActive(bool active)
	{
		CQt.QGraphicsItem_SetActive(this.nativePtr, active);
	}
	
	public bool HasFocus()
	{
		return CQt.QGraphicsItem_HasFocus(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QGraphicsItem_SetFocus(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QGraphicsItem_ClearFocus(this.nativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QGraphicsItem_FocusProxy(this.nativePtr);
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		CQt.QGraphicsItem_SetFocusProxy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* FocusItem()
	{
		return CQt.QGraphicsItem_FocusItem(this.nativePtr);
	}
	
	public void* FocusScopeItem()
	{
		return CQt.QGraphicsItem_FocusScopeItem(this.nativePtr);
	}
	
	public void GrabMouse()
	{
		CQt.QGraphicsItem_GrabMouse(this.nativePtr);
	}
	
	public void UngrabMouse()
	{
		CQt.QGraphicsItem_UngrabMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QGraphicsItem_GrabKeyboard(this.nativePtr);
	}
	
	public void UngrabKeyboard()
	{
		CQt.QGraphicsItem_UngrabKeyboard(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsItem_Pos(this.nativePtr);
	}
	
	public double X()
	{
		return CQt.QGraphicsItem_X(this.nativePtr);
	}
	
	public void SetX(double x)
	{
		CQt.QGraphicsItem_SetX(this.nativePtr, x);
	}
	
	public double Y()
	{
		return CQt.QGraphicsItem_Y(this.nativePtr);
	}
	
	public void SetY(double y)
	{
		CQt.QGraphicsItem_SetY(this.nativePtr, y);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsItem_ScenePos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsItem_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void SetPos2(double x, double y)
	{
		CQt.QGraphicsItem_SetPos2(this.nativePtr, x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		CQt.QGraphicsItem_MoveBy(this.nativePtr, dx, dy);
	}
	
	public void EnsureVisible()
	{
		CQt.QGraphicsItem_EnsureVisible(this.nativePtr);
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_EnsureVisible2(this.nativePtr, x, y, w, h);
	}
	
	public void Transform()
	{
		CQt.QGraphicsItem_Transform(this.nativePtr);
	}
	
	public void SceneTransform()
	{
		CQt.QGraphicsItem_SceneTransform(this.nativePtr);
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		CQt.QGraphicsItem_DeviceTransform(this.nativePtr, (viewportTransform == default || viewportTransform.NativePtr == default) ? default : viewportTransform.NativePtr);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		CQt.QGraphicsItem_ItemTransform(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		CQt.QGraphicsItem_SetTransform(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public void ResetTransform()
	{
		CQt.QGraphicsItem_ResetTransform(this.nativePtr);
	}
	
	public void SetRotation(double angle)
	{
		CQt.QGraphicsItem_SetRotation(this.nativePtr, angle);
	}
	
	public double Rotation()
	{
		return CQt.QGraphicsItem_Rotation(this.nativePtr);
	}
	
	public void SetScale(double scale)
	{
		CQt.QGraphicsItem_SetScale(this.nativePtr, scale);
	}
	
	public double Scale()
	{
		return CQt.QGraphicsItem_Scale(this.nativePtr);
	}
	
	public void*[] Transformations()
	{
		return CQt.QGraphicsItem_Transformations(this.nativePtr);
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		CQt.QGraphicsItem_SetTransformations(this.nativePtr, null);
	}
	
	public void TransformOriginPoint()
	{
		CQt.QGraphicsItem_TransformOriginPoint(this.nativePtr);
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint(this.nativePtr, (origin == default || origin.NativePtr == default) ? default : origin.NativePtr);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint2(this.nativePtr, ax, ay);
	}
	
	public void Advance(int32 phase)
	{
		CQt.QGraphicsItem_Advance(this.nativePtr, phase);
	}
	
	public double ZValue()
	{
		return CQt.QGraphicsItem_ZValue(this.nativePtr);
	}
	
	public void SetZValue(double z)
	{
		CQt.QGraphicsItem_SetZValue(this.nativePtr, z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		CQt.QGraphicsItem_StackBefore(this.nativePtr, (sibling == default || sibling.NativePtr == default) ? default : sibling.NativePtr);
	}
	
	public void ChildrenBoundingRect()
	{
		CQt.QGraphicsItem_ChildrenBoundingRect(this.nativePtr);
	}
	
	public void SceneBoundingRect()
	{
		CQt.QGraphicsItem_SceneBoundingRect(this.nativePtr);
	}
	
	public bool IsClipped()
	{
		return CQt.QGraphicsItem_IsClipped(this.nativePtr);
	}
	
	public void ClipPath()
	{
		CQt.QGraphicsItem_ClipPath(this.nativePtr);
	}
	
	public bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, (int64)mode);
	}
	
	public bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode);
	}
	
	public void*[] CollidingItems()
	{
		return CQt.QGraphicsItem_CollidingItems(this.nativePtr);
	}
	
	public bool IsObscured()
	{
		return CQt.QGraphicsItem_IsObscured(this.nativePtr);
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return CQt.QGraphicsItem_IsObscured2(this.nativePtr, x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		CQt.QGraphicsItem_BoundingRegion(this.nativePtr, (itemToDeviceTransform == default || itemToDeviceTransform.NativePtr == default) ? default : itemToDeviceTransform.NativePtr);
	}
	
	public double BoundingRegionGranularity()
	{
		return CQt.QGraphicsItem_BoundingRegionGranularity(this.nativePtr);
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		CQt.QGraphicsItem_SetBoundingRegionGranularity(this.nativePtr, granularity);
	}
	
	public void Update()
	{
		CQt.QGraphicsItem_Update(this.nativePtr);
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		CQt.QGraphicsItem_Update2(this.nativePtr, x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		CQt.QGraphicsItem_Scroll(this.nativePtr, dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapToParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapToScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapToItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapToParent2(this.nativePtr, x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapToScene2(this.nativePtr, x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToScene2(this.nativePtr, x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapFromItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromParent2(this.nativePtr, x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromScene2(this.nativePtr, x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromScene2(this.nativePtr, x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return CQt.QGraphicsItem_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return CQt.QGraphicsItem_CommonAncestorItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsUnderMouse()
	{
		return CQt.QGraphicsItem_IsUnderMouse(this.nativePtr);
	}
	
	public void Data(int32 key)
	{
		CQt.QGraphicsItem_Data(this.nativePtr, key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		CQt.QGraphicsItem_SetData(this.nativePtr, key, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QGraphicsItem_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QGraphicsItem_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_InstallSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_RemoveSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsItem_SetFlag2(this.nativePtr, (int64)flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		CQt.QGraphicsItem_SetCacheMode2(this.nativePtr, (int64)mode, (cacheSize == default || cacheSize.NativePtr == default) ? default : cacheSize.NativePtr);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsItem_SetFocus1(this.nativePtr, (int64)focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		CQt.QGraphicsItem_EnsureVisible1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible5(this.nativePtr, x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible6(this.nativePtr, x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		CQt.QGraphicsItem_ItemTransform2(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		CQt.QGraphicsItem_SetTransform2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return CQt.QGraphicsItem_CollidingItems1(this.nativePtr, (int64)mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return CQt.QGraphicsItem_IsObscured1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Update1(IQRectF rect)
	{
		CQt.QGraphicsItem_Update1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		CQt.QGraphicsItem_Scroll3(this.nativePtr, dx, dy, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
}
public class QGraphicsPathItem
{
	public QGraphicsPathItemPtr handle;
	
	public static implicit operator QGraphicsPathItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsPathItemPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Path()
	{
		this.handle.Path();
	}
	
	public void SetPath(IQPainterPath path)
	{
		this.handle.SetPath(path);
	}
	
	public virtual void BoundingRect()
	{
		this.handle.BoundingRect();
	}
	
	public virtual void Shape()
	{
		this.handle.Shape();
	}
	
	public virtual bool Contains(IQPointF point)
	{
		return this.handle.Contains(point);
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		this.handle.Paint(painter, option, widget);
	}
	
	public virtual bool IsObscuredBy(IQGraphicsItem item)
	{
		return this.handle.IsObscuredBy(item);
	}
	
	public virtual void OpaqueArea()
	{
		this.handle.OpaqueArea();
	}
	
	public virtual int32 Type()
	{
		return this.handle.Type();
	}
	
	public virtual bool SupportsExtension(int64 _extension)
	{
		return this.handle.SupportsExtension(_extension);
	}
	
	public virtual void SetExtension(int64 _extension, IQVariant variant)
	{
		this.handle.SetExtension(_extension, variant);
	}
	
	public virtual void Extension(IQVariant variant)
	{
		this.handle.Extension(variant);
	}
	
	public void Pen()
	{
		this.handle.Pen();
	}
	
	public void SetPen(IQPen pen)
	{
		this.handle.SetPen(pen);
	}
	
	public void Brush()
	{
		this.handle.Brush();
	}
	
	public void SetBrush(IQBrush brush)
	{
		this.handle.SetBrush(brush);
	}
	
	public void* Scene()
	{
		return this.handle.Scene();
	}
	
	public void* ParentItem()
	{
		return this.handle.ParentItem();
	}
	
	public void* TopLevelItem()
	{
		return this.handle.TopLevelItem();
	}
	
	public void* ParentObject()
	{
		return this.handle.ParentObject();
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public void* TopLevelWidget()
	{
		return this.handle.TopLevelWidget();
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* Panel()
	{
		return this.handle.Panel();
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		this.handle.SetParentItem(parent);
	}
	
	public void*[] ChildItems()
	{
		return this.handle.ChildItems();
	}
	
	public bool IsWidget()
	{
		return this.handle.IsWidget();
	}
	
	public bool IsWindow()
	{
		return this.handle.IsWindow();
	}
	
	public bool IsPanel()
	{
		return this.handle.IsPanel();
	}
	
	public void* ToGraphicsObject()
	{
		return this.handle.ToGraphicsObject();
	}
	
	public void* ToGraphicsObject2()
	{
		return this.handle.ToGraphicsObject2();
	}
	
	public void* Group()
	{
		return this.handle.Group();
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		this.handle.SetGroup(group);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlag(int64 flag)
	{
		this.handle.SetFlag(flag);
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int64 CacheMode()
	{
		return this.handle.CacheMode();
	}
	
	public void SetCacheMode(int64 mode)
	{
		this.handle.SetCacheMode(mode);
	}
	
	public int64 PanelModality()
	{
		return this.handle.PanelModality();
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		this.handle.SetPanelModality(panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return this.handle.IsBlockedByModalPanel();
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public bool HasCursor()
	{
		return this.handle.HasCursor();
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return this.handle.IsVisibleTo(parent);
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public bool IsSelected()
	{
		return this.handle.IsSelected();
	}
	
	public void SetSelected(bool selected)
	{
		this.handle.SetSelected(selected);
	}
	
	public bool AcceptDrops()
	{
		return this.handle.AcceptDrops();
	}
	
	public void SetAcceptDrops(bool on)
	{
		this.handle.SetAcceptDrops(on);
	}
	
	public double Opacity()
	{
		return this.handle.Opacity();
	}
	
	public double EffectiveOpacity()
	{
		return this.handle.EffectiveOpacity();
	}
	
	public void SetOpacity(double opacity)
	{
		this.handle.SetOpacity(opacity);
	}
	
	public void* GraphicsEffect()
	{
		return this.handle.GraphicsEffect();
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		this.handle.SetGraphicsEffect(effect);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return this.handle.AcceptedMouseButtons();
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		this.handle.SetAcceptedMouseButtons(buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return this.handle.AcceptHoverEvents();
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		this.handle.SetAcceptHoverEvents(enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return this.handle.AcceptTouchEvents();
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		this.handle.SetAcceptTouchEvents(enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return this.handle.FiltersChildEvents();
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		this.handle.SetFiltersChildEvents(enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return this.handle.HandlesChildEvents();
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		this.handle.SetHandlesChildEvents(enabled);
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void SetActive(bool active)
	{
		this.handle.SetActive(active);
	}
	
	public bool HasFocus()
	{
		return this.handle.HasFocus();
	}
	
	public void SetFocus()
	{
		this.handle.SetFocus();
	}
	
	public void ClearFocus()
	{
		this.handle.ClearFocus();
	}
	
	public void* FocusProxy()
	{
		return this.handle.FocusProxy();
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		this.handle.SetFocusProxy(item);
	}
	
	public void* FocusItem()
	{
		return this.handle.FocusItem();
	}
	
	public void* FocusScopeItem()
	{
		return this.handle.FocusScopeItem();
	}
	
	public void GrabMouse()
	{
		this.handle.GrabMouse();
	}
	
	public void UngrabMouse()
	{
		this.handle.UngrabMouse();
	}
	
	public void GrabKeyboard()
	{
		this.handle.GrabKeyboard();
	}
	
	public void UngrabKeyboard()
	{
		this.handle.UngrabKeyboard();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public double X()
	{
		return this.handle.X();
	}
	
	public void SetX(double x)
	{
		this.handle.SetX(x);
	}
	
	public double Y()
	{
		return this.handle.Y();
	}
	
	public void SetY(double y)
	{
		this.handle.SetY(y);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void SetPos2(double x, double y)
	{
		this.handle.SetPos2(x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		this.handle.MoveBy(dx, dy);
	}
	
	public void EnsureVisible()
	{
		this.handle.EnsureVisible();
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		this.handle.EnsureVisible2(x, y, w, h);
	}
	
	public void Transform()
	{
		this.handle.Transform();
	}
	
	public void SceneTransform()
	{
		this.handle.SceneTransform();
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		this.handle.DeviceTransform(viewportTransform);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		this.handle.ItemTransform(other);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		this.handle.SetTransform(matrix);
	}
	
	public void ResetTransform()
	{
		this.handle.ResetTransform();
	}
	
	public void SetRotation(double angle)
	{
		this.handle.SetRotation(angle);
	}
	
	public double Rotation()
	{
		return this.handle.Rotation();
	}
	
	public void SetScale(double scale)
	{
		this.handle.SetScale(scale);
	}
	
	public double Scale()
	{
		return this.handle.Scale();
	}
	
	public void*[] Transformations()
	{
		return this.handle.Transformations();
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		this.handle.SetTransformations(null);
	}
	
	public void TransformOriginPoint()
	{
		this.handle.TransformOriginPoint();
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		this.handle.SetTransformOriginPoint(origin);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		this.handle.SetTransformOriginPoint2(ax, ay);
	}
	
	public virtual void Advance(int32 phase)
	{
		this.handle.Advance(phase);
	}
	
	public double ZValue()
	{
		return this.handle.ZValue();
	}
	
	public void SetZValue(double z)
	{
		this.handle.SetZValue(z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		this.handle.StackBefore(sibling);
	}
	
	public void ChildrenBoundingRect()
	{
		this.handle.ChildrenBoundingRect();
	}
	
	public void SceneBoundingRect()
	{
		this.handle.SceneBoundingRect();
	}
	
	public bool IsClipped()
	{
		return this.handle.IsClipped();
	}
	
	public void ClipPath()
	{
		this.handle.ClipPath();
	}
	
	public virtual bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return this.handle.CollidesWithItem(other, mode);
	}
	
	public virtual bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return this.handle.CollidesWithPath(path, mode);
	}
	
	public void*[] CollidingItems()
	{
		return this.handle.CollidingItems();
	}
	
	public bool IsObscured()
	{
		return this.handle.IsObscured();
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return this.handle.IsObscured2(x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		this.handle.BoundingRegion(itemToDeviceTransform);
	}
	
	public double BoundingRegionGranularity()
	{
		return this.handle.BoundingRegionGranularity();
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		this.handle.SetBoundingRegionGranularity(granularity);
	}
	
	public void Update()
	{
		this.handle.Update();
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		this.handle.Update2(x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		this.handle.Scroll(dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapToItem(item, point);
	}
	
	public void MapToParent(IQPointF point)
	{
		this.handle.MapToParent(point);
	}
	
	public void MapToScene(IQPointF point)
	{
		this.handle.MapToScene(point);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectToItem(item, rect);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		this.handle.MapRectToParent(rect);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		this.handle.MapRectToScene(rect);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapToItem4(item, path);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		this.handle.MapToParentWithPath(path);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		this.handle.MapToSceneWithPath(path);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapFromItem(item, point);
	}
	
	public void MapFromParent(IQPointF point)
	{
		this.handle.MapFromParent(point);
	}
	
	public void MapFromScene(IQPointF point)
	{
		this.handle.MapFromScene(point);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectFromItem(item, rect);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		this.handle.MapRectFromParent(rect);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		this.handle.MapRectFromScene(rect);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapFromItem4(item, path);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		this.handle.MapFromParentWithPath(path);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		this.handle.MapFromSceneWithPath(path);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapToItem5(item, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		this.handle.MapToParent2(x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		this.handle.MapToScene2(x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectToItem2(item, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectToParent2(x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectToScene2(x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapFromItem5(item, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		this.handle.MapFromParent2(x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		this.handle.MapFromScene2(x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectFromItem2(item, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromParent2(x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromScene2(x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return this.handle.CommonAncestorItem(other);
	}
	
	public bool IsUnderMouse()
	{
		return this.handle.IsUnderMouse();
	}
	
	public void Data(int32 key)
	{
		this.handle.Data(key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		this.handle.SetData(key, value);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.InstallSceneEventFilter(filterItem);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.RemoveSceneEventFilter(filterItem);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		this.handle.SetFlag2(flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		this.handle.SetCacheMode2(mode, cacheSize);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		this.handle.SetFocus1(focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		this.handle.EnsureVisible1(rect);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		this.handle.EnsureVisible22(rect, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible3(rect, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		this.handle.EnsureVisible5(x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible6(x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		this.handle.ItemTransform2(other, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		this.handle.SetTransform2(matrix, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return this.handle.CollidingItems1(mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return this.handle.IsObscured1(rect);
	}
	
	public void Update1(IQRectF rect)
	{
		this.handle.Update1(rect);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		this.handle.Scroll3(dx, dy, rect);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsPathItem_new")]
	public static extern void* QGraphicsPathItem_new();
	[LinkName("QGraphicsPathItem_new2")]
	public static extern void* QGraphicsPathItem_new2(void* path);
	[LinkName("QGraphicsPathItem_new3")]
	public static extern void* QGraphicsPathItem_new3(void* parent);
	[LinkName("QGraphicsPathItem_new4")]
	public static extern void* QGraphicsPathItem_new4(void* path, void* parent);
	[LinkName("QGraphicsPathItem_Path")]
	public static extern void QGraphicsPathItem_Path(void* c_this);
	[LinkName("QGraphicsPathItem_SetPath")]
	public static extern void QGraphicsPathItem_SetPath(void* c_this, void* path);
	[LinkName("QGraphicsPathItem_BoundingRect")]
	public static extern void QGraphicsPathItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsPathItem_Shape")]
	public static extern void QGraphicsPathItem_Shape(void* c_this);
	[LinkName("QGraphicsPathItem_Contains")]
	public static extern bool QGraphicsPathItem_Contains(void* c_this, void* point);
	[LinkName("QGraphicsPathItem_Paint")]
	public static extern void QGraphicsPathItem_Paint(void* c_this, void* painter, void* option, void* widget);
	[LinkName("QGraphicsPathItem_IsObscuredBy")]
	public static extern bool QGraphicsPathItem_IsObscuredBy(void* c_this, void* item);
	[LinkName("QGraphicsPathItem_OpaqueArea")]
	public static extern void QGraphicsPathItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsPathItem_Type")]
	public static extern int32 QGraphicsPathItem_Type(void* c_this);
	[LinkName("QGraphicsPathItem_SupportsExtension")]
	public static extern bool QGraphicsPathItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsPathItem_SetExtension")]
	public static extern void QGraphicsPathItem_SetExtension(void* c_this, int64 _extension, void* variant);
	[LinkName("QGraphicsPathItem_Extension")]
	public static extern void QGraphicsPathItem_Extension(void* c_this, void* variant);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsPathItem_Delete")]
	public static extern void QGraphicsPathItem_Delete(void* self);
}
public interface IQGraphicsRectItem
{
	void* NativePtr { get; }
}
public struct QGraphicsRectItemPtr : IQGraphicsRectItem, IDisposable, IQAbstractGraphicsShapeItem
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsRectItem_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsRectItem_Delete(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QGraphicsRectItem_Rect(this.nativePtr);
	}
	
	public void SetRect(IQRectF rect)
	{
		CQt.QGraphicsRectItem_SetRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void SetRect2(double x, double y, double w, double h)
	{
		CQt.QGraphicsRectItem_SetRect2(this.nativePtr, x, y, w, h);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsRectItem_BoundingRect(this.nativePtr);
	}
	
	public void Shape()
	{
		CQt.QGraphicsRectItem_Shape(this.nativePtr);
	}
	
	public bool Contains(IQPointF point)
	{
		return CQt.QGraphicsRectItem_Contains(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		CQt.QGraphicsRectItem_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public bool IsObscuredBy(IQGraphicsItem item)
	{
		return CQt.QGraphicsRectItem_IsObscuredBy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void OpaqueArea()
	{
		CQt.QGraphicsRectItem_OpaqueArea(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QGraphicsRectItem_Type(this.nativePtr);
	}
	
	public bool SupportsExtension(int64 _extension)
	{
		return CQt.QGraphicsRectItem_SupportsExtension(this.nativePtr, (int64)_extension);
	}
	
	public void SetExtension(int64 _extension, IQVariant variant)
	{
		CQt.QGraphicsRectItem_SetExtension(this.nativePtr, (int64)_extension, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void Extension(IQVariant variant)
	{
		CQt.QGraphicsRectItem_Extension(this.nativePtr, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void Pen()
	{
		CQt.QAbstractGraphicsShapeItem_Pen(this.nativePtr);
	}
	
	public void SetPen(IQPen pen)
	{
		CQt.QAbstractGraphicsShapeItem_SetPen(this.nativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void Brush()
	{
		CQt.QAbstractGraphicsShapeItem_Brush(this.nativePtr);
	}
	
	public void SetBrush(IQBrush brush)
	{
		CQt.QAbstractGraphicsShapeItem_SetBrush(this.nativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void* Scene()
	{
		return CQt.QGraphicsItem_Scene(this.nativePtr);
	}
	
	public void* ParentItem()
	{
		return CQt.QGraphicsItem_ParentItem(this.nativePtr);
	}
	
	public void* TopLevelItem()
	{
		return CQt.QGraphicsItem_TopLevelItem(this.nativePtr);
	}
	
	public void* ParentObject()
	{
		return CQt.QGraphicsItem_ParentObject(this.nativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QGraphicsItem_ParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QGraphicsItem_TopLevelWidget(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QGraphicsItem_Window(this.nativePtr);
	}
	
	public void* Panel()
	{
		return CQt.QGraphicsItem_Panel(this.nativePtr);
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		CQt.QGraphicsItem_SetParentItem(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void*[] ChildItems()
	{
		return CQt.QGraphicsItem_ChildItems(this.nativePtr);
	}
	
	public bool IsWidget()
	{
		return CQt.QGraphicsItem_IsWidget(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QGraphicsItem_IsWindow(this.nativePtr);
	}
	
	public bool IsPanel()
	{
		return CQt.QGraphicsItem_IsPanel(this.nativePtr);
	}
	
	public void* ToGraphicsObject()
	{
		return CQt.QGraphicsItem_ToGraphicsObject(this.nativePtr);
	}
	
	public void* ToGraphicsObject2()
	{
		return CQt.QGraphicsItem_ToGraphicsObject2(this.nativePtr);
	}
	
	public void* Group()
	{
		return CQt.QGraphicsItem_Group(this.nativePtr);
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		CQt.QGraphicsItem_SetGroup(this.nativePtr, (group == default || group.NativePtr == default) ? default : group.NativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QGraphicsItem_Flags(this.nativePtr);
	}
	
	public void SetFlag(int64 flag)
	{
		CQt.QGraphicsItem_SetFlag(this.nativePtr, (int64)flag);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QGraphicsItem_SetFlags(this.nativePtr, flags);
	}
	
	public int64 CacheMode()
	{
		return CQt.QGraphicsItem_CacheMode(this.nativePtr);
	}
	
	public void SetCacheMode(int64 mode)
	{
		CQt.QGraphicsItem_SetCacheMode(this.nativePtr, (int64)mode);
	}
	
	public int64 PanelModality()
	{
		return CQt.QGraphicsItem_PanelModality(this.nativePtr);
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		CQt.QGraphicsItem_SetPanelModality(this.nativePtr, (int64)panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return CQt.QGraphicsItem_IsBlockedByModalPanel(this.nativePtr);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QGraphicsItem_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QGraphicsItem_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public void Cursor()
	{
		CQt.QGraphicsItem_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QGraphicsItem_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
	}
	
	public bool HasCursor()
	{
		return CQt.QGraphicsItem_HasCursor(this.nativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QGraphicsItem_UnsetCursor(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QGraphicsItem_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return CQt.QGraphicsItem_IsVisibleTo(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QGraphicsItem_SetVisible(this.nativePtr, visible);
	}
	
	public void Hide()
	{
		CQt.QGraphicsItem_Hide(this.nativePtr);
	}
	
	public void Show()
	{
		CQt.QGraphicsItem_Show(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsItem_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QGraphicsItem_SetEnabled(this.nativePtr, enabled);
	}
	
	public bool IsSelected()
	{
		return CQt.QGraphicsItem_IsSelected(this.nativePtr);
	}
	
	public void SetSelected(bool selected)
	{
		CQt.QGraphicsItem_SetSelected(this.nativePtr, selected);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QGraphicsItem_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QGraphicsItem_SetAcceptDrops(this.nativePtr, on);
	}
	
	public double Opacity()
	{
		return CQt.QGraphicsItem_Opacity(this.nativePtr);
	}
	
	public double EffectiveOpacity()
	{
		return CQt.QGraphicsItem_EffectiveOpacity(this.nativePtr);
	}
	
	public void SetOpacity(double opacity)
	{
		CQt.QGraphicsItem_SetOpacity(this.nativePtr, opacity);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QGraphicsItem_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QGraphicsItem_SetGraphicsEffect(this.nativePtr, (effect == default || effect.NativePtr == default) ? default : effect.NativePtr);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return CQt.QGraphicsItem_AcceptedMouseButtons(this.nativePtr);
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		CQt.QGraphicsItem_SetAcceptedMouseButtons(this.nativePtr, buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return CQt.QGraphicsItem_AcceptHoverEvents(this.nativePtr);
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptHoverEvents(this.nativePtr, enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return CQt.QGraphicsItem_AcceptTouchEvents(this.nativePtr);
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptTouchEvents(this.nativePtr, enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return CQt.QGraphicsItem_FiltersChildEvents(this.nativePtr);
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetFiltersChildEvents(this.nativePtr, enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return CQt.QGraphicsItem_HandlesChildEvents(this.nativePtr);
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetHandlesChildEvents(this.nativePtr, enabled);
	}
	
	public bool IsActive()
	{
		return CQt.QGraphicsItem_IsActive(this.nativePtr);
	}
	
	public void SetActive(bool active)
	{
		CQt.QGraphicsItem_SetActive(this.nativePtr, active);
	}
	
	public bool HasFocus()
	{
		return CQt.QGraphicsItem_HasFocus(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QGraphicsItem_SetFocus(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QGraphicsItem_ClearFocus(this.nativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QGraphicsItem_FocusProxy(this.nativePtr);
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		CQt.QGraphicsItem_SetFocusProxy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* FocusItem()
	{
		return CQt.QGraphicsItem_FocusItem(this.nativePtr);
	}
	
	public void* FocusScopeItem()
	{
		return CQt.QGraphicsItem_FocusScopeItem(this.nativePtr);
	}
	
	public void GrabMouse()
	{
		CQt.QGraphicsItem_GrabMouse(this.nativePtr);
	}
	
	public void UngrabMouse()
	{
		CQt.QGraphicsItem_UngrabMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QGraphicsItem_GrabKeyboard(this.nativePtr);
	}
	
	public void UngrabKeyboard()
	{
		CQt.QGraphicsItem_UngrabKeyboard(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsItem_Pos(this.nativePtr);
	}
	
	public double X()
	{
		return CQt.QGraphicsItem_X(this.nativePtr);
	}
	
	public void SetX(double x)
	{
		CQt.QGraphicsItem_SetX(this.nativePtr, x);
	}
	
	public double Y()
	{
		return CQt.QGraphicsItem_Y(this.nativePtr);
	}
	
	public void SetY(double y)
	{
		CQt.QGraphicsItem_SetY(this.nativePtr, y);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsItem_ScenePos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsItem_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void SetPos2(double x, double y)
	{
		CQt.QGraphicsItem_SetPos2(this.nativePtr, x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		CQt.QGraphicsItem_MoveBy(this.nativePtr, dx, dy);
	}
	
	public void EnsureVisible()
	{
		CQt.QGraphicsItem_EnsureVisible(this.nativePtr);
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_EnsureVisible2(this.nativePtr, x, y, w, h);
	}
	
	public void Transform()
	{
		CQt.QGraphicsItem_Transform(this.nativePtr);
	}
	
	public void SceneTransform()
	{
		CQt.QGraphicsItem_SceneTransform(this.nativePtr);
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		CQt.QGraphicsItem_DeviceTransform(this.nativePtr, (viewportTransform == default || viewportTransform.NativePtr == default) ? default : viewportTransform.NativePtr);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		CQt.QGraphicsItem_ItemTransform(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		CQt.QGraphicsItem_SetTransform(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public void ResetTransform()
	{
		CQt.QGraphicsItem_ResetTransform(this.nativePtr);
	}
	
	public void SetRotation(double angle)
	{
		CQt.QGraphicsItem_SetRotation(this.nativePtr, angle);
	}
	
	public double Rotation()
	{
		return CQt.QGraphicsItem_Rotation(this.nativePtr);
	}
	
	public void SetScale(double scale)
	{
		CQt.QGraphicsItem_SetScale(this.nativePtr, scale);
	}
	
	public double Scale()
	{
		return CQt.QGraphicsItem_Scale(this.nativePtr);
	}
	
	public void*[] Transformations()
	{
		return CQt.QGraphicsItem_Transformations(this.nativePtr);
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		CQt.QGraphicsItem_SetTransformations(this.nativePtr, null);
	}
	
	public void TransformOriginPoint()
	{
		CQt.QGraphicsItem_TransformOriginPoint(this.nativePtr);
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint(this.nativePtr, (origin == default || origin.NativePtr == default) ? default : origin.NativePtr);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint2(this.nativePtr, ax, ay);
	}
	
	public void Advance(int32 phase)
	{
		CQt.QGraphicsItem_Advance(this.nativePtr, phase);
	}
	
	public double ZValue()
	{
		return CQt.QGraphicsItem_ZValue(this.nativePtr);
	}
	
	public void SetZValue(double z)
	{
		CQt.QGraphicsItem_SetZValue(this.nativePtr, z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		CQt.QGraphicsItem_StackBefore(this.nativePtr, (sibling == default || sibling.NativePtr == default) ? default : sibling.NativePtr);
	}
	
	public void ChildrenBoundingRect()
	{
		CQt.QGraphicsItem_ChildrenBoundingRect(this.nativePtr);
	}
	
	public void SceneBoundingRect()
	{
		CQt.QGraphicsItem_SceneBoundingRect(this.nativePtr);
	}
	
	public bool IsClipped()
	{
		return CQt.QGraphicsItem_IsClipped(this.nativePtr);
	}
	
	public void ClipPath()
	{
		CQt.QGraphicsItem_ClipPath(this.nativePtr);
	}
	
	public bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, (int64)mode);
	}
	
	public bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode);
	}
	
	public void*[] CollidingItems()
	{
		return CQt.QGraphicsItem_CollidingItems(this.nativePtr);
	}
	
	public bool IsObscured()
	{
		return CQt.QGraphicsItem_IsObscured(this.nativePtr);
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return CQt.QGraphicsItem_IsObscured2(this.nativePtr, x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		CQt.QGraphicsItem_BoundingRegion(this.nativePtr, (itemToDeviceTransform == default || itemToDeviceTransform.NativePtr == default) ? default : itemToDeviceTransform.NativePtr);
	}
	
	public double BoundingRegionGranularity()
	{
		return CQt.QGraphicsItem_BoundingRegionGranularity(this.nativePtr);
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		CQt.QGraphicsItem_SetBoundingRegionGranularity(this.nativePtr, granularity);
	}
	
	public void Update()
	{
		CQt.QGraphicsItem_Update(this.nativePtr);
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		CQt.QGraphicsItem_Update2(this.nativePtr, x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		CQt.QGraphicsItem_Scroll(this.nativePtr, dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapToParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapToScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapToItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapToParent2(this.nativePtr, x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapToScene2(this.nativePtr, x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToScene2(this.nativePtr, x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapFromItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromParent2(this.nativePtr, x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromScene2(this.nativePtr, x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromScene2(this.nativePtr, x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return CQt.QGraphicsItem_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return CQt.QGraphicsItem_CommonAncestorItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsUnderMouse()
	{
		return CQt.QGraphicsItem_IsUnderMouse(this.nativePtr);
	}
	
	public void Data(int32 key)
	{
		CQt.QGraphicsItem_Data(this.nativePtr, key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		CQt.QGraphicsItem_SetData(this.nativePtr, key, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QGraphicsItem_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QGraphicsItem_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_InstallSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_RemoveSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsItem_SetFlag2(this.nativePtr, (int64)flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		CQt.QGraphicsItem_SetCacheMode2(this.nativePtr, (int64)mode, (cacheSize == default || cacheSize.NativePtr == default) ? default : cacheSize.NativePtr);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsItem_SetFocus1(this.nativePtr, (int64)focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		CQt.QGraphicsItem_EnsureVisible1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible5(this.nativePtr, x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible6(this.nativePtr, x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		CQt.QGraphicsItem_ItemTransform2(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		CQt.QGraphicsItem_SetTransform2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return CQt.QGraphicsItem_CollidingItems1(this.nativePtr, (int64)mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return CQt.QGraphicsItem_IsObscured1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Update1(IQRectF rect)
	{
		CQt.QGraphicsItem_Update1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		CQt.QGraphicsItem_Scroll3(this.nativePtr, dx, dy, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
}
public class QGraphicsRectItem
{
	public QGraphicsRectItemPtr handle;
	
	public static implicit operator QGraphicsRectItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsRectItemPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Rect()
	{
		this.handle.Rect();
	}
	
	public void SetRect(IQRectF rect)
	{
		this.handle.SetRect(rect);
	}
	
	public void SetRect2(double x, double y, double w, double h)
	{
		this.handle.SetRect2(x, y, w, h);
	}
	
	public virtual void BoundingRect()
	{
		this.handle.BoundingRect();
	}
	
	public virtual void Shape()
	{
		this.handle.Shape();
	}
	
	public virtual bool Contains(IQPointF point)
	{
		return this.handle.Contains(point);
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		this.handle.Paint(painter, option, widget);
	}
	
	public virtual bool IsObscuredBy(IQGraphicsItem item)
	{
		return this.handle.IsObscuredBy(item);
	}
	
	public virtual void OpaqueArea()
	{
		this.handle.OpaqueArea();
	}
	
	public virtual int32 Type()
	{
		return this.handle.Type();
	}
	
	public virtual bool SupportsExtension(int64 _extension)
	{
		return this.handle.SupportsExtension(_extension);
	}
	
	public virtual void SetExtension(int64 _extension, IQVariant variant)
	{
		this.handle.SetExtension(_extension, variant);
	}
	
	public virtual void Extension(IQVariant variant)
	{
		this.handle.Extension(variant);
	}
	
	public void Pen()
	{
		this.handle.Pen();
	}
	
	public void SetPen(IQPen pen)
	{
		this.handle.SetPen(pen);
	}
	
	public void Brush()
	{
		this.handle.Brush();
	}
	
	public void SetBrush(IQBrush brush)
	{
		this.handle.SetBrush(brush);
	}
	
	public void* Scene()
	{
		return this.handle.Scene();
	}
	
	public void* ParentItem()
	{
		return this.handle.ParentItem();
	}
	
	public void* TopLevelItem()
	{
		return this.handle.TopLevelItem();
	}
	
	public void* ParentObject()
	{
		return this.handle.ParentObject();
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public void* TopLevelWidget()
	{
		return this.handle.TopLevelWidget();
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* Panel()
	{
		return this.handle.Panel();
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		this.handle.SetParentItem(parent);
	}
	
	public void*[] ChildItems()
	{
		return this.handle.ChildItems();
	}
	
	public bool IsWidget()
	{
		return this.handle.IsWidget();
	}
	
	public bool IsWindow()
	{
		return this.handle.IsWindow();
	}
	
	public bool IsPanel()
	{
		return this.handle.IsPanel();
	}
	
	public void* ToGraphicsObject()
	{
		return this.handle.ToGraphicsObject();
	}
	
	public void* ToGraphicsObject2()
	{
		return this.handle.ToGraphicsObject2();
	}
	
	public void* Group()
	{
		return this.handle.Group();
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		this.handle.SetGroup(group);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlag(int64 flag)
	{
		this.handle.SetFlag(flag);
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int64 CacheMode()
	{
		return this.handle.CacheMode();
	}
	
	public void SetCacheMode(int64 mode)
	{
		this.handle.SetCacheMode(mode);
	}
	
	public int64 PanelModality()
	{
		return this.handle.PanelModality();
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		this.handle.SetPanelModality(panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return this.handle.IsBlockedByModalPanel();
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public bool HasCursor()
	{
		return this.handle.HasCursor();
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return this.handle.IsVisibleTo(parent);
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public bool IsSelected()
	{
		return this.handle.IsSelected();
	}
	
	public void SetSelected(bool selected)
	{
		this.handle.SetSelected(selected);
	}
	
	public bool AcceptDrops()
	{
		return this.handle.AcceptDrops();
	}
	
	public void SetAcceptDrops(bool on)
	{
		this.handle.SetAcceptDrops(on);
	}
	
	public double Opacity()
	{
		return this.handle.Opacity();
	}
	
	public double EffectiveOpacity()
	{
		return this.handle.EffectiveOpacity();
	}
	
	public void SetOpacity(double opacity)
	{
		this.handle.SetOpacity(opacity);
	}
	
	public void* GraphicsEffect()
	{
		return this.handle.GraphicsEffect();
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		this.handle.SetGraphicsEffect(effect);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return this.handle.AcceptedMouseButtons();
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		this.handle.SetAcceptedMouseButtons(buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return this.handle.AcceptHoverEvents();
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		this.handle.SetAcceptHoverEvents(enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return this.handle.AcceptTouchEvents();
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		this.handle.SetAcceptTouchEvents(enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return this.handle.FiltersChildEvents();
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		this.handle.SetFiltersChildEvents(enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return this.handle.HandlesChildEvents();
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		this.handle.SetHandlesChildEvents(enabled);
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void SetActive(bool active)
	{
		this.handle.SetActive(active);
	}
	
	public bool HasFocus()
	{
		return this.handle.HasFocus();
	}
	
	public void SetFocus()
	{
		this.handle.SetFocus();
	}
	
	public void ClearFocus()
	{
		this.handle.ClearFocus();
	}
	
	public void* FocusProxy()
	{
		return this.handle.FocusProxy();
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		this.handle.SetFocusProxy(item);
	}
	
	public void* FocusItem()
	{
		return this.handle.FocusItem();
	}
	
	public void* FocusScopeItem()
	{
		return this.handle.FocusScopeItem();
	}
	
	public void GrabMouse()
	{
		this.handle.GrabMouse();
	}
	
	public void UngrabMouse()
	{
		this.handle.UngrabMouse();
	}
	
	public void GrabKeyboard()
	{
		this.handle.GrabKeyboard();
	}
	
	public void UngrabKeyboard()
	{
		this.handle.UngrabKeyboard();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public double X()
	{
		return this.handle.X();
	}
	
	public void SetX(double x)
	{
		this.handle.SetX(x);
	}
	
	public double Y()
	{
		return this.handle.Y();
	}
	
	public void SetY(double y)
	{
		this.handle.SetY(y);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void SetPos2(double x, double y)
	{
		this.handle.SetPos2(x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		this.handle.MoveBy(dx, dy);
	}
	
	public void EnsureVisible()
	{
		this.handle.EnsureVisible();
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		this.handle.EnsureVisible2(x, y, w, h);
	}
	
	public void Transform()
	{
		this.handle.Transform();
	}
	
	public void SceneTransform()
	{
		this.handle.SceneTransform();
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		this.handle.DeviceTransform(viewportTransform);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		this.handle.ItemTransform(other);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		this.handle.SetTransform(matrix);
	}
	
	public void ResetTransform()
	{
		this.handle.ResetTransform();
	}
	
	public void SetRotation(double angle)
	{
		this.handle.SetRotation(angle);
	}
	
	public double Rotation()
	{
		return this.handle.Rotation();
	}
	
	public void SetScale(double scale)
	{
		this.handle.SetScale(scale);
	}
	
	public double Scale()
	{
		return this.handle.Scale();
	}
	
	public void*[] Transformations()
	{
		return this.handle.Transformations();
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		this.handle.SetTransformations(null);
	}
	
	public void TransformOriginPoint()
	{
		this.handle.TransformOriginPoint();
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		this.handle.SetTransformOriginPoint(origin);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		this.handle.SetTransformOriginPoint2(ax, ay);
	}
	
	public virtual void Advance(int32 phase)
	{
		this.handle.Advance(phase);
	}
	
	public double ZValue()
	{
		return this.handle.ZValue();
	}
	
	public void SetZValue(double z)
	{
		this.handle.SetZValue(z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		this.handle.StackBefore(sibling);
	}
	
	public void ChildrenBoundingRect()
	{
		this.handle.ChildrenBoundingRect();
	}
	
	public void SceneBoundingRect()
	{
		this.handle.SceneBoundingRect();
	}
	
	public bool IsClipped()
	{
		return this.handle.IsClipped();
	}
	
	public void ClipPath()
	{
		this.handle.ClipPath();
	}
	
	public virtual bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return this.handle.CollidesWithItem(other, mode);
	}
	
	public virtual bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return this.handle.CollidesWithPath(path, mode);
	}
	
	public void*[] CollidingItems()
	{
		return this.handle.CollidingItems();
	}
	
	public bool IsObscured()
	{
		return this.handle.IsObscured();
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return this.handle.IsObscured2(x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		this.handle.BoundingRegion(itemToDeviceTransform);
	}
	
	public double BoundingRegionGranularity()
	{
		return this.handle.BoundingRegionGranularity();
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		this.handle.SetBoundingRegionGranularity(granularity);
	}
	
	public void Update()
	{
		this.handle.Update();
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		this.handle.Update2(x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		this.handle.Scroll(dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapToItem(item, point);
	}
	
	public void MapToParent(IQPointF point)
	{
		this.handle.MapToParent(point);
	}
	
	public void MapToScene(IQPointF point)
	{
		this.handle.MapToScene(point);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectToItem(item, rect);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		this.handle.MapRectToParent(rect);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		this.handle.MapRectToScene(rect);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapToItem4(item, path);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		this.handle.MapToParentWithPath(path);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		this.handle.MapToSceneWithPath(path);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapFromItem(item, point);
	}
	
	public void MapFromParent(IQPointF point)
	{
		this.handle.MapFromParent(point);
	}
	
	public void MapFromScene(IQPointF point)
	{
		this.handle.MapFromScene(point);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectFromItem(item, rect);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		this.handle.MapRectFromParent(rect);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		this.handle.MapRectFromScene(rect);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapFromItem4(item, path);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		this.handle.MapFromParentWithPath(path);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		this.handle.MapFromSceneWithPath(path);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapToItem5(item, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		this.handle.MapToParent2(x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		this.handle.MapToScene2(x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectToItem2(item, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectToParent2(x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectToScene2(x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapFromItem5(item, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		this.handle.MapFromParent2(x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		this.handle.MapFromScene2(x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectFromItem2(item, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromParent2(x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromScene2(x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return this.handle.CommonAncestorItem(other);
	}
	
	public bool IsUnderMouse()
	{
		return this.handle.IsUnderMouse();
	}
	
	public void Data(int32 key)
	{
		this.handle.Data(key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		this.handle.SetData(key, value);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.InstallSceneEventFilter(filterItem);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.RemoveSceneEventFilter(filterItem);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		this.handle.SetFlag2(flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		this.handle.SetCacheMode2(mode, cacheSize);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		this.handle.SetFocus1(focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		this.handle.EnsureVisible1(rect);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		this.handle.EnsureVisible22(rect, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible3(rect, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		this.handle.EnsureVisible5(x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible6(x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		this.handle.ItemTransform2(other, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		this.handle.SetTransform2(matrix, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return this.handle.CollidingItems1(mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return this.handle.IsObscured1(rect);
	}
	
	public void Update1(IQRectF rect)
	{
		this.handle.Update1(rect);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		this.handle.Scroll3(dx, dy, rect);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsRectItem_new")]
	public static extern void* QGraphicsRectItem_new();
	[LinkName("QGraphicsRectItem_new2")]
	public static extern void* QGraphicsRectItem_new2(void* rect);
	[LinkName("QGraphicsRectItem_new3")]
	public static extern void* QGraphicsRectItem_new3(double x, double y, double w, double h);
	[LinkName("QGraphicsRectItem_new4")]
	public static extern void* QGraphicsRectItem_new4(void* parent);
	[LinkName("QGraphicsRectItem_new5")]
	public static extern void* QGraphicsRectItem_new5(void* rect, void* parent);
	[LinkName("QGraphicsRectItem_new6")]
	public static extern void* QGraphicsRectItem_new6(double x, double y, double w, double h, void* parent);
	[LinkName("QGraphicsRectItem_Rect")]
	public static extern void QGraphicsRectItem_Rect(void* c_this);
	[LinkName("QGraphicsRectItem_SetRect")]
	public static extern void QGraphicsRectItem_SetRect(void* c_this, void* rect);
	[LinkName("QGraphicsRectItem_SetRect2")]
	public static extern void QGraphicsRectItem_SetRect2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsRectItem_BoundingRect")]
	public static extern void QGraphicsRectItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsRectItem_Shape")]
	public static extern void QGraphicsRectItem_Shape(void* c_this);
	[LinkName("QGraphicsRectItem_Contains")]
	public static extern bool QGraphicsRectItem_Contains(void* c_this, void* point);
	[LinkName("QGraphicsRectItem_Paint")]
	public static extern void QGraphicsRectItem_Paint(void* c_this, void* painter, void* option, void* widget);
	[LinkName("QGraphicsRectItem_IsObscuredBy")]
	public static extern bool QGraphicsRectItem_IsObscuredBy(void* c_this, void* item);
	[LinkName("QGraphicsRectItem_OpaqueArea")]
	public static extern void QGraphicsRectItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsRectItem_Type")]
	public static extern int32 QGraphicsRectItem_Type(void* c_this);
	[LinkName("QGraphicsRectItem_SupportsExtension")]
	public static extern bool QGraphicsRectItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsRectItem_SetExtension")]
	public static extern void QGraphicsRectItem_SetExtension(void* c_this, int64 _extension, void* variant);
	[LinkName("QGraphicsRectItem_Extension")]
	public static extern void QGraphicsRectItem_Extension(void* c_this, void* variant);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsRectItem_Delete")]
	public static extern void QGraphicsRectItem_Delete(void* self);
}
public interface IQGraphicsEllipseItem
{
	void* NativePtr { get; }
}
public struct QGraphicsEllipseItemPtr : IQGraphicsEllipseItem, IDisposable, IQAbstractGraphicsShapeItem
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsEllipseItem_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsEllipseItem_Delete(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QGraphicsEllipseItem_Rect(this.nativePtr);
	}
	
	public void SetRect(IQRectF rect)
	{
		CQt.QGraphicsEllipseItem_SetRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void SetRect2(double x, double y, double w, double h)
	{
		CQt.QGraphicsEllipseItem_SetRect2(this.nativePtr, x, y, w, h);
	}
	
	public int32 StartAngle()
	{
		return CQt.QGraphicsEllipseItem_StartAngle(this.nativePtr);
	}
	
	public void SetStartAngle(int32 angle)
	{
		CQt.QGraphicsEllipseItem_SetStartAngle(this.nativePtr, angle);
	}
	
	public int32 SpanAngle()
	{
		return CQt.QGraphicsEllipseItem_SpanAngle(this.nativePtr);
	}
	
	public void SetSpanAngle(int32 angle)
	{
		CQt.QGraphicsEllipseItem_SetSpanAngle(this.nativePtr, angle);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsEllipseItem_BoundingRect(this.nativePtr);
	}
	
	public void Shape()
	{
		CQt.QGraphicsEllipseItem_Shape(this.nativePtr);
	}
	
	public bool Contains(IQPointF point)
	{
		return CQt.QGraphicsEllipseItem_Contains(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		CQt.QGraphicsEllipseItem_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public bool IsObscuredBy(IQGraphicsItem item)
	{
		return CQt.QGraphicsEllipseItem_IsObscuredBy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void OpaqueArea()
	{
		CQt.QGraphicsEllipseItem_OpaqueArea(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QGraphicsEllipseItem_Type(this.nativePtr);
	}
	
	public bool SupportsExtension(int64 _extension)
	{
		return CQt.QGraphicsEllipseItem_SupportsExtension(this.nativePtr, (int64)_extension);
	}
	
	public void SetExtension(int64 _extension, IQVariant variant)
	{
		CQt.QGraphicsEllipseItem_SetExtension(this.nativePtr, (int64)_extension, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void Extension(IQVariant variant)
	{
		CQt.QGraphicsEllipseItem_Extension(this.nativePtr, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void Pen()
	{
		CQt.QAbstractGraphicsShapeItem_Pen(this.nativePtr);
	}
	
	public void SetPen(IQPen pen)
	{
		CQt.QAbstractGraphicsShapeItem_SetPen(this.nativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void Brush()
	{
		CQt.QAbstractGraphicsShapeItem_Brush(this.nativePtr);
	}
	
	public void SetBrush(IQBrush brush)
	{
		CQt.QAbstractGraphicsShapeItem_SetBrush(this.nativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void* Scene()
	{
		return CQt.QGraphicsItem_Scene(this.nativePtr);
	}
	
	public void* ParentItem()
	{
		return CQt.QGraphicsItem_ParentItem(this.nativePtr);
	}
	
	public void* TopLevelItem()
	{
		return CQt.QGraphicsItem_TopLevelItem(this.nativePtr);
	}
	
	public void* ParentObject()
	{
		return CQt.QGraphicsItem_ParentObject(this.nativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QGraphicsItem_ParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QGraphicsItem_TopLevelWidget(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QGraphicsItem_Window(this.nativePtr);
	}
	
	public void* Panel()
	{
		return CQt.QGraphicsItem_Panel(this.nativePtr);
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		CQt.QGraphicsItem_SetParentItem(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void*[] ChildItems()
	{
		return CQt.QGraphicsItem_ChildItems(this.nativePtr);
	}
	
	public bool IsWidget()
	{
		return CQt.QGraphicsItem_IsWidget(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QGraphicsItem_IsWindow(this.nativePtr);
	}
	
	public bool IsPanel()
	{
		return CQt.QGraphicsItem_IsPanel(this.nativePtr);
	}
	
	public void* ToGraphicsObject()
	{
		return CQt.QGraphicsItem_ToGraphicsObject(this.nativePtr);
	}
	
	public void* ToGraphicsObject2()
	{
		return CQt.QGraphicsItem_ToGraphicsObject2(this.nativePtr);
	}
	
	public void* Group()
	{
		return CQt.QGraphicsItem_Group(this.nativePtr);
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		CQt.QGraphicsItem_SetGroup(this.nativePtr, (group == default || group.NativePtr == default) ? default : group.NativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QGraphicsItem_Flags(this.nativePtr);
	}
	
	public void SetFlag(int64 flag)
	{
		CQt.QGraphicsItem_SetFlag(this.nativePtr, (int64)flag);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QGraphicsItem_SetFlags(this.nativePtr, flags);
	}
	
	public int64 CacheMode()
	{
		return CQt.QGraphicsItem_CacheMode(this.nativePtr);
	}
	
	public void SetCacheMode(int64 mode)
	{
		CQt.QGraphicsItem_SetCacheMode(this.nativePtr, (int64)mode);
	}
	
	public int64 PanelModality()
	{
		return CQt.QGraphicsItem_PanelModality(this.nativePtr);
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		CQt.QGraphicsItem_SetPanelModality(this.nativePtr, (int64)panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return CQt.QGraphicsItem_IsBlockedByModalPanel(this.nativePtr);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QGraphicsItem_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QGraphicsItem_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public void Cursor()
	{
		CQt.QGraphicsItem_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QGraphicsItem_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
	}
	
	public bool HasCursor()
	{
		return CQt.QGraphicsItem_HasCursor(this.nativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QGraphicsItem_UnsetCursor(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QGraphicsItem_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return CQt.QGraphicsItem_IsVisibleTo(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QGraphicsItem_SetVisible(this.nativePtr, visible);
	}
	
	public void Hide()
	{
		CQt.QGraphicsItem_Hide(this.nativePtr);
	}
	
	public void Show()
	{
		CQt.QGraphicsItem_Show(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsItem_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QGraphicsItem_SetEnabled(this.nativePtr, enabled);
	}
	
	public bool IsSelected()
	{
		return CQt.QGraphicsItem_IsSelected(this.nativePtr);
	}
	
	public void SetSelected(bool selected)
	{
		CQt.QGraphicsItem_SetSelected(this.nativePtr, selected);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QGraphicsItem_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QGraphicsItem_SetAcceptDrops(this.nativePtr, on);
	}
	
	public double Opacity()
	{
		return CQt.QGraphicsItem_Opacity(this.nativePtr);
	}
	
	public double EffectiveOpacity()
	{
		return CQt.QGraphicsItem_EffectiveOpacity(this.nativePtr);
	}
	
	public void SetOpacity(double opacity)
	{
		CQt.QGraphicsItem_SetOpacity(this.nativePtr, opacity);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QGraphicsItem_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QGraphicsItem_SetGraphicsEffect(this.nativePtr, (effect == default || effect.NativePtr == default) ? default : effect.NativePtr);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return CQt.QGraphicsItem_AcceptedMouseButtons(this.nativePtr);
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		CQt.QGraphicsItem_SetAcceptedMouseButtons(this.nativePtr, buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return CQt.QGraphicsItem_AcceptHoverEvents(this.nativePtr);
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptHoverEvents(this.nativePtr, enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return CQt.QGraphicsItem_AcceptTouchEvents(this.nativePtr);
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptTouchEvents(this.nativePtr, enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return CQt.QGraphicsItem_FiltersChildEvents(this.nativePtr);
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetFiltersChildEvents(this.nativePtr, enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return CQt.QGraphicsItem_HandlesChildEvents(this.nativePtr);
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetHandlesChildEvents(this.nativePtr, enabled);
	}
	
	public bool IsActive()
	{
		return CQt.QGraphicsItem_IsActive(this.nativePtr);
	}
	
	public void SetActive(bool active)
	{
		CQt.QGraphicsItem_SetActive(this.nativePtr, active);
	}
	
	public bool HasFocus()
	{
		return CQt.QGraphicsItem_HasFocus(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QGraphicsItem_SetFocus(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QGraphicsItem_ClearFocus(this.nativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QGraphicsItem_FocusProxy(this.nativePtr);
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		CQt.QGraphicsItem_SetFocusProxy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* FocusItem()
	{
		return CQt.QGraphicsItem_FocusItem(this.nativePtr);
	}
	
	public void* FocusScopeItem()
	{
		return CQt.QGraphicsItem_FocusScopeItem(this.nativePtr);
	}
	
	public void GrabMouse()
	{
		CQt.QGraphicsItem_GrabMouse(this.nativePtr);
	}
	
	public void UngrabMouse()
	{
		CQt.QGraphicsItem_UngrabMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QGraphicsItem_GrabKeyboard(this.nativePtr);
	}
	
	public void UngrabKeyboard()
	{
		CQt.QGraphicsItem_UngrabKeyboard(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsItem_Pos(this.nativePtr);
	}
	
	public double X()
	{
		return CQt.QGraphicsItem_X(this.nativePtr);
	}
	
	public void SetX(double x)
	{
		CQt.QGraphicsItem_SetX(this.nativePtr, x);
	}
	
	public double Y()
	{
		return CQt.QGraphicsItem_Y(this.nativePtr);
	}
	
	public void SetY(double y)
	{
		CQt.QGraphicsItem_SetY(this.nativePtr, y);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsItem_ScenePos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsItem_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void SetPos2(double x, double y)
	{
		CQt.QGraphicsItem_SetPos2(this.nativePtr, x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		CQt.QGraphicsItem_MoveBy(this.nativePtr, dx, dy);
	}
	
	public void EnsureVisible()
	{
		CQt.QGraphicsItem_EnsureVisible(this.nativePtr);
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_EnsureVisible2(this.nativePtr, x, y, w, h);
	}
	
	public void Transform()
	{
		CQt.QGraphicsItem_Transform(this.nativePtr);
	}
	
	public void SceneTransform()
	{
		CQt.QGraphicsItem_SceneTransform(this.nativePtr);
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		CQt.QGraphicsItem_DeviceTransform(this.nativePtr, (viewportTransform == default || viewportTransform.NativePtr == default) ? default : viewportTransform.NativePtr);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		CQt.QGraphicsItem_ItemTransform(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		CQt.QGraphicsItem_SetTransform(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public void ResetTransform()
	{
		CQt.QGraphicsItem_ResetTransform(this.nativePtr);
	}
	
	public void SetRotation(double angle)
	{
		CQt.QGraphicsItem_SetRotation(this.nativePtr, angle);
	}
	
	public double Rotation()
	{
		return CQt.QGraphicsItem_Rotation(this.nativePtr);
	}
	
	public void SetScale(double scale)
	{
		CQt.QGraphicsItem_SetScale(this.nativePtr, scale);
	}
	
	public double Scale()
	{
		return CQt.QGraphicsItem_Scale(this.nativePtr);
	}
	
	public void*[] Transformations()
	{
		return CQt.QGraphicsItem_Transformations(this.nativePtr);
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		CQt.QGraphicsItem_SetTransformations(this.nativePtr, null);
	}
	
	public void TransformOriginPoint()
	{
		CQt.QGraphicsItem_TransformOriginPoint(this.nativePtr);
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint(this.nativePtr, (origin == default || origin.NativePtr == default) ? default : origin.NativePtr);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint2(this.nativePtr, ax, ay);
	}
	
	public void Advance(int32 phase)
	{
		CQt.QGraphicsItem_Advance(this.nativePtr, phase);
	}
	
	public double ZValue()
	{
		return CQt.QGraphicsItem_ZValue(this.nativePtr);
	}
	
	public void SetZValue(double z)
	{
		CQt.QGraphicsItem_SetZValue(this.nativePtr, z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		CQt.QGraphicsItem_StackBefore(this.nativePtr, (sibling == default || sibling.NativePtr == default) ? default : sibling.NativePtr);
	}
	
	public void ChildrenBoundingRect()
	{
		CQt.QGraphicsItem_ChildrenBoundingRect(this.nativePtr);
	}
	
	public void SceneBoundingRect()
	{
		CQt.QGraphicsItem_SceneBoundingRect(this.nativePtr);
	}
	
	public bool IsClipped()
	{
		return CQt.QGraphicsItem_IsClipped(this.nativePtr);
	}
	
	public void ClipPath()
	{
		CQt.QGraphicsItem_ClipPath(this.nativePtr);
	}
	
	public bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, (int64)mode);
	}
	
	public bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode);
	}
	
	public void*[] CollidingItems()
	{
		return CQt.QGraphicsItem_CollidingItems(this.nativePtr);
	}
	
	public bool IsObscured()
	{
		return CQt.QGraphicsItem_IsObscured(this.nativePtr);
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return CQt.QGraphicsItem_IsObscured2(this.nativePtr, x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		CQt.QGraphicsItem_BoundingRegion(this.nativePtr, (itemToDeviceTransform == default || itemToDeviceTransform.NativePtr == default) ? default : itemToDeviceTransform.NativePtr);
	}
	
	public double BoundingRegionGranularity()
	{
		return CQt.QGraphicsItem_BoundingRegionGranularity(this.nativePtr);
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		CQt.QGraphicsItem_SetBoundingRegionGranularity(this.nativePtr, granularity);
	}
	
	public void Update()
	{
		CQt.QGraphicsItem_Update(this.nativePtr);
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		CQt.QGraphicsItem_Update2(this.nativePtr, x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		CQt.QGraphicsItem_Scroll(this.nativePtr, dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapToParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapToScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapToItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapToParent2(this.nativePtr, x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapToScene2(this.nativePtr, x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToScene2(this.nativePtr, x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapFromItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromParent2(this.nativePtr, x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromScene2(this.nativePtr, x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromScene2(this.nativePtr, x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return CQt.QGraphicsItem_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return CQt.QGraphicsItem_CommonAncestorItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsUnderMouse()
	{
		return CQt.QGraphicsItem_IsUnderMouse(this.nativePtr);
	}
	
	public void Data(int32 key)
	{
		CQt.QGraphicsItem_Data(this.nativePtr, key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		CQt.QGraphicsItem_SetData(this.nativePtr, key, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QGraphicsItem_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QGraphicsItem_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_InstallSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_RemoveSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsItem_SetFlag2(this.nativePtr, (int64)flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		CQt.QGraphicsItem_SetCacheMode2(this.nativePtr, (int64)mode, (cacheSize == default || cacheSize.NativePtr == default) ? default : cacheSize.NativePtr);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsItem_SetFocus1(this.nativePtr, (int64)focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		CQt.QGraphicsItem_EnsureVisible1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible5(this.nativePtr, x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible6(this.nativePtr, x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		CQt.QGraphicsItem_ItemTransform2(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		CQt.QGraphicsItem_SetTransform2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return CQt.QGraphicsItem_CollidingItems1(this.nativePtr, (int64)mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return CQt.QGraphicsItem_IsObscured1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Update1(IQRectF rect)
	{
		CQt.QGraphicsItem_Update1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		CQt.QGraphicsItem_Scroll3(this.nativePtr, dx, dy, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
}
public class QGraphicsEllipseItem
{
	public QGraphicsEllipseItemPtr handle;
	
	public static implicit operator QGraphicsEllipseItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsEllipseItemPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Rect()
	{
		this.handle.Rect();
	}
	
	public void SetRect(IQRectF rect)
	{
		this.handle.SetRect(rect);
	}
	
	public void SetRect2(double x, double y, double w, double h)
	{
		this.handle.SetRect2(x, y, w, h);
	}
	
	public int32 StartAngle()
	{
		return this.handle.StartAngle();
	}
	
	public void SetStartAngle(int32 angle)
	{
		this.handle.SetStartAngle(angle);
	}
	
	public int32 SpanAngle()
	{
		return this.handle.SpanAngle();
	}
	
	public void SetSpanAngle(int32 angle)
	{
		this.handle.SetSpanAngle(angle);
	}
	
	public virtual void BoundingRect()
	{
		this.handle.BoundingRect();
	}
	
	public virtual void Shape()
	{
		this.handle.Shape();
	}
	
	public virtual bool Contains(IQPointF point)
	{
		return this.handle.Contains(point);
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		this.handle.Paint(painter, option, widget);
	}
	
	public virtual bool IsObscuredBy(IQGraphicsItem item)
	{
		return this.handle.IsObscuredBy(item);
	}
	
	public virtual void OpaqueArea()
	{
		this.handle.OpaqueArea();
	}
	
	public virtual int32 Type()
	{
		return this.handle.Type();
	}
	
	public virtual bool SupportsExtension(int64 _extension)
	{
		return this.handle.SupportsExtension(_extension);
	}
	
	public virtual void SetExtension(int64 _extension, IQVariant variant)
	{
		this.handle.SetExtension(_extension, variant);
	}
	
	public virtual void Extension(IQVariant variant)
	{
		this.handle.Extension(variant);
	}
	
	public void Pen()
	{
		this.handle.Pen();
	}
	
	public void SetPen(IQPen pen)
	{
		this.handle.SetPen(pen);
	}
	
	public void Brush()
	{
		this.handle.Brush();
	}
	
	public void SetBrush(IQBrush brush)
	{
		this.handle.SetBrush(brush);
	}
	
	public void* Scene()
	{
		return this.handle.Scene();
	}
	
	public void* ParentItem()
	{
		return this.handle.ParentItem();
	}
	
	public void* TopLevelItem()
	{
		return this.handle.TopLevelItem();
	}
	
	public void* ParentObject()
	{
		return this.handle.ParentObject();
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public void* TopLevelWidget()
	{
		return this.handle.TopLevelWidget();
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* Panel()
	{
		return this.handle.Panel();
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		this.handle.SetParentItem(parent);
	}
	
	public void*[] ChildItems()
	{
		return this.handle.ChildItems();
	}
	
	public bool IsWidget()
	{
		return this.handle.IsWidget();
	}
	
	public bool IsWindow()
	{
		return this.handle.IsWindow();
	}
	
	public bool IsPanel()
	{
		return this.handle.IsPanel();
	}
	
	public void* ToGraphicsObject()
	{
		return this.handle.ToGraphicsObject();
	}
	
	public void* ToGraphicsObject2()
	{
		return this.handle.ToGraphicsObject2();
	}
	
	public void* Group()
	{
		return this.handle.Group();
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		this.handle.SetGroup(group);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlag(int64 flag)
	{
		this.handle.SetFlag(flag);
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int64 CacheMode()
	{
		return this.handle.CacheMode();
	}
	
	public void SetCacheMode(int64 mode)
	{
		this.handle.SetCacheMode(mode);
	}
	
	public int64 PanelModality()
	{
		return this.handle.PanelModality();
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		this.handle.SetPanelModality(panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return this.handle.IsBlockedByModalPanel();
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public bool HasCursor()
	{
		return this.handle.HasCursor();
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return this.handle.IsVisibleTo(parent);
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public bool IsSelected()
	{
		return this.handle.IsSelected();
	}
	
	public void SetSelected(bool selected)
	{
		this.handle.SetSelected(selected);
	}
	
	public bool AcceptDrops()
	{
		return this.handle.AcceptDrops();
	}
	
	public void SetAcceptDrops(bool on)
	{
		this.handle.SetAcceptDrops(on);
	}
	
	public double Opacity()
	{
		return this.handle.Opacity();
	}
	
	public double EffectiveOpacity()
	{
		return this.handle.EffectiveOpacity();
	}
	
	public void SetOpacity(double opacity)
	{
		this.handle.SetOpacity(opacity);
	}
	
	public void* GraphicsEffect()
	{
		return this.handle.GraphicsEffect();
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		this.handle.SetGraphicsEffect(effect);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return this.handle.AcceptedMouseButtons();
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		this.handle.SetAcceptedMouseButtons(buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return this.handle.AcceptHoverEvents();
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		this.handle.SetAcceptHoverEvents(enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return this.handle.AcceptTouchEvents();
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		this.handle.SetAcceptTouchEvents(enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return this.handle.FiltersChildEvents();
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		this.handle.SetFiltersChildEvents(enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return this.handle.HandlesChildEvents();
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		this.handle.SetHandlesChildEvents(enabled);
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void SetActive(bool active)
	{
		this.handle.SetActive(active);
	}
	
	public bool HasFocus()
	{
		return this.handle.HasFocus();
	}
	
	public void SetFocus()
	{
		this.handle.SetFocus();
	}
	
	public void ClearFocus()
	{
		this.handle.ClearFocus();
	}
	
	public void* FocusProxy()
	{
		return this.handle.FocusProxy();
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		this.handle.SetFocusProxy(item);
	}
	
	public void* FocusItem()
	{
		return this.handle.FocusItem();
	}
	
	public void* FocusScopeItem()
	{
		return this.handle.FocusScopeItem();
	}
	
	public void GrabMouse()
	{
		this.handle.GrabMouse();
	}
	
	public void UngrabMouse()
	{
		this.handle.UngrabMouse();
	}
	
	public void GrabKeyboard()
	{
		this.handle.GrabKeyboard();
	}
	
	public void UngrabKeyboard()
	{
		this.handle.UngrabKeyboard();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public double X()
	{
		return this.handle.X();
	}
	
	public void SetX(double x)
	{
		this.handle.SetX(x);
	}
	
	public double Y()
	{
		return this.handle.Y();
	}
	
	public void SetY(double y)
	{
		this.handle.SetY(y);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void SetPos2(double x, double y)
	{
		this.handle.SetPos2(x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		this.handle.MoveBy(dx, dy);
	}
	
	public void EnsureVisible()
	{
		this.handle.EnsureVisible();
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		this.handle.EnsureVisible2(x, y, w, h);
	}
	
	public void Transform()
	{
		this.handle.Transform();
	}
	
	public void SceneTransform()
	{
		this.handle.SceneTransform();
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		this.handle.DeviceTransform(viewportTransform);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		this.handle.ItemTransform(other);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		this.handle.SetTransform(matrix);
	}
	
	public void ResetTransform()
	{
		this.handle.ResetTransform();
	}
	
	public void SetRotation(double angle)
	{
		this.handle.SetRotation(angle);
	}
	
	public double Rotation()
	{
		return this.handle.Rotation();
	}
	
	public void SetScale(double scale)
	{
		this.handle.SetScale(scale);
	}
	
	public double Scale()
	{
		return this.handle.Scale();
	}
	
	public void*[] Transformations()
	{
		return this.handle.Transformations();
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		this.handle.SetTransformations(null);
	}
	
	public void TransformOriginPoint()
	{
		this.handle.TransformOriginPoint();
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		this.handle.SetTransformOriginPoint(origin);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		this.handle.SetTransformOriginPoint2(ax, ay);
	}
	
	public virtual void Advance(int32 phase)
	{
		this.handle.Advance(phase);
	}
	
	public double ZValue()
	{
		return this.handle.ZValue();
	}
	
	public void SetZValue(double z)
	{
		this.handle.SetZValue(z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		this.handle.StackBefore(sibling);
	}
	
	public void ChildrenBoundingRect()
	{
		this.handle.ChildrenBoundingRect();
	}
	
	public void SceneBoundingRect()
	{
		this.handle.SceneBoundingRect();
	}
	
	public bool IsClipped()
	{
		return this.handle.IsClipped();
	}
	
	public void ClipPath()
	{
		this.handle.ClipPath();
	}
	
	public virtual bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return this.handle.CollidesWithItem(other, mode);
	}
	
	public virtual bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return this.handle.CollidesWithPath(path, mode);
	}
	
	public void*[] CollidingItems()
	{
		return this.handle.CollidingItems();
	}
	
	public bool IsObscured()
	{
		return this.handle.IsObscured();
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return this.handle.IsObscured2(x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		this.handle.BoundingRegion(itemToDeviceTransform);
	}
	
	public double BoundingRegionGranularity()
	{
		return this.handle.BoundingRegionGranularity();
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		this.handle.SetBoundingRegionGranularity(granularity);
	}
	
	public void Update()
	{
		this.handle.Update();
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		this.handle.Update2(x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		this.handle.Scroll(dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapToItem(item, point);
	}
	
	public void MapToParent(IQPointF point)
	{
		this.handle.MapToParent(point);
	}
	
	public void MapToScene(IQPointF point)
	{
		this.handle.MapToScene(point);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectToItem(item, rect);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		this.handle.MapRectToParent(rect);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		this.handle.MapRectToScene(rect);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapToItem4(item, path);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		this.handle.MapToParentWithPath(path);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		this.handle.MapToSceneWithPath(path);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapFromItem(item, point);
	}
	
	public void MapFromParent(IQPointF point)
	{
		this.handle.MapFromParent(point);
	}
	
	public void MapFromScene(IQPointF point)
	{
		this.handle.MapFromScene(point);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectFromItem(item, rect);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		this.handle.MapRectFromParent(rect);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		this.handle.MapRectFromScene(rect);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapFromItem4(item, path);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		this.handle.MapFromParentWithPath(path);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		this.handle.MapFromSceneWithPath(path);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapToItem5(item, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		this.handle.MapToParent2(x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		this.handle.MapToScene2(x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectToItem2(item, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectToParent2(x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectToScene2(x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapFromItem5(item, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		this.handle.MapFromParent2(x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		this.handle.MapFromScene2(x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectFromItem2(item, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromParent2(x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromScene2(x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return this.handle.CommonAncestorItem(other);
	}
	
	public bool IsUnderMouse()
	{
		return this.handle.IsUnderMouse();
	}
	
	public void Data(int32 key)
	{
		this.handle.Data(key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		this.handle.SetData(key, value);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.InstallSceneEventFilter(filterItem);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.RemoveSceneEventFilter(filterItem);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		this.handle.SetFlag2(flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		this.handle.SetCacheMode2(mode, cacheSize);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		this.handle.SetFocus1(focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		this.handle.EnsureVisible1(rect);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		this.handle.EnsureVisible22(rect, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible3(rect, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		this.handle.EnsureVisible5(x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible6(x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		this.handle.ItemTransform2(other, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		this.handle.SetTransform2(matrix, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return this.handle.CollidingItems1(mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return this.handle.IsObscured1(rect);
	}
	
	public void Update1(IQRectF rect)
	{
		this.handle.Update1(rect);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		this.handle.Scroll3(dx, dy, rect);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsEllipseItem_new")]
	public static extern void* QGraphicsEllipseItem_new();
	[LinkName("QGraphicsEllipseItem_new2")]
	public static extern void* QGraphicsEllipseItem_new2(void* rect);
	[LinkName("QGraphicsEllipseItem_new3")]
	public static extern void* QGraphicsEllipseItem_new3(double x, double y, double w, double h);
	[LinkName("QGraphicsEllipseItem_new4")]
	public static extern void* QGraphicsEllipseItem_new4(void* parent);
	[LinkName("QGraphicsEllipseItem_new5")]
	public static extern void* QGraphicsEllipseItem_new5(void* rect, void* parent);
	[LinkName("QGraphicsEllipseItem_new6")]
	public static extern void* QGraphicsEllipseItem_new6(double x, double y, double w, double h, void* parent);
	[LinkName("QGraphicsEllipseItem_Rect")]
	public static extern void QGraphicsEllipseItem_Rect(void* c_this);
	[LinkName("QGraphicsEllipseItem_SetRect")]
	public static extern void QGraphicsEllipseItem_SetRect(void* c_this, void* rect);
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
	public static extern void QGraphicsEllipseItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsEllipseItem_Shape")]
	public static extern void QGraphicsEllipseItem_Shape(void* c_this);
	[LinkName("QGraphicsEllipseItem_Contains")]
	public static extern bool QGraphicsEllipseItem_Contains(void* c_this, void* point);
	[LinkName("QGraphicsEllipseItem_Paint")]
	public static extern void QGraphicsEllipseItem_Paint(void* c_this, void* painter, void* option, void* widget);
	[LinkName("QGraphicsEllipseItem_IsObscuredBy")]
	public static extern bool QGraphicsEllipseItem_IsObscuredBy(void* c_this, void* item);
	[LinkName("QGraphicsEllipseItem_OpaqueArea")]
	public static extern void QGraphicsEllipseItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsEllipseItem_Type")]
	public static extern int32 QGraphicsEllipseItem_Type(void* c_this);
	[LinkName("QGraphicsEllipseItem_SupportsExtension")]
	public static extern bool QGraphicsEllipseItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsEllipseItem_SetExtension")]
	public static extern void QGraphicsEllipseItem_SetExtension(void* c_this, int64 _extension, void* variant);
	[LinkName("QGraphicsEllipseItem_Extension")]
	public static extern void QGraphicsEllipseItem_Extension(void* c_this, void* variant);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsEllipseItem_Delete")]
	public static extern void QGraphicsEllipseItem_Delete(void* self);
}
public interface IQGraphicsPolygonItem
{
	void* NativePtr { get; }
}
public struct QGraphicsPolygonItemPtr : IQGraphicsPolygonItem, IDisposable, IQAbstractGraphicsShapeItem
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsPolygonItem_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsPolygonItem_Delete(this.nativePtr);
	}
	
	public int64 FillRule()
	{
		return CQt.QGraphicsPolygonItem_FillRule(this.nativePtr);
	}
	
	public void SetFillRule(int64 rule)
	{
		CQt.QGraphicsPolygonItem_SetFillRule(this.nativePtr, (int64)rule);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsPolygonItem_BoundingRect(this.nativePtr);
	}
	
	public void Shape()
	{
		CQt.QGraphicsPolygonItem_Shape(this.nativePtr);
	}
	
	public bool Contains(IQPointF point)
	{
		return CQt.QGraphicsPolygonItem_Contains(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		CQt.QGraphicsPolygonItem_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public bool IsObscuredBy(IQGraphicsItem item)
	{
		return CQt.QGraphicsPolygonItem_IsObscuredBy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void OpaqueArea()
	{
		CQt.QGraphicsPolygonItem_OpaqueArea(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QGraphicsPolygonItem_Type(this.nativePtr);
	}
	
	public bool SupportsExtension(int64 _extension)
	{
		return CQt.QGraphicsPolygonItem_SupportsExtension(this.nativePtr, (int64)_extension);
	}
	
	public void SetExtension(int64 _extension, IQVariant variant)
	{
		CQt.QGraphicsPolygonItem_SetExtension(this.nativePtr, (int64)_extension, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void Extension(IQVariant variant)
	{
		CQt.QGraphicsPolygonItem_Extension(this.nativePtr, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void Pen()
	{
		CQt.QAbstractGraphicsShapeItem_Pen(this.nativePtr);
	}
	
	public void SetPen(IQPen pen)
	{
		CQt.QAbstractGraphicsShapeItem_SetPen(this.nativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void Brush()
	{
		CQt.QAbstractGraphicsShapeItem_Brush(this.nativePtr);
	}
	
	public void SetBrush(IQBrush brush)
	{
		CQt.QAbstractGraphicsShapeItem_SetBrush(this.nativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void* Scene()
	{
		return CQt.QGraphicsItem_Scene(this.nativePtr);
	}
	
	public void* ParentItem()
	{
		return CQt.QGraphicsItem_ParentItem(this.nativePtr);
	}
	
	public void* TopLevelItem()
	{
		return CQt.QGraphicsItem_TopLevelItem(this.nativePtr);
	}
	
	public void* ParentObject()
	{
		return CQt.QGraphicsItem_ParentObject(this.nativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QGraphicsItem_ParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QGraphicsItem_TopLevelWidget(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QGraphicsItem_Window(this.nativePtr);
	}
	
	public void* Panel()
	{
		return CQt.QGraphicsItem_Panel(this.nativePtr);
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		CQt.QGraphicsItem_SetParentItem(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void*[] ChildItems()
	{
		return CQt.QGraphicsItem_ChildItems(this.nativePtr);
	}
	
	public bool IsWidget()
	{
		return CQt.QGraphicsItem_IsWidget(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QGraphicsItem_IsWindow(this.nativePtr);
	}
	
	public bool IsPanel()
	{
		return CQt.QGraphicsItem_IsPanel(this.nativePtr);
	}
	
	public void* ToGraphicsObject()
	{
		return CQt.QGraphicsItem_ToGraphicsObject(this.nativePtr);
	}
	
	public void* ToGraphicsObject2()
	{
		return CQt.QGraphicsItem_ToGraphicsObject2(this.nativePtr);
	}
	
	public void* Group()
	{
		return CQt.QGraphicsItem_Group(this.nativePtr);
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		CQt.QGraphicsItem_SetGroup(this.nativePtr, (group == default || group.NativePtr == default) ? default : group.NativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QGraphicsItem_Flags(this.nativePtr);
	}
	
	public void SetFlag(int64 flag)
	{
		CQt.QGraphicsItem_SetFlag(this.nativePtr, (int64)flag);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QGraphicsItem_SetFlags(this.nativePtr, flags);
	}
	
	public int64 CacheMode()
	{
		return CQt.QGraphicsItem_CacheMode(this.nativePtr);
	}
	
	public void SetCacheMode(int64 mode)
	{
		CQt.QGraphicsItem_SetCacheMode(this.nativePtr, (int64)mode);
	}
	
	public int64 PanelModality()
	{
		return CQt.QGraphicsItem_PanelModality(this.nativePtr);
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		CQt.QGraphicsItem_SetPanelModality(this.nativePtr, (int64)panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return CQt.QGraphicsItem_IsBlockedByModalPanel(this.nativePtr);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QGraphicsItem_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QGraphicsItem_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public void Cursor()
	{
		CQt.QGraphicsItem_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QGraphicsItem_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
	}
	
	public bool HasCursor()
	{
		return CQt.QGraphicsItem_HasCursor(this.nativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QGraphicsItem_UnsetCursor(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QGraphicsItem_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return CQt.QGraphicsItem_IsVisibleTo(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QGraphicsItem_SetVisible(this.nativePtr, visible);
	}
	
	public void Hide()
	{
		CQt.QGraphicsItem_Hide(this.nativePtr);
	}
	
	public void Show()
	{
		CQt.QGraphicsItem_Show(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsItem_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QGraphicsItem_SetEnabled(this.nativePtr, enabled);
	}
	
	public bool IsSelected()
	{
		return CQt.QGraphicsItem_IsSelected(this.nativePtr);
	}
	
	public void SetSelected(bool selected)
	{
		CQt.QGraphicsItem_SetSelected(this.nativePtr, selected);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QGraphicsItem_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QGraphicsItem_SetAcceptDrops(this.nativePtr, on);
	}
	
	public double Opacity()
	{
		return CQt.QGraphicsItem_Opacity(this.nativePtr);
	}
	
	public double EffectiveOpacity()
	{
		return CQt.QGraphicsItem_EffectiveOpacity(this.nativePtr);
	}
	
	public void SetOpacity(double opacity)
	{
		CQt.QGraphicsItem_SetOpacity(this.nativePtr, opacity);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QGraphicsItem_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QGraphicsItem_SetGraphicsEffect(this.nativePtr, (effect == default || effect.NativePtr == default) ? default : effect.NativePtr);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return CQt.QGraphicsItem_AcceptedMouseButtons(this.nativePtr);
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		CQt.QGraphicsItem_SetAcceptedMouseButtons(this.nativePtr, buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return CQt.QGraphicsItem_AcceptHoverEvents(this.nativePtr);
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptHoverEvents(this.nativePtr, enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return CQt.QGraphicsItem_AcceptTouchEvents(this.nativePtr);
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptTouchEvents(this.nativePtr, enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return CQt.QGraphicsItem_FiltersChildEvents(this.nativePtr);
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetFiltersChildEvents(this.nativePtr, enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return CQt.QGraphicsItem_HandlesChildEvents(this.nativePtr);
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetHandlesChildEvents(this.nativePtr, enabled);
	}
	
	public bool IsActive()
	{
		return CQt.QGraphicsItem_IsActive(this.nativePtr);
	}
	
	public void SetActive(bool active)
	{
		CQt.QGraphicsItem_SetActive(this.nativePtr, active);
	}
	
	public bool HasFocus()
	{
		return CQt.QGraphicsItem_HasFocus(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QGraphicsItem_SetFocus(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QGraphicsItem_ClearFocus(this.nativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QGraphicsItem_FocusProxy(this.nativePtr);
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		CQt.QGraphicsItem_SetFocusProxy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* FocusItem()
	{
		return CQt.QGraphicsItem_FocusItem(this.nativePtr);
	}
	
	public void* FocusScopeItem()
	{
		return CQt.QGraphicsItem_FocusScopeItem(this.nativePtr);
	}
	
	public void GrabMouse()
	{
		CQt.QGraphicsItem_GrabMouse(this.nativePtr);
	}
	
	public void UngrabMouse()
	{
		CQt.QGraphicsItem_UngrabMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QGraphicsItem_GrabKeyboard(this.nativePtr);
	}
	
	public void UngrabKeyboard()
	{
		CQt.QGraphicsItem_UngrabKeyboard(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsItem_Pos(this.nativePtr);
	}
	
	public double X()
	{
		return CQt.QGraphicsItem_X(this.nativePtr);
	}
	
	public void SetX(double x)
	{
		CQt.QGraphicsItem_SetX(this.nativePtr, x);
	}
	
	public double Y()
	{
		return CQt.QGraphicsItem_Y(this.nativePtr);
	}
	
	public void SetY(double y)
	{
		CQt.QGraphicsItem_SetY(this.nativePtr, y);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsItem_ScenePos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsItem_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void SetPos2(double x, double y)
	{
		CQt.QGraphicsItem_SetPos2(this.nativePtr, x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		CQt.QGraphicsItem_MoveBy(this.nativePtr, dx, dy);
	}
	
	public void EnsureVisible()
	{
		CQt.QGraphicsItem_EnsureVisible(this.nativePtr);
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_EnsureVisible2(this.nativePtr, x, y, w, h);
	}
	
	public void Transform()
	{
		CQt.QGraphicsItem_Transform(this.nativePtr);
	}
	
	public void SceneTransform()
	{
		CQt.QGraphicsItem_SceneTransform(this.nativePtr);
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		CQt.QGraphicsItem_DeviceTransform(this.nativePtr, (viewportTransform == default || viewportTransform.NativePtr == default) ? default : viewportTransform.NativePtr);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		CQt.QGraphicsItem_ItemTransform(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		CQt.QGraphicsItem_SetTransform(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public void ResetTransform()
	{
		CQt.QGraphicsItem_ResetTransform(this.nativePtr);
	}
	
	public void SetRotation(double angle)
	{
		CQt.QGraphicsItem_SetRotation(this.nativePtr, angle);
	}
	
	public double Rotation()
	{
		return CQt.QGraphicsItem_Rotation(this.nativePtr);
	}
	
	public void SetScale(double scale)
	{
		CQt.QGraphicsItem_SetScale(this.nativePtr, scale);
	}
	
	public double Scale()
	{
		return CQt.QGraphicsItem_Scale(this.nativePtr);
	}
	
	public void*[] Transformations()
	{
		return CQt.QGraphicsItem_Transformations(this.nativePtr);
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		CQt.QGraphicsItem_SetTransformations(this.nativePtr, null);
	}
	
	public void TransformOriginPoint()
	{
		CQt.QGraphicsItem_TransformOriginPoint(this.nativePtr);
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint(this.nativePtr, (origin == default || origin.NativePtr == default) ? default : origin.NativePtr);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint2(this.nativePtr, ax, ay);
	}
	
	public void Advance(int32 phase)
	{
		CQt.QGraphicsItem_Advance(this.nativePtr, phase);
	}
	
	public double ZValue()
	{
		return CQt.QGraphicsItem_ZValue(this.nativePtr);
	}
	
	public void SetZValue(double z)
	{
		CQt.QGraphicsItem_SetZValue(this.nativePtr, z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		CQt.QGraphicsItem_StackBefore(this.nativePtr, (sibling == default || sibling.NativePtr == default) ? default : sibling.NativePtr);
	}
	
	public void ChildrenBoundingRect()
	{
		CQt.QGraphicsItem_ChildrenBoundingRect(this.nativePtr);
	}
	
	public void SceneBoundingRect()
	{
		CQt.QGraphicsItem_SceneBoundingRect(this.nativePtr);
	}
	
	public bool IsClipped()
	{
		return CQt.QGraphicsItem_IsClipped(this.nativePtr);
	}
	
	public void ClipPath()
	{
		CQt.QGraphicsItem_ClipPath(this.nativePtr);
	}
	
	public bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, (int64)mode);
	}
	
	public bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode);
	}
	
	public void*[] CollidingItems()
	{
		return CQt.QGraphicsItem_CollidingItems(this.nativePtr);
	}
	
	public bool IsObscured()
	{
		return CQt.QGraphicsItem_IsObscured(this.nativePtr);
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return CQt.QGraphicsItem_IsObscured2(this.nativePtr, x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		CQt.QGraphicsItem_BoundingRegion(this.nativePtr, (itemToDeviceTransform == default || itemToDeviceTransform.NativePtr == default) ? default : itemToDeviceTransform.NativePtr);
	}
	
	public double BoundingRegionGranularity()
	{
		return CQt.QGraphicsItem_BoundingRegionGranularity(this.nativePtr);
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		CQt.QGraphicsItem_SetBoundingRegionGranularity(this.nativePtr, granularity);
	}
	
	public void Update()
	{
		CQt.QGraphicsItem_Update(this.nativePtr);
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		CQt.QGraphicsItem_Update2(this.nativePtr, x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		CQt.QGraphicsItem_Scroll(this.nativePtr, dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapToParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapToScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapToItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapToParent2(this.nativePtr, x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapToScene2(this.nativePtr, x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToScene2(this.nativePtr, x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapFromItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromParent2(this.nativePtr, x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromScene2(this.nativePtr, x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromScene2(this.nativePtr, x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return CQt.QGraphicsItem_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return CQt.QGraphicsItem_CommonAncestorItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsUnderMouse()
	{
		return CQt.QGraphicsItem_IsUnderMouse(this.nativePtr);
	}
	
	public void Data(int32 key)
	{
		CQt.QGraphicsItem_Data(this.nativePtr, key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		CQt.QGraphicsItem_SetData(this.nativePtr, key, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QGraphicsItem_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QGraphicsItem_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_InstallSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_RemoveSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsItem_SetFlag2(this.nativePtr, (int64)flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		CQt.QGraphicsItem_SetCacheMode2(this.nativePtr, (int64)mode, (cacheSize == default || cacheSize.NativePtr == default) ? default : cacheSize.NativePtr);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsItem_SetFocus1(this.nativePtr, (int64)focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		CQt.QGraphicsItem_EnsureVisible1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible5(this.nativePtr, x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible6(this.nativePtr, x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		CQt.QGraphicsItem_ItemTransform2(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		CQt.QGraphicsItem_SetTransform2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return CQt.QGraphicsItem_CollidingItems1(this.nativePtr, (int64)mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return CQt.QGraphicsItem_IsObscured1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Update1(IQRectF rect)
	{
		CQt.QGraphicsItem_Update1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		CQt.QGraphicsItem_Scroll3(this.nativePtr, dx, dy, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
}
public class QGraphicsPolygonItem
{
	public QGraphicsPolygonItemPtr handle;
	
	public static implicit operator QGraphicsPolygonItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsPolygonItemPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public int64 FillRule()
	{
		return this.handle.FillRule();
	}
	
	public void SetFillRule(int64 rule)
	{
		this.handle.SetFillRule(rule);
	}
	
	public virtual void BoundingRect()
	{
		this.handle.BoundingRect();
	}
	
	public virtual void Shape()
	{
		this.handle.Shape();
	}
	
	public virtual bool Contains(IQPointF point)
	{
		return this.handle.Contains(point);
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		this.handle.Paint(painter, option, widget);
	}
	
	public virtual bool IsObscuredBy(IQGraphicsItem item)
	{
		return this.handle.IsObscuredBy(item);
	}
	
	public virtual void OpaqueArea()
	{
		this.handle.OpaqueArea();
	}
	
	public virtual int32 Type()
	{
		return this.handle.Type();
	}
	
	public virtual bool SupportsExtension(int64 _extension)
	{
		return this.handle.SupportsExtension(_extension);
	}
	
	public virtual void SetExtension(int64 _extension, IQVariant variant)
	{
		this.handle.SetExtension(_extension, variant);
	}
	
	public virtual void Extension(IQVariant variant)
	{
		this.handle.Extension(variant);
	}
	
	public void Pen()
	{
		this.handle.Pen();
	}
	
	public void SetPen(IQPen pen)
	{
		this.handle.SetPen(pen);
	}
	
	public void Brush()
	{
		this.handle.Brush();
	}
	
	public void SetBrush(IQBrush brush)
	{
		this.handle.SetBrush(brush);
	}
	
	public void* Scene()
	{
		return this.handle.Scene();
	}
	
	public void* ParentItem()
	{
		return this.handle.ParentItem();
	}
	
	public void* TopLevelItem()
	{
		return this.handle.TopLevelItem();
	}
	
	public void* ParentObject()
	{
		return this.handle.ParentObject();
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public void* TopLevelWidget()
	{
		return this.handle.TopLevelWidget();
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* Panel()
	{
		return this.handle.Panel();
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		this.handle.SetParentItem(parent);
	}
	
	public void*[] ChildItems()
	{
		return this.handle.ChildItems();
	}
	
	public bool IsWidget()
	{
		return this.handle.IsWidget();
	}
	
	public bool IsWindow()
	{
		return this.handle.IsWindow();
	}
	
	public bool IsPanel()
	{
		return this.handle.IsPanel();
	}
	
	public void* ToGraphicsObject()
	{
		return this.handle.ToGraphicsObject();
	}
	
	public void* ToGraphicsObject2()
	{
		return this.handle.ToGraphicsObject2();
	}
	
	public void* Group()
	{
		return this.handle.Group();
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		this.handle.SetGroup(group);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlag(int64 flag)
	{
		this.handle.SetFlag(flag);
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int64 CacheMode()
	{
		return this.handle.CacheMode();
	}
	
	public void SetCacheMode(int64 mode)
	{
		this.handle.SetCacheMode(mode);
	}
	
	public int64 PanelModality()
	{
		return this.handle.PanelModality();
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		this.handle.SetPanelModality(panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return this.handle.IsBlockedByModalPanel();
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public bool HasCursor()
	{
		return this.handle.HasCursor();
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return this.handle.IsVisibleTo(parent);
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public bool IsSelected()
	{
		return this.handle.IsSelected();
	}
	
	public void SetSelected(bool selected)
	{
		this.handle.SetSelected(selected);
	}
	
	public bool AcceptDrops()
	{
		return this.handle.AcceptDrops();
	}
	
	public void SetAcceptDrops(bool on)
	{
		this.handle.SetAcceptDrops(on);
	}
	
	public double Opacity()
	{
		return this.handle.Opacity();
	}
	
	public double EffectiveOpacity()
	{
		return this.handle.EffectiveOpacity();
	}
	
	public void SetOpacity(double opacity)
	{
		this.handle.SetOpacity(opacity);
	}
	
	public void* GraphicsEffect()
	{
		return this.handle.GraphicsEffect();
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		this.handle.SetGraphicsEffect(effect);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return this.handle.AcceptedMouseButtons();
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		this.handle.SetAcceptedMouseButtons(buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return this.handle.AcceptHoverEvents();
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		this.handle.SetAcceptHoverEvents(enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return this.handle.AcceptTouchEvents();
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		this.handle.SetAcceptTouchEvents(enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return this.handle.FiltersChildEvents();
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		this.handle.SetFiltersChildEvents(enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return this.handle.HandlesChildEvents();
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		this.handle.SetHandlesChildEvents(enabled);
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void SetActive(bool active)
	{
		this.handle.SetActive(active);
	}
	
	public bool HasFocus()
	{
		return this.handle.HasFocus();
	}
	
	public void SetFocus()
	{
		this.handle.SetFocus();
	}
	
	public void ClearFocus()
	{
		this.handle.ClearFocus();
	}
	
	public void* FocusProxy()
	{
		return this.handle.FocusProxy();
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		this.handle.SetFocusProxy(item);
	}
	
	public void* FocusItem()
	{
		return this.handle.FocusItem();
	}
	
	public void* FocusScopeItem()
	{
		return this.handle.FocusScopeItem();
	}
	
	public void GrabMouse()
	{
		this.handle.GrabMouse();
	}
	
	public void UngrabMouse()
	{
		this.handle.UngrabMouse();
	}
	
	public void GrabKeyboard()
	{
		this.handle.GrabKeyboard();
	}
	
	public void UngrabKeyboard()
	{
		this.handle.UngrabKeyboard();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public double X()
	{
		return this.handle.X();
	}
	
	public void SetX(double x)
	{
		this.handle.SetX(x);
	}
	
	public double Y()
	{
		return this.handle.Y();
	}
	
	public void SetY(double y)
	{
		this.handle.SetY(y);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void SetPos2(double x, double y)
	{
		this.handle.SetPos2(x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		this.handle.MoveBy(dx, dy);
	}
	
	public void EnsureVisible()
	{
		this.handle.EnsureVisible();
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		this.handle.EnsureVisible2(x, y, w, h);
	}
	
	public void Transform()
	{
		this.handle.Transform();
	}
	
	public void SceneTransform()
	{
		this.handle.SceneTransform();
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		this.handle.DeviceTransform(viewportTransform);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		this.handle.ItemTransform(other);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		this.handle.SetTransform(matrix);
	}
	
	public void ResetTransform()
	{
		this.handle.ResetTransform();
	}
	
	public void SetRotation(double angle)
	{
		this.handle.SetRotation(angle);
	}
	
	public double Rotation()
	{
		return this.handle.Rotation();
	}
	
	public void SetScale(double scale)
	{
		this.handle.SetScale(scale);
	}
	
	public double Scale()
	{
		return this.handle.Scale();
	}
	
	public void*[] Transformations()
	{
		return this.handle.Transformations();
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		this.handle.SetTransformations(null);
	}
	
	public void TransformOriginPoint()
	{
		this.handle.TransformOriginPoint();
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		this.handle.SetTransformOriginPoint(origin);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		this.handle.SetTransformOriginPoint2(ax, ay);
	}
	
	public virtual void Advance(int32 phase)
	{
		this.handle.Advance(phase);
	}
	
	public double ZValue()
	{
		return this.handle.ZValue();
	}
	
	public void SetZValue(double z)
	{
		this.handle.SetZValue(z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		this.handle.StackBefore(sibling);
	}
	
	public void ChildrenBoundingRect()
	{
		this.handle.ChildrenBoundingRect();
	}
	
	public void SceneBoundingRect()
	{
		this.handle.SceneBoundingRect();
	}
	
	public bool IsClipped()
	{
		return this.handle.IsClipped();
	}
	
	public void ClipPath()
	{
		this.handle.ClipPath();
	}
	
	public virtual bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return this.handle.CollidesWithItem(other, mode);
	}
	
	public virtual bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return this.handle.CollidesWithPath(path, mode);
	}
	
	public void*[] CollidingItems()
	{
		return this.handle.CollidingItems();
	}
	
	public bool IsObscured()
	{
		return this.handle.IsObscured();
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return this.handle.IsObscured2(x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		this.handle.BoundingRegion(itemToDeviceTransform);
	}
	
	public double BoundingRegionGranularity()
	{
		return this.handle.BoundingRegionGranularity();
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		this.handle.SetBoundingRegionGranularity(granularity);
	}
	
	public void Update()
	{
		this.handle.Update();
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		this.handle.Update2(x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		this.handle.Scroll(dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapToItem(item, point);
	}
	
	public void MapToParent(IQPointF point)
	{
		this.handle.MapToParent(point);
	}
	
	public void MapToScene(IQPointF point)
	{
		this.handle.MapToScene(point);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectToItem(item, rect);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		this.handle.MapRectToParent(rect);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		this.handle.MapRectToScene(rect);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapToItem4(item, path);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		this.handle.MapToParentWithPath(path);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		this.handle.MapToSceneWithPath(path);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapFromItem(item, point);
	}
	
	public void MapFromParent(IQPointF point)
	{
		this.handle.MapFromParent(point);
	}
	
	public void MapFromScene(IQPointF point)
	{
		this.handle.MapFromScene(point);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectFromItem(item, rect);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		this.handle.MapRectFromParent(rect);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		this.handle.MapRectFromScene(rect);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapFromItem4(item, path);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		this.handle.MapFromParentWithPath(path);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		this.handle.MapFromSceneWithPath(path);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapToItem5(item, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		this.handle.MapToParent2(x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		this.handle.MapToScene2(x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectToItem2(item, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectToParent2(x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectToScene2(x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapFromItem5(item, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		this.handle.MapFromParent2(x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		this.handle.MapFromScene2(x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectFromItem2(item, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromParent2(x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromScene2(x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return this.handle.CommonAncestorItem(other);
	}
	
	public bool IsUnderMouse()
	{
		return this.handle.IsUnderMouse();
	}
	
	public void Data(int32 key)
	{
		this.handle.Data(key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		this.handle.SetData(key, value);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.InstallSceneEventFilter(filterItem);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.RemoveSceneEventFilter(filterItem);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		this.handle.SetFlag2(flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		this.handle.SetCacheMode2(mode, cacheSize);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		this.handle.SetFocus1(focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		this.handle.EnsureVisible1(rect);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		this.handle.EnsureVisible22(rect, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible3(rect, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		this.handle.EnsureVisible5(x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible6(x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		this.handle.ItemTransform2(other, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		this.handle.SetTransform2(matrix, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return this.handle.CollidingItems1(mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return this.handle.IsObscured1(rect);
	}
	
	public void Update1(IQRectF rect)
	{
		this.handle.Update1(rect);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		this.handle.Scroll3(dx, dy, rect);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsPolygonItem_new")]
	public static extern void* QGraphicsPolygonItem_new();
	[LinkName("QGraphicsPolygonItem_new2")]
	public static extern void* QGraphicsPolygonItem_new2(void* parent);
	[LinkName("QGraphicsPolygonItem_FillRule")]
	public static extern int64 QGraphicsPolygonItem_FillRule(void* c_this);
	[LinkName("QGraphicsPolygonItem_SetFillRule")]
	public static extern void QGraphicsPolygonItem_SetFillRule(void* c_this, int64 rule);
	[LinkName("QGraphicsPolygonItem_BoundingRect")]
	public static extern void QGraphicsPolygonItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsPolygonItem_Shape")]
	public static extern void QGraphicsPolygonItem_Shape(void* c_this);
	[LinkName("QGraphicsPolygonItem_Contains")]
	public static extern bool QGraphicsPolygonItem_Contains(void* c_this, void* point);
	[LinkName("QGraphicsPolygonItem_Paint")]
	public static extern void QGraphicsPolygonItem_Paint(void* c_this, void* painter, void* option, void* widget);
	[LinkName("QGraphicsPolygonItem_IsObscuredBy")]
	public static extern bool QGraphicsPolygonItem_IsObscuredBy(void* c_this, void* item);
	[LinkName("QGraphicsPolygonItem_OpaqueArea")]
	public static extern void QGraphicsPolygonItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsPolygonItem_Type")]
	public static extern int32 QGraphicsPolygonItem_Type(void* c_this);
	[LinkName("QGraphicsPolygonItem_SupportsExtension")]
	public static extern bool QGraphicsPolygonItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsPolygonItem_SetExtension")]
	public static extern void QGraphicsPolygonItem_SetExtension(void* c_this, int64 _extension, void* variant);
	[LinkName("QGraphicsPolygonItem_Extension")]
	public static extern void QGraphicsPolygonItem_Extension(void* c_this, void* variant);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsPolygonItem_Delete")]
	public static extern void QGraphicsPolygonItem_Delete(void* self);
}
public interface IQGraphicsLineItem
{
	void* NativePtr { get; }
}
public struct QGraphicsLineItemPtr : IQGraphicsLineItem, IDisposable, IQGraphicsItem
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsLineItem_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsLineItem_Delete(this.nativePtr);
	}
	
	public void Pen()
	{
		CQt.QGraphicsLineItem_Pen(this.nativePtr);
	}
	
	public void SetPen(IQPen pen)
	{
		CQt.QGraphicsLineItem_SetPen(this.nativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void Line()
	{
		CQt.QGraphicsLineItem_Line(this.nativePtr);
	}
	
	public void SetLine(IQLineF line)
	{
		CQt.QGraphicsLineItem_SetLine(this.nativePtr, (line == default || line.NativePtr == default) ? default : line.NativePtr);
	}
	
	public void SetLine2(double x1, double y1, double x2, double y2)
	{
		CQt.QGraphicsLineItem_SetLine2(this.nativePtr, x1, y1, x2, y2);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsLineItem_BoundingRect(this.nativePtr);
	}
	
	public void Shape()
	{
		CQt.QGraphicsLineItem_Shape(this.nativePtr);
	}
	
	public bool Contains(IQPointF point)
	{
		return CQt.QGraphicsLineItem_Contains(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		CQt.QGraphicsLineItem_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public bool IsObscuredBy(IQGraphicsItem item)
	{
		return CQt.QGraphicsLineItem_IsObscuredBy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void OpaqueArea()
	{
		CQt.QGraphicsLineItem_OpaqueArea(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QGraphicsLineItem_Type(this.nativePtr);
	}
	
	public bool SupportsExtension(int64 _extension)
	{
		return CQt.QGraphicsLineItem_SupportsExtension(this.nativePtr, (int64)_extension);
	}
	
	public void SetExtension(int64 _extension, IQVariant variant)
	{
		CQt.QGraphicsLineItem_SetExtension(this.nativePtr, (int64)_extension, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void Extension(IQVariant variant)
	{
		CQt.QGraphicsLineItem_Extension(this.nativePtr, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void* Scene()
	{
		return CQt.QGraphicsItem_Scene(this.nativePtr);
	}
	
	public void* ParentItem()
	{
		return CQt.QGraphicsItem_ParentItem(this.nativePtr);
	}
	
	public void* TopLevelItem()
	{
		return CQt.QGraphicsItem_TopLevelItem(this.nativePtr);
	}
	
	public void* ParentObject()
	{
		return CQt.QGraphicsItem_ParentObject(this.nativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QGraphicsItem_ParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QGraphicsItem_TopLevelWidget(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QGraphicsItem_Window(this.nativePtr);
	}
	
	public void* Panel()
	{
		return CQt.QGraphicsItem_Panel(this.nativePtr);
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		CQt.QGraphicsItem_SetParentItem(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void*[] ChildItems()
	{
		return CQt.QGraphicsItem_ChildItems(this.nativePtr);
	}
	
	public bool IsWidget()
	{
		return CQt.QGraphicsItem_IsWidget(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QGraphicsItem_IsWindow(this.nativePtr);
	}
	
	public bool IsPanel()
	{
		return CQt.QGraphicsItem_IsPanel(this.nativePtr);
	}
	
	public void* ToGraphicsObject()
	{
		return CQt.QGraphicsItem_ToGraphicsObject(this.nativePtr);
	}
	
	public void* ToGraphicsObject2()
	{
		return CQt.QGraphicsItem_ToGraphicsObject2(this.nativePtr);
	}
	
	public void* Group()
	{
		return CQt.QGraphicsItem_Group(this.nativePtr);
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		CQt.QGraphicsItem_SetGroup(this.nativePtr, (group == default || group.NativePtr == default) ? default : group.NativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QGraphicsItem_Flags(this.nativePtr);
	}
	
	public void SetFlag(int64 flag)
	{
		CQt.QGraphicsItem_SetFlag(this.nativePtr, (int64)flag);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QGraphicsItem_SetFlags(this.nativePtr, flags);
	}
	
	public int64 CacheMode()
	{
		return CQt.QGraphicsItem_CacheMode(this.nativePtr);
	}
	
	public void SetCacheMode(int64 mode)
	{
		CQt.QGraphicsItem_SetCacheMode(this.nativePtr, (int64)mode);
	}
	
	public int64 PanelModality()
	{
		return CQt.QGraphicsItem_PanelModality(this.nativePtr);
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		CQt.QGraphicsItem_SetPanelModality(this.nativePtr, (int64)panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return CQt.QGraphicsItem_IsBlockedByModalPanel(this.nativePtr);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QGraphicsItem_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QGraphicsItem_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public void Cursor()
	{
		CQt.QGraphicsItem_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QGraphicsItem_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
	}
	
	public bool HasCursor()
	{
		return CQt.QGraphicsItem_HasCursor(this.nativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QGraphicsItem_UnsetCursor(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QGraphicsItem_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return CQt.QGraphicsItem_IsVisibleTo(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QGraphicsItem_SetVisible(this.nativePtr, visible);
	}
	
	public void Hide()
	{
		CQt.QGraphicsItem_Hide(this.nativePtr);
	}
	
	public void Show()
	{
		CQt.QGraphicsItem_Show(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsItem_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QGraphicsItem_SetEnabled(this.nativePtr, enabled);
	}
	
	public bool IsSelected()
	{
		return CQt.QGraphicsItem_IsSelected(this.nativePtr);
	}
	
	public void SetSelected(bool selected)
	{
		CQt.QGraphicsItem_SetSelected(this.nativePtr, selected);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QGraphicsItem_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QGraphicsItem_SetAcceptDrops(this.nativePtr, on);
	}
	
	public double Opacity()
	{
		return CQt.QGraphicsItem_Opacity(this.nativePtr);
	}
	
	public double EffectiveOpacity()
	{
		return CQt.QGraphicsItem_EffectiveOpacity(this.nativePtr);
	}
	
	public void SetOpacity(double opacity)
	{
		CQt.QGraphicsItem_SetOpacity(this.nativePtr, opacity);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QGraphicsItem_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QGraphicsItem_SetGraphicsEffect(this.nativePtr, (effect == default || effect.NativePtr == default) ? default : effect.NativePtr);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return CQt.QGraphicsItem_AcceptedMouseButtons(this.nativePtr);
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		CQt.QGraphicsItem_SetAcceptedMouseButtons(this.nativePtr, buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return CQt.QGraphicsItem_AcceptHoverEvents(this.nativePtr);
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptHoverEvents(this.nativePtr, enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return CQt.QGraphicsItem_AcceptTouchEvents(this.nativePtr);
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptTouchEvents(this.nativePtr, enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return CQt.QGraphicsItem_FiltersChildEvents(this.nativePtr);
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetFiltersChildEvents(this.nativePtr, enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return CQt.QGraphicsItem_HandlesChildEvents(this.nativePtr);
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetHandlesChildEvents(this.nativePtr, enabled);
	}
	
	public bool IsActive()
	{
		return CQt.QGraphicsItem_IsActive(this.nativePtr);
	}
	
	public void SetActive(bool active)
	{
		CQt.QGraphicsItem_SetActive(this.nativePtr, active);
	}
	
	public bool HasFocus()
	{
		return CQt.QGraphicsItem_HasFocus(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QGraphicsItem_SetFocus(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QGraphicsItem_ClearFocus(this.nativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QGraphicsItem_FocusProxy(this.nativePtr);
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		CQt.QGraphicsItem_SetFocusProxy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* FocusItem()
	{
		return CQt.QGraphicsItem_FocusItem(this.nativePtr);
	}
	
	public void* FocusScopeItem()
	{
		return CQt.QGraphicsItem_FocusScopeItem(this.nativePtr);
	}
	
	public void GrabMouse()
	{
		CQt.QGraphicsItem_GrabMouse(this.nativePtr);
	}
	
	public void UngrabMouse()
	{
		CQt.QGraphicsItem_UngrabMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QGraphicsItem_GrabKeyboard(this.nativePtr);
	}
	
	public void UngrabKeyboard()
	{
		CQt.QGraphicsItem_UngrabKeyboard(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsItem_Pos(this.nativePtr);
	}
	
	public double X()
	{
		return CQt.QGraphicsItem_X(this.nativePtr);
	}
	
	public void SetX(double x)
	{
		CQt.QGraphicsItem_SetX(this.nativePtr, x);
	}
	
	public double Y()
	{
		return CQt.QGraphicsItem_Y(this.nativePtr);
	}
	
	public void SetY(double y)
	{
		CQt.QGraphicsItem_SetY(this.nativePtr, y);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsItem_ScenePos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsItem_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void SetPos2(double x, double y)
	{
		CQt.QGraphicsItem_SetPos2(this.nativePtr, x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		CQt.QGraphicsItem_MoveBy(this.nativePtr, dx, dy);
	}
	
	public void EnsureVisible()
	{
		CQt.QGraphicsItem_EnsureVisible(this.nativePtr);
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_EnsureVisible2(this.nativePtr, x, y, w, h);
	}
	
	public void Transform()
	{
		CQt.QGraphicsItem_Transform(this.nativePtr);
	}
	
	public void SceneTransform()
	{
		CQt.QGraphicsItem_SceneTransform(this.nativePtr);
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		CQt.QGraphicsItem_DeviceTransform(this.nativePtr, (viewportTransform == default || viewportTransform.NativePtr == default) ? default : viewportTransform.NativePtr);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		CQt.QGraphicsItem_ItemTransform(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		CQt.QGraphicsItem_SetTransform(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public void ResetTransform()
	{
		CQt.QGraphicsItem_ResetTransform(this.nativePtr);
	}
	
	public void SetRotation(double angle)
	{
		CQt.QGraphicsItem_SetRotation(this.nativePtr, angle);
	}
	
	public double Rotation()
	{
		return CQt.QGraphicsItem_Rotation(this.nativePtr);
	}
	
	public void SetScale(double scale)
	{
		CQt.QGraphicsItem_SetScale(this.nativePtr, scale);
	}
	
	public double Scale()
	{
		return CQt.QGraphicsItem_Scale(this.nativePtr);
	}
	
	public void*[] Transformations()
	{
		return CQt.QGraphicsItem_Transformations(this.nativePtr);
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		CQt.QGraphicsItem_SetTransformations(this.nativePtr, null);
	}
	
	public void TransformOriginPoint()
	{
		CQt.QGraphicsItem_TransformOriginPoint(this.nativePtr);
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint(this.nativePtr, (origin == default || origin.NativePtr == default) ? default : origin.NativePtr);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint2(this.nativePtr, ax, ay);
	}
	
	public void Advance(int32 phase)
	{
		CQt.QGraphicsItem_Advance(this.nativePtr, phase);
	}
	
	public double ZValue()
	{
		return CQt.QGraphicsItem_ZValue(this.nativePtr);
	}
	
	public void SetZValue(double z)
	{
		CQt.QGraphicsItem_SetZValue(this.nativePtr, z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		CQt.QGraphicsItem_StackBefore(this.nativePtr, (sibling == default || sibling.NativePtr == default) ? default : sibling.NativePtr);
	}
	
	public void ChildrenBoundingRect()
	{
		CQt.QGraphicsItem_ChildrenBoundingRect(this.nativePtr);
	}
	
	public void SceneBoundingRect()
	{
		CQt.QGraphicsItem_SceneBoundingRect(this.nativePtr);
	}
	
	public bool IsClipped()
	{
		return CQt.QGraphicsItem_IsClipped(this.nativePtr);
	}
	
	public void ClipPath()
	{
		CQt.QGraphicsItem_ClipPath(this.nativePtr);
	}
	
	public bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, (int64)mode);
	}
	
	public bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode);
	}
	
	public void*[] CollidingItems()
	{
		return CQt.QGraphicsItem_CollidingItems(this.nativePtr);
	}
	
	public bool IsObscured()
	{
		return CQt.QGraphicsItem_IsObscured(this.nativePtr);
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return CQt.QGraphicsItem_IsObscured2(this.nativePtr, x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		CQt.QGraphicsItem_BoundingRegion(this.nativePtr, (itemToDeviceTransform == default || itemToDeviceTransform.NativePtr == default) ? default : itemToDeviceTransform.NativePtr);
	}
	
	public double BoundingRegionGranularity()
	{
		return CQt.QGraphicsItem_BoundingRegionGranularity(this.nativePtr);
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		CQt.QGraphicsItem_SetBoundingRegionGranularity(this.nativePtr, granularity);
	}
	
	public void Update()
	{
		CQt.QGraphicsItem_Update(this.nativePtr);
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		CQt.QGraphicsItem_Update2(this.nativePtr, x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		CQt.QGraphicsItem_Scroll(this.nativePtr, dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapToParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapToScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapToItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapToParent2(this.nativePtr, x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapToScene2(this.nativePtr, x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToScene2(this.nativePtr, x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapFromItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromParent2(this.nativePtr, x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromScene2(this.nativePtr, x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromScene2(this.nativePtr, x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return CQt.QGraphicsItem_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return CQt.QGraphicsItem_CommonAncestorItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsUnderMouse()
	{
		return CQt.QGraphicsItem_IsUnderMouse(this.nativePtr);
	}
	
	public void Data(int32 key)
	{
		CQt.QGraphicsItem_Data(this.nativePtr, key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		CQt.QGraphicsItem_SetData(this.nativePtr, key, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QGraphicsItem_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QGraphicsItem_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_InstallSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_RemoveSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsItem_SetFlag2(this.nativePtr, (int64)flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		CQt.QGraphicsItem_SetCacheMode2(this.nativePtr, (int64)mode, (cacheSize == default || cacheSize.NativePtr == default) ? default : cacheSize.NativePtr);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsItem_SetFocus1(this.nativePtr, (int64)focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		CQt.QGraphicsItem_EnsureVisible1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible5(this.nativePtr, x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible6(this.nativePtr, x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		CQt.QGraphicsItem_ItemTransform2(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		CQt.QGraphicsItem_SetTransform2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return CQt.QGraphicsItem_CollidingItems1(this.nativePtr, (int64)mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return CQt.QGraphicsItem_IsObscured1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Update1(IQRectF rect)
	{
		CQt.QGraphicsItem_Update1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		CQt.QGraphicsItem_Scroll3(this.nativePtr, dx, dy, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
}
public class QGraphicsLineItem
{
	public QGraphicsLineItemPtr handle;
	
	public static implicit operator QGraphicsLineItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsLineItemPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Pen()
	{
		this.handle.Pen();
	}
	
	public void SetPen(IQPen pen)
	{
		this.handle.SetPen(pen);
	}
	
	public void Line()
	{
		this.handle.Line();
	}
	
	public void SetLine(IQLineF line)
	{
		this.handle.SetLine(line);
	}
	
	public void SetLine2(double x1, double y1, double x2, double y2)
	{
		this.handle.SetLine2(x1, y1, x2, y2);
	}
	
	public virtual void BoundingRect()
	{
		this.handle.BoundingRect();
	}
	
	public virtual void Shape()
	{
		this.handle.Shape();
	}
	
	public virtual bool Contains(IQPointF point)
	{
		return this.handle.Contains(point);
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		this.handle.Paint(painter, option, widget);
	}
	
	public virtual bool IsObscuredBy(IQGraphicsItem item)
	{
		return this.handle.IsObscuredBy(item);
	}
	
	public virtual void OpaqueArea()
	{
		this.handle.OpaqueArea();
	}
	
	public virtual int32 Type()
	{
		return this.handle.Type();
	}
	
	public virtual bool SupportsExtension(int64 _extension)
	{
		return this.handle.SupportsExtension(_extension);
	}
	
	public virtual void SetExtension(int64 _extension, IQVariant variant)
	{
		this.handle.SetExtension(_extension, variant);
	}
	
	public virtual void Extension(IQVariant variant)
	{
		this.handle.Extension(variant);
	}
	
	public void* Scene()
	{
		return this.handle.Scene();
	}
	
	public void* ParentItem()
	{
		return this.handle.ParentItem();
	}
	
	public void* TopLevelItem()
	{
		return this.handle.TopLevelItem();
	}
	
	public void* ParentObject()
	{
		return this.handle.ParentObject();
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public void* TopLevelWidget()
	{
		return this.handle.TopLevelWidget();
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* Panel()
	{
		return this.handle.Panel();
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		this.handle.SetParentItem(parent);
	}
	
	public void*[] ChildItems()
	{
		return this.handle.ChildItems();
	}
	
	public bool IsWidget()
	{
		return this.handle.IsWidget();
	}
	
	public bool IsWindow()
	{
		return this.handle.IsWindow();
	}
	
	public bool IsPanel()
	{
		return this.handle.IsPanel();
	}
	
	public void* ToGraphicsObject()
	{
		return this.handle.ToGraphicsObject();
	}
	
	public void* ToGraphicsObject2()
	{
		return this.handle.ToGraphicsObject2();
	}
	
	public void* Group()
	{
		return this.handle.Group();
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		this.handle.SetGroup(group);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlag(int64 flag)
	{
		this.handle.SetFlag(flag);
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int64 CacheMode()
	{
		return this.handle.CacheMode();
	}
	
	public void SetCacheMode(int64 mode)
	{
		this.handle.SetCacheMode(mode);
	}
	
	public int64 PanelModality()
	{
		return this.handle.PanelModality();
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		this.handle.SetPanelModality(panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return this.handle.IsBlockedByModalPanel();
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public bool HasCursor()
	{
		return this.handle.HasCursor();
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return this.handle.IsVisibleTo(parent);
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public bool IsSelected()
	{
		return this.handle.IsSelected();
	}
	
	public void SetSelected(bool selected)
	{
		this.handle.SetSelected(selected);
	}
	
	public bool AcceptDrops()
	{
		return this.handle.AcceptDrops();
	}
	
	public void SetAcceptDrops(bool on)
	{
		this.handle.SetAcceptDrops(on);
	}
	
	public double Opacity()
	{
		return this.handle.Opacity();
	}
	
	public double EffectiveOpacity()
	{
		return this.handle.EffectiveOpacity();
	}
	
	public void SetOpacity(double opacity)
	{
		this.handle.SetOpacity(opacity);
	}
	
	public void* GraphicsEffect()
	{
		return this.handle.GraphicsEffect();
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		this.handle.SetGraphicsEffect(effect);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return this.handle.AcceptedMouseButtons();
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		this.handle.SetAcceptedMouseButtons(buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return this.handle.AcceptHoverEvents();
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		this.handle.SetAcceptHoverEvents(enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return this.handle.AcceptTouchEvents();
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		this.handle.SetAcceptTouchEvents(enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return this.handle.FiltersChildEvents();
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		this.handle.SetFiltersChildEvents(enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return this.handle.HandlesChildEvents();
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		this.handle.SetHandlesChildEvents(enabled);
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void SetActive(bool active)
	{
		this.handle.SetActive(active);
	}
	
	public bool HasFocus()
	{
		return this.handle.HasFocus();
	}
	
	public void SetFocus()
	{
		this.handle.SetFocus();
	}
	
	public void ClearFocus()
	{
		this.handle.ClearFocus();
	}
	
	public void* FocusProxy()
	{
		return this.handle.FocusProxy();
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		this.handle.SetFocusProxy(item);
	}
	
	public void* FocusItem()
	{
		return this.handle.FocusItem();
	}
	
	public void* FocusScopeItem()
	{
		return this.handle.FocusScopeItem();
	}
	
	public void GrabMouse()
	{
		this.handle.GrabMouse();
	}
	
	public void UngrabMouse()
	{
		this.handle.UngrabMouse();
	}
	
	public void GrabKeyboard()
	{
		this.handle.GrabKeyboard();
	}
	
	public void UngrabKeyboard()
	{
		this.handle.UngrabKeyboard();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public double X()
	{
		return this.handle.X();
	}
	
	public void SetX(double x)
	{
		this.handle.SetX(x);
	}
	
	public double Y()
	{
		return this.handle.Y();
	}
	
	public void SetY(double y)
	{
		this.handle.SetY(y);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void SetPos2(double x, double y)
	{
		this.handle.SetPos2(x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		this.handle.MoveBy(dx, dy);
	}
	
	public void EnsureVisible()
	{
		this.handle.EnsureVisible();
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		this.handle.EnsureVisible2(x, y, w, h);
	}
	
	public void Transform()
	{
		this.handle.Transform();
	}
	
	public void SceneTransform()
	{
		this.handle.SceneTransform();
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		this.handle.DeviceTransform(viewportTransform);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		this.handle.ItemTransform(other);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		this.handle.SetTransform(matrix);
	}
	
	public void ResetTransform()
	{
		this.handle.ResetTransform();
	}
	
	public void SetRotation(double angle)
	{
		this.handle.SetRotation(angle);
	}
	
	public double Rotation()
	{
		return this.handle.Rotation();
	}
	
	public void SetScale(double scale)
	{
		this.handle.SetScale(scale);
	}
	
	public double Scale()
	{
		return this.handle.Scale();
	}
	
	public void*[] Transformations()
	{
		return this.handle.Transformations();
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		this.handle.SetTransformations(null);
	}
	
	public void TransformOriginPoint()
	{
		this.handle.TransformOriginPoint();
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		this.handle.SetTransformOriginPoint(origin);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		this.handle.SetTransformOriginPoint2(ax, ay);
	}
	
	public virtual void Advance(int32 phase)
	{
		this.handle.Advance(phase);
	}
	
	public double ZValue()
	{
		return this.handle.ZValue();
	}
	
	public void SetZValue(double z)
	{
		this.handle.SetZValue(z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		this.handle.StackBefore(sibling);
	}
	
	public void ChildrenBoundingRect()
	{
		this.handle.ChildrenBoundingRect();
	}
	
	public void SceneBoundingRect()
	{
		this.handle.SceneBoundingRect();
	}
	
	public bool IsClipped()
	{
		return this.handle.IsClipped();
	}
	
	public void ClipPath()
	{
		this.handle.ClipPath();
	}
	
	public virtual bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return this.handle.CollidesWithItem(other, mode);
	}
	
	public virtual bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return this.handle.CollidesWithPath(path, mode);
	}
	
	public void*[] CollidingItems()
	{
		return this.handle.CollidingItems();
	}
	
	public bool IsObscured()
	{
		return this.handle.IsObscured();
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return this.handle.IsObscured2(x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		this.handle.BoundingRegion(itemToDeviceTransform);
	}
	
	public double BoundingRegionGranularity()
	{
		return this.handle.BoundingRegionGranularity();
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		this.handle.SetBoundingRegionGranularity(granularity);
	}
	
	public void Update()
	{
		this.handle.Update();
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		this.handle.Update2(x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		this.handle.Scroll(dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapToItem(item, point);
	}
	
	public void MapToParent(IQPointF point)
	{
		this.handle.MapToParent(point);
	}
	
	public void MapToScene(IQPointF point)
	{
		this.handle.MapToScene(point);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectToItem(item, rect);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		this.handle.MapRectToParent(rect);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		this.handle.MapRectToScene(rect);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapToItem4(item, path);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		this.handle.MapToParentWithPath(path);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		this.handle.MapToSceneWithPath(path);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapFromItem(item, point);
	}
	
	public void MapFromParent(IQPointF point)
	{
		this.handle.MapFromParent(point);
	}
	
	public void MapFromScene(IQPointF point)
	{
		this.handle.MapFromScene(point);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectFromItem(item, rect);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		this.handle.MapRectFromParent(rect);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		this.handle.MapRectFromScene(rect);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapFromItem4(item, path);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		this.handle.MapFromParentWithPath(path);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		this.handle.MapFromSceneWithPath(path);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapToItem5(item, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		this.handle.MapToParent2(x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		this.handle.MapToScene2(x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectToItem2(item, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectToParent2(x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectToScene2(x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapFromItem5(item, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		this.handle.MapFromParent2(x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		this.handle.MapFromScene2(x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectFromItem2(item, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromParent2(x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromScene2(x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return this.handle.CommonAncestorItem(other);
	}
	
	public bool IsUnderMouse()
	{
		return this.handle.IsUnderMouse();
	}
	
	public void Data(int32 key)
	{
		this.handle.Data(key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		this.handle.SetData(key, value);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.InstallSceneEventFilter(filterItem);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.RemoveSceneEventFilter(filterItem);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		this.handle.SetFlag2(flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		this.handle.SetCacheMode2(mode, cacheSize);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		this.handle.SetFocus1(focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		this.handle.EnsureVisible1(rect);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		this.handle.EnsureVisible22(rect, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible3(rect, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		this.handle.EnsureVisible5(x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible6(x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		this.handle.ItemTransform2(other, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		this.handle.SetTransform2(matrix, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return this.handle.CollidingItems1(mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return this.handle.IsObscured1(rect);
	}
	
	public void Update1(IQRectF rect)
	{
		this.handle.Update1(rect);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		this.handle.Scroll3(dx, dy, rect);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsLineItem_new")]
	public static extern void* QGraphicsLineItem_new();
	[LinkName("QGraphicsLineItem_new2")]
	public static extern void* QGraphicsLineItem_new2(void* line);
	[LinkName("QGraphicsLineItem_new3")]
	public static extern void* QGraphicsLineItem_new3(double x1, double y1, double x2, double y2);
	[LinkName("QGraphicsLineItem_new4")]
	public static extern void* QGraphicsLineItem_new4(void* parent);
	[LinkName("QGraphicsLineItem_new5")]
	public static extern void* QGraphicsLineItem_new5(void* line, void* parent);
	[LinkName("QGraphicsLineItem_new6")]
	public static extern void* QGraphicsLineItem_new6(double x1, double y1, double x2, double y2, void* parent);
	[LinkName("QGraphicsLineItem_Pen")]
	public static extern void QGraphicsLineItem_Pen(void* c_this);
	[LinkName("QGraphicsLineItem_SetPen")]
	public static extern void QGraphicsLineItem_SetPen(void* c_this, void* pen);
	[LinkName("QGraphicsLineItem_Line")]
	public static extern void QGraphicsLineItem_Line(void* c_this);
	[LinkName("QGraphicsLineItem_SetLine")]
	public static extern void QGraphicsLineItem_SetLine(void* c_this, void* line);
	[LinkName("QGraphicsLineItem_SetLine2")]
	public static extern void QGraphicsLineItem_SetLine2(void* c_this, double x1, double y1, double x2, double y2);
	[LinkName("QGraphicsLineItem_BoundingRect")]
	public static extern void QGraphicsLineItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsLineItem_Shape")]
	public static extern void QGraphicsLineItem_Shape(void* c_this);
	[LinkName("QGraphicsLineItem_Contains")]
	public static extern bool QGraphicsLineItem_Contains(void* c_this, void* point);
	[LinkName("QGraphicsLineItem_Paint")]
	public static extern void QGraphicsLineItem_Paint(void* c_this, void* painter, void* option, void* widget);
	[LinkName("QGraphicsLineItem_IsObscuredBy")]
	public static extern bool QGraphicsLineItem_IsObscuredBy(void* c_this, void* item);
	[LinkName("QGraphicsLineItem_OpaqueArea")]
	public static extern void QGraphicsLineItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsLineItem_Type")]
	public static extern int32 QGraphicsLineItem_Type(void* c_this);
	[LinkName("QGraphicsLineItem_SupportsExtension")]
	public static extern bool QGraphicsLineItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsLineItem_SetExtension")]
	public static extern void QGraphicsLineItem_SetExtension(void* c_this, int64 _extension, void* variant);
	[LinkName("QGraphicsLineItem_Extension")]
	public static extern void QGraphicsLineItem_Extension(void* c_this, void* variant);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsLineItem_Delete")]
	public static extern void QGraphicsLineItem_Delete(void* self);
}
public interface IQGraphicsPixmapItem
{
	void* NativePtr { get; }
}
public struct QGraphicsPixmapItemPtr : IQGraphicsPixmapItem, IDisposable, IQGraphicsItem
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsPixmapItem_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsPixmapItem_Delete(this.nativePtr);
	}
	
	public void Pixmap()
	{
		CQt.QGraphicsPixmapItem_Pixmap(this.nativePtr);
	}
	
	public void SetPixmap(IQPixmap pixmap)
	{
		CQt.QGraphicsPixmapItem_SetPixmap(this.nativePtr, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public int64 TransformationMode()
	{
		return CQt.QGraphicsPixmapItem_TransformationMode(this.nativePtr);
	}
	
	public void SetTransformationMode(int64 mode)
	{
		CQt.QGraphicsPixmapItem_SetTransformationMode(this.nativePtr, (int64)mode);
	}
	
	public void Offset()
	{
		CQt.QGraphicsPixmapItem_Offset(this.nativePtr);
	}
	
	public void SetOffset(IQPointF offset)
	{
		CQt.QGraphicsPixmapItem_SetOffset(this.nativePtr, (offset == default || offset.NativePtr == default) ? default : offset.NativePtr);
	}
	
	public void SetOffset2(double x, double y)
	{
		CQt.QGraphicsPixmapItem_SetOffset2(this.nativePtr, x, y);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsPixmapItem_BoundingRect(this.nativePtr);
	}
	
	public void Shape()
	{
		CQt.QGraphicsPixmapItem_Shape(this.nativePtr);
	}
	
	public bool Contains(IQPointF point)
	{
		return CQt.QGraphicsPixmapItem_Contains(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		CQt.QGraphicsPixmapItem_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public bool IsObscuredBy(IQGraphicsItem item)
	{
		return CQt.QGraphicsPixmapItem_IsObscuredBy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void OpaqueArea()
	{
		CQt.QGraphicsPixmapItem_OpaqueArea(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QGraphicsPixmapItem_Type(this.nativePtr);
	}
	
	public int64 ShapeMode()
	{
		return CQt.QGraphicsPixmapItem_ShapeMode(this.nativePtr);
	}
	
	public void SetShapeMode(int64 mode)
	{
		CQt.QGraphicsPixmapItem_SetShapeMode(this.nativePtr, (int64)mode);
	}
	
	public bool SupportsExtension(int64 _extension)
	{
		return CQt.QGraphicsPixmapItem_SupportsExtension(this.nativePtr, (int64)_extension);
	}
	
	public void SetExtension(int64 _extension, IQVariant variant)
	{
		CQt.QGraphicsPixmapItem_SetExtension(this.nativePtr, (int64)_extension, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void Extension(IQVariant variant)
	{
		CQt.QGraphicsPixmapItem_Extension(this.nativePtr, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void* Scene()
	{
		return CQt.QGraphicsItem_Scene(this.nativePtr);
	}
	
	public void* ParentItem()
	{
		return CQt.QGraphicsItem_ParentItem(this.nativePtr);
	}
	
	public void* TopLevelItem()
	{
		return CQt.QGraphicsItem_TopLevelItem(this.nativePtr);
	}
	
	public void* ParentObject()
	{
		return CQt.QGraphicsItem_ParentObject(this.nativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QGraphicsItem_ParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QGraphicsItem_TopLevelWidget(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QGraphicsItem_Window(this.nativePtr);
	}
	
	public void* Panel()
	{
		return CQt.QGraphicsItem_Panel(this.nativePtr);
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		CQt.QGraphicsItem_SetParentItem(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void*[] ChildItems()
	{
		return CQt.QGraphicsItem_ChildItems(this.nativePtr);
	}
	
	public bool IsWidget()
	{
		return CQt.QGraphicsItem_IsWidget(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QGraphicsItem_IsWindow(this.nativePtr);
	}
	
	public bool IsPanel()
	{
		return CQt.QGraphicsItem_IsPanel(this.nativePtr);
	}
	
	public void* ToGraphicsObject()
	{
		return CQt.QGraphicsItem_ToGraphicsObject(this.nativePtr);
	}
	
	public void* ToGraphicsObject2()
	{
		return CQt.QGraphicsItem_ToGraphicsObject2(this.nativePtr);
	}
	
	public void* Group()
	{
		return CQt.QGraphicsItem_Group(this.nativePtr);
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		CQt.QGraphicsItem_SetGroup(this.nativePtr, (group == default || group.NativePtr == default) ? default : group.NativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QGraphicsItem_Flags(this.nativePtr);
	}
	
	public void SetFlag(int64 flag)
	{
		CQt.QGraphicsItem_SetFlag(this.nativePtr, (int64)flag);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QGraphicsItem_SetFlags(this.nativePtr, flags);
	}
	
	public int64 CacheMode()
	{
		return CQt.QGraphicsItem_CacheMode(this.nativePtr);
	}
	
	public void SetCacheMode(int64 mode)
	{
		CQt.QGraphicsItem_SetCacheMode(this.nativePtr, (int64)mode);
	}
	
	public int64 PanelModality()
	{
		return CQt.QGraphicsItem_PanelModality(this.nativePtr);
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		CQt.QGraphicsItem_SetPanelModality(this.nativePtr, (int64)panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return CQt.QGraphicsItem_IsBlockedByModalPanel(this.nativePtr);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QGraphicsItem_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QGraphicsItem_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public void Cursor()
	{
		CQt.QGraphicsItem_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QGraphicsItem_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
	}
	
	public bool HasCursor()
	{
		return CQt.QGraphicsItem_HasCursor(this.nativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QGraphicsItem_UnsetCursor(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QGraphicsItem_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return CQt.QGraphicsItem_IsVisibleTo(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QGraphicsItem_SetVisible(this.nativePtr, visible);
	}
	
	public void Hide()
	{
		CQt.QGraphicsItem_Hide(this.nativePtr);
	}
	
	public void Show()
	{
		CQt.QGraphicsItem_Show(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsItem_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QGraphicsItem_SetEnabled(this.nativePtr, enabled);
	}
	
	public bool IsSelected()
	{
		return CQt.QGraphicsItem_IsSelected(this.nativePtr);
	}
	
	public void SetSelected(bool selected)
	{
		CQt.QGraphicsItem_SetSelected(this.nativePtr, selected);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QGraphicsItem_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QGraphicsItem_SetAcceptDrops(this.nativePtr, on);
	}
	
	public double Opacity()
	{
		return CQt.QGraphicsItem_Opacity(this.nativePtr);
	}
	
	public double EffectiveOpacity()
	{
		return CQt.QGraphicsItem_EffectiveOpacity(this.nativePtr);
	}
	
	public void SetOpacity(double opacity)
	{
		CQt.QGraphicsItem_SetOpacity(this.nativePtr, opacity);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QGraphicsItem_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QGraphicsItem_SetGraphicsEffect(this.nativePtr, (effect == default || effect.NativePtr == default) ? default : effect.NativePtr);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return CQt.QGraphicsItem_AcceptedMouseButtons(this.nativePtr);
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		CQt.QGraphicsItem_SetAcceptedMouseButtons(this.nativePtr, buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return CQt.QGraphicsItem_AcceptHoverEvents(this.nativePtr);
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptHoverEvents(this.nativePtr, enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return CQt.QGraphicsItem_AcceptTouchEvents(this.nativePtr);
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptTouchEvents(this.nativePtr, enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return CQt.QGraphicsItem_FiltersChildEvents(this.nativePtr);
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetFiltersChildEvents(this.nativePtr, enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return CQt.QGraphicsItem_HandlesChildEvents(this.nativePtr);
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetHandlesChildEvents(this.nativePtr, enabled);
	}
	
	public bool IsActive()
	{
		return CQt.QGraphicsItem_IsActive(this.nativePtr);
	}
	
	public void SetActive(bool active)
	{
		CQt.QGraphicsItem_SetActive(this.nativePtr, active);
	}
	
	public bool HasFocus()
	{
		return CQt.QGraphicsItem_HasFocus(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QGraphicsItem_SetFocus(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QGraphicsItem_ClearFocus(this.nativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QGraphicsItem_FocusProxy(this.nativePtr);
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		CQt.QGraphicsItem_SetFocusProxy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* FocusItem()
	{
		return CQt.QGraphicsItem_FocusItem(this.nativePtr);
	}
	
	public void* FocusScopeItem()
	{
		return CQt.QGraphicsItem_FocusScopeItem(this.nativePtr);
	}
	
	public void GrabMouse()
	{
		CQt.QGraphicsItem_GrabMouse(this.nativePtr);
	}
	
	public void UngrabMouse()
	{
		CQt.QGraphicsItem_UngrabMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QGraphicsItem_GrabKeyboard(this.nativePtr);
	}
	
	public void UngrabKeyboard()
	{
		CQt.QGraphicsItem_UngrabKeyboard(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsItem_Pos(this.nativePtr);
	}
	
	public double X()
	{
		return CQt.QGraphicsItem_X(this.nativePtr);
	}
	
	public void SetX(double x)
	{
		CQt.QGraphicsItem_SetX(this.nativePtr, x);
	}
	
	public double Y()
	{
		return CQt.QGraphicsItem_Y(this.nativePtr);
	}
	
	public void SetY(double y)
	{
		CQt.QGraphicsItem_SetY(this.nativePtr, y);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsItem_ScenePos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsItem_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void SetPos2(double x, double y)
	{
		CQt.QGraphicsItem_SetPos2(this.nativePtr, x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		CQt.QGraphicsItem_MoveBy(this.nativePtr, dx, dy);
	}
	
	public void EnsureVisible()
	{
		CQt.QGraphicsItem_EnsureVisible(this.nativePtr);
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_EnsureVisible2(this.nativePtr, x, y, w, h);
	}
	
	public void Transform()
	{
		CQt.QGraphicsItem_Transform(this.nativePtr);
	}
	
	public void SceneTransform()
	{
		CQt.QGraphicsItem_SceneTransform(this.nativePtr);
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		CQt.QGraphicsItem_DeviceTransform(this.nativePtr, (viewportTransform == default || viewportTransform.NativePtr == default) ? default : viewportTransform.NativePtr);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		CQt.QGraphicsItem_ItemTransform(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		CQt.QGraphicsItem_SetTransform(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public void ResetTransform()
	{
		CQt.QGraphicsItem_ResetTransform(this.nativePtr);
	}
	
	public void SetRotation(double angle)
	{
		CQt.QGraphicsItem_SetRotation(this.nativePtr, angle);
	}
	
	public double Rotation()
	{
		return CQt.QGraphicsItem_Rotation(this.nativePtr);
	}
	
	public void SetScale(double scale)
	{
		CQt.QGraphicsItem_SetScale(this.nativePtr, scale);
	}
	
	public double Scale()
	{
		return CQt.QGraphicsItem_Scale(this.nativePtr);
	}
	
	public void*[] Transformations()
	{
		return CQt.QGraphicsItem_Transformations(this.nativePtr);
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		CQt.QGraphicsItem_SetTransformations(this.nativePtr, null);
	}
	
	public void TransformOriginPoint()
	{
		CQt.QGraphicsItem_TransformOriginPoint(this.nativePtr);
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint(this.nativePtr, (origin == default || origin.NativePtr == default) ? default : origin.NativePtr);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint2(this.nativePtr, ax, ay);
	}
	
	public void Advance(int32 phase)
	{
		CQt.QGraphicsItem_Advance(this.nativePtr, phase);
	}
	
	public double ZValue()
	{
		return CQt.QGraphicsItem_ZValue(this.nativePtr);
	}
	
	public void SetZValue(double z)
	{
		CQt.QGraphicsItem_SetZValue(this.nativePtr, z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		CQt.QGraphicsItem_StackBefore(this.nativePtr, (sibling == default || sibling.NativePtr == default) ? default : sibling.NativePtr);
	}
	
	public void ChildrenBoundingRect()
	{
		CQt.QGraphicsItem_ChildrenBoundingRect(this.nativePtr);
	}
	
	public void SceneBoundingRect()
	{
		CQt.QGraphicsItem_SceneBoundingRect(this.nativePtr);
	}
	
	public bool IsClipped()
	{
		return CQt.QGraphicsItem_IsClipped(this.nativePtr);
	}
	
	public void ClipPath()
	{
		CQt.QGraphicsItem_ClipPath(this.nativePtr);
	}
	
	public bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, (int64)mode);
	}
	
	public bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode);
	}
	
	public void*[] CollidingItems()
	{
		return CQt.QGraphicsItem_CollidingItems(this.nativePtr);
	}
	
	public bool IsObscured()
	{
		return CQt.QGraphicsItem_IsObscured(this.nativePtr);
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return CQt.QGraphicsItem_IsObscured2(this.nativePtr, x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		CQt.QGraphicsItem_BoundingRegion(this.nativePtr, (itemToDeviceTransform == default || itemToDeviceTransform.NativePtr == default) ? default : itemToDeviceTransform.NativePtr);
	}
	
	public double BoundingRegionGranularity()
	{
		return CQt.QGraphicsItem_BoundingRegionGranularity(this.nativePtr);
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		CQt.QGraphicsItem_SetBoundingRegionGranularity(this.nativePtr, granularity);
	}
	
	public void Update()
	{
		CQt.QGraphicsItem_Update(this.nativePtr);
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		CQt.QGraphicsItem_Update2(this.nativePtr, x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		CQt.QGraphicsItem_Scroll(this.nativePtr, dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapToParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapToScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapToItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapToParent2(this.nativePtr, x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapToScene2(this.nativePtr, x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToScene2(this.nativePtr, x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapFromItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromParent2(this.nativePtr, x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromScene2(this.nativePtr, x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromScene2(this.nativePtr, x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return CQt.QGraphicsItem_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return CQt.QGraphicsItem_CommonAncestorItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsUnderMouse()
	{
		return CQt.QGraphicsItem_IsUnderMouse(this.nativePtr);
	}
	
	public void Data(int32 key)
	{
		CQt.QGraphicsItem_Data(this.nativePtr, key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		CQt.QGraphicsItem_SetData(this.nativePtr, key, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QGraphicsItem_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QGraphicsItem_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_InstallSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_RemoveSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsItem_SetFlag2(this.nativePtr, (int64)flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		CQt.QGraphicsItem_SetCacheMode2(this.nativePtr, (int64)mode, (cacheSize == default || cacheSize.NativePtr == default) ? default : cacheSize.NativePtr);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsItem_SetFocus1(this.nativePtr, (int64)focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		CQt.QGraphicsItem_EnsureVisible1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible5(this.nativePtr, x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible6(this.nativePtr, x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		CQt.QGraphicsItem_ItemTransform2(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		CQt.QGraphicsItem_SetTransform2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return CQt.QGraphicsItem_CollidingItems1(this.nativePtr, (int64)mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return CQt.QGraphicsItem_IsObscured1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Update1(IQRectF rect)
	{
		CQt.QGraphicsItem_Update1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		CQt.QGraphicsItem_Scroll3(this.nativePtr, dx, dy, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
}
public class QGraphicsPixmapItem
{
	public QGraphicsPixmapItemPtr handle;
	
	public static implicit operator QGraphicsPixmapItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsPixmapItemPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Pixmap()
	{
		this.handle.Pixmap();
	}
	
	public void SetPixmap(IQPixmap pixmap)
	{
		this.handle.SetPixmap(pixmap);
	}
	
	public int64 TransformationMode()
	{
		return this.handle.TransformationMode();
	}
	
	public void SetTransformationMode(int64 mode)
	{
		this.handle.SetTransformationMode(mode);
	}
	
	public void Offset()
	{
		this.handle.Offset();
	}
	
	public void SetOffset(IQPointF offset)
	{
		this.handle.SetOffset(offset);
	}
	
	public void SetOffset2(double x, double y)
	{
		this.handle.SetOffset2(x, y);
	}
	
	public virtual void BoundingRect()
	{
		this.handle.BoundingRect();
	}
	
	public virtual void Shape()
	{
		this.handle.Shape();
	}
	
	public virtual bool Contains(IQPointF point)
	{
		return this.handle.Contains(point);
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		this.handle.Paint(painter, option, widget);
	}
	
	public virtual bool IsObscuredBy(IQGraphicsItem item)
	{
		return this.handle.IsObscuredBy(item);
	}
	
	public virtual void OpaqueArea()
	{
		this.handle.OpaqueArea();
	}
	
	public virtual int32 Type()
	{
		return this.handle.Type();
	}
	
	public int64 ShapeMode()
	{
		return this.handle.ShapeMode();
	}
	
	public void SetShapeMode(int64 mode)
	{
		this.handle.SetShapeMode(mode);
	}
	
	public virtual bool SupportsExtension(int64 _extension)
	{
		return this.handle.SupportsExtension(_extension);
	}
	
	public virtual void SetExtension(int64 _extension, IQVariant variant)
	{
		this.handle.SetExtension(_extension, variant);
	}
	
	public virtual void Extension(IQVariant variant)
	{
		this.handle.Extension(variant);
	}
	
	public void* Scene()
	{
		return this.handle.Scene();
	}
	
	public void* ParentItem()
	{
		return this.handle.ParentItem();
	}
	
	public void* TopLevelItem()
	{
		return this.handle.TopLevelItem();
	}
	
	public void* ParentObject()
	{
		return this.handle.ParentObject();
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public void* TopLevelWidget()
	{
		return this.handle.TopLevelWidget();
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* Panel()
	{
		return this.handle.Panel();
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		this.handle.SetParentItem(parent);
	}
	
	public void*[] ChildItems()
	{
		return this.handle.ChildItems();
	}
	
	public bool IsWidget()
	{
		return this.handle.IsWidget();
	}
	
	public bool IsWindow()
	{
		return this.handle.IsWindow();
	}
	
	public bool IsPanel()
	{
		return this.handle.IsPanel();
	}
	
	public void* ToGraphicsObject()
	{
		return this.handle.ToGraphicsObject();
	}
	
	public void* ToGraphicsObject2()
	{
		return this.handle.ToGraphicsObject2();
	}
	
	public void* Group()
	{
		return this.handle.Group();
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		this.handle.SetGroup(group);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlag(int64 flag)
	{
		this.handle.SetFlag(flag);
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int64 CacheMode()
	{
		return this.handle.CacheMode();
	}
	
	public void SetCacheMode(int64 mode)
	{
		this.handle.SetCacheMode(mode);
	}
	
	public int64 PanelModality()
	{
		return this.handle.PanelModality();
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		this.handle.SetPanelModality(panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return this.handle.IsBlockedByModalPanel();
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public bool HasCursor()
	{
		return this.handle.HasCursor();
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return this.handle.IsVisibleTo(parent);
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public bool IsSelected()
	{
		return this.handle.IsSelected();
	}
	
	public void SetSelected(bool selected)
	{
		this.handle.SetSelected(selected);
	}
	
	public bool AcceptDrops()
	{
		return this.handle.AcceptDrops();
	}
	
	public void SetAcceptDrops(bool on)
	{
		this.handle.SetAcceptDrops(on);
	}
	
	public double Opacity()
	{
		return this.handle.Opacity();
	}
	
	public double EffectiveOpacity()
	{
		return this.handle.EffectiveOpacity();
	}
	
	public void SetOpacity(double opacity)
	{
		this.handle.SetOpacity(opacity);
	}
	
	public void* GraphicsEffect()
	{
		return this.handle.GraphicsEffect();
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		this.handle.SetGraphicsEffect(effect);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return this.handle.AcceptedMouseButtons();
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		this.handle.SetAcceptedMouseButtons(buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return this.handle.AcceptHoverEvents();
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		this.handle.SetAcceptHoverEvents(enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return this.handle.AcceptTouchEvents();
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		this.handle.SetAcceptTouchEvents(enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return this.handle.FiltersChildEvents();
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		this.handle.SetFiltersChildEvents(enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return this.handle.HandlesChildEvents();
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		this.handle.SetHandlesChildEvents(enabled);
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void SetActive(bool active)
	{
		this.handle.SetActive(active);
	}
	
	public bool HasFocus()
	{
		return this.handle.HasFocus();
	}
	
	public void SetFocus()
	{
		this.handle.SetFocus();
	}
	
	public void ClearFocus()
	{
		this.handle.ClearFocus();
	}
	
	public void* FocusProxy()
	{
		return this.handle.FocusProxy();
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		this.handle.SetFocusProxy(item);
	}
	
	public void* FocusItem()
	{
		return this.handle.FocusItem();
	}
	
	public void* FocusScopeItem()
	{
		return this.handle.FocusScopeItem();
	}
	
	public void GrabMouse()
	{
		this.handle.GrabMouse();
	}
	
	public void UngrabMouse()
	{
		this.handle.UngrabMouse();
	}
	
	public void GrabKeyboard()
	{
		this.handle.GrabKeyboard();
	}
	
	public void UngrabKeyboard()
	{
		this.handle.UngrabKeyboard();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public double X()
	{
		return this.handle.X();
	}
	
	public void SetX(double x)
	{
		this.handle.SetX(x);
	}
	
	public double Y()
	{
		return this.handle.Y();
	}
	
	public void SetY(double y)
	{
		this.handle.SetY(y);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void SetPos2(double x, double y)
	{
		this.handle.SetPos2(x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		this.handle.MoveBy(dx, dy);
	}
	
	public void EnsureVisible()
	{
		this.handle.EnsureVisible();
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		this.handle.EnsureVisible2(x, y, w, h);
	}
	
	public void Transform()
	{
		this.handle.Transform();
	}
	
	public void SceneTransform()
	{
		this.handle.SceneTransform();
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		this.handle.DeviceTransform(viewportTransform);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		this.handle.ItemTransform(other);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		this.handle.SetTransform(matrix);
	}
	
	public void ResetTransform()
	{
		this.handle.ResetTransform();
	}
	
	public void SetRotation(double angle)
	{
		this.handle.SetRotation(angle);
	}
	
	public double Rotation()
	{
		return this.handle.Rotation();
	}
	
	public void SetScale(double scale)
	{
		this.handle.SetScale(scale);
	}
	
	public double Scale()
	{
		return this.handle.Scale();
	}
	
	public void*[] Transformations()
	{
		return this.handle.Transformations();
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		this.handle.SetTransformations(null);
	}
	
	public void TransformOriginPoint()
	{
		this.handle.TransformOriginPoint();
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		this.handle.SetTransformOriginPoint(origin);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		this.handle.SetTransformOriginPoint2(ax, ay);
	}
	
	public virtual void Advance(int32 phase)
	{
		this.handle.Advance(phase);
	}
	
	public double ZValue()
	{
		return this.handle.ZValue();
	}
	
	public void SetZValue(double z)
	{
		this.handle.SetZValue(z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		this.handle.StackBefore(sibling);
	}
	
	public void ChildrenBoundingRect()
	{
		this.handle.ChildrenBoundingRect();
	}
	
	public void SceneBoundingRect()
	{
		this.handle.SceneBoundingRect();
	}
	
	public bool IsClipped()
	{
		return this.handle.IsClipped();
	}
	
	public void ClipPath()
	{
		this.handle.ClipPath();
	}
	
	public virtual bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return this.handle.CollidesWithItem(other, mode);
	}
	
	public virtual bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return this.handle.CollidesWithPath(path, mode);
	}
	
	public void*[] CollidingItems()
	{
		return this.handle.CollidingItems();
	}
	
	public bool IsObscured()
	{
		return this.handle.IsObscured();
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return this.handle.IsObscured2(x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		this.handle.BoundingRegion(itemToDeviceTransform);
	}
	
	public double BoundingRegionGranularity()
	{
		return this.handle.BoundingRegionGranularity();
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		this.handle.SetBoundingRegionGranularity(granularity);
	}
	
	public void Update()
	{
		this.handle.Update();
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		this.handle.Update2(x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		this.handle.Scroll(dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapToItem(item, point);
	}
	
	public void MapToParent(IQPointF point)
	{
		this.handle.MapToParent(point);
	}
	
	public void MapToScene(IQPointF point)
	{
		this.handle.MapToScene(point);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectToItem(item, rect);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		this.handle.MapRectToParent(rect);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		this.handle.MapRectToScene(rect);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapToItem4(item, path);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		this.handle.MapToParentWithPath(path);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		this.handle.MapToSceneWithPath(path);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapFromItem(item, point);
	}
	
	public void MapFromParent(IQPointF point)
	{
		this.handle.MapFromParent(point);
	}
	
	public void MapFromScene(IQPointF point)
	{
		this.handle.MapFromScene(point);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectFromItem(item, rect);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		this.handle.MapRectFromParent(rect);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		this.handle.MapRectFromScene(rect);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapFromItem4(item, path);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		this.handle.MapFromParentWithPath(path);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		this.handle.MapFromSceneWithPath(path);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapToItem5(item, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		this.handle.MapToParent2(x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		this.handle.MapToScene2(x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectToItem2(item, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectToParent2(x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectToScene2(x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapFromItem5(item, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		this.handle.MapFromParent2(x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		this.handle.MapFromScene2(x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectFromItem2(item, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromParent2(x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromScene2(x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return this.handle.CommonAncestorItem(other);
	}
	
	public bool IsUnderMouse()
	{
		return this.handle.IsUnderMouse();
	}
	
	public void Data(int32 key)
	{
		this.handle.Data(key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		this.handle.SetData(key, value);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.InstallSceneEventFilter(filterItem);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.RemoveSceneEventFilter(filterItem);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		this.handle.SetFlag2(flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		this.handle.SetCacheMode2(mode, cacheSize);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		this.handle.SetFocus1(focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		this.handle.EnsureVisible1(rect);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		this.handle.EnsureVisible22(rect, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible3(rect, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		this.handle.EnsureVisible5(x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible6(x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		this.handle.ItemTransform2(other, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		this.handle.SetTransform2(matrix, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return this.handle.CollidingItems1(mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return this.handle.IsObscured1(rect);
	}
	
	public void Update1(IQRectF rect)
	{
		this.handle.Update1(rect);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		this.handle.Scroll3(dx, dy, rect);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsPixmapItem_new")]
	public static extern void* QGraphicsPixmapItem_new();
	[LinkName("QGraphicsPixmapItem_new2")]
	public static extern void* QGraphicsPixmapItem_new2(void* pixmap);
	[LinkName("QGraphicsPixmapItem_new3")]
	public static extern void* QGraphicsPixmapItem_new3(void* parent);
	[LinkName("QGraphicsPixmapItem_new4")]
	public static extern void* QGraphicsPixmapItem_new4(void* pixmap, void* parent);
	[LinkName("QGraphicsPixmapItem_Pixmap")]
	public static extern void QGraphicsPixmapItem_Pixmap(void* c_this);
	[LinkName("QGraphicsPixmapItem_SetPixmap")]
	public static extern void QGraphicsPixmapItem_SetPixmap(void* c_this, void* pixmap);
	[LinkName("QGraphicsPixmapItem_TransformationMode")]
	public static extern int64 QGraphicsPixmapItem_TransformationMode(void* c_this);
	[LinkName("QGraphicsPixmapItem_SetTransformationMode")]
	public static extern void QGraphicsPixmapItem_SetTransformationMode(void* c_this, int64 mode);
	[LinkName("QGraphicsPixmapItem_Offset")]
	public static extern void QGraphicsPixmapItem_Offset(void* c_this);
	[LinkName("QGraphicsPixmapItem_SetOffset")]
	public static extern void QGraphicsPixmapItem_SetOffset(void* c_this, void* offset);
	[LinkName("QGraphicsPixmapItem_SetOffset2")]
	public static extern void QGraphicsPixmapItem_SetOffset2(void* c_this, double x, double y);
	[LinkName("QGraphicsPixmapItem_BoundingRect")]
	public static extern void QGraphicsPixmapItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsPixmapItem_Shape")]
	public static extern void QGraphicsPixmapItem_Shape(void* c_this);
	[LinkName("QGraphicsPixmapItem_Contains")]
	public static extern bool QGraphicsPixmapItem_Contains(void* c_this, void* point);
	[LinkName("QGraphicsPixmapItem_Paint")]
	public static extern void QGraphicsPixmapItem_Paint(void* c_this, void* painter, void* option, void* widget);
	[LinkName("QGraphicsPixmapItem_IsObscuredBy")]
	public static extern bool QGraphicsPixmapItem_IsObscuredBy(void* c_this, void* item);
	[LinkName("QGraphicsPixmapItem_OpaqueArea")]
	public static extern void QGraphicsPixmapItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsPixmapItem_Type")]
	public static extern int32 QGraphicsPixmapItem_Type(void* c_this);
	[LinkName("QGraphicsPixmapItem_ShapeMode")]
	public static extern int64 QGraphicsPixmapItem_ShapeMode(void* c_this);
	[LinkName("QGraphicsPixmapItem_SetShapeMode")]
	public static extern void QGraphicsPixmapItem_SetShapeMode(void* c_this, int64 mode);
	[LinkName("QGraphicsPixmapItem_SupportsExtension")]
	public static extern bool QGraphicsPixmapItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsPixmapItem_SetExtension")]
	public static extern void QGraphicsPixmapItem_SetExtension(void* c_this, int64 _extension, void* variant);
	[LinkName("QGraphicsPixmapItem_Extension")]
	public static extern void QGraphicsPixmapItem_Extension(void* c_this, void* variant);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsPixmapItem_Delete")]
	public static extern void QGraphicsPixmapItem_Delete(void* self);
}
public interface IQGraphicsTextItem
{
	void* NativePtr { get; }
}
public struct QGraphicsTextItemPtr : IQGraphicsTextItem, IDisposable, IQGraphicsObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsTextItem_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsTextItem_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QGraphicsTextItem_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QGraphicsTextItem_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QGraphicsTextItem_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QGraphicsTextItem_Tr(s);
	}
	
	public libqt_string ToHtml()
	{
		return CQt.QGraphicsTextItem_ToHtml(this.nativePtr);
	}
	
	public void SetHtml(String html)
	{
		CQt.QGraphicsTextItem_SetHtml(this.nativePtr, libqt_string(html));
	}
	
	public libqt_string ToPlainText()
	{
		return CQt.QGraphicsTextItem_ToPlainText(this.nativePtr);
	}
	
	public void SetPlainText(String text)
	{
		CQt.QGraphicsTextItem_SetPlainText(this.nativePtr, libqt_string(text));
	}
	
	public void Font()
	{
		CQt.QGraphicsTextItem_Font(this.nativePtr);
	}
	
	public void SetFont(IQFont font)
	{
		CQt.QGraphicsTextItem_SetFont(this.nativePtr, (font == default || font.NativePtr == default) ? default : font.NativePtr);
	}
	
	public void SetDefaultTextColor(IQColor c)
	{
		CQt.QGraphicsTextItem_SetDefaultTextColor(this.nativePtr, (c == default || c.NativePtr == default) ? default : c.NativePtr);
	}
	
	public void DefaultTextColor()
	{
		CQt.QGraphicsTextItem_DefaultTextColor(this.nativePtr);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsTextItem_BoundingRect(this.nativePtr);
	}
	
	public void Shape()
	{
		CQt.QGraphicsTextItem_Shape(this.nativePtr);
	}
	
	public bool Contains(IQPointF point)
	{
		return CQt.QGraphicsTextItem_Contains(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		CQt.QGraphicsTextItem_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public bool IsObscuredBy(IQGraphicsItem item)
	{
		return CQt.QGraphicsTextItem_IsObscuredBy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void OpaqueArea()
	{
		CQt.QGraphicsTextItem_OpaqueArea(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QGraphicsTextItem_Type(this.nativePtr);
	}
	
	public void SetTextWidth(double width)
	{
		CQt.QGraphicsTextItem_SetTextWidth(this.nativePtr, width);
	}
	
	public double TextWidth()
	{
		return CQt.QGraphicsTextItem_TextWidth(this.nativePtr);
	}
	
	public void AdjustSize()
	{
		CQt.QGraphicsTextItem_AdjustSize(this.nativePtr);
	}
	
	public void SetDocument(IQTextDocument document)
	{
		CQt.QGraphicsTextItem_SetDocument(this.nativePtr, (document == default || document.NativePtr == default) ? default : document.NativePtr);
	}
	
	public void* Document()
	{
		return CQt.QGraphicsTextItem_Document(this.nativePtr);
	}
	
	public void SetTextInteractionFlags(int64 flags)
	{
		CQt.QGraphicsTextItem_SetTextInteractionFlags(this.nativePtr, flags);
	}
	
	public int64 TextInteractionFlags()
	{
		return CQt.QGraphicsTextItem_TextInteractionFlags(this.nativePtr);
	}
	
	public void SetTabChangesFocus(bool b)
	{
		CQt.QGraphicsTextItem_SetTabChangesFocus(this.nativePtr, b);
	}
	
	public bool TabChangesFocus()
	{
		return CQt.QGraphicsTextItem_TabChangesFocus(this.nativePtr);
	}
	
	public void SetOpenExternalLinks(bool open)
	{
		CQt.QGraphicsTextItem_SetOpenExternalLinks(this.nativePtr, open);
	}
	
	public bool OpenExternalLinks()
	{
		return CQt.QGraphicsTextItem_OpenExternalLinks(this.nativePtr);
	}
	
	public void SetTextCursor(IQTextCursor cursor)
	{
		CQt.QGraphicsTextItem_SetTextCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
	}
	
	public void TextCursor()
	{
		CQt.QGraphicsTextItem_TextCursor(this.nativePtr);
	}
	
	public bool SceneEvent(IQEvent event)
	{
		return CQt.QGraphicsTextItem_SceneEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void MousePressEvent(IQGraphicsSceneMouseEvent event)
	{
		CQt.QGraphicsTextItem_MousePressEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void MouseMoveEvent(IQGraphicsSceneMouseEvent event)
	{
		CQt.QGraphicsTextItem_MouseMoveEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void MouseReleaseEvent(IQGraphicsSceneMouseEvent event)
	{
		CQt.QGraphicsTextItem_MouseReleaseEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void MouseDoubleClickEvent(IQGraphicsSceneMouseEvent event)
	{
		CQt.QGraphicsTextItem_MouseDoubleClickEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void ContextMenuEvent(IQGraphicsSceneContextMenuEvent event)
	{
		CQt.QGraphicsTextItem_ContextMenuEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void KeyPressEvent(IQKeyEvent event)
	{
		CQt.QGraphicsTextItem_KeyPressEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void KeyReleaseEvent(IQKeyEvent event)
	{
		CQt.QGraphicsTextItem_KeyReleaseEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void FocusInEvent(IQFocusEvent event)
	{
		CQt.QGraphicsTextItem_FocusInEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void FocusOutEvent(IQFocusEvent event)
	{
		CQt.QGraphicsTextItem_FocusOutEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DragEnterEvent(IQGraphicsSceneDragDropEvent event)
	{
		CQt.QGraphicsTextItem_DragEnterEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DragLeaveEvent(IQGraphicsSceneDragDropEvent event)
	{
		CQt.QGraphicsTextItem_DragLeaveEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DragMoveEvent(IQGraphicsSceneDragDropEvent event)
	{
		CQt.QGraphicsTextItem_DragMoveEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DropEvent(IQGraphicsSceneDragDropEvent event)
	{
		CQt.QGraphicsTextItem_DropEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void InputMethodEvent(IQInputMethodEvent event)
	{
		CQt.QGraphicsTextItem_InputMethodEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void HoverEnterEvent(IQGraphicsSceneHoverEvent event)
	{
		CQt.QGraphicsTextItem_HoverEnterEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void HoverMoveEvent(IQGraphicsSceneHoverEvent event)
	{
		CQt.QGraphicsTextItem_HoverMoveEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void HoverLeaveEvent(IQGraphicsSceneHoverEvent event)
	{
		CQt.QGraphicsTextItem_HoverLeaveEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void InputMethodQuery(int64 query)
	{
		CQt.QGraphicsTextItem_InputMethodQuery(this.nativePtr, (int64)query);
	}
	
	public bool SupportsExtension(int64 _extension)
	{
		return CQt.QGraphicsTextItem_SupportsExtension(this.nativePtr, (int64)_extension);
	}
	
	public void SetExtension(int64 _extension, IQVariant variant)
	{
		CQt.QGraphicsTextItem_SetExtension(this.nativePtr, (int64)_extension, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void Extension(IQVariant variant)
	{
		CQt.QGraphicsTextItem_Extension(this.nativePtr, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QGraphicsTextItem_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QGraphicsTextItem_Tr3(s, c, n);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QGraphicsObject_GrabGesture(this.nativePtr, (int64)typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QGraphicsObject_UngrabGesture(this.nativePtr, (int64)typeVal);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QGraphicsObject_GrabGesture2(this.nativePtr, (int64)typeVal, flags);
	}
	
	public bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(char8* name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (member == default || member.NativePtr == default) ? default : member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Property(char8* name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8* classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, (int64)timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr, (int64)typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member, (int64)typeVal);
	}
	
	public void* Scene()
	{
		return CQt.QGraphicsItem_Scene(this.nativePtr);
	}
	
	public void* ParentItem()
	{
		return CQt.QGraphicsItem_ParentItem(this.nativePtr);
	}
	
	public void* TopLevelItem()
	{
		return CQt.QGraphicsItem_TopLevelItem(this.nativePtr);
	}
	
	public void* ParentObject()
	{
		return CQt.QGraphicsItem_ParentObject(this.nativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QGraphicsItem_ParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QGraphicsItem_TopLevelWidget(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QGraphicsItem_Window(this.nativePtr);
	}
	
	public void* Panel()
	{
		return CQt.QGraphicsItem_Panel(this.nativePtr);
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		CQt.QGraphicsItem_SetParentItem(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void*[] ChildItems()
	{
		return CQt.QGraphicsItem_ChildItems(this.nativePtr);
	}
	
	public bool IsWidget()
	{
		return CQt.QGraphicsItem_IsWidget(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QGraphicsItem_IsWindow(this.nativePtr);
	}
	
	public bool IsPanel()
	{
		return CQt.QGraphicsItem_IsPanel(this.nativePtr);
	}
	
	public void* ToGraphicsObject()
	{
		return CQt.QGraphicsItem_ToGraphicsObject(this.nativePtr);
	}
	
	public void* ToGraphicsObject2()
	{
		return CQt.QGraphicsItem_ToGraphicsObject2(this.nativePtr);
	}
	
	public void* Group()
	{
		return CQt.QGraphicsItem_Group(this.nativePtr);
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		CQt.QGraphicsItem_SetGroup(this.nativePtr, (group == default || group.NativePtr == default) ? default : group.NativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QGraphicsItem_Flags(this.nativePtr);
	}
	
	public void SetFlag(int64 flag)
	{
		CQt.QGraphicsItem_SetFlag(this.nativePtr, (int64)flag);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QGraphicsItem_SetFlags(this.nativePtr, flags);
	}
	
	public int64 CacheMode()
	{
		return CQt.QGraphicsItem_CacheMode(this.nativePtr);
	}
	
	public void SetCacheMode(int64 mode)
	{
		CQt.QGraphicsItem_SetCacheMode(this.nativePtr, (int64)mode);
	}
	
	public int64 PanelModality()
	{
		return CQt.QGraphicsItem_PanelModality(this.nativePtr);
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		CQt.QGraphicsItem_SetPanelModality(this.nativePtr, (int64)panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return CQt.QGraphicsItem_IsBlockedByModalPanel(this.nativePtr);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QGraphicsItem_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QGraphicsItem_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public void Cursor()
	{
		CQt.QGraphicsItem_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QGraphicsItem_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
	}
	
	public bool HasCursor()
	{
		return CQt.QGraphicsItem_HasCursor(this.nativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QGraphicsItem_UnsetCursor(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QGraphicsItem_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return CQt.QGraphicsItem_IsVisibleTo(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QGraphicsItem_SetVisible(this.nativePtr, visible);
	}
	
	public void Hide()
	{
		CQt.QGraphicsItem_Hide(this.nativePtr);
	}
	
	public void Show()
	{
		CQt.QGraphicsItem_Show(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsItem_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QGraphicsItem_SetEnabled(this.nativePtr, enabled);
	}
	
	public bool IsSelected()
	{
		return CQt.QGraphicsItem_IsSelected(this.nativePtr);
	}
	
	public void SetSelected(bool selected)
	{
		CQt.QGraphicsItem_SetSelected(this.nativePtr, selected);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QGraphicsItem_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QGraphicsItem_SetAcceptDrops(this.nativePtr, on);
	}
	
	public double Opacity()
	{
		return CQt.QGraphicsItem_Opacity(this.nativePtr);
	}
	
	public double EffectiveOpacity()
	{
		return CQt.QGraphicsItem_EffectiveOpacity(this.nativePtr);
	}
	
	public void SetOpacity(double opacity)
	{
		CQt.QGraphicsItem_SetOpacity(this.nativePtr, opacity);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QGraphicsItem_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QGraphicsItem_SetGraphicsEffect(this.nativePtr, (effect == default || effect.NativePtr == default) ? default : effect.NativePtr);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return CQt.QGraphicsItem_AcceptedMouseButtons(this.nativePtr);
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		CQt.QGraphicsItem_SetAcceptedMouseButtons(this.nativePtr, buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return CQt.QGraphicsItem_AcceptHoverEvents(this.nativePtr);
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptHoverEvents(this.nativePtr, enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return CQt.QGraphicsItem_AcceptTouchEvents(this.nativePtr);
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptTouchEvents(this.nativePtr, enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return CQt.QGraphicsItem_FiltersChildEvents(this.nativePtr);
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetFiltersChildEvents(this.nativePtr, enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return CQt.QGraphicsItem_HandlesChildEvents(this.nativePtr);
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetHandlesChildEvents(this.nativePtr, enabled);
	}
	
	public bool IsActive()
	{
		return CQt.QGraphicsItem_IsActive(this.nativePtr);
	}
	
	public void SetActive(bool active)
	{
		CQt.QGraphicsItem_SetActive(this.nativePtr, active);
	}
	
	public bool HasFocus()
	{
		return CQt.QGraphicsItem_HasFocus(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QGraphicsItem_SetFocus(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QGraphicsItem_ClearFocus(this.nativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QGraphicsItem_FocusProxy(this.nativePtr);
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		CQt.QGraphicsItem_SetFocusProxy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* FocusItem()
	{
		return CQt.QGraphicsItem_FocusItem(this.nativePtr);
	}
	
	public void* FocusScopeItem()
	{
		return CQt.QGraphicsItem_FocusScopeItem(this.nativePtr);
	}
	
	public void GrabMouse()
	{
		CQt.QGraphicsItem_GrabMouse(this.nativePtr);
	}
	
	public void UngrabMouse()
	{
		CQt.QGraphicsItem_UngrabMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QGraphicsItem_GrabKeyboard(this.nativePtr);
	}
	
	public void UngrabKeyboard()
	{
		CQt.QGraphicsItem_UngrabKeyboard(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsItem_Pos(this.nativePtr);
	}
	
	public double X()
	{
		return CQt.QGraphicsItem_X(this.nativePtr);
	}
	
	public void SetX(double x)
	{
		CQt.QGraphicsItem_SetX(this.nativePtr, x);
	}
	
	public double Y()
	{
		return CQt.QGraphicsItem_Y(this.nativePtr);
	}
	
	public void SetY(double y)
	{
		CQt.QGraphicsItem_SetY(this.nativePtr, y);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsItem_ScenePos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsItem_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void SetPos2(double x, double y)
	{
		CQt.QGraphicsItem_SetPos2(this.nativePtr, x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		CQt.QGraphicsItem_MoveBy(this.nativePtr, dx, dy);
	}
	
	public void EnsureVisible()
	{
		CQt.QGraphicsItem_EnsureVisible(this.nativePtr);
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_EnsureVisible2(this.nativePtr, x, y, w, h);
	}
	
	public void Transform()
	{
		CQt.QGraphicsItem_Transform(this.nativePtr);
	}
	
	public void SceneTransform()
	{
		CQt.QGraphicsItem_SceneTransform(this.nativePtr);
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		CQt.QGraphicsItem_DeviceTransform(this.nativePtr, (viewportTransform == default || viewportTransform.NativePtr == default) ? default : viewportTransform.NativePtr);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		CQt.QGraphicsItem_ItemTransform(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		CQt.QGraphicsItem_SetTransform(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public void ResetTransform()
	{
		CQt.QGraphicsItem_ResetTransform(this.nativePtr);
	}
	
	public void SetRotation(double angle)
	{
		CQt.QGraphicsItem_SetRotation(this.nativePtr, angle);
	}
	
	public double Rotation()
	{
		return CQt.QGraphicsItem_Rotation(this.nativePtr);
	}
	
	public void SetScale(double scale)
	{
		CQt.QGraphicsItem_SetScale(this.nativePtr, scale);
	}
	
	public double Scale()
	{
		return CQt.QGraphicsItem_Scale(this.nativePtr);
	}
	
	public void*[] Transformations()
	{
		return CQt.QGraphicsItem_Transformations(this.nativePtr);
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		CQt.QGraphicsItem_SetTransformations(this.nativePtr, null);
	}
	
	public void TransformOriginPoint()
	{
		CQt.QGraphicsItem_TransformOriginPoint(this.nativePtr);
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint(this.nativePtr, (origin == default || origin.NativePtr == default) ? default : origin.NativePtr);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint2(this.nativePtr, ax, ay);
	}
	
	public void Advance(int32 phase)
	{
		CQt.QGraphicsItem_Advance(this.nativePtr, phase);
	}
	
	public double ZValue()
	{
		return CQt.QGraphicsItem_ZValue(this.nativePtr);
	}
	
	public void SetZValue(double z)
	{
		CQt.QGraphicsItem_SetZValue(this.nativePtr, z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		CQt.QGraphicsItem_StackBefore(this.nativePtr, (sibling == default || sibling.NativePtr == default) ? default : sibling.NativePtr);
	}
	
	public void ChildrenBoundingRect()
	{
		CQt.QGraphicsItem_ChildrenBoundingRect(this.nativePtr);
	}
	
	public void SceneBoundingRect()
	{
		CQt.QGraphicsItem_SceneBoundingRect(this.nativePtr);
	}
	
	public bool IsClipped()
	{
		return CQt.QGraphicsItem_IsClipped(this.nativePtr);
	}
	
	public void ClipPath()
	{
		CQt.QGraphicsItem_ClipPath(this.nativePtr);
	}
	
	public bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, (int64)mode);
	}
	
	public bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode);
	}
	
	public void*[] CollidingItems()
	{
		return CQt.QGraphicsItem_CollidingItems(this.nativePtr);
	}
	
	public bool IsObscured()
	{
		return CQt.QGraphicsItem_IsObscured(this.nativePtr);
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return CQt.QGraphicsItem_IsObscured2(this.nativePtr, x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		CQt.QGraphicsItem_BoundingRegion(this.nativePtr, (itemToDeviceTransform == default || itemToDeviceTransform.NativePtr == default) ? default : itemToDeviceTransform.NativePtr);
	}
	
	public double BoundingRegionGranularity()
	{
		return CQt.QGraphicsItem_BoundingRegionGranularity(this.nativePtr);
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		CQt.QGraphicsItem_SetBoundingRegionGranularity(this.nativePtr, granularity);
	}
	
	public void Update()
	{
		CQt.QGraphicsItem_Update(this.nativePtr);
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		CQt.QGraphicsItem_Update2(this.nativePtr, x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		CQt.QGraphicsItem_Scroll(this.nativePtr, dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapToParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapToScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapToItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapToParent2(this.nativePtr, x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapToScene2(this.nativePtr, x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToScene2(this.nativePtr, x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapFromItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromParent2(this.nativePtr, x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromScene2(this.nativePtr, x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromScene2(this.nativePtr, x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return CQt.QGraphicsItem_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return CQt.QGraphicsItem_CommonAncestorItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsUnderMouse()
	{
		return CQt.QGraphicsItem_IsUnderMouse(this.nativePtr);
	}
	
	public void Data(int32 key)
	{
		CQt.QGraphicsItem_Data(this.nativePtr, key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		CQt.QGraphicsItem_SetData(this.nativePtr, key, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QGraphicsItem_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QGraphicsItem_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_InstallSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_RemoveSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsItem_SetFlag2(this.nativePtr, (int64)flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		CQt.QGraphicsItem_SetCacheMode2(this.nativePtr, (int64)mode, (cacheSize == default || cacheSize.NativePtr == default) ? default : cacheSize.NativePtr);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsItem_SetFocus1(this.nativePtr, (int64)focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		CQt.QGraphicsItem_EnsureVisible1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible5(this.nativePtr, x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible6(this.nativePtr, x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		CQt.QGraphicsItem_ItemTransform2(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		CQt.QGraphicsItem_SetTransform2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return CQt.QGraphicsItem_CollidingItems1(this.nativePtr, (int64)mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return CQt.QGraphicsItem_IsObscured1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Update1(IQRectF rect)
	{
		CQt.QGraphicsItem_Update1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		CQt.QGraphicsItem_Scroll3(this.nativePtr, dx, dy, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
}
public class QGraphicsTextItem
{
	public QGraphicsTextItemPtr handle;
	
	public static implicit operator QGraphicsTextItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsTextItemPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* MetaObject()
	{
		return this.handle.MetaObject();
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return this.handle.Metacast(param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return this.handle.Metacall(param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return QGraphicsTextItemPtr.Tr(s);
	}
	
	public libqt_string ToHtml()
	{
		return this.handle.ToHtml();
	}
	
	public void SetHtml(String html)
	{
		this.handle.SetHtml(html);
	}
	
	public libqt_string ToPlainText()
	{
		return this.handle.ToPlainText();
	}
	
	public void SetPlainText(String text)
	{
		this.handle.SetPlainText(text);
	}
	
	public void Font()
	{
		this.handle.Font();
	}
	
	public void SetFont(IQFont font)
	{
		this.handle.SetFont(font);
	}
	
	public void SetDefaultTextColor(IQColor c)
	{
		this.handle.SetDefaultTextColor(c);
	}
	
	public void DefaultTextColor()
	{
		this.handle.DefaultTextColor();
	}
	
	public virtual void BoundingRect()
	{
		this.handle.BoundingRect();
	}
	
	public virtual void Shape()
	{
		this.handle.Shape();
	}
	
	public virtual bool Contains(IQPointF point)
	{
		return this.handle.Contains(point);
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		this.handle.Paint(painter, option, widget);
	}
	
	public virtual bool IsObscuredBy(IQGraphicsItem item)
	{
		return this.handle.IsObscuredBy(item);
	}
	
	public virtual void OpaqueArea()
	{
		this.handle.OpaqueArea();
	}
	
	public virtual int32 Type()
	{
		return this.handle.Type();
	}
	
	public void SetTextWidth(double width)
	{
		this.handle.SetTextWidth(width);
	}
	
	public double TextWidth()
	{
		return this.handle.TextWidth();
	}
	
	public void AdjustSize()
	{
		this.handle.AdjustSize();
	}
	
	public void SetDocument(IQTextDocument document)
	{
		this.handle.SetDocument(document);
	}
	
	public void* Document()
	{
		return this.handle.Document();
	}
	
	public void SetTextInteractionFlags(int64 flags)
	{
		this.handle.SetTextInteractionFlags(flags);
	}
	
	public int64 TextInteractionFlags()
	{
		return this.handle.TextInteractionFlags();
	}
	
	public void SetTabChangesFocus(bool b)
	{
		this.handle.SetTabChangesFocus(b);
	}
	
	public bool TabChangesFocus()
	{
		return this.handle.TabChangesFocus();
	}
	
	public void SetOpenExternalLinks(bool open)
	{
		this.handle.SetOpenExternalLinks(open);
	}
	
	public bool OpenExternalLinks()
	{
		return this.handle.OpenExternalLinks();
	}
	
	public void SetTextCursor(IQTextCursor cursor)
	{
		this.handle.SetTextCursor(cursor);
	}
	
	public void TextCursor()
	{
		this.handle.TextCursor();
	}
	
	public virtual bool SceneEvent(IQEvent event)
	{
		return this.handle.SceneEvent(event);
	}
	
	public virtual void MousePressEvent(IQGraphicsSceneMouseEvent event)
	{
		this.handle.MousePressEvent(event);
	}
	
	public virtual void MouseMoveEvent(IQGraphicsSceneMouseEvent event)
	{
		this.handle.MouseMoveEvent(event);
	}
	
	public virtual void MouseReleaseEvent(IQGraphicsSceneMouseEvent event)
	{
		this.handle.MouseReleaseEvent(event);
	}
	
	public virtual void MouseDoubleClickEvent(IQGraphicsSceneMouseEvent event)
	{
		this.handle.MouseDoubleClickEvent(event);
	}
	
	public virtual void ContextMenuEvent(IQGraphicsSceneContextMenuEvent event)
	{
		this.handle.ContextMenuEvent(event);
	}
	
	public virtual void KeyPressEvent(IQKeyEvent event)
	{
		this.handle.KeyPressEvent(event);
	}
	
	public virtual void KeyReleaseEvent(IQKeyEvent event)
	{
		this.handle.KeyReleaseEvent(event);
	}
	
	public virtual void FocusInEvent(IQFocusEvent event)
	{
		this.handle.FocusInEvent(event);
	}
	
	public virtual void FocusOutEvent(IQFocusEvent event)
	{
		this.handle.FocusOutEvent(event);
	}
	
	public virtual void DragEnterEvent(IQGraphicsSceneDragDropEvent event)
	{
		this.handle.DragEnterEvent(event);
	}
	
	public virtual void DragLeaveEvent(IQGraphicsSceneDragDropEvent event)
	{
		this.handle.DragLeaveEvent(event);
	}
	
	public virtual void DragMoveEvent(IQGraphicsSceneDragDropEvent event)
	{
		this.handle.DragMoveEvent(event);
	}
	
	public virtual void DropEvent(IQGraphicsSceneDragDropEvent event)
	{
		this.handle.DropEvent(event);
	}
	
	public virtual void InputMethodEvent(IQInputMethodEvent event)
	{
		this.handle.InputMethodEvent(event);
	}
	
	public virtual void HoverEnterEvent(IQGraphicsSceneHoverEvent event)
	{
		this.handle.HoverEnterEvent(event);
	}
	
	public virtual void HoverMoveEvent(IQGraphicsSceneHoverEvent event)
	{
		this.handle.HoverMoveEvent(event);
	}
	
	public virtual void HoverLeaveEvent(IQGraphicsSceneHoverEvent event)
	{
		this.handle.HoverLeaveEvent(event);
	}
	
	public virtual void InputMethodQuery(int64 query)
	{
		this.handle.InputMethodQuery(query);
	}
	
	public virtual bool SupportsExtension(int64 _extension)
	{
		return this.handle.SupportsExtension(_extension);
	}
	
	public virtual void SetExtension(int64 _extension, IQVariant variant)
	{
		this.handle.SetExtension(_extension, variant);
	}
	
	public virtual void Extension(IQVariant variant)
	{
		this.handle.Extension(variant);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QGraphicsTextItemPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QGraphicsTextItemPtr.Tr3(s, c, n);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		this.handle.GrabGesture(typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		this.handle.UngrabGesture(typeVal);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		this.handle.GrabGesture2(typeVal, flags);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return this.handle.EventFilter(watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return this.handle.ObjectName();
	}
	
	public void SetObjectName(char8* name)
	{
		this.handle.SetObjectName(name);
	}
	
	public bool IsWidgetType()
	{
		return this.handle.IsWidgetType();
	}
	
	public bool IsWindowType()
	{
		return this.handle.IsWindowType();
	}
	
	public bool IsQuickItemType()
	{
		return this.handle.IsQuickItemType();
	}
	
	public bool SignalsBlocked()
	{
		return this.handle.SignalsBlocked();
	}
	
	public bool BlockSignals(bool b)
	{
		return this.handle.BlockSignals(b);
	}
	
	public void* Thread()
	{
		return this.handle.Thread();
	}
	
	public void MoveToThread(IQThread thread)
	{
		this.handle.MoveToThread(thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return this.handle.StartTimer(interval);
	}
	
	public void KillTimer(int32 id)
	{
		this.handle.KillTimer(id);
	}
	
	public void*[] Children()
	{
		return this.handle.Children();
	}
	
	public void SetParent(IQObject parent)
	{
		this.handle.SetParent(parent);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		this.handle.InstallEventFilter(filterObj);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		this.handle.RemoveEventFilter(obj);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		QGraphicsTextItemPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QGraphicsTextItemPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QGraphicsTextItemPtr.DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		this.handle.DumpObjectTree();
	}
	
	public void DumpObjectInfo()
	{
		this.handle.DumpObjectInfo();
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return this.handle.SetProperty(name, value);
	}
	
	public void Property(char8* name)
	{
		this.handle.Property(name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return this.handle.DynamicPropertyNames();
	}
	
	public void* BindingStorage()
	{
		return this.handle.BindingStorage();
	}
	
	public void* BindingStorage2()
	{
		return this.handle.BindingStorage2();
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public bool Inherits(char8* classname)
	{
		return this.handle.Inherits(classname);
	}
	
	public void DeleteLater()
	{
		this.handle.DeleteLater();
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return this.handle.StartTimer2(interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		QGraphicsTextItemPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
	public void* Scene()
	{
		return this.handle.Scene();
	}
	
	public void* ParentItem()
	{
		return this.handle.ParentItem();
	}
	
	public void* TopLevelItem()
	{
		return this.handle.TopLevelItem();
	}
	
	public void* ParentObject()
	{
		return this.handle.ParentObject();
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public void* TopLevelWidget()
	{
		return this.handle.TopLevelWidget();
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* Panel()
	{
		return this.handle.Panel();
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		this.handle.SetParentItem(parent);
	}
	
	public void*[] ChildItems()
	{
		return this.handle.ChildItems();
	}
	
	public bool IsWidget()
	{
		return this.handle.IsWidget();
	}
	
	public bool IsWindow()
	{
		return this.handle.IsWindow();
	}
	
	public bool IsPanel()
	{
		return this.handle.IsPanel();
	}
	
	public void* ToGraphicsObject()
	{
		return this.handle.ToGraphicsObject();
	}
	
	public void* ToGraphicsObject2()
	{
		return this.handle.ToGraphicsObject2();
	}
	
	public void* Group()
	{
		return this.handle.Group();
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		this.handle.SetGroup(group);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlag(int64 flag)
	{
		this.handle.SetFlag(flag);
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int64 CacheMode()
	{
		return this.handle.CacheMode();
	}
	
	public void SetCacheMode(int64 mode)
	{
		this.handle.SetCacheMode(mode);
	}
	
	public int64 PanelModality()
	{
		return this.handle.PanelModality();
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		this.handle.SetPanelModality(panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return this.handle.IsBlockedByModalPanel();
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public bool HasCursor()
	{
		return this.handle.HasCursor();
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return this.handle.IsVisibleTo(parent);
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public bool IsSelected()
	{
		return this.handle.IsSelected();
	}
	
	public void SetSelected(bool selected)
	{
		this.handle.SetSelected(selected);
	}
	
	public bool AcceptDrops()
	{
		return this.handle.AcceptDrops();
	}
	
	public void SetAcceptDrops(bool on)
	{
		this.handle.SetAcceptDrops(on);
	}
	
	public double Opacity()
	{
		return this.handle.Opacity();
	}
	
	public double EffectiveOpacity()
	{
		return this.handle.EffectiveOpacity();
	}
	
	public void SetOpacity(double opacity)
	{
		this.handle.SetOpacity(opacity);
	}
	
	public void* GraphicsEffect()
	{
		return this.handle.GraphicsEffect();
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		this.handle.SetGraphicsEffect(effect);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return this.handle.AcceptedMouseButtons();
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		this.handle.SetAcceptedMouseButtons(buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return this.handle.AcceptHoverEvents();
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		this.handle.SetAcceptHoverEvents(enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return this.handle.AcceptTouchEvents();
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		this.handle.SetAcceptTouchEvents(enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return this.handle.FiltersChildEvents();
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		this.handle.SetFiltersChildEvents(enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return this.handle.HandlesChildEvents();
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		this.handle.SetHandlesChildEvents(enabled);
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void SetActive(bool active)
	{
		this.handle.SetActive(active);
	}
	
	public bool HasFocus()
	{
		return this.handle.HasFocus();
	}
	
	public void SetFocus()
	{
		this.handle.SetFocus();
	}
	
	public void ClearFocus()
	{
		this.handle.ClearFocus();
	}
	
	public void* FocusProxy()
	{
		return this.handle.FocusProxy();
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		this.handle.SetFocusProxy(item);
	}
	
	public void* FocusItem()
	{
		return this.handle.FocusItem();
	}
	
	public void* FocusScopeItem()
	{
		return this.handle.FocusScopeItem();
	}
	
	public void GrabMouse()
	{
		this.handle.GrabMouse();
	}
	
	public void UngrabMouse()
	{
		this.handle.UngrabMouse();
	}
	
	public void GrabKeyboard()
	{
		this.handle.GrabKeyboard();
	}
	
	public void UngrabKeyboard()
	{
		this.handle.UngrabKeyboard();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public double X()
	{
		return this.handle.X();
	}
	
	public void SetX(double x)
	{
		this.handle.SetX(x);
	}
	
	public double Y()
	{
		return this.handle.Y();
	}
	
	public void SetY(double y)
	{
		this.handle.SetY(y);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void SetPos2(double x, double y)
	{
		this.handle.SetPos2(x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		this.handle.MoveBy(dx, dy);
	}
	
	public void EnsureVisible()
	{
		this.handle.EnsureVisible();
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		this.handle.EnsureVisible2(x, y, w, h);
	}
	
	public void Transform()
	{
		this.handle.Transform();
	}
	
	public void SceneTransform()
	{
		this.handle.SceneTransform();
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		this.handle.DeviceTransform(viewportTransform);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		this.handle.ItemTransform(other);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		this.handle.SetTransform(matrix);
	}
	
	public void ResetTransform()
	{
		this.handle.ResetTransform();
	}
	
	public void SetRotation(double angle)
	{
		this.handle.SetRotation(angle);
	}
	
	public double Rotation()
	{
		return this.handle.Rotation();
	}
	
	public void SetScale(double scale)
	{
		this.handle.SetScale(scale);
	}
	
	public double Scale()
	{
		return this.handle.Scale();
	}
	
	public void*[] Transformations()
	{
		return this.handle.Transformations();
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		this.handle.SetTransformations(null);
	}
	
	public void TransformOriginPoint()
	{
		this.handle.TransformOriginPoint();
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		this.handle.SetTransformOriginPoint(origin);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		this.handle.SetTransformOriginPoint2(ax, ay);
	}
	
	public virtual void Advance(int32 phase)
	{
		this.handle.Advance(phase);
	}
	
	public double ZValue()
	{
		return this.handle.ZValue();
	}
	
	public void SetZValue(double z)
	{
		this.handle.SetZValue(z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		this.handle.StackBefore(sibling);
	}
	
	public void ChildrenBoundingRect()
	{
		this.handle.ChildrenBoundingRect();
	}
	
	public void SceneBoundingRect()
	{
		this.handle.SceneBoundingRect();
	}
	
	public bool IsClipped()
	{
		return this.handle.IsClipped();
	}
	
	public void ClipPath()
	{
		this.handle.ClipPath();
	}
	
	public virtual bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return this.handle.CollidesWithItem(other, mode);
	}
	
	public virtual bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return this.handle.CollidesWithPath(path, mode);
	}
	
	public void*[] CollidingItems()
	{
		return this.handle.CollidingItems();
	}
	
	public bool IsObscured()
	{
		return this.handle.IsObscured();
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return this.handle.IsObscured2(x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		this.handle.BoundingRegion(itemToDeviceTransform);
	}
	
	public double BoundingRegionGranularity()
	{
		return this.handle.BoundingRegionGranularity();
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		this.handle.SetBoundingRegionGranularity(granularity);
	}
	
	public void Update()
	{
		this.handle.Update();
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		this.handle.Update2(x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		this.handle.Scroll(dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapToItem(item, point);
	}
	
	public void MapToParent(IQPointF point)
	{
		this.handle.MapToParent(point);
	}
	
	public void MapToScene(IQPointF point)
	{
		this.handle.MapToScene(point);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectToItem(item, rect);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		this.handle.MapRectToParent(rect);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		this.handle.MapRectToScene(rect);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapToItem4(item, path);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		this.handle.MapToParentWithPath(path);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		this.handle.MapToSceneWithPath(path);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapFromItem(item, point);
	}
	
	public void MapFromParent(IQPointF point)
	{
		this.handle.MapFromParent(point);
	}
	
	public void MapFromScene(IQPointF point)
	{
		this.handle.MapFromScene(point);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectFromItem(item, rect);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		this.handle.MapRectFromParent(rect);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		this.handle.MapRectFromScene(rect);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapFromItem4(item, path);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		this.handle.MapFromParentWithPath(path);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		this.handle.MapFromSceneWithPath(path);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapToItem5(item, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		this.handle.MapToParent2(x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		this.handle.MapToScene2(x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectToItem2(item, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectToParent2(x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectToScene2(x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapFromItem5(item, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		this.handle.MapFromParent2(x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		this.handle.MapFromScene2(x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectFromItem2(item, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromParent2(x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromScene2(x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return this.handle.CommonAncestorItem(other);
	}
	
	public bool IsUnderMouse()
	{
		return this.handle.IsUnderMouse();
	}
	
	public void Data(int32 key)
	{
		this.handle.Data(key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		this.handle.SetData(key, value);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.InstallSceneEventFilter(filterItem);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.RemoveSceneEventFilter(filterItem);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		this.handle.SetFlag2(flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		this.handle.SetCacheMode2(mode, cacheSize);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		this.handle.SetFocus1(focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		this.handle.EnsureVisible1(rect);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		this.handle.EnsureVisible22(rect, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible3(rect, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		this.handle.EnsureVisible5(x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible6(x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		this.handle.ItemTransform2(other, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		this.handle.SetTransform2(matrix, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return this.handle.CollidingItems1(mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return this.handle.IsObscured1(rect);
	}
	
	public void Update1(IQRectF rect)
	{
		this.handle.Update1(rect);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		this.handle.Scroll3(dx, dy, rect);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsTextItem_new")]
	public static extern void* QGraphicsTextItem_new();
	[LinkName("QGraphicsTextItem_new2")]
	public static extern void* QGraphicsTextItem_new2(libqt_string text);
	[LinkName("QGraphicsTextItem_new3")]
	public static extern void* QGraphicsTextItem_new3(void* parent);
	[LinkName("QGraphicsTextItem_new4")]
	public static extern void* QGraphicsTextItem_new4(libqt_string text, void* parent);
	[LinkName("QGraphicsTextItem_MetaObject")]
	public static extern void* QGraphicsTextItem_MetaObject(void* c_this);
	[LinkName("QGraphicsTextItem_Metacast")]
	public static extern void* QGraphicsTextItem_Metacast(void* c_this, char8* param1);
	[LinkName("QGraphicsTextItem_Metacall")]
	public static extern int32 QGraphicsTextItem_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QGraphicsTextItem_Tr")]
	public static extern libqt_string QGraphicsTextItem_Tr(char8* s);
	[LinkName("QGraphicsTextItem_ToHtml")]
	public static extern libqt_string QGraphicsTextItem_ToHtml(void* c_this);
	[LinkName("QGraphicsTextItem_SetHtml")]
	public static extern void QGraphicsTextItem_SetHtml(void* c_this, libqt_string html);
	[LinkName("QGraphicsTextItem_ToPlainText")]
	public static extern libqt_string QGraphicsTextItem_ToPlainText(void* c_this);
	[LinkName("QGraphicsTextItem_SetPlainText")]
	public static extern void QGraphicsTextItem_SetPlainText(void* c_this, libqt_string text);
	[LinkName("QGraphicsTextItem_Font")]
	public static extern void QGraphicsTextItem_Font(void* c_this);
	[LinkName("QGraphicsTextItem_SetFont")]
	public static extern void QGraphicsTextItem_SetFont(void* c_this, void* font);
	[LinkName("QGraphicsTextItem_SetDefaultTextColor")]
	public static extern void QGraphicsTextItem_SetDefaultTextColor(void* c_this, void* c);
	[LinkName("QGraphicsTextItem_DefaultTextColor")]
	public static extern void QGraphicsTextItem_DefaultTextColor(void* c_this);
	[LinkName("QGraphicsTextItem_BoundingRect")]
	public static extern void QGraphicsTextItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsTextItem_Shape")]
	public static extern void QGraphicsTextItem_Shape(void* c_this);
	[LinkName("QGraphicsTextItem_Contains")]
	public static extern bool QGraphicsTextItem_Contains(void* c_this, void* point);
	[LinkName("QGraphicsTextItem_Paint")]
	public static extern void QGraphicsTextItem_Paint(void* c_this, void* painter, void* option, void* widget);
	[LinkName("QGraphicsTextItem_IsObscuredBy")]
	public static extern bool QGraphicsTextItem_IsObscuredBy(void* c_this, void* item);
	[LinkName("QGraphicsTextItem_OpaqueArea")]
	public static extern void QGraphicsTextItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsTextItem_Type")]
	public static extern int32 QGraphicsTextItem_Type(void* c_this);
	[LinkName("QGraphicsTextItem_SetTextWidth")]
	public static extern void QGraphicsTextItem_SetTextWidth(void* c_this, double width);
	[LinkName("QGraphicsTextItem_TextWidth")]
	public static extern double QGraphicsTextItem_TextWidth(void* c_this);
	[LinkName("QGraphicsTextItem_AdjustSize")]
	public static extern void QGraphicsTextItem_AdjustSize(void* c_this);
	[LinkName("QGraphicsTextItem_SetDocument")]
	public static extern void QGraphicsTextItem_SetDocument(void* c_this, void* document);
	[LinkName("QGraphicsTextItem_Document")]
	public static extern void* QGraphicsTextItem_Document(void* c_this);
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
	public static extern void QGraphicsTextItem_SetTextCursor(void* c_this, void* cursor);
	[LinkName("QGraphicsTextItem_TextCursor")]
	public static extern void QGraphicsTextItem_TextCursor(void* c_this);
	[LinkName("QGraphicsTextItem_Connect_LinkActivated")]
	public static extern void QGraphicsTextItem_Connect_LinkActivated(void* c_this, c_intptr slot);
	[LinkName("QGraphicsTextItem_Connect_LinkHovered")]
	public static extern void QGraphicsTextItem_Connect_LinkHovered(void* c_this, c_intptr slot);
	[LinkName("QGraphicsTextItem_SceneEvent")]
	public static extern bool QGraphicsTextItem_SceneEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_MousePressEvent")]
	public static extern void QGraphicsTextItem_MousePressEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_MouseMoveEvent")]
	public static extern void QGraphicsTextItem_MouseMoveEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_MouseReleaseEvent")]
	public static extern void QGraphicsTextItem_MouseReleaseEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_MouseDoubleClickEvent")]
	public static extern void QGraphicsTextItem_MouseDoubleClickEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_ContextMenuEvent")]
	public static extern void QGraphicsTextItem_ContextMenuEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_KeyPressEvent")]
	public static extern void QGraphicsTextItem_KeyPressEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_KeyReleaseEvent")]
	public static extern void QGraphicsTextItem_KeyReleaseEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_FocusInEvent")]
	public static extern void QGraphicsTextItem_FocusInEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_FocusOutEvent")]
	public static extern void QGraphicsTextItem_FocusOutEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_DragEnterEvent")]
	public static extern void QGraphicsTextItem_DragEnterEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_DragLeaveEvent")]
	public static extern void QGraphicsTextItem_DragLeaveEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_DragMoveEvent")]
	public static extern void QGraphicsTextItem_DragMoveEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_DropEvent")]
	public static extern void QGraphicsTextItem_DropEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_InputMethodEvent")]
	public static extern void QGraphicsTextItem_InputMethodEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_HoverEnterEvent")]
	public static extern void QGraphicsTextItem_HoverEnterEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_HoverMoveEvent")]
	public static extern void QGraphicsTextItem_HoverMoveEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_HoverLeaveEvent")]
	public static extern void QGraphicsTextItem_HoverLeaveEvent(void* c_this, void* event);
	[LinkName("QGraphicsTextItem_InputMethodQuery")]
	public static extern void QGraphicsTextItem_InputMethodQuery(void* c_this, int64 query);
	[LinkName("QGraphicsTextItem_SupportsExtension")]
	public static extern bool QGraphicsTextItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsTextItem_SetExtension")]
	public static extern void QGraphicsTextItem_SetExtension(void* c_this, int64 _extension, void* variant);
	[LinkName("QGraphicsTextItem_Extension")]
	public static extern void QGraphicsTextItem_Extension(void* c_this, void* variant);
	[LinkName("QGraphicsTextItem_Tr2")]
	public static extern libqt_string QGraphicsTextItem_Tr2(char8* s, char8* c);
	[LinkName("QGraphicsTextItem_Tr3")]
	public static extern libqt_string QGraphicsTextItem_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsTextItem_Delete")]
	public static extern void QGraphicsTextItem_Delete(void* self);
}
public interface IQGraphicsSimpleTextItem
{
	void* NativePtr { get; }
}
public struct QGraphicsSimpleTextItemPtr : IQGraphicsSimpleTextItem, IDisposable, IQAbstractGraphicsShapeItem
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsSimpleTextItem_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsSimpleTextItem_Delete(this.nativePtr);
	}
	
	public void SetText(String text)
	{
		CQt.QGraphicsSimpleTextItem_SetText(this.nativePtr, libqt_string(text));
	}
	
	public libqt_string Text()
	{
		return CQt.QGraphicsSimpleTextItem_Text(this.nativePtr);
	}
	
	public void SetFont(IQFont font)
	{
		CQt.QGraphicsSimpleTextItem_SetFont(this.nativePtr, (font == default || font.NativePtr == default) ? default : font.NativePtr);
	}
	
	public void Font()
	{
		CQt.QGraphicsSimpleTextItem_Font(this.nativePtr);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsSimpleTextItem_BoundingRect(this.nativePtr);
	}
	
	public void Shape()
	{
		CQt.QGraphicsSimpleTextItem_Shape(this.nativePtr);
	}
	
	public bool Contains(IQPointF point)
	{
		return CQt.QGraphicsSimpleTextItem_Contains(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		CQt.QGraphicsSimpleTextItem_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public bool IsObscuredBy(IQGraphicsItem item)
	{
		return CQt.QGraphicsSimpleTextItem_IsObscuredBy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void OpaqueArea()
	{
		CQt.QGraphicsSimpleTextItem_OpaqueArea(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QGraphicsSimpleTextItem_Type(this.nativePtr);
	}
	
	public bool SupportsExtension(int64 _extension)
	{
		return CQt.QGraphicsSimpleTextItem_SupportsExtension(this.nativePtr, (int64)_extension);
	}
	
	public void SetExtension(int64 _extension, IQVariant variant)
	{
		CQt.QGraphicsSimpleTextItem_SetExtension(this.nativePtr, (int64)_extension, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void Extension(IQVariant variant)
	{
		CQt.QGraphicsSimpleTextItem_Extension(this.nativePtr, (variant == default || variant.NativePtr == default) ? default : variant.NativePtr);
	}
	
	public void Pen()
	{
		CQt.QAbstractGraphicsShapeItem_Pen(this.nativePtr);
	}
	
	public void SetPen(IQPen pen)
	{
		CQt.QAbstractGraphicsShapeItem_SetPen(this.nativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void Brush()
	{
		CQt.QAbstractGraphicsShapeItem_Brush(this.nativePtr);
	}
	
	public void SetBrush(IQBrush brush)
	{
		CQt.QAbstractGraphicsShapeItem_SetBrush(this.nativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void* Scene()
	{
		return CQt.QGraphicsItem_Scene(this.nativePtr);
	}
	
	public void* ParentItem()
	{
		return CQt.QGraphicsItem_ParentItem(this.nativePtr);
	}
	
	public void* TopLevelItem()
	{
		return CQt.QGraphicsItem_TopLevelItem(this.nativePtr);
	}
	
	public void* ParentObject()
	{
		return CQt.QGraphicsItem_ParentObject(this.nativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QGraphicsItem_ParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QGraphicsItem_TopLevelWidget(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QGraphicsItem_Window(this.nativePtr);
	}
	
	public void* Panel()
	{
		return CQt.QGraphicsItem_Panel(this.nativePtr);
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		CQt.QGraphicsItem_SetParentItem(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void*[] ChildItems()
	{
		return CQt.QGraphicsItem_ChildItems(this.nativePtr);
	}
	
	public bool IsWidget()
	{
		return CQt.QGraphicsItem_IsWidget(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QGraphicsItem_IsWindow(this.nativePtr);
	}
	
	public bool IsPanel()
	{
		return CQt.QGraphicsItem_IsPanel(this.nativePtr);
	}
	
	public void* ToGraphicsObject()
	{
		return CQt.QGraphicsItem_ToGraphicsObject(this.nativePtr);
	}
	
	public void* ToGraphicsObject2()
	{
		return CQt.QGraphicsItem_ToGraphicsObject2(this.nativePtr);
	}
	
	public void* Group()
	{
		return CQt.QGraphicsItem_Group(this.nativePtr);
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		CQt.QGraphicsItem_SetGroup(this.nativePtr, (group == default || group.NativePtr == default) ? default : group.NativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QGraphicsItem_Flags(this.nativePtr);
	}
	
	public void SetFlag(int64 flag)
	{
		CQt.QGraphicsItem_SetFlag(this.nativePtr, (int64)flag);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QGraphicsItem_SetFlags(this.nativePtr, flags);
	}
	
	public int64 CacheMode()
	{
		return CQt.QGraphicsItem_CacheMode(this.nativePtr);
	}
	
	public void SetCacheMode(int64 mode)
	{
		CQt.QGraphicsItem_SetCacheMode(this.nativePtr, (int64)mode);
	}
	
	public int64 PanelModality()
	{
		return CQt.QGraphicsItem_PanelModality(this.nativePtr);
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		CQt.QGraphicsItem_SetPanelModality(this.nativePtr, (int64)panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return CQt.QGraphicsItem_IsBlockedByModalPanel(this.nativePtr);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QGraphicsItem_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QGraphicsItem_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public void Cursor()
	{
		CQt.QGraphicsItem_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QGraphicsItem_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
	}
	
	public bool HasCursor()
	{
		return CQt.QGraphicsItem_HasCursor(this.nativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QGraphicsItem_UnsetCursor(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QGraphicsItem_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return CQt.QGraphicsItem_IsVisibleTo(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QGraphicsItem_SetVisible(this.nativePtr, visible);
	}
	
	public void Hide()
	{
		CQt.QGraphicsItem_Hide(this.nativePtr);
	}
	
	public void Show()
	{
		CQt.QGraphicsItem_Show(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsItem_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QGraphicsItem_SetEnabled(this.nativePtr, enabled);
	}
	
	public bool IsSelected()
	{
		return CQt.QGraphicsItem_IsSelected(this.nativePtr);
	}
	
	public void SetSelected(bool selected)
	{
		CQt.QGraphicsItem_SetSelected(this.nativePtr, selected);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QGraphicsItem_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QGraphicsItem_SetAcceptDrops(this.nativePtr, on);
	}
	
	public double Opacity()
	{
		return CQt.QGraphicsItem_Opacity(this.nativePtr);
	}
	
	public double EffectiveOpacity()
	{
		return CQt.QGraphicsItem_EffectiveOpacity(this.nativePtr);
	}
	
	public void SetOpacity(double opacity)
	{
		CQt.QGraphicsItem_SetOpacity(this.nativePtr, opacity);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QGraphicsItem_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QGraphicsItem_SetGraphicsEffect(this.nativePtr, (effect == default || effect.NativePtr == default) ? default : effect.NativePtr);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return CQt.QGraphicsItem_AcceptedMouseButtons(this.nativePtr);
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		CQt.QGraphicsItem_SetAcceptedMouseButtons(this.nativePtr, buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return CQt.QGraphicsItem_AcceptHoverEvents(this.nativePtr);
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptHoverEvents(this.nativePtr, enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return CQt.QGraphicsItem_AcceptTouchEvents(this.nativePtr);
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptTouchEvents(this.nativePtr, enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return CQt.QGraphicsItem_FiltersChildEvents(this.nativePtr);
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetFiltersChildEvents(this.nativePtr, enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return CQt.QGraphicsItem_HandlesChildEvents(this.nativePtr);
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetHandlesChildEvents(this.nativePtr, enabled);
	}
	
	public bool IsActive()
	{
		return CQt.QGraphicsItem_IsActive(this.nativePtr);
	}
	
	public void SetActive(bool active)
	{
		CQt.QGraphicsItem_SetActive(this.nativePtr, active);
	}
	
	public bool HasFocus()
	{
		return CQt.QGraphicsItem_HasFocus(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QGraphicsItem_SetFocus(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QGraphicsItem_ClearFocus(this.nativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QGraphicsItem_FocusProxy(this.nativePtr);
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		CQt.QGraphicsItem_SetFocusProxy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* FocusItem()
	{
		return CQt.QGraphicsItem_FocusItem(this.nativePtr);
	}
	
	public void* FocusScopeItem()
	{
		return CQt.QGraphicsItem_FocusScopeItem(this.nativePtr);
	}
	
	public void GrabMouse()
	{
		CQt.QGraphicsItem_GrabMouse(this.nativePtr);
	}
	
	public void UngrabMouse()
	{
		CQt.QGraphicsItem_UngrabMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QGraphicsItem_GrabKeyboard(this.nativePtr);
	}
	
	public void UngrabKeyboard()
	{
		CQt.QGraphicsItem_UngrabKeyboard(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsItem_Pos(this.nativePtr);
	}
	
	public double X()
	{
		return CQt.QGraphicsItem_X(this.nativePtr);
	}
	
	public void SetX(double x)
	{
		CQt.QGraphicsItem_SetX(this.nativePtr, x);
	}
	
	public double Y()
	{
		return CQt.QGraphicsItem_Y(this.nativePtr);
	}
	
	public void SetY(double y)
	{
		CQt.QGraphicsItem_SetY(this.nativePtr, y);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsItem_ScenePos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsItem_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void SetPos2(double x, double y)
	{
		CQt.QGraphicsItem_SetPos2(this.nativePtr, x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		CQt.QGraphicsItem_MoveBy(this.nativePtr, dx, dy);
	}
	
	public void EnsureVisible()
	{
		CQt.QGraphicsItem_EnsureVisible(this.nativePtr);
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_EnsureVisible2(this.nativePtr, x, y, w, h);
	}
	
	public void Transform()
	{
		CQt.QGraphicsItem_Transform(this.nativePtr);
	}
	
	public void SceneTransform()
	{
		CQt.QGraphicsItem_SceneTransform(this.nativePtr);
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		CQt.QGraphicsItem_DeviceTransform(this.nativePtr, (viewportTransform == default || viewportTransform.NativePtr == default) ? default : viewportTransform.NativePtr);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		CQt.QGraphicsItem_ItemTransform(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		CQt.QGraphicsItem_SetTransform(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public void ResetTransform()
	{
		CQt.QGraphicsItem_ResetTransform(this.nativePtr);
	}
	
	public void SetRotation(double angle)
	{
		CQt.QGraphicsItem_SetRotation(this.nativePtr, angle);
	}
	
	public double Rotation()
	{
		return CQt.QGraphicsItem_Rotation(this.nativePtr);
	}
	
	public void SetScale(double scale)
	{
		CQt.QGraphicsItem_SetScale(this.nativePtr, scale);
	}
	
	public double Scale()
	{
		return CQt.QGraphicsItem_Scale(this.nativePtr);
	}
	
	public void*[] Transformations()
	{
		return CQt.QGraphicsItem_Transformations(this.nativePtr);
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		CQt.QGraphicsItem_SetTransformations(this.nativePtr, null);
	}
	
	public void TransformOriginPoint()
	{
		CQt.QGraphicsItem_TransformOriginPoint(this.nativePtr);
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint(this.nativePtr, (origin == default || origin.NativePtr == default) ? default : origin.NativePtr);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint2(this.nativePtr, ax, ay);
	}
	
	public void Advance(int32 phase)
	{
		CQt.QGraphicsItem_Advance(this.nativePtr, phase);
	}
	
	public double ZValue()
	{
		return CQt.QGraphicsItem_ZValue(this.nativePtr);
	}
	
	public void SetZValue(double z)
	{
		CQt.QGraphicsItem_SetZValue(this.nativePtr, z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		CQt.QGraphicsItem_StackBefore(this.nativePtr, (sibling == default || sibling.NativePtr == default) ? default : sibling.NativePtr);
	}
	
	public void ChildrenBoundingRect()
	{
		CQt.QGraphicsItem_ChildrenBoundingRect(this.nativePtr);
	}
	
	public void SceneBoundingRect()
	{
		CQt.QGraphicsItem_SceneBoundingRect(this.nativePtr);
	}
	
	public bool IsClipped()
	{
		return CQt.QGraphicsItem_IsClipped(this.nativePtr);
	}
	
	public void ClipPath()
	{
		CQt.QGraphicsItem_ClipPath(this.nativePtr);
	}
	
	public bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, (int64)mode);
	}
	
	public bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode);
	}
	
	public void*[] CollidingItems()
	{
		return CQt.QGraphicsItem_CollidingItems(this.nativePtr);
	}
	
	public bool IsObscured()
	{
		return CQt.QGraphicsItem_IsObscured(this.nativePtr);
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return CQt.QGraphicsItem_IsObscured2(this.nativePtr, x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		CQt.QGraphicsItem_BoundingRegion(this.nativePtr, (itemToDeviceTransform == default || itemToDeviceTransform.NativePtr == default) ? default : itemToDeviceTransform.NativePtr);
	}
	
	public double BoundingRegionGranularity()
	{
		return CQt.QGraphicsItem_BoundingRegionGranularity(this.nativePtr);
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		CQt.QGraphicsItem_SetBoundingRegionGranularity(this.nativePtr, granularity);
	}
	
	public void Update()
	{
		CQt.QGraphicsItem_Update(this.nativePtr);
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		CQt.QGraphicsItem_Update2(this.nativePtr, x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		CQt.QGraphicsItem_Scroll(this.nativePtr, dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapToParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapToScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapToItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapToParent2(this.nativePtr, x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapToScene2(this.nativePtr, x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToScene2(this.nativePtr, x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapFromItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromParent2(this.nativePtr, x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromScene2(this.nativePtr, x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromScene2(this.nativePtr, x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return CQt.QGraphicsItem_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return CQt.QGraphicsItem_CommonAncestorItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsUnderMouse()
	{
		return CQt.QGraphicsItem_IsUnderMouse(this.nativePtr);
	}
	
	public void Data(int32 key)
	{
		CQt.QGraphicsItem_Data(this.nativePtr, key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		CQt.QGraphicsItem_SetData(this.nativePtr, key, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QGraphicsItem_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QGraphicsItem_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_InstallSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_RemoveSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsItem_SetFlag2(this.nativePtr, (int64)flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		CQt.QGraphicsItem_SetCacheMode2(this.nativePtr, (int64)mode, (cacheSize == default || cacheSize.NativePtr == default) ? default : cacheSize.NativePtr);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsItem_SetFocus1(this.nativePtr, (int64)focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		CQt.QGraphicsItem_EnsureVisible1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible5(this.nativePtr, x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible6(this.nativePtr, x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		CQt.QGraphicsItem_ItemTransform2(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		CQt.QGraphicsItem_SetTransform2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return CQt.QGraphicsItem_CollidingItems1(this.nativePtr, (int64)mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return CQt.QGraphicsItem_IsObscured1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Update1(IQRectF rect)
	{
		CQt.QGraphicsItem_Update1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		CQt.QGraphicsItem_Scroll3(this.nativePtr, dx, dy, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
}
public class QGraphicsSimpleTextItem
{
	public QGraphicsSimpleTextItemPtr handle;
	
	public static implicit operator QGraphicsSimpleTextItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsSimpleTextItemPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void SetText(String text)
	{
		this.handle.SetText(text);
	}
	
	public libqt_string Text()
	{
		return this.handle.Text();
	}
	
	public void SetFont(IQFont font)
	{
		this.handle.SetFont(font);
	}
	
	public void Font()
	{
		this.handle.Font();
	}
	
	public virtual void BoundingRect()
	{
		this.handle.BoundingRect();
	}
	
	public virtual void Shape()
	{
		this.handle.Shape();
	}
	
	public virtual bool Contains(IQPointF point)
	{
		return this.handle.Contains(point);
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		this.handle.Paint(painter, option, widget);
	}
	
	public virtual bool IsObscuredBy(IQGraphicsItem item)
	{
		return this.handle.IsObscuredBy(item);
	}
	
	public virtual void OpaqueArea()
	{
		this.handle.OpaqueArea();
	}
	
	public virtual int32 Type()
	{
		return this.handle.Type();
	}
	
	public virtual bool SupportsExtension(int64 _extension)
	{
		return this.handle.SupportsExtension(_extension);
	}
	
	public virtual void SetExtension(int64 _extension, IQVariant variant)
	{
		this.handle.SetExtension(_extension, variant);
	}
	
	public virtual void Extension(IQVariant variant)
	{
		this.handle.Extension(variant);
	}
	
	public void Pen()
	{
		this.handle.Pen();
	}
	
	public void SetPen(IQPen pen)
	{
		this.handle.SetPen(pen);
	}
	
	public void Brush()
	{
		this.handle.Brush();
	}
	
	public void SetBrush(IQBrush brush)
	{
		this.handle.SetBrush(brush);
	}
	
	public void* Scene()
	{
		return this.handle.Scene();
	}
	
	public void* ParentItem()
	{
		return this.handle.ParentItem();
	}
	
	public void* TopLevelItem()
	{
		return this.handle.TopLevelItem();
	}
	
	public void* ParentObject()
	{
		return this.handle.ParentObject();
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public void* TopLevelWidget()
	{
		return this.handle.TopLevelWidget();
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* Panel()
	{
		return this.handle.Panel();
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		this.handle.SetParentItem(parent);
	}
	
	public void*[] ChildItems()
	{
		return this.handle.ChildItems();
	}
	
	public bool IsWidget()
	{
		return this.handle.IsWidget();
	}
	
	public bool IsWindow()
	{
		return this.handle.IsWindow();
	}
	
	public bool IsPanel()
	{
		return this.handle.IsPanel();
	}
	
	public void* ToGraphicsObject()
	{
		return this.handle.ToGraphicsObject();
	}
	
	public void* ToGraphicsObject2()
	{
		return this.handle.ToGraphicsObject2();
	}
	
	public void* Group()
	{
		return this.handle.Group();
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		this.handle.SetGroup(group);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlag(int64 flag)
	{
		this.handle.SetFlag(flag);
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int64 CacheMode()
	{
		return this.handle.CacheMode();
	}
	
	public void SetCacheMode(int64 mode)
	{
		this.handle.SetCacheMode(mode);
	}
	
	public int64 PanelModality()
	{
		return this.handle.PanelModality();
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		this.handle.SetPanelModality(panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return this.handle.IsBlockedByModalPanel();
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public bool HasCursor()
	{
		return this.handle.HasCursor();
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return this.handle.IsVisibleTo(parent);
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public bool IsSelected()
	{
		return this.handle.IsSelected();
	}
	
	public void SetSelected(bool selected)
	{
		this.handle.SetSelected(selected);
	}
	
	public bool AcceptDrops()
	{
		return this.handle.AcceptDrops();
	}
	
	public void SetAcceptDrops(bool on)
	{
		this.handle.SetAcceptDrops(on);
	}
	
	public double Opacity()
	{
		return this.handle.Opacity();
	}
	
	public double EffectiveOpacity()
	{
		return this.handle.EffectiveOpacity();
	}
	
	public void SetOpacity(double opacity)
	{
		this.handle.SetOpacity(opacity);
	}
	
	public void* GraphicsEffect()
	{
		return this.handle.GraphicsEffect();
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		this.handle.SetGraphicsEffect(effect);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return this.handle.AcceptedMouseButtons();
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		this.handle.SetAcceptedMouseButtons(buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return this.handle.AcceptHoverEvents();
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		this.handle.SetAcceptHoverEvents(enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return this.handle.AcceptTouchEvents();
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		this.handle.SetAcceptTouchEvents(enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return this.handle.FiltersChildEvents();
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		this.handle.SetFiltersChildEvents(enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return this.handle.HandlesChildEvents();
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		this.handle.SetHandlesChildEvents(enabled);
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void SetActive(bool active)
	{
		this.handle.SetActive(active);
	}
	
	public bool HasFocus()
	{
		return this.handle.HasFocus();
	}
	
	public void SetFocus()
	{
		this.handle.SetFocus();
	}
	
	public void ClearFocus()
	{
		this.handle.ClearFocus();
	}
	
	public void* FocusProxy()
	{
		return this.handle.FocusProxy();
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		this.handle.SetFocusProxy(item);
	}
	
	public void* FocusItem()
	{
		return this.handle.FocusItem();
	}
	
	public void* FocusScopeItem()
	{
		return this.handle.FocusScopeItem();
	}
	
	public void GrabMouse()
	{
		this.handle.GrabMouse();
	}
	
	public void UngrabMouse()
	{
		this.handle.UngrabMouse();
	}
	
	public void GrabKeyboard()
	{
		this.handle.GrabKeyboard();
	}
	
	public void UngrabKeyboard()
	{
		this.handle.UngrabKeyboard();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public double X()
	{
		return this.handle.X();
	}
	
	public void SetX(double x)
	{
		this.handle.SetX(x);
	}
	
	public double Y()
	{
		return this.handle.Y();
	}
	
	public void SetY(double y)
	{
		this.handle.SetY(y);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void SetPos2(double x, double y)
	{
		this.handle.SetPos2(x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		this.handle.MoveBy(dx, dy);
	}
	
	public void EnsureVisible()
	{
		this.handle.EnsureVisible();
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		this.handle.EnsureVisible2(x, y, w, h);
	}
	
	public void Transform()
	{
		this.handle.Transform();
	}
	
	public void SceneTransform()
	{
		this.handle.SceneTransform();
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		this.handle.DeviceTransform(viewportTransform);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		this.handle.ItemTransform(other);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		this.handle.SetTransform(matrix);
	}
	
	public void ResetTransform()
	{
		this.handle.ResetTransform();
	}
	
	public void SetRotation(double angle)
	{
		this.handle.SetRotation(angle);
	}
	
	public double Rotation()
	{
		return this.handle.Rotation();
	}
	
	public void SetScale(double scale)
	{
		this.handle.SetScale(scale);
	}
	
	public double Scale()
	{
		return this.handle.Scale();
	}
	
	public void*[] Transformations()
	{
		return this.handle.Transformations();
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		this.handle.SetTransformations(null);
	}
	
	public void TransformOriginPoint()
	{
		this.handle.TransformOriginPoint();
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		this.handle.SetTransformOriginPoint(origin);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		this.handle.SetTransformOriginPoint2(ax, ay);
	}
	
	public virtual void Advance(int32 phase)
	{
		this.handle.Advance(phase);
	}
	
	public double ZValue()
	{
		return this.handle.ZValue();
	}
	
	public void SetZValue(double z)
	{
		this.handle.SetZValue(z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		this.handle.StackBefore(sibling);
	}
	
	public void ChildrenBoundingRect()
	{
		this.handle.ChildrenBoundingRect();
	}
	
	public void SceneBoundingRect()
	{
		this.handle.SceneBoundingRect();
	}
	
	public bool IsClipped()
	{
		return this.handle.IsClipped();
	}
	
	public void ClipPath()
	{
		this.handle.ClipPath();
	}
	
	public virtual bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return this.handle.CollidesWithItem(other, mode);
	}
	
	public virtual bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return this.handle.CollidesWithPath(path, mode);
	}
	
	public void*[] CollidingItems()
	{
		return this.handle.CollidingItems();
	}
	
	public bool IsObscured()
	{
		return this.handle.IsObscured();
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return this.handle.IsObscured2(x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		this.handle.BoundingRegion(itemToDeviceTransform);
	}
	
	public double BoundingRegionGranularity()
	{
		return this.handle.BoundingRegionGranularity();
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		this.handle.SetBoundingRegionGranularity(granularity);
	}
	
	public void Update()
	{
		this.handle.Update();
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		this.handle.Update2(x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		this.handle.Scroll(dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapToItem(item, point);
	}
	
	public void MapToParent(IQPointF point)
	{
		this.handle.MapToParent(point);
	}
	
	public void MapToScene(IQPointF point)
	{
		this.handle.MapToScene(point);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectToItem(item, rect);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		this.handle.MapRectToParent(rect);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		this.handle.MapRectToScene(rect);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapToItem4(item, path);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		this.handle.MapToParentWithPath(path);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		this.handle.MapToSceneWithPath(path);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapFromItem(item, point);
	}
	
	public void MapFromParent(IQPointF point)
	{
		this.handle.MapFromParent(point);
	}
	
	public void MapFromScene(IQPointF point)
	{
		this.handle.MapFromScene(point);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectFromItem(item, rect);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		this.handle.MapRectFromParent(rect);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		this.handle.MapRectFromScene(rect);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapFromItem4(item, path);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		this.handle.MapFromParentWithPath(path);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		this.handle.MapFromSceneWithPath(path);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapToItem5(item, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		this.handle.MapToParent2(x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		this.handle.MapToScene2(x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectToItem2(item, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectToParent2(x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectToScene2(x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapFromItem5(item, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		this.handle.MapFromParent2(x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		this.handle.MapFromScene2(x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectFromItem2(item, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromParent2(x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromScene2(x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return this.handle.CommonAncestorItem(other);
	}
	
	public bool IsUnderMouse()
	{
		return this.handle.IsUnderMouse();
	}
	
	public void Data(int32 key)
	{
		this.handle.Data(key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		this.handle.SetData(key, value);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.InstallSceneEventFilter(filterItem);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.RemoveSceneEventFilter(filterItem);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		this.handle.SetFlag2(flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		this.handle.SetCacheMode2(mode, cacheSize);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		this.handle.SetFocus1(focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		this.handle.EnsureVisible1(rect);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		this.handle.EnsureVisible22(rect, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible3(rect, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		this.handle.EnsureVisible5(x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible6(x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		this.handle.ItemTransform2(other, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		this.handle.SetTransform2(matrix, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return this.handle.CollidingItems1(mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return this.handle.IsObscured1(rect);
	}
	
	public void Update1(IQRectF rect)
	{
		this.handle.Update1(rect);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		this.handle.Scroll3(dx, dy, rect);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsSimpleTextItem_new")]
	public static extern void* QGraphicsSimpleTextItem_new();
	[LinkName("QGraphicsSimpleTextItem_new2")]
	public static extern void* QGraphicsSimpleTextItem_new2(libqt_string text);
	[LinkName("QGraphicsSimpleTextItem_new3")]
	public static extern void* QGraphicsSimpleTextItem_new3(void* parent);
	[LinkName("QGraphicsSimpleTextItem_new4")]
	public static extern void* QGraphicsSimpleTextItem_new4(libqt_string text, void* parent);
	[LinkName("QGraphicsSimpleTextItem_SetText")]
	public static extern void QGraphicsSimpleTextItem_SetText(void* c_this, libqt_string text);
	[LinkName("QGraphicsSimpleTextItem_Text")]
	public static extern libqt_string QGraphicsSimpleTextItem_Text(void* c_this);
	[LinkName("QGraphicsSimpleTextItem_SetFont")]
	public static extern void QGraphicsSimpleTextItem_SetFont(void* c_this, void* font);
	[LinkName("QGraphicsSimpleTextItem_Font")]
	public static extern void QGraphicsSimpleTextItem_Font(void* c_this);
	[LinkName("QGraphicsSimpleTextItem_BoundingRect")]
	public static extern void QGraphicsSimpleTextItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsSimpleTextItem_Shape")]
	public static extern void QGraphicsSimpleTextItem_Shape(void* c_this);
	[LinkName("QGraphicsSimpleTextItem_Contains")]
	public static extern bool QGraphicsSimpleTextItem_Contains(void* c_this, void* point);
	[LinkName("QGraphicsSimpleTextItem_Paint")]
	public static extern void QGraphicsSimpleTextItem_Paint(void* c_this, void* painter, void* option, void* widget);
	[LinkName("QGraphicsSimpleTextItem_IsObscuredBy")]
	public static extern bool QGraphicsSimpleTextItem_IsObscuredBy(void* c_this, void* item);
	[LinkName("QGraphicsSimpleTextItem_OpaqueArea")]
	public static extern void QGraphicsSimpleTextItem_OpaqueArea(void* c_this);
	[LinkName("QGraphicsSimpleTextItem_Type")]
	public static extern int32 QGraphicsSimpleTextItem_Type(void* c_this);
	[LinkName("QGraphicsSimpleTextItem_SupportsExtension")]
	public static extern bool QGraphicsSimpleTextItem_SupportsExtension(void* c_this, int64 _extension);
	[LinkName("QGraphicsSimpleTextItem_SetExtension")]
	public static extern void QGraphicsSimpleTextItem_SetExtension(void* c_this, int64 _extension, void* variant);
	[LinkName("QGraphicsSimpleTextItem_Extension")]
	public static extern void QGraphicsSimpleTextItem_Extension(void* c_this, void* variant);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsSimpleTextItem_Delete")]
	public static extern void QGraphicsSimpleTextItem_Delete(void* self);
}
public interface IQGraphicsItemGroup
{
	void* NativePtr { get; }
}
public struct QGraphicsItemGroupPtr : IQGraphicsItemGroup, IDisposable, IQGraphicsItem
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsItemGroup_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsItemGroup_Delete(this.nativePtr);
	}
	
	public void AddToGroup(IQGraphicsItem item)
	{
		CQt.QGraphicsItemGroup_AddToGroup(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void RemoveFromGroup(IQGraphicsItem item)
	{
		CQt.QGraphicsItemGroup_RemoveFromGroup(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsItemGroup_BoundingRect(this.nativePtr);
	}
	
	public void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		CQt.QGraphicsItemGroup_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public bool IsObscuredBy(IQGraphicsItem item)
	{
		return CQt.QGraphicsItemGroup_IsObscuredBy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void OpaqueArea()
	{
		CQt.QGraphicsItemGroup_OpaqueArea(this.nativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QGraphicsItemGroup_Type(this.nativePtr);
	}
	
	public void* Scene()
	{
		return CQt.QGraphicsItem_Scene(this.nativePtr);
	}
	
	public void* ParentItem()
	{
		return CQt.QGraphicsItem_ParentItem(this.nativePtr);
	}
	
	public void* TopLevelItem()
	{
		return CQt.QGraphicsItem_TopLevelItem(this.nativePtr);
	}
	
	public void* ParentObject()
	{
		return CQt.QGraphicsItem_ParentObject(this.nativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QGraphicsItem_ParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QGraphicsItem_TopLevelWidget(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QGraphicsItem_Window(this.nativePtr);
	}
	
	public void* Panel()
	{
		return CQt.QGraphicsItem_Panel(this.nativePtr);
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		CQt.QGraphicsItem_SetParentItem(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void*[] ChildItems()
	{
		return CQt.QGraphicsItem_ChildItems(this.nativePtr);
	}
	
	public bool IsWidget()
	{
		return CQt.QGraphicsItem_IsWidget(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QGraphicsItem_IsWindow(this.nativePtr);
	}
	
	public bool IsPanel()
	{
		return CQt.QGraphicsItem_IsPanel(this.nativePtr);
	}
	
	public void* ToGraphicsObject()
	{
		return CQt.QGraphicsItem_ToGraphicsObject(this.nativePtr);
	}
	
	public void* ToGraphicsObject2()
	{
		return CQt.QGraphicsItem_ToGraphicsObject2(this.nativePtr);
	}
	
	public void* Group()
	{
		return CQt.QGraphicsItem_Group(this.nativePtr);
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		CQt.QGraphicsItem_SetGroup(this.nativePtr, (group == default || group.NativePtr == default) ? default : group.NativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QGraphicsItem_Flags(this.nativePtr);
	}
	
	public void SetFlag(int64 flag)
	{
		CQt.QGraphicsItem_SetFlag(this.nativePtr, (int64)flag);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QGraphicsItem_SetFlags(this.nativePtr, flags);
	}
	
	public int64 CacheMode()
	{
		return CQt.QGraphicsItem_CacheMode(this.nativePtr);
	}
	
	public void SetCacheMode(int64 mode)
	{
		CQt.QGraphicsItem_SetCacheMode(this.nativePtr, (int64)mode);
	}
	
	public int64 PanelModality()
	{
		return CQt.QGraphicsItem_PanelModality(this.nativePtr);
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		CQt.QGraphicsItem_SetPanelModality(this.nativePtr, (int64)panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return CQt.QGraphicsItem_IsBlockedByModalPanel(this.nativePtr);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QGraphicsItem_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QGraphicsItem_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public void Cursor()
	{
		CQt.QGraphicsItem_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QGraphicsItem_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
	}
	
	public bool HasCursor()
	{
		return CQt.QGraphicsItem_HasCursor(this.nativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QGraphicsItem_UnsetCursor(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QGraphicsItem_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return CQt.QGraphicsItem_IsVisibleTo(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QGraphicsItem_SetVisible(this.nativePtr, visible);
	}
	
	public void Hide()
	{
		CQt.QGraphicsItem_Hide(this.nativePtr);
	}
	
	public void Show()
	{
		CQt.QGraphicsItem_Show(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsItem_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QGraphicsItem_SetEnabled(this.nativePtr, enabled);
	}
	
	public bool IsSelected()
	{
		return CQt.QGraphicsItem_IsSelected(this.nativePtr);
	}
	
	public void SetSelected(bool selected)
	{
		CQt.QGraphicsItem_SetSelected(this.nativePtr, selected);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QGraphicsItem_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QGraphicsItem_SetAcceptDrops(this.nativePtr, on);
	}
	
	public double Opacity()
	{
		return CQt.QGraphicsItem_Opacity(this.nativePtr);
	}
	
	public double EffectiveOpacity()
	{
		return CQt.QGraphicsItem_EffectiveOpacity(this.nativePtr);
	}
	
	public void SetOpacity(double opacity)
	{
		CQt.QGraphicsItem_SetOpacity(this.nativePtr, opacity);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QGraphicsItem_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QGraphicsItem_SetGraphicsEffect(this.nativePtr, (effect == default || effect.NativePtr == default) ? default : effect.NativePtr);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return CQt.QGraphicsItem_AcceptedMouseButtons(this.nativePtr);
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		CQt.QGraphicsItem_SetAcceptedMouseButtons(this.nativePtr, buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return CQt.QGraphicsItem_AcceptHoverEvents(this.nativePtr);
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptHoverEvents(this.nativePtr, enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return CQt.QGraphicsItem_AcceptTouchEvents(this.nativePtr);
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptTouchEvents(this.nativePtr, enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return CQt.QGraphicsItem_FiltersChildEvents(this.nativePtr);
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetFiltersChildEvents(this.nativePtr, enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return CQt.QGraphicsItem_HandlesChildEvents(this.nativePtr);
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetHandlesChildEvents(this.nativePtr, enabled);
	}
	
	public bool IsActive()
	{
		return CQt.QGraphicsItem_IsActive(this.nativePtr);
	}
	
	public void SetActive(bool active)
	{
		CQt.QGraphicsItem_SetActive(this.nativePtr, active);
	}
	
	public bool HasFocus()
	{
		return CQt.QGraphicsItem_HasFocus(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QGraphicsItem_SetFocus(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QGraphicsItem_ClearFocus(this.nativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QGraphicsItem_FocusProxy(this.nativePtr);
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		CQt.QGraphicsItem_SetFocusProxy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* FocusItem()
	{
		return CQt.QGraphicsItem_FocusItem(this.nativePtr);
	}
	
	public void* FocusScopeItem()
	{
		return CQt.QGraphicsItem_FocusScopeItem(this.nativePtr);
	}
	
	public void GrabMouse()
	{
		CQt.QGraphicsItem_GrabMouse(this.nativePtr);
	}
	
	public void UngrabMouse()
	{
		CQt.QGraphicsItem_UngrabMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QGraphicsItem_GrabKeyboard(this.nativePtr);
	}
	
	public void UngrabKeyboard()
	{
		CQt.QGraphicsItem_UngrabKeyboard(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsItem_Pos(this.nativePtr);
	}
	
	public double X()
	{
		return CQt.QGraphicsItem_X(this.nativePtr);
	}
	
	public void SetX(double x)
	{
		CQt.QGraphicsItem_SetX(this.nativePtr, x);
	}
	
	public double Y()
	{
		return CQt.QGraphicsItem_Y(this.nativePtr);
	}
	
	public void SetY(double y)
	{
		CQt.QGraphicsItem_SetY(this.nativePtr, y);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsItem_ScenePos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsItem_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void SetPos2(double x, double y)
	{
		CQt.QGraphicsItem_SetPos2(this.nativePtr, x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		CQt.QGraphicsItem_MoveBy(this.nativePtr, dx, dy);
	}
	
	public void EnsureVisible()
	{
		CQt.QGraphicsItem_EnsureVisible(this.nativePtr);
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_EnsureVisible2(this.nativePtr, x, y, w, h);
	}
	
	public void Transform()
	{
		CQt.QGraphicsItem_Transform(this.nativePtr);
	}
	
	public void SceneTransform()
	{
		CQt.QGraphicsItem_SceneTransform(this.nativePtr);
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		CQt.QGraphicsItem_DeviceTransform(this.nativePtr, (viewportTransform == default || viewportTransform.NativePtr == default) ? default : viewportTransform.NativePtr);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		CQt.QGraphicsItem_ItemTransform(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		CQt.QGraphicsItem_SetTransform(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public void ResetTransform()
	{
		CQt.QGraphicsItem_ResetTransform(this.nativePtr);
	}
	
	public void SetRotation(double angle)
	{
		CQt.QGraphicsItem_SetRotation(this.nativePtr, angle);
	}
	
	public double Rotation()
	{
		return CQt.QGraphicsItem_Rotation(this.nativePtr);
	}
	
	public void SetScale(double scale)
	{
		CQt.QGraphicsItem_SetScale(this.nativePtr, scale);
	}
	
	public double Scale()
	{
		return CQt.QGraphicsItem_Scale(this.nativePtr);
	}
	
	public void*[] Transformations()
	{
		return CQt.QGraphicsItem_Transformations(this.nativePtr);
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		CQt.QGraphicsItem_SetTransformations(this.nativePtr, null);
	}
	
	public void TransformOriginPoint()
	{
		CQt.QGraphicsItem_TransformOriginPoint(this.nativePtr);
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint(this.nativePtr, (origin == default || origin.NativePtr == default) ? default : origin.NativePtr);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint2(this.nativePtr, ax, ay);
	}
	
	public void Advance(int32 phase)
	{
		CQt.QGraphicsItem_Advance(this.nativePtr, phase);
	}
	
	public double ZValue()
	{
		return CQt.QGraphicsItem_ZValue(this.nativePtr);
	}
	
	public void SetZValue(double z)
	{
		CQt.QGraphicsItem_SetZValue(this.nativePtr, z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		CQt.QGraphicsItem_StackBefore(this.nativePtr, (sibling == default || sibling.NativePtr == default) ? default : sibling.NativePtr);
	}
	
	public void ChildrenBoundingRect()
	{
		CQt.QGraphicsItem_ChildrenBoundingRect(this.nativePtr);
	}
	
	public void SceneBoundingRect()
	{
		CQt.QGraphicsItem_SceneBoundingRect(this.nativePtr);
	}
	
	public void Shape()
	{
		CQt.QGraphicsItem_Shape(this.nativePtr);
	}
	
	public bool IsClipped()
	{
		return CQt.QGraphicsItem_IsClipped(this.nativePtr);
	}
	
	public void ClipPath()
	{
		CQt.QGraphicsItem_ClipPath(this.nativePtr);
	}
	
	public bool Contains(IQPointF point)
	{
		return CQt.QGraphicsItem_Contains(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, (int64)mode);
	}
	
	public bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode);
	}
	
	public void*[] CollidingItems()
	{
		return CQt.QGraphicsItem_CollidingItems(this.nativePtr);
	}
	
	public bool IsObscured()
	{
		return CQt.QGraphicsItem_IsObscured(this.nativePtr);
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return CQt.QGraphicsItem_IsObscured2(this.nativePtr, x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		CQt.QGraphicsItem_BoundingRegion(this.nativePtr, (itemToDeviceTransform == default || itemToDeviceTransform.NativePtr == default) ? default : itemToDeviceTransform.NativePtr);
	}
	
	public double BoundingRegionGranularity()
	{
		return CQt.QGraphicsItem_BoundingRegionGranularity(this.nativePtr);
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		CQt.QGraphicsItem_SetBoundingRegionGranularity(this.nativePtr, granularity);
	}
	
	public void Update()
	{
		CQt.QGraphicsItem_Update(this.nativePtr);
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		CQt.QGraphicsItem_Update2(this.nativePtr, x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		CQt.QGraphicsItem_Scroll(this.nativePtr, dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapToParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapToScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapToItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapToParent2(this.nativePtr, x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapToScene2(this.nativePtr, x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToScene2(this.nativePtr, x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapFromItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromParent2(this.nativePtr, x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromScene2(this.nativePtr, x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromScene2(this.nativePtr, x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return CQt.QGraphicsItem_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return CQt.QGraphicsItem_CommonAncestorItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsUnderMouse()
	{
		return CQt.QGraphicsItem_IsUnderMouse(this.nativePtr);
	}
	
	public void Data(int32 key)
	{
		CQt.QGraphicsItem_Data(this.nativePtr, key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		CQt.QGraphicsItem_SetData(this.nativePtr, key, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QGraphicsItem_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QGraphicsItem_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_InstallSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_RemoveSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsItem_SetFlag2(this.nativePtr, (int64)flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		CQt.QGraphicsItem_SetCacheMode2(this.nativePtr, (int64)mode, (cacheSize == default || cacheSize.NativePtr == default) ? default : cacheSize.NativePtr);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsItem_SetFocus1(this.nativePtr, (int64)focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		CQt.QGraphicsItem_EnsureVisible1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible5(this.nativePtr, x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible6(this.nativePtr, x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		CQt.QGraphicsItem_ItemTransform2(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		CQt.QGraphicsItem_SetTransform2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return CQt.QGraphicsItem_CollidingItems1(this.nativePtr, (int64)mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return CQt.QGraphicsItem_IsObscured1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Update1(IQRectF rect)
	{
		CQt.QGraphicsItem_Update1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		CQt.QGraphicsItem_Scroll3(this.nativePtr, dx, dy, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
}
public class QGraphicsItemGroup
{
	public QGraphicsItemGroupPtr handle;
	
	public static implicit operator QGraphicsItemGroupPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsItemGroupPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void AddToGroup(IQGraphicsItem item)
	{
		this.handle.AddToGroup(item);
	}
	
	public void RemoveFromGroup(IQGraphicsItem item)
	{
		this.handle.RemoveFromGroup(item);
	}
	
	public virtual void BoundingRect()
	{
		this.handle.BoundingRect();
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		this.handle.Paint(painter, option, widget);
	}
	
	public virtual bool IsObscuredBy(IQGraphicsItem item)
	{
		return this.handle.IsObscuredBy(item);
	}
	
	public virtual void OpaqueArea()
	{
		this.handle.OpaqueArea();
	}
	
	public virtual int32 Type()
	{
		return this.handle.Type();
	}
	
	public void* Scene()
	{
		return this.handle.Scene();
	}
	
	public void* ParentItem()
	{
		return this.handle.ParentItem();
	}
	
	public void* TopLevelItem()
	{
		return this.handle.TopLevelItem();
	}
	
	public void* ParentObject()
	{
		return this.handle.ParentObject();
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public void* TopLevelWidget()
	{
		return this.handle.TopLevelWidget();
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* Panel()
	{
		return this.handle.Panel();
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		this.handle.SetParentItem(parent);
	}
	
	public void*[] ChildItems()
	{
		return this.handle.ChildItems();
	}
	
	public bool IsWidget()
	{
		return this.handle.IsWidget();
	}
	
	public bool IsWindow()
	{
		return this.handle.IsWindow();
	}
	
	public bool IsPanel()
	{
		return this.handle.IsPanel();
	}
	
	public void* ToGraphicsObject()
	{
		return this.handle.ToGraphicsObject();
	}
	
	public void* ToGraphicsObject2()
	{
		return this.handle.ToGraphicsObject2();
	}
	
	public void* Group()
	{
		return this.handle.Group();
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		this.handle.SetGroup(group);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlag(int64 flag)
	{
		this.handle.SetFlag(flag);
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int64 CacheMode()
	{
		return this.handle.CacheMode();
	}
	
	public void SetCacheMode(int64 mode)
	{
		this.handle.SetCacheMode(mode);
	}
	
	public int64 PanelModality()
	{
		return this.handle.PanelModality();
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		this.handle.SetPanelModality(panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return this.handle.IsBlockedByModalPanel();
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public bool HasCursor()
	{
		return this.handle.HasCursor();
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return this.handle.IsVisibleTo(parent);
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public bool IsSelected()
	{
		return this.handle.IsSelected();
	}
	
	public void SetSelected(bool selected)
	{
		this.handle.SetSelected(selected);
	}
	
	public bool AcceptDrops()
	{
		return this.handle.AcceptDrops();
	}
	
	public void SetAcceptDrops(bool on)
	{
		this.handle.SetAcceptDrops(on);
	}
	
	public double Opacity()
	{
		return this.handle.Opacity();
	}
	
	public double EffectiveOpacity()
	{
		return this.handle.EffectiveOpacity();
	}
	
	public void SetOpacity(double opacity)
	{
		this.handle.SetOpacity(opacity);
	}
	
	public void* GraphicsEffect()
	{
		return this.handle.GraphicsEffect();
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		this.handle.SetGraphicsEffect(effect);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return this.handle.AcceptedMouseButtons();
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		this.handle.SetAcceptedMouseButtons(buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return this.handle.AcceptHoverEvents();
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		this.handle.SetAcceptHoverEvents(enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return this.handle.AcceptTouchEvents();
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		this.handle.SetAcceptTouchEvents(enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return this.handle.FiltersChildEvents();
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		this.handle.SetFiltersChildEvents(enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return this.handle.HandlesChildEvents();
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		this.handle.SetHandlesChildEvents(enabled);
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void SetActive(bool active)
	{
		this.handle.SetActive(active);
	}
	
	public bool HasFocus()
	{
		return this.handle.HasFocus();
	}
	
	public void SetFocus()
	{
		this.handle.SetFocus();
	}
	
	public void ClearFocus()
	{
		this.handle.ClearFocus();
	}
	
	public void* FocusProxy()
	{
		return this.handle.FocusProxy();
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		this.handle.SetFocusProxy(item);
	}
	
	public void* FocusItem()
	{
		return this.handle.FocusItem();
	}
	
	public void* FocusScopeItem()
	{
		return this.handle.FocusScopeItem();
	}
	
	public void GrabMouse()
	{
		this.handle.GrabMouse();
	}
	
	public void UngrabMouse()
	{
		this.handle.UngrabMouse();
	}
	
	public void GrabKeyboard()
	{
		this.handle.GrabKeyboard();
	}
	
	public void UngrabKeyboard()
	{
		this.handle.UngrabKeyboard();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public double X()
	{
		return this.handle.X();
	}
	
	public void SetX(double x)
	{
		this.handle.SetX(x);
	}
	
	public double Y()
	{
		return this.handle.Y();
	}
	
	public void SetY(double y)
	{
		this.handle.SetY(y);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void SetPos2(double x, double y)
	{
		this.handle.SetPos2(x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		this.handle.MoveBy(dx, dy);
	}
	
	public void EnsureVisible()
	{
		this.handle.EnsureVisible();
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		this.handle.EnsureVisible2(x, y, w, h);
	}
	
	public void Transform()
	{
		this.handle.Transform();
	}
	
	public void SceneTransform()
	{
		this.handle.SceneTransform();
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		this.handle.DeviceTransform(viewportTransform);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		this.handle.ItemTransform(other);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		this.handle.SetTransform(matrix);
	}
	
	public void ResetTransform()
	{
		this.handle.ResetTransform();
	}
	
	public void SetRotation(double angle)
	{
		this.handle.SetRotation(angle);
	}
	
	public double Rotation()
	{
		return this.handle.Rotation();
	}
	
	public void SetScale(double scale)
	{
		this.handle.SetScale(scale);
	}
	
	public double Scale()
	{
		return this.handle.Scale();
	}
	
	public void*[] Transformations()
	{
		return this.handle.Transformations();
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		this.handle.SetTransformations(null);
	}
	
	public void TransformOriginPoint()
	{
		this.handle.TransformOriginPoint();
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		this.handle.SetTransformOriginPoint(origin);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		this.handle.SetTransformOriginPoint2(ax, ay);
	}
	
	public virtual void Advance(int32 phase)
	{
		this.handle.Advance(phase);
	}
	
	public double ZValue()
	{
		return this.handle.ZValue();
	}
	
	public void SetZValue(double z)
	{
		this.handle.SetZValue(z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		this.handle.StackBefore(sibling);
	}
	
	public void ChildrenBoundingRect()
	{
		this.handle.ChildrenBoundingRect();
	}
	
	public void SceneBoundingRect()
	{
		this.handle.SceneBoundingRect();
	}
	
	public virtual void Shape()
	{
		this.handle.Shape();
	}
	
	public bool IsClipped()
	{
		return this.handle.IsClipped();
	}
	
	public void ClipPath()
	{
		this.handle.ClipPath();
	}
	
	public virtual bool Contains(IQPointF point)
	{
		return this.handle.Contains(point);
	}
	
	public virtual bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return this.handle.CollidesWithItem(other, mode);
	}
	
	public virtual bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return this.handle.CollidesWithPath(path, mode);
	}
	
	public void*[] CollidingItems()
	{
		return this.handle.CollidingItems();
	}
	
	public bool IsObscured()
	{
		return this.handle.IsObscured();
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return this.handle.IsObscured2(x, y, w, h);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		this.handle.BoundingRegion(itemToDeviceTransform);
	}
	
	public double BoundingRegionGranularity()
	{
		return this.handle.BoundingRegionGranularity();
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		this.handle.SetBoundingRegionGranularity(granularity);
	}
	
	public void Update()
	{
		this.handle.Update();
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		this.handle.Update2(x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		this.handle.Scroll(dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapToItem(item, point);
	}
	
	public void MapToParent(IQPointF point)
	{
		this.handle.MapToParent(point);
	}
	
	public void MapToScene(IQPointF point)
	{
		this.handle.MapToScene(point);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectToItem(item, rect);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		this.handle.MapRectToParent(rect);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		this.handle.MapRectToScene(rect);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapToItem4(item, path);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		this.handle.MapToParentWithPath(path);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		this.handle.MapToSceneWithPath(path);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapFromItem(item, point);
	}
	
	public void MapFromParent(IQPointF point)
	{
		this.handle.MapFromParent(point);
	}
	
	public void MapFromScene(IQPointF point)
	{
		this.handle.MapFromScene(point);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectFromItem(item, rect);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		this.handle.MapRectFromParent(rect);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		this.handle.MapRectFromScene(rect);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapFromItem4(item, path);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		this.handle.MapFromParentWithPath(path);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		this.handle.MapFromSceneWithPath(path);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapToItem5(item, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		this.handle.MapToParent2(x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		this.handle.MapToScene2(x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectToItem2(item, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectToParent2(x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectToScene2(x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapFromItem5(item, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		this.handle.MapFromParent2(x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		this.handle.MapFromScene2(x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectFromItem2(item, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromParent2(x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromScene2(x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return this.handle.CommonAncestorItem(other);
	}
	
	public bool IsUnderMouse()
	{
		return this.handle.IsUnderMouse();
	}
	
	public void Data(int32 key)
	{
		this.handle.Data(key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		this.handle.SetData(key, value);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.InstallSceneEventFilter(filterItem);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.RemoveSceneEventFilter(filterItem);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		this.handle.SetFlag2(flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		this.handle.SetCacheMode2(mode, cacheSize);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		this.handle.SetFocus1(focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		this.handle.EnsureVisible1(rect);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		this.handle.EnsureVisible22(rect, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible3(rect, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		this.handle.EnsureVisible5(x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible6(x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		this.handle.ItemTransform2(other, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		this.handle.SetTransform2(matrix, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return this.handle.CollidingItems1(mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return this.handle.IsObscured1(rect);
	}
	
	public void Update1(IQRectF rect)
	{
		this.handle.Update1(rect);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		this.handle.Scroll3(dx, dy, rect);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsItemGroup_new")]
	public static extern void* QGraphicsItemGroup_new();
	[LinkName("QGraphicsItemGroup_new2")]
	public static extern void* QGraphicsItemGroup_new2(void* parent);
	[LinkName("QGraphicsItemGroup_AddToGroup")]
	public static extern void QGraphicsItemGroup_AddToGroup(void* c_this, void* item);
	[LinkName("QGraphicsItemGroup_RemoveFromGroup")]
	public static extern void QGraphicsItemGroup_RemoveFromGroup(void* c_this, void* item);
	[LinkName("QGraphicsItemGroup_BoundingRect")]
	public static extern void QGraphicsItemGroup_BoundingRect(void* c_this);
	[LinkName("QGraphicsItemGroup_Paint")]
	public static extern void QGraphicsItemGroup_Paint(void* c_this, void* painter, void* option, void* widget);
	[LinkName("QGraphicsItemGroup_IsObscuredBy")]
	public static extern bool QGraphicsItemGroup_IsObscuredBy(void* c_this, void* item);
	[LinkName("QGraphicsItemGroup_OpaqueArea")]
	public static extern void QGraphicsItemGroup_OpaqueArea(void* c_this);
	[LinkName("QGraphicsItemGroup_Type")]
	public static extern int32 QGraphicsItemGroup_Type(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsItemGroup_Delete")]
	public static extern void QGraphicsItemGroup_Delete(void* self);
}