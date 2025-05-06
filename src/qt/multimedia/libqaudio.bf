using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAudio__Error
{
	NoError = 0,
	OpenError = 1,
	IOError = 2,
	UnderrunError = 3,
	FatalError = 4,
}
[AllowDuplicates]
public enum QAudio__State
{
	ActiveState = 0,
	SuspendedState = 1,
	StoppedState = 2,
	IdleState = 3,
}
[AllowDuplicates]
public enum QAudio__VolumeScale
{
	LinearVolumeScale = 0,
	CubicVolumeScale = 1,
	LogarithmicVolumeScale = 2,
	DecibelVolumeScale = 3,
}