using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QHeaderView__ResizeMode
{
	Interactive = 0,
	Stretch = 1,
	Fixed = 2,
	ResizeToContents = 3,
	Custom = 2,
}
public struct QHeaderView : QAbstractItemView
{
	[LinkName("QHeaderView_new")]
	public static extern QHeaderView* QHeaderView_new(int64 orientation);
	[LinkName("QHeaderView_new2")]
	public static extern QHeaderView* QHeaderView_new2(int64 orientation, QWidget* parent);
	[LinkName("QHeaderView_MetaObject")]
	public static extern QMetaObject* QHeaderView_MetaObject(Self* c_this);
	[LinkName("QHeaderView_Metacast")]
	public static extern void* QHeaderView_Metacast(Self* c_this, char8[] param1);
	[LinkName("QHeaderView_Metacall")]
	public static extern int32 QHeaderView_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QHeaderView_Tr")]
	public static extern libqt_string QHeaderView_Tr(char8[] s);
	[LinkName("QHeaderView_SetModel")]
	public static extern void QHeaderView_SetModel(Self* c_this, QAbstractItemModel* model);
	[LinkName("QHeaderView_Orientation")]
	public static extern int64 QHeaderView_Orientation(Self* c_this);
	[LinkName("QHeaderView_Offset")]
	public static extern int32 QHeaderView_Offset(Self* c_this);
	[LinkName("QHeaderView_Length")]
	public static extern int32 QHeaderView_Length(Self* c_this);
	[LinkName("QHeaderView_SizeHint")]
	public static extern QSize QHeaderView_SizeHint(Self* c_this);
	[LinkName("QHeaderView_SetVisible")]
	public static extern void QHeaderView_SetVisible(Self* c_this, bool v);
	[LinkName("QHeaderView_SectionSizeHint")]
	public static extern int32 QHeaderView_SectionSizeHint(Self* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_VisualIndexAt")]
	public static extern int32 QHeaderView_VisualIndexAt(Self* c_this, int32 position);
	[LinkName("QHeaderView_LogicalIndexAt")]
	public static extern int32 QHeaderView_LogicalIndexAt(Self* c_this, int32 position);
	[LinkName("QHeaderView_LogicalIndexAt2")]
	public static extern int32 QHeaderView_LogicalIndexAt2(Self* c_this, int32 x, int32 y);
	[LinkName("QHeaderView_LogicalIndexAtWithPos")]
	public static extern int32 QHeaderView_LogicalIndexAtWithPos(Self* c_this, QPoint* pos);
	[LinkName("QHeaderView_SectionSize")]
	public static extern int32 QHeaderView_SectionSize(Self* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_SectionPosition")]
	public static extern int32 QHeaderView_SectionPosition(Self* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_SectionViewportPosition")]
	public static extern int32 QHeaderView_SectionViewportPosition(Self* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_MoveSection")]
	public static extern void QHeaderView_MoveSection(Self* c_this, int32 from, int32 to);
	[LinkName("QHeaderView_SwapSections")]
	public static extern void QHeaderView_SwapSections(Self* c_this, int32 first, int32 second);
	[LinkName("QHeaderView_ResizeSection")]
	public static extern void QHeaderView_ResizeSection(Self* c_this, int32 logicalIndex, int32 size);
	[LinkName("QHeaderView_ResizeSections")]
	public static extern void QHeaderView_ResizeSections(Self* c_this, int64 mode);
	[LinkName("QHeaderView_IsSectionHidden")]
	public static extern bool QHeaderView_IsSectionHidden(Self* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_SetSectionHidden")]
	public static extern void QHeaderView_SetSectionHidden(Self* c_this, int32 logicalIndex, bool hide);
	[LinkName("QHeaderView_HiddenSectionCount")]
	public static extern int32 QHeaderView_HiddenSectionCount(Self* c_this);
	[LinkName("QHeaderView_HideSection")]
	public static extern void QHeaderView_HideSection(Self* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_ShowSection")]
	public static extern void QHeaderView_ShowSection(Self* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_Count")]
	public static extern int32 QHeaderView_Count(Self* c_this);
	[LinkName("QHeaderView_VisualIndex")]
	public static extern int32 QHeaderView_VisualIndex(Self* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_LogicalIndex")]
	public static extern int32 QHeaderView_LogicalIndex(Self* c_this, int32 visualIndex);
	[LinkName("QHeaderView_SetSectionsMovable")]
	public static extern void QHeaderView_SetSectionsMovable(Self* c_this, bool movable);
	[LinkName("QHeaderView_SectionsMovable")]
	public static extern bool QHeaderView_SectionsMovable(Self* c_this);
	[LinkName("QHeaderView_SetFirstSectionMovable")]
	public static extern void QHeaderView_SetFirstSectionMovable(Self* c_this, bool movable);
	[LinkName("QHeaderView_IsFirstSectionMovable")]
	public static extern bool QHeaderView_IsFirstSectionMovable(Self* c_this);
	[LinkName("QHeaderView_SetSectionsClickable")]
	public static extern void QHeaderView_SetSectionsClickable(Self* c_this, bool clickable);
	[LinkName("QHeaderView_SectionsClickable")]
	public static extern bool QHeaderView_SectionsClickable(Self* c_this);
	[LinkName("QHeaderView_SetHighlightSections")]
	public static extern void QHeaderView_SetHighlightSections(Self* c_this, bool highlight);
	[LinkName("QHeaderView_HighlightSections")]
	public static extern bool QHeaderView_HighlightSections(Self* c_this);
	[LinkName("QHeaderView_SectionResizeMode")]
	public static extern int64 QHeaderView_SectionResizeMode(Self* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_SetSectionResizeMode")]
	public static extern void QHeaderView_SetSectionResizeMode(Self* c_this, int64 mode);
	[LinkName("QHeaderView_SetSectionResizeMode2")]
	public static extern void QHeaderView_SetSectionResizeMode2(Self* c_this, int32 logicalIndex, int64 mode);
	[LinkName("QHeaderView_SetResizeContentsPrecision")]
	public static extern void QHeaderView_SetResizeContentsPrecision(Self* c_this, int32 precision);
	[LinkName("QHeaderView_ResizeContentsPrecision")]
	public static extern int32 QHeaderView_ResizeContentsPrecision(Self* c_this);
	[LinkName("QHeaderView_StretchSectionCount")]
	public static extern int32 QHeaderView_StretchSectionCount(Self* c_this);
	[LinkName("QHeaderView_SetSortIndicatorShown")]
	public static extern void QHeaderView_SetSortIndicatorShown(Self* c_this, bool show);
	[LinkName("QHeaderView_IsSortIndicatorShown")]
	public static extern bool QHeaderView_IsSortIndicatorShown(Self* c_this);
	[LinkName("QHeaderView_SetSortIndicator")]
	public static extern void QHeaderView_SetSortIndicator(Self* c_this, int32 logicalIndex, int64 order);
	[LinkName("QHeaderView_SortIndicatorSection")]
	public static extern int32 QHeaderView_SortIndicatorSection(Self* c_this);
	[LinkName("QHeaderView_SortIndicatorOrder")]
	public static extern int64 QHeaderView_SortIndicatorOrder(Self* c_this);
	[LinkName("QHeaderView_SetSortIndicatorClearable")]
	public static extern void QHeaderView_SetSortIndicatorClearable(Self* c_this, bool clearable);
	[LinkName("QHeaderView_IsSortIndicatorClearable")]
	public static extern bool QHeaderView_IsSortIndicatorClearable(Self* c_this);
	[LinkName("QHeaderView_StretchLastSection")]
	public static extern bool QHeaderView_StretchLastSection(Self* c_this);
	[LinkName("QHeaderView_SetStretchLastSection")]
	public static extern void QHeaderView_SetStretchLastSection(Self* c_this, bool stretch);
	[LinkName("QHeaderView_CascadingSectionResizes")]
	public static extern bool QHeaderView_CascadingSectionResizes(Self* c_this);
	[LinkName("QHeaderView_SetCascadingSectionResizes")]
	public static extern void QHeaderView_SetCascadingSectionResizes(Self* c_this, bool enable);
	[LinkName("QHeaderView_DefaultSectionSize")]
	public static extern int32 QHeaderView_DefaultSectionSize(Self* c_this);
	[LinkName("QHeaderView_SetDefaultSectionSize")]
	public static extern void QHeaderView_SetDefaultSectionSize(Self* c_this, int32 size);
	[LinkName("QHeaderView_ResetDefaultSectionSize")]
	public static extern void QHeaderView_ResetDefaultSectionSize(Self* c_this);
	[LinkName("QHeaderView_MinimumSectionSize")]
	public static extern int32 QHeaderView_MinimumSectionSize(Self* c_this);
	[LinkName("QHeaderView_SetMinimumSectionSize")]
	public static extern void QHeaderView_SetMinimumSectionSize(Self* c_this, int32 size);
	[LinkName("QHeaderView_MaximumSectionSize")]
	public static extern int32 QHeaderView_MaximumSectionSize(Self* c_this);
	[LinkName("QHeaderView_SetMaximumSectionSize")]
	public static extern void QHeaderView_SetMaximumSectionSize(Self* c_this, int32 size);
	[LinkName("QHeaderView_DefaultAlignment")]
	public static extern int64 QHeaderView_DefaultAlignment(Self* c_this);
	[LinkName("QHeaderView_SetDefaultAlignment")]
	public static extern void QHeaderView_SetDefaultAlignment(Self* c_this, int64 alignment);
	[LinkName("QHeaderView_DoItemsLayout")]
	public static extern void QHeaderView_DoItemsLayout(Self* c_this);
	[LinkName("QHeaderView_SectionsMoved")]
	public static extern bool QHeaderView_SectionsMoved(Self* c_this);
	[LinkName("QHeaderView_SectionsHidden")]
	public static extern bool QHeaderView_SectionsHidden(Self* c_this);
	[LinkName("QHeaderView_SaveState")]
	public static extern libqt_string QHeaderView_SaveState(Self* c_this);
	[LinkName("QHeaderView_RestoreState")]
	public static extern bool QHeaderView_RestoreState(Self* c_this, libqt_string state);
	[LinkName("QHeaderView_Reset")]
	public static extern void QHeaderView_Reset(Self* c_this);
	[LinkName("QHeaderView_SetOffset")]
	public static extern void QHeaderView_SetOffset(Self* c_this, int32 offset);
	[LinkName("QHeaderView_SetOffsetToSectionPosition")]
	public static extern void QHeaderView_SetOffsetToSectionPosition(Self* c_this, int32 visualIndex);
	[LinkName("QHeaderView_SetOffsetToLastSection")]
	public static extern void QHeaderView_SetOffsetToLastSection(Self* c_this);
	[LinkName("QHeaderView_HeaderDataChanged")]
	public static extern void QHeaderView_HeaderDataChanged(Self* c_this, int64 orientation, int32 logicalFirst, int32 logicalLast);
	[LinkName("QHeaderView_Connect_SectionMoved")]
	public static extern void QHeaderView_Connect_SectionMoved(Self* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SectionResized")]
	public static extern void QHeaderView_Connect_SectionResized(Self* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SectionPressed")]
	public static extern void QHeaderView_Connect_SectionPressed(Self* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SectionClicked")]
	public static extern void QHeaderView_Connect_SectionClicked(Self* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SectionEntered")]
	public static extern void QHeaderView_Connect_SectionEntered(Self* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SectionDoubleClicked")]
	public static extern void QHeaderView_Connect_SectionDoubleClicked(Self* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SectionCountChanged")]
	public static extern void QHeaderView_Connect_SectionCountChanged(Self* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SectionHandleDoubleClicked")]
	public static extern void QHeaderView_Connect_SectionHandleDoubleClicked(Self* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_GeometriesChanged")]
	public static extern void QHeaderView_Connect_GeometriesChanged(Self* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SortIndicatorChanged")]
	public static extern void QHeaderView_Connect_SortIndicatorChanged(Self* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SortIndicatorClearableChanged")]
	public static extern void QHeaderView_Connect_SortIndicatorClearableChanged(Self* c_this, c_intptr slot);
	[LinkName("QHeaderView_UpdateSection")]
	public static extern void QHeaderView_UpdateSection(Self* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_ResizeSections2")]
	public static extern void QHeaderView_ResizeSections2(Self* c_this);
	[LinkName("QHeaderView_SectionsInserted")]
	public static extern void QHeaderView_SectionsInserted(Self* c_this, QModelIndex* parent, int32 logicalFirst, int32 logicalLast);
	[LinkName("QHeaderView_SectionsAboutToBeRemoved")]
	public static extern void QHeaderView_SectionsAboutToBeRemoved(Self* c_this, QModelIndex* parent, int32 logicalFirst, int32 logicalLast);
	[LinkName("QHeaderView_Initialize")]
	public static extern void QHeaderView_Initialize(Self* c_this);
	[LinkName("QHeaderView_InitializeSections")]
	public static extern void QHeaderView_InitializeSections(Self* c_this);
	[LinkName("QHeaderView_InitializeSections2")]
	public static extern void QHeaderView_InitializeSections2(Self* c_this, int32 start, int32 end);
	[LinkName("QHeaderView_CurrentChanged")]
	public static extern void QHeaderView_CurrentChanged(Self* c_this, QModelIndex* current, QModelIndex* old);
	[LinkName("QHeaderView_Event")]
	public static extern bool QHeaderView_Event(Self* c_this, QEvent* e);
	[LinkName("QHeaderView_PaintEvent")]
	public static extern void QHeaderView_PaintEvent(Self* c_this, QPaintEvent* e);
	[LinkName("QHeaderView_MousePressEvent")]
	public static extern void QHeaderView_MousePressEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QHeaderView_MouseMoveEvent")]
	public static extern void QHeaderView_MouseMoveEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QHeaderView_MouseReleaseEvent")]
	public static extern void QHeaderView_MouseReleaseEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QHeaderView_MouseDoubleClickEvent")]
	public static extern void QHeaderView_MouseDoubleClickEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QHeaderView_ViewportEvent")]
	public static extern bool QHeaderView_ViewportEvent(Self* c_this, QEvent* e);
	[LinkName("QHeaderView_PaintSection")]
	public static extern void QHeaderView_PaintSection(Self* c_this, QPainter* painter, QRect* rect, int32 logicalIndex);
	[LinkName("QHeaderView_SectionSizeFromContents")]
	public static extern QSize QHeaderView_SectionSizeFromContents(Self* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_HorizontalOffset")]
	public static extern int32 QHeaderView_HorizontalOffset(Self* c_this);
	[LinkName("QHeaderView_VerticalOffset")]
	public static extern int32 QHeaderView_VerticalOffset(Self* c_this);
	[LinkName("QHeaderView_UpdateGeometries")]
	public static extern void QHeaderView_UpdateGeometries(Self* c_this);
	[LinkName("QHeaderView_ScrollContentsBy")]
	public static extern void QHeaderView_ScrollContentsBy(Self* c_this, int32 dx, int32 dy);
	[LinkName("QHeaderView_DataChanged")]
	public static extern void QHeaderView_DataChanged(Self* c_this, QModelIndex* topLeft, QModelIndex* bottomRight, int32[] roles);
	[LinkName("QHeaderView_RowsInserted")]
	public static extern void QHeaderView_RowsInserted(Self* c_this, QModelIndex* parent, int32 start, int32 end);
	[LinkName("QHeaderView_VisualRect")]
	public static extern QRect QHeaderView_VisualRect(Self* c_this, QModelIndex* index);
	[LinkName("QHeaderView_ScrollTo")]
	public static extern void QHeaderView_ScrollTo(Self* c_this, QModelIndex* index, int64 hint);
	[LinkName("QHeaderView_IndexAt")]
	public static extern QModelIndex QHeaderView_IndexAt(Self* c_this, QPoint* p);
	[LinkName("QHeaderView_IsIndexHidden")]
	public static extern bool QHeaderView_IsIndexHidden(Self* c_this, QModelIndex* index);
	[LinkName("QHeaderView_MoveCursor")]
	public static extern QModelIndex QHeaderView_MoveCursor(Self* c_this, int64 param1, int64 param2);
	[LinkName("QHeaderView_SetSelection")]
	public static extern void QHeaderView_SetSelection(Self* c_this, QRect* rect, int64 flags);
	[LinkName("QHeaderView_VisualRegionForSelection")]
	public static extern QRegion QHeaderView_VisualRegionForSelection(Self* c_this, QItemSelection* selection);
	[LinkName("QHeaderView_InitStyleOptionForIndex")]
	public static extern void QHeaderView_InitStyleOptionForIndex(Self* c_this, QStyleOptionHeader* option, int32 logicalIndex);
	[LinkName("QHeaderView_InitStyleOption")]
	public static extern void QHeaderView_InitStyleOption(Self* c_this, QStyleOptionHeader* option);
	[LinkName("QHeaderView_Tr2")]
	public static extern libqt_string QHeaderView_Tr2(char8[] s, char8[] c);
	[LinkName("QHeaderView_Tr3")]
	public static extern libqt_string QHeaderView_Tr3(char8[] s, char8[] c, int32 n);
}