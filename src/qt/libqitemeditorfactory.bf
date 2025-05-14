using System;
using System.Interop;
namespace Qt;

public interface IQItemEditorCreatorBase
{
	void* NativePtr { get; }
}
public struct QItemEditorCreatorBasePtr : IQItemEditorCreatorBase, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void Dispose()
	{
		CQt.QItemEditorCreatorBase_Delete(this.nativePtr);
	}
	
	public void* CreateWidget(IQWidget parent)
	{
		return CQt.QItemEditorCreatorBase_CreateWidget(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public libqt_string ValuePropertyName()
	{
		return CQt.QItemEditorCreatorBase_ValuePropertyName(this.nativePtr);
	}
	
	public void OperatorAssign(IQItemEditorCreatorBase param1)
	{
		CQt.QItemEditorCreatorBase_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
}
public class QItemEditorCreatorBase
{
	public QItemEditorCreatorBasePtr handle;
	
	public static implicit operator QItemEditorCreatorBasePtr(Self self)
	{
		return self.handle;
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* CreateWidget(IQWidget parent)
	{
		return this.handle.CreateWidget(parent);
	}
	
	public virtual libqt_string ValuePropertyName()
	{
		return this.handle.ValuePropertyName();
	}
	
	public void OperatorAssign(IQItemEditorCreatorBase param1)
	{
		this.handle.OperatorAssign(param1);
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
public interface IQItemEditorFactory
{
	void* NativePtr { get; }
}
public struct QItemEditorFactoryPtr : IQItemEditorFactory, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QItemEditorFactory_new());
	}
	
	public void Dispose()
	{
		CQt.QItemEditorFactory_Delete(this.nativePtr);
	}
	
	public void* CreateEditor(int32 userType, IQWidget parent)
	{
		return CQt.QItemEditorFactory_CreateEditor(this.nativePtr, userType, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public libqt_string ValuePropertyName(int32 userType)
	{
		return CQt.QItemEditorFactory_ValuePropertyName(this.nativePtr, userType);
	}
	
	public void RegisterEditor(int32 userType, IQItemEditorCreatorBase creator)
	{
		CQt.QItemEditorFactory_RegisterEditor(this.nativePtr, userType, (creator == default || creator.NativePtr == default) ? default : creator.NativePtr);
	}
	
	public static void* DefaultFactory()
	{
		return CQt.QItemEditorFactory_DefaultFactory();
	}
	
	public static void SetDefaultFactory(IQItemEditorFactory factory)
	{
		CQt.QItemEditorFactory_SetDefaultFactory((factory == default || factory.NativePtr == default) ? default : factory.NativePtr);
	}
	
}
public class QItemEditorFactory
{
	public QItemEditorFactoryPtr handle;
	
	public static implicit operator QItemEditorFactoryPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QItemEditorFactoryPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* CreateEditor(int32 userType, IQWidget parent)
	{
		return this.handle.CreateEditor(userType, parent);
	}
	
	public virtual libqt_string ValuePropertyName(int32 userType)
	{
		return this.handle.ValuePropertyName(userType);
	}
	
	public void RegisterEditor(int32 userType, IQItemEditorCreatorBase creator)
	{
		this.handle.RegisterEditor(userType, creator);
	}
	
	public static void* DefaultFactory()
	{
		return QItemEditorFactoryPtr.DefaultFactory();
	}
	
	public static void SetDefaultFactory(IQItemEditorFactory factory)
	{
		QItemEditorFactoryPtr.SetDefaultFactory(factory);
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