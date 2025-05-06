using System;
using System.Interop;
namespace Qt;

public struct QFutureWatcherBase : QObject
{
	[LinkName("QFutureWatcherBase_MetaObject")]
	public static extern QMetaObject* QFutureWatcherBase_MetaObject(Self* c_this);
	[LinkName("QFutureWatcherBase_Metacast")]
	public static extern void* QFutureWatcherBase_Metacast(Self* c_this, char8[] param1);
	[LinkName("QFutureWatcherBase_Metacall")]
	public static extern int32 QFutureWatcherBase_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QFutureWatcherBase_Tr")]
	public static extern libqt_string QFutureWatcherBase_Tr(char8[] s);
	[LinkName("QFutureWatcherBase_ProgressValue")]
	public static extern int32 QFutureWatcherBase_ProgressValue(Self* c_this);
	[LinkName("QFutureWatcherBase_ProgressMinimum")]
	public static extern int32 QFutureWatcherBase_ProgressMinimum(Self* c_this);
	[LinkName("QFutureWatcherBase_ProgressMaximum")]
	public static extern int32 QFutureWatcherBase_ProgressMaximum(Self* c_this);
	[LinkName("QFutureWatcherBase_ProgressText")]
	public static extern libqt_string QFutureWatcherBase_ProgressText(Self* c_this);
	[LinkName("QFutureWatcherBase_IsStarted")]
	public static extern bool QFutureWatcherBase_IsStarted(Self* c_this);
	[LinkName("QFutureWatcherBase_IsFinished")]
	public static extern bool QFutureWatcherBase_IsFinished(Self* c_this);
	[LinkName("QFutureWatcherBase_IsRunning")]
	public static extern bool QFutureWatcherBase_IsRunning(Self* c_this);
	[LinkName("QFutureWatcherBase_IsCanceled")]
	public static extern bool QFutureWatcherBase_IsCanceled(Self* c_this);
	[LinkName("QFutureWatcherBase_IsPaused")]
	public static extern bool QFutureWatcherBase_IsPaused(Self* c_this);
	[LinkName("QFutureWatcherBase_IsSuspending")]
	public static extern bool QFutureWatcherBase_IsSuspending(Self* c_this);
	[LinkName("QFutureWatcherBase_IsSuspended")]
	public static extern bool QFutureWatcherBase_IsSuspended(Self* c_this);
	[LinkName("QFutureWatcherBase_WaitForFinished")]
	public static extern void QFutureWatcherBase_WaitForFinished(Self* c_this);
	[LinkName("QFutureWatcherBase_SetPendingResultsLimit")]
	public static extern void QFutureWatcherBase_SetPendingResultsLimit(Self* c_this, int32 limit);
	[LinkName("QFutureWatcherBase_Event")]
	public static extern bool QFutureWatcherBase_Event(Self* c_this, QEvent* event);
	[LinkName("QFutureWatcherBase_Started")]
	public static extern void QFutureWatcherBase_Started(Self* c_this);
	[LinkName("QFutureWatcherBase_Finished")]
	public static extern void QFutureWatcherBase_Finished(Self* c_this);
	[LinkName("QFutureWatcherBase_Canceled")]
	public static extern void QFutureWatcherBase_Canceled(Self* c_this);
	[LinkName("QFutureWatcherBase_Paused")]
	public static extern void QFutureWatcherBase_Paused(Self* c_this);
	[LinkName("QFutureWatcherBase_Suspending")]
	public static extern void QFutureWatcherBase_Suspending(Self* c_this);
	[LinkName("QFutureWatcherBase_Suspended")]
	public static extern void QFutureWatcherBase_Suspended(Self* c_this);
	[LinkName("QFutureWatcherBase_Resumed")]
	public static extern void QFutureWatcherBase_Resumed(Self* c_this);
	[LinkName("QFutureWatcherBase_ResultReadyAt")]
	public static extern void QFutureWatcherBase_ResultReadyAt(Self* c_this, int32 resultIndex);
	[LinkName("QFutureWatcherBase_ResultsReadyAt")]
	public static extern void QFutureWatcherBase_ResultsReadyAt(Self* c_this, int32 beginIndex, int32 endIndex);
	[LinkName("QFutureWatcherBase_ProgressRangeChanged")]
	public static extern void QFutureWatcherBase_ProgressRangeChanged(Self* c_this, int32 minimum, int32 maximum);
	[LinkName("QFutureWatcherBase_ProgressValueChanged")]
	public static extern void QFutureWatcherBase_ProgressValueChanged(Self* c_this, int32 progressValue);
	[LinkName("QFutureWatcherBase_ProgressTextChanged")]
	public static extern void QFutureWatcherBase_ProgressTextChanged(Self* c_this, libqt_string progressText);
	[LinkName("QFutureWatcherBase_Cancel")]
	public static extern void QFutureWatcherBase_Cancel(Self* c_this);
	[LinkName("QFutureWatcherBase_SetSuspended")]
	public static extern void QFutureWatcherBase_SetSuspended(Self* c_this, bool suspendVal);
	[LinkName("QFutureWatcherBase_Suspend")]
	public static extern void QFutureWatcherBase_Suspend(Self* c_this);
	[LinkName("QFutureWatcherBase_Resume")]
	public static extern void QFutureWatcherBase_Resume(Self* c_this);
	[LinkName("QFutureWatcherBase_ToggleSuspended")]
	public static extern void QFutureWatcherBase_ToggleSuspended(Self* c_this);
	[LinkName("QFutureWatcherBase_SetPaused")]
	public static extern void QFutureWatcherBase_SetPaused(Self* c_this, bool paused);
	[LinkName("QFutureWatcherBase_Pause")]
	public static extern void QFutureWatcherBase_Pause(Self* c_this);
	[LinkName("QFutureWatcherBase_TogglePaused")]
	public static extern void QFutureWatcherBase_TogglePaused(Self* c_this);
	[LinkName("QFutureWatcherBase_ConnectNotify")]
	public static extern void QFutureWatcherBase_ConnectNotify(Self* c_this, QMetaMethod* signal);
	[LinkName("QFutureWatcherBase_DisconnectNotify")]
	public static extern void QFutureWatcherBase_DisconnectNotify(Self* c_this, QMetaMethod* signal);
	[LinkName("QFutureWatcherBase_ConnectOutputInterface")]
	public static extern void QFutureWatcherBase_ConnectOutputInterface(Self* c_this);
	[LinkName("QFutureWatcherBase_DisconnectOutputInterface")]
	public static extern void QFutureWatcherBase_DisconnectOutputInterface(Self* c_this);
	[LinkName("QFutureWatcherBase_Tr2")]
	public static extern libqt_string QFutureWatcherBase_Tr2(char8[] s, char8[] c);
	[LinkName("QFutureWatcherBase_Tr3")]
	public static extern libqt_string QFutureWatcherBase_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QFutureWatcherBase_DisconnectOutputInterface1")]
	public static extern void QFutureWatcherBase_DisconnectOutputInterface1(Self* c_this, bool pendingAssignment);
}