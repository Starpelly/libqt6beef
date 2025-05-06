using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QPrintPreviewWidget__ViewMode
{
	SinglePageView = 0,
	FacingPagesView = 1,
	AllPagesView = 2,
}
[AllowDuplicates]
public enum QPrintPreviewWidget__ZoomMode
{
	CustomZoom = 0,
	FitToWidth = 1,
	FitInView = 2,
}
public struct QPrintPreviewWidget
{
	[LinkName("QPrintPreviewWidget_new")]
	public static extern void* QPrintPreviewWidget_new(QWidget parent);
	[LinkName("QPrintPreviewWidget_new2")]
	public static extern void* QPrintPreviewWidget_new2(QPrinter printer);
	[LinkName("QPrintPreviewWidget_new3")]
	public static extern void* QPrintPreviewWidget_new3();
	[LinkName("QPrintPreviewWidget_new4")]
	public static extern void* QPrintPreviewWidget_new4(QPrinter printer, QWidget parent);
	[LinkName("QPrintPreviewWidget_new5")]
	public static extern void* QPrintPreviewWidget_new5(QPrinter printer, QWidget parent, int64 flags);
	[LinkName("QPrintPreviewWidget_new6")]
	public static extern void* QPrintPreviewWidget_new6(QWidget parent, int64 flags);
	[LinkName("QPrintPreviewWidget_MetaObject")]
	public static extern QMetaObject QPrintPreviewWidget_MetaObject(void* c_this);
	[LinkName("QPrintPreviewWidget_Metacast")]
	public static extern void QPrintPreviewWidget_Metacast(void* c_this, char8[] param1);
	[LinkName("QPrintPreviewWidget_Metacall")]
	public static extern int32 QPrintPreviewWidget_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QPrintPreviewWidget_Tr")]
	public static extern char8[] QPrintPreviewWidget_Tr(char8[] s);
	[LinkName("QPrintPreviewWidget_ZoomFactor")]
	public static extern double QPrintPreviewWidget_ZoomFactor(void* c_this);
	[LinkName("QPrintPreviewWidget_Orientation")]
	public static extern int64 QPrintPreviewWidget_Orientation(void* c_this);
	[LinkName("QPrintPreviewWidget_ViewMode")]
	public static extern int64 QPrintPreviewWidget_ViewMode(void* c_this);
	[LinkName("QPrintPreviewWidget_ZoomMode")]
	public static extern int64 QPrintPreviewWidget_ZoomMode(void* c_this);
	[LinkName("QPrintPreviewWidget_CurrentPage")]
	public static extern int32 QPrintPreviewWidget_CurrentPage(void* c_this);
	[LinkName("QPrintPreviewWidget_PageCount")]
	public static extern int32 QPrintPreviewWidget_PageCount(void* c_this);
	[LinkName("QPrintPreviewWidget_SetVisible")]
	public static extern void QPrintPreviewWidget_SetVisible(void* c_this, bool visible);
	[LinkName("QPrintPreviewWidget_Print")]
	public static extern void QPrintPreviewWidget_Print(void* c_this);
	[LinkName("QPrintPreviewWidget_ZoomIn")]
	public static extern void QPrintPreviewWidget_ZoomIn(void* c_this);
	[LinkName("QPrintPreviewWidget_ZoomOut")]
	public static extern void QPrintPreviewWidget_ZoomOut(void* c_this);
	[LinkName("QPrintPreviewWidget_SetZoomFactor")]
	public static extern void QPrintPreviewWidget_SetZoomFactor(void* c_this, double zoomFactor);
	[LinkName("QPrintPreviewWidget_SetOrientation")]
	public static extern void QPrintPreviewWidget_SetOrientation(void* c_this, int64 orientation);
	[LinkName("QPrintPreviewWidget_SetViewMode")]
	public static extern void QPrintPreviewWidget_SetViewMode(void* c_this, int64 viewMode);
	[LinkName("QPrintPreviewWidget_SetZoomMode")]
	public static extern void QPrintPreviewWidget_SetZoomMode(void* c_this, int64 zoomMode);
	[LinkName("QPrintPreviewWidget_SetCurrentPage")]
	public static extern void QPrintPreviewWidget_SetCurrentPage(void* c_this, int32 pageNumber);
	[LinkName("QPrintPreviewWidget_FitToWidth")]
	public static extern void QPrintPreviewWidget_FitToWidth(void* c_this);
	[LinkName("QPrintPreviewWidget_FitInView")]
	public static extern void QPrintPreviewWidget_FitInView(void* c_this);
	[LinkName("QPrintPreviewWidget_SetLandscapeOrientation")]
	public static extern void QPrintPreviewWidget_SetLandscapeOrientation(void* c_this);
	[LinkName("QPrintPreviewWidget_SetPortraitOrientation")]
	public static extern void QPrintPreviewWidget_SetPortraitOrientation(void* c_this);
	[LinkName("QPrintPreviewWidget_SetSinglePageViewMode")]
	public static extern void QPrintPreviewWidget_SetSinglePageViewMode(void* c_this);
	[LinkName("QPrintPreviewWidget_SetFacingPagesViewMode")]
	public static extern void QPrintPreviewWidget_SetFacingPagesViewMode(void* c_this);
	[LinkName("QPrintPreviewWidget_SetAllPagesViewMode")]
	public static extern void QPrintPreviewWidget_SetAllPagesViewMode(void* c_this);
	[LinkName("QPrintPreviewWidget_UpdatePreview")]
	public static extern void QPrintPreviewWidget_UpdatePreview(void* c_this);
	[LinkName("QPrintPreviewWidget_PaintRequested")]
	public static extern void QPrintPreviewWidget_PaintRequested(void* c_this, QPrinter printer);
	[LinkName("QPrintPreviewWidget_PreviewChanged")]
	public static extern void QPrintPreviewWidget_PreviewChanged(void* c_this);
	[LinkName("QPrintPreviewWidget_Tr2")]
	public static extern char8[] QPrintPreviewWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QPrintPreviewWidget_Tr3")]
	public static extern char8[] QPrintPreviewWidget_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QPrintPreviewWidget_ZoomIn1")]
	public static extern void QPrintPreviewWidget_ZoomIn1(void* c_this, double zoom);
	[LinkName("QPrintPreviewWidget_ZoomOut1")]
	public static extern void QPrintPreviewWidget_ZoomOut1(void* c_this, double zoom);
}