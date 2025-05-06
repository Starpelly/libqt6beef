using System;
using System.Interop;
namespace Qt;

public struct QFutureWatcherBase
{
	[LinkName("QFutureWatcherBase_MetaObject")]
	public static extern QMetaObject QFutureWatcherBase_MetaObject(void* c_this);
	[LinkName("QFutureWatcherBase_Metacast")]
	public static extern void QFutureWatcherBase_Metacast(void* c_this, char8[] param1);
	[LinkName("QFutureWatcherBase_Metacall")]
	public static extern int32 QFutureWatcherBase_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QFutureWatcherBase_Tr")]
	public static extern char8[] QFutureWatcherBase_Tr(char8[] s);
	[LinkName("QFutureWatcherBase_ProgressValue")]
	public static extern int32 QFutureWatcherBase_ProgressValue(void* c_this);
	[LinkName("QFutureWatcherBase_ProgressMinimum")]
	public static extern int32 QFutureWatcherBase_ProgressMinimum(void* c_this);
	[LinkName("QFutureWatcherBase_ProgressMaximum")]
	public static extern int32 QFutureWatcherBase_ProgressMaximum(void* c_this);
	[LinkName("QFutureWatcherBase_ProgressText")]
	public static extern char8[] QFutureWatcherBase_ProgressText(void* c_this);
	[LinkName("QFutureWatcherBase_IsStarted")]
	public static extern bool QFutureWatcherBase_IsStarted(void* c_this);
	[LinkName("QFutureWatcherBase_IsFinished")]
	public static extern bool QFutureWatcherBase_IsFinished(void* c_this);
	[LinkName("QFutureWatcherBase_IsRunning")]
	public static extern bool QFutureWatcherBase_IsRunning(void* c_this);
	[LinkName("QFutureWatcherBase_IsCanceled")]
	public static extern bool QFutureWatcherBase_IsCanceled(void* c_this);
	[LinkName("QFutureWatcherBase_IsPaused")]
	public static extern bool QFutureWatcherBase_IsPaused(void* c_this);
	[LinkName("QFutureWatcherBase_IsSuspending")]
	public static extern bool QFutureWatcherBase_IsSuspending(void* c_this);
	[LinkName("QFutureWatcherBase_IsSuspended")]
	public static extern bool QFutureWatcherBase_IsSuspended(void* c_this);
	[LinkName("QFutureWatcherBase_WaitForFinished")]
	public static extern void QFutureWatcherBase_WaitForFinished(void* c_this);
	[LinkName("QFutureWatcherBase_SetPendingResultsLimit")]
	public static extern void QFutureWatcherBase_SetPendingResultsLimit(void* c_this, int32 limit);
	[LinkName("QFutureWatcherBase_Event")]
	public static extern bool QFutureWatcherBase_Event(void* c_this, QEvent event);
	[LinkName("QFutureWatcherBase_Started")]
	public static extern void QFutureWatcherBase_Started(void* c_this);
	[LinkName("QFutureWatcherBase_Finished")]
	public static extern void QFutureWatcherBase_Finished(void* c_this);
	[LinkName("QFutureWatcherBase_Canceled")]
	public static extern void QFutureWatcherBase_Canceled(void* c_this);
	[LinkName("QFutureWatcherBase_Paused")]
	public static extern void QFutureWatcherBase_Paused(void* c_this);
	[LinkName("QFutureWatcherBase_Suspending")]
	public static extern void QFutureWatcherBase_Suspending(void* c_this);
	[LinkName("QFutureWatcherBase_Suspended")]
	public static extern void QFutureWatcherBase_Suspended(void* c_this);
	[LinkName("QFutureWatcherBase_Resumed")]
	public static extern void QFutureWatcherBase_Resumed(void* c_this);
	[LinkName("QFutureWatcherBase_ResultReadyAt")]
	public static extern void QFutureWatcherBase_ResultReadyAt(void* c_this, int32 resultIndex);
	[LinkName("QFutureWatcherBase_ResultsReadyAt")]
	public static extern void QFutureWatcherBase_ResultsReadyAt(void* c_this, int32 beginIndex, int32 endIndex);
	[LinkName("QFutureWatcherBase_ProgressRangeChanged")]
	public static extern void QFutureWatcherBase_ProgressRangeChanged(void* c_this, int32 minimum, int32 maximum);
	[LinkName("QFutureWatcherBase_ProgressValueChanged")]
	public static extern void QFutureWatcherBase_ProgressValueChanged(void* c_this, int32 progressValue);
	[LinkName("QFutureWatcherBase_ProgressTextChanged")]
	public static extern void QFutureWatcherBase_ProgressTextChanged(void* c_this, char8[] progressText);
	[LinkName("QFutureWatcherBase_Cancel")]
	public static extern void QFutureWatcherBase_Cancel(void* c_this);
	[LinkName("QFutureWatcherBase_SetSuspended")]
	public static extern void QFutureWatcherBase_SetSuspended(void* c_this, bool suspendVal);
	[LinkName("QFutureWatcherBase_Suspend")]
	public static extern void QFutureWatcherBase_Suspend(void* c_this);
	[LinkName("QFutureWatcherBase_Resume")]
	public static extern void QFutureWatcherBase_Resume(void* c_this);
	[LinkName("QFutureWatcherBase_ToggleSuspended")]
	public static extern void QFutureWatcherBase_ToggleSuspended(void* c_this);
	[LinkName("QFutureWatcherBase_SetPaused")]
	public static extern void QFutureWatcherBase_SetPaused(void* c_this, bool paused);
	[LinkName("QFutureWatcherBase_Pause")]
	public static extern void QFutureWatcherBase_Pause(void* c_this);
	[LinkName("QFutureWatcherBase_TogglePaused")]
	public static extern void QFutureWatcherBase_TogglePaused(void* c_this);
	[LinkName("QFutureWatcherBase_ConnectNotify")]
	public static extern void QFutureWatcherBase_ConnectNotify(void* c_this, QMetaMethod signal);
	[LinkName("QFutureWatcherBase_DisconnectNotify")]
	public static extern void QFutureWatcherBase_DisconnectNotify(void* c_this, QMetaMethod signal);
	[LinkName("QFutureWatcherBase_ConnectOutputInterface")]
	public static extern void QFutureWatcherBase_ConnectOutputInterface(void* c_this);
	[LinkName("QFutureWatcherBase_DisconnectOutputInterface")]
	public static extern void QFutureWatcherBase_DisconnectOutputInterface(void* c_this);
	[LinkName("QFutureWatcherBase_Tr2")]
	public static extern char8[] QFutureWatcherBase_Tr2(char8[] s, char8[] c);
	[LinkName("QFutureWatcherBase_Tr3")]
	public static extern char8[] QFutureWatcherBase_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QFutureWatcherBase_DisconnectOutputInterface1")]
	public static extern void QFutureWatcherBase_DisconnectOutputInterface1(void* c_this, bool pendingAssignment);
}