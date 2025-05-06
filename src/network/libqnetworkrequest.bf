using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QNetworkRequest__KnownHeaders
{
	ContentTypeHeader = 0,
	ContentLengthHeader = 1,
	LocationHeader = 2,
	LastModifiedHeader = 3,
	CookieHeader = 4,
	SetCookieHeader = 5,
	ContentDispositionHeader = 6,
	UserAgentHeader = 7,
	ServerHeader = 8,
	IfModifiedSinceHeader = 9,
	ETagHeader = 10,
	IfMatchHeader = 11,
	IfNoneMatchHeader = 12,
}
[AllowDuplicates]
public enum QNetworkRequest__Attribute
{
	HttpStatusCodeAttribute = 0,
	HttpReasonPhraseAttribute = 1,
	RedirectionTargetAttribute = 2,
	ConnectionEncryptedAttribute = 3,
	CacheLoadControlAttribute = 4,
	CacheSaveControlAttribute = 5,
	SourceIsFromCacheAttribute = 6,
	DoNotBufferUploadDataAttribute = 7,
	HttpPipeliningAllowedAttribute = 8,
	HttpPipeliningWasUsedAttribute = 9,
	CustomVerbAttribute = 10,
	CookieLoadControlAttribute = 11,
	AuthenticationReuseAttribute = 12,
	CookieSaveControlAttribute = 13,
	MaximumDownloadBufferSizeAttribute = 14,
	DownloadBufferAttribute = 15,
	SynchronousRequestAttribute = 16,
	BackgroundRequestAttribute = 17,
	EmitAllUploadProgressSignalsAttribute = 18,
	Http2AllowedAttribute = 19,
	Http2WasUsedAttribute = 20,
	OriginalContentLengthAttribute = 21,
	RedirectPolicyAttribute = 22,
	Http2DirectAttribute = 23,
	ResourceTypeAttribute = 24,
	AutoDeleteReplyOnFinishAttribute = 25,
	ConnectionCacheExpiryTimeoutSecondsAttribute = 26,
	Http2CleartextAllowedAttribute = 27,
	User = 1000,
	UserMax = 32767,
}
[AllowDuplicates]
public enum QNetworkRequest__CacheLoadControl
{
	AlwaysNetwork = 0,
	PreferNetwork = 1,
	PreferCache = 2,
	AlwaysCache = 3,
}
[AllowDuplicates]
public enum QNetworkRequest__LoadControl
{
	Automatic = 0,
	Manual = 1,
}
[AllowDuplicates]
public enum QNetworkRequest__Priority
{
	HighPriority = 1,
	NormalPriority = 3,
	LowPriority = 5,
}
[AllowDuplicates]
public enum QNetworkRequest__RedirectPolicy
{
	ManualRedirectPolicy = 0,
	NoLessSafeRedirectPolicy = 1,
	SameOriginRedirectPolicy = 2,
	UserVerifiedRedirectPolicy = 3,
}
[AllowDuplicates]
public enum QNetworkRequest__TransferTimeoutConstant
{
	DefaultTransferTimeoutConstant = 30000,
}
public struct QNetworkRequest
{
	[LinkName("QNetworkRequest_new")]
	public static extern void* QNetworkRequest_new();
	[LinkName("QNetworkRequest_new2")]
	public static extern void* QNetworkRequest_new2(QUrl url);
	[LinkName("QNetworkRequest_new3")]
	public static extern void* QNetworkRequest_new3(QNetworkRequest other);
	[LinkName("QNetworkRequest_OperatorAssign")]
	public static extern void QNetworkRequest_OperatorAssign(void* c_this, QNetworkRequest other);
	[LinkName("QNetworkRequest_Swap")]
	public static extern void QNetworkRequest_Swap(void* c_this, QNetworkRequest other);
	[LinkName("QNetworkRequest_OperatorEqual")]
	public static extern bool QNetworkRequest_OperatorEqual(void* c_this, QNetworkRequest other);
	[LinkName("QNetworkRequest_OperatorNotEqual")]
	public static extern bool QNetworkRequest_OperatorNotEqual(void* c_this, QNetworkRequest other);
	[LinkName("QNetworkRequest_Url")]
	public static extern QUrl QNetworkRequest_Url(void* c_this);
	[LinkName("QNetworkRequest_SetUrl")]
	public static extern void QNetworkRequest_SetUrl(void* c_this, QUrl url);
	[LinkName("QNetworkRequest_Header")]
	public static extern QVariant QNetworkRequest_Header(void* c_this, int64 header);
	[LinkName("QNetworkRequest_SetHeader")]
	public static extern void QNetworkRequest_SetHeader(void* c_this, int64 header, QVariant value);
	[LinkName("QNetworkRequest_HasRawHeader")]
	public static extern bool QNetworkRequest_HasRawHeader(void* c_this, uint8[] headerName);
	[LinkName("QNetworkRequest_RawHeaderList")]
	public static extern uint8[][] QNetworkRequest_RawHeaderList(void* c_this);
	[LinkName("QNetworkRequest_RawHeader")]
	public static extern uint8[] QNetworkRequest_RawHeader(void* c_this, uint8[] headerName);
	[LinkName("QNetworkRequest_SetRawHeader")]
	public static extern void QNetworkRequest_SetRawHeader(void* c_this, uint8[] headerName, uint8[] value);
	[LinkName("QNetworkRequest_Attribute")]
	public static extern QVariant QNetworkRequest_Attribute(void* c_this, int64 code);
	[LinkName("QNetworkRequest_SetAttribute")]
	public static extern void QNetworkRequest_SetAttribute(void* c_this, int64 code, QVariant value);
	[LinkName("QNetworkRequest_SslConfiguration")]
	public static extern QSslConfiguration QNetworkRequest_SslConfiguration(void* c_this);
	[LinkName("QNetworkRequest_SetSslConfiguration")]
	public static extern void QNetworkRequest_SetSslConfiguration(void* c_this, QSslConfiguration configuration);
	[LinkName("QNetworkRequest_SetOriginatingObject")]
	public static extern void QNetworkRequest_SetOriginatingObject(void* c_this, QObject object);
	[LinkName("QNetworkRequest_OriginatingObject")]
	public static extern QObject QNetworkRequest_OriginatingObject(void* c_this);
	[LinkName("QNetworkRequest_Priority")]
	public static extern int64 QNetworkRequest_Priority(void* c_this);
	[LinkName("QNetworkRequest_SetPriority")]
	public static extern void QNetworkRequest_SetPriority(void* c_this, int64 priority);
	[LinkName("QNetworkRequest_MaximumRedirectsAllowed")]
	public static extern int32 QNetworkRequest_MaximumRedirectsAllowed(void* c_this);
	[LinkName("QNetworkRequest_SetMaximumRedirectsAllowed")]
	public static extern void QNetworkRequest_SetMaximumRedirectsAllowed(void* c_this, int32 maximumRedirectsAllowed);
	[LinkName("QNetworkRequest_PeerVerifyName")]
	public static extern char8[] QNetworkRequest_PeerVerifyName(void* c_this);
	[LinkName("QNetworkRequest_SetPeerVerifyName")]
	public static extern void QNetworkRequest_SetPeerVerifyName(void* c_this, char8[] peerName);
	[LinkName("QNetworkRequest_Http2Configuration")]
	public static extern QHttp2Configuration QNetworkRequest_Http2Configuration(void* c_this);
	[LinkName("QNetworkRequest_SetHttp2Configuration")]
	public static extern void QNetworkRequest_SetHttp2Configuration(void* c_this, QHttp2Configuration configuration);
	[LinkName("QNetworkRequest_DecompressedSafetyCheckThreshold")]
	public static extern int64 QNetworkRequest_DecompressedSafetyCheckThreshold(void* c_this);
	[LinkName("QNetworkRequest_SetDecompressedSafetyCheckThreshold")]
	public static extern void QNetworkRequest_SetDecompressedSafetyCheckThreshold(void* c_this, int64 threshold);
	[LinkName("QNetworkRequest_TransferTimeout")]
	public static extern int32 QNetworkRequest_TransferTimeout(void* c_this);
	[LinkName("QNetworkRequest_SetTransferTimeout")]
	public static extern void QNetworkRequest_SetTransferTimeout(void* c_this);
	[LinkName("QNetworkRequest_Attribute2")]
	public static extern QVariant QNetworkRequest_Attribute2(void* c_this, int64 code, QVariant defaultValue);
	[LinkName("QNetworkRequest_SetTransferTimeout1")]
	public static extern void QNetworkRequest_SetTransferTimeout1(void* c_this, int32 timeout);
}