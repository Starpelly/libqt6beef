using System;
using System.Interop;
namespace Qt;

public struct QTranslator : QObject
{
	[LinkName("QTranslator_new")]
	public static extern QTranslator* QTranslator_new();
	[LinkName("QTranslator_new2")]
	public static extern QTranslator* QTranslator_new2(QObject* parent);
	[LinkName("QTranslator_MetaObject")]
	public static extern QMetaObject* QTranslator_MetaObject(Self* c_this);
	[LinkName("QTranslator_Metacast")]
	public static extern void* QTranslator_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTranslator_Metacall")]
	public static extern int32 QTranslator_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTranslator_Tr")]
	public static extern libqt_string QTranslator_Tr(char8[] s);
	[LinkName("QTranslator_Translate")]
	public static extern libqt_string QTranslator_Translate(Self* c_this, char8[] context, char8[] sourceText, char8[] disambiguation, int32 n);
	[LinkName("QTranslator_IsEmpty")]
	public static extern bool QTranslator_IsEmpty(Self* c_this);
	[LinkName("QTranslator_Language")]
	public static extern libqt_string QTranslator_Language(Self* c_this);
	[LinkName("QTranslator_FilePath")]
	public static extern libqt_string QTranslator_FilePath(Self* c_this);
	[LinkName("QTranslator_Load")]
	public static extern bool QTranslator_Load(Self* c_this, libqt_string filename);
	[LinkName("QTranslator_Load2")]
	public static extern bool QTranslator_Load2(Self* c_this, QLocale* locale, libqt_string filename);
	[LinkName("QTranslator_Load3")]
	public static extern bool QTranslator_Load3(Self* c_this, uint8* data, int32 lenVal);
	[LinkName("QTranslator_Tr2")]
	public static extern libqt_string QTranslator_Tr2(char8[] s, char8[] c);
	[LinkName("QTranslator_Tr3")]
	public static extern libqt_string QTranslator_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTranslator_Load22")]
	public static extern bool QTranslator_Load22(Self* c_this, libqt_string filename, libqt_string directory);
	[LinkName("QTranslator_Load32")]
	public static extern bool QTranslator_Load32(Self* c_this, libqt_string filename, libqt_string directory, libqt_string search_delimiters);
	[LinkName("QTranslator_Load4")]
	public static extern bool QTranslator_Load4(Self* c_this, libqt_string filename, libqt_string directory, libqt_string search_delimiters, libqt_string suffix);
	[LinkName("QTranslator_Load33")]
	public static extern bool QTranslator_Load33(Self* c_this, QLocale* locale, libqt_string filename, libqt_string prefix);
	[LinkName("QTranslator_Load42")]
	public static extern bool QTranslator_Load42(Self* c_this, QLocale* locale, libqt_string filename, libqt_string prefix, libqt_string directory);
	[LinkName("QTranslator_Load5")]
	public static extern bool QTranslator_Load5(Self* c_this, QLocale* locale, libqt_string filename, libqt_string prefix, libqt_string directory, libqt_string suffix);
	[LinkName("QTranslator_Load34")]
	public static extern bool QTranslator_Load34(Self* c_this, uint8* data, int32 lenVal, libqt_string directory);
}