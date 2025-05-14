using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QInputDialog__InputDialogOption
{
	NoButtons = 1,
	UseListViewForComboBoxItems = 2,
	UsePlainTextEditForTextInput = 4,
}
[AllowDuplicates]
public enum QInputDialog__InputMode
{
	TextInput = 0,
	IntInput = 1,
	DoubleInput = 2,
}
public interface IQInputDialog
{
	void* NativePtr { get; }
}
public struct QInputDialogPtr : IQInputDialog, IDisposable, IQDialog
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQWidget parent)
	{
		return .(CQt.QInputDialog_new((parent == default || parent.NativePtr == default) ? default : parent.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QInputDialog_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QInputDialog_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QInputDialog_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QInputDialog_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QInputDialog_Tr(s);
	}
	
	public void SetInputMode(int64 mode)
	{
		CQt.QInputDialog_SetInputMode(this.nativePtr, (int64)mode);
	}
	
	public int64 InputMode()
	{
		return CQt.QInputDialog_InputMode(this.nativePtr);
	}
	
	public void SetLabelText(String text)
	{
		CQt.QInputDialog_SetLabelText(this.nativePtr, libqt_string(text));
	}
	
	public libqt_string LabelText()
	{
		return CQt.QInputDialog_LabelText(this.nativePtr);
	}
	
	public void SetOption(int64 option)
	{
		CQt.QInputDialog_SetOption(this.nativePtr, (int64)option);
	}
	
	public bool TestOption(int64 option)
	{
		return CQt.QInputDialog_TestOption(this.nativePtr, (int64)option);
	}
	
	public void SetOptions(int64 options)
	{
		CQt.QInputDialog_SetOptions(this.nativePtr, options);
	}
	
	public int64 Options()
	{
		return CQt.QInputDialog_Options(this.nativePtr);
	}
	
	public void SetTextValue(String text)
	{
		CQt.QInputDialog_SetTextValue(this.nativePtr, libqt_string(text));
	}
	
	public libqt_string TextValue()
	{
		return CQt.QInputDialog_TextValue(this.nativePtr);
	}
	
	public void SetTextEchoMode(int64 mode)
	{
		CQt.QInputDialog_SetTextEchoMode(this.nativePtr, (int64)mode);
	}
	
	public int64 TextEchoMode()
	{
		return CQt.QInputDialog_TextEchoMode(this.nativePtr);
	}
	
	public void SetComboBoxEditable(bool editable)
	{
		CQt.QInputDialog_SetComboBoxEditable(this.nativePtr, editable);
	}
	
	public bool IsComboBoxEditable()
	{
		return CQt.QInputDialog_IsComboBoxEditable(this.nativePtr);
	}
	
	public void SetComboBoxItems(String[] items)
	{
		CQt.QInputDialog_SetComboBoxItems(this.nativePtr, null);
	}
	
	public libqt_string[] ComboBoxItems()
	{
		return CQt.QInputDialog_ComboBoxItems(this.nativePtr);
	}
	
	public void SetIntValue(int32 value)
	{
		CQt.QInputDialog_SetIntValue(this.nativePtr, value);
	}
	
	public int32 IntValue()
	{
		return CQt.QInputDialog_IntValue(this.nativePtr);
	}
	
	public void SetIntMinimum(int32 min)
	{
		CQt.QInputDialog_SetIntMinimum(this.nativePtr, min);
	}
	
	public int32 IntMinimum()
	{
		return CQt.QInputDialog_IntMinimum(this.nativePtr);
	}
	
	public void SetIntMaximum(int32 max)
	{
		CQt.QInputDialog_SetIntMaximum(this.nativePtr, max);
	}
	
	public int32 IntMaximum()
	{
		return CQt.QInputDialog_IntMaximum(this.nativePtr);
	}
	
	public void SetIntRange(int32 min, int32 max)
	{
		CQt.QInputDialog_SetIntRange(this.nativePtr, min, max);
	}
	
	public void SetIntStep(int32 step)
	{
		CQt.QInputDialog_SetIntStep(this.nativePtr, step);
	}
	
	public int32 IntStep()
	{
		return CQt.QInputDialog_IntStep(this.nativePtr);
	}
	
	public void SetDoubleValue(double value)
	{
		CQt.QInputDialog_SetDoubleValue(this.nativePtr, value);
	}
	
	public double DoubleValue()
	{
		return CQt.QInputDialog_DoubleValue(this.nativePtr);
	}
	
	public void SetDoubleMinimum(double min)
	{
		CQt.QInputDialog_SetDoubleMinimum(this.nativePtr, min);
	}
	
	public double DoubleMinimum()
	{
		return CQt.QInputDialog_DoubleMinimum(this.nativePtr);
	}
	
	public void SetDoubleMaximum(double max)
	{
		CQt.QInputDialog_SetDoubleMaximum(this.nativePtr, max);
	}
	
	public double DoubleMaximum()
	{
		return CQt.QInputDialog_DoubleMaximum(this.nativePtr);
	}
	
	public void SetDoubleRange(double min, double max)
	{
		CQt.QInputDialog_SetDoubleRange(this.nativePtr, min, max);
	}
	
	public void SetDoubleDecimals(int32 decimals)
	{
		CQt.QInputDialog_SetDoubleDecimals(this.nativePtr, decimals);
	}
	
	public int32 DoubleDecimals()
	{
		return CQt.QInputDialog_DoubleDecimals(this.nativePtr);
	}
	
	public void SetOkButtonText(String text)
	{
		CQt.QInputDialog_SetOkButtonText(this.nativePtr, libqt_string(text));
	}
	
	public libqt_string OkButtonText()
	{
		return CQt.QInputDialog_OkButtonText(this.nativePtr);
	}
	
	public void SetCancelButtonText(String text)
	{
		CQt.QInputDialog_SetCancelButtonText(this.nativePtr, libqt_string(text));
	}
	
	public libqt_string CancelButtonText()
	{
		return CQt.QInputDialog_CancelButtonText(this.nativePtr);
	}
	
	public void MinimumSizeHint()
	{
		CQt.QInputDialog_MinimumSizeHint(this.nativePtr);
	}
	
	public void SizeHint()
	{
		CQt.QInputDialog_SizeHint(this.nativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QInputDialog_SetVisible(this.nativePtr, visible);
	}
	
	public static libqt_string GetText(IQWidget parent, String title, String label)
	{
		return CQt.QInputDialog_GetText((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label));
	}
	
	public static libqt_string GetMultiLineText(IQWidget parent, String title, String label)
	{
		return CQt.QInputDialog_GetMultiLineText((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label));
	}
	
	public static libqt_string GetItem(IQWidget parent, String title, String label, String[] items)
	{
		return CQt.QInputDialog_GetItem((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), null);
	}
	
	public static int32 GetInt(IQWidget parent, String title, String label)
	{
		return CQt.QInputDialog_GetInt((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label));
	}
	
	public static double GetDouble(IQWidget parent, String title, String label)
	{
		return CQt.QInputDialog_GetDouble((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label));
	}
	
	public void SetDoubleStep(double step)
	{
		CQt.QInputDialog_SetDoubleStep(this.nativePtr, step);
	}
	
	public double DoubleStep()
	{
		return CQt.QInputDialog_DoubleStep(this.nativePtr);
	}
	
	public void Done(int32 result)
	{
		CQt.QInputDialog_Done(this.nativePtr, result);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QInputDialog_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QInputDialog_Tr3(s, c, n);
	}
	
	public void SetOption2(int64 option, bool on)
	{
		CQt.QInputDialog_SetOption2(this.nativePtr, (int64)option, on);
	}
	
	public static libqt_string GetText4(IQWidget parent, String title, String label, int64 echo)
	{
		return CQt.QInputDialog_GetText4((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), (int64)echo);
	}
	
	public static libqt_string GetText5(IQWidget parent, String title, String label, int64 echo, String text)
	{
		return CQt.QInputDialog_GetText5((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), (int64)echo, libqt_string(text));
	}
	
	public static libqt_string GetText6(IQWidget parent, String title, String label, int64 echo, String text, bool* ok)
	{
		return CQt.QInputDialog_GetText6((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), (int64)echo, libqt_string(text), ok);
	}
	
	public static libqt_string GetText7(IQWidget parent, String title, String label, int64 echo, String text, bool* ok, int64 flags)
	{
		return CQt.QInputDialog_GetText7((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), (int64)echo, libqt_string(text), ok, flags);
	}
	
	public static libqt_string GetText8(IQWidget parent, String title, String label, int64 echo, String text, bool* ok, int64 flags, int64 inputMethodHints)
	{
		return CQt.QInputDialog_GetText8((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), (int64)echo, libqt_string(text), ok, flags, inputMethodHints);
	}
	
	public static libqt_string GetMultiLineText4(IQWidget parent, String title, String label, String text)
	{
		return CQt.QInputDialog_GetMultiLineText4((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), libqt_string(text));
	}
	
	public static libqt_string GetMultiLineText5(IQWidget parent, String title, String label, String text, bool* ok)
	{
		return CQt.QInputDialog_GetMultiLineText5((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), libqt_string(text), ok);
	}
	
	public static libqt_string GetMultiLineText6(IQWidget parent, String title, String label, String text, bool* ok, int64 flags)
	{
		return CQt.QInputDialog_GetMultiLineText6((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), libqt_string(text), ok, flags);
	}
	
	public static libqt_string GetMultiLineText7(IQWidget parent, String title, String label, String text, bool* ok, int64 flags, int64 inputMethodHints)
	{
		return CQt.QInputDialog_GetMultiLineText7((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), libqt_string(text), ok, flags, inputMethodHints);
	}
	
	public static libqt_string GetItem5(IQWidget parent, String title, String label, String[] items, int32 current)
	{
		return CQt.QInputDialog_GetItem5((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), null, current);
	}
	
	public static libqt_string GetItem6(IQWidget parent, String title, String label, String[] items, int32 current, bool editable)
	{
		return CQt.QInputDialog_GetItem6((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), null, current, editable);
	}
	
	public static libqt_string GetItem7(IQWidget parent, String title, String label, String[] items, int32 current, bool editable, bool* ok)
	{
		return CQt.QInputDialog_GetItem7((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), null, current, editable, ok);
	}
	
	public static libqt_string GetItem8(IQWidget parent, String title, String label, String[] items, int32 current, bool editable, bool* ok, int64 flags)
	{
		return CQt.QInputDialog_GetItem8((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), null, current, editable, ok, flags);
	}
	
	public static libqt_string GetItem9(IQWidget parent, String title, String label, String[] items, int32 current, bool editable, bool* ok, int64 flags, int64 inputMethodHints)
	{
		return CQt.QInputDialog_GetItem9((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), null, current, editable, ok, flags, inputMethodHints);
	}
	
	public static int32 GetInt4(IQWidget parent, String title, String label, int32 value)
	{
		return CQt.QInputDialog_GetInt4((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), value);
	}
	
	public static int32 GetInt5(IQWidget parent, String title, String label, int32 value, int32 minValue)
	{
		return CQt.QInputDialog_GetInt5((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), value, minValue);
	}
	
	public static int32 GetInt6(IQWidget parent, String title, String label, int32 value, int32 minValue, int32 maxValue)
	{
		return CQt.QInputDialog_GetInt6((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), value, minValue, maxValue);
	}
	
	public static int32 GetInt7(IQWidget parent, String title, String label, int32 value, int32 minValue, int32 maxValue, int32 step)
	{
		return CQt.QInputDialog_GetInt7((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), value, minValue, maxValue, step);
	}
	
	public static int32 GetInt8(IQWidget parent, String title, String label, int32 value, int32 minValue, int32 maxValue, int32 step, bool* ok)
	{
		return CQt.QInputDialog_GetInt8((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), value, minValue, maxValue, step, ok);
	}
	
	public static int32 GetInt9(IQWidget parent, String title, String label, int32 value, int32 minValue, int32 maxValue, int32 step, bool* ok, int64 flags)
	{
		return CQt.QInputDialog_GetInt9((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), value, minValue, maxValue, step, ok, flags);
	}
	
	public static double GetDouble4(IQWidget parent, String title, String label, double value)
	{
		return CQt.QInputDialog_GetDouble4((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), value);
	}
	
	public static double GetDouble5(IQWidget parent, String title, String label, double value, double minValue)
	{
		return CQt.QInputDialog_GetDouble5((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), value, minValue);
	}
	
	public static double GetDouble6(IQWidget parent, String title, String label, double value, double minValue, double maxValue)
	{
		return CQt.QInputDialog_GetDouble6((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), value, minValue, maxValue);
	}
	
	public static double GetDouble7(IQWidget parent, String title, String label, double value, double minValue, double maxValue, int32 decimals)
	{
		return CQt.QInputDialog_GetDouble7((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), value, minValue, maxValue, decimals);
	}
	
	public static double GetDouble8(IQWidget parent, String title, String label, double value, double minValue, double maxValue, int32 decimals, bool* ok)
	{
		return CQt.QInputDialog_GetDouble8((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), value, minValue, maxValue, decimals, ok);
	}
	
	public static double GetDouble9(IQWidget parent, String title, String label, double value, double minValue, double maxValue, int32 decimals, bool* ok, int64 flags)
	{
		return CQt.QInputDialog_GetDouble9((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), value, minValue, maxValue, decimals, ok, flags);
	}
	
	public static double GetDouble10(IQWidget parent, String title, String label, double value, double minValue, double maxValue, int32 decimals, bool* ok, int64 flags, double step)
	{
		return CQt.QInputDialog_GetDouble10((parent == default || parent.NativePtr == default) ? default : parent.NativePtr, libqt_string(title), libqt_string(label), value, minValue, maxValue, decimals, ok, flags, step);
	}
	
	public int32 Result()
	{
		return CQt.QDialog_Result(this.nativePtr);
	}
	
	public void SetSizeGripEnabled(bool sizeGripEnabled)
	{
		CQt.QDialog_SetSizeGripEnabled(this.nativePtr, sizeGripEnabled);
	}
	
	public bool IsSizeGripEnabled()
	{
		return CQt.QDialog_IsSizeGripEnabled(this.nativePtr);
	}
	
	public void SetModal(bool modal)
	{
		CQt.QDialog_SetModal(this.nativePtr, modal);
	}
	
	public void SetResult(int32 r)
	{
		CQt.QDialog_SetResult(this.nativePtr, r);
	}
	
	public void Open()
	{
		CQt.QDialog_Open(this.nativePtr);
	}
	
	public int32 Exec()
	{
		return CQt.QDialog_Exec(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QDialog_Accept(this.nativePtr);
	}
	
	public void Reject()
	{
		CQt.QDialog_Reject(this.nativePtr);
	}
	
	public int32 DevType()
	{
		return CQt.QWidget_DevType(this.nativePtr);
	}
	
	public c_uintptr WinId()
	{
		return CQt.QWidget_WinId(this.nativePtr);
	}
	
	public void CreateWinId()
	{
		CQt.QWidget_CreateWinId(this.nativePtr);
	}
	
	public c_uintptr InternalWinId()
	{
		return CQt.QWidget_InternalWinId(this.nativePtr);
	}
	
	public c_uintptr EffectiveWinId()
	{
		return CQt.QWidget_EffectiveWinId(this.nativePtr);
	}
	
	public void* Style()
	{
		return CQt.QWidget_Style(this.nativePtr);
	}
	
	public void SetStyle(IQStyle style)
	{
		CQt.QWidget_SetStyle(this.nativePtr, (style == default || style.NativePtr == default) ? default : style.NativePtr);
	}
	
	public bool IsTopLevel()
	{
		return CQt.QWidget_IsTopLevel(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QWidget_IsWindow(this.nativePtr);
	}
	
	public bool IsModal()
	{
		return CQt.QWidget_IsModal(this.nativePtr);
	}
	
	public int64 WindowModality()
	{
		return CQt.QWidget_WindowModality(this.nativePtr);
	}
	
	public void SetWindowModality(int64 windowModality)
	{
		CQt.QWidget_SetWindowModality(this.nativePtr, (int64)windowModality);
	}
	
	public bool IsEnabled()
	{
		return CQt.QWidget_IsEnabled(this.nativePtr);
	}
	
	public bool IsEnabledTo(IQWidget param1)
	{
		return CQt.QWidget_IsEnabledTo(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QWidget_SetEnabled(this.nativePtr, enabled);
	}
	
	public void SetDisabled(bool disabled)
	{
		CQt.QWidget_SetDisabled(this.nativePtr, disabled);
	}
	
	public void SetWindowModified(bool windowModified)
	{
		CQt.QWidget_SetWindowModified(this.nativePtr, windowModified);
	}
	
	public void FrameGeometry()
	{
		CQt.QWidget_FrameGeometry(this.nativePtr);
	}
	
	public void* Geometry()
	{
		return CQt.QWidget_Geometry(this.nativePtr);
	}
	
	public void NormalGeometry()
	{
		CQt.QWidget_NormalGeometry(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QWidget_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QWidget_Y(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QWidget_Pos(this.nativePtr);
	}
	
	public void FrameSize()
	{
		CQt.QWidget_FrameSize(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QWidget_Size(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QWidget_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QWidget_Height(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QWidget_Rect(this.nativePtr);
	}
	
	public void ChildrenRect()
	{
		CQt.QWidget_ChildrenRect(this.nativePtr);
	}
	
	public void ChildrenRegion()
	{
		CQt.QWidget_ChildrenRegion(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QWidget_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QWidget_MaximumSize(this.nativePtr);
	}
	
	public int32 MinimumWidth()
	{
		return CQt.QWidget_MinimumWidth(this.nativePtr);
	}
	
	public int32 MinimumHeight()
	{
		return CQt.QWidget_MinimumHeight(this.nativePtr);
	}
	
	public int32 MaximumWidth()
	{
		return CQt.QWidget_MaximumWidth(this.nativePtr);
	}
	
	public int32 MaximumHeight()
	{
		return CQt.QWidget_MaximumHeight(this.nativePtr);
	}
	
	public void SetMinimumSize(IQSize minimumSize)
	{
		CQt.QWidget_SetMinimumSize(this.nativePtr, (minimumSize == default || minimumSize.NativePtr == default) ? default : minimumSize.NativePtr);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		CQt.QWidget_SetMinimumSize2(this.nativePtr, minw, minh);
	}
	
	public void SetMaximumSize(IQSize maximumSize)
	{
		CQt.QWidget_SetMaximumSize(this.nativePtr, (maximumSize == default || maximumSize.NativePtr == default) ? default : maximumSize.NativePtr);
	}
	
	public void SetMaximumSize2(int32 maxw, int32 maxh)
	{
		CQt.QWidget_SetMaximumSize2(this.nativePtr, maxw, maxh);
	}
	
	public void SetMinimumWidth(int32 minw)
	{
		CQt.QWidget_SetMinimumWidth(this.nativePtr, minw);
	}
	
	public void SetMinimumHeight(int32 minh)
	{
		CQt.QWidget_SetMinimumHeight(this.nativePtr, minh);
	}
	
	public void SetMaximumWidth(int32 maxw)
	{
		CQt.QWidget_SetMaximumWidth(this.nativePtr, maxw);
	}
	
	public void SetMaximumHeight(int32 maxh)
	{
		CQt.QWidget_SetMaximumHeight(this.nativePtr, maxh);
	}
	
	public void SizeIncrement()
	{
		CQt.QWidget_SizeIncrement(this.nativePtr);
	}
	
	public void SetSizeIncrement(IQSize sizeIncrement)
	{
		CQt.QWidget_SetSizeIncrement(this.nativePtr, (sizeIncrement == default || sizeIncrement.NativePtr == default) ? default : sizeIncrement.NativePtr);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		CQt.QWidget_SetSizeIncrement2(this.nativePtr, w, h);
	}
	
	public void BaseSize()
	{
		CQt.QWidget_BaseSize(this.nativePtr);
	}
	
	public void SetBaseSize(IQSize baseSize)
	{
		CQt.QWidget_SetBaseSize(this.nativePtr, (baseSize == default || baseSize.NativePtr == default) ? default : baseSize.NativePtr);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		CQt.QWidget_SetBaseSize2(this.nativePtr, basew, baseh);
	}
	
	public void SetFixedSize(IQSize fixedSize)
	{
		CQt.QWidget_SetFixedSize(this.nativePtr, (fixedSize == default || fixedSize.NativePtr == default) ? default : fixedSize.NativePtr);
	}
	
	public void SetFixedSize2(int32 w, int32 h)
	{
		CQt.QWidget_SetFixedSize2(this.nativePtr, w, h);
	}
	
	public void SetFixedWidth(int32 w)
	{
		CQt.QWidget_SetFixedWidth(this.nativePtr, w);
	}
	
	public void SetFixedHeight(int32 h)
	{
		CQt.QWidget_SetFixedHeight(this.nativePtr, h);
	}
	
	public void MapToGlobal(IQPointF param1)
	{
		CQt.QWidget_MapToGlobal(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapToGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToGlobalWithQPoint(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapFromGlobal(IQPointF param1)
	{
		CQt.QWidget_MapFromGlobal(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapFromGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromGlobalWithQPoint(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapToParent(IQPointF param1)
	{
		CQt.QWidget_MapToParent(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapToParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToParentWithQPoint(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapFromParent(IQPointF param1)
	{
		CQt.QWidget_MapFromParent(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapFromParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromParentWithQPoint(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapTo(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapTo(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void MapTo2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapTo2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void MapFrom(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapFrom(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void MapFrom2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapFrom2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void* Window()
	{
		return CQt.QWidget_Window(this.nativePtr);
	}
	
	public void* NativeParentWidget()
	{
		return CQt.QWidget_NativeParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QWidget_TopLevelWidget(this.nativePtr);
	}
	
	public void* Palette()
	{
		return CQt.QWidget_Palette(this.nativePtr);
	}
	
	public void SetPalette(IQPalette palette)
	{
		CQt.QWidget_SetPalette(this.nativePtr, (palette == default || palette.NativePtr == default) ? default : palette.NativePtr);
	}
	
	public void SetBackgroundRole(int64 backgroundRole)
	{
		CQt.QWidget_SetBackgroundRole(this.nativePtr, (int64)backgroundRole);
	}
	
	public int64 BackgroundRole()
	{
		return CQt.QWidget_BackgroundRole(this.nativePtr);
	}
	
	public void SetForegroundRole(int64 foregroundRole)
	{
		CQt.QWidget_SetForegroundRole(this.nativePtr, (int64)foregroundRole);
	}
	
	public int64 ForegroundRole()
	{
		return CQt.QWidget_ForegroundRole(this.nativePtr);
	}
	
	public void* Font()
	{
		return CQt.QWidget_Font(this.nativePtr);
	}
	
	public void SetFont(IQFont font)
	{
		CQt.QWidget_SetFont(this.nativePtr, (font == default || font.NativePtr == default) ? default : font.NativePtr);
	}
	
	public void FontMetrics()
	{
		CQt.QWidget_FontMetrics(this.nativePtr);
	}
	
	public void FontInfo()
	{
		CQt.QWidget_FontInfo(this.nativePtr);
	}
	
	public void Cursor()
	{
		CQt.QWidget_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QWidget_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QWidget_UnsetCursor(this.nativePtr);
	}
	
	public void SetMouseTracking(bool enable)
	{
		CQt.QWidget_SetMouseTracking(this.nativePtr, enable);
	}
	
	public bool HasMouseTracking()
	{
		return CQt.QWidget_HasMouseTracking(this.nativePtr);
	}
	
	public bool UnderMouse()
	{
		return CQt.QWidget_UnderMouse(this.nativePtr);
	}
	
	public void SetTabletTracking(bool enable)
	{
		CQt.QWidget_SetTabletTracking(this.nativePtr, enable);
	}
	
	public bool HasTabletTracking()
	{
		return CQt.QWidget_HasTabletTracking(this.nativePtr);
	}
	
	public void SetMask(IQBitmap mask)
	{
		CQt.QWidget_SetMask(this.nativePtr, (mask == default || mask.NativePtr == default) ? default : mask.NativePtr);
	}
	
	public void SetMaskWithMask(IQRegion mask)
	{
		CQt.QWidget_SetMaskWithMask(this.nativePtr, (mask == default || mask.NativePtr == default) ? default : mask.NativePtr);
	}
	
	public void Mask()
	{
		CQt.QWidget_Mask(this.nativePtr);
	}
	
	public void ClearMask()
	{
		CQt.QWidget_ClearMask(this.nativePtr);
	}
	
	public void Render(IQPaintDevice target)
	{
		CQt.QWidget_Render(this.nativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr);
	}
	
	public void RenderWithPainter(IQPainter painter)
	{
		CQt.QWidget_RenderWithPainter(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr);
	}
	
	public void Grab()
	{
		CQt.QWidget_Grab(this.nativePtr);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QWidget_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QWidget_SetGraphicsEffect(this.nativePtr, (effect == default || effect.NativePtr == default) ? default : effect.NativePtr);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QWidget_GrabGesture(this.nativePtr, (int64)typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QWidget_UngrabGesture(this.nativePtr, (int64)typeVal);
	}
	
	public void SetWindowTitle(String windowTitle)
	{
		CQt.QWidget_SetWindowTitle(this.nativePtr, libqt_string(windowTitle));
	}
	
	public void SetStyleSheet(String styleSheet)
	{
		CQt.QWidget_SetStyleSheet(this.nativePtr, libqt_string(styleSheet));
	}
	
	public libqt_string StyleSheet()
	{
		return CQt.QWidget_StyleSheet(this.nativePtr);
	}
	
	public libqt_string WindowTitle()
	{
		return CQt.QWidget_WindowTitle(this.nativePtr);
	}
	
	public void SetWindowIcon(IQIcon icon)
	{
		CQt.QWidget_SetWindowIcon(this.nativePtr, (icon == default || icon.NativePtr == default) ? default : icon.NativePtr);
	}
	
	public void WindowIcon()
	{
		CQt.QWidget_WindowIcon(this.nativePtr);
	}
	
	public void SetWindowIconText(String windowIconText)
	{
		CQt.QWidget_SetWindowIconText(this.nativePtr, libqt_string(windowIconText));
	}
	
	public libqt_string WindowIconText()
	{
		return CQt.QWidget_WindowIconText(this.nativePtr);
	}
	
	public void SetWindowRole(String windowRole)
	{
		CQt.QWidget_SetWindowRole(this.nativePtr, libqt_string(windowRole));
	}
	
	public libqt_string WindowRole()
	{
		return CQt.QWidget_WindowRole(this.nativePtr);
	}
	
	public void SetWindowFilePath(String filePath)
	{
		CQt.QWidget_SetWindowFilePath(this.nativePtr, libqt_string(filePath));
	}
	
	public libqt_string WindowFilePath()
	{
		return CQt.QWidget_WindowFilePath(this.nativePtr);
	}
	
	public void SetWindowOpacity(double level)
	{
		CQt.QWidget_SetWindowOpacity(this.nativePtr, level);
	}
	
	public double WindowOpacity()
	{
		return CQt.QWidget_WindowOpacity(this.nativePtr);
	}
	
	public bool IsWindowModified()
	{
		return CQt.QWidget_IsWindowModified(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QWidget_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QWidget_ToolTip(this.nativePtr);
	}
	
	public void SetToolTipDuration(int32 msec)
	{
		CQt.QWidget_SetToolTipDuration(this.nativePtr, msec);
	}
	
	public int32 ToolTipDuration()
	{
		return CQt.QWidget_ToolTipDuration(this.nativePtr);
	}
	
	public void SetStatusTip(String statusTip)
	{
		CQt.QWidget_SetStatusTip(this.nativePtr, libqt_string(statusTip));
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QWidget_StatusTip(this.nativePtr);
	}
	
	public void SetWhatsThis(String whatsThis)
	{
		CQt.QWidget_SetWhatsThis(this.nativePtr, libqt_string(whatsThis));
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QWidget_WhatsThis(this.nativePtr);
	}
	
	public libqt_string AccessibleName()
	{
		return CQt.QWidget_AccessibleName(this.nativePtr);
	}
	
	public void SetAccessibleName(String name)
	{
		CQt.QWidget_SetAccessibleName(this.nativePtr, libqt_string(name));
	}
	
	public libqt_string AccessibleDescription()
	{
		return CQt.QWidget_AccessibleDescription(this.nativePtr);
	}
	
	public void SetAccessibleDescription(String description)
	{
		CQt.QWidget_SetAccessibleDescription(this.nativePtr, libqt_string(description));
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QWidget_SetLayoutDirection(this.nativePtr, (int64)direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QWidget_LayoutDirection(this.nativePtr);
	}
	
	public void UnsetLayoutDirection()
	{
		CQt.QWidget_UnsetLayoutDirection(this.nativePtr);
	}
	
	public void SetLocale(IQLocale locale)
	{
		CQt.QWidget_SetLocale(this.nativePtr, (locale == default || locale.NativePtr == default) ? default : locale.NativePtr);
	}
	
	public void Locale()
	{
		CQt.QWidget_Locale(this.nativePtr);
	}
	
	public void UnsetLocale()
	{
		CQt.QWidget_UnsetLocale(this.nativePtr);
	}
	
	public bool IsRightToLeft()
	{
		return CQt.QWidget_IsRightToLeft(this.nativePtr);
	}
	
	public bool IsLeftToRight()
	{
		return CQt.QWidget_IsLeftToRight(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QWidget_SetFocus(this.nativePtr);
	}
	
	public bool IsActiveWindow()
	{
		return CQt.QWidget_IsActiveWindow(this.nativePtr);
	}
	
	public void ActivateWindow()
	{
		CQt.QWidget_ActivateWindow(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QWidget_ClearFocus(this.nativePtr);
	}
	
	public void SetFocusWithReason(int64 reason)
	{
		CQt.QWidget_SetFocusWithReason(this.nativePtr, (int64)reason);
	}
	
	public int64 FocusPolicy()
	{
		return CQt.QWidget_FocusPolicy(this.nativePtr);
	}
	
	public void SetFocusPolicy(int64 policy)
	{
		CQt.QWidget_SetFocusPolicy(this.nativePtr, (int64)policy);
	}
	
	public bool HasFocus()
	{
		return CQt.QWidget_HasFocus(this.nativePtr);
	}
	
	public static void SetTabOrder(IQWidget param1, IQWidget param2)
	{
		CQt.QWidget_SetTabOrder((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void SetFocusProxy(IQWidget focusProxy)
	{
		CQt.QWidget_SetFocusProxy(this.nativePtr, (focusProxy == default || focusProxy.NativePtr == default) ? default : focusProxy.NativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QWidget_FocusProxy(this.nativePtr);
	}
	
	public int64 ContextMenuPolicy()
	{
		return CQt.QWidget_ContextMenuPolicy(this.nativePtr);
	}
	
	public void SetContextMenuPolicy(int64 policy)
	{
		CQt.QWidget_SetContextMenuPolicy(this.nativePtr, (int64)policy);
	}
	
	public void GrabMouse()
	{
		CQt.QWidget_GrabMouse(this.nativePtr);
	}
	
	public void GrabMouseWithQCursor(IQCursor param1)
	{
		CQt.QWidget_GrabMouseWithQCursor(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void ReleaseMouse()
	{
		CQt.QWidget_ReleaseMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QWidget_GrabKeyboard(this.nativePtr);
	}
	
	public void ReleaseKeyboard()
	{
		CQt.QWidget_ReleaseKeyboard(this.nativePtr);
	}
	
	public int32 GrabShortcut(IQKeySequence key)
	{
		return CQt.QWidget_GrabShortcut(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr);
	}
	
	public void ReleaseShortcut(int32 id)
	{
		CQt.QWidget_ReleaseShortcut(this.nativePtr, id);
	}
	
	public void SetShortcutEnabled(int32 id)
	{
		CQt.QWidget_SetShortcutEnabled(this.nativePtr, id);
	}
	
	public void SetShortcutAutoRepeat(int32 id)
	{
		CQt.QWidget_SetShortcutAutoRepeat(this.nativePtr, id);
	}
	
	public static void* MouseGrabber()
	{
		return CQt.QWidget_MouseGrabber();
	}
	
	public static void* KeyboardGrabber()
	{
		return CQt.QWidget_KeyboardGrabber();
	}
	
	public bool UpdatesEnabled()
	{
		return CQt.QWidget_UpdatesEnabled(this.nativePtr);
	}
	
	public void SetUpdatesEnabled(bool enable)
	{
		CQt.QWidget_SetUpdatesEnabled(this.nativePtr, enable);
	}
	
	public void* GraphicsProxyWidget()
	{
		return CQt.QWidget_GraphicsProxyWidget(this.nativePtr);
	}
	
	public void Update()
	{
		CQt.QWidget_Update(this.nativePtr);
	}
	
	public void Repaint()
	{
		CQt.QWidget_Repaint(this.nativePtr);
	}
	
	public void Update2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Update2(this.nativePtr, x, y, w, h);
	}
	
	public void UpdateWithQRect(IQRect param1)
	{
		CQt.QWidget_UpdateWithQRect(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void UpdateWithQRegion(IQRegion param1)
	{
		CQt.QWidget_UpdateWithQRegion(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Repaint2(this.nativePtr, x, y, w, h);
	}
	
	public void RepaintWithQRect(IQRect param1)
	{
		CQt.QWidget_RepaintWithQRect(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void RepaintWithQRegion(IQRegion param1)
	{
		CQt.QWidget_RepaintWithQRegion(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void SetHidden(bool hidden)
	{
		CQt.QWidget_SetHidden(this.nativePtr, hidden);
	}
	
	public void Show()
	{
		CQt.QWidget_Show(this.nativePtr);
	}
	
	public void Hide()
	{
		CQt.QWidget_Hide(this.nativePtr);
	}
	
	public void ShowMinimized()
	{
		CQt.QWidget_ShowMinimized(this.nativePtr);
	}
	
	public void ShowMaximized()
	{
		CQt.QWidget_ShowMaximized(this.nativePtr);
	}
	
	public void ShowFullScreen()
	{
		CQt.QWidget_ShowFullScreen(this.nativePtr);
	}
	
	public void ShowNormal()
	{
		CQt.QWidget_ShowNormal(this.nativePtr);
	}
	
	public bool Close()
	{
		return CQt.QWidget_Close(this.nativePtr);
	}
	
	public void Raise()
	{
		CQt.QWidget_Raise(this.nativePtr);
	}
	
	public void Lower()
	{
		CQt.QWidget_Lower(this.nativePtr);
	}
	
	public void StackUnder(IQWidget param1)
	{
		CQt.QWidget_StackUnder(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Move(int32 x, int32 y)
	{
		CQt.QWidget_Move(this.nativePtr, x, y);
	}
	
	public void MoveWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MoveWithQPoint(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Resize(int32 w, int32 h)
	{
		CQt.QWidget_Resize(this.nativePtr, w, h);
	}
	
	public void ResizeWithQSize(IQSize param1)
	{
		CQt.QWidget_ResizeWithQSize(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_SetGeometry(this.nativePtr, x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(IQRect geometry)
	{
		CQt.QWidget_SetGeometryWithGeometry(this.nativePtr, (geometry == default || geometry.NativePtr == default) ? default : geometry.NativePtr);
	}
	
	public libqt_string SaveGeometry()
	{
		return CQt.QWidget_SaveGeometry(this.nativePtr);
	}
	
	public bool RestoreGeometry(String geometry)
	{
		return CQt.QWidget_RestoreGeometry(this.nativePtr, libqt_string(geometry));
	}
	
	public void AdjustSize()
	{
		CQt.QWidget_AdjustSize(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QWidget_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQWidget param1)
	{
		return CQt.QWidget_IsVisibleTo(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public bool IsHidden()
	{
		return CQt.QWidget_IsHidden(this.nativePtr);
	}
	
	public bool IsMinimized()
	{
		return CQt.QWidget_IsMinimized(this.nativePtr);
	}
	
	public bool IsMaximized()
	{
		return CQt.QWidget_IsMaximized(this.nativePtr);
	}
	
	public bool IsFullScreen()
	{
		return CQt.QWidget_IsFullScreen(this.nativePtr);
	}
	
	public int64 WindowState()
	{
		return CQt.QWidget_WindowState(this.nativePtr);
	}
	
	public void SetWindowState(int64 state)
	{
		CQt.QWidget_SetWindowState(this.nativePtr, state);
	}
	
	public void OverrideWindowState(int64 state)
	{
		CQt.QWidget_OverrideWindowState(this.nativePtr, state);
	}
	
	public void SizePolicy()
	{
		CQt.QWidget_SizePolicy(this.nativePtr);
	}
	
	public void SetSizePolicy(IQSizePolicy sizePolicy)
	{
		CQt.QWidget_SetSizePolicy(this.nativePtr, default);
	}
	
	public void SetSizePolicy2(int64 horizontal, int64 vertical)
	{
		CQt.QWidget_SetSizePolicy2(this.nativePtr, (int64)horizontal, (int64)vertical);
	}
	
	public int32 HeightForWidth(int32 param1)
	{
		return CQt.QWidget_HeightForWidth(this.nativePtr, param1);
	}
	
	public bool HasHeightForWidth()
	{
		return CQt.QWidget_HasHeightForWidth(this.nativePtr);
	}
	
	public void VisibleRegion()
	{
		CQt.QWidget_VisibleRegion(this.nativePtr);
	}
	
	public void SetContentsMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		CQt.QWidget_SetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(IQMargins margins)
	{
		CQt.QWidget_SetContentsMarginsWithMargins(this.nativePtr, (margins == default || margins.NativePtr == default) ? default : margins.NativePtr);
	}
	
	public void ContentsMargins()
	{
		CQt.QWidget_ContentsMargins(this.nativePtr);
	}
	
	public void ContentsRect()
	{
		CQt.QWidget_ContentsRect(this.nativePtr);
	}
	
	public void* Layout()
	{
		return CQt.QWidget_Layout(this.nativePtr);
	}
	
	public void SetLayout(IQLayout layout)
	{
		CQt.QWidget_SetLayout(this.nativePtr, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr);
	}
	
	public void UpdateGeometry()
	{
		CQt.QWidget_UpdateGeometry(this.nativePtr);
	}
	
	public void SetParent(IQWidget parent)
	{
		CQt.QWidget_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetParent2(IQWidget parent, int64 f)
	{
		CQt.QWidget_SetParent2(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		CQt.QWidget_Scroll(this.nativePtr, dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, IQRect param3)
	{
		CQt.QWidget_Scroll2(this.nativePtr, dx, dy, (param3 == default || param3.NativePtr == default) ? default : param3.NativePtr);
	}
	
	public void* FocusWidget()
	{
		return CQt.QWidget_FocusWidget(this.nativePtr);
	}
	
	public void* NextInFocusChain()
	{
		return CQt.QWidget_NextInFocusChain(this.nativePtr);
	}
	
	public void* PreviousInFocusChain()
	{
		return CQt.QWidget_PreviousInFocusChain(this.nativePtr);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QWidget_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QWidget_SetAcceptDrops(this.nativePtr, on);
	}
	
	public void AddAction(IQAction action)
	{
		CQt.QWidget_AddAction(this.nativePtr, (action == default || action.NativePtr == default) ? default : action.NativePtr);
	}
	
	public void AddActions(IQAction[] actions)
	{
		CQt.QWidget_AddActions(this.nativePtr, null);
	}
	
	public void InsertActions(IQAction before, IQAction[] actions)
	{
		CQt.QWidget_InsertActions(this.nativePtr, (before == default || before.NativePtr == default) ? default : before.NativePtr, null);
	}
	
	public void InsertAction(IQAction before, IQAction action)
	{
		CQt.QWidget_InsertAction(this.nativePtr, (before == default || before.NativePtr == default) ? default : before.NativePtr, (action == default || action.NativePtr == default) ? default : action.NativePtr);
	}
	
	public void RemoveAction(IQAction action)
	{
		CQt.QWidget_RemoveAction(this.nativePtr, (action == default || action.NativePtr == default) ? default : action.NativePtr);
	}
	
	public void*[] Actions()
	{
		return CQt.QWidget_Actions(this.nativePtr);
	}
	
	public void* AddActionWithText(String text)
	{
		return CQt.QWidget_AddActionWithText(this.nativePtr, libqt_string(text));
	}
	
	public void* AddAction2(IQIcon icon, String text)
	{
		return CQt.QWidget_AddAction2(this.nativePtr, (icon == default || icon.NativePtr == default) ? default : icon.NativePtr, libqt_string(text));
	}
	
	public void* AddAction3(String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction3(this.nativePtr, libqt_string(text), (shortcut == default || shortcut.NativePtr == default) ? default : shortcut.NativePtr);
	}
	
	public void* AddAction4(IQIcon icon, String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction4(this.nativePtr, (icon == default || icon.NativePtr == default) ? default : icon.NativePtr, libqt_string(text), (shortcut == default || shortcut.NativePtr == default) ? default : shortcut.NativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QWidget_ParentWidget(this.nativePtr);
	}
	
	public void SetWindowFlags(int64 typeVal)
	{
		CQt.QWidget_SetWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowFlags()
	{
		return CQt.QWidget_WindowFlags(this.nativePtr);
	}
	
	public void SetWindowFlag(int64 param1)
	{
		CQt.QWidget_SetWindowFlag(this.nativePtr, (int64)param1);
	}
	
	public void OverrideWindowFlags(int64 typeVal)
	{
		CQt.QWidget_OverrideWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowType()
	{
		return CQt.QWidget_WindowType(this.nativePtr);
	}
	
	public static void* Find(uint64 param1)
	{
		return CQt.QWidget_Find(param1);
	}
	
	public void* ChildAt(int32 x, int32 y)
	{
		return CQt.QWidget_ChildAt(this.nativePtr, x, y);
	}
	
	public void* ChildAtWithQPoint(IQPoint p)
	{
		return CQt.QWidget_ChildAtWithQPoint(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public void SetAttribute(int64 param1)
	{
		CQt.QWidget_SetAttribute(this.nativePtr, (int64)param1);
	}
	
	public bool TestAttribute(int64 param1)
	{
		return CQt.QWidget_TestAttribute(this.nativePtr, (int64)param1);
	}
	
	public void* PaintEngine()
	{
		return CQt.QWidget_PaintEngine(this.nativePtr);
	}
	
	public void EnsurePolished()
	{
		CQt.QWidget_EnsurePolished(this.nativePtr);
	}
	
	public bool IsAncestorOf(IQWidget child)
	{
		return CQt.QWidget_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public bool AutoFillBackground()
	{
		return CQt.QWidget_AutoFillBackground(this.nativePtr);
	}
	
	public void SetAutoFillBackground(bool enabled)
	{
		CQt.QWidget_SetAutoFillBackground(this.nativePtr, enabled);
	}
	
	public void* BackingStore()
	{
		return CQt.QWidget_BackingStore(this.nativePtr);
	}
	
	public void* WindowHandle()
	{
		return CQt.QWidget_WindowHandle(this.nativePtr);
	}
	
	public void* Screen()
	{
		return CQt.QWidget_Screen(this.nativePtr);
	}
	
	public void SetScreen(IQScreen screen)
	{
		CQt.QWidget_SetScreen(this.nativePtr, (screen == default || screen.NativePtr == default) ? default : screen.NativePtr);
	}
	
	public static void* CreateWindowContainer(IQWindow window)
	{
		return CQt.QWidget_CreateWindowContainer((window == default || window.NativePtr == default) ? default : window.NativePtr);
	}
	
	public void InputMethodQuery(int64 param1)
	{
		CQt.QWidget_InputMethodQuery(this.nativePtr, (int64)param1);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QWidget_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QWidget_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void Render2(IQPaintDevice target, IQPoint targetOffset)
	{
		CQt.QWidget_Render2(this.nativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr);
	}
	
	public void Render3(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render3(this.nativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr, (sourceRegion == default || sourceRegion.NativePtr == default) ? default : sourceRegion.NativePtr);
	}
	
	public void Render4(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render4(this.nativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr, (sourceRegion == default || sourceRegion.NativePtr == default) ? default : sourceRegion.NativePtr, renderFlags);
	}
	
	public void Render22(IQPainter painter, IQPoint targetOffset)
	{
		CQt.QWidget_Render22(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr);
	}
	
	public void Render32(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render32(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr, (sourceRegion == default || sourceRegion.NativePtr == default) ? default : sourceRegion.NativePtr);
	}
	
	public void Render42(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render42(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr, (sourceRegion == default || sourceRegion.NativePtr == default) ? default : sourceRegion.NativePtr, renderFlags);
	}
	
	public void Grab1(IQRect rectangle)
	{
		CQt.QWidget_Grab1(this.nativePtr, (rectangle == default || rectangle.NativePtr == default) ? default : rectangle.NativePtr);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QWidget_GrabGesture2(this.nativePtr, (int64)typeVal, flags);
	}
	
	public int32 GrabShortcut2(IQKeySequence key, int64 context)
	{
		return CQt.QWidget_GrabShortcut2(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr, (int64)context);
	}
	
	public void SetShortcutEnabled2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutEnabled2(this.nativePtr, id, enable);
	}
	
	public void SetShortcutAutoRepeat2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutAutoRepeat2(this.nativePtr, id, enable);
	}
	
	public void SetWindowFlag2(int64 param1, bool on)
	{
		CQt.QWidget_SetWindowFlag2(this.nativePtr, (int64)param1, on);
	}
	
	public void SetAttribute2(int64 param1, bool on)
	{
		CQt.QWidget_SetAttribute2(this.nativePtr, (int64)param1, on);
	}
	
	public static void* CreateWindowContainer2(IQWindow window, IQWidget parent)
	{
		return CQt.QWidget_CreateWindowContainer2((window == default || window.NativePtr == default) ? default : window.NativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public static void* CreateWindowContainer3(IQWindow window, IQWidget parent, int64 flags)
	{
		return CQt.QWidget_CreateWindowContainer3((window == default || window.NativePtr == default) ? default : window.NativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, flags);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(char8* name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (member == default || member.NativePtr == default) ? default : member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Property(char8* name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8* classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, (int64)timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr, (int64)typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member, (int64)typeVal);
	}
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public int32 WidthMM()
	{
		return CQt.QPaintDevice_WidthMM(this.nativePtr);
	}
	
	public int32 HeightMM()
	{
		return CQt.QPaintDevice_HeightMM(this.nativePtr);
	}
	
	public int32 LogicalDpiX()
	{
		return CQt.QPaintDevice_LogicalDpiX(this.nativePtr);
	}
	
	public int32 LogicalDpiY()
	{
		return CQt.QPaintDevice_LogicalDpiY(this.nativePtr);
	}
	
	public int32 PhysicalDpiX()
	{
		return CQt.QPaintDevice_PhysicalDpiX(this.nativePtr);
	}
	
	public int32 PhysicalDpiY()
	{
		return CQt.QPaintDevice_PhysicalDpiY(this.nativePtr);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QPaintDevice_DevicePixelRatio(this.nativePtr);
	}
	
	public double DevicePixelRatioF()
	{
		return CQt.QPaintDevice_DevicePixelRatioF(this.nativePtr);
	}
	
	public int32 ColorCount()
	{
		return CQt.QPaintDevice_ColorCount(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QPaintDevice_Depth(this.nativePtr);
	}
	
	public static double DevicePixelRatioFScale()
	{
		return CQt.QPaintDevice_DevicePixelRatioFScale();
	}
	
}
public class QInputDialog
{
	public QInputDialogPtr handle;
	
	public static implicit operator QInputDialogPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQWidget parent)
	{
		this.handle = QInputDialogPtr.New(parent);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* MetaObject()
	{
		return this.handle.MetaObject();
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return this.handle.Metacast(param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return this.handle.Metacall(param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return QInputDialogPtr.Tr(s);
	}
	
	public void SetInputMode(int64 mode)
	{
		this.handle.SetInputMode(mode);
	}
	
	public int64 InputMode()
	{
		return this.handle.InputMode();
	}
	
	public void SetLabelText(String text)
	{
		this.handle.SetLabelText(text);
	}
	
	public libqt_string LabelText()
	{
		return this.handle.LabelText();
	}
	
	public void SetOption(int64 option)
	{
		this.handle.SetOption(option);
	}
	
	public bool TestOption(int64 option)
	{
		return this.handle.TestOption(option);
	}
	
	public void SetOptions(int64 options)
	{
		this.handle.SetOptions(options);
	}
	
	public int64 Options()
	{
		return this.handle.Options();
	}
	
	public void SetTextValue(String text)
	{
		this.handle.SetTextValue(text);
	}
	
	public libqt_string TextValue()
	{
		return this.handle.TextValue();
	}
	
	public void SetTextEchoMode(int64 mode)
	{
		this.handle.SetTextEchoMode(mode);
	}
	
	public int64 TextEchoMode()
	{
		return this.handle.TextEchoMode();
	}
	
	public void SetComboBoxEditable(bool editable)
	{
		this.handle.SetComboBoxEditable(editable);
	}
	
	public bool IsComboBoxEditable()
	{
		return this.handle.IsComboBoxEditable();
	}
	
	public void SetComboBoxItems(String[] items)
	{
		this.handle.SetComboBoxItems(null);
	}
	
	public libqt_string[] ComboBoxItems()
	{
		return this.handle.ComboBoxItems();
	}
	
	public void SetIntValue(int32 value)
	{
		this.handle.SetIntValue(value);
	}
	
	public int32 IntValue()
	{
		return this.handle.IntValue();
	}
	
	public void SetIntMinimum(int32 min)
	{
		this.handle.SetIntMinimum(min);
	}
	
	public int32 IntMinimum()
	{
		return this.handle.IntMinimum();
	}
	
	public void SetIntMaximum(int32 max)
	{
		this.handle.SetIntMaximum(max);
	}
	
	public int32 IntMaximum()
	{
		return this.handle.IntMaximum();
	}
	
	public void SetIntRange(int32 min, int32 max)
	{
		this.handle.SetIntRange(min, max);
	}
	
	public void SetIntStep(int32 step)
	{
		this.handle.SetIntStep(step);
	}
	
	public int32 IntStep()
	{
		return this.handle.IntStep();
	}
	
	public void SetDoubleValue(double value)
	{
		this.handle.SetDoubleValue(value);
	}
	
	public double DoubleValue()
	{
		return this.handle.DoubleValue();
	}
	
	public void SetDoubleMinimum(double min)
	{
		this.handle.SetDoubleMinimum(min);
	}
	
	public double DoubleMinimum()
	{
		return this.handle.DoubleMinimum();
	}
	
	public void SetDoubleMaximum(double max)
	{
		this.handle.SetDoubleMaximum(max);
	}
	
	public double DoubleMaximum()
	{
		return this.handle.DoubleMaximum();
	}
	
	public void SetDoubleRange(double min, double max)
	{
		this.handle.SetDoubleRange(min, max);
	}
	
	public void SetDoubleDecimals(int32 decimals)
	{
		this.handle.SetDoubleDecimals(decimals);
	}
	
	public int32 DoubleDecimals()
	{
		return this.handle.DoubleDecimals();
	}
	
	public void SetOkButtonText(String text)
	{
		this.handle.SetOkButtonText(text);
	}
	
	public libqt_string OkButtonText()
	{
		return this.handle.OkButtonText();
	}
	
	public void SetCancelButtonText(String text)
	{
		this.handle.SetCancelButtonText(text);
	}
	
	public libqt_string CancelButtonText()
	{
		return this.handle.CancelButtonText();
	}
	
	public virtual void MinimumSizeHint()
	{
		this.handle.MinimumSizeHint();
	}
	
	public virtual void SizeHint()
	{
		this.handle.SizeHint();
	}
	
	public virtual void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public static libqt_string GetText(IQWidget parent, String title, String label)
	{
		return QInputDialogPtr.GetText(parent, title, label);
	}
	
	public static libqt_string GetMultiLineText(IQWidget parent, String title, String label)
	{
		return QInputDialogPtr.GetMultiLineText(parent, title, label);
	}
	
	public static libqt_string GetItem(IQWidget parent, String title, String label, String[] items)
	{
		return QInputDialogPtr.GetItem(parent, title, label, null);
	}
	
	public static int32 GetInt(IQWidget parent, String title, String label)
	{
		return QInputDialogPtr.GetInt(parent, title, label);
	}
	
	public static double GetDouble(IQWidget parent, String title, String label)
	{
		return QInputDialogPtr.GetDouble(parent, title, label);
	}
	
	public void SetDoubleStep(double step)
	{
		this.handle.SetDoubleStep(step);
	}
	
	public double DoubleStep()
	{
		return this.handle.DoubleStep();
	}
	
	public virtual void Done(int32 result)
	{
		this.handle.Done(result);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QInputDialogPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QInputDialogPtr.Tr3(s, c, n);
	}
	
	public void SetOption2(int64 option, bool on)
	{
		this.handle.SetOption2(option, on);
	}
	
	public static libqt_string GetText4(IQWidget parent, String title, String label, int64 echo)
	{
		return QInputDialogPtr.GetText4(parent, title, label, echo);
	}
	
	public static libqt_string GetText5(IQWidget parent, String title, String label, int64 echo, String text)
	{
		return QInputDialogPtr.GetText5(parent, title, label, echo, text);
	}
	
	public static libqt_string GetText6(IQWidget parent, String title, String label, int64 echo, String text, bool* ok)
	{
		return QInputDialogPtr.GetText6(parent, title, label, echo, text, ok);
	}
	
	public static libqt_string GetText7(IQWidget parent, String title, String label, int64 echo, String text, bool* ok, int64 flags)
	{
		return QInputDialogPtr.GetText7(parent, title, label, echo, text, ok, flags);
	}
	
	public static libqt_string GetText8(IQWidget parent, String title, String label, int64 echo, String text, bool* ok, int64 flags, int64 inputMethodHints)
	{
		return QInputDialogPtr.GetText8(parent, title, label, echo, text, ok, flags, inputMethodHints);
	}
	
	public static libqt_string GetMultiLineText4(IQWidget parent, String title, String label, String text)
	{
		return QInputDialogPtr.GetMultiLineText4(parent, title, label, text);
	}
	
	public static libqt_string GetMultiLineText5(IQWidget parent, String title, String label, String text, bool* ok)
	{
		return QInputDialogPtr.GetMultiLineText5(parent, title, label, text, ok);
	}
	
	public static libqt_string GetMultiLineText6(IQWidget parent, String title, String label, String text, bool* ok, int64 flags)
	{
		return QInputDialogPtr.GetMultiLineText6(parent, title, label, text, ok, flags);
	}
	
	public static libqt_string GetMultiLineText7(IQWidget parent, String title, String label, String text, bool* ok, int64 flags, int64 inputMethodHints)
	{
		return QInputDialogPtr.GetMultiLineText7(parent, title, label, text, ok, flags, inputMethodHints);
	}
	
	public static libqt_string GetItem5(IQWidget parent, String title, String label, String[] items, int32 current)
	{
		return QInputDialogPtr.GetItem5(parent, title, label, null, current);
	}
	
	public static libqt_string GetItem6(IQWidget parent, String title, String label, String[] items, int32 current, bool editable)
	{
		return QInputDialogPtr.GetItem6(parent, title, label, null, current, editable);
	}
	
	public static libqt_string GetItem7(IQWidget parent, String title, String label, String[] items, int32 current, bool editable, bool* ok)
	{
		return QInputDialogPtr.GetItem7(parent, title, label, null, current, editable, ok);
	}
	
	public static libqt_string GetItem8(IQWidget parent, String title, String label, String[] items, int32 current, bool editable, bool* ok, int64 flags)
	{
		return QInputDialogPtr.GetItem8(parent, title, label, null, current, editable, ok, flags);
	}
	
	public static libqt_string GetItem9(IQWidget parent, String title, String label, String[] items, int32 current, bool editable, bool* ok, int64 flags, int64 inputMethodHints)
	{
		return QInputDialogPtr.GetItem9(parent, title, label, null, current, editable, ok, flags, inputMethodHints);
	}
	
	public static int32 GetInt4(IQWidget parent, String title, String label, int32 value)
	{
		return QInputDialogPtr.GetInt4(parent, title, label, value);
	}
	
	public static int32 GetInt5(IQWidget parent, String title, String label, int32 value, int32 minValue)
	{
		return QInputDialogPtr.GetInt5(parent, title, label, value, minValue);
	}
	
	public static int32 GetInt6(IQWidget parent, String title, String label, int32 value, int32 minValue, int32 maxValue)
	{
		return QInputDialogPtr.GetInt6(parent, title, label, value, minValue, maxValue);
	}
	
	public static int32 GetInt7(IQWidget parent, String title, String label, int32 value, int32 minValue, int32 maxValue, int32 step)
	{
		return QInputDialogPtr.GetInt7(parent, title, label, value, minValue, maxValue, step);
	}
	
	public static int32 GetInt8(IQWidget parent, String title, String label, int32 value, int32 minValue, int32 maxValue, int32 step, bool* ok)
	{
		return QInputDialogPtr.GetInt8(parent, title, label, value, minValue, maxValue, step, ok);
	}
	
	public static int32 GetInt9(IQWidget parent, String title, String label, int32 value, int32 minValue, int32 maxValue, int32 step, bool* ok, int64 flags)
	{
		return QInputDialogPtr.GetInt9(parent, title, label, value, minValue, maxValue, step, ok, flags);
	}
	
	public static double GetDouble4(IQWidget parent, String title, String label, double value)
	{
		return QInputDialogPtr.GetDouble4(parent, title, label, value);
	}
	
	public static double GetDouble5(IQWidget parent, String title, String label, double value, double minValue)
	{
		return QInputDialogPtr.GetDouble5(parent, title, label, value, minValue);
	}
	
	public static double GetDouble6(IQWidget parent, String title, String label, double value, double minValue, double maxValue)
	{
		return QInputDialogPtr.GetDouble6(parent, title, label, value, minValue, maxValue);
	}
	
	public static double GetDouble7(IQWidget parent, String title, String label, double value, double minValue, double maxValue, int32 decimals)
	{
		return QInputDialogPtr.GetDouble7(parent, title, label, value, minValue, maxValue, decimals);
	}
	
	public static double GetDouble8(IQWidget parent, String title, String label, double value, double minValue, double maxValue, int32 decimals, bool* ok)
	{
		return QInputDialogPtr.GetDouble8(parent, title, label, value, minValue, maxValue, decimals, ok);
	}
	
	public static double GetDouble9(IQWidget parent, String title, String label, double value, double minValue, double maxValue, int32 decimals, bool* ok, int64 flags)
	{
		return QInputDialogPtr.GetDouble9(parent, title, label, value, minValue, maxValue, decimals, ok, flags);
	}
	
	public static double GetDouble10(IQWidget parent, String title, String label, double value, double minValue, double maxValue, int32 decimals, bool* ok, int64 flags, double step)
	{
		return QInputDialogPtr.GetDouble10(parent, title, label, value, minValue, maxValue, decimals, ok, flags, step);
	}
	
	public int32 Result()
	{
		return this.handle.Result();
	}
	
	public void SetSizeGripEnabled(bool sizeGripEnabled)
	{
		this.handle.SetSizeGripEnabled(sizeGripEnabled);
	}
	
	public bool IsSizeGripEnabled()
	{
		return this.handle.IsSizeGripEnabled();
	}
	
	public void SetModal(bool modal)
	{
		this.handle.SetModal(modal);
	}
	
	public void SetResult(int32 r)
	{
		this.handle.SetResult(r);
	}
	
	public virtual void Open()
	{
		this.handle.Open();
	}
	
	public virtual int32 Exec()
	{
		return this.handle.Exec();
	}
	
	public virtual void Accept()
	{
		this.handle.Accept();
	}
	
	public virtual void Reject()
	{
		this.handle.Reject();
	}
	
	public virtual int32 DevType()
	{
		return this.handle.DevType();
	}
	
	public c_uintptr WinId()
	{
		return this.handle.WinId();
	}
	
	public void CreateWinId()
	{
		this.handle.CreateWinId();
	}
	
	public c_uintptr InternalWinId()
	{
		return this.handle.InternalWinId();
	}
	
	public c_uintptr EffectiveWinId()
	{
		return this.handle.EffectiveWinId();
	}
	
	public void* Style()
	{
		return this.handle.Style();
	}
	
	public void SetStyle(IQStyle style)
	{
		this.handle.SetStyle(style);
	}
	
	public bool IsTopLevel()
	{
		return this.handle.IsTopLevel();
	}
	
	public bool IsWindow()
	{
		return this.handle.IsWindow();
	}
	
	public bool IsModal()
	{
		return this.handle.IsModal();
	}
	
	public int64 WindowModality()
	{
		return this.handle.WindowModality();
	}
	
	public void SetWindowModality(int64 windowModality)
	{
		this.handle.SetWindowModality(windowModality);
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public bool IsEnabledTo(IQWidget param1)
	{
		return this.handle.IsEnabledTo(param1);
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public void SetDisabled(bool disabled)
	{
		this.handle.SetDisabled(disabled);
	}
	
	public void SetWindowModified(bool windowModified)
	{
		this.handle.SetWindowModified(windowModified);
	}
	
	public void FrameGeometry()
	{
		this.handle.FrameGeometry();
	}
	
	public void* Geometry()
	{
		return this.handle.Geometry();
	}
	
	public void NormalGeometry()
	{
		this.handle.NormalGeometry();
	}
	
	public int32 X()
	{
		return this.handle.X();
	}
	
	public int32 Y()
	{
		return this.handle.Y();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public void FrameSize()
	{
		this.handle.FrameSize();
	}
	
	public void Size()
	{
		this.handle.Size();
	}
	
	public int32 Width()
	{
		return this.handle.Width();
	}
	
	public int32 Height()
	{
		return this.handle.Height();
	}
	
	public void Rect()
	{
		this.handle.Rect();
	}
	
	public void ChildrenRect()
	{
		this.handle.ChildrenRect();
	}
	
	public void ChildrenRegion()
	{
		this.handle.ChildrenRegion();
	}
	
	public void MinimumSize()
	{
		this.handle.MinimumSize();
	}
	
	public void MaximumSize()
	{
		this.handle.MaximumSize();
	}
	
	public int32 MinimumWidth()
	{
		return this.handle.MinimumWidth();
	}
	
	public int32 MinimumHeight()
	{
		return this.handle.MinimumHeight();
	}
	
	public int32 MaximumWidth()
	{
		return this.handle.MaximumWidth();
	}
	
	public int32 MaximumHeight()
	{
		return this.handle.MaximumHeight();
	}
	
	public void SetMinimumSize(IQSize minimumSize)
	{
		this.handle.SetMinimumSize(minimumSize);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		this.handle.SetMinimumSize2(minw, minh);
	}
	
	public void SetMaximumSize(IQSize maximumSize)
	{
		this.handle.SetMaximumSize(maximumSize);
	}
	
	public void SetMaximumSize2(int32 maxw, int32 maxh)
	{
		this.handle.SetMaximumSize2(maxw, maxh);
	}
	
	public void SetMinimumWidth(int32 minw)
	{
		this.handle.SetMinimumWidth(minw);
	}
	
	public void SetMinimumHeight(int32 minh)
	{
		this.handle.SetMinimumHeight(minh);
	}
	
	public void SetMaximumWidth(int32 maxw)
	{
		this.handle.SetMaximumWidth(maxw);
	}
	
	public void SetMaximumHeight(int32 maxh)
	{
		this.handle.SetMaximumHeight(maxh);
	}
	
	public void SizeIncrement()
	{
		this.handle.SizeIncrement();
	}
	
	public void SetSizeIncrement(IQSize sizeIncrement)
	{
		this.handle.SetSizeIncrement(sizeIncrement);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		this.handle.SetSizeIncrement2(w, h);
	}
	
	public void BaseSize()
	{
		this.handle.BaseSize();
	}
	
	public void SetBaseSize(IQSize baseSize)
	{
		this.handle.SetBaseSize(baseSize);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		this.handle.SetBaseSize2(basew, baseh);
	}
	
	public void SetFixedSize(IQSize fixedSize)
	{
		this.handle.SetFixedSize(fixedSize);
	}
	
	public void SetFixedSize2(int32 w, int32 h)
	{
		this.handle.SetFixedSize2(w, h);
	}
	
	public void SetFixedWidth(int32 w)
	{
		this.handle.SetFixedWidth(w);
	}
	
	public void SetFixedHeight(int32 h)
	{
		this.handle.SetFixedHeight(h);
	}
	
	public void MapToGlobal(IQPointF param1)
	{
		this.handle.MapToGlobal(param1);
	}
	
	public void MapToGlobalWithQPoint(IQPoint param1)
	{
		this.handle.MapToGlobalWithQPoint(param1);
	}
	
	public void MapFromGlobal(IQPointF param1)
	{
		this.handle.MapFromGlobal(param1);
	}
	
	public void MapFromGlobalWithQPoint(IQPoint param1)
	{
		this.handle.MapFromGlobalWithQPoint(param1);
	}
	
	public void MapToParent(IQPointF param1)
	{
		this.handle.MapToParent(param1);
	}
	
	public void MapToParentWithQPoint(IQPoint param1)
	{
		this.handle.MapToParentWithQPoint(param1);
	}
	
	public void MapFromParent(IQPointF param1)
	{
		this.handle.MapFromParent(param1);
	}
	
	public void MapFromParentWithQPoint(IQPoint param1)
	{
		this.handle.MapFromParentWithQPoint(param1);
	}
	
	public void MapTo(IQWidget param1, IQPointF param2)
	{
		this.handle.MapTo(param1, param2);
	}
	
	public void MapTo2(IQWidget param1, IQPoint param2)
	{
		this.handle.MapTo2(param1, param2);
	}
	
	public void MapFrom(IQWidget param1, IQPointF param2)
	{
		this.handle.MapFrom(param1, param2);
	}
	
	public void MapFrom2(IQWidget param1, IQPoint param2)
	{
		this.handle.MapFrom2(param1, param2);
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* NativeParentWidget()
	{
		return this.handle.NativeParentWidget();
	}
	
	public void* TopLevelWidget()
	{
		return this.handle.TopLevelWidget();
	}
	
	public void* Palette()
	{
		return this.handle.Palette();
	}
	
	public void SetPalette(IQPalette palette)
	{
		this.handle.SetPalette(palette);
	}
	
	public void SetBackgroundRole(int64 backgroundRole)
	{
		this.handle.SetBackgroundRole(backgroundRole);
	}
	
	public int64 BackgroundRole()
	{
		return this.handle.BackgroundRole();
	}
	
	public void SetForegroundRole(int64 foregroundRole)
	{
		this.handle.SetForegroundRole(foregroundRole);
	}
	
	public int64 ForegroundRole()
	{
		return this.handle.ForegroundRole();
	}
	
	public void* Font()
	{
		return this.handle.Font();
	}
	
	public void SetFont(IQFont font)
	{
		this.handle.SetFont(font);
	}
	
	public void FontMetrics()
	{
		this.handle.FontMetrics();
	}
	
	public void FontInfo()
	{
		this.handle.FontInfo();
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public void SetMouseTracking(bool enable)
	{
		this.handle.SetMouseTracking(enable);
	}
	
	public bool HasMouseTracking()
	{
		return this.handle.HasMouseTracking();
	}
	
	public bool UnderMouse()
	{
		return this.handle.UnderMouse();
	}
	
	public void SetTabletTracking(bool enable)
	{
		this.handle.SetTabletTracking(enable);
	}
	
	public bool HasTabletTracking()
	{
		return this.handle.HasTabletTracking();
	}
	
	public void SetMask(IQBitmap mask)
	{
		this.handle.SetMask(mask);
	}
	
	public void SetMaskWithMask(IQRegion mask)
	{
		this.handle.SetMaskWithMask(mask);
	}
	
	public void Mask()
	{
		this.handle.Mask();
	}
	
	public void ClearMask()
	{
		this.handle.ClearMask();
	}
	
	public void Render(IQPaintDevice target)
	{
		this.handle.Render(target);
	}
	
	public void RenderWithPainter(IQPainter painter)
	{
		this.handle.RenderWithPainter(painter);
	}
	
	public void Grab()
	{
		this.handle.Grab();
	}
	
	public void* GraphicsEffect()
	{
		return this.handle.GraphicsEffect();
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		this.handle.SetGraphicsEffect(effect);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		this.handle.GrabGesture(typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		this.handle.UngrabGesture(typeVal);
	}
	
	public void SetWindowTitle(String windowTitle)
	{
		this.handle.SetWindowTitle(windowTitle);
	}
	
	public void SetStyleSheet(String styleSheet)
	{
		this.handle.SetStyleSheet(styleSheet);
	}
	
	public libqt_string StyleSheet()
	{
		return this.handle.StyleSheet();
	}
	
	public libqt_string WindowTitle()
	{
		return this.handle.WindowTitle();
	}
	
	public void SetWindowIcon(IQIcon icon)
	{
		this.handle.SetWindowIcon(icon);
	}
	
	public void WindowIcon()
	{
		this.handle.WindowIcon();
	}
	
	public void SetWindowIconText(String windowIconText)
	{
		this.handle.SetWindowIconText(windowIconText);
	}
	
	public libqt_string WindowIconText()
	{
		return this.handle.WindowIconText();
	}
	
	public void SetWindowRole(String windowRole)
	{
		this.handle.SetWindowRole(windowRole);
	}
	
	public libqt_string WindowRole()
	{
		return this.handle.WindowRole();
	}
	
	public void SetWindowFilePath(String filePath)
	{
		this.handle.SetWindowFilePath(filePath);
	}
	
	public libqt_string WindowFilePath()
	{
		return this.handle.WindowFilePath();
	}
	
	public void SetWindowOpacity(double level)
	{
		this.handle.SetWindowOpacity(level);
	}
	
	public double WindowOpacity()
	{
		return this.handle.WindowOpacity();
	}
	
	public bool IsWindowModified()
	{
		return this.handle.IsWindowModified();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTipDuration(int32 msec)
	{
		this.handle.SetToolTipDuration(msec);
	}
	
	public int32 ToolTipDuration()
	{
		return this.handle.ToolTipDuration();
	}
	
	public void SetStatusTip(String statusTip)
	{
		this.handle.SetStatusTip(statusTip);
	}
	
	public libqt_string StatusTip()
	{
		return this.handle.StatusTip();
	}
	
	public void SetWhatsThis(String whatsThis)
	{
		this.handle.SetWhatsThis(whatsThis);
	}
	
	public libqt_string WhatsThis()
	{
		return this.handle.WhatsThis();
	}
	
	public libqt_string AccessibleName()
	{
		return this.handle.AccessibleName();
	}
	
	public void SetAccessibleName(String name)
	{
		this.handle.SetAccessibleName(name);
	}
	
	public libqt_string AccessibleDescription()
	{
		return this.handle.AccessibleDescription();
	}
	
	public void SetAccessibleDescription(String description)
	{
		this.handle.SetAccessibleDescription(description);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		this.handle.SetLayoutDirection(direction);
	}
	
	public int64 LayoutDirection()
	{
		return this.handle.LayoutDirection();
	}
	
	public void UnsetLayoutDirection()
	{
		this.handle.UnsetLayoutDirection();
	}
	
	public void SetLocale(IQLocale locale)
	{
		this.handle.SetLocale(locale);
	}
	
	public void Locale()
	{
		this.handle.Locale();
	}
	
	public void UnsetLocale()
	{
		this.handle.UnsetLocale();
	}
	
	public bool IsRightToLeft()
	{
		return this.handle.IsRightToLeft();
	}
	
	public bool IsLeftToRight()
	{
		return this.handle.IsLeftToRight();
	}
	
	public void SetFocus()
	{
		this.handle.SetFocus();
	}
	
	public bool IsActiveWindow()
	{
		return this.handle.IsActiveWindow();
	}
	
	public void ActivateWindow()
	{
		this.handle.ActivateWindow();
	}
	
	public void ClearFocus()
	{
		this.handle.ClearFocus();
	}
	
	public void SetFocusWithReason(int64 reason)
	{
		this.handle.SetFocusWithReason(reason);
	}
	
	public int64 FocusPolicy()
	{
		return this.handle.FocusPolicy();
	}
	
	public void SetFocusPolicy(int64 policy)
	{
		this.handle.SetFocusPolicy(policy);
	}
	
	public bool HasFocus()
	{
		return this.handle.HasFocus();
	}
	
	public static void SetTabOrder(IQWidget param1, IQWidget param2)
	{
		QInputDialogPtr.SetTabOrder(param1, param2);
	}
	
	public void SetFocusProxy(IQWidget focusProxy)
	{
		this.handle.SetFocusProxy(focusProxy);
	}
	
	public void* FocusProxy()
	{
		return this.handle.FocusProxy();
	}
	
	public int64 ContextMenuPolicy()
	{
		return this.handle.ContextMenuPolicy();
	}
	
	public void SetContextMenuPolicy(int64 policy)
	{
		this.handle.SetContextMenuPolicy(policy);
	}
	
	public void GrabMouse()
	{
		this.handle.GrabMouse();
	}
	
	public void GrabMouseWithQCursor(IQCursor param1)
	{
		this.handle.GrabMouseWithQCursor(param1);
	}
	
	public void ReleaseMouse()
	{
		this.handle.ReleaseMouse();
	}
	
	public void GrabKeyboard()
	{
		this.handle.GrabKeyboard();
	}
	
	public void ReleaseKeyboard()
	{
		this.handle.ReleaseKeyboard();
	}
	
	public int32 GrabShortcut(IQKeySequence key)
	{
		return this.handle.GrabShortcut(key);
	}
	
	public void ReleaseShortcut(int32 id)
	{
		this.handle.ReleaseShortcut(id);
	}
	
	public void SetShortcutEnabled(int32 id)
	{
		this.handle.SetShortcutEnabled(id);
	}
	
	public void SetShortcutAutoRepeat(int32 id)
	{
		this.handle.SetShortcutAutoRepeat(id);
	}
	
	public static void* MouseGrabber()
	{
		return QInputDialogPtr.MouseGrabber();
	}
	
	public static void* KeyboardGrabber()
	{
		return QInputDialogPtr.KeyboardGrabber();
	}
	
	public bool UpdatesEnabled()
	{
		return this.handle.UpdatesEnabled();
	}
	
	public void SetUpdatesEnabled(bool enable)
	{
		this.handle.SetUpdatesEnabled(enable);
	}
	
	public void* GraphicsProxyWidget()
	{
		return this.handle.GraphicsProxyWidget();
	}
	
	public void Update()
	{
		this.handle.Update();
	}
	
	public void Repaint()
	{
		this.handle.Repaint();
	}
	
	public void Update2(int32 x, int32 y, int32 w, int32 h)
	{
		this.handle.Update2(x, y, w, h);
	}
	
	public void UpdateWithQRect(IQRect param1)
	{
		this.handle.UpdateWithQRect(param1);
	}
	
	public void UpdateWithQRegion(IQRegion param1)
	{
		this.handle.UpdateWithQRegion(param1);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		this.handle.Repaint2(x, y, w, h);
	}
	
	public void RepaintWithQRect(IQRect param1)
	{
		this.handle.RepaintWithQRect(param1);
	}
	
	public void RepaintWithQRegion(IQRegion param1)
	{
		this.handle.RepaintWithQRegion(param1);
	}
	
	public void SetHidden(bool hidden)
	{
		this.handle.SetHidden(hidden);
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void ShowMinimized()
	{
		this.handle.ShowMinimized();
	}
	
	public void ShowMaximized()
	{
		this.handle.ShowMaximized();
	}
	
	public void ShowFullScreen()
	{
		this.handle.ShowFullScreen();
	}
	
	public void ShowNormal()
	{
		this.handle.ShowNormal();
	}
	
	public bool Close()
	{
		return this.handle.Close();
	}
	
	public void Raise()
	{
		this.handle.Raise();
	}
	
	public void Lower()
	{
		this.handle.Lower();
	}
	
	public void StackUnder(IQWidget param1)
	{
		this.handle.StackUnder(param1);
	}
	
	public void Move(int32 x, int32 y)
	{
		this.handle.Move(x, y);
	}
	
	public void MoveWithQPoint(IQPoint param1)
	{
		this.handle.MoveWithQPoint(param1);
	}
	
	public void Resize(int32 w, int32 h)
	{
		this.handle.Resize(w, h);
	}
	
	public void ResizeWithQSize(IQSize param1)
	{
		this.handle.ResizeWithQSize(param1);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		this.handle.SetGeometry(x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(IQRect geometry)
	{
		this.handle.SetGeometryWithGeometry(geometry);
	}
	
	public libqt_string SaveGeometry()
	{
		return this.handle.SaveGeometry();
	}
	
	public bool RestoreGeometry(String geometry)
	{
		return this.handle.RestoreGeometry(geometry);
	}
	
	public void AdjustSize()
	{
		this.handle.AdjustSize();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public bool IsVisibleTo(IQWidget param1)
	{
		return this.handle.IsVisibleTo(param1);
	}
	
	public bool IsHidden()
	{
		return this.handle.IsHidden();
	}
	
	public bool IsMinimized()
	{
		return this.handle.IsMinimized();
	}
	
	public bool IsMaximized()
	{
		return this.handle.IsMaximized();
	}
	
	public bool IsFullScreen()
	{
		return this.handle.IsFullScreen();
	}
	
	public int64 WindowState()
	{
		return this.handle.WindowState();
	}
	
	public void SetWindowState(int64 state)
	{
		this.handle.SetWindowState(state);
	}
	
	public void OverrideWindowState(int64 state)
	{
		this.handle.OverrideWindowState(state);
	}
	
	public void SizePolicy()
	{
		this.handle.SizePolicy();
	}
	
	public void SetSizePolicy(IQSizePolicy sizePolicy)
	{
		this.handle.SetSizePolicy(default);
	}
	
	public void SetSizePolicy2(int64 horizontal, int64 vertical)
	{
		this.handle.SetSizePolicy2(horizontal, vertical);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return this.handle.HeightForWidth(param1);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return this.handle.HasHeightForWidth();
	}
	
	public void VisibleRegion()
	{
		this.handle.VisibleRegion();
	}
	
	public void SetContentsMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		this.handle.SetContentsMargins(left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(IQMargins margins)
	{
		this.handle.SetContentsMarginsWithMargins(margins);
	}
	
	public void ContentsMargins()
	{
		this.handle.ContentsMargins();
	}
	
	public void ContentsRect()
	{
		this.handle.ContentsRect();
	}
	
	public void* Layout()
	{
		return this.handle.Layout();
	}
	
	public void SetLayout(IQLayout layout)
	{
		this.handle.SetLayout(layout);
	}
	
	public void UpdateGeometry()
	{
		this.handle.UpdateGeometry();
	}
	
	public void SetParent(IQWidget parent)
	{
		this.handle.SetParent(parent);
	}
	
	public void SetParent2(IQWidget parent, int64 f)
	{
		this.handle.SetParent2(parent, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		this.handle.Scroll(dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, IQRect param3)
	{
		this.handle.Scroll2(dx, dy, param3);
	}
	
	public void* FocusWidget()
	{
		return this.handle.FocusWidget();
	}
	
	public void* NextInFocusChain()
	{
		return this.handle.NextInFocusChain();
	}
	
	public void* PreviousInFocusChain()
	{
		return this.handle.PreviousInFocusChain();
	}
	
	public bool AcceptDrops()
	{
		return this.handle.AcceptDrops();
	}
	
	public void SetAcceptDrops(bool on)
	{
		this.handle.SetAcceptDrops(on);
	}
	
	public void AddAction(IQAction action)
	{
		this.handle.AddAction(action);
	}
	
	public void AddActions(IQAction[] actions)
	{
		this.handle.AddActions(null);
	}
	
	public void InsertActions(IQAction before, IQAction[] actions)
	{
		this.handle.InsertActions(before, null);
	}
	
	public void InsertAction(IQAction before, IQAction action)
	{
		this.handle.InsertAction(before, action);
	}
	
	public void RemoveAction(IQAction action)
	{
		this.handle.RemoveAction(action);
	}
	
	public void*[] Actions()
	{
		return this.handle.Actions();
	}
	
	public void* AddActionWithText(String text)
	{
		return this.handle.AddActionWithText(text);
	}
	
	public void* AddAction2(IQIcon icon, String text)
	{
		return this.handle.AddAction2(icon, text);
	}
	
	public void* AddAction3(String text, IQKeySequence shortcut)
	{
		return this.handle.AddAction3(text, shortcut);
	}
	
	public void* AddAction4(IQIcon icon, String text, IQKeySequence shortcut)
	{
		return this.handle.AddAction4(icon, text, shortcut);
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public void SetWindowFlags(int64 typeVal)
	{
		this.handle.SetWindowFlags(typeVal);
	}
	
	public int64 WindowFlags()
	{
		return this.handle.WindowFlags();
	}
	
	public void SetWindowFlag(int64 param1)
	{
		this.handle.SetWindowFlag(param1);
	}
	
	public void OverrideWindowFlags(int64 typeVal)
	{
		this.handle.OverrideWindowFlags(typeVal);
	}
	
	public int64 WindowType()
	{
		return this.handle.WindowType();
	}
	
	public static void* Find(uint64 param1)
	{
		return QInputDialogPtr.Find(param1);
	}
	
	public void* ChildAt(int32 x, int32 y)
	{
		return this.handle.ChildAt(x, y);
	}
	
	public void* ChildAtWithQPoint(IQPoint p)
	{
		return this.handle.ChildAtWithQPoint(p);
	}
	
	public void SetAttribute(int64 param1)
	{
		this.handle.SetAttribute(param1);
	}
	
	public bool TestAttribute(int64 param1)
	{
		return this.handle.TestAttribute(param1);
	}
	
	public virtual void* PaintEngine()
	{
		return this.handle.PaintEngine();
	}
	
	public void EnsurePolished()
	{
		this.handle.EnsurePolished();
	}
	
	public bool IsAncestorOf(IQWidget child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public bool AutoFillBackground()
	{
		return this.handle.AutoFillBackground();
	}
	
	public void SetAutoFillBackground(bool enabled)
	{
		this.handle.SetAutoFillBackground(enabled);
	}
	
	public void* BackingStore()
	{
		return this.handle.BackingStore();
	}
	
	public void* WindowHandle()
	{
		return this.handle.WindowHandle();
	}
	
	public void* Screen()
	{
		return this.handle.Screen();
	}
	
	public void SetScreen(IQScreen screen)
	{
		this.handle.SetScreen(screen);
	}
	
	public static void* CreateWindowContainer(IQWindow window)
	{
		return QInputDialogPtr.CreateWindowContainer(window);
	}
	
	public virtual void InputMethodQuery(int64 param1)
	{
		this.handle.InputMethodQuery(param1);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
	}
	
	public void Render2(IQPaintDevice target, IQPoint targetOffset)
	{
		this.handle.Render2(target, targetOffset);
	}
	
	public void Render3(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion)
	{
		this.handle.Render3(target, targetOffset, sourceRegion);
	}
	
	public void Render4(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		this.handle.Render4(target, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Render22(IQPainter painter, IQPoint targetOffset)
	{
		this.handle.Render22(painter, targetOffset);
	}
	
	public void Render32(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion)
	{
		this.handle.Render32(painter, targetOffset, sourceRegion);
	}
	
	public void Render42(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		this.handle.Render42(painter, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Grab1(IQRect rectangle)
	{
		this.handle.Grab1(rectangle);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		this.handle.GrabGesture2(typeVal, flags);
	}
	
	public int32 GrabShortcut2(IQKeySequence key, int64 context)
	{
		return this.handle.GrabShortcut2(key, context);
	}
	
	public void SetShortcutEnabled2(int32 id, bool enable)
	{
		this.handle.SetShortcutEnabled2(id, enable);
	}
	
	public void SetShortcutAutoRepeat2(int32 id, bool enable)
	{
		this.handle.SetShortcutAutoRepeat2(id, enable);
	}
	
	public void SetWindowFlag2(int64 param1, bool on)
	{
		this.handle.SetWindowFlag2(param1, on);
	}
	
	public void SetAttribute2(int64 param1, bool on)
	{
		this.handle.SetAttribute2(param1, on);
	}
	
	public static void* CreateWindowContainer2(IQWindow window, IQWidget parent)
	{
		return QInputDialogPtr.CreateWindowContainer2(window, parent);
	}
	
	public static void* CreateWindowContainer3(IQWindow window, IQWidget parent, int64 flags)
	{
		return QInputDialogPtr.CreateWindowContainer3(window, parent, flags);
	}
	
	public libqt_string ObjectName()
	{
		return this.handle.ObjectName();
	}
	
	public void SetObjectName(char8* name)
	{
		this.handle.SetObjectName(name);
	}
	
	public bool IsWidgetType()
	{
		return this.handle.IsWidgetType();
	}
	
	public bool IsWindowType()
	{
		return this.handle.IsWindowType();
	}
	
	public bool IsQuickItemType()
	{
		return this.handle.IsQuickItemType();
	}
	
	public bool SignalsBlocked()
	{
		return this.handle.SignalsBlocked();
	}
	
	public bool BlockSignals(bool b)
	{
		return this.handle.BlockSignals(b);
	}
	
	public void* Thread()
	{
		return this.handle.Thread();
	}
	
	public void MoveToThread(IQThread thread)
	{
		this.handle.MoveToThread(thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return this.handle.StartTimer(interval);
	}
	
	public void KillTimer(int32 id)
	{
		this.handle.KillTimer(id);
	}
	
	public void*[] Children()
	{
		return this.handle.Children();
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		this.handle.InstallEventFilter(filterObj);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		this.handle.RemoveEventFilter(obj);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		QInputDialogPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QInputDialogPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QInputDialogPtr.DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		this.handle.DumpObjectTree();
	}
	
	public void DumpObjectInfo()
	{
		this.handle.DumpObjectInfo();
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return this.handle.SetProperty(name, value);
	}
	
	public void Property(char8* name)
	{
		this.handle.Property(name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return this.handle.DynamicPropertyNames();
	}
	
	public void* BindingStorage()
	{
		return this.handle.BindingStorage();
	}
	
	public void* BindingStorage2()
	{
		return this.handle.BindingStorage2();
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public bool Inherits(char8* classname)
	{
		return this.handle.Inherits(classname);
	}
	
	public void DeleteLater()
	{
		this.handle.DeleteLater();
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return this.handle.StartTimer2(interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		QInputDialogPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
	public bool PaintingActive()
	{
		return this.handle.PaintingActive();
	}
	
	public int32 WidthMM()
	{
		return this.handle.WidthMM();
	}
	
	public int32 HeightMM()
	{
		return this.handle.HeightMM();
	}
	
	public int32 LogicalDpiX()
	{
		return this.handle.LogicalDpiX();
	}
	
	public int32 LogicalDpiY()
	{
		return this.handle.LogicalDpiY();
	}
	
	public int32 PhysicalDpiX()
	{
		return this.handle.PhysicalDpiX();
	}
	
	public int32 PhysicalDpiY()
	{
		return this.handle.PhysicalDpiY();
	}
	
	public double DevicePixelRatio()
	{
		return this.handle.DevicePixelRatio();
	}
	
	public double DevicePixelRatioF()
	{
		return this.handle.DevicePixelRatioF();
	}
	
	public int32 ColorCount()
	{
		return this.handle.ColorCount();
	}
	
	public int32 Depth()
	{
		return this.handle.Depth();
	}
	
	public static double DevicePixelRatioFScale()
	{
		return QInputDialogPtr.DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QInputDialog_new")]
	public static extern void* QInputDialog_new(void* parent);
	[LinkName("QInputDialog_new2")]
	public static extern void* QInputDialog_new2();
	[LinkName("QInputDialog_new3")]
	public static extern void* QInputDialog_new3(void* parent, int64 flags);
	[LinkName("QInputDialog_MetaObject")]
	public static extern void* QInputDialog_MetaObject(void* c_this);
	[LinkName("QInputDialog_Metacast")]
	public static extern void* QInputDialog_Metacast(void* c_this, char8* param1);
	[LinkName("QInputDialog_Metacall")]
	public static extern int32 QInputDialog_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QInputDialog_Tr")]
	public static extern libqt_string QInputDialog_Tr(char8* s);
	[LinkName("QInputDialog_SetInputMode")]
	public static extern void QInputDialog_SetInputMode(void* c_this, int64 mode);
	[LinkName("QInputDialog_InputMode")]
	public static extern int64 QInputDialog_InputMode(void* c_this);
	[LinkName("QInputDialog_SetLabelText")]
	public static extern void QInputDialog_SetLabelText(void* c_this, libqt_string text);
	[LinkName("QInputDialog_LabelText")]
	public static extern libqt_string QInputDialog_LabelText(void* c_this);
	[LinkName("QInputDialog_SetOption")]
	public static extern void QInputDialog_SetOption(void* c_this, int64 option);
	[LinkName("QInputDialog_TestOption")]
	public static extern bool QInputDialog_TestOption(void* c_this, int64 option);
	[LinkName("QInputDialog_SetOptions")]
	public static extern void QInputDialog_SetOptions(void* c_this, int64 options);
	[LinkName("QInputDialog_Options")]
	public static extern int64 QInputDialog_Options(void* c_this);
	[LinkName("QInputDialog_SetTextValue")]
	public static extern void QInputDialog_SetTextValue(void* c_this, libqt_string text);
	[LinkName("QInputDialog_TextValue")]
	public static extern libqt_string QInputDialog_TextValue(void* c_this);
	[LinkName("QInputDialog_SetTextEchoMode")]
	public static extern void QInputDialog_SetTextEchoMode(void* c_this, int64 mode);
	[LinkName("QInputDialog_TextEchoMode")]
	public static extern int64 QInputDialog_TextEchoMode(void* c_this);
	[LinkName("QInputDialog_SetComboBoxEditable")]
	public static extern void QInputDialog_SetComboBoxEditable(void* c_this, bool editable);
	[LinkName("QInputDialog_IsComboBoxEditable")]
	public static extern bool QInputDialog_IsComboBoxEditable(void* c_this);
	[LinkName("QInputDialog_SetComboBoxItems")]
	public static extern void QInputDialog_SetComboBoxItems(void* c_this, libqt_string[] items);
	[LinkName("QInputDialog_ComboBoxItems")]
	public static extern libqt_string[] QInputDialog_ComboBoxItems(void* c_this);
	[LinkName("QInputDialog_SetIntValue")]
	public static extern void QInputDialog_SetIntValue(void* c_this, int32 value);
	[LinkName("QInputDialog_IntValue")]
	public static extern int32 QInputDialog_IntValue(void* c_this);
	[LinkName("QInputDialog_SetIntMinimum")]
	public static extern void QInputDialog_SetIntMinimum(void* c_this, int32 min);
	[LinkName("QInputDialog_IntMinimum")]
	public static extern int32 QInputDialog_IntMinimum(void* c_this);
	[LinkName("QInputDialog_SetIntMaximum")]
	public static extern void QInputDialog_SetIntMaximum(void* c_this, int32 max);
	[LinkName("QInputDialog_IntMaximum")]
	public static extern int32 QInputDialog_IntMaximum(void* c_this);
	[LinkName("QInputDialog_SetIntRange")]
	public static extern void QInputDialog_SetIntRange(void* c_this, int32 min, int32 max);
	[LinkName("QInputDialog_SetIntStep")]
	public static extern void QInputDialog_SetIntStep(void* c_this, int32 step);
	[LinkName("QInputDialog_IntStep")]
	public static extern int32 QInputDialog_IntStep(void* c_this);
	[LinkName("QInputDialog_SetDoubleValue")]
	public static extern void QInputDialog_SetDoubleValue(void* c_this, double value);
	[LinkName("QInputDialog_DoubleValue")]
	public static extern double QInputDialog_DoubleValue(void* c_this);
	[LinkName("QInputDialog_SetDoubleMinimum")]
	public static extern void QInputDialog_SetDoubleMinimum(void* c_this, double min);
	[LinkName("QInputDialog_DoubleMinimum")]
	public static extern double QInputDialog_DoubleMinimum(void* c_this);
	[LinkName("QInputDialog_SetDoubleMaximum")]
	public static extern void QInputDialog_SetDoubleMaximum(void* c_this, double max);
	[LinkName("QInputDialog_DoubleMaximum")]
	public static extern double QInputDialog_DoubleMaximum(void* c_this);
	[LinkName("QInputDialog_SetDoubleRange")]
	public static extern void QInputDialog_SetDoubleRange(void* c_this, double min, double max);
	[LinkName("QInputDialog_SetDoubleDecimals")]
	public static extern void QInputDialog_SetDoubleDecimals(void* c_this, int32 decimals);
	[LinkName("QInputDialog_DoubleDecimals")]
	public static extern int32 QInputDialog_DoubleDecimals(void* c_this);
	[LinkName("QInputDialog_SetOkButtonText")]
	public static extern void QInputDialog_SetOkButtonText(void* c_this, libqt_string text);
	[LinkName("QInputDialog_OkButtonText")]
	public static extern libqt_string QInputDialog_OkButtonText(void* c_this);
	[LinkName("QInputDialog_SetCancelButtonText")]
	public static extern void QInputDialog_SetCancelButtonText(void* c_this, libqt_string text);
	[LinkName("QInputDialog_CancelButtonText")]
	public static extern libqt_string QInputDialog_CancelButtonText(void* c_this);
	[LinkName("QInputDialog_MinimumSizeHint")]
	public static extern void QInputDialog_MinimumSizeHint(void* c_this);
	[LinkName("QInputDialog_SizeHint")]
	public static extern void QInputDialog_SizeHint(void* c_this);
	[LinkName("QInputDialog_SetVisible")]
	public static extern void QInputDialog_SetVisible(void* c_this, bool visible);
	[LinkName("QInputDialog_GetText")]
	public static extern libqt_string QInputDialog_GetText(void* parent, libqt_string title, libqt_string label);
	[LinkName("QInputDialog_GetMultiLineText")]
	public static extern libqt_string QInputDialog_GetMultiLineText(void* parent, libqt_string title, libqt_string label);
	[LinkName("QInputDialog_GetItem")]
	public static extern libqt_string QInputDialog_GetItem(void* parent, libqt_string title, libqt_string label, libqt_string[] items);
	[LinkName("QInputDialog_GetInt")]
	public static extern int32 QInputDialog_GetInt(void* parent, libqt_string title, libqt_string label);
	[LinkName("QInputDialog_GetDouble")]
	public static extern double QInputDialog_GetDouble(void* parent, libqt_string title, libqt_string label);
	[LinkName("QInputDialog_SetDoubleStep")]
	public static extern void QInputDialog_SetDoubleStep(void* c_this, double step);
	[LinkName("QInputDialog_DoubleStep")]
	public static extern double QInputDialog_DoubleStep(void* c_this);
	[LinkName("QInputDialog_Connect_TextValueChanged")]
	public static extern void QInputDialog_Connect_TextValueChanged(void* c_this, c_intptr slot);
	[LinkName("QInputDialog_Connect_TextValueSelected")]
	public static extern void QInputDialog_Connect_TextValueSelected(void* c_this, c_intptr slot);
	[LinkName("QInputDialog_Connect_IntValueChanged")]
	public static extern void QInputDialog_Connect_IntValueChanged(void* c_this, c_intptr slot);
	[LinkName("QInputDialog_Connect_IntValueSelected")]
	public static extern void QInputDialog_Connect_IntValueSelected(void* c_this, c_intptr slot);
	[LinkName("QInputDialog_Connect_DoubleValueChanged")]
	public static extern void QInputDialog_Connect_DoubleValueChanged(void* c_this, c_intptr slot);
	[LinkName("QInputDialog_Connect_DoubleValueSelected")]
	public static extern void QInputDialog_Connect_DoubleValueSelected(void* c_this, c_intptr slot);
	[LinkName("QInputDialog_Done")]
	public static extern void QInputDialog_Done(void* c_this, int32 result);
	[LinkName("QInputDialog_Tr2")]
	public static extern libqt_string QInputDialog_Tr2(char8* s, char8* c);
	[LinkName("QInputDialog_Tr3")]
	public static extern libqt_string QInputDialog_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QInputDialog_SetOption2")]
	public static extern void QInputDialog_SetOption2(void* c_this, int64 option, bool on);
	[LinkName("QInputDialog_GetText4")]
	public static extern libqt_string QInputDialog_GetText4(void* parent, libqt_string title, libqt_string label, int64 echo);
	[LinkName("QInputDialog_GetText5")]
	public static extern libqt_string QInputDialog_GetText5(void* parent, libqt_string title, libqt_string label, int64 echo, libqt_string text);
	[LinkName("QInputDialog_GetText6")]
	public static extern libqt_string QInputDialog_GetText6(void* parent, libqt_string title, libqt_string label, int64 echo, libqt_string text, bool* ok);
	[LinkName("QInputDialog_GetText7")]
	public static extern libqt_string QInputDialog_GetText7(void* parent, libqt_string title, libqt_string label, int64 echo, libqt_string text, bool* ok, int64 flags);
	[LinkName("QInputDialog_GetText8")]
	public static extern libqt_string QInputDialog_GetText8(void* parent, libqt_string title, libqt_string label, int64 echo, libqt_string text, bool* ok, int64 flags, int64 inputMethodHints);
	[LinkName("QInputDialog_GetMultiLineText4")]
	public static extern libqt_string QInputDialog_GetMultiLineText4(void* parent, libqt_string title, libqt_string label, libqt_string text);
	[LinkName("QInputDialog_GetMultiLineText5")]
	public static extern libqt_string QInputDialog_GetMultiLineText5(void* parent, libqt_string title, libqt_string label, libqt_string text, bool* ok);
	[LinkName("QInputDialog_GetMultiLineText6")]
	public static extern libqt_string QInputDialog_GetMultiLineText6(void* parent, libqt_string title, libqt_string label, libqt_string text, bool* ok, int64 flags);
	[LinkName("QInputDialog_GetMultiLineText7")]
	public static extern libqt_string QInputDialog_GetMultiLineText7(void* parent, libqt_string title, libqt_string label, libqt_string text, bool* ok, int64 flags, int64 inputMethodHints);
	[LinkName("QInputDialog_GetItem5")]
	public static extern libqt_string QInputDialog_GetItem5(void* parent, libqt_string title, libqt_string label, libqt_string[] items, int32 current);
	[LinkName("QInputDialog_GetItem6")]
	public static extern libqt_string QInputDialog_GetItem6(void* parent, libqt_string title, libqt_string label, libqt_string[] items, int32 current, bool editable);
	[LinkName("QInputDialog_GetItem7")]
	public static extern libqt_string QInputDialog_GetItem7(void* parent, libqt_string title, libqt_string label, libqt_string[] items, int32 current, bool editable, bool* ok);
	[LinkName("QInputDialog_GetItem8")]
	public static extern libqt_string QInputDialog_GetItem8(void* parent, libqt_string title, libqt_string label, libqt_string[] items, int32 current, bool editable, bool* ok, int64 flags);
	[LinkName("QInputDialog_GetItem9")]
	public static extern libqt_string QInputDialog_GetItem9(void* parent, libqt_string title, libqt_string label, libqt_string[] items, int32 current, bool editable, bool* ok, int64 flags, int64 inputMethodHints);
	[LinkName("QInputDialog_GetInt4")]
	public static extern int32 QInputDialog_GetInt4(void* parent, libqt_string title, libqt_string label, int32 value);
	[LinkName("QInputDialog_GetInt5")]
	public static extern int32 QInputDialog_GetInt5(void* parent, libqt_string title, libqt_string label, int32 value, int32 minValue);
	[LinkName("QInputDialog_GetInt6")]
	public static extern int32 QInputDialog_GetInt6(void* parent, libqt_string title, libqt_string label, int32 value, int32 minValue, int32 maxValue);
	[LinkName("QInputDialog_GetInt7")]
	public static extern int32 QInputDialog_GetInt7(void* parent, libqt_string title, libqt_string label, int32 value, int32 minValue, int32 maxValue, int32 step);
	[LinkName("QInputDialog_GetInt8")]
	public static extern int32 QInputDialog_GetInt8(void* parent, libqt_string title, libqt_string label, int32 value, int32 minValue, int32 maxValue, int32 step, bool* ok);
	[LinkName("QInputDialog_GetInt9")]
	public static extern int32 QInputDialog_GetInt9(void* parent, libqt_string title, libqt_string label, int32 value, int32 minValue, int32 maxValue, int32 step, bool* ok, int64 flags);
	[LinkName("QInputDialog_GetDouble4")]
	public static extern double QInputDialog_GetDouble4(void* parent, libqt_string title, libqt_string label, double value);
	[LinkName("QInputDialog_GetDouble5")]
	public static extern double QInputDialog_GetDouble5(void* parent, libqt_string title, libqt_string label, double value, double minValue);
	[LinkName("QInputDialog_GetDouble6")]
	public static extern double QInputDialog_GetDouble6(void* parent, libqt_string title, libqt_string label, double value, double minValue, double maxValue);
	[LinkName("QInputDialog_GetDouble7")]
	public static extern double QInputDialog_GetDouble7(void* parent, libqt_string title, libqt_string label, double value, double minValue, double maxValue, int32 decimals);
	[LinkName("QInputDialog_GetDouble8")]
	public static extern double QInputDialog_GetDouble8(void* parent, libqt_string title, libqt_string label, double value, double minValue, double maxValue, int32 decimals, bool* ok);
	[LinkName("QInputDialog_GetDouble9")]
	public static extern double QInputDialog_GetDouble9(void* parent, libqt_string title, libqt_string label, double value, double minValue, double maxValue, int32 decimals, bool* ok, int64 flags);
	[LinkName("QInputDialog_GetDouble10")]
	public static extern double QInputDialog_GetDouble10(void* parent, libqt_string title, libqt_string label, double value, double minValue, double maxValue, int32 decimals, bool* ok, int64 flags, double step);
	/// Delete this object from C++ memory
	[LinkName("QInputDialog_Delete")]
	public static extern void QInputDialog_Delete(void* self);
}