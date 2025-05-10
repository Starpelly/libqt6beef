using System;
using System.Interop;
namespace Qt;

public class QTextDocumentFragment
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTextDocumentFragment_new();
	}
	
	public ~this()
	{
		CQt.QTextDocumentFragment_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* rhs)
	{
		CQt.QTextDocumentFragment_OperatorAssign(this.nativePtr, rhs);
	}
	
	public bool IsEmpty()
	{
		return CQt.QTextDocumentFragment_IsEmpty(this.nativePtr);
	}
	
	public libqt_string ToPlainText()
	{
		return CQt.QTextDocumentFragment_ToPlainText(this.nativePtr);
	}
	
	public libqt_string ToRawText()
	{
		return CQt.QTextDocumentFragment_ToRawText(this.nativePtr);
	}
	
	public libqt_string ToHtml()
	{
		return CQt.QTextDocumentFragment_ToHtml(this.nativePtr);
	}
	
	public libqt_string ToMarkdown()
	{
		return CQt.QTextDocumentFragment_ToMarkdown(this.nativePtr);
	}
	
	public static void FromPlainText(libqt_string plainText)
	{
		CQt.QTextDocumentFragment_FromPlainText(plainText);
	}
	
	public static void FromHtml(libqt_string html)
	{
		CQt.QTextDocumentFragment_FromHtml(html);
	}
	
	public static void FromMarkdown(libqt_string markdown)
	{
		CQt.QTextDocumentFragment_FromMarkdown(markdown);
	}
	
	public libqt_string ToMarkdown1(int64 features)
	{
		return CQt.QTextDocumentFragment_ToMarkdown1(this.nativePtr, features);
	}
	
	public static void FromHtml2(libqt_string html, void* resourceProvider)
	{
		CQt.QTextDocumentFragment_FromHtml2(html, resourceProvider);
	}
	
	public static void FromMarkdown2(libqt_string markdown, int64 features)
	{
		CQt.QTextDocumentFragment_FromMarkdown2(markdown, features);
	}
	
}
extension CQt
{
	[LinkName("QTextDocumentFragment_new")]
	public static extern void* QTextDocumentFragment_new();
	[LinkName("QTextDocumentFragment_new2")]
	public static extern void* QTextDocumentFragment_new2(void* document);
	[LinkName("QTextDocumentFragment_new3")]
	public static extern void* QTextDocumentFragment_new3(void* range);
	[LinkName("QTextDocumentFragment_new4")]
	public static extern void* QTextDocumentFragment_new4(void* rhs);
	[LinkName("QTextDocumentFragment_OperatorAssign")]
	public static extern void QTextDocumentFragment_OperatorAssign(void* c_this, void* rhs);
	[LinkName("QTextDocumentFragment_IsEmpty")]
	public static extern bool QTextDocumentFragment_IsEmpty(void* c_this);
	[LinkName("QTextDocumentFragment_ToPlainText")]
	public static extern libqt_string QTextDocumentFragment_ToPlainText(void* c_this);
	[LinkName("QTextDocumentFragment_ToRawText")]
	public static extern libqt_string QTextDocumentFragment_ToRawText(void* c_this);
	[LinkName("QTextDocumentFragment_ToHtml")]
	public static extern libqt_string QTextDocumentFragment_ToHtml(void* c_this);
	[LinkName("QTextDocumentFragment_ToMarkdown")]
	public static extern libqt_string QTextDocumentFragment_ToMarkdown(void* c_this);
	[LinkName("QTextDocumentFragment_FromPlainText")]
	public static extern void QTextDocumentFragment_FromPlainText(libqt_string plainText);
	[LinkName("QTextDocumentFragment_FromHtml")]
	public static extern void QTextDocumentFragment_FromHtml(libqt_string html);
	[LinkName("QTextDocumentFragment_FromMarkdown")]
	public static extern void QTextDocumentFragment_FromMarkdown(libqt_string markdown);
	[LinkName("QTextDocumentFragment_ToMarkdown1")]
	public static extern libqt_string QTextDocumentFragment_ToMarkdown1(void* c_this, int64 features);
	[LinkName("QTextDocumentFragment_FromHtml2")]
	public static extern void QTextDocumentFragment_FromHtml2(libqt_string html, void* resourceProvider);
	[LinkName("QTextDocumentFragment_FromMarkdown2")]
	public static extern void QTextDocumentFragment_FromMarkdown2(libqt_string markdown, int64 features);
	/// Delete this object from C++ memory
	[LinkName("QTextDocumentFragment_Delete")]
	public static extern void QTextDocumentFragment_Delete(void* self);
}