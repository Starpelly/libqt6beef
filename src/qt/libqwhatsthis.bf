using System;
using System.Interop;
namespace Qt;

public interface IQWhatsThis
{
	void* NativePtr { get; }
}
public struct QWhatsThisPtr : IQWhatsThis, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQWhatsThis other)
	{
		return .(CQt.QWhatsThis_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QWhatsThis_Delete(this.nativePtr);
	}
	
	public static void EnterWhatsThisMode()
	{
		CQt.QWhatsThis_EnterWhatsThisMode();
	}
	
	public static bool InWhatsThisMode()
	{
		return CQt.QWhatsThis_InWhatsThisMode();
	}
	
	public static void LeaveWhatsThisMode()
	{
		CQt.QWhatsThis_LeaveWhatsThisMode();
	}
	
	public static void ShowText(IQPoint pos, String text)
	{
		CQt.QWhatsThis_ShowText((pos == default || pos.NativePtr == default) ? default : pos.NativePtr, libqt_string(text));
	}
	
	public static void HideText()
	{
		CQt.QWhatsThis_HideText();
	}
	
	public static void* CreateAction()
	{
		return CQt.QWhatsThis_CreateAction();
	}
	
	public static void ShowText3(IQPoint pos, String text, IQWidget w)
	{
		CQt.QWhatsThis_ShowText3((pos == default || pos.NativePtr == default) ? default : pos.NativePtr, libqt_string(text), (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public static void* CreateAction1(IQObject parent)
	{
		return CQt.QWhatsThis_CreateAction1((parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
}
public class QWhatsThis
{
	public QWhatsThisPtr handle;
	
	public static implicit operator QWhatsThisPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQWhatsThis other)
	{
		this.handle = QWhatsThisPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public static void EnterWhatsThisMode()
	{
		QWhatsThisPtr.EnterWhatsThisMode();
	}
	
	public static bool InWhatsThisMode()
	{
		return QWhatsThisPtr.InWhatsThisMode();
	}
	
	public static void LeaveWhatsThisMode()
	{
		QWhatsThisPtr.LeaveWhatsThisMode();
	}
	
	public static void ShowText(IQPoint pos, String text)
	{
		QWhatsThisPtr.ShowText(pos, text);
	}
	
	public static void HideText()
	{
		QWhatsThisPtr.HideText();
	}
	
	public static void* CreateAction()
	{
		return QWhatsThisPtr.CreateAction();
	}
	
	public static void ShowText3(IQPoint pos, String text, IQWidget w)
	{
		QWhatsThisPtr.ShowText3(pos, text, w);
	}
	
	public static void* CreateAction1(IQObject parent)
	{
		return QWhatsThisPtr.CreateAction1(parent);
	}
	
}
extension CQt
{
	[LinkName("QWhatsThis_new")]
	public static extern void* QWhatsThis_new(void* other);
	[LinkName("QWhatsThis_new2")]
	public static extern void* QWhatsThis_new2(void* other);
	[LinkName("QWhatsThis_EnterWhatsThisMode")]
	public static extern void QWhatsThis_EnterWhatsThisMode();
	[LinkName("QWhatsThis_InWhatsThisMode")]
	public static extern bool QWhatsThis_InWhatsThisMode();
	[LinkName("QWhatsThis_LeaveWhatsThisMode")]
	public static extern void QWhatsThis_LeaveWhatsThisMode();
	[LinkName("QWhatsThis_ShowText")]
	public static extern void QWhatsThis_ShowText(void* pos, libqt_string text);
	[LinkName("QWhatsThis_HideText")]
	public static extern void QWhatsThis_HideText();
	[LinkName("QWhatsThis_CreateAction")]
	public static extern void* QWhatsThis_CreateAction();
	[LinkName("QWhatsThis_ShowText3")]
	public static extern void QWhatsThis_ShowText3(void* pos, libqt_string text, void* w);
	[LinkName("QWhatsThis_CreateAction1")]
	public static extern void* QWhatsThis_CreateAction1(void* parent);
	/// Delete this object from C++ memory
	[LinkName("QWhatsThis_Delete")]
	public static extern void QWhatsThis_Delete(void* self);
}