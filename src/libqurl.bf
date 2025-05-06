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
	public static extern void* QUrl_new();
	[LinkName("QUrl_new2")]
	public static extern void* QUrl_new2(QUrl copyVal);
	[LinkName("QUrl_new3")]
	public static extern void* QUrl_new3(char8[] url);
	[LinkName("QUrl_new4")]
	public static extern void* QUrl_new4(char8[] url, int64 mode);
	[LinkName("QUrl_OperatorAssign")]
	public static extern void QUrl_OperatorAssign(void* c_this, QUrl copyVal);
	[LinkName("QUrl_OperatorAssignWithUrl")]
	public static extern void QUrl_OperatorAssignWithUrl(void* c_this, char8[] url);
	[LinkName("QUrl_Swap")]
	public static extern void QUrl_Swap(void* c_this, QUrl other);
	[LinkName("QUrl_SetUrl")]
	public static extern void QUrl_SetUrl(void* c_this, char8[] url);
	[LinkName("QUrl_Url")]
	public static extern char8[] QUrl_Url(void* c_this);
	[LinkName("QUrl_ToString")]
	public static extern char8[] QUrl_ToString(void* c_this);
	[LinkName("QUrl_ToDisplayString")]
	public static extern char8[] QUrl_ToDisplayString(void* c_this);
	[LinkName("QUrl_ToEncoded")]
	public static extern uint8[] QUrl_ToEncoded(void* c_this);
	[LinkName("QUrl_FromEncoded")]
	public static extern QUrl QUrl_FromEncoded(uint8[] url);
	[LinkName("QUrl_FromUserInput")]
	public static extern QUrl QUrl_FromUserInput(char8[] userInput);
	[LinkName("QUrl_IsValid")]
	public static extern bool QUrl_IsValid(void* c_this);
	[LinkName("QUrl_ErrorString")]
	public static extern char8[] QUrl_ErrorString(void* c_this);
	[LinkName("QUrl_IsEmpty")]
	public static extern bool QUrl_IsEmpty(void* c_this);
	[LinkName("QUrl_Clear")]
	public static extern void QUrl_Clear(void* c_this);
	[LinkName("QUrl_SetScheme")]
	public static extern void QUrl_SetScheme(void* c_this, char8[] scheme);
	[LinkName("QUrl_Scheme")]
	public static extern char8[] QUrl_Scheme(void* c_this);
	[LinkName("QUrl_SetAuthority")]
	public static extern void QUrl_SetAuthority(void* c_this, char8[] authority);
	[LinkName("QUrl_Authority")]
	public static extern char8[] QUrl_Authority(void* c_this);
	[LinkName("QUrl_SetUserInfo")]
	public static extern void QUrl_SetUserInfo(void* c_this, char8[] userInfo);
	[LinkName("QUrl_UserInfo")]
	public static extern char8[] QUrl_UserInfo(void* c_this);
	[LinkName("QUrl_SetUserName")]
	public static extern void QUrl_SetUserName(void* c_this, char8[] userName);
	[LinkName("QUrl_UserName")]
	public static extern char8[] QUrl_UserName(void* c_this);
	[LinkName("QUrl_SetPassword")]
	public static extern void QUrl_SetPassword(void* c_this, char8[] password);
	[LinkName("QUrl_Password")]
	public static extern char8[] QUrl_Password(void* c_this);
	[LinkName("QUrl_SetHost")]
	public static extern void QUrl_SetHost(void* c_this, char8[] host);
	[LinkName("QUrl_Host")]
	public static extern char8[] QUrl_Host(void* c_this);
	[LinkName("QUrl_SetPort")]
	public static extern void QUrl_SetPort(void* c_this, int32 port);
	[LinkName("QUrl_Port")]
	public static extern int32 QUrl_Port(void* c_this);
	[LinkName("QUrl_SetPath")]
	public static extern void QUrl_SetPath(void* c_this, char8[] path);
	[LinkName("QUrl_Path")]
	public static extern char8[] QUrl_Path(void* c_this);
	[LinkName("QUrl_FileName")]
	public static extern char8[] QUrl_FileName(void* c_this);
	[LinkName("QUrl_HasQuery")]
	public static extern bool QUrl_HasQuery(void* c_this);
	[LinkName("QUrl_SetQuery")]
	public static extern void QUrl_SetQuery(void* c_this, char8[] query);
	[LinkName("QUrl_SetQueryWithQuery")]
	public static extern void QUrl_SetQueryWithQuery(void* c_this, QUrlQuery query);
	[LinkName("QUrl_Query")]
	public static extern char8[] QUrl_Query(void* c_this);
	[LinkName("QUrl_HasFragment")]
	public static extern bool QUrl_HasFragment(void* c_this);
	[LinkName("QUrl_Fragment")]
	public static extern char8[] QUrl_Fragment(void* c_this);
	[LinkName("QUrl_SetFragment")]
	public static extern void QUrl_SetFragment(void* c_this, char8[] fragment);
	[LinkName("QUrl_Resolved")]
	public static extern QUrl QUrl_Resolved(void* c_this, QUrl relative);
	[LinkName("QUrl_IsRelative")]
	public static extern bool QUrl_IsRelative(void* c_this);
	[LinkName("QUrl_IsParentOf")]
	public static extern bool QUrl_IsParentOf(void* c_this, QUrl url);
	[LinkName("QUrl_IsLocalFile")]
	public static extern bool QUrl_IsLocalFile(void* c_this);
	[LinkName("QUrl_FromLocalFile")]
	public static extern QUrl QUrl_FromLocalFile(char8[] localfile);
	[LinkName("QUrl_ToLocalFile")]
	public static extern char8[] QUrl_ToLocalFile(void* c_this);
	[LinkName("QUrl_Detach")]
	public static extern void QUrl_Detach(void* c_this);
	[LinkName("QUrl_IsDetached")]
	public static extern bool QUrl_IsDetached(void* c_this);
	[LinkName("QUrl_OperatorLesser")]
	public static extern bool QUrl_OperatorLesser(void* c_this, QUrl url);
	[LinkName("QUrl_OperatorEqual")]
	public static extern bool QUrl_OperatorEqual(void* c_this, QUrl url);
	[LinkName("QUrl_OperatorNotEqual")]
	public static extern bool QUrl_OperatorNotEqual(void* c_this, QUrl url);
	[LinkName("QUrl_FromPercentEncoding")]
	public static extern char8[] QUrl_FromPercentEncoding(uint8[] param1);
	[LinkName("QUrl_ToPercentEncoding")]
	public static extern uint8[] QUrl_ToPercentEncoding(char8[] param1);
	[LinkName("QUrl_FromAce")]
	public static extern char8[] QUrl_FromAce(uint8[] domain);
	[LinkName("QUrl_ToAce")]
	public static extern uint8[] QUrl_ToAce(char8[] domain);
	[LinkName("QUrl_IdnWhitelist")]
	public static extern char8[][] QUrl_IdnWhitelist();
	[LinkName("QUrl_ToStringList")]
	public static extern char8[][] QUrl_ToStringList(QUrl[] uris);
	[LinkName("QUrl_FromStringList")]
	public static extern QUrl[] QUrl_FromStringList(char8[][] uris);
	[LinkName("QUrl_SetIdnWhitelist")]
	public static extern void QUrl_SetIdnWhitelist(char8[][] idnWhitelist);
	[LinkName("QUrl_SetUrl2")]
	public static extern void QUrl_SetUrl2(void* c_this, char8[] url, int64 mode);
	[LinkName("QUrl_FromEncoded2")]
	public static extern QUrl QUrl_FromEncoded2(uint8[] url, int64 mode);
	[LinkName("QUrl_FromUserInput2")]
	public static extern QUrl QUrl_FromUserInput2(char8[] userInput, char8[] workingDirectory);
	[LinkName("QUrl_FromUserInput3")]
	public static extern QUrl QUrl_FromUserInput3(char8[] userInput, char8[] workingDirectory, int64 options);
	[LinkName("QUrl_SetAuthority2")]
	public static extern void QUrl_SetAuthority2(void* c_this, char8[] authority, int64 mode);
	[LinkName("QUrl_Authority1")]
	public static extern char8[] QUrl_Authority1(void* c_this, int64 options);
	[LinkName("QUrl_SetUserInfo2")]
	public static extern void QUrl_SetUserInfo2(void* c_this, char8[] userInfo, int64 mode);
	[LinkName("QUrl_UserInfo1")]
	public static extern char8[] QUrl_UserInfo1(void* c_this, int64 options);
	[LinkName("QUrl_SetUserName2")]
	public static extern void QUrl_SetUserName2(void* c_this, char8[] userName, int64 mode);
	[LinkName("QUrl_UserName1")]
	public static extern char8[] QUrl_UserName1(void* c_this, int64 options);
	[LinkName("QUrl_SetPassword2")]
	public static extern void QUrl_SetPassword2(void* c_this, char8[] password, int64 mode);
	[LinkName("QUrl_Password1")]
	public static extern char8[] QUrl_Password1(void* c_this, int64 param1);
	[LinkName("QUrl_SetHost2")]
	public static extern void QUrl_SetHost2(void* c_this, char8[] host, int64 mode);
	[LinkName("QUrl_Host1")]
	public static extern char8[] QUrl_Host1(void* c_this, int64 param1);
	[LinkName("QUrl_Port1")]
	public static extern int32 QUrl_Port1(void* c_this, int32 defaultPort);
	[LinkName("QUrl_SetPath2")]
	public static extern void QUrl_SetPath2(void* c_this, char8[] path, int64 mode);
	[LinkName("QUrl_Path1")]
	public static extern char8[] QUrl_Path1(void* c_this, int64 options);
	[LinkName("QUrl_FileName1")]
	public static extern char8[] QUrl_FileName1(void* c_this, int64 options);
	[LinkName("QUrl_SetQuery2")]
	public static extern void QUrl_SetQuery2(void* c_this, char8[] query, int64 mode);
	[LinkName("QUrl_Query1")]
	public static extern char8[] QUrl_Query1(void* c_this, int64 param1);
	[LinkName("QUrl_Fragment1")]
	public static extern char8[] QUrl_Fragment1(void* c_this, int64 options);
	[LinkName("QUrl_SetFragment2")]
	public static extern void QUrl_SetFragment2(void* c_this, char8[] fragment, int64 mode);
	[LinkName("QUrl_ToPercentEncoding2")]
	public static extern uint8[] QUrl_ToPercentEncoding2(char8[] param1, uint8[] exclude);
	[LinkName("QUrl_ToPercentEncoding3")]
	public static extern uint8[] QUrl_ToPercentEncoding3(char8[] param1, uint8[] exclude, uint8[] include);
	[LinkName("QUrl_FromAce2")]
	public static extern char8[] QUrl_FromAce2(uint8[] domain, int64 options);
	[LinkName("QUrl_ToAce2")]
	public static extern uint8[] QUrl_ToAce2(char8[] domain, int64 options);
	[LinkName("QUrl_FromStringList2")]
	public static extern QUrl[] QUrl_FromStringList2(char8[][] uris, int64 mode);
}