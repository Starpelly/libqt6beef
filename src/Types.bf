// This was manually typed by my own two hands and my keyboard!!! :>

using System;

namespace Qt;

[CRepr]
public struct libqt_string
{
	int len;
	char8* data;

	public this(int len, char8* data)
	{
		this.len = len;
		this.data = data;
	}

	public this(String str)
	{
		this.len = str.Length;
		this.data = str.Ptr;
	}
}