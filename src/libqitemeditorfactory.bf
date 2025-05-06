using System;
using System.Interop;
namespace Qt;

public struct QItemEditorCreatorBase
{
	[LinkName("QItemEditorCreatorBase_CreateWidget")]
	public static extern QWidget QItemEditorCreatorBase_CreateWidget(void* c_this, QWidget parent);
	[LinkName("QItemEditorCreatorBase_ValuePropertyName")]
	public static extern uint8[] QItemEditorCreatorBase_ValuePropertyName(void* c_this);
	[LinkName("QItemEditorCreatorBase_OperatorAssign")]
	public static extern void QItemEditorCreatorBase_OperatorAssign(void* c_this, QItemEditorCreatorBase param1);
}
public struct QItemEditorFactory
{
	[LinkName("QItemEditorFactory_new")]
	public static extern void* QItemEditorFactory_new();
	[LinkName("QItemEditorFactory_new2")]
	public static extern void* QItemEditorFactory_new2(QItemEditorFactory param1);
	[LinkName("QItemEditorFactory_CreateEditor")]
	public static extern QWidget QItemEditorFactory_CreateEditor(void* c_this, int32 userType, QWidget parent);
	[LinkName("QItemEditorFactory_ValuePropertyName")]
	public static extern uint8[] QItemEditorFactory_ValuePropertyName(void* c_this, int32 userType);
	[LinkName("QItemEditorFactory_RegisterEditor")]
	public static extern void QItemEditorFactory_RegisterEditor(void* c_this, int32 userType, QItemEditorCreatorBase creator);
	[LinkName("QItemEditorFactory_DefaultFactory")]
	public static extern QItemEditorFactory QItemEditorFactory_DefaultFactory();
	[LinkName("QItemEditorFactory_SetDefaultFactory")]
	public static extern void QItemEditorFactory_SetDefaultFactory(QItemEditorFactory factory);
}