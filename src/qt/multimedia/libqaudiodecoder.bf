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
public struct QAudioDecoder : QObject
{
	[LinkName("QAudioDecoder_new")]
	public static extern QAudioDecoder* QAudioDecoder_new();
	[LinkName("QAudioDecoder_new2")]
	public static extern QAudioDecoder* QAudioDecoder_new2(QObject* parent);
	[LinkName("QAudioDecoder_MetaObject")]
	public static extern QMetaObject* QAudioDecoder_MetaObject(Self* c_this);
	[LinkName("QAudioDecoder_Metacast")]
	public static extern void* QAudioDecoder_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAudioDecoder_Metacall")]
	public static extern int32 QAudioDecoder_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAudioDecoder_Tr")]
	public static extern libqt_string QAudioDecoder_Tr(char8[] s);
	[LinkName("QAudioDecoder_IsSupported")]
	public static extern bool QAudioDecoder_IsSupported(Self* c_this);
	[LinkName("QAudioDecoder_IsDecoding")]
	public static extern bool QAudioDecoder_IsDecoding(Self* c_this);
	[LinkName("QAudioDecoder_Source")]
	public static extern QUrl QAudioDecoder_Source(Self* c_this);
	[LinkName("QAudioDecoder_SetSource")]
	public static extern void QAudioDecoder_SetSource(Self* c_this, QUrl* fileName);
	[LinkName("QAudioDecoder_SourceDevice")]
	public static extern QIODevice* QAudioDecoder_SourceDevice(Self* c_this);
	[LinkName("QAudioDecoder_SetSourceDevice")]
	public static extern void QAudioDecoder_SetSourceDevice(Self* c_this, QIODevice* device);
	[LinkName("QAudioDecoder_AudioFormat")]
	public static extern QAudioFormat QAudioDecoder_AudioFormat(Self* c_this);
	[LinkName("QAudioDecoder_SetAudioFormat")]
	public static extern void QAudioDecoder_SetAudioFormat(Self* c_this, QAudioFormat* format);
	[LinkName("QAudioDecoder_Error")]
	public static extern int64 QAudioDecoder_Error(Self* c_this);
	[LinkName("QAudioDecoder_ErrorString")]
	public static extern libqt_string QAudioDecoder_ErrorString(Self* c_this);
	[LinkName("QAudioDecoder_Read")]
	public static extern QAudioBuffer QAudioDecoder_Read(Self* c_this);
	[LinkName("QAudioDecoder_BufferAvailable")]
	public static extern bool QAudioDecoder_BufferAvailable(Self* c_this);
	[LinkName("QAudioDecoder_Position")]
	public static extern int64 QAudioDecoder_Position(Self* c_this);
	[LinkName("QAudioDecoder_Duration")]
	public static extern int64 QAudioDecoder_Duration(Self* c_this);
	[LinkName("QAudioDecoder_Start")]
	public static extern void QAudioDecoder_Start(Self* c_this);
	[LinkName("QAudioDecoder_Stop")]
	public static extern void QAudioDecoder_Stop(Self* c_this);
	[LinkName("QAudioDecoder_BufferAvailableChanged")]
	public static extern void QAudioDecoder_BufferAvailableChanged(Self* c_this, bool param1);
	[LinkName("QAudioDecoder_BufferReady")]
	public static extern void QAudioDecoder_BufferReady(Self* c_this);
	[LinkName("QAudioDecoder_Finished")]
	public static extern void QAudioDecoder_Finished(Self* c_this);
	[LinkName("QAudioDecoder_IsDecodingChanged")]
	public static extern void QAudioDecoder_IsDecodingChanged(Self* c_this, bool param1);
	[LinkName("QAudioDecoder_FormatChanged")]
	public static extern void QAudioDecoder_FormatChanged(Self* c_this, QAudioFormat* format);
	[LinkName("QAudioDecoder_ErrorWithErrorVal")]
	public static extern void QAudioDecoder_ErrorWithErrorVal(Self* c_this, int64 errorVal);
	[LinkName("QAudioDecoder_SourceChanged")]
	public static extern void QAudioDecoder_SourceChanged(Self* c_this);
	[LinkName("QAudioDecoder_PositionChanged")]
	public static extern void QAudioDecoder_PositionChanged(Self* c_this, int64 position);
	[LinkName("QAudioDecoder_DurationChanged")]
	public static extern void QAudioDecoder_DurationChanged(Self* c_this, int64 duration);
	[LinkName("QAudioDecoder_Tr2")]
	public static extern libqt_string QAudioDecoder_Tr2(char8[] s, char8[] c);
	[LinkName("QAudioDecoder_Tr3")]
	public static extern libqt_string QAudioDecoder_Tr3(char8[] s, char8[] c, int32 n);
}