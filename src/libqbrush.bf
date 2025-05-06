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
public struct QBrush
{
	[LinkName("QBrush_new")]
	public static extern void* QBrush_new();
	[LinkName("QBrush_new2")]
	public static extern void* QBrush_new2(int64 bs);
	[LinkName("QBrush_new3")]
	public static extern void* QBrush_new3(QColor color);
	[LinkName("QBrush_new4")]
	public static extern void* QBrush_new4(int64 color);
	[LinkName("QBrush_new5")]
	public static extern void* QBrush_new5(QColor color, QPixmap pixmap);
	[LinkName("QBrush_new6")]
	public static extern void* QBrush_new6(int64 color, QPixmap pixmap);
	[LinkName("QBrush_new7")]
	public static extern void* QBrush_new7(QPixmap pixmap);
	[LinkName("QBrush_new8")]
	public static extern void* QBrush_new8(QImage image);
	[LinkName("QBrush_new9")]
	public static extern void* QBrush_new9(QBrush brush);
	[LinkName("QBrush_new10")]
	public static extern void* QBrush_new10(QGradient gradient);
	[LinkName("QBrush_new11")]
	public static extern void* QBrush_new11(QColor color, int64 bs);
	[LinkName("QBrush_new12")]
	public static extern void* QBrush_new12(int64 color, int64 bs);
	[LinkName("QBrush_OperatorAssign")]
	public static extern void QBrush_OperatorAssign(void* c_this, QBrush brush);
	[LinkName("QBrush_Swap")]
	public static extern void QBrush_Swap(void* c_this, QBrush other);
	[LinkName("QBrush_ToQVariant")]
	public static extern QVariant QBrush_ToQVariant(void* c_this);
	[LinkName("QBrush_Style")]
	public static extern int64 QBrush_Style(void* c_this);
	[LinkName("QBrush_SetStyle")]
	public static extern void QBrush_SetStyle(void* c_this, int64 style);
	[LinkName("QBrush_Transform")]
	public static extern QTransform QBrush_Transform(void* c_this);
	[LinkName("QBrush_SetTransform")]
	public static extern void QBrush_SetTransform(void* c_this, QTransform transform);
	[LinkName("QBrush_Texture")]
	public static extern QPixmap QBrush_Texture(void* c_this);
	[LinkName("QBrush_SetTexture")]
	public static extern void QBrush_SetTexture(void* c_this, QPixmap pixmap);
	[LinkName("QBrush_TextureImage")]
	public static extern QImage QBrush_TextureImage(void* c_this);
	[LinkName("QBrush_SetTextureImage")]
	public static extern void QBrush_SetTextureImage(void* c_this, QImage image);
	[LinkName("QBrush_Color")]
	public static extern QColor QBrush_Color(void* c_this);
	[LinkName("QBrush_SetColor")]
	public static extern void QBrush_SetColor(void* c_this, QColor color);
	[LinkName("QBrush_SetColorWithColor")]
	public static extern void QBrush_SetColorWithColor(void* c_this, int64 color);
	[LinkName("QBrush_Gradient")]
	public static extern QGradient QBrush_Gradient(void* c_this);
	[LinkName("QBrush_IsOpaque")]
	public static extern bool QBrush_IsOpaque(void* c_this);
	[LinkName("QBrush_OperatorEqual")]
	public static extern bool QBrush_OperatorEqual(void* c_this, QBrush b);
	[LinkName("QBrush_OperatorNotEqual")]
	public static extern bool QBrush_OperatorNotEqual(void* c_this, QBrush b);
	[LinkName("QBrush_IsDetached")]
	public static extern bool QBrush_IsDetached(void* c_this);
}
public struct QBrushData
{
	[LinkName("QBrushData_new")]
	public static extern void* QBrushData_new(QBrushData param1);
	[LinkName("QBrushData_OperatorAssign")]
	public static extern void QBrushData_OperatorAssign(void* c_this, QBrushData param1);
}
public struct QGradient
{
	[LinkName("QGradient_new")]
	public static extern void* QGradient_new();
	[LinkName("QGradient_new2")]
	public static extern void* QGradient_new2(int64 param1);
	[LinkName("QGradient_new3")]
	public static extern void* QGradient_new3(QGradient param1);
	[LinkName("QGradient_Type")]
	public static extern int64 QGradient_Type(void* c_this);
	[LinkName("QGradient_SetSpread")]
	public static extern void QGradient_SetSpread(void* c_this, int64 spread);
	[LinkName("QGradient_Spread")]
	public static extern int64 QGradient_Spread(void* c_this);
	[LinkName("QGradient_SetColorAt")]
	public static extern void QGradient_SetColorAt(void* c_this, double pos, QColor color);
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
	public static extern bool QGradient_OperatorEqual(void* c_this, QGradient gradient);
	[LinkName("QGradient_OperatorNotEqual")]
	public static extern bool QGradient_OperatorNotEqual(void* c_this, QGradient other);
}
public struct QLinearGradient
{
	[LinkName("QLinearGradient_new")]
	public static extern void* QLinearGradient_new();
	[LinkName("QLinearGradient_new2")]
	public static extern void* QLinearGradient_new2(QPointF start, QPointF finalStop);
	[LinkName("QLinearGradient_new3")]
	public static extern void* QLinearGradient_new3(double xStart, double yStart, double xFinalStop, double yFinalStop);
	[LinkName("QLinearGradient_new4")]
	public static extern void* QLinearGradient_new4(QLinearGradient param1);
	[LinkName("QLinearGradient_Start")]
	public static extern QPointF QLinearGradient_Start(void* c_this);
	[LinkName("QLinearGradient_SetStart")]
	public static extern void QLinearGradient_SetStart(void* c_this, QPointF start);
	[LinkName("QLinearGradient_SetStart2")]
	public static extern void QLinearGradient_SetStart2(void* c_this, double x, double y);
	[LinkName("QLinearGradient_FinalStop")]
	public static extern QPointF QLinearGradient_FinalStop(void* c_this);
	[LinkName("QLinearGradient_SetFinalStop")]
	public static extern void QLinearGradient_SetFinalStop(void* c_this, QPointF stop);
	[LinkName("QLinearGradient_SetFinalStop2")]
	public static extern void QLinearGradient_SetFinalStop2(void* c_this, double x, double y);
}
public struct QRadialGradient
{
	[LinkName("QRadialGradient_new")]
	public static extern void* QRadialGradient_new();
	[LinkName("QRadialGradient_new2")]
	public static extern void* QRadialGradient_new2(QPointF center, double radius, QPointF focalPoint);
	[LinkName("QRadialGradient_new3")]
	public static extern void* QRadialGradient_new3(double cx, double cy, double radius, double fx, double fy);
	[LinkName("QRadialGradient_new4")]
	public static extern void* QRadialGradient_new4(QPointF center, double radius);
	[LinkName("QRadialGradient_new5")]
	public static extern void* QRadialGradient_new5(double cx, double cy, double radius);
	[LinkName("QRadialGradient_new6")]
	public static extern void* QRadialGradient_new6(QPointF center, double centerRadius, QPointF focalPoint, double focalRadius);
	[LinkName("QRadialGradient_new7")]
	public static extern void* QRadialGradient_new7(double cx, double cy, double centerRadius, double fx, double fy, double focalRadius);
	[LinkName("QRadialGradient_new8")]
	public static extern void* QRadialGradient_new8(QRadialGradient param1);
	[LinkName("QRadialGradient_Center")]
	public static extern QPointF QRadialGradient_Center(void* c_this);
	[LinkName("QRadialGradient_SetCenter")]
	public static extern void QRadialGradient_SetCenter(void* c_this, QPointF center);
	[LinkName("QRadialGradient_SetCenter2")]
	public static extern void QRadialGradient_SetCenter2(void* c_this, double x, double y);
	[LinkName("QRadialGradient_FocalPoint")]
	public static extern QPointF QRadialGradient_FocalPoint(void* c_this);
	[LinkName("QRadialGradient_SetFocalPoint")]
	public static extern void QRadialGradient_SetFocalPoint(void* c_this, QPointF focalPoint);
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
}
public struct QConicalGradient
{
	[LinkName("QConicalGradient_new")]
	public static extern void* QConicalGradient_new();
	[LinkName("QConicalGradient_new2")]
	public static extern void* QConicalGradient_new2(QPointF center, double startAngle);
	[LinkName("QConicalGradient_new3")]
	public static extern void* QConicalGradient_new3(double cx, double cy, double startAngle);
	[LinkName("QConicalGradient_new4")]
	public static extern void* QConicalGradient_new4(QConicalGradient param1);
	[LinkName("QConicalGradient_Center")]
	public static extern QPointF QConicalGradient_Center(void* c_this);
	[LinkName("QConicalGradient_SetCenter")]
	public static extern void QConicalGradient_SetCenter(void* c_this, QPointF center);
	[LinkName("QConicalGradient_SetCenter2")]
	public static extern void QConicalGradient_SetCenter2(void* c_this, double x, double y);
	[LinkName("QConicalGradient_Angle")]
	public static extern double QConicalGradient_Angle(void* c_this);
	[LinkName("QConicalGradient_SetAngle")]
	public static extern void QConicalGradient_SetAngle(void* c_this, double angle);
}
public struct QGradient__QGradientData
{
	[LinkName("QGradient__QGradientData_new")]
	public static extern void* QGradient__QGradientData_new(QGradient__QGradientData param1);
}