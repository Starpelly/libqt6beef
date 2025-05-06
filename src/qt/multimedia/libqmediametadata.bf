using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QMediaMetaData__Key
{
	Title = 0,
	Author = 1,
	Comment = 2,
	Description = 3,
	Genre = 4,
	Date = 5,
	Language = 6,
	Publisher = 7,
	Copyright = 8,
	Url = 9,
	Duration = 10,
	MediaType = 11,
	FileFormat = 12,
	AudioBitRate = 13,
	AudioCodec = 14,
	VideoBitRate = 15,
	VideoCodec = 16,
	VideoFrameRate = 17,
	AlbumTitle = 18,
	AlbumArtist = 19,
	ContributingArtist = 20,
	TrackNumber = 21,
	Composer = 22,
	LeadPerformer = 23,
	ThumbnailImage = 24,
	CoverArtImage = 25,
	Orientation = 26,
	Resolution = 27,
}
public struct QMediaMetaData
{
	[LinkName("QMediaMetaData_new")]
	public static extern QMediaMetaData* QMediaMetaData_new(QMediaMetaData* param1);
	[LinkName("QMediaMetaData_new2")]
	public static extern QMediaMetaData* QMediaMetaData_new2();
	[LinkName("QMediaMetaData_Value")]
	public static extern QVariant QMediaMetaData_Value(Self* c_this, int64 k);
	[LinkName("QMediaMetaData_Insert")]
	public static extern void QMediaMetaData_Insert(Self* c_this, int64 k, QVariant* value);
	[LinkName("QMediaMetaData_Remove")]
	public static extern void QMediaMetaData_Remove(Self* c_this, int64 k);
	[LinkName("QMediaMetaData_Keys")]
	public static extern int64[] QMediaMetaData_Keys(Self* c_this);
	[LinkName("QMediaMetaData_OperatorSubscript")]
	public static extern QVariant* QMediaMetaData_OperatorSubscript(Self* c_this, int64 k);
	[LinkName("QMediaMetaData_Clear")]
	public static extern void QMediaMetaData_Clear(Self* c_this);
	[LinkName("QMediaMetaData_IsEmpty")]
	public static extern bool QMediaMetaData_IsEmpty(Self* c_this);
	[LinkName("QMediaMetaData_StringValue")]
	public static extern libqt_string QMediaMetaData_StringValue(Self* c_this, int64 k);
	[LinkName("QMediaMetaData_MetaDataKeyToString")]
	public static extern libqt_string QMediaMetaData_MetaDataKeyToString(int64 k);
}