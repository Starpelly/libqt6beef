using System;
using System.Interop;
namespace Qt;

public interface IQTextDocumentFragment
{
	void* NativePtr { get; }
}
public struct QTextDocumentFragmentPtr : IQTextDocumentFragment, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QTextDocumentFragment_new());
	}
	
	public void Dispose()
	{
		CQt.QTextDocumentFragment_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQTextDocumentFragment rhs)
	{
		CQt.QTextDocumentFragment_OperatorAssign(this.nativePtr, (rhs == default || rhs.NativePtr == default) ? default : rhs.NativePtr);
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
	
	public static void FromPlainText(String plainText)
	{
		CQt.QTextDocumentFragment_FromPlainText(libqt_string(plainText));
	}
	
	public static void FromHtml(String html)
	{
		CQt.QTextDocumentFragment_FromHtml(libqt_string(html));
	}
	
	public static void FromMarkdown(String markdown)
	{
		CQt.QTextDocumentFragment_FromMarkdown(libqt_string(markdown));
	}
	
	public libqt_string ToMarkdown1(int64 features)
	{
		return CQt.QTextDocumentFragment_ToMarkdown1(this.nativePtr, features);
	}
	
	public static void FromHtml2(String html, IQTextDocument resourceProvider)
	{
		CQt.QTextDocumentFragment_FromHtml2(libqt_string(html), (resourceProvider == default || resourceProvider.NativePtr == default) ? default : resourceProvider.NativePtr);
	}
	
	public static void FromMarkdown2(String markdown, int64 features)
	{
		CQt.QTextDocumentFragment_FromMarkdown2(libqt_string(markdown), features);
	}
	
}
public class QTextDocumentFragment
{
	public QTextDocumentFragmentPtr handle;
	
	public static implicit operator QTextDocumentFragmentPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QTextDocumentFragmentPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQTextDocumentFragment rhs)
	{
		this.handle.OperatorAssign(rhs);
	}
	
	public bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public libqt_string ToPlainText()
	{
		return this.handle.ToPlainText();
	}
	
	public libqt_string ToRawText()
	{
		return this.handle.ToRawText();
	}
	
	public libqt_string ToHtml()
	{
		return this.handle.ToHtml();
	}
	
	public libqt_string ToMarkdown()
	{
		return this.handle.ToMarkdown();
	}
	
	public static void FromPlainText(String plainText)
	{
		QTextDocumentFragmentPtr.FromPlainText(plainText);
	}
	
	public static void FromHtml(String html)
	{
		QTextDocumentFragmentPtr.FromHtml(html);
	}
	
	public static void FromMarkdown(String markdown)
	{
		QTextDocumentFragmentPtr.FromMarkdown(markdown);
	}
	
	public libqt_string ToMarkdown1(int64 features)
	{
		return this.handle.ToMarkdown1(features);
	}
	
	public static void FromHtml2(String html, IQTextDocument resourceProvider)
	{
		QTextDocumentFragmentPtr.FromHtml2(html, resourceProvider);
	}
	
	public static void FromMarkdown2(String markdown, int64 features)
	{
		QTextDocumentFragmentPtr.FromMarkdown2(markdown, features);
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