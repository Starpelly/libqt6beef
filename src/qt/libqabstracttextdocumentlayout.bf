using System;
using System.Interop;
namespace Qt;

public struct QAbstractTextDocumentLayout : QObject
{
	[LinkName("QAbstractTextDocumentLayout_new")]
	public static extern QAbstractTextDocumentLayout* QAbstractTextDocumentLayout_new(QTextDocument* doc);
	[LinkName("QAbstractTextDocumentLayout_MetaObject")]
	public static extern QMetaObject* QAbstractTextDocumentLayout_MetaObject(Self* c_this);
	[LinkName("QAbstractTextDocumentLayout_Metacast")]
	public static extern void* QAbstractTextDocumentLayout_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAbstractTextDocumentLayout_Metacall")]
	public static extern int32 QAbstractTextDocumentLayout_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractTextDocumentLayout_Tr")]
	public static extern libqt_string QAbstractTextDocumentLayout_Tr(char8[] s);
	[LinkName("QAbstractTextDocumentLayout_Draw")]
	public static extern void QAbstractTextDocumentLayout_Draw(Self* c_this, QPainter* painter, QAbstractTextDocumentLayout__PaintContext* context);
	[LinkName("QAbstractTextDocumentLayout_HitTest")]
	public static extern int32 QAbstractTextDocumentLayout_HitTest(Self* c_this, QPointF* point, int64 accuracy);
	[LinkName("QAbstractTextDocumentLayout_AnchorAt")]
	public static extern libqt_string QAbstractTextDocumentLayout_AnchorAt(Self* c_this, QPointF* pos);
	[LinkName("QAbstractTextDocumentLayout_ImageAt")]
	public static extern libqt_string QAbstractTextDocumentLayout_ImageAt(Self* c_this, QPointF* pos);
	[LinkName("QAbstractTextDocumentLayout_FormatAt")]
	public static extern QTextFormat QAbstractTextDocumentLayout_FormatAt(Self* c_this, QPointF* pos);
	[LinkName("QAbstractTextDocumentLayout_BlockWithMarkerAt")]
	public static extern QTextBlock QAbstractTextDocumentLayout_BlockWithMarkerAt(Self* c_this, QPointF* pos);
	[LinkName("QAbstractTextDocumentLayout_PageCount")]
	public static extern int32 QAbstractTextDocumentLayout_PageCount(Self* c_this);
	[LinkName("QAbstractTextDocumentLayout_DocumentSize")]
	public static extern QSizeF QAbstractTextDocumentLayout_DocumentSize(Self* c_this);
	[LinkName("QAbstractTextDocumentLayout_FrameBoundingRect")]
	public static extern QRectF QAbstractTextDocumentLayout_FrameBoundingRect(Self* c_this, QTextFrame* frame);
	[LinkName("QAbstractTextDocumentLayout_BlockBoundingRect")]
	public static extern QRectF QAbstractTextDocumentLayout_BlockBoundingRect(Self* c_this, QTextBlock* block);
	[LinkName("QAbstractTextDocumentLayout_SetPaintDevice")]
	public static extern void QAbstractTextDocumentLayout_SetPaintDevice(Self* c_this, QPaintDevice* device);
	[LinkName("QAbstractTextDocumentLayout_PaintDevice")]
	public static extern QPaintDevice* QAbstractTextDocumentLayout_PaintDevice(Self* c_this);
	[LinkName("QAbstractTextDocumentLayout_Document")]
	public static extern QTextDocument* QAbstractTextDocumentLayout_Document(Self* c_this);
	[LinkName("QAbstractTextDocumentLayout_RegisterHandler")]
	public static extern void QAbstractTextDocumentLayout_RegisterHandler(Self* c_this, int32 objectType, QObject* component);
	[LinkName("QAbstractTextDocumentLayout_UnregisterHandler")]
	public static extern void QAbstractTextDocumentLayout_UnregisterHandler(Self* c_this, int32 objectType);
	[LinkName("QAbstractTextDocumentLayout_HandlerForObject")]
	public static extern QTextObjectInterface* QAbstractTextDocumentLayout_HandlerForObject(Self* c_this, int32 objectType);
	[LinkName("QAbstractTextDocumentLayout_Connect_Update")]
	public static extern void QAbstractTextDocumentLayout_Connect_Update(Self* c_this, c_intptr slot);
	[LinkName("QAbstractTextDocumentLayout_Connect_UpdateBlock")]
	public static extern void QAbstractTextDocumentLayout_Connect_UpdateBlock(Self* c_this, c_intptr slot);
	[LinkName("QAbstractTextDocumentLayout_Connect_DocumentSizeChanged")]
	public static extern void QAbstractTextDocumentLayout_Connect_DocumentSizeChanged(Self* c_this, c_intptr slot);
	[LinkName("QAbstractTextDocumentLayout_Connect_PageCountChanged")]
	public static extern void QAbstractTextDocumentLayout_Connect_PageCountChanged(Self* c_this, c_intptr slot);
	[LinkName("QAbstractTextDocumentLayout_DocumentChanged")]
	public static extern void QAbstractTextDocumentLayout_DocumentChanged(Self* c_this, int32 from, int32 charsRemoved, int32 charsAdded);
	[LinkName("QAbstractTextDocumentLayout_ResizeInlineObject")]
	public static extern void QAbstractTextDocumentLayout_ResizeInlineObject(Self* c_this, QTextInlineObject item, int32 posInDocument, QTextFormat* format);
	[LinkName("QAbstractTextDocumentLayout_PositionInlineObject")]
	public static extern void QAbstractTextDocumentLayout_PositionInlineObject(Self* c_this, QTextInlineObject item, int32 posInDocument, QTextFormat* format);
	[LinkName("QAbstractTextDocumentLayout_DrawInlineObject")]
	public static extern void QAbstractTextDocumentLayout_DrawInlineObject(Self* c_this, QPainter* painter, QRectF* rect, QTextInlineObject object, int32 posInDocument, QTextFormat* format);
	[LinkName("QAbstractTextDocumentLayout_FormatIndex")]
	public static extern int32 QAbstractTextDocumentLayout_FormatIndex(Self* c_this, int32 pos);
	[LinkName("QAbstractTextDocumentLayout_Format")]
	public static extern QTextCharFormat QAbstractTextDocumentLayout_Format(Self* c_this, int32 pos);
	[LinkName("QAbstractTextDocumentLayout_Tr2")]
	public static extern libqt_string QAbstractTextDocumentLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractTextDocumentLayout_Tr3")]
	public static extern libqt_string QAbstractTextDocumentLayout_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAbstractTextDocumentLayout_UnregisterHandler2")]
	public static extern void QAbstractTextDocumentLayout_UnregisterHandler2(Self* c_this, int32 objectType, QObject* component);
	[LinkName("QAbstractTextDocumentLayout_Connect_Update1")]
	public static extern void QAbstractTextDocumentLayout_Connect_Update1(Self* c_this, c_intptr slot);
}
public struct QTextObjectInterface
{
	[LinkName("QTextObjectInterface_IntrinsicSize")]
	public static extern QSizeF QTextObjectInterface_IntrinsicSize(Self* c_this, QTextDocument* doc, int32 posInDocument, QTextFormat* format);
	[LinkName("QTextObjectInterface_DrawObject")]
	public static extern void QTextObjectInterface_DrawObject(Self* c_this, QPainter* painter, QRectF* rect, QTextDocument* doc, int32 posInDocument, QTextFormat* format);
	[LinkName("QTextObjectInterface_OperatorAssign")]
	public static extern void QTextObjectInterface_OperatorAssign(Self* c_this, QTextObjectInterface* param1);
}
public struct QAbstractTextDocumentLayout__Selection
{
	[LinkName("QAbstractTextDocumentLayout__Selection_new")]
	public static extern QAbstractTextDocumentLayout__Selection* QAbstractTextDocumentLayout__Selection_new(QAbstractTextDocumentLayout__Selection* param1);
	[LinkName("QAbstractTextDocumentLayout__Selection_OperatorAssign")]
	public static extern void QAbstractTextDocumentLayout__Selection_OperatorAssign(Self* c_this, QAbstractTextDocumentLayout__Selection* param1);
}
public struct QAbstractTextDocumentLayout__PaintContext
{
	[LinkName("QAbstractTextDocumentLayout__PaintContext_new")]
	public static extern QAbstractTextDocumentLayout__PaintContext* QAbstractTextDocumentLayout__PaintContext_new();
	[LinkName("QAbstractTextDocumentLayout__PaintContext_new2")]
	public static extern QAbstractTextDocumentLayout__PaintContext* QAbstractTextDocumentLayout__PaintContext_new2(QAbstractTextDocumentLayout__PaintContext* param1);
	[LinkName("QAbstractTextDocumentLayout__PaintContext_OperatorAssign")]
	public static extern void QAbstractTextDocumentLayout__PaintContext_OperatorAssign(Self* c_this, QAbstractTextDocumentLayout__PaintContext* param1);
}