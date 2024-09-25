; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [139 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [278 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 79
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 48
	i32 40744412, ; 2: Xamarin.AndroidX.Camera.Lifecycle.dll => 0x26db5dc => 54
	i32 42639949, ; 3: System.Threading.Thread => 0x28aa24d => 128
	i32 53857724, ; 4: ca/Microsoft.Maui.Controls.resources => 0x335cdbc => 1
	i32 72070932, ; 5: Microsoft.Maui.Graphics.dll => 0x44bb714 => 47
	i32 113429830, ; 6: zh-HK/Microsoft.Maui.Controls.resources => 0x6c2cd46 => 31
	i32 117431740, ; 7: System.Runtime.InteropServices => 0x6ffddbc => 117
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 57
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 75
	i32 195452805, ; 10: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 11: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 12: System.ComponentModel => 0xc38ff48 => 93
	i32 230752869, ; 13: Microsoft.CSharp.dll => 0xdc10265 => 86
	i32 246610117, ; 14: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 115
	i32 280992041, ; 15: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 50
	i32 336156722, ; 17: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 64
	i32 356389973, ; 19: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 357576608, ; 20: cs/Microsoft.Maui.Controls.resources => 0x15502fa0 => 2
	i32 379916513, ; 21: System.Threading.Thread.dll => 0x16a510e1 => 128
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 104
	i32 395744057, ; 23: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 24: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 25: System.Collections => 0x1a61054f => 90
	i32 450948140, ; 26: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 63
	i32 456227837, ; 27: System.Web.HttpUtility.dll => 0x1b317bfd => 130
	i32 459347974, ; 28: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 121
	i32 469710990, ; 29: System.dll => 0x1bff388e => 134
	i32 498788369, ; 30: System.ObjectModel => 0x1dbae811 => 110
	i32 500358224, ; 31: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 32: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 33: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 42
	i32 527168573, ; 34: hi/Microsoft.Maui.Controls.resources => 0x1f6bf43d => 10
	i32 539058512, ; 35: Microsoft.Extensions.Logging => 0x20216150 => 39
	i32 592146354, ; 36: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 627609679, ; 37: Xamarin.AndroidX.CustomView => 0x2568904f => 61
	i32 662205335, ; 38: System.Text.Encodings.Web.dll => 0x27787397 => 125
	i32 672442732, ; 39: System.Collections.Concurrent => 0x2814a96c => 87
	i32 688181140, ; 40: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 41: System.Xml.Linq.dll => 0x29293ff5 => 131
	i32 706645707, ; 42: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 43: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 44: System.Runtime.Loader.dll => 0x2b15ed29 => 118
	i32 759454413, ; 45: System.Net.Requests => 0x2d445acd => 108
	i32 775507847, ; 46: System.IO.Compression => 0x2e394f87 => 101
	i32 789151979, ; 47: Microsoft.Extensions.Options => 0x2f0980eb => 41
	i32 804715423, ; 48: System.Data.Common => 0x2ff6fb9f => 95
	i32 823281589, ; 49: System.Private.Uri.dll => 0x311247b5 => 111
	i32 830298997, ; 50: System.IO.Compression.Brotli => 0x317d5b75 => 100
	i32 839353180, ; 51: ZXing.Net.MAUI.Controls.dll => 0x3207835c => 84
	i32 865465478, ; 52: zxing.dll => 0x3395f486 => 82
	i32 870878177, ; 53: ar/Microsoft.Maui.Controls.resources => 0x33e88be1 => 0
	i32 878954865, ; 54: System.Net.Http.Json => 0x3463c971 => 105
	i32 904024072, ; 55: System.ComponentModel.Primitives.dll => 0x35e25008 => 91
	i32 908337989, ; 56: Refit => 0x36242345 => 49
	i32 915442596, ; 57: speed.dll => 0x36908ba4 => 85
	i32 926902833, ; 58: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 928116545, ; 59: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 79
	i32 955402788, ; 60: Newtonsoft.Json => 0x38f24a24 => 48
	i32 967690846, ; 61: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 64
	i32 975874589, ; 62: System.Xml.XDocument => 0x3a2aaa1d => 133
	i32 992768348, ; 63: System.Collections.dll => 0x3b2c715c => 90
	i32 993161700, ; 64: zh-Hans/Microsoft.Maui.Controls.resources => 0x3b3271e4 => 32
	i32 994547685, ; 65: es/Microsoft.Maui.Controls.resources => 0x3b4797e5 => 6
	i32 1012816738, ; 66: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 74
	i32 1019214401, ; 67: System.Drawing => 0x3cbffa41 => 99
	i32 1028951442, ; 68: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 38
	i32 1029334545, ; 69: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 70: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 51
	i32 1036536393, ; 71: System.Drawing.Primitives.dll => 0x3dc84a49 => 98
	i32 1044663988, ; 72: System.Linq.Expressions.dll => 0x3e444eb4 => 102
	i32 1052210849, ; 73: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 66
	i32 1082857460, ; 74: System.ComponentModel.TypeConverter => 0x408b17f4 => 92
	i32 1084122840, ; 75: Xamarin.Kotlin.StdLib => 0x409e66d8 => 80
	i32 1098259244, ; 76: System => 0x41761b2c => 134
	i32 1178241025, ; 77: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 71
	i32 1178797549, ; 78: fi/Microsoft.Maui.Controls.resources => 0x464305ed => 7
	i32 1203215381, ; 79: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1234928153, ; 80: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1293217323, ; 81: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 62
	i32 1324164729, ; 82: System.Linq => 0x4eed2679 => 103
	i32 1376866003, ; 83: Xamarin.AndroidX.SavedState => 0x52114ed3 => 74
	i32 1406073936, ; 84: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 58
	i32 1408764838, ; 85: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 120
	i32 1462112819, ; 86: System.IO.Compression.dll => 0x57261233 => 101
	i32 1469204771, ; 87: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 52
	i32 1470490898, ; 88: Microsoft.Extensions.Primitives => 0x57a5e912 => 42
	i32 1480492111, ; 89: System.IO.Compression.Brotli.dll => 0x583e844f => 100
	i32 1493001747, ; 90: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 91: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 92: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 127
	i32 1551623176, ; 93: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1554762148, ; 94: fr/Microsoft.Maui.Controls.resources => 0x5cabc9a4 => 8
	i32 1580413037, ; 95: sv/Microsoft.Maui.Controls.resources => 0x5e33306d => 26
	i32 1591080825, ; 96: zh-Hant/Microsoft.Maui.Controls.resources => 0x5ed5f779 => 33
	i32 1622152042, ; 97: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 68
	i32 1624863272, ; 98: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 77
	i32 1636350590, ; 99: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 60
	i32 1639515021, ; 100: System.Net.Http.dll => 0x61b9038d => 106
	i32 1639986890, ; 101: System.Text.RegularExpressions => 0x61c036ca => 127
	i32 1657153582, ; 102: System.Runtime => 0x62c6282e => 122
	i32 1658251792, ; 103: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 78
	i32 1677501392, ; 104: System.Net.Primitives.dll => 0x63fca3d0 => 107
	i32 1679769178, ; 105: System.Security.Cryptography => 0x641f3e5a => 123
	i32 1729485958, ; 106: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 56
	i32 1736233607, ; 107: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1763938596, ; 108: System.Diagnostics.TraceSource.dll => 0x69239124 => 97
	i32 1766324549, ; 109: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 75
	i32 1770582343, ; 110: Microsoft.Extensions.Logging.dll => 0x6988f147 => 39
	i32 1780572499, ; 111: Mono.Android.Runtime.dll => 0x6a216153 => 137
	i32 1788241197, ; 112: Xamarin.AndroidX.Fragment => 0x6a96652d => 63
	i32 1808609942, ; 113: Xamarin.AndroidX.Loader => 0x6bcd3296 => 68
	i32 1809966115, ; 114: nb/Microsoft.Maui.Controls.resources => 0x6be1e423 => 18
	i32 1813058853, ; 115: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 80
	i32 1813201214, ; 116: Xamarin.Google.Android.Material => 0x6c13413e => 78
	i32 1818569960, ; 117: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 72
	i32 1821794637, ; 118: hu/Microsoft.Maui.Controls.resources => 0x6c96614d => 12
	i32 1824175904, ; 119: System.Text.Encoding.Extensions => 0x6cbab720 => 124
	i32 1824722060, ; 120: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 120
	i32 1828688058, ; 121: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 40
	i32 1842015223, ; 122: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1858542181, ; 123: System.Linq.Expressions => 0x6ec71a65 => 102
	i32 1870277092, ; 124: System.Reflection.Primitives => 0x6f7a29e4 => 116
	i32 1910275211, ; 125: System.Collections.NonGeneric.dll => 0x71dc7c8b => 88
	i32 1939592360, ; 126: System.Private.Xml.Linq => 0x739bd4a8 => 112
	i32 1960264639, ; 127: ja/Microsoft.Maui.Controls.resources => 0x74d743bf => 15
	i32 1968388702, ; 128: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 35
	i32 2014344398, ; 129: hr/Microsoft.Maui.Controls.resources => 0x781074ce => 11
	i32 2019465201, ; 130: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 66
	i32 2025202353, ; 131: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2043674646, ; 132: it/Microsoft.Maui.Controls.resources => 0x79d00016 => 14
	i32 2045470958, ; 133: System.Private.Xml => 0x79eb68ee => 113
	i32 2055257422, ; 134: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 65
	i32 2070888862, ; 135: System.Diagnostics.TraceSource => 0x7b6f419e => 97
	i32 2079903147, ; 136: System.Runtime.dll => 0x7bf8cdab => 122
	i32 2090596640, ; 137: System.Numerics.Vectors => 0x7c9bf920 => 109
	i32 2127167465, ; 138: System.Console => 0x7ec9ffe9 => 94
	i32 2142473426, ; 139: System.Collections.Specialized => 0x7fb38cd2 => 89
	i32 2150663486, ; 140: ko/Microsoft.Maui.Controls.resources => 0x8030853e => 16
	i32 2159891885, ; 141: Microsoft.Maui => 0x80bd55ad => 45
	i32 2165051842, ; 142: ro/Microsoft.Maui.Controls.resources => 0x810c11c2 => 23
	i32 2181898931, ; 143: Microsoft.Extensions.Options.dll => 0x820d22b3 => 41
	i32 2192057212, ; 144: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 40
	i32 2193016926, ; 145: System.ObjectModel.dll => 0x82b6c85e => 110
	i32 2201107256, ; 146: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 81
	i32 2201231467, ; 147: System.Net.Http => 0x8334206b => 106
	i32 2266799131, ; 148: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 36
	i32 2270573516, ; 149: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 150: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 73
	i32 2289298199, ; 151: th/Microsoft.Maui.Controls.resources => 0x8873eb17 => 27
	i32 2305521784, ; 152: System.Private.CoreLib.dll => 0x896b7878 => 135
	i32 2353062107, ; 153: System.Net.Primitives => 0x8c40e0db => 107
	i32 2368005991, ; 154: System.Xml.ReaderWriter.dll => 0x8d24e767 => 132
	i32 2369760409, ; 155: tr/Microsoft.Maui.Controls.resources => 0x8d3fac99 => 28
	i32 2371007202, ; 156: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 35
	i32 2401565422, ; 157: System.Web.HttpUtility => 0x8f24faee => 130
	i32 2421992093, ; 158: nl/Microsoft.Maui.Controls.resources => 0x905caa9d => 19
	i32 2435356389, ; 159: System.Console.dll => 0x912896e5 => 94
	i32 2475788418, ; 160: Java.Interop.dll => 0x93918882 => 136
	i32 2480646305, ; 161: Microsoft.Maui.Controls => 0x93dba8a1 => 43
	i32 2520433370, ; 162: sk/Microsoft.Maui.Controls.resources => 0x963ac2da => 25
	i32 2538310050, ; 163: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 115
	i32 2562349572, ; 164: Microsoft.CSharp => 0x98ba5a04 => 86
	i32 2570120770, ; 165: System.Text.Encodings.Web => 0x9930ee42 => 125
	i32 2585220780, ; 166: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 124
	i32 2605712449, ; 167: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 81
	i32 2617129537, ; 168: System.Private.Xml.dll => 0x9bfe3a41 => 113
	i32 2620871830, ; 169: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 60
	i32 2663698177, ; 170: System.Runtime.Loader => 0x9ec4cf01 => 118
	i32 2664396074, ; 171: System.Xml.XDocument.dll => 0x9ecf752a => 133
	i32 2665622720, ; 172: System.Drawing.Primitives => 0x9ee22cc0 => 98
	i32 2676780864, ; 173: System.Data.Common.dll => 0x9f8c6f40 => 95
	i32 2724373263, ; 174: System.Runtime.Numerics.dll => 0xa262a30f => 119
	i32 2732626843, ; 175: Xamarin.AndroidX.Activity => 0xa2e0939b => 50
	i32 2737747696, ; 176: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 52
	i32 2758225723, ; 177: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 44
	i32 2764765095, ; 178: Microsoft.Maui.dll => 0xa4caf7a7 => 45
	i32 2778768386, ; 179: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 76
	i32 2801831435, ; 180: Microsoft.Maui.Graphics => 0xa7008e0b => 47
	i32 2802068195, ; 181: uk/Microsoft.Maui.Controls.resources => 0xa7042ae3 => 29
	i32 2806116107, ; 182: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 183: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 58
	i32 2831556043, ; 184: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 185: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 76
	i32 2857259519, ; 186: el/Microsoft.Maui.Controls.resources => 0xaa4e51ff => 5
	i32 2861189240, ; 187: Microsoft.Maui.Essentials => 0xaa8a4878 => 46
	i32 2883495834, ; 188: ru/Microsoft.Maui.Controls.resources => 0xabdea79a => 24
	i32 2909740682, ; 189: System.Private.CoreLib => 0xad6f1e8a => 135
	i32 2916838712, ; 190: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 77
	i32 2919462931, ; 191: System.Numerics.Vectors.dll => 0xae037813 => 109
	i32 2959614098, ; 192: System.ComponentModel.dll => 0xb0682092 => 93
	i32 2965157864, ; 193: Xamarin.AndroidX.Camera.View => 0xb0bcb7e8 => 55
	i32 2978675010, ; 194: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 62
	i32 2991449226, ; 195: Xamarin.AndroidX.Camera.Core => 0xb24de48a => 53
	i32 3000842441, ; 196: Xamarin.AndroidX.Camera.View.dll => 0xb2dd38c9 => 55
	i32 3038032645, ; 197: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3047751430, ; 198: Xamarin.AndroidX.Camera.Core.dll => 0xb5a8ff06 => 53
	i32 3057625584, ; 199: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 69
	i32 3059408633, ; 200: Mono.Android.Runtime => 0xb65adef9 => 137
	i32 3059793426, ; 201: System.ComponentModel.Primitives => 0xb660be12 => 91
	i32 3077302341, ; 202: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3159123045, ; 203: System.Reflection.Primitives.dll => 0xbc4c6465 => 116
	i32 3178803400, ; 204: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 70
	i32 3215347189, ; 205: zxing => 0xbfa64df5 => 82
	i32 3220365878, ; 206: System.Threading => 0xbff2e236 => 129
	i32 3258312781, ; 207: Xamarin.AndroidX.CardView => 0xc235e84d => 56
	i32 3286373667, ; 208: ZXing.Net.MAUI.dll => 0xc3e21523 => 83
	i32 3316684772, ; 209: System.Net.Requests.dll => 0xc5b097e4 => 108
	i32 3317135071, ; 210: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 61
	i32 3346324047, ; 211: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 71
	i32 3358260929, ; 212: System.Text.Json => 0xc82afec1 => 126
	i32 3362522851, ; 213: Xamarin.AndroidX.Core => 0xc86c06e3 => 59
	i32 3366347497, ; 214: Java.Interop => 0xc8a662e9 => 136
	i32 3374999561, ; 215: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 73
	i32 3428513518, ; 216: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 37
	i32 3463511458, ; 217: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 218: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 92
	i32 3476120550, ; 219: Mono.Android => 0xcf3163e6 => 138
	i32 3479583265, ; 220: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3485117614, ; 221: System.Text.Json.dll => 0xcfbaacae => 126
	i32 3509114376, ; 222: System.Xml.Linq => 0xd128d608 => 131
	i32 3542658132, ; 223: vi/Microsoft.Maui.Controls.resources => 0xd328ac54 => 30
	i32 3596930546, ; 224: de/Microsoft.Maui.Controls.resources => 0xd664cdf2 => 4
	i32 3608519521, ; 225: System.Linq.dll => 0xd715a361 => 103
	i32 3623444314, ; 226: da/Microsoft.Maui.Controls.resources => 0xd7f95f5a => 3
	i32 3641597786, ; 227: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 65
	i32 3643854240, ; 228: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 70
	i32 3647796983, ; 229: pt-BR/Microsoft.Maui.Controls.resources => 0xd96cf6f7 => 21
	i32 3657292374, ; 230: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 36
	i32 3662115805, ; 231: he/Microsoft.Maui.Controls.resources => 0xda4773dd => 9
	i32 3672681054, ; 232: Mono.Android.dll => 0xdae8aa5e => 138
	i32 3676461095, ; 233: Xamarin.AndroidX.Camera.Lifecycle => 0xdb225827 => 54
	i32 3686075795, ; 234: ms/Microsoft.Maui.Controls.resources => 0xdbb50d93 => 17
	i32 3697841164, ; 235: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 236: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 69
	i32 3737834244, ; 237: System.Net.Http.Json.dll => 0xdecad304 => 105
	i32 3748608112, ; 238: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 96
	i32 3751582913, ; 239: ZXing.Net.MAUI.Controls => 0xdf9c9cc1 => 84
	i32 3786282454, ; 240: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 57
	i32 3792276235, ; 241: System.Collections.NonGeneric => 0xe2098b0b => 88
	i32 3802395368, ; 242: System.Collections.Specialized.dll => 0xe2a3f2e8 => 89
	i32 3823082795, ; 243: System.Security.Cryptography.dll => 0xe3df9d2b => 123
	i32 3841636137, ; 244: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 38
	i32 3842894692, ; 245: ZXing.Net.MAUI => 0xe50deb64 => 83
	i32 3849253459, ; 246: System.Runtime.InteropServices.dll => 0xe56ef253 => 117
	i32 3889960447, ; 247: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 248: System.Collections.Concurrent.dll => 0xe839deed => 87
	i32 3896760992, ; 249: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 59
	i32 3928044579, ; 250: System.Xml.ReaderWriter => 0xea213423 => 132
	i32 3931092270, ; 251: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 72
	i32 3955647286, ; 252: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 51
	i32 3980434154, ; 253: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 254: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 255: System.Memory => 0xeff49a63 => 104
	i32 4046471985, ; 256: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 44
	i32 4054681211, ; 257: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 114
	i32 4068434129, ; 258: System.Private.Xml.Linq.dll => 0xf27f60d1 => 112
	i32 4070331268, ; 259: id/Microsoft.Maui.Controls.resources => 0xf29c5384 => 13
	i32 4073602200, ; 260: System.Threading.dll => 0xf2ce3c98 => 129
	i32 4094352644, ; 261: Microsoft.Maui.Essentials.dll => 0xf40add04 => 46
	i32 4099507663, ; 262: System.Drawing.dll => 0xf45985cf => 99
	i32 4100113165, ; 263: System.Private.Uri => 0xf462c30d => 111
	i32 4102112229, ; 264: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4119206479, ; 265: pl/Microsoft.Maui.Controls.resources => 0xf5861a4f => 20
	i32 4125707920, ; 266: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 267: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 37
	i32 4144683026, ; 268: Refit.dll => 0xf70ad812 => 49
	i32 4147896353, ; 269: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 114
	i32 4181436372, ; 270: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 121
	i32 4182413190, ; 271: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 67
	i32 4213026141, ; 272: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 96
	i32 4234116406, ; 273: pt/Microsoft.Maui.Controls.resources => 0xfc5f7d36 => 22
	i32 4244192470, ; 274: speed => 0xfcf93cd6 => 85
	i32 4271975918, ; 275: Microsoft.Maui.Controls.dll => 0xfea12dee => 43
	i32 4274976490, ; 276: System.Runtime.Numerics => 0xfecef6ea => 119
	i32 4292120959 ; 277: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 67
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [278 x i32] [
	i32 79, ; 0
	i32 48, ; 1
	i32 54, ; 2
	i32 128, ; 3
	i32 1, ; 4
	i32 47, ; 5
	i32 31, ; 6
	i32 117, ; 7
	i32 57, ; 8
	i32 75, ; 9
	i32 30, ; 10
	i32 31, ; 11
	i32 93, ; 12
	i32 86, ; 13
	i32 115, ; 14
	i32 2, ; 15
	i32 50, ; 16
	i32 15, ; 17
	i32 64, ; 18
	i32 14, ; 19
	i32 2, ; 20
	i32 128, ; 21
	i32 104, ; 22
	i32 34, ; 23
	i32 26, ; 24
	i32 90, ; 25
	i32 63, ; 26
	i32 130, ; 27
	i32 121, ; 28
	i32 134, ; 29
	i32 110, ; 30
	i32 13, ; 31
	i32 7, ; 32
	i32 42, ; 33
	i32 10, ; 34
	i32 39, ; 35
	i32 21, ; 36
	i32 61, ; 37
	i32 125, ; 38
	i32 87, ; 39
	i32 1, ; 40
	i32 131, ; 41
	i32 16, ; 42
	i32 4, ; 43
	i32 118, ; 44
	i32 108, ; 45
	i32 101, ; 46
	i32 41, ; 47
	i32 95, ; 48
	i32 111, ; 49
	i32 100, ; 50
	i32 84, ; 51
	i32 82, ; 52
	i32 0, ; 53
	i32 105, ; 54
	i32 91, ; 55
	i32 49, ; 56
	i32 85, ; 57
	i32 28, ; 58
	i32 79, ; 59
	i32 48, ; 60
	i32 64, ; 61
	i32 133, ; 62
	i32 90, ; 63
	i32 32, ; 64
	i32 6, ; 65
	i32 74, ; 66
	i32 99, ; 67
	i32 38, ; 68
	i32 3, ; 69
	i32 51, ; 70
	i32 98, ; 71
	i32 102, ; 72
	i32 66, ; 73
	i32 92, ; 74
	i32 80, ; 75
	i32 134, ; 76
	i32 71, ; 77
	i32 7, ; 78
	i32 20, ; 79
	i32 18, ; 80
	i32 62, ; 81
	i32 103, ; 82
	i32 74, ; 83
	i32 58, ; 84
	i32 120, ; 85
	i32 101, ; 86
	i32 52, ; 87
	i32 42, ; 88
	i32 100, ; 89
	i32 10, ; 90
	i32 5, ; 91
	i32 127, ; 92
	i32 25, ; 93
	i32 8, ; 94
	i32 26, ; 95
	i32 33, ; 96
	i32 68, ; 97
	i32 77, ; 98
	i32 60, ; 99
	i32 106, ; 100
	i32 127, ; 101
	i32 122, ; 102
	i32 78, ; 103
	i32 107, ; 104
	i32 123, ; 105
	i32 56, ; 106
	i32 23, ; 107
	i32 97, ; 108
	i32 75, ; 109
	i32 39, ; 110
	i32 137, ; 111
	i32 63, ; 112
	i32 68, ; 113
	i32 18, ; 114
	i32 80, ; 115
	i32 78, ; 116
	i32 72, ; 117
	i32 12, ; 118
	i32 124, ; 119
	i32 120, ; 120
	i32 40, ; 121
	i32 29, ; 122
	i32 102, ; 123
	i32 116, ; 124
	i32 88, ; 125
	i32 112, ; 126
	i32 15, ; 127
	i32 35, ; 128
	i32 11, ; 129
	i32 66, ; 130
	i32 0, ; 131
	i32 14, ; 132
	i32 113, ; 133
	i32 65, ; 134
	i32 97, ; 135
	i32 122, ; 136
	i32 109, ; 137
	i32 94, ; 138
	i32 89, ; 139
	i32 16, ; 140
	i32 45, ; 141
	i32 23, ; 142
	i32 41, ; 143
	i32 40, ; 144
	i32 110, ; 145
	i32 81, ; 146
	i32 106, ; 147
	i32 36, ; 148
	i32 8, ; 149
	i32 73, ; 150
	i32 27, ; 151
	i32 135, ; 152
	i32 107, ; 153
	i32 132, ; 154
	i32 28, ; 155
	i32 35, ; 156
	i32 130, ; 157
	i32 19, ; 158
	i32 94, ; 159
	i32 136, ; 160
	i32 43, ; 161
	i32 25, ; 162
	i32 115, ; 163
	i32 86, ; 164
	i32 125, ; 165
	i32 124, ; 166
	i32 81, ; 167
	i32 113, ; 168
	i32 60, ; 169
	i32 118, ; 170
	i32 133, ; 171
	i32 98, ; 172
	i32 95, ; 173
	i32 119, ; 174
	i32 50, ; 175
	i32 52, ; 176
	i32 44, ; 177
	i32 45, ; 178
	i32 76, ; 179
	i32 47, ; 180
	i32 29, ; 181
	i32 6, ; 182
	i32 58, ; 183
	i32 19, ; 184
	i32 76, ; 185
	i32 5, ; 186
	i32 46, ; 187
	i32 24, ; 188
	i32 135, ; 189
	i32 77, ; 190
	i32 109, ; 191
	i32 93, ; 192
	i32 55, ; 193
	i32 62, ; 194
	i32 53, ; 195
	i32 55, ; 196
	i32 34, ; 197
	i32 53, ; 198
	i32 69, ; 199
	i32 137, ; 200
	i32 91, ; 201
	i32 12, ; 202
	i32 116, ; 203
	i32 70, ; 204
	i32 82, ; 205
	i32 129, ; 206
	i32 56, ; 207
	i32 83, ; 208
	i32 108, ; 209
	i32 61, ; 210
	i32 71, ; 211
	i32 126, ; 212
	i32 59, ; 213
	i32 136, ; 214
	i32 73, ; 215
	i32 37, ; 216
	i32 11, ; 217
	i32 92, ; 218
	i32 138, ; 219
	i32 24, ; 220
	i32 126, ; 221
	i32 131, ; 222
	i32 30, ; 223
	i32 4, ; 224
	i32 103, ; 225
	i32 3, ; 226
	i32 65, ; 227
	i32 70, ; 228
	i32 21, ; 229
	i32 36, ; 230
	i32 9, ; 231
	i32 138, ; 232
	i32 54, ; 233
	i32 17, ; 234
	i32 33, ; 235
	i32 69, ; 236
	i32 105, ; 237
	i32 96, ; 238
	i32 84, ; 239
	i32 57, ; 240
	i32 88, ; 241
	i32 89, ; 242
	i32 123, ; 243
	i32 38, ; 244
	i32 83, ; 245
	i32 117, ; 246
	i32 32, ; 247
	i32 87, ; 248
	i32 59, ; 249
	i32 132, ; 250
	i32 72, ; 251
	i32 51, ; 252
	i32 27, ; 253
	i32 9, ; 254
	i32 104, ; 255
	i32 44, ; 256
	i32 114, ; 257
	i32 112, ; 258
	i32 13, ; 259
	i32 129, ; 260
	i32 46, ; 261
	i32 99, ; 262
	i32 111, ; 263
	i32 22, ; 264
	i32 20, ; 265
	i32 17, ; 266
	i32 37, ; 267
	i32 49, ; 268
	i32 114, ; 269
	i32 121, ; 270
	i32 67, ; 271
	i32 96, ; 272
	i32 22, ; 273
	i32 85, ; 274
	i32 43, ; 275
	i32 119, ; 276
	i32 67 ; 277
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 68175bbe5a39140c642dab294cf184ecf72eece0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
