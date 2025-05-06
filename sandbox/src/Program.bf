using System;
using Qt;

namespace Sandbox;

class Program
{
	public static Qt.libqt_string FromString(String string)
	{
		return .(string.Length, string.Ptr);
	}

	public static int Main(String[] args)
	{
		int32 argc = 0;

		let app = QApplication.QApplication_new(&argc, null);

		let widget = QWidget.QWidget_new(null);

		let button = QPushButton.QPushButton_new(widget);
		QWidget.QWidget_SetFixedWidth(button, 320);
		QAbstractButton.QAbstractButton_SetText(button, FromString("Click me!"));

		QWidget.QWidget_Show(widget);

		return QApplication.QApplication_Exec();
	}
}