using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGradient__Type
{
	LinearGradient = 0,
	RadialGradient = 1,
	ConicalGradient = 2,
	NoGradient = 3,
}
[AllowDuplicates]
public enum QGradient__Spread
{
	PadSpread = 0,
	ReflectSpread = 1,
	RepeatSpread = 2,
}
[AllowDuplicates]
public enum QGradient__CoordinateMode
{
	LogicalMode = 0,
	StretchToDeviceMode = 1,
	ObjectBoundingMode = 2,
	ObjectMode = 3,
}
[AllowDuplicates]
public enum QGradient__InterpolationMode
{
	ColorInterpolation = 0,
	ComponentInterpolation = 1,
}
[AllowDuplicates]
public enum QGradient__Preset
{
	WarmFlame = 1,
	NightFade = 2,
	SpringWarmth = 3,
	JuicyPeach = 4,
	YoungPassion = 5,
	LadyLips = 6,
	SunnyMorning = 7,
	RainyAshville = 8,
	FrozenDreams = 9,
	WinterNeva = 10,
	DustyGrass = 11,
	TemptingAzure = 12,
	HeavyRain = 13,
	AmyCrisp = 14,
	MeanFruit = 15,
	DeepBlue = 16,
	RipeMalinka = 17,
	CloudyKnoxville = 18,
	MalibuBeach = 19,
	NewLife = 20,
	TrueSunset = 21,
	MorpheusDen = 22,
	RareWind = 23,
	NearMoon = 24,
	WildApple = 25,
	SaintPetersburg = 26,
	PlumPlate = 28,
	EverlastingSky = 29,
	HappyFisher = 30,
	Blessing = 31,
	SharpeyeEagle = 32,
	LadogaBottom = 33,
	LemonGate = 34,
	ItmeoBranding = 35,
	ZeusMiracle = 36,
	OldHat = 37,
	StarWine = 38,
	HappyAcid = 41,
	AwesomePine = 42,
	NewYork = 43,
	ShyRainbow = 44,
	MixedHopes = 46,
	FlyHigh = 47,
	StrongBliss = 48,
	FreshMilk = 49,
	SnowAgain = 50,
	FebruaryInk = 51,
	KindSteel = 52,
	SoftGrass = 53,
	GrownEarly = 54,
	SharpBlues = 55,
	ShadyWater = 56,
	DirtyBeauty = 57,
	GreatWhale = 58,
	TeenNotebook = 59,
	PoliteRumors = 60,
	SweetPeriod = 61,
	WideMatrix = 62,
	SoftCherish = 63,
	RedSalvation = 64,
	BurningSpring = 65,
	NightParty = 66,
	SkyGlider = 67,
	HeavenPeach = 68,
	PurpleDivision = 69,
	AquaSplash = 70,
	SpikyNaga = 72,
	LoveKiss = 73,
	CleanMirror = 75,
	PremiumDark = 76,
	ColdEvening = 77,
	CochitiLake = 78,
	SummerGames = 79,
	PassionateBed = 80,
	MountainRock = 81,
	DesertHump = 82,
	JungleDay = 83,
	PhoenixStart = 84,
	OctoberSilence = 85,
	FarawayRiver = 86,
	AlchemistLab = 87,
	OverSun = 88,
	PremiumWhite = 89,
	MarsParty = 90,
	EternalConstance = 91,
	JapanBlush = 92,
	SmilingRain = 93,
	CloudyApple = 94,
	BigMango = 95,
	HealthyWater = 96,
	AmourAmour = 97,
	RiskyConcrete = 98,
	StrongStick = 99,
	ViciousStance = 100,
	PaloAlto = 101,
	HappyMemories = 102,
	MidnightBloom = 103,
	Crystalline = 104,
	PartyBliss = 106,
	ConfidentCloud = 107,
	LeCocktail = 108,
	RiverCity = 109,
	FrozenBerry = 110,
	ChildCare = 112,
	FlyingLemon = 113,
	NewRetrowave = 114,
	HiddenJaguar = 115,
	AboveTheSky = 116,
	Nega = 117,
	DenseWater = 118,
	Seashore = 120,
	MarbleWall = 121,
	CheerfulCaramel = 122,
	NightSky = 123,
	MagicLake = 124,
	YoungGrass = 125,
	ColorfulPeach = 126,
	GentleCare = 127,
	PlumBath = 128,
	HappyUnicorn = 129,
	AfricanField = 131,
	SolidStone = 132,
	OrangeJuice = 133,
	GlassWater = 134,
	NorthMiracle = 136,
	FruitBlend = 137,
	MillenniumPine = 138,
	HighFlight = 139,
	MoleHall = 140,
	SpaceShift = 142,
	ForestInei = 143,
	RoyalGarden = 144,
	RichMetal = 145,
	JuicyCake = 146,
	SmartIndigo = 147,
	SandStrike = 148,
	NorseBeauty = 149,
	AquaGuidance = 150,
	SunVeggie = 151,
	SeaLord = 152,
	BlackSea = 153,
	GrassShampoo = 154,
	LandingAircraft = 155,
	WitchDance = 156,
	SleeplessNight = 157,
	AngelCare = 158,
	CrystalRiver = 159,
	SoftLipstick = 160,
	SaltMountain = 161,
	PerfectWhite = 162,
	FreshOasis = 163,
	StrictNovember = 164,
	MorningSalad = 165,
	DeepRelief = 166,
	SeaStrike = 167,
	NightCall = 168,
	SupremeSky = 169,
	LightBlue = 170,
	MindCrawl = 171,
	LilyMeadow = 172,
	SugarLollipop = 173,
	SweetDessert = 174,
	MagicRay = 175,
	TeenParty = 176,
	FrozenHeat = 177,
	GagarinView = 178,
	FabledSunset = 179,
	PerfectBlue = 180,
	NumPresets = 181,
}
public interface IQBrush
{
	void* NativePtr { get; }
}
public class QBrush : IQBrush
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QBrush_new();
	}
	
	public ~this()
	{
		CQt.QBrush_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQBrush brush)
	{
		CQt.QBrush_OperatorAssign(this.nativePtr, (brush == default) ? default : (void*)brush.NativePtr);
	}
	
	public void Swap(IQBrush other)
	{
		CQt.QBrush_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void ToQVariant()
	{
		CQt.QBrush_ToQVariant(this.nativePtr);
	}
	
	public int64 Style()
	{
		return CQt.QBrush_Style(this.nativePtr);
	}
	
	public void SetStyle(int64 style)
	{
		CQt.QBrush_SetStyle(this.nativePtr, style);
	}
	
	public void Transform()
	{
		CQt.QBrush_Transform(this.nativePtr);
	}
	
	public void SetTransform(IQTransform transform)
	{
		CQt.QBrush_SetTransform(this.nativePtr, (transform == default) ? default : (void*)transform.NativePtr);
	}
	
	public void Texture()
	{
		CQt.QBrush_Texture(this.nativePtr);
	}
	
	public void SetTexture(IQPixmap pixmap)
	{
		CQt.QBrush_SetTexture(this.nativePtr, (pixmap == default) ? default : (void*)pixmap.NativePtr);
	}
	
	public void TextureImage()
	{
		CQt.QBrush_TextureImage(this.nativePtr);
	}
	
	public void SetTextureImage(IQImage image)
	{
		CQt.QBrush_SetTextureImage(this.nativePtr, (image == default) ? default : (void*)image.NativePtr);
	}
	
	public void* Color()
	{
		return CQt.QBrush_Color(this.nativePtr);
	}
	
	public void SetColor(IQColor color)
	{
		CQt.QBrush_SetColor(this.nativePtr, (color == default) ? default : (void*)color.NativePtr);
	}
	
	public void SetColorWithColor(int64 color)
	{
		CQt.QBrush_SetColorWithColor(this.nativePtr, color);
	}
	
	public void* Gradient()
	{
		return CQt.QBrush_Gradient(this.nativePtr);
	}
	
	public bool IsOpaque()
	{
		return CQt.QBrush_IsOpaque(this.nativePtr);
	}
	
	public bool OperatorEqual(IQBrush b)
	{
		return CQt.QBrush_OperatorEqual(this.nativePtr, (b == default) ? default : (void*)b.NativePtr);
	}
	
	public bool OperatorNotEqual(IQBrush b)
	{
		return CQt.QBrush_OperatorNotEqual(this.nativePtr, (b == default) ? default : (void*)b.NativePtr);
	}
	
	public bool IsDetached()
	{
		return CQt.QBrush_IsDetached(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QBrush_new")]
	public static extern void* QBrush_new();
	[LinkName("QBrush_new2")]
	public static extern void* QBrush_new2(int64 bs);
	[LinkName("QBrush_new3")]
	public static extern void* QBrush_new3(void* color);
	[LinkName("QBrush_new4")]
	public static extern void* QBrush_new4(int64 color);
	[LinkName("QBrush_new5")]
	public static extern void* QBrush_new5(void* color, void* pixmap);
	[LinkName("QBrush_new6")]
	public static extern void* QBrush_new6(int64 color, void* pixmap);
	[LinkName("QBrush_new7")]
	public static extern void* QBrush_new7(void* pixmap);
	[LinkName("QBrush_new8")]
	public static extern void* QBrush_new8(void* image);
	[LinkName("QBrush_new9")]
	public static extern void* QBrush_new9(void* brush);
	[LinkName("QBrush_new10")]
	public static extern void* QBrush_new10(void* gradient);
	[LinkName("QBrush_new11")]
	public static extern void* QBrush_new11(void* color, int64 bs);
	[LinkName("QBrush_new12")]
	public static extern void* QBrush_new12(int64 color, int64 bs);
	[LinkName("QBrush_OperatorAssign")]
	public static extern void QBrush_OperatorAssign(void* c_this, void* brush);
	[LinkName("QBrush_Swap")]
	public static extern void QBrush_Swap(void* c_this, void* other);
	[LinkName("QBrush_ToQVariant")]
	public static extern void QBrush_ToQVariant(void* c_this);
	[LinkName("QBrush_Style")]
	public static extern int64 QBrush_Style(void* c_this);
	[LinkName("QBrush_SetStyle")]
	public static extern void QBrush_SetStyle(void* c_this, int64 style);
	[LinkName("QBrush_Transform")]
	public static extern void QBrush_Transform(void* c_this);
	[LinkName("QBrush_SetTransform")]
	public static extern void QBrush_SetTransform(void* c_this, void* transform);
	[LinkName("QBrush_Texture")]
	public static extern void QBrush_Texture(void* c_this);
	[LinkName("QBrush_SetTexture")]
	public static extern void QBrush_SetTexture(void* c_this, void* pixmap);
	[LinkName("QBrush_TextureImage")]
	public static extern void QBrush_TextureImage(void* c_this);
	[LinkName("QBrush_SetTextureImage")]
	public static extern void QBrush_SetTextureImage(void* c_this, void* image);
	[LinkName("QBrush_Color")]
	public static extern void* QBrush_Color(void* c_this);
	[LinkName("QBrush_SetColor")]
	public static extern void QBrush_SetColor(void* c_this, void* color);
	[LinkName("QBrush_SetColorWithColor")]
	public static extern void QBrush_SetColorWithColor(void* c_this, int64 color);
	[LinkName("QBrush_Gradient")]
	public static extern void* QBrush_Gradient(void* c_this);
	[LinkName("QBrush_IsOpaque")]
	public static extern bool QBrush_IsOpaque(void* c_this);
	[LinkName("QBrush_OperatorEqual")]
	public static extern bool QBrush_OperatorEqual(void* c_this, void* b);
	[LinkName("QBrush_OperatorNotEqual")]
	public static extern bool QBrush_OperatorNotEqual(void* c_this, void* b);
	[LinkName("QBrush_IsDetached")]
	public static extern bool QBrush_IsDetached(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QBrush_Delete")]
	public static extern void QBrush_Delete(void* self);
}
public interface IQBrushData
{
	void* NativePtr { get; }
}
public class QBrushData : IQBrushData
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQBrushData param1)
	{
		this.nativePtr = CQt.QBrushData_new((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public ~this()
	{
		CQt.QBrushData_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQBrushData param1)
	{
		CQt.QBrushData_OperatorAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QBrushData_new")]
	public static extern void* QBrushData_new(void* param1);
	[LinkName("QBrushData_OperatorAssign")]
	public static extern void QBrushData_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QBrushData_Delete")]
	public static extern void QBrushData_Delete(void* self);
}
public interface IQGradient
{
	void* NativePtr { get; }
}
public class QGradient : IQGradient
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGradient_new();
	}
	
	public ~this()
	{
		CQt.QGradient_Delete(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QGradient_Type(this.nativePtr);
	}
	
	public void SetSpread(int64 spread)
	{
		CQt.QGradient_SetSpread(this.nativePtr, spread);
	}
	
	public int64 Spread()
	{
		return CQt.QGradient_Spread(this.nativePtr);
	}
	
	public void SetColorAt(double pos, IQColor color)
	{
		CQt.QGradient_SetColorAt(this.nativePtr, pos, (color == default) ? default : (void*)color.NativePtr);
	}
	
	public void*[] Stops()
	{
		return CQt.QGradient_Stops(this.nativePtr);
	}
	
	public int64 CoordinateMode()
	{
		return CQt.QGradient_CoordinateMode(this.nativePtr);
	}
	
	public void SetCoordinateMode(int64 mode)
	{
		CQt.QGradient_SetCoordinateMode(this.nativePtr, mode);
	}
	
	public int64 InterpolationMode()
	{
		return CQt.QGradient_InterpolationMode(this.nativePtr);
	}
	
	public void SetInterpolationMode(int64 mode)
	{
		CQt.QGradient_SetInterpolationMode(this.nativePtr, mode);
	}
	
	public bool OperatorEqual(IQGradient gradient)
	{
		return CQt.QGradient_OperatorEqual(this.nativePtr, (gradient == default) ? default : (void*)gradient.NativePtr);
	}
	
	public bool OperatorNotEqual(IQGradient other)
	{
		return CQt.QGradient_OperatorNotEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QGradient_new")]
	public static extern void* QGradient_new();
	[LinkName("QGradient_new2")]
	public static extern void* QGradient_new2(int64 param1);
	[LinkName("QGradient_new3")]
	public static extern void* QGradient_new3(void* param1);
	[LinkName("QGradient_Type")]
	public static extern int64 QGradient_Type(void* c_this);
	[LinkName("QGradient_SetSpread")]
	public static extern void QGradient_SetSpread(void* c_this, int64 spread);
	[LinkName("QGradient_Spread")]
	public static extern int64 QGradient_Spread(void* c_this);
	[LinkName("QGradient_SetColorAt")]
	public static extern void QGradient_SetColorAt(void* c_this, double pos, void* color);
	[LinkName("QGradient_Stops")]
	public static extern void*[] QGradient_Stops(void* c_this);
	[LinkName("QGradient_CoordinateMode")]
	public static extern int64 QGradient_CoordinateMode(void* c_this);
	[LinkName("QGradient_SetCoordinateMode")]
	public static extern void QGradient_SetCoordinateMode(void* c_this, int64 mode);
	[LinkName("QGradient_InterpolationMode")]
	public static extern int64 QGradient_InterpolationMode(void* c_this);
	[LinkName("QGradient_SetInterpolationMode")]
	public static extern void QGradient_SetInterpolationMode(void* c_this, int64 mode);
	[LinkName("QGradient_OperatorEqual")]
	public static extern bool QGradient_OperatorEqual(void* c_this, void* gradient);
	[LinkName("QGradient_OperatorNotEqual")]
	public static extern bool QGradient_OperatorNotEqual(void* c_this, void* other);
	/// Delete this object from C++ memory
	[LinkName("QGradient_Delete")]
	public static extern void QGradient_Delete(void* self);
}
public interface IQLinearGradient
{
	void* NativePtr { get; }
}
public class QLinearGradient : IQLinearGradient, IQGradient
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QLinearGradient_new();
	}
	
	public ~this()
	{
		CQt.QLinearGradient_Delete(this.nativePtr);
	}
	
	public void Start()
	{
		CQt.QLinearGradient_Start(this.nativePtr);
	}
	
	public void SetStart(IQPointF start)
	{
		CQt.QLinearGradient_SetStart(this.nativePtr, (start == default) ? default : (void*)start.NativePtr);
	}
	
	public void SetStart2(double x, double y)
	{
		CQt.QLinearGradient_SetStart2(this.nativePtr, x, y);
	}
	
	public void FinalStop()
	{
		CQt.QLinearGradient_FinalStop(this.nativePtr);
	}
	
	public void SetFinalStop(IQPointF stop)
	{
		CQt.QLinearGradient_SetFinalStop(this.nativePtr, (stop == default) ? default : (void*)stop.NativePtr);
	}
	
	public void SetFinalStop2(double x, double y)
	{
		CQt.QLinearGradient_SetFinalStop2(this.nativePtr, x, y);
	}
	
	public int64 Type()
	{
		return CQt.QGradient_Type(this.nativePtr);
	}
	
	public void SetSpread(int64 spread)
	{
		CQt.QGradient_SetSpread(this.nativePtr, spread);
	}
	
	public int64 Spread()
	{
		return CQt.QGradient_Spread(this.nativePtr);
	}
	
	public void SetColorAt(double pos, IQColor color)
	{
		CQt.QGradient_SetColorAt(this.nativePtr, pos, (color == default) ? default : (void*)color.NativePtr);
	}
	
	public void*[] Stops()
	{
		return CQt.QGradient_Stops(this.nativePtr);
	}
	
	public int64 CoordinateMode()
	{
		return CQt.QGradient_CoordinateMode(this.nativePtr);
	}
	
	public void SetCoordinateMode(int64 mode)
	{
		CQt.QGradient_SetCoordinateMode(this.nativePtr, mode);
	}
	
	public int64 InterpolationMode()
	{
		return CQt.QGradient_InterpolationMode(this.nativePtr);
	}
	
	public void SetInterpolationMode(int64 mode)
	{
		CQt.QGradient_SetInterpolationMode(this.nativePtr, mode);
	}
	
	public bool OperatorEqual(IQGradient gradient)
	{
		return CQt.QGradient_OperatorEqual(this.nativePtr, (gradient == default) ? default : (void*)gradient.NativePtr);
	}
	
	public bool OperatorNotEqual(IQGradient other)
	{
		return CQt.QGradient_OperatorNotEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QLinearGradient_new")]
	public static extern void* QLinearGradient_new();
	[LinkName("QLinearGradient_new2")]
	public static extern void* QLinearGradient_new2(void* start, void* finalStop);
	[LinkName("QLinearGradient_new3")]
	public static extern void* QLinearGradient_new3(double xStart, double yStart, double xFinalStop, double yFinalStop);
	[LinkName("QLinearGradient_new4")]
	public static extern void* QLinearGradient_new4(void* param1);
	[LinkName("QLinearGradient_Start")]
	public static extern void QLinearGradient_Start(void* c_this);
	[LinkName("QLinearGradient_SetStart")]
	public static extern void QLinearGradient_SetStart(void* c_this, void* start);
	[LinkName("QLinearGradient_SetStart2")]
	public static extern void QLinearGradient_SetStart2(void* c_this, double x, double y);
	[LinkName("QLinearGradient_FinalStop")]
	public static extern void QLinearGradient_FinalStop(void* c_this);
	[LinkName("QLinearGradient_SetFinalStop")]
	public static extern void QLinearGradient_SetFinalStop(void* c_this, void* stop);
	[LinkName("QLinearGradient_SetFinalStop2")]
	public static extern void QLinearGradient_SetFinalStop2(void* c_this, double x, double y);
	/// Delete this object from C++ memory
	[LinkName("QLinearGradient_Delete")]
	public static extern void QLinearGradient_Delete(void* self);
}
public interface IQRadialGradient
{
	void* NativePtr { get; }
}
public class QRadialGradient : IQRadialGradient, IQGradient
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QRadialGradient_new();
	}
	
	public ~this()
	{
		CQt.QRadialGradient_Delete(this.nativePtr);
	}
	
	public void Center()
	{
		CQt.QRadialGradient_Center(this.nativePtr);
	}
	
	public void SetCenter(IQPointF center)
	{
		CQt.QRadialGradient_SetCenter(this.nativePtr, (center == default) ? default : (void*)center.NativePtr);
	}
	
	public void SetCenter2(double x, double y)
	{
		CQt.QRadialGradient_SetCenter2(this.nativePtr, x, y);
	}
	
	public void FocalPoint()
	{
		CQt.QRadialGradient_FocalPoint(this.nativePtr);
	}
	
	public void SetFocalPoint(IQPointF focalPoint)
	{
		CQt.QRadialGradient_SetFocalPoint(this.nativePtr, (focalPoint == default) ? default : (void*)focalPoint.NativePtr);
	}
	
	public void SetFocalPoint2(double x, double y)
	{
		CQt.QRadialGradient_SetFocalPoint2(this.nativePtr, x, y);
	}
	
	public double Radius()
	{
		return CQt.QRadialGradient_Radius(this.nativePtr);
	}
	
	public void SetRadius(double radius)
	{
		CQt.QRadialGradient_SetRadius(this.nativePtr, radius);
	}
	
	public double CenterRadius()
	{
		return CQt.QRadialGradient_CenterRadius(this.nativePtr);
	}
	
	public void SetCenterRadius(double radius)
	{
		CQt.QRadialGradient_SetCenterRadius(this.nativePtr, radius);
	}
	
	public double FocalRadius()
	{
		return CQt.QRadialGradient_FocalRadius(this.nativePtr);
	}
	
	public void SetFocalRadius(double radius)
	{
		CQt.QRadialGradient_SetFocalRadius(this.nativePtr, radius);
	}
	
	public int64 Type()
	{
		return CQt.QGradient_Type(this.nativePtr);
	}
	
	public void SetSpread(int64 spread)
	{
		CQt.QGradient_SetSpread(this.nativePtr, spread);
	}
	
	public int64 Spread()
	{
		return CQt.QGradient_Spread(this.nativePtr);
	}
	
	public void SetColorAt(double pos, IQColor color)
	{
		CQt.QGradient_SetColorAt(this.nativePtr, pos, (color == default) ? default : (void*)color.NativePtr);
	}
	
	public void*[] Stops()
	{
		return CQt.QGradient_Stops(this.nativePtr);
	}
	
	public int64 CoordinateMode()
	{
		return CQt.QGradient_CoordinateMode(this.nativePtr);
	}
	
	public void SetCoordinateMode(int64 mode)
	{
		CQt.QGradient_SetCoordinateMode(this.nativePtr, mode);
	}
	
	public int64 InterpolationMode()
	{
		return CQt.QGradient_InterpolationMode(this.nativePtr);
	}
	
	public void SetInterpolationMode(int64 mode)
	{
		CQt.QGradient_SetInterpolationMode(this.nativePtr, mode);
	}
	
	public bool OperatorEqual(IQGradient gradient)
	{
		return CQt.QGradient_OperatorEqual(this.nativePtr, (gradient == default) ? default : (void*)gradient.NativePtr);
	}
	
	public bool OperatorNotEqual(IQGradient other)
	{
		return CQt.QGradient_OperatorNotEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QRadialGradient_new")]
	public static extern void* QRadialGradient_new();
	[LinkName("QRadialGradient_new2")]
	public static extern void* QRadialGradient_new2(void* center, double radius, void* focalPoint);
	[LinkName("QRadialGradient_new3")]
	public static extern void* QRadialGradient_new3(double cx, double cy, double radius, double fx, double fy);
	[LinkName("QRadialGradient_new4")]
	public static extern void* QRadialGradient_new4(void* center, double radius);
	[LinkName("QRadialGradient_new5")]
	public static extern void* QRadialGradient_new5(double cx, double cy, double radius);
	[LinkName("QRadialGradient_new6")]
	public static extern void* QRadialGradient_new6(void* center, double centerRadius, void* focalPoint, double focalRadius);
	[LinkName("QRadialGradient_new7")]
	public static extern void* QRadialGradient_new7(double cx, double cy, double centerRadius, double fx, double fy, double focalRadius);
	[LinkName("QRadialGradient_new8")]
	public static extern void* QRadialGradient_new8(void* param1);
	[LinkName("QRadialGradient_Center")]
	public static extern void QRadialGradient_Center(void* c_this);
	[LinkName("QRadialGradient_SetCenter")]
	public static extern void QRadialGradient_SetCenter(void* c_this, void* center);
	[LinkName("QRadialGradient_SetCenter2")]
	public static extern void QRadialGradient_SetCenter2(void* c_this, double x, double y);
	[LinkName("QRadialGradient_FocalPoint")]
	public static extern void QRadialGradient_FocalPoint(void* c_this);
	[LinkName("QRadialGradient_SetFocalPoint")]
	public static extern void QRadialGradient_SetFocalPoint(void* c_this, void* focalPoint);
	[LinkName("QRadialGradient_SetFocalPoint2")]
	public static extern void QRadialGradient_SetFocalPoint2(void* c_this, double x, double y);
	[LinkName("QRadialGradient_Radius")]
	public static extern double QRadialGradient_Radius(void* c_this);
	[LinkName("QRadialGradient_SetRadius")]
	public static extern void QRadialGradient_SetRadius(void* c_this, double radius);
	[LinkName("QRadialGradient_CenterRadius")]
	public static extern double QRadialGradient_CenterRadius(void* c_this);
	[LinkName("QRadialGradient_SetCenterRadius")]
	public static extern void QRadialGradient_SetCenterRadius(void* c_this, double radius);
	[LinkName("QRadialGradient_FocalRadius")]
	public static extern double QRadialGradient_FocalRadius(void* c_this);
	[LinkName("QRadialGradient_SetFocalRadius")]
	public static extern void QRadialGradient_SetFocalRadius(void* c_this, double radius);
	/// Delete this object from C++ memory
	[LinkName("QRadialGradient_Delete")]
	public static extern void QRadialGradient_Delete(void* self);
}
public interface IQConicalGradient
{
	void* NativePtr { get; }
}
public class QConicalGradient : IQConicalGradient, IQGradient
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QConicalGradient_new();
	}
	
	public ~this()
	{
		CQt.QConicalGradient_Delete(this.nativePtr);
	}
	
	public void Center()
	{
		CQt.QConicalGradient_Center(this.nativePtr);
	}
	
	public void SetCenter(IQPointF center)
	{
		CQt.QConicalGradient_SetCenter(this.nativePtr, (center == default) ? default : (void*)center.NativePtr);
	}
	
	public void SetCenter2(double x, double y)
	{
		CQt.QConicalGradient_SetCenter2(this.nativePtr, x, y);
	}
	
	public double Angle()
	{
		return CQt.QConicalGradient_Angle(this.nativePtr);
	}
	
	public void SetAngle(double angle)
	{
		CQt.QConicalGradient_SetAngle(this.nativePtr, angle);
	}
	
	public int64 Type()
	{
		return CQt.QGradient_Type(this.nativePtr);
	}
	
	public void SetSpread(int64 spread)
	{
		CQt.QGradient_SetSpread(this.nativePtr, spread);
	}
	
	public int64 Spread()
	{
		return CQt.QGradient_Spread(this.nativePtr);
	}
	
	public void SetColorAt(double pos, IQColor color)
	{
		CQt.QGradient_SetColorAt(this.nativePtr, pos, (color == default) ? default : (void*)color.NativePtr);
	}
	
	public void*[] Stops()
	{
		return CQt.QGradient_Stops(this.nativePtr);
	}
	
	public int64 CoordinateMode()
	{
		return CQt.QGradient_CoordinateMode(this.nativePtr);
	}
	
	public void SetCoordinateMode(int64 mode)
	{
		CQt.QGradient_SetCoordinateMode(this.nativePtr, mode);
	}
	
	public int64 InterpolationMode()
	{
		return CQt.QGradient_InterpolationMode(this.nativePtr);
	}
	
	public void SetInterpolationMode(int64 mode)
	{
		CQt.QGradient_SetInterpolationMode(this.nativePtr, mode);
	}
	
	public bool OperatorEqual(IQGradient gradient)
	{
		return CQt.QGradient_OperatorEqual(this.nativePtr, (gradient == default) ? default : (void*)gradient.NativePtr);
	}
	
	public bool OperatorNotEqual(IQGradient other)
	{
		return CQt.QGradient_OperatorNotEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QConicalGradient_new")]
	public static extern void* QConicalGradient_new();
	[LinkName("QConicalGradient_new2")]
	public static extern void* QConicalGradient_new2(void* center, double startAngle);
	[LinkName("QConicalGradient_new3")]
	public static extern void* QConicalGradient_new3(double cx, double cy, double startAngle);
	[LinkName("QConicalGradient_new4")]
	public static extern void* QConicalGradient_new4(void* param1);
	[LinkName("QConicalGradient_Center")]
	public static extern void QConicalGradient_Center(void* c_this);
	[LinkName("QConicalGradient_SetCenter")]
	public static extern void QConicalGradient_SetCenter(void* c_this, void* center);
	[LinkName("QConicalGradient_SetCenter2")]
	public static extern void QConicalGradient_SetCenter2(void* c_this, double x, double y);
	[LinkName("QConicalGradient_Angle")]
	public static extern double QConicalGradient_Angle(void* c_this);
	[LinkName("QConicalGradient_SetAngle")]
	public static extern void QConicalGradient_SetAngle(void* c_this, double angle);
	/// Delete this object from C++ memory
	[LinkName("QConicalGradient_Delete")]
	public static extern void QConicalGradient_Delete(void* self);
}
public interface IQGradient__QGradientData
{
	void* NativePtr { get; }
}
public class QGradient__QGradientData : IQGradient__QGradientData
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(QGradient__QGradientData param1)
	{
		this.nativePtr = CQt.QGradient__QGradientData_new((param1 == default) ? default : (void*)param1.NativePtr);
	}
	public ~this()
	{
		CQt.QGradient__QGradientData_Delete(this.nativePtr);
	}
}
extension CQt
{
	[LinkName("QGradient__QGradientData_new")]
	public static extern void* QGradient__QGradientData_new(void* param1);
	/// Delete this object from C++ memory
	[LinkName("QGradient__QGradientData_Delete")]
	public static extern void QGradient__QGradientData_Delete(void* self);
}