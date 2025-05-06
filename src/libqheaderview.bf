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
public struct QHeaderView
{
	[LinkName("QHeaderView_new")]
	public static extern void* QHeaderView_new(int64 orientation);
	[LinkName("QHeaderView_new2")]
	public static extern void* QHeaderView_new2(int64 orientation, QWidget parent);
	[LinkName("QHeaderView_MetaObject")]
	public static extern QMetaObject QHeaderView_MetaObject(void* c_this);
	[LinkName("QHeaderView_Metacast")]
	public static extern void QHeaderView_Metacast(void* c_this, char8[] param1);
	[LinkName("QHeaderView_Metacall")]
	public static extern int32 QHeaderView_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QHeaderView_Tr")]
	public static extern char8[] QHeaderView_Tr(char8[] s);
	[LinkName("QHeaderView_SetModel")]
	public static extern void QHeaderView_SetModel(void* c_this, QAbstractItemModel model);
	[LinkName("QHeaderView_Orientation")]
	public static extern int64 QHeaderView_Orientation(void* c_this);
	[LinkName("QHeaderView_Offset")]
	public static extern int32 QHeaderView_Offset(void* c_this);
	[LinkName("QHeaderView_Length")]
	public static extern int32 QHeaderView_Length(void* c_this);
	[LinkName("QHeaderView_SizeHint")]
	public static extern QSize QHeaderView_SizeHint(void* c_this);
	[LinkName("QHeaderView_SetVisible")]
	public static extern void QHeaderView_SetVisible(void* c_this, bool v);
	[LinkName("QHeaderView_SectionSizeHint")]
	public static extern int32 QHeaderView_SectionSizeHint(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_VisualIndexAt")]
	public static extern int32 QHeaderView_VisualIndexAt(void* c_this, int32 position);
	[LinkName("QHeaderView_LogicalIndexAt")]
	public static extern int32 QHeaderView_LogicalIndexAt(void* c_this, int32 position);
	[LinkName("QHeaderView_LogicalIndexAt2")]
	public static extern int32 QHeaderView_LogicalIndexAt2(void* c_this, int32 x, int32 y);
	[LinkName("QHeaderView_LogicalIndexAtWithPos")]
	public static extern int32 QHeaderView_LogicalIndexAtWithPos(void* c_this, QPoint pos);
	[LinkName("QHeaderView_SectionSize")]
	public static extern int32 QHeaderView_SectionSize(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_SectionPosition")]
	public static extern int32 QHeaderView_SectionPosition(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_SectionViewportPosition")]
	public static extern int32 QHeaderView_SectionViewportPosition(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_MoveSection")]
	public static extern void QHeaderView_MoveSection(void* c_this, int32 from, int32 to);
	[LinkName("QHeaderView_SwapSections")]
	public static extern void QHeaderView_SwapSections(void* c_this, int32 first, int32 second);
	[LinkName("QHeaderView_ResizeSection")]
	public static extern void QHeaderView_ResizeSection(void* c_this, int32 logicalIndex, int32 size);
	[LinkName("QHeaderView_ResizeSections")]
	public static extern void QHeaderView_ResizeSections(void* c_this, int64 mode);
	[LinkName("QHeaderView_IsSectionHidden")]
	public static extern bool QHeaderView_IsSectionHidden(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_SetSectionHidden")]
	public static extern void QHeaderView_SetSectionHidden(void* c_this, int32 logicalIndex, bool hide);
	[LinkName("QHeaderView_HiddenSectionCount")]
	public static extern int32 QHeaderView_HiddenSectionCount(void* c_this);
	[LinkName("QHeaderView_HideSection")]
	public static extern void QHeaderView_HideSection(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_ShowSection")]
	public static extern void QHeaderView_ShowSection(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_Count")]
	public static extern int32 QHeaderView_Count(void* c_this);
	[LinkName("QHeaderView_VisualIndex")]
	public static extern int32 QHeaderView_VisualIndex(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_LogicalIndex")]
	public static extern int32 QHeaderView_LogicalIndex(void* c_this, int32 visualIndex);
	[LinkName("QHeaderView_SetSectionsMovable")]
	public static extern void QHeaderView_SetSectionsMovable(void* c_this, bool movable);
	[LinkName("QHeaderView_SectionsMovable")]
	public static extern bool QHeaderView_SectionsMovable(void* c_this);
	[LinkName("QHeaderView_SetFirstSectionMovable")]
	public static extern void QHeaderView_SetFirstSectionMovable(void* c_this, bool movable);
	[LinkName("QHeaderView_IsFirstSectionMovable")]
	public static extern bool QHeaderView_IsFirstSectionMovable(void* c_this);
	[LinkName("QHeaderView_SetSectionsClickable")]
	public static extern void QHeaderView_SetSectionsClickable(void* c_this, bool clickable);
	[LinkName("QHeaderView_SectionsClickable")]
	public static extern bool QHeaderView_SectionsClickable(void* c_this);
	[LinkName("QHeaderView_SetHighlightSections")]
	public static extern void QHeaderView_SetHighlightSections(void* c_this, bool highlight);
	[LinkName("QHeaderView_HighlightSections")]
	public static extern bool QHeaderView_HighlightSections(void* c_this);
	[LinkName("QHeaderView_SectionResizeMode")]
	public static extern int64 QHeaderView_SectionResizeMode(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_SetSectionResizeMode")]
	public static extern void QHeaderView_SetSectionResizeMode(void* c_this, int64 mode);
	[LinkName("QHeaderView_SetSectionResizeMode2")]
	public static extern void QHeaderView_SetSectionResizeMode2(void* c_this, int32 logicalIndex, int64 mode);
	[LinkName("QHeaderView_SetResizeContentsPrecision")]
	public static extern void QHeaderView_SetResizeContentsPrecision(void* c_this, int32 precision);
	[LinkName("QHeaderView_ResizeContentsPrecision")]
	public static extern int32 QHeaderView_ResizeContentsPrecision(void* c_this);
	[LinkName("QHeaderView_StretchSectionCount")]
	public static extern int32 QHeaderView_StretchSectionCount(void* c_this);
	[LinkName("QHeaderView_SetSortIndicatorShown")]
	public static extern void QHeaderView_SetSortIndicatorShown(void* c_this, bool show);
	[LinkName("QHeaderView_IsSortIndicatorShown")]
	public static extern bool QHeaderView_IsSortIndicatorShown(void* c_this);
	[LinkName("QHeaderView_SetSortIndicator")]
	public static extern void QHeaderView_SetSortIndicator(void* c_this, int32 logicalIndex, int64 order);
	[LinkName("QHeaderView_SortIndicatorSection")]
	public static extern int32 QHeaderView_SortIndicatorSection(void* c_this);
	[LinkName("QHeaderView_SortIndicatorOrder")]
	public static extern int64 QHeaderView_SortIndicatorOrder(void* c_this);
	[LinkName("QHeaderView_SetSortIndicatorClearable")]
	public static extern void QHeaderView_SetSortIndicatorClearable(void* c_this, bool clearable);
	[LinkName("QHeaderView_IsSortIndicatorClearable")]
	public static extern bool QHeaderView_IsSortIndicatorClearable(void* c_this);
	[LinkName("QHeaderView_StretchLastSection")]
	public static extern bool QHeaderView_StretchLastSection(void* c_this);
	[LinkName("QHeaderView_SetStretchLastSection")]
	public static extern void QHeaderView_SetStretchLastSection(void* c_this, bool stretch);
	[LinkName("QHeaderView_CascadingSectionResizes")]
	public static extern bool QHeaderView_CascadingSectionResizes(void* c_this);
	[LinkName("QHeaderView_SetCascadingSectionResizes")]
	public static extern void QHeaderView_SetCascadingSectionResizes(void* c_this, bool enable);
	[LinkName("QHeaderView_DefaultSectionSize")]
	public static extern int32 QHeaderView_DefaultSectionSize(void* c_this);
	[LinkName("QHeaderView_SetDefaultSectionSize")]
	public static extern void QHeaderView_SetDefaultSectionSize(void* c_this, int32 size);
	[LinkName("QHeaderView_ResetDefaultSectionSize")]
	public static extern void QHeaderView_ResetDefaultSectionSize(void* c_this);
	[LinkName("QHeaderView_MinimumSectionSize")]
	public static extern int32 QHeaderView_MinimumSectionSize(void* c_this);
	[LinkName("QHeaderView_SetMinimumSectionSize")]
	public static extern void QHeaderView_SetMinimumSectionSize(void* c_this, int32 size);
	[LinkName("QHeaderView_MaximumSectionSize")]
	public static extern int32 QHeaderView_MaximumSectionSize(void* c_this);
	[LinkName("QHeaderView_SetMaximumSectionSize")]
	public static extern void QHeaderView_SetMaximumSectionSize(void* c_this, int32 size);
	[LinkName("QHeaderView_DefaultAlignment")]
	public static extern int64 QHeaderView_DefaultAlignment(void* c_this);
	[LinkName("QHeaderView_SetDefaultAlignment")]
	public static extern void QHeaderView_SetDefaultAlignment(void* c_this, int64 alignment);
	[LinkName("QHeaderView_DoItemsLayout")]
	public static extern void QHeaderView_DoItemsLayout(void* c_this);
	[LinkName("QHeaderView_SectionsMoved")]
	public static extern bool QHeaderView_SectionsMoved(void* c_this);
	[LinkName("QHeaderView_SectionsHidden")]
	public static extern bool QHeaderView_SectionsHidden(void* c_this);
	[LinkName("QHeaderView_SaveState")]
	public static extern uint8[] QHeaderView_SaveState(void* c_this);
	[LinkName("QHeaderView_RestoreState")]
	public static extern bool QHeaderView_RestoreState(void* c_this, uint8[] state);
	[LinkName("QHeaderView_Reset")]
	public static extern void QHeaderView_Reset(void* c_this);
	[LinkName("QHeaderView_SetOffset")]
	public static extern void QHeaderView_SetOffset(void* c_this, int32 offset);
	[LinkName("QHeaderView_SetOffsetToSectionPosition")]
	public static extern void QHeaderView_SetOffsetToSectionPosition(void* c_this, int32 visualIndex);
	[LinkName("QHeaderView_SetOffsetToLastSection")]
	public static extern void QHeaderView_SetOffsetToLastSection(void* c_this);
	[LinkName("QHeaderView_HeaderDataChanged")]
	public static extern void QHeaderView_HeaderDataChanged(void* c_this, int64 orientation, int32 logicalFirst, int32 logicalLast);
	[LinkName("QHeaderView_SectionMoved")]
	public static extern void QHeaderView_SectionMoved(void* c_this, int32 logicalIndex, int32 oldVisualIndex, int32 newVisualIndex);
	[LinkName("QHeaderView_SectionResized")]
	public static extern void QHeaderView_SectionResized(void* c_this, int32 logicalIndex, int32 oldSize, int32 newSize);
	[LinkName("QHeaderView_SectionPressed")]
	public static extern void QHeaderView_SectionPressed(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_SectionClicked")]
	public static extern void QHeaderView_SectionClicked(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_SectionEntered")]
	public static extern void QHeaderView_SectionEntered(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_SectionDoubleClicked")]
	public static extern void QHeaderView_SectionDoubleClicked(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_SectionCountChanged")]
	public static extern void QHeaderView_SectionCountChanged(void* c_this, int32 oldCount, int32 newCount);
	[LinkName("QHeaderView_SectionHandleDoubleClicked")]
	public static extern void QHeaderView_SectionHandleDoubleClicked(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_GeometriesChanged")]
	public static extern void QHeaderView_GeometriesChanged(void* c_this);
	[LinkName("QHeaderView_SortIndicatorChanged")]
	public static extern void QHeaderView_SortIndicatorChanged(void* c_this, int32 logicalIndex, int64 order);
	[LinkName("QHeaderView_SortIndicatorClearableChanged")]
	public static extern void QHeaderView_SortIndicatorClearableChanged(void* c_this, bool clearable);
	[LinkName("QHeaderView_UpdateSection")]
	public static extern void QHeaderView_UpdateSection(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_ResizeSections2")]
	public static extern void QHeaderView_ResizeSections2(void* c_this);
	[LinkName("QHeaderView_SectionsInserted")]
	public static extern void QHeaderView_SectionsInserted(void* c_this, QModelIndex parent, int32 logicalFirst, int32 logicalLast);
	[LinkName("QHeaderView_SectionsAboutToBeRemoved")]
	public static extern void QHeaderView_SectionsAboutToBeRemoved(void* c_this, QModelIndex parent, int32 logicalFirst, int32 logicalLast);
	[LinkName("QHeaderView_Initialize")]
	public static extern void QHeaderView_Initialize(void* c_this);
	[LinkName("QHeaderView_InitializeSections")]
	public static extern void QHeaderView_InitializeSections(void* c_this);
	[LinkName("QHeaderView_InitializeSections2")]
	public static extern void QHeaderView_InitializeSections2(void* c_this, int32 start, int32 end);
	[LinkName("QHeaderView_CurrentChanged")]
	public static extern void QHeaderView_CurrentChanged(void* c_this, QModelIndex current, QModelIndex old);
	[LinkName("QHeaderView_Event")]
	public static extern bool QHeaderView_Event(void* c_this, QEvent e);
	[LinkName("QHeaderView_PaintEvent")]
	public static extern void QHeaderView_PaintEvent(void* c_this, QPaintEvent e);
	[LinkName("QHeaderView_MousePressEvent")]
	public static extern void QHeaderView_MousePressEvent(void* c_this, QMouseEvent e);
	[LinkName("QHeaderView_MouseMoveEvent")]
	public static extern void QHeaderView_MouseMoveEvent(void* c_this, QMouseEvent e);
	[LinkName("QHeaderView_MouseReleaseEvent")]
	public static extern void QHeaderView_MouseReleaseEvent(void* c_this, QMouseEvent e);
	[LinkName("QHeaderView_MouseDoubleClickEvent")]
	public static extern void QHeaderView_MouseDoubleClickEvent(void* c_this, QMouseEvent e);
	[LinkName("QHeaderView_ViewportEvent")]
	public static extern bool QHeaderView_ViewportEvent(void* c_this, QEvent e);
	[LinkName("QHeaderView_PaintSection")]
	public static extern void QHeaderView_PaintSection(void* c_this, QPainter painter, QRect rect, int32 logicalIndex);
	[LinkName("QHeaderView_SectionSizeFromContents")]
	public static extern QSize QHeaderView_SectionSizeFromContents(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_HorizontalOffset")]
	public static extern int32 QHeaderView_HorizontalOffset(void* c_this);
	[LinkName("QHeaderView_VerticalOffset")]
	public static extern int32 QHeaderView_VerticalOffset(void* c_this);
	[LinkName("QHeaderView_UpdateGeometries")]
	public static extern void QHeaderView_UpdateGeometries(void* c_this);
	[LinkName("QHeaderView_ScrollContentsBy")]
	public static extern void QHeaderView_ScrollContentsBy(void* c_this, int32 dx, int32 dy);
	[LinkName("QHeaderView_DataChanged")]
	public static extern void QHeaderView_DataChanged(void* c_this, QModelIndex topLeft, QModelIndex bottomRight, int32[] roles);
	[LinkName("QHeaderView_RowsInserted")]
	public static extern void QHeaderView_RowsInserted(void* c_this, QModelIndex parent, int32 start, int32 end);
	[LinkName("QHeaderView_VisualRect")]
	public static extern QRect QHeaderView_VisualRect(void* c_this, QModelIndex index);
	[LinkName("QHeaderView_ScrollTo")]
	public static extern void QHeaderView_ScrollTo(void* c_this, QModelIndex index, int64 hint);
	[LinkName("QHeaderView_IndexAt")]
	public static extern QModelIndex QHeaderView_IndexAt(void* c_this, QPoint p);
	[LinkName("QHeaderView_IsIndexHidden")]
	public static extern bool QHeaderView_IsIndexHidden(void* c_this, QModelIndex index);
	[LinkName("QHeaderView_MoveCursor")]
	public static extern QModelIndex QHeaderView_MoveCursor(void* c_this, int64 param1, int64 param2);
	[LinkName("QHeaderView_SetSelection")]
	public static extern void QHeaderView_SetSelection(void* c_this, QRect rect, int64 flags);
	[LinkName("QHeaderView_VisualRegionForSelection")]
	public static extern QRegion QHeaderView_VisualRegionForSelection(void* c_this, QItemSelection selection);
	[LinkName("QHeaderView_InitStyleOptionForIndex")]
	public static extern void QHeaderView_InitStyleOptionForIndex(void* c_this, QStyleOptionHeader option, int32 logicalIndex);
	[LinkName("QHeaderView_InitStyleOption")]
	public static extern void QHeaderView_InitStyleOption(void* c_this, QStyleOptionHeader option);
	[LinkName("QHeaderView_Tr2")]
	public static extern char8[] QHeaderView_Tr2(char8[] s, char8[] c);
	[LinkName("QHeaderView_Tr3")]
	public static extern char8[] QHeaderView_Tr3(char8[] s, char8[] c, int32 n);
}