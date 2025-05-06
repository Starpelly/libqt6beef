using System;
using System.Interop;
namespace Qt;

public struct QTextDocumentFragment
{
	[LinkName("QTextDocumentFragment_new")]
	public static extern QTextDocumentFragment* QTextDocumentFragment_new();
	[LinkName("QTextDocumentFragment_new2")]
	public static extern QTextDocumentFragment* QTextDocumentFragment_new2(QTextDocument* document);
	[LinkName("QTextDocumentFragment_new3")]
	public static extern QTextDocumentFragment* QTextDocumentFragment_new3(QTextCursor* range);
	[LinkName("QTextDocumentFragment_new4")]
	public static extern QTextDocumentFragment* QTextDocumentFragment_new4(QTextDocumentFragment* rhs);
	[LinkName("QTextDocumentFragment_OperatorAssign")]
	public static extern void QTextDocumentFragment_OperatorAssign(Self* c_this, QTextDocumentFragment* rhs);
	[LinkName("QTextDocumentFragment_IsEmpty")]
	public static extern bool QTextDocumentFragment_IsEmpty(Self* c_this);
	[LinkName("QTextDocumentFragment_ToPlainText")]
	public static extern libqt_string QTextDocumentFragment_ToPlainText(Self* c_this);
	[LinkName("QTextDocumentFragment_ToRawText")]
	public static extern libqt_string QTextDocumentFragment_ToRawText(Self* c_this);
	[LinkName("QTextDocumentFragment_ToHtml")]
	public static extern libqt_string QTextDocumentFragment_ToHtml(Self* c_this);
	[LinkName("QTextDocumentFragment_ToMarkdown")]
	public static extern libqt_string QTextDocumentFragment_ToMarkdown(Self* c_this);
	[LinkName("QTextDocumentFragment_FromPlainText")]
	public static extern QTextDocumentFragment QTextDocumentFragment_FromPlainText(libqt_string plainText);
	[LinkName("QTextDocumentFragment_FromHtml")]
	public static extern QTextDocumentFragment QTextDocumentFragment_FromHtml(libqt_string html);
	[LinkName("QTextDocumentFragment_FromMarkdown")]
	public static extern QTextDocumentFragment QTextDocumentFragment_FromMarkdown(libqt_string markdown);
	[LinkName("QTextDocumentFragment_ToMarkdown1")]
	public static extern libqt_string QTextDocumentFragment_ToMarkdown1(Self* c_this, int64 features);
	[LinkName("QTextDocumentFragment_FromHtml2")]
	public static extern QTextDocumentFragment QTextDocumentFragment_FromHtml2(libqt_string html, QTextDocument* resourceProvider);
	[LinkName("QTextDocumentFragment_FromMarkdown2")]
	public static extern QTextDocumentFragment QTextDocumentFragment_FromMarkdown2(libqt_string markdown, int64 features);
}