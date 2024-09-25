; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [139 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [278 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 42
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 138
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 46
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 102
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 57
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 74
	i64 545109961164950392, ; 6: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 7
	i64 560278790331054453, ; 7: System.Reflection.Primitives => 0x7c6829760de3975 => 116
	i64 750875890346172408, ; 8: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 128
	i64 799765834175365804, ; 9: System.ComponentModel.dll => 0xb1956c9f18442ac => 93
	i64 849051935479314978, ; 10: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 10
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 62
	i64 1010599046655515943, ; 12: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 116
	i64 1055774368762298424, ; 13: ar/Microsoft.Maui.Controls.resources => 0xea6dd31d50a0038 => 0
	i64 1120440138749646132, ; 14: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 78
	i64 1121665720830085036, ; 15: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 18
	i64 1268860745194512059, ; 16: System.Drawing.dll => 0x119be62002c19ebb => 99
	i64 1369545283391376210, ; 17: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 70
	i64 1476839205573959279, ; 18: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 107
	i64 1486715745332614827, ; 19: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 43
	i64 1513467482682125403, ; 20: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 137
	i64 1537168428375924959, ; 21: System.Threading.Thread.dll => 0x15551e8a954ae0df => 128
	i64 1556147632182429976, ; 22: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 16
	i64 1624659445732251991, ; 23: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 52
	i64 1628611045998245443, ; 24: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 67
	i64 1643226597988041431, ; 25: pl/Microsoft.Maui.Controls.resources => 0x16cde9e27a8d02d7 => 20
	i64 1731380447121279447, ; 26: Newtonsoft.Json => 0x18071957e9b889d7 => 48
	i64 1743969030606105336, ; 27: System.Memory.dll => 0x1833d297e88f2af8 => 104
	i64 1767386781656293639, ; 28: System.Private.Uri.dll => 0x188704e9f5582107 => 111
	i64 1795316252682057001, ; 29: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 51
	i64 1836611346387731153, ; 30: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 74
	i64 1875417405349196092, ; 31: System.Drawing.Primitives => 0x1a06d2319b6c713c => 98
	i64 1920760634179481754, ; 32: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 44
	i64 1959996714666907089, ; 33: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 28
	i64 1981742497975770890, ; 34: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 66
	i64 1983698669889758782, ; 35: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 2
	i64 2019660174692588140, ; 36: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 20
	i64 2102659300918482391, ; 37: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 98
	i64 2133195048986300728, ; 38: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 48
	i64 2145898162032646099, ; 39: ko/Microsoft.Maui.Controls.resources => 0x1dc7c302481e97d3 => 16
	i64 2262844636196693701, ; 40: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 62
	i64 2287834202362508563, ; 41: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 87
	i64 2302323944321350744, ; 42: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 24
	i64 2329709569556905518, ; 43: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 65
	i64 2335503487726329082, ; 44: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 125
	i64 2405413894731521496, ; 45: da/Microsoft.Maui.Controls.resources => 0x2161bf315d42ddd8 => 3
	i64 2470498323731680442, ; 46: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 58
	i64 2492380397191429704, ; 47: cs/Microsoft.Maui.Controls.resources => 0x2296b6c41bbdfe48 => 2
	i64 2497223385847772520, ; 48: System.Runtime => 0x22a7eb7046413568 => 122
	i64 2547086958574651984, ; 49: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 50
	i64 2566579877633172060, ; 50: Refit => 0x239e52cce5fda25c => 49
	i64 2656907746661064104, ; 51: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 37
	i64 3017704767998173186, ; 52: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 78
	i64 3107556380337382748, ; 53: pt/Microsoft.Maui.Controls.resources => 0x2b2042103982255c => 22
	i64 3202009568827554833, ; 54: th/Microsoft.Maui.Controls.resources => 0x2c6fd2bce55e3c11 => 27
	i64 3289520064315143713, ; 55: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 64
	i64 3311221304742556517, ; 56: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 109
	i64 3325875462027654285, ; 57: System.Runtime.Numerics => 0x2e27e21c8958b48d => 119
	i64 3344514922410554693, ; 58: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 81
	i64 3429672777697402584, ; 59: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 46
	i64 3494946837667399002, ; 60: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 35
	i64 3522470458906976663, ; 61: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 75
	i64 3551103847008531295, ; 62: System.Private.CoreLib.dll => 0x31480e226177735f => 135
	i64 3571415421602489686, ; 63: System.Runtime.dll => 0x319037675df7e556 => 122
	i64 3638003163729360188, ; 64: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 36
	i64 3647754201059316852, ; 65: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 132
	i64 3655542548057982301, ; 66: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 35
	i64 3727469159507183293, ; 67: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 73
	i64 3869221888984012293, ; 68: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 39
	i64 3890352374528606784, ; 69: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 44
	i64 3933965368022646939, ; 70: System.Net.Requests => 0x369840a8bfadc09b => 108
	i64 3966267475168208030, ; 71: System.Memory => 0x370b03412596249e => 104
	i64 4009997192427317104, ; 72: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 121
	i64 4073500526318903918, ; 73: System.Private.Xml.dll => 0x3887fb25779ae26e => 113
	i64 4154383907710350974, ; 74: System.ComponentModel => 0x39a7562737acb67e => 93
	i64 4187479170553454871, ; 75: System.Linq.Expressions => 0x3a1cea1e912fa117 => 102
	i64 4205801962323029395, ; 76: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 92
	i64 4356591372459378815, ; 77: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 30
	i64 4477672992252076438, ; 78: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 130
	i64 4679594760078841447, ; 79: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 0
	i64 4719980059904442254, ; 80: speed => 0x4180bcdb6187ff8e => 85
	i64 4725285941539738176, ; 81: Xamarin.AndroidX.Camera.Lifecycle => 0x41939687379f9240 => 54
	i64 4794310189461587505, ; 82: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 50
	i64 4795410492532947900, ; 83: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 75
	i64 4809057822547766521, ; 84: System.Drawing => 0x42bd349c3145ecf9 => 99
	i64 4835744211636393215, ; 85: fi/Microsoft.Maui.Controls.resources => 0x431c03bd573d14ff => 7
	i64 4853321196694829351, ; 86: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 118
	i64 5103417709280584325, ; 87: System.Collections.Specialized => 0x46d2fb5e161b6285 => 89
	i64 5182934613077526976, ; 88: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 89
	i64 5290786973231294105, ; 89: System.Runtime.Loader => 0x496ca6b869b72699 => 118
	i64 5570799893513421663, ; 90: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 100
	i64 5573260873512690141, ; 91: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 123
	i64 5692067934154308417, ; 92: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 77
	i64 5939174725034091446, ; 93: pt-BR/Microsoft.Maui.Controls.resources => 0x526c2ff200a2a3b6 => 21
	i64 6068057819846744445, ; 94: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 23
	i64 6222399776351216807, ; 95: System.Text.Json.dll => 0x565a67a0ffe264a7 => 126
	i64 6284145129771520194, ; 96: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 114
	i64 6357457916754632952, ; 97: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 98: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 65
	i64 6548213210057960872, ; 99: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 61
	i64 6560151584539558821, ; 100: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 41
	i64 6734140735192831707, ; 101: uk/Microsoft.Maui.Controls.resources => 0x5d747951d4a816db => 29
	i64 6777482997383978746, ; 102: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 22
	i64 6786606130239981554, ; 103: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 97
	i64 6814185388980153342, ; 104: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 133
	i64 6876862101832370452, ; 105: System.Xml.Linq => 0x5f6f85a57d108914 => 131
	i64 6894844156784520562, ; 106: System.Numerics.Vectors => 0x5faf683aead1ad72 => 109
	i64 6985504089449394141, ; 107: ZXing.Net.MAUI.Controls.dll => 0x60f17ef564ab6fdd => 84
	i64 7083547580668757502, ; 108: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 112
	i64 7220009545223068405, ; 109: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 26
	i64 7270811800166795866, ; 110: System.Linq => 0x64e71ccf51a90a5a => 103
	i64 7377312882064240630, ; 111: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 92
	i64 7439799228237803094, ; 112: it/Microsoft.Maui.Controls.resources => 0x673f79faf756ee56 => 14
	i64 7488575175965059935, ; 113: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 131
	i64 7489048572193775167, ; 114: System.ObjectModel => 0x67ee71ff6b419e3f => 110
	i64 7642002156153824904, ; 115: ro/Microsoft.Maui.Controls.resources => 0x6a0dd878d2516688 => 23
	i64 7654504624184590948, ; 116: System.Net.Http => 0x6a3a4366801b8264 => 106
	i64 7708790323521193081, ; 117: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 17
	i64 7714652370974252055, ; 118: System.Private.CoreLib => 0x6b0ff375198b9c17 => 135
	i64 7735176074855944702, ; 119: Microsoft.CSharp => 0x6b58dda848e391fe => 86
	i64 7735352534559001595, ; 120: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 80
	i64 7836164640616011524, ; 121: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 52
	i64 8064050204834738623, ; 122: System.Collections.dll => 0x6fe942efa61731bf => 90
	i64 8083354569033831015, ; 123: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 64
	i64 8085230611270010360, ; 124: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 105
	i64 8087206902342787202, ; 125: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 96
	i64 8167236081217502503, ; 126: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 136
	i64 8185542183669246576, ; 127: System.Collections => 0x7198e33f4794aa70 => 90
	i64 8246048515196606205, ; 128: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 47
	i64 8320777595162576093, ; 129: Xamarin.AndroidX.Camera.View => 0x737957232eb1c4dd => 55
	i64 8368701292315763008, ; 130: System.Security.Cryptography => 0x7423997c6fd56140 => 123
	i64 8400357532724379117, ; 131: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 72
	i64 8410671156615598628, ; 132: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 115
	i64 8515752553183989521, ; 133: el/Microsoft.Maui.Controls.resources => 0x762e07d427a84f11 => 5
	i64 8557640666902467377, ; 134: tr/Microsoft.Maui.Controls.resources => 0x76c2d8d8a2289331 => 28
	i64 8563666267364444763, ; 135: System.Private.Uri => 0x76d841191140ca5b => 111
	i64 8573305974629105867, ; 136: sk/Microsoft.Maui.Controls.resources => 0x76fa805c508080cb => 25
	i64 8614108721271900878, ; 137: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 21
	i64 8626175481042262068, ; 138: Java.Interop => 0x77b654e585b55834 => 136
	i64 8629545377263870989, ; 139: Xamarin.AndroidX.Camera.Core.dll => 0x77c24dcca0ed640d => 53
	i64 8638972117149407195, ; 140: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 86
	i64 8639588376636138208, ; 141: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 71
	i64 8725526185868997716, ; 142: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 96
	i64 8906941675023136603, ; 143: he/Microsoft.Maui.Controls.resources => 0x7b9bd0432ee0775b => 9
	i64 8941376889969657626, ; 144: System.Xml.XDocument => 0x7c1626e87187471a => 133
	i64 8946047214038161613, ; 145: speed.dll => 0x7c26be8b009e18cd => 85
	i64 9131857290992441898, ; 146: Xamarin.AndroidX.Camera.Core => 0x7ebadfd2d12a5a2a => 53
	i64 9312692141327339315, ; 147: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 77
	i64 9324707631942237306, ; 148: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 51
	i64 9659729154652888475, ; 149: System.Text.RegularExpressions => 0x860e407c9991dd9b => 127
	i64 9678050649315576968, ; 150: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 58
	i64 9702891218465930390, ; 151: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 88
	i64 9808709177481450983, ; 152: Mono.Android.dll => 0x881f890734e555e7 => 138
	i64 9884103019517044980, ; 153: hi/Microsoft.Maui.Controls.resources => 0x892b6353f9ade8f4 => 10
	i64 9956195530459977388, ; 154: Microsoft.Maui => 0x8a2b8315b36616ac => 45
	i64 9991543690424095600, ; 155: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 6
	i64 10038780035334861115, ; 156: System.Net.Http.dll => 0x8b50e941206af13b => 106
	i64 10051358222726253779, ; 157: System.Private.Xml => 0x8b7d990c97ccccd3 => 113
	i64 10092835686693276772, ; 158: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 43
	i64 10226489408795347955, ; 159: sv/Microsoft.Maui.Controls.resources => 0x8debc9ef5e8a8bf3 => 26
	i64 10229024438826829339, ; 160: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 61
	i64 10245369515835430794, ; 161: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 115
	i64 10364469296367737616, ; 162: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 114
	i64 10406448008575299332, ; 163: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 81
	i64 10430153318873392755, ; 164: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 59
	i64 10785150219063592792, ; 165: System.Net.Primitives => 0x95ac8cfb68830758 => 107
	i64 10984274332520666918, ; 166: zh-Hant/Microsoft.Maui.Controls.resources => 0x986ffb4ee955d726 => 33
	i64 11002576679268595294, ; 167: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 40
	i64 11009005086950030778, ; 168: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 45
	i64 11128133081269842136, ; 169: vi/Microsoft.Maui.Controls.resources => 0x9a6f1213fa5cb0d8 => 30
	i64 11150130305267896488, ; 170: zh-Hans/Microsoft.Maui.Controls.resources => 0x9abd386fcccf90a8 => 32
	i64 11162124722117608902, ; 171: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 76
	i64 11226290749488709958, ; 172: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 41
	i64 11340910727871153756, ; 173: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 60
	i64 11485890710487134646, ; 174: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 117
	i64 11529969570048099689, ; 175: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 76
	i64 11530571088791430846, ; 176: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 39
	i64 11705530742807338875, ; 177: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 9
	i64 11888774080858266727, ; 178: hu/Microsoft.Maui.Controls.resources => 0xa4fd6909806d9c67 => 12
	i64 12124060477258521817, ; 179: id/Microsoft.Maui.Controls.resources => 0xa84150c49e58dcd9 => 13
	i64 12145679461940342714, ; 180: System.Text.Json => 0xa88e1f1ebcb62fba => 126
	i64 12201331334810686224, ; 181: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 121
	i64 12451044538927396471, ; 182: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 63
	i64 12466513435562512481, ; 183: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 68
	i64 12475113361194491050, ; 184: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 185: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 97
	i64 12533156002265635263, ; 186: ru/Microsoft.Maui.Controls.resources => 0xadeeb6fb059919bf => 24
	i64 12538491095302438457, ; 187: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 56
	i64 12550732019250633519, ; 188: System.IO.Compression => 0xae2d28465e8e1b2f => 101
	i64 12681088699309157496, ; 189: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 14
	i64 12700543734426720211, ; 190: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 57
	i64 12708922737231849740, ; 191: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 124
	i64 12760970142902902754, ; 192: Xamarin.AndroidX.Camera.Lifecycle.dll => 0xb11812bc0517dfe2 => 54
	i64 12823819093633476069, ; 193: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 27
	i64 12843321153144804894, ; 194: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 42
	i64 13068258254871114833, ; 195: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 120
	i64 13221551921002590604, ; 196: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 1
	i64 13222659110913276082, ; 197: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 15
	i64 13239674268801700939, ; 198: ca/Microsoft.Maui.Controls.resources => 0xb7bcc599c5ce144b => 1
	i64 13343850469010654401, ; 199: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 137
	i64 13454009404024712428, ; 200: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 79
	i64 13465488254036897740, ; 201: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 80
	i64 13467053111158216594, ; 202: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 29
	i64 13545416393490209236, ; 203: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 13
	i64 13572454107664307259, ; 204: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 73
	i64 13717397318615465333, ; 205: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 91
	i64 13755568601956062840, ; 206: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 8
	i64 13814445057219246765, ; 207: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 11
	i64 13881769479078963060, ; 208: System.Console.dll => 0xc0a5f3cade5c6774 => 94
	i64 13959074834287824816, ; 209: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 63
	i64 14100563506285742564, ; 210: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 3
	i64 14124974489674258913, ; 211: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 56
	i64 14125464355221830302, ; 212: System.Threading.dll => 0xc407bafdbc707a9e => 129
	i64 14254574811015963973, ; 213: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 124
	i64 14461014870687870182, ; 214: System.Net.Requests.dll => 0xc8afd8683afdece6 => 108
	i64 14522721392235705434, ; 215: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 5
	i64 14551742072151931844, ; 216: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 125
	i64 14622043554576106986, ; 217: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 120
	i64 14669215534098758659, ; 218: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 37
	i64 14690985099581930927, ; 219: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 130
	i64 14792063746108907174, ; 220: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 79
	i64 14852515768018889994, ; 221: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 60
	i64 14892012299694389861, ; 222: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 33
	i64 14954917835170835695, ; 223: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 38
	i64 14987728460634540364, ; 224: System.IO.Compression.dll => 0xcfff1ba06622494c => 101
	i64 15024878362326791334, ; 225: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 105
	i64 15076659072870671916, ; 226: System.ObjectModel.dll => 0xd13b0d8c1620662c => 110
	i64 15115185479366240210, ; 227: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 100
	i64 15133485256822086103, ; 228: System.Linq.dll => 0xd204f0a9127dd9d7 => 103
	i64 15227001540531775957, ; 229: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 36
	i64 15273147323526128252, ; 230: de/Microsoft.Maui.Controls.resources => 0xd3f51e91f4fba27c => 4
	i64 15370334346939861994, ; 231: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 59
	i64 15391712275433856905, ; 232: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 38
	i64 15443314347085689186, ; 233: nl/Microsoft.Maui.Controls.resources => 0xd651ac9394bc7162 => 19
	i64 15474781042002767710, ; 234: hr/Microsoft.Maui.Controls.resources => 0xd6c1775e69862f5e => 11
	i64 15478373401424648762, ; 235: es/Microsoft.Maui.Controls.resources => 0xd6ce3a99c4c55a3a => 6
	i64 15527772828719725935, ; 236: System.Console => 0xd77dbb1e38cd3d6f => 94
	i64 15582737692548360875, ; 237: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 67
	i64 15609085926864131306, ; 238: System.dll => 0xd89e9cf3334914ea => 134
	i64 15661133872274321916, ; 239: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 132
	i64 15664356999916475676, ; 240: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 4
	i64 15743187114543869802, ; 241: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 12
	i64 15750144475371186037, ; 242: Xamarin.AndroidX.Camera.View.dll => 0xda93c0f3d794a775 => 55
	i64 15995174293784908801, ; 243: nb/Microsoft.Maui.Controls.resources => 0xddfa46462d825401 => 18
	i64 16154507427712707110, ; 244: System => 0xe03056ea4e39aa26 => 134
	i64 16198848395322856833, ; 245: ms/Microsoft.Maui.Controls.resources => 0xe0cddeca55a01581 => 17
	i64 16252599826146587709, ; 246: Refit.dll => 0xe18cd56e920af43d => 49
	i64 16274182383641215830, ; 247: zxing.dll => 0xe1d982a752dac356 => 82
	i64 16321164108206115771, ; 248: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 40
	i64 16491294355724214223, ; 249: zh-HK/Microsoft.Maui.Controls.resources => 0xe4dcd8d787589fcf => 31
	i64 16649148416072044166, ; 250: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 47
	i64 16677317093839702854, ; 251: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 72
	i64 16737304880976948124, ; 252: ja/Microsoft.Maui.Controls.resources => 0xe846da1c780aeb9c => 15
	i64 16856067890322379635, ; 253: System.Data.Common.dll => 0xe9ecc87060889373 => 95
	i64 16885326587688996227, ; 254: ZXing.Net.MAUI.dll => 0xea54bb11b7a94d83 => 83
	i64 16890310621557459193, ; 255: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 127
	i64 16998075588627545693, ; 256: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 70
	i64 17008137082415910100, ; 257: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 88
	i64 17031351772568316411, ; 258: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 69
	i64 17040771374769818752, ; 259: zxing => 0xec7cfb478bcccc80 => 82
	i64 17062143951396181894, ; 260: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 91
	i64 17089008752050867324, ; 261: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 32
	i64 17230721278011714856, ; 262: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 112
	i64 17260702271250283638, ; 263: System.Data.Common => 0xef8a5543bba6bc76 => 95
	i64 17306917412052548875, ; 264: ZXing.Net.MAUI => 0xf02e85b0b66a3d0b => 83
	i64 17438153253682247751, ; 265: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 25
	i64 17482873938501421891, ; 266: fr/Microsoft.Maui.Controls.resources => 0xf29fa538054fcb43 => 8
	i64 17702523067201099846, ; 267: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 31
	i64 17704177640604968747, ; 268: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 68
	i64 17710060891934109755, ; 269: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 66
	i64 17712670374920797664, ; 270: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 117
	i64 17777860260071588075, ; 271: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 119
	i64 18025913125965088385, ; 272: System.Threading => 0xfa28e87b91334681 => 129
	i64 18099568558057551825, ; 273: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 19
	i64 18121036031235206392, ; 274: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 69
	i64 18245806341561545090, ; 275: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 87
	i64 18305135509493619199, ; 276: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 71
	i64 18335459783622540540 ; 277: ZXing.Net.MAUI.Controls => 0xfe74a3871c483cfc => 84
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [278 x i32] [
	i32 42, ; 0
	i32 138, ; 1
	i32 46, ; 2
	i32 102, ; 3
	i32 57, ; 4
	i32 74, ; 5
	i32 7, ; 6
	i32 116, ; 7
	i32 128, ; 8
	i32 93, ; 9
	i32 10, ; 10
	i32 62, ; 11
	i32 116, ; 12
	i32 0, ; 13
	i32 78, ; 14
	i32 18, ; 15
	i32 99, ; 16
	i32 70, ; 17
	i32 107, ; 18
	i32 43, ; 19
	i32 137, ; 20
	i32 128, ; 21
	i32 16, ; 22
	i32 52, ; 23
	i32 67, ; 24
	i32 20, ; 25
	i32 48, ; 26
	i32 104, ; 27
	i32 111, ; 28
	i32 51, ; 29
	i32 74, ; 30
	i32 98, ; 31
	i32 44, ; 32
	i32 28, ; 33
	i32 66, ; 34
	i32 2, ; 35
	i32 20, ; 36
	i32 98, ; 37
	i32 48, ; 38
	i32 16, ; 39
	i32 62, ; 40
	i32 87, ; 41
	i32 24, ; 42
	i32 65, ; 43
	i32 125, ; 44
	i32 3, ; 45
	i32 58, ; 46
	i32 2, ; 47
	i32 122, ; 48
	i32 50, ; 49
	i32 49, ; 50
	i32 37, ; 51
	i32 78, ; 52
	i32 22, ; 53
	i32 27, ; 54
	i32 64, ; 55
	i32 109, ; 56
	i32 119, ; 57
	i32 81, ; 58
	i32 46, ; 59
	i32 35, ; 60
	i32 75, ; 61
	i32 135, ; 62
	i32 122, ; 63
	i32 36, ; 64
	i32 132, ; 65
	i32 35, ; 66
	i32 73, ; 67
	i32 39, ; 68
	i32 44, ; 69
	i32 108, ; 70
	i32 104, ; 71
	i32 121, ; 72
	i32 113, ; 73
	i32 93, ; 74
	i32 102, ; 75
	i32 92, ; 76
	i32 30, ; 77
	i32 130, ; 78
	i32 0, ; 79
	i32 85, ; 80
	i32 54, ; 81
	i32 50, ; 82
	i32 75, ; 83
	i32 99, ; 84
	i32 7, ; 85
	i32 118, ; 86
	i32 89, ; 87
	i32 89, ; 88
	i32 118, ; 89
	i32 100, ; 90
	i32 123, ; 91
	i32 77, ; 92
	i32 21, ; 93
	i32 23, ; 94
	i32 126, ; 95
	i32 114, ; 96
	i32 34, ; 97
	i32 65, ; 98
	i32 61, ; 99
	i32 41, ; 100
	i32 29, ; 101
	i32 22, ; 102
	i32 97, ; 103
	i32 133, ; 104
	i32 131, ; 105
	i32 109, ; 106
	i32 84, ; 107
	i32 112, ; 108
	i32 26, ; 109
	i32 103, ; 110
	i32 92, ; 111
	i32 14, ; 112
	i32 131, ; 113
	i32 110, ; 114
	i32 23, ; 115
	i32 106, ; 116
	i32 17, ; 117
	i32 135, ; 118
	i32 86, ; 119
	i32 80, ; 120
	i32 52, ; 121
	i32 90, ; 122
	i32 64, ; 123
	i32 105, ; 124
	i32 96, ; 125
	i32 136, ; 126
	i32 90, ; 127
	i32 47, ; 128
	i32 55, ; 129
	i32 123, ; 130
	i32 72, ; 131
	i32 115, ; 132
	i32 5, ; 133
	i32 28, ; 134
	i32 111, ; 135
	i32 25, ; 136
	i32 21, ; 137
	i32 136, ; 138
	i32 53, ; 139
	i32 86, ; 140
	i32 71, ; 141
	i32 96, ; 142
	i32 9, ; 143
	i32 133, ; 144
	i32 85, ; 145
	i32 53, ; 146
	i32 77, ; 147
	i32 51, ; 148
	i32 127, ; 149
	i32 58, ; 150
	i32 88, ; 151
	i32 138, ; 152
	i32 10, ; 153
	i32 45, ; 154
	i32 6, ; 155
	i32 106, ; 156
	i32 113, ; 157
	i32 43, ; 158
	i32 26, ; 159
	i32 61, ; 160
	i32 115, ; 161
	i32 114, ; 162
	i32 81, ; 163
	i32 59, ; 164
	i32 107, ; 165
	i32 33, ; 166
	i32 40, ; 167
	i32 45, ; 168
	i32 30, ; 169
	i32 32, ; 170
	i32 76, ; 171
	i32 41, ; 172
	i32 60, ; 173
	i32 117, ; 174
	i32 76, ; 175
	i32 39, ; 176
	i32 9, ; 177
	i32 12, ; 178
	i32 13, ; 179
	i32 126, ; 180
	i32 121, ; 181
	i32 63, ; 182
	i32 68, ; 183
	i32 34, ; 184
	i32 97, ; 185
	i32 24, ; 186
	i32 56, ; 187
	i32 101, ; 188
	i32 14, ; 189
	i32 57, ; 190
	i32 124, ; 191
	i32 54, ; 192
	i32 27, ; 193
	i32 42, ; 194
	i32 120, ; 195
	i32 1, ; 196
	i32 15, ; 197
	i32 1, ; 198
	i32 137, ; 199
	i32 79, ; 200
	i32 80, ; 201
	i32 29, ; 202
	i32 13, ; 203
	i32 73, ; 204
	i32 91, ; 205
	i32 8, ; 206
	i32 11, ; 207
	i32 94, ; 208
	i32 63, ; 209
	i32 3, ; 210
	i32 56, ; 211
	i32 129, ; 212
	i32 124, ; 213
	i32 108, ; 214
	i32 5, ; 215
	i32 125, ; 216
	i32 120, ; 217
	i32 37, ; 218
	i32 130, ; 219
	i32 79, ; 220
	i32 60, ; 221
	i32 33, ; 222
	i32 38, ; 223
	i32 101, ; 224
	i32 105, ; 225
	i32 110, ; 226
	i32 100, ; 227
	i32 103, ; 228
	i32 36, ; 229
	i32 4, ; 230
	i32 59, ; 231
	i32 38, ; 232
	i32 19, ; 233
	i32 11, ; 234
	i32 6, ; 235
	i32 94, ; 236
	i32 67, ; 237
	i32 134, ; 238
	i32 132, ; 239
	i32 4, ; 240
	i32 12, ; 241
	i32 55, ; 242
	i32 18, ; 243
	i32 134, ; 244
	i32 17, ; 245
	i32 49, ; 246
	i32 82, ; 247
	i32 40, ; 248
	i32 31, ; 249
	i32 47, ; 250
	i32 72, ; 251
	i32 15, ; 252
	i32 95, ; 253
	i32 83, ; 254
	i32 127, ; 255
	i32 70, ; 256
	i32 88, ; 257
	i32 69, ; 258
	i32 82, ; 259
	i32 91, ; 260
	i32 32, ; 261
	i32 112, ; 262
	i32 95, ; 263
	i32 83, ; 264
	i32 25, ; 265
	i32 8, ; 266
	i32 31, ; 267
	i32 68, ; 268
	i32 66, ; 269
	i32 117, ; 270
	i32 119, ; 271
	i32 129, ; 272
	i32 19, ; 273
	i32 69, ; 274
	i32 87, ; 275
	i32 71, ; 276
	i32 84 ; 277
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 68175bbe5a39140c642dab294cf184ecf72eece0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
