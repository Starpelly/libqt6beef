using System;
using System.Interop;
using Qt;

namespace Sandbox;

class Program
{
	static int buttonClickCount = 0;

	public static void OnButtonCallback(QAbstractButton* self)
	{
		buttonClickCount++;
		QAbstractButton.QAbstractButton_SetText(self, .(scope $"Clicked {buttonClickCount} times"));
	}

	public static int Main(String[] args)
	{
		int32 argc = (int32)args.Count;

		QApplication.QApplication_new(&argc, null);
		
		QApplication.QApplication_SetStyle(QStyleFactory.QStyleFactory_Create(.("fusion")));

		/*

		let widget = QWidget.QWidget_new(null);

		let button = QPushButton.QPushButton_new(widget);
		QWidget.QWidget_SetFixedWidth(button, 320);
		QAbstractButton.QAbstractButton_SetText(button, .("Click me! Hello from Beef!"));

		QWidget.QWidget_Show(widget);
		*/

		let mainwindow = QMainWindow.QMainWindow_new(null);

		let menubar = QMenuBar.QMenuBar_new(mainwindow);

		let file = QMenuBar.QMenuBar_AddMenuWithTitle(menubar, .("File"));
		QMenu.QMenu_AddMenuWithTitle(file, .("Quit"));

		QMenuBar.QMenuBar_AddMenuWithTitle(menubar, .("Edit"));
		QMenuBar.QMenuBar_AddMenuWithTitle(menubar, .("View"));
		QMenuBar.QMenuBar_AddMenuWithTitle(menubar, .("Tools"));
		QMenuBar.QMenuBar_AddMenuWithTitle(menubar, .("Help"));
		QMainWindow.QMainWindow_SetMenuBar(mainwindow, menubar);

		let button = QPushButton.QPushButton_new(mainwindow);
		QWidget.QWidget_Move(button, 8, 64);
		QWidget.QWidget_SetFixedWidth(button, 320);
		QAbstractButton.QAbstractButton_SetText(button, .("Click me!"));


		function void(QAbstractButton*) clicked = => OnButtonCallback;
		QAbstractButton.QAbstractButton_Connect_Pressed(button, (c_intptr)(void*)clicked);

		QMainWindow.QWidget_Resize(mainwindow, 600, 400);
		QMainWindow.QWidget_Show(mainwindow);

		return QApplication.QApplication_Exec();
	}
}