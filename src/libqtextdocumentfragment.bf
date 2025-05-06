using System;
using System.Interop;
namespace Qt;

public struct QTextDocumentFragment
{
	[LinkName("QTextDocumentFragment_new")]
	public static extern void* QTextDocumentFragment_new();
	[LinkName("QTextDocumentFragment_new2")]
	public static extern void* QTextDocumentFragment_new2(QTextDocument document);
	[LinkName("QTextDocumentFragment_new3")]
	public static extern void* QTextDocumentFragment_new3(QTextCursor range);
	[LinkName("QTextDocumentFragment_new4")]
	public static extern void* QTextDocumentFragment_new4(QTextDocumentFragment rhs);
	[LinkName("QTextDocumentFragment_OperatorAssign")]
	public static extern void QTextDocumentFragment_OperatorAssign(void* c_this, QTextDocumentFragment rhs);
	[LinkName("QTextDocumentFragment_IsEmpty")]
	public static extern bool QTextDocumentFragment_IsEmpty(void* c_this);
	[LinkName("QTextDocumentFragment_ToPlainText")]
	public static extern char8[] QTextDocumentFragment_ToPlainText(void* c_this);
	[LinkName("QTextDocumentFragment_ToRawText")]
	public static extern char8[] QTextDocumentFragment_ToRawText(void* c_this);
	[LinkName("QTextDocumentFragment_ToHtml")]
	public static extern char8[] QTextDocumentFragment_ToHtml(void* c_this);
	[LinkName("QTextDocumentFragment_ToMarkdown")]
	public static extern char8[] QTextDocumentFragment_ToMarkdown(void* c_this);
	[LinkName("QTextDocumentFragment_FromPlainText")]
	public static extern QTextDocumentFragment QTextDocumentFragment_FromPlainText(char8[] plainText);
	[LinkName("QTextDocumentFragment_FromHtml")]
	public static extern QTextDocumentFragment QTextDocumentFragment_FromHtml(char8[] html);
	[LinkName("QTextDocumentFragment_FromMarkdown")]
	public static extern QTextDocumentFragment QTextDocumentFragment_FromMarkdown(char8[] markdown);
	[LinkName("QTextDocumentFragment_ToMarkdown1")]
	public static extern char8[] QTextDocumentFragment_ToMarkdown1(void* c_this, int64 features);
	[LinkName("QTextDocumentFragment_FromHtml2")]
	public static extern QTextDocumentFragment QTextDocumentFragment_FromHtml2(char8[] html, QTextDocument resourceProvider);
	[LinkName("QTextDocumentFragment_FromMarkdown2")]
	public static extern QTextDocumentFragment QTextDocumentFragment_FromMarkdown2(char8[] markdown, int64 features);
}