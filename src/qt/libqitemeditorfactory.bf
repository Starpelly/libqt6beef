using System;
using System.Interop;
namespace Qt;

public class QItemEditorCreatorBase
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QItemEditorCreatorBase_Delete(this.nativePtr);
	}
	
	public virtual void* CreateWidget(void* parent)
	{
		return CQt.QItemEditorCreatorBase_CreateWidget(this.nativePtr, parent);
	}
	
	public virtual libqt_string ValuePropertyName()
	{
		return CQt.QItemEditorCreatorBase_ValuePropertyName(this.nativePtr);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QItemEditorCreatorBase_OperatorAssign(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QItemEditorCreatorBase_CreateWidget")]
	public static extern void* QItemEditorCreatorBase_CreateWidget(void* c_this, void* parent);
	[LinkName("QItemEditorCreatorBase_ValuePropertyName")]
	public static extern libqt_string QItemEditorCreatorBase_ValuePropertyName(void* c_this);
	[LinkName("QItemEditorCreatorBase_OperatorAssign")]
	public static extern void QItemEditorCreatorBase_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QItemEditorCreatorBase_Delete")]
	public static extern void QItemEditorCreatorBase_Delete(void* self);
}
public class QItemEditorFactory
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QItemEditorFactory_new();
	}
	
	public ~this()
	{
		CQt.QItemEditorFactory_Delete(this.nativePtr);
	}
	
	public virtual void* CreateEditor(int32 userType, void* parent)
	{
		return CQt.QItemEditorFactory_CreateEditor(this.nativePtr, userType, parent);
	}
	
	public virtual libqt_string ValuePropertyName(int32 userType)
	{
		return CQt.QItemEditorFactory_ValuePropertyName(this.nativePtr, userType);
	}
	
	public void RegisterEditor(int32 userType, void* creator)
	{
		CQt.QItemEditorFactory_RegisterEditor(this.nativePtr, userType, creator);
	}
	
	public static void* DefaultFactory()
	{
		return CQt.QItemEditorFactory_DefaultFactory();
	}
	
	public static void SetDefaultFactory(void* factory)
	{
		CQt.QItemEditorFactory_SetDefaultFactory(factory);
	}
	
}
extension CQt
{
	[LinkName("QItemEditorFactory_new")]
	public static extern void* QItemEditorFactory_new();
	[LinkName("QItemEditorFactory_new2")]
	public static extern void* QItemEditorFactory_new2(void* param1);
	[LinkName("QItemEditorFactory_CreateEditor")]
	public static extern void* QItemEditorFactory_CreateEditor(void* c_this, int32 userType, void* parent);
	[LinkName("QItemEditorFactory_ValuePropertyName")]
	public static extern libqt_string QItemEditorFactory_ValuePropertyName(void* c_this, int32 userType);
	[LinkName("QItemEditorFactory_RegisterEditor")]
	public static extern void QItemEditorFactory_RegisterEditor(void* c_this, int32 userType, void* creator);
	[LinkName("QItemEditorFactory_DefaultFactory")]
	public static extern void* QItemEditorFactory_DefaultFactory();
	[LinkName("QItemEditorFactory_SetDefaultFactory")]
	public static extern void QItemEditorFactory_SetDefaultFactory(void* factory);
	/// Delete this object from C++ memory
	[LinkName("QItemEditorFactory_Delete")]
	public static extern void QItemEditorFactory_Delete(void* self);
}