using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QUrl__ParsingMode
{
	TolerantMode = 0,
	StrictMode = 1,
	DecodedMode = 2,
}
[AllowDuplicates]
public enum QUrl__UrlFormattingOption
{
	None = 0,
	RemoveScheme = 1,
	RemovePassword = 2,
	RemoveUserInfo = 6,
	RemovePort = 8,
	RemoveAuthority = 30,
	RemovePath = 32,
	RemoveQuery = 64,
	RemoveFragment = 128,
	PreferLocalFile = 512,
	StripTrailingSlash = 1024,
	RemoveFilename = 2048,
	NormalizePathSegments = 4096,
}
[AllowDuplicates]
public enum QUrl__ComponentFormattingOption
{
	PrettyDecoded = 0,
	EncodeSpaces = 1048576,
	EncodeUnicode = 2097152,
	EncodeDelimiters = 12582912,
	EncodeReserved = 16777216,
	DecodeReserved = 33554432,
	FullyEncoded = 32505856,
	FullyDecoded = 133169152,
}
[AllowDuplicates]
public enum QUrl__UserInputResolutionOption
{
	DefaultResolution = 0,
	AssumeLocalFile = 1,
}
[AllowDuplicates]
public enum QUrl__AceProcessingOption
{
	IgnoreIDNWhitelist = 1,
	AceTransitionalProcessing = 2,
}
public struct QUrl
{
	[LinkName("QUrl_new")]
	public static extern QUrl* QUrl_new();
	[LinkName("QUrl_new2")]
	public static extern QUrl* QUrl_new2(QUrl* copyVal);
	[LinkName("QUrl_new3")]
	public static extern QUrl* QUrl_new3(libqt_string url);
	[LinkName("QUrl_new4")]
	public static extern QUrl* QUrl_new4(libqt_string url, int64 mode);
	[LinkName("QUrl_OperatorAssign")]
	public static extern void QUrl_OperatorAssign(Self* c_this, QUrl* copyVal);
	[LinkName("QUrl_OperatorAssignWithUrl")]
	public static extern void QUrl_OperatorAssignWithUrl(Self* c_this, libqt_string url);
	[LinkName("QUrl_Swap")]
	public static extern void QUrl_Swap(Self* c_this, QUrl* other);
	[LinkName("QUrl_SetUrl")]
	public static extern void QUrl_SetUrl(Self* c_this, libqt_string url);
	[LinkName("QUrl_Url")]
	public static extern libqt_string QUrl_Url(Self* c_this);
	[LinkName("QUrl_ToString")]
	public static extern libqt_string QUrl_ToString(Self* c_this);
	[LinkName("QUrl_ToDisplayString")]
	public static extern libqt_string QUrl_ToDisplayString(Self* c_this);
	[LinkName("QUrl_ToEncoded")]
	public static extern libqt_string QUrl_ToEncoded(Self* c_this);
	[LinkName("QUrl_FromEncoded")]
	public static extern QUrl QUrl_FromEncoded(libqt_string url);
	[LinkName("QUrl_FromUserInput")]
	public static extern QUrl QUrl_FromUserInput(libqt_string userInput);
	[LinkName("QUrl_IsValid")]
	public static extern bool QUrl_IsValid(Self* c_this);
	[LinkName("QUrl_ErrorString")]
	public static extern libqt_string QUrl_ErrorString(Self* c_this);
	[LinkName("QUrl_IsEmpty")]
	public static extern bool QUrl_IsEmpty(Self* c_this);
	[LinkName("QUrl_Clear")]
	public static extern void QUrl_Clear(Self* c_this);
	[LinkName("QUrl_SetScheme")]
	public static extern void QUrl_SetScheme(Self* c_this, libqt_string scheme);
	[LinkName("QUrl_Scheme")]
	public static extern libqt_string QUrl_Scheme(Self* c_this);
	[LinkName("QUrl_SetAuthority")]
	public static extern void QUrl_SetAuthority(Self* c_this, libqt_string authority);
	[LinkName("QUrl_Authority")]
	public static extern libqt_string QUrl_Authority(Self* c_this);
	[LinkName("QUrl_SetUserInfo")]
	public static extern void QUrl_SetUserInfo(Self* c_this, libqt_string userInfo);
	[LinkName("QUrl_UserInfo")]
	public static extern libqt_string QUrl_UserInfo(Self* c_this);
	[LinkName("QUrl_SetUserName")]
	public static extern void QUrl_SetUserName(Self* c_this, libqt_string userName);
	[LinkName("QUrl_UserName")]
	public static extern libqt_string QUrl_UserName(Self* c_this);
	[LinkName("QUrl_SetPassword")]
	public static extern void QUrl_SetPassword(Self* c_this, libqt_string password);
	[LinkName("QUrl_Password")]
	public static extern libqt_string QUrl_Password(Self* c_this);
	[LinkName("QUrl_SetHost")]
	public static extern void QUrl_SetHost(Self* c_this, libqt_string host);
	[LinkName("QUrl_Host")]
	public static extern libqt_string QUrl_Host(Self* c_this);
	[LinkName("QUrl_SetPort")]
	public static extern void QUrl_SetPort(Self* c_this, int32 port);
	[LinkName("QUrl_Port")]
	public static extern int32 QUrl_Port(Self* c_this);
	[LinkName("QUrl_SetPath")]
	public static extern void QUrl_SetPath(Self* c_this, libqt_string path);
	[LinkName("QUrl_Path")]
	public static extern libqt_string QUrl_Path(Self* c_this);
	[LinkName("QUrl_FileName")]
	public static extern libqt_string QUrl_FileName(Self* c_this);
	[LinkName("QUrl_HasQuery")]
	public static extern bool QUrl_HasQuery(Self* c_this);
	[LinkName("QUrl_SetQuery")]
	public static extern void QUrl_SetQuery(Self* c_this, libqt_string query);
	[LinkName("QUrl_SetQueryWithQuery")]
	public static extern void QUrl_SetQueryWithQuery(Self* c_this, QUrlQuery* query);
	[LinkName("QUrl_Query")]
	public static extern libqt_string QUrl_Query(Self* c_this);
	[LinkName("QUrl_HasFragment")]
	public static extern bool QUrl_HasFragment(Self* c_this);
	[LinkName("QUrl_Fragment")]
	public static extern libqt_string QUrl_Fragment(Self* c_this);
	[LinkName("QUrl_SetFragment")]
	public static extern void QUrl_SetFragment(Self* c_this, libqt_string fragment);
	[LinkName("QUrl_Resolved")]
	public static extern QUrl QUrl_Resolved(Self* c_this, QUrl* relative);
	[LinkName("QUrl_IsRelative")]
	public static extern bool QUrl_IsRelative(Self* c_this);
	[LinkName("QUrl_IsParentOf")]
	public static extern bool QUrl_IsParentOf(Self* c_this, QUrl* url);
	[LinkName("QUrl_IsLocalFile")]
	public static extern bool QUrl_IsLocalFile(Self* c_this);
	[LinkName("QUrl_FromLocalFile")]
	public static extern QUrl QUrl_FromLocalFile(libqt_string localfile);
	[LinkName("QUrl_ToLocalFile")]
	public static extern libqt_string QUrl_ToLocalFile(Self* c_this);
	[LinkName("QUrl_Detach")]
	public static extern void QUrl_Detach(Self* c_this);
	[LinkName("QUrl_IsDetached")]
	public static extern bool QUrl_IsDetached(Self* c_this);
	[LinkName("QUrl_OperatorLesser")]
	public static extern bool QUrl_OperatorLesser(Self* c_this, QUrl* url);
	[LinkName("QUrl_OperatorEqual")]
	public static extern bool QUrl_OperatorEqual(Self* c_this, QUrl* url);
	[LinkName("QUrl_OperatorNotEqual")]
	public static extern bool QUrl_OperatorNotEqual(Self* c_this, QUrl* url);
	[LinkName("QUrl_FromPercentEncoding")]
	public static extern libqt_string QUrl_FromPercentEncoding(libqt_string param1);
	[LinkName("QUrl_ToPercentEncoding")]
	public static extern libqt_string QUrl_ToPercentEncoding(libqt_string param1);
	[LinkName("QUrl_FromAce")]
	public static extern libqt_string QUrl_FromAce(libqt_string domain);
	[LinkName("QUrl_ToAce")]
	public static extern libqt_string QUrl_ToAce(libqt_string domain);
	[LinkName("QUrl_IdnWhitelist")]
	public static extern libqt_string[] QUrl_IdnWhitelist();
	[LinkName("QUrl_ToStringList")]
	public static extern libqt_string[] QUrl_ToStringList(QUrl[] uris);
	[LinkName("QUrl_FromStringList")]
	public static extern QUrl[] QUrl_FromStringList(libqt_string[] uris);
	[LinkName("QUrl_SetIdnWhitelist")]
	public static extern void QUrl_SetIdnWhitelist(libqt_string[] idnWhitelist);
	[LinkName("QUrl_SetUrl2")]
	public static extern void QUrl_SetUrl2(Self* c_this, libqt_string url, int64 mode);
	[LinkName("QUrl_FromEncoded2")]
	public static extern QUrl QUrl_FromEncoded2(libqt_string url, int64 mode);
	[LinkName("QUrl_FromUserInput2")]
	public static extern QUrl QUrl_FromUserInput2(libqt_string userInput, libqt_string workingDirectory);
	[LinkName("QUrl_FromUserInput3")]
	public static extern QUrl QUrl_FromUserInput3(libqt_string userInput, libqt_string workingDirectory, int64 options);
	[LinkName("QUrl_SetAuthority2")]
	public static extern void QUrl_SetAuthority2(Self* c_this, libqt_string authority, int64 mode);
	[LinkName("QUrl_Authority1")]
	public static extern libqt_string QUrl_Authority1(Self* c_this, int64 options);
	[LinkName("QUrl_SetUserInfo2")]
	public static extern void QUrl_SetUserInfo2(Self* c_this, libqt_string userInfo, int64 mode);
	[LinkName("QUrl_UserInfo1")]
	public static extern libqt_string QUrl_UserInfo1(Self* c_this, int64 options);
	[LinkName("QUrl_SetUserName2")]
	public static extern void QUrl_SetUserName2(Self* c_this, libqt_string userName, int64 mode);
	[LinkName("QUrl_UserName1")]
	public static extern libqt_string QUrl_UserName1(Self* c_this, int64 options);
	[LinkName("QUrl_SetPassword2")]
	public static extern void QUrl_SetPassword2(Self* c_this, libqt_string password, int64 mode);
	[LinkName("QUrl_Password1")]
	public static extern libqt_string QUrl_Password1(Self* c_this, int64 param1);
	[LinkName("QUrl_SetHost2")]
	public static extern void QUrl_SetHost2(Self* c_this, libqt_string host, int64 mode);
	[LinkName("QUrl_Host1")]
	public static extern libqt_string QUrl_Host1(Self* c_this, int64 param1);
	[LinkName("QUrl_Port1")]
	public static extern int32 QUrl_Port1(Self* c_this, int32 defaultPort);
	[LinkName("QUrl_SetPath2")]
	public static extern void QUrl_SetPath2(Self* c_this, libqt_string path, int64 mode);
	[LinkName("QUrl_Path1")]
	public static extern libqt_string QUrl_Path1(Self* c_this, int64 options);
	[LinkName("QUrl_FileName1")]
	public static extern libqt_string QUrl_FileName1(Self* c_this, int64 options);
	[LinkName("QUrl_SetQuery2")]
	public static extern void QUrl_SetQuery2(Self* c_this, libqt_string query, int64 mode);
	[LinkName("QUrl_Query1")]
	public static extern libqt_string QUrl_Query1(Self* c_this, int64 param1);
	[LinkName("QUrl_Fragment1")]
	public static extern libqt_string QUrl_Fragment1(Self* c_this, int64 options);
	[LinkName("QUrl_SetFragment2")]
	public static extern void QUrl_SetFragment2(Self* c_this, libqt_string fragment, int64 mode);
	[LinkName("QUrl_ToPercentEncoding2")]
	public static extern libqt_string QUrl_ToPercentEncoding2(libqt_string param1, libqt_string exclude);
	[LinkName("QUrl_ToPercentEncoding3")]
	public static extern libqt_string QUrl_ToPercentEncoding3(libqt_string param1, libqt_string exclude, libqt_string include);
	[LinkName("QUrl_FromAce2")]
	public static extern libqt_string QUrl_FromAce2(libqt_string domain, int64 options);
	[LinkName("QUrl_ToAce2")]
	public static extern libqt_string QUrl_ToAce2(libqt_string domain, int64 options);
	[LinkName("QUrl_FromStringList2")]
	public static extern QUrl[] QUrl_FromStringList2(libqt_string[] uris, int64 mode);
}