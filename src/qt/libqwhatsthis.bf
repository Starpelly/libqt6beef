using System;
using System.Interop;
namespace Qt;

public class QWhatsThis
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QWhatsThis_new(other);
	}
	
	public ~this()
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
	
	public static void ShowText(void* pos, libqt_string text)
	{
		CQt.QWhatsThis_ShowText(pos, text);
	}
	
	public static void HideText()
	{
		CQt.QWhatsThis_HideText();
	}
	
	public static void* CreateAction()
	{
		return CQt.QWhatsThis_CreateAction();
	}
	
	public static void ShowText3(void* pos, libqt_string text, void* w)
	{
		CQt.QWhatsThis_ShowText3(pos, text, w);
	}
	
	public static void* CreateAction1(void* parent)
	{
		return CQt.QWhatsThis_CreateAction1(parent);
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