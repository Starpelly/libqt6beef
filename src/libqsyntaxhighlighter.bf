using System;
using System.Interop;
namespace Qt;

public struct QSyntaxHighlighter
{
	[LinkName("QSyntaxHighlighter_new")]
	public static extern void* QSyntaxHighlighter_new(QObject parent);
	[LinkName("QSyntaxHighlighter_new2")]
	public static extern void* QSyntaxHighlighter_new2(QTextDocument parent);
	[LinkName("QSyntaxHighlighter_MetaObject")]
	public static extern QMetaObject QSyntaxHighlighter_MetaObject(void* c_this);
	[LinkName("QSyntaxHighlighter_Metacast")]
	public static extern void QSyntaxHighlighter_Metacast(void* c_this, char8[] param1);
	[LinkName("QSyntaxHighlighter_Metacall")]
	public static extern int32 QSyntaxHighlighter_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSyntaxHighlighter_Tr")]
	public static extern char8[] QSyntaxHighlighter_Tr(char8[] s);
	[LinkName("QSyntaxHighlighter_SetDocument")]
	public static extern void QSyntaxHighlighter_SetDocument(void* c_this, QTextDocument doc);
	[LinkName("QSyntaxHighlighter_Document")]
	public static extern QTextDocument QSyntaxHighlighter_Document(void* c_this);
	[LinkName("QSyntaxHighlighter_Rehighlight")]
	public static extern void QSyntaxHighlighter_Rehighlight(void* c_this);
	[LinkName("QSyntaxHighlighter_RehighlightBlock")]
	public static extern void QSyntaxHighlighter_RehighlightBlock(void* c_this, QTextBlock block);
	[LinkName("QSyntaxHighlighter_HighlightBlock")]
	public static extern void QSyntaxHighlighter_HighlightBlock(void* c_this, char8[] text);
	[LinkName("QSyntaxHighlighter_SetFormat")]
	public static extern void QSyntaxHighlighter_SetFormat(void* c_this, int32 start, int32 count, QTextCharFormat format);
	[LinkName("QSyntaxHighlighter_SetFormat2")]
	public static extern void QSyntaxHighlighter_SetFormat2(void* c_this, int32 start, int32 count, QColor color);
	[LinkName("QSyntaxHighlighter_SetFormat3")]
	public static extern void QSyntaxHighlighter_SetFormat3(void* c_this, int32 start, int32 count, QFont font);
	[LinkName("QSyntaxHighlighter_Format")]
	public static extern QTextCharFormat QSyntaxHighlighter_Format(void* c_this, int32 pos);
	[LinkName("QSyntaxHighlighter_PreviousBlockState")]
	public static extern int32 QSyntaxHighlighter_PreviousBlockState(void* c_this);
	[LinkName("QSyntaxHighlighter_CurrentBlockState")]
	public static extern int32 QSyntaxHighlighter_CurrentBlockState(void* c_this);
	[LinkName("QSyntaxHighlighter_SetCurrentBlockState")]
	public static extern void QSyntaxHighlighter_SetCurrentBlockState(void* c_this, int32 newState);
	[LinkName("QSyntaxHighlighter_SetCurrentBlockUserData")]
	public static extern void QSyntaxHighlighter_SetCurrentBlockUserData(void* c_this, QTextBlockUserData data);
	[LinkName("QSyntaxHighlighter_CurrentBlockUserData")]
	public static extern QTextBlockUserData QSyntaxHighlighter_CurrentBlockUserData(void* c_this);
	[LinkName("QSyntaxHighlighter_CurrentBlock")]
	public static extern QTextBlock QSyntaxHighlighter_CurrentBlock(void* c_this);
	[LinkName("QSyntaxHighlighter_Tr2")]
	public static extern char8[] QSyntaxHighlighter_Tr2(char8[] s, char8[] c);
	[LinkName("QSyntaxHighlighter_Tr3")]
	public static extern char8[] QSyntaxHighlighter_Tr3(char8[] s, char8[] c, int32 n);
}