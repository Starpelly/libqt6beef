using System;
using Qt;

namespace Sandbox;

class Program
{
	public static int Main(String[] args)
	{
		int32 argc = 0;

		let app = QApplication.QApplication_new(&argc, null);

		let widget = QWidget.QWidget_new(null);

		let button = QPushButton.QPushButton_new(widget);
		QWidget.QWidget_SetFixedWidth(button, 320);
		QAbstractButton.QAbstractButton_SetText(button, .("Click me! Hello from Beef!"));

		QWidget.QWidget_Show(widget);

		return QApplication.QApplication_Exec();
	}
}