using System;
using System.Interop;
namespace Qt;

public struct QTranslator
{
	[LinkName("QTranslator_new")]
	public static extern void* QTranslator_new();
	[LinkName("QTranslator_new2")]
	public static extern void* QTranslator_new2(QObject parent);
	[LinkName("QTranslator_MetaObject")]
	public static extern QMetaObject QTranslator_MetaObject(void* c_this);
	[LinkName("QTranslator_Metacast")]
	public static extern void QTranslator_Metacast(void* c_this, char8[] param1);
	[LinkName("QTranslator_Metacall")]
	public static extern int32 QTranslator_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTranslator_Tr")]
	public static extern char8[] QTranslator_Tr(char8[] s);
	[LinkName("QTranslator_Translate")]
	public static extern char8[] QTranslator_Translate(void* c_this, char8[] context, char8[] sourceText, char8[] disambiguation, int32 n);
	[LinkName("QTranslator_IsEmpty")]
	public static extern bool QTranslator_IsEmpty(void* c_this);
	[LinkName("QTranslator_Language")]
	public static extern char8[] QTranslator_Language(void* c_this);
	[LinkName("QTranslator_FilePath")]
	public static extern char8[] QTranslator_FilePath(void* c_this);
	[LinkName("QTranslator_Load")]
	public static extern bool QTranslator_Load(void* c_this, char8[] filename);
	[LinkName("QTranslator_Load2")]
	public static extern bool QTranslator_Load2(void* c_this, QLocale locale, char8[] filename);
	[LinkName("QTranslator_Load3")]
	public static extern bool QTranslator_Load3(void* c_this, uint8 data, int32 lenVal);
	[LinkName("QTranslator_Tr2")]
	public static extern char8[] QTranslator_Tr2(char8[] s, char8[] c);
	[LinkName("QTranslator_Tr3")]
	public static extern char8[] QTranslator_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTranslator_Load22")]
	public static extern bool QTranslator_Load22(void* c_this, char8[] filename, char8[] directory);
	[LinkName("QTranslator_Load32")]
	public static extern bool QTranslator_Load32(void* c_this, char8[] filename, char8[] directory, char8[] search_delimiters);
	[LinkName("QTranslator_Load4")]
	public static extern bool QTranslator_Load4(void* c_this, char8[] filename, char8[] directory, char8[] search_delimiters, char8[] suffix);
	[LinkName("QTranslator_Load33")]
	public static extern bool QTranslator_Load33(void* c_this, QLocale locale, char8[] filename, char8[] prefix);
	[LinkName("QTranslator_Load42")]
	public static extern bool QTranslator_Load42(void* c_this, QLocale locale, char8[] filename, char8[] prefix, char8[] directory);
	[LinkName("QTranslator_Load5")]
	public static extern bool QTranslator_Load5(void* c_this, QLocale locale, char8[] filename, char8[] prefix, char8[] directory, char8[] suffix);
	[LinkName("QTranslator_Load34")]
	public static extern bool QTranslator_Load34(void* c_this, uint8 data, int32 lenVal, char8[] directory);
}