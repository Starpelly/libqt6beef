using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAudioDecoder__Error
{
	NoError = 0,
	ResourceError = 1,
	FormatError = 2,
	AccessDeniedError = 3,
	NotSupportedError = 4,
}
public struct QAudioDecoder
{
	[LinkName("QAudioDecoder_new")]
	public static extern void* QAudioDecoder_new();
	[LinkName("QAudioDecoder_new2")]
	public static extern void* QAudioDecoder_new2(QObject parent);
	[LinkName("QAudioDecoder_MetaObject")]
	public static extern QMetaObject QAudioDecoder_MetaObject(void* c_this);
	[LinkName("QAudioDecoder_Metacast")]
	public static extern void QAudioDecoder_Metacast(void* c_this, char8[] param1);
	[LinkName("QAudioDecoder_Metacall")]
	public static extern int32 QAudioDecoder_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAudioDecoder_Tr")]
	public static extern char8[] QAudioDecoder_Tr(char8[] s);
	[LinkName("QAudioDecoder_IsSupported")]
	public static extern bool QAudioDecoder_IsSupported(void* c_this);
	[LinkName("QAudioDecoder_IsDecoding")]
	public static extern bool QAudioDecoder_IsDecoding(void* c_this);
	[LinkName("QAudioDecoder_Source")]
	public static extern QUrl QAudioDecoder_Source(void* c_this);
	[LinkName("QAudioDecoder_SetSource")]
	public static extern void QAudioDecoder_SetSource(void* c_this, QUrl fileName);
	[LinkName("QAudioDecoder_SourceDevice")]
	public static extern QIODevice QAudioDecoder_SourceDevice(void* c_this);
	[LinkName("QAudioDecoder_SetSourceDevice")]
	public static extern void QAudioDecoder_SetSourceDevice(void* c_this, QIODevice device);
	[LinkName("QAudioDecoder_AudioFormat")]
	public static extern QAudioFormat QAudioDecoder_AudioFormat(void* c_this);
	[LinkName("QAudioDecoder_SetAudioFormat")]
	public static extern void QAudioDecoder_SetAudioFormat(void* c_this, QAudioFormat format);
	[LinkName("QAudioDecoder_Error")]
	public static extern int64 QAudioDecoder_Error(void* c_this);
	[LinkName("QAudioDecoder_ErrorString")]
	public static extern char8[] QAudioDecoder_ErrorString(void* c_this);
	[LinkName("QAudioDecoder_Read")]
	public static extern QAudioBuffer QAudioDecoder_Read(void* c_this);
	[LinkName("QAudioDecoder_BufferAvailable")]
	public static extern bool QAudioDecoder_BufferAvailable(void* c_this);
	[LinkName("QAudioDecoder_Position")]
	public static extern int64 QAudioDecoder_Position(void* c_this);
	[LinkName("QAudioDecoder_Duration")]
	public static extern int64 QAudioDecoder_Duration(void* c_this);
	[LinkName("QAudioDecoder_Start")]
	public static extern void QAudioDecoder_Start(void* c_this);
	[LinkName("QAudioDecoder_Stop")]
	public static extern void QAudioDecoder_Stop(void* c_this);
	[LinkName("QAudioDecoder_BufferAvailableChanged")]
	public static extern void QAudioDecoder_BufferAvailableChanged(void* c_this, bool param1);
	[LinkName("QAudioDecoder_BufferReady")]
	public static extern void QAudioDecoder_BufferReady(void* c_this);
	[LinkName("QAudioDecoder_Finished")]
	public static extern void QAudioDecoder_Finished(void* c_this);
	[LinkName("QAudioDecoder_IsDecodingChanged")]
	public static extern void QAudioDecoder_IsDecodingChanged(void* c_this, bool param1);
	[LinkName("QAudioDecoder_FormatChanged")]
	public static extern void QAudioDecoder_FormatChanged(void* c_this, QAudioFormat format);
	[LinkName("QAudioDecoder_ErrorWithErrorVal")]
	public static extern void QAudioDecoder_ErrorWithErrorVal(void* c_this, int64 errorVal);
	[LinkName("QAudioDecoder_SourceChanged")]
	public static extern void QAudioDecoder_SourceChanged(void* c_this);
	[LinkName("QAudioDecoder_PositionChanged")]
	public static extern void QAudioDecoder_PositionChanged(void* c_this, int64 position);
	[LinkName("QAudioDecoder_DurationChanged")]
	public static extern void QAudioDecoder_DurationChanged(void* c_this, int64 duration);
	[LinkName("QAudioDecoder_Tr2")]
	public static extern char8[] QAudioDecoder_Tr2(char8[] s, char8[] c);
	[LinkName("QAudioDecoder_Tr3")]
	public static extern char8[] QAudioDecoder_Tr3(char8[] s, char8[] c, int32 n);
}