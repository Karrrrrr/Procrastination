; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [218 x i64] [
	i64 15690660930947125, ; 0: Microsoft.DotNet.PlatformAbstractions.dll => 0x37be92af148835 => 5
	i64 36418902923615093, ; 1: Plugin.LocalNotification => 0x8162cc9bdf1b75 => 23
	i64 98382396393917666, ; 2: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 19
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 20
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 53
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 76
	i64 295915112840604065, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 77
	i64 316157742385208084, ; 7: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 56
	i64 435170709725415398, ; 8: Xamarin.GooglePlayServices.Location => 0x60a097471d687e6 => 90
	i64 634308326490598313, ; 9: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 68
	i64 687654259221141486, ; 10: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 88
	i64 702024105029695270, ; 11: System.Drawing.Common => 0x9be17343c0e7726 => 96
	i64 720058930071658100, ; 12: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 64
	i64 870603111519317375, ; 13: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 26
	i64 872800313462103108, ; 14: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 61
	i64 940822596282819491, ; 15: System.Transactions => 0xd0e792aa81923a3 => 102
	i64 1000557547492888992, ; 16: Mono.Security.dll => 0xde2b1c9cba651a0 => 107
	i64 1120440138749646132, ; 17: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 86
	i64 1301485588176585670, ; 18: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 25
	i64 1315114680217950157, ; 19: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 48
	i64 1425944114962822056, ; 20: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 100
	i64 1518315023656898250, ; 21: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 27
	i64 1624659445732251991, ; 22: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 46
	i64 1628611045998245443, ; 23: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 70
	i64 1636321030536304333, ; 24: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 65
	i64 1672383392659050004, ; 25: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 4
	i64 1731380447121279447, ; 26: Newtonsoft.Json => 0x18071957e9b889d7 => 22
	i64 1743969030606105336, ; 27: System.Memory.dll => 0x1833d297e88f2af8 => 34
	i64 1795316252682057001, ; 28: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 47
	i64 1836611346387731153, ; 29: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 76
	i64 1865037103900624886, ; 30: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 3
	i64 1875917498431009007, ; 31: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 44
	i64 1981742497975770890, ; 32: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 69
	i64 2040001226662520565, ; 33: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 108
	i64 2133195048986300728, ; 34: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 22
	i64 2136356949452311481, ; 35: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 73
	i64 2165725771938924357, ; 36: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 51
	i64 2192948757939169934, ; 37: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 6
	i64 2262844636196693701, ; 38: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 61
	i64 2284400282711631002, ; 39: System.Web.Services => 0x1fb3d1f42fd4249a => 103
	i64 2287887973817120656, ; 40: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 106
	i64 2329709569556905518, ; 41: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 67
	i64 2335503487726329082, ; 42: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 40
	i64 2337758774805907496, ; 43: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 38
	i64 2470498323731680442, ; 44: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 55
	i64 2479423007379663237, ; 45: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 81
	i64 2497223385847772520, ; 46: System.Runtime => 0x22a7eb7046413568 => 39
	i64 2547086958574651984, ; 47: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 43
	i64 2592350477072141967, ; 48: System.Xml.dll => 0x23f9e10627330e8f => 42
	i64 2624866290265602282, ; 49: mscorlib.dll => 0x246d65fbde2db8ea => 21
	i64 2656907746661064104, ; 50: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 14
	i64 2783046991838674048, ; 51: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 38
	i64 2880551001043529105, ; 52: Procrastination.dll => 0x27f9c5dfa6986d91 => 0
	i64 3017704767998173186, ; 53: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 86
	i64 3289520064315143713, ; 54: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 66
	i64 3303437397778967116, ; 55: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 45
	i64 3311221304742556517, ; 56: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 37
	i64 3411255996856937470, ; 57: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 89
	i64 3493805808809882663, ; 58: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 79
	i64 3522470458906976663, ; 59: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 78
	i64 3523004241079211829, ; 60: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 11
	i64 3531994851595924923, ; 61: System.Numerics => 0x31042a9aade235bb => 36
	i64 3571415421602489686, ; 62: System.Runtime.dll => 0x319037675df7e556 => 39
	i64 3638003163729360188, ; 63: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 12
	i64 3716579019761409177, ; 64: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 65: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 75
	i64 3869221888984012293, ; 66: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 17
	i64 3966267475168208030, ; 67: System.Memory => 0x370b03412596249e => 34
	i64 4201423742386704971, ; 68: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 56
	i64 4247996603072512073, ; 69: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 91
	i64 4337444564132831293, ; 70: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 24
	i64 4513320955448359355, ; 71: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 8
	i64 4525561845656915374, ; 72: System.ServiceModel.Internals => 0x3ece06856b710dae => 101
	i64 4612482779465751747, ; 73: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 6
	i64 4636684751163556186, ; 74: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 83
	i64 4743821336939966868, ; 75: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 105
	i64 4782108999019072045, ; 76: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 50
	i64 4794310189461587505, ; 77: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 43
	i64 4795410492532947900, ; 78: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 78
	i64 5129462924058778861, ; 79: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 4
	i64 5203618020066742981, ; 80: Xamarin.Essentials => 0x4836f704f0e652c5 => 85
	i64 5205316157927637098, ; 81: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 72
	i64 5376510917114486089, ; 82: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 81
	i64 5408338804355907810, ; 83: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 80
	i64 5507995362134886206, ; 84: System.Core.dll => 0x4c705499688c873e => 30
	i64 5528247634813456972, ; 85: Plugin.LocalNotification.dll => 0x4cb847ef1773124c => 23
	i64 5757522595884336624, ; 86: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 54
	i64 6183170893902868313, ; 87: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 24
	i64 6222399776351216807, ; 88: System.Text.Json.dll => 0x565a67a0ffe264a7 => 41
	i64 6319713645133255417, ; 89: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 68
	i64 6401687960814735282, ; 90: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 67
	i64 6504860066809920875, ; 91: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 51
	i64 6548213210057960872, ; 92: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 59
	i64 6560151584539558821, ; 93: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 18
	i64 6591024623626361694, ; 94: System.Web.Services.dll => 0x5b7805f9751a1b5e => 103
	i64 6659513131007730089, ; 95: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 64
	i64 6876862101832370452, ; 96: System.Xml.Linq => 0x5f6f85a57d108914 => 104
	i64 6894844156784520562, ; 97: System.Numerics.Vectors => 0x5faf683aead1ad72 => 37
	i64 7103753931438454322, ; 98: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 63
	i64 7473077275758116397, ; 99: Microsoft.DotNet.PlatformAbstractions => 0x67b5b430309b3e2d => 5
	i64 7488575175965059935, ; 100: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 104
	i64 7637365915383206639, ; 101: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 85
	i64 7654504624184590948, ; 102: System.Net.Http => 0x6a3a4366801b8264 => 35
	i64 7735352534559001595, ; 103: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 94
	i64 7820441508502274321, ; 104: System.Data => 0x6c87ca1e14ff8111 => 31
	i64 7836164640616011524, ; 105: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 46
	i64 7972383140441761405, ; 106: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 10
	i64 8044118961405839122, ; 107: System.ComponentModel.Composition => 0x6fa2739369944712 => 99
	i64 8083354569033831015, ; 108: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 66
	i64 8087206902342787202, ; 109: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 32
	i64 8103644804370223335, ; 110: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 95
	i64 8167236081217502503, ; 111: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 2
	i64 8318905602908530212, ; 112: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 106
	i64 8518412311883997971, ; 113: System.Collections.Immutable => 0x76377add7c28e313 => 29
	i64 8601935802264776013, ; 114: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 80
	i64 8626175481042262068, ; 115: Java.Interop => 0x77b654e585b55834 => 2
	i64 8684531736582871431, ; 116: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 98
	i64 8725526185868997716, ; 117: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 32
	i64 8853378295825400934, ; 118: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 93
	i64 9111603110219107042, ; 119: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 11
	i64 9250544137016314866, ; 120: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 7
	i64 9324707631942237306, ; 121: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 47
	i64 9662334977499516867, ; 122: System.Numerics.dll => 0x8617827802b0cfc3 => 36
	i64 9678050649315576968, ; 123: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 55
	i64 9808709177481450983, ; 124: Mono.Android.dll => 0x881f890734e555e7 => 20
	i64 9825649861376906464, ; 125: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 54
	i64 9834056768316610435, ; 126: System.Transactions.dll => 0x8879968718899783 => 102
	i64 9864956466380592553, ; 127: Microsoft.EntityFrameworkCore.Sqlite => 0x88e75da3af4ed5a9 => 9
	i64 9875200773399460291, ; 128: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 88
	i64 9998632235833408227, ; 129: Mono.Security => 0x8ac2470b209ebae3 => 107
	i64 10038780035334861115, ; 130: System.Net.Http.dll => 0x8b50e941206af13b => 35
	i64 10229024438826829339, ; 131: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 59
	i64 10321854143672141184, ; 132: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 92
	i64 10376576884623852283, ; 133: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 79
	i64 10430153318873392755, ; 134: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 57
	i64 10447083246144586668, ; 135: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 3
	i64 10811915265162633087, ; 136: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 8
	i64 10847732767863316357, ; 137: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 48
	i64 11002576679268595294, ; 138: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 16
	i64 11023048688141570732, ; 139: System.Core => 0x98f9bc61168392ac => 30
	i64 11037814507248023548, ; 140: System.Xml => 0x992e31d0412bf7fc => 42
	i64 11162124722117608902, ; 141: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 84
	i64 11226290749488709958, ; 142: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 18
	i64 11340910727871153756, ; 143: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 58
	i64 11392833485892708388, ; 144: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 74
	i64 11398376662953476300, ; 145: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x9e2f2b2f0b71c0cc => 9
	i64 11529969570048099689, ; 146: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 84
	i64 11530571088791430846, ; 147: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 17
	i64 11580057168383206117, ; 148: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 44
	i64 11597940890313164233, ; 149: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 150: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 63
	i64 12102847907131387746, ; 151: System.Buffers => 0xa7f5f40c43256f62 => 28
	i64 12137774235383566651, ; 152: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 82
	i64 12145679461940342714, ; 153: System.Text.Json => 0xa88e1f1ebcb62fba => 41
	i64 12269460666702402136, ; 154: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 29
	i64 12279246230491828964, ; 155: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 27
	i64 12451044538927396471, ; 156: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 62
	i64 12466513435562512481, ; 157: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 71
	i64 12487638416075308985, ; 158: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 60
	i64 12538491095302438457, ; 159: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 52
	i64 12550732019250633519, ; 160: System.IO.Compression => 0xae2d28465e8e1b2f => 97
	i64 12700543734426720211, ; 161: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 53
	i64 12843321153144804894, ; 162: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 19
	i64 12963446364377008305, ; 163: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 96
	i64 13370592475155966277, ; 164: System.Runtime.Serialization => 0xb98de304062ea945 => 100
	i64 13401370062847626945, ; 165: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 82
	i64 13454009404024712428, ; 166: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 87
	i64 13465488254036897740, ; 167: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 94
	i64 13491513212026656886, ; 168: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 49
	i64 13572454107664307259, ; 169: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 75
	i64 13647894001087880694, ; 170: System.Data.dll => 0xbd670f48cb071df6 => 31
	i64 13828521679616088467, ; 171: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 93
	i64 13955418299340266673, ; 172: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 15
	i64 13959074834287824816, ; 173: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 62
	i64 14124974489674258913, ; 174: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 52
	i64 14133832980772275001, ; 175: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 7
	i64 14172845254133543601, ; 176: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 73
	i64 14261073672896646636, ; 177: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 74
	i64 14551742072151931844, ; 178: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 40
	i64 14644440854989303794, ; 179: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 72
	i64 14669215534098758659, ; 180: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 14
	i64 14678510994762383812, ; 181: Xamarin.GooglePlayServices.Location.dll => 0xcbb48bfaca7a41c4 => 90
	i64 14792063746108907174, ; 182: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 87
	i64 14852515768018889994, ; 183: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 58
	i64 14954917835170835695, ; 184: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 13
	i64 14987728460634540364, ; 185: System.IO.Compression.dll => 0xcfff1ba06622494c => 97
	i64 14988210264188246988, ; 186: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 60
	i64 15227001540531775957, ; 187: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 12
	i64 15370334346939861994, ; 188: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 57
	i64 15391712275433856905, ; 189: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 13
	i64 15582737692548360875, ; 190: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 70
	i64 15609085926864131306, ; 191: System.dll => 0xd89e9cf3334914ea => 33
	i64 15620595871140898079, ; 192: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 15
	i64 15777549416145007739, ; 193: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 77
	i64 15930129725311349754, ; 194: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 91
	i64 15963349826457351533, ; 195: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 108
	i64 16154507427712707110, ; 196: System => 0xe03056ea4e39aa26 => 33
	i64 16321164108206115771, ; 197: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 16
	i64 16565028646146589191, ; 198: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 99
	i64 16755018182064898362, ; 199: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 25
	i64 16822611501064131242, ; 200: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 95
	i64 16833383113903931215, ; 201: mscorlib => 0xe99c30c1484d7f4f => 21
	i64 17022240681847004359, ; 202: Procrastination => 0xec3b25b662b19cc7 => 0
	i64 17024911836938395553, ; 203: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 45
	i64 17037200463775726619, ; 204: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 65
	i64 17187273293601214786, ; 205: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 105
	i64 17544493274320527064, ; 206: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 50
	i64 17704177640604968747, ; 207: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 71
	i64 17710060891934109755, ; 208: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 69
	i64 17838668724098252521, ; 209: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 28
	i64 17891337867145587222, ; 210: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 92
	i64 17928294245072900555, ; 211: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 98
	i64 17986907704309214542, ; 212: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 89
	i64 18017743553296241350, ; 213: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 10
	i64 18116111925905154859, ; 214: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 49
	i64 18129453464017766560, ; 215: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 101
	i64 18370042311372477656, ; 216: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 26
	i64 18380184030268848184 ; 217: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 83
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [218 x i32] [
	i32 5, i32 23, i32 19, i32 20, i32 53, i32 76, i32 77, i32 56, ; 0..7
	i32 90, i32 68, i32 88, i32 96, i32 64, i32 26, i32 61, i32 102, ; 8..15
	i32 107, i32 86, i32 25, i32 48, i32 100, i32 27, i32 46, i32 70, ; 16..23
	i32 65, i32 4, i32 22, i32 34, i32 47, i32 76, i32 3, i32 44, ; 24..31
	i32 69, i32 108, i32 22, i32 73, i32 51, i32 6, i32 61, i32 103, ; 32..39
	i32 106, i32 67, i32 40, i32 38, i32 55, i32 81, i32 39, i32 43, ; 40..47
	i32 42, i32 21, i32 14, i32 38, i32 0, i32 86, i32 66, i32 45, ; 48..55
	i32 37, i32 89, i32 79, i32 78, i32 11, i32 36, i32 39, i32 12, ; 56..63
	i32 1, i32 75, i32 17, i32 34, i32 56, i32 91, i32 24, i32 8, ; 64..71
	i32 101, i32 6, i32 83, i32 105, i32 50, i32 43, i32 78, i32 4, ; 72..79
	i32 85, i32 72, i32 81, i32 80, i32 30, i32 23, i32 54, i32 24, ; 80..87
	i32 41, i32 68, i32 67, i32 51, i32 59, i32 18, i32 103, i32 64, ; 88..95
	i32 104, i32 37, i32 63, i32 5, i32 104, i32 85, i32 35, i32 94, ; 96..103
	i32 31, i32 46, i32 10, i32 99, i32 66, i32 32, i32 95, i32 2, ; 104..111
	i32 106, i32 29, i32 80, i32 2, i32 98, i32 32, i32 93, i32 11, ; 112..119
	i32 7, i32 47, i32 36, i32 55, i32 20, i32 54, i32 102, i32 9, ; 120..127
	i32 88, i32 107, i32 35, i32 59, i32 92, i32 79, i32 57, i32 3, ; 128..135
	i32 8, i32 48, i32 16, i32 30, i32 42, i32 84, i32 18, i32 58, ; 136..143
	i32 74, i32 9, i32 84, i32 17, i32 44, i32 1, i32 63, i32 28, ; 144..151
	i32 82, i32 41, i32 29, i32 27, i32 62, i32 71, i32 60, i32 52, ; 152..159
	i32 97, i32 53, i32 19, i32 96, i32 100, i32 82, i32 87, i32 94, ; 160..167
	i32 49, i32 75, i32 31, i32 93, i32 15, i32 62, i32 52, i32 7, ; 168..175
	i32 73, i32 74, i32 40, i32 72, i32 14, i32 90, i32 87, i32 58, ; 176..183
	i32 13, i32 97, i32 60, i32 12, i32 57, i32 13, i32 70, i32 33, ; 184..191
	i32 15, i32 77, i32 91, i32 108, i32 33, i32 16, i32 99, i32 25, ; 192..199
	i32 95, i32 21, i32 0, i32 45, i32 65, i32 105, i32 50, i32 71, ; 200..207
	i32 69, i32 28, i32 92, i32 98, i32 89, i32 10, i32 49, i32 101, ; 208..215
	i32 26, i32 83 ; 216..217
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
