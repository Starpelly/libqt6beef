using System;
using System.Interop;
namespace Qt;

public struct QAbstractTextDocumentLayout
{
	[LinkName("QAbstractTextDocumentLayout_new")]
	public static extern void* QAbstractTextDocumentLayout_new(QTextDocument doc);
	[LinkName("QAbstractTextDocumentLayout_MetaObject")]
	public static extern QMetaObject QAbstractTextDocumentLayout_MetaObject(void* c_this);
	[LinkName("QAbstractTextDocumentLayout_Metacast")]
	public static extern void QAbstractTextDocumentLayout_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractTextDocumentLayout_Metacall")]
	public static extern int32 QAbstractTextDocumentLayout_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAbstractTextDocumentLayout_Tr")]
	public static extern char8[] QAbstractTextDocumentLayout_Tr(char8[] s);
	[LinkName("QAbstractTextDocumentLayout_Draw")]
	public static extern void QAbstractTextDocumentLayout_Draw(void* c_this, QPainter painter, QAbstractTextDocumentLayout__PaintContext context);
	[LinkName("QAbstractTextDocumentLayout_HitTest")]
	public static extern int32 QAbstractTextDocumentLayout_HitTest(void* c_this, QPointF point, int64 accuracy);
	[LinkName("QAbstractTextDocumentLayout_AnchorAt")]
	public static extern char8[] QAbstractTextDocumentLayout_AnchorAt(void* c_this, QPointF pos);
	[LinkName("QAbstractTextDocumentLayout_ImageAt")]
	public static extern char8[] QAbstractTextDocumentLayout_ImageAt(void* c_this, QPointF pos);
	[LinkName("QAbstractTextDocumentLayout_FormatAt")]
	public static extern QTextFormat QAbstractTextDocumentLayout_FormatAt(void* c_this, QPointF pos);
	[LinkName("QAbstractTextDocumentLayout_BlockWithMarkerAt")]
	public static extern QTextBlock QAbstractTextDocumentLayout_BlockWithMarkerAt(void* c_this, QPointF pos);
	[LinkName("QAbstractTextDocumentLayout_PageCount")]
	public static extern int32 QAbstractTextDocumentLayout_PageCount(void* c_this);
	[LinkName("QAbstractTextDocumentLayout_DocumentSize")]
	public static extern QSizeF QAbstractTextDocumentLayout_DocumentSize(void* c_this);
	[LinkName("QAbstractTextDocumentLayout_FrameBoundingRect")]
	public static extern QRectF QAbstractTextDocumentLayout_FrameBoundingRect(void* c_this, QTextFrame frame);
	[LinkName("QAbstractTextDocumentLayout_BlockBoundingRect")]
	public static extern QRectF QAbstractTextDocumentLayout_BlockBoundingRect(void* c_this, QTextBlock block);
	[LinkName("QAbstractTextDocumentLayout_SetPaintDevice")]
	public static extern void QAbstractTextDocumentLayout_SetPaintDevice(void* c_this, QPaintDevice device);
	[LinkName("QAbstractTextDocumentLayout_PaintDevice")]
	public static extern QPaintDevice QAbstractTextDocumentLayout_PaintDevice(void* c_this);
	[LinkName("QAbstractTextDocumentLayout_Document")]
	public static extern QTextDocument QAbstractTextDocumentLayout_Document(void* c_this);
	[LinkName("QAbstractTextDocumentLayout_RegisterHandler")]
	public static extern void QAbstractTextDocumentLayout_RegisterHandler(void* c_this, int32 objectType, QObject component);
	[LinkName("QAbstractTextDocumentLayout_UnregisterHandler")]
	public static extern void QAbstractTextDocumentLayout_UnregisterHandler(void* c_this, int32 objectType);
	[LinkName("QAbstractTextDocumentLayout_HandlerForObject")]
	public static extern QTextObjectInterface QAbstractTextDocumentLayout_HandlerForObject(void* c_this, int32 objectType);
	[LinkName("QAbstractTextDocumentLayout_Update")]
	public static extern void QAbstractTextDocumentLayout_Update(void* c_this);
	[LinkName("QAbstractTextDocumentLayout_UpdateBlock")]
	public static extern void QAbstractTextDocumentLayout_UpdateBlock(void* c_this, QTextBlock block);
	[LinkName("QAbstractTextDocumentLayout_DocumentSizeChanged")]
	public static extern void QAbstractTextDocumentLayout_DocumentSizeChanged(void* c_this, QSizeF newSize);
	[LinkName("QAbstractTextDocumentLayout_PageCountChanged")]
	public static extern void QAbstractTextDocumentLayout_PageCountChanged(void* c_this, int32 newPages);
	[LinkName("QAbstractTextDocumentLayout_DocumentChanged")]
	public static extern void QAbstractTextDocumentLayout_DocumentChanged(void* c_this, int32 from, int32 charsRemoved, int32 charsAdded);
	[LinkName("QAbstractTextDocumentLayout_ResizeInlineObject")]
	public static extern void QAbstractTextDocumentLayout_ResizeInlineObject(void* c_this, QTextInlineObject item, int32 posInDocument, QTextFormat format);
	[LinkName("QAbstractTextDocumentLayout_PositionInlineObject")]
	public static extern void QAbstractTextDocumentLayout_PositionInlineObject(void* c_this, QTextInlineObject item, int32 posInDocument, QTextFormat format);
	[LinkName("QAbstractTextDocumentLayout_DrawInlineObject")]
	public static extern void QAbstractTextDocumentLayout_DrawInlineObject(void* c_this, QPainter painter, QRectF rect, QTextInlineObject object, int32 posInDocument, QTextFormat format);
	[LinkName("QAbstractTextDocumentLayout_FormatIndex")]
	public static extern int32 QAbstractTextDocumentLayout_FormatIndex(void* c_this, int32 pos);
	[LinkName("QAbstractTextDocumentLayout_Format")]
	public static extern QTextCharFormat QAbstractTextDocumentLayout_Format(void* c_this, int32 pos);
	[LinkName("QAbstractTextDocumentLayout_Tr2")]
	public static extern char8[] QAbstractTextDocumentLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractTextDocumentLayout_Tr3")]
	public static extern char8[] QAbstractTextDocumentLayout_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAbstractTextDocumentLayout_UnregisterHandler2")]
	public static extern void QAbstractTextDocumentLayout_UnregisterHandler2(void* c_this, int32 objectType, QObject component);
	[LinkName("QAbstractTextDocumentLayout_Update1")]
	public static extern void QAbstractTextDocumentLayout_Update1(void* c_this, QRectF param1);
}
public struct QTextObjectInterface
{
	[LinkName("QTextObjectInterface_IntrinsicSize")]
	public static extern QSizeF QTextObjectInterface_IntrinsicSize(void* c_this, QTextDocument doc, int32 posInDocument, QTextFormat format);
	[LinkName("QTextObjectInterface_DrawObject")]
	public static extern void QTextObjectInterface_DrawObject(void* c_this, QPainter painter, QRectF rect, QTextDocument doc, int32 posInDocument, QTextFormat format);
	[LinkName("QTextObjectInterface_OperatorAssign")]
	public static extern void QTextObjectInterface_OperatorAssign(void* c_this, QTextObjectInterface param1);
}
public struct QAbstractTextDocumentLayout__Selection
{
	[LinkName("QAbstractTextDocumentLayout__Selection_new")]
	public static extern void* QAbstractTextDocumentLayout__Selection_new(QAbstractTextDocumentLayout__Selection param1);
	[LinkName("QAbstractTextDocumentLayout__Selection_OperatorAssign")]
	public static extern void QAbstractTextDocumentLayout__Selection_OperatorAssign(void* c_this, QAbstractTextDocumentLayout__Selection param1);
}
public struct QAbstractTextDocumentLayout__PaintContext
{
	[LinkName("QAbstractTextDocumentLayout__PaintContext_new")]
	public static extern void* QAbstractTextDocumentLayout__PaintContext_new();
	[LinkName("QAbstractTextDocumentLayout__PaintContext_new2")]
	public static extern void* QAbstractTextDocumentLayout__PaintContext_new2(QAbstractTextDocumentLayout__PaintContext param1);
	[LinkName("QAbstractTextDocumentLayout__PaintContext_OperatorAssign")]
	public static extern void QAbstractTextDocumentLayout__PaintContext_OperatorAssign(void* c_this, QAbstractTextDocumentLayout__PaintContext param1);
}