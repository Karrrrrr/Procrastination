; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [218 x i32] [
	i32 26230656, ; 0: Microsoft.Extensions.DependencyModel => 0x1903f80 => 15
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 68
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 87
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 22
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 77
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 77
	i32 159306688, ; 6: System.ComponentModel.Annotations => 0x97ed3c0 => 105
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 53
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 78
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 51
	i32 230216969, ; 10: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 65
	i32 232815796, ; 11: System.Web.Services => 0xde07cb4 => 103
	i32 280482487, ; 12: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 63
	i32 318968648, ; 13: Xamarin.AndroidX.Activity.dll => 0x13031348 => 43
	i32 321597661, ; 14: System.Numerics => 0x132b30dd => 36
	i32 342366114, ; 15: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 66
	i32 347068432, ; 16: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 26
	i32 385762202, ; 17: System.Memory.dll => 0x16fe439a => 34
	i32 426216588, ; 18: Procrastination => 0x19678c8c => 0
	i32 442521989, ; 19: Xamarin.Essentials => 0x1a605985 => 85
	i32 450948140, ; 20: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 62
	i32 465846621, ; 21: mscorlib => 0x1bc4415d => 21
	i32 469710990, ; 22: System.dll => 0x1bff388e => 33
	i32 476646585, ; 23: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 63
	i32 486930444, ; 24: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 72
	i32 504143952, ; 25: Plugin.LocalNotification.dll => 0x1e0ca050 => 23
	i32 513247710, ; 26: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 19
	i32 526420162, ; 27: System.Transactions.dll => 0x1f6088c2 => 102
	i32 539058512, ; 28: Microsoft.Extensions.Logging => 0x20216150 => 17
	i32 548916678, ; 29: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 3
	i32 605376203, ; 30: System.IO.Compression.FileSystem => 0x24154ecb => 98
	i32 627609679, ; 31: Xamarin.AndroidX.CustomView => 0x2568904f => 59
	i32 662205335, ; 32: System.Text.Encodings.Web.dll => 0x27787397 => 40
	i32 663517072, ; 33: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 83
	i32 666292255, ; 34: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 48
	i32 690569205, ; 35: System.Xml.Linq.dll => 0x29293ff5 => 104
	i32 700284507, ; 36: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 92
	i32 748832960, ; 37: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 24
	i32 775507847, ; 38: System.IO.Compression => 0x2e394f87 => 97
	i32 789151979, ; 39: Microsoft.Extensions.Options => 0x2f0980eb => 18
	i32 809851609, ; 40: System.Drawing.Common.dll => 0x30455ad9 => 96
	i32 843511501, ; 41: Xamarin.AndroidX.Print => 0x3246f6cd => 74
	i32 928116545, ; 42: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 87
	i32 955402788, ; 43: Newtonsoft.Json => 0x38f24a24 => 22
	i32 967690846, ; 44: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 66
	i32 1012816738, ; 45: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 76
	i32 1028951442, ; 46: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 13
	i32 1035644815, ; 47: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 47
	i32 1052210849, ; 48: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 69
	i32 1084122840, ; 49: Xamarin.Kotlin.StdLib => 0x409e66d8 => 94
	i32 1098259244, ; 50: System => 0x41761b2c => 33
	i32 1099692271, ; 51: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 5
	i32 1157931901, ; 52: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 6
	i32 1175144683, ; 53: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 81
	i32 1202000627, ; 54: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 6
	i32 1204270330, ; 55: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 48
	i32 1204575371, ; 56: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 11
	i32 1206604989, ; 57: Procrastination.dll => 0x47eb54bd => 0
	i32 1267360935, ; 58: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 82
	i32 1292207520, ; 59: SQLitePCLRaw.core.dll => 0x4d0585a0 => 25
	i32 1293217323, ; 60: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 61
	i32 1365406463, ; 61: System.ServiceModel.Internals.dll => 0x516272ff => 101
	i32 1376866003, ; 62: Xamarin.AndroidX.SavedState => 0x52114ed3 => 76
	i32 1406073936, ; 63: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 55
	i32 1411638395, ; 64: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 38
	i32 1461234159, ; 65: System.Collections.Immutable.dll => 0x5718a9ef => 29
	i32 1462112819, ; 66: System.IO.Compression.dll => 0x57261233 => 97
	i32 1469204771, ; 67: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 46
	i32 1470490898, ; 68: Microsoft.Extensions.Primitives => 0x57a5e912 => 19
	i32 1479771757, ; 69: System.Collections.Immutable => 0x5833866d => 29
	i32 1490351284, ; 70: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 4
	i32 1524747670, ; 71: Plugin.LocalNotification => 0x5ae1cd96 => 23
	i32 1582372066, ; 72: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 60
	i32 1592978981, ; 73: System.Runtime.Serialization.dll => 0x5ef2ee25 => 100
	i32 1622152042, ; 74: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 71
	i32 1636350590, ; 75: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 58
	i32 1639515021, ; 76: System.Net.Http.dll => 0x61b9038d => 35
	i32 1657153582, ; 77: System.Runtime => 0x62c6282e => 39
	i32 1658241508, ; 78: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 79
	i32 1658251792, ; 79: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 86
	i32 1688112883, ; 80: Microsoft.Data.Sqlite => 0x649e8ef3 => 4
	i32 1689493916, ; 81: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 7
	i32 1698840827, ; 82: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 93
	i32 1711441057, ; 83: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 26
	i32 1729485958, ; 84: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 52
	i32 1766324549, ; 85: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 78
	i32 1770582343, ; 86: Microsoft.Extensions.Logging.dll => 0x6988f147 => 17
	i32 1776026572, ; 87: System.Core.dll => 0x69dc03cc => 30
	i32 1788241197, ; 88: Xamarin.AndroidX.Fragment => 0x6a96652d => 62
	i32 1796167890, ; 89: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 3
	i32 1808609942, ; 90: Xamarin.AndroidX.Loader => 0x6bcd3296 => 71
	i32 1813058853, ; 91: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 94
	i32 1813201214, ; 92: Xamarin.Google.Android.Material => 0x6c13413e => 86
	i32 1828688058, ; 93: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 16
	i32 1867746548, ; 94: Xamarin.Essentials.dll => 0x6f538cf4 => 85
	i32 1885316902, ; 95: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 49
	i32 1886040351, ; 96: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 9
	i32 1894524299, ; 97: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 5
	i32 1908813208, ; 98: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 89
	i32 1919157823, ; 99: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 73
	i32 1983156543, ; 100: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 93
	i32 2011961780, ; 101: System.Buffers.dll => 0x77ec19b4 => 28
	i32 2014489277, ; 102: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 9
	i32 2019465201, ; 103: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 69
	i32 2055257422, ; 104: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 67
	i32 2079903147, ; 105: System.Runtime.dll => 0x7bf8cdab => 39
	i32 2090596640, ; 106: System.Numerics.Vectors => 0x7c9bf920 => 37
	i32 2097448633, ; 107: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 64
	i32 2103459038, ; 108: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 27
	i32 2129483829, ; 109: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 88
	i32 2181898931, ; 110: Microsoft.Extensions.Options.dll => 0x820d22b3 => 18
	i32 2192057212, ; 111: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 16
	i32 2197979891, ; 112: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 15
	i32 2201231467, ; 113: System.Net.Http => 0x8334206b => 35
	i32 2217644978, ; 114: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 81
	i32 2244775296, ; 115: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 72
	i32 2252897993, ; 116: Microsoft.EntityFrameworkCore => 0x86487ec9 => 7
	i32 2256548716, ; 117: Xamarin.AndroidX.MultiDex => 0x8680336c => 73
	i32 2266799131, ; 118: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 12
	i32 2279755925, ; 119: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 75
	i32 2315684594, ; 120: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 44
	i32 2435904999, ; 121: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 106
	i32 2465273461, ; 122: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 24
	i32 2471841756, ; 123: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 124: Java.Interop.dll => 0x93918882 => 2
	i32 2501346920, ; 125: System.Data.DataSetExtensions => 0x95178668 => 95
	i32 2505896520, ; 126: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 68
	i32 2570120770, ; 127: System.Text.Encodings.Web => 0x9930ee42 => 40
	i32 2581819634, ; 128: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 82
	i32 2620871830, ; 129: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 58
	i32 2634653062, ; 130: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 8
	i32 2701096212, ; 131: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 79
	i32 2732626843, ; 132: Xamarin.AndroidX.Activity => 0xa2e0939b => 43
	i32 2737747696, ; 133: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 46
	i32 2770495804, ; 134: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 92
	i32 2778768386, ; 135: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 84
	i32 2810250172, ; 136: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 55
	i32 2819470561, ; 137: System.Xml.dll => 0xa80db4e1 => 42
	i32 2847418871, ; 138: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 88
	i32 2847789619, ; 139: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 8
	i32 2853208004, ; 140: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 84
	i32 2855708567, ; 141: Xamarin.AndroidX.Transition => 0xaa36a797 => 80
	i32 2903344695, ; 142: System.ComponentModel.Composition => 0xad0d8637 => 99
	i32 2905242038, ; 143: mscorlib.dll => 0xad2a79b6 => 21
	i32 2919462931, ; 144: System.Numerics.Vectors.dll => 0xae037813 => 37
	i32 2921128767, ; 145: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 45
	i32 2978675010, ; 146: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 61
	i32 3024354802, ; 147: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 65
	i32 3058099980, ; 148: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 91
	i32 3069363400, ; 149: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 10
	i32 3111772706, ; 150: System.Runtime.Serialization => 0xb979e222 => 100
	i32 3124832203, ; 151: System.Threading.Tasks.Extensions => 0xba4127cb => 108
	i32 3195844289, ; 152: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 10
	i32 3204380047, ; 153: System.Data.dll => 0xbefef58f => 31
	i32 3211777861, ; 154: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 60
	i32 3230466174, ; 155: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 89
	i32 3247949154, ; 156: Mono.Security => 0xc197c562 => 107
	i32 3258312781, ; 157: Xamarin.AndroidX.CardView => 0xc235e84d => 52
	i32 3265893370, ; 158: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 108
	i32 3267021929, ; 159: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 50
	i32 3280506390, ; 160: System.ComponentModel.Annotations.dll => 0xc3888e16 => 105
	i32 3317135071, ; 161: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 59
	i32 3317144872, ; 162: System.Data => 0xc5b79d28 => 31
	i32 3340431453, ; 163: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 49
	i32 3353484488, ; 164: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 64
	i32 3358260929, ; 165: System.Text.Json => 0xc82afec1 => 41
	i32 3360279109, ; 166: SQLitePCLRaw.core => 0xc849ca45 => 25
	i32 3362522851, ; 167: Xamarin.AndroidX.Core => 0xc86c06e3 => 57
	i32 3366347497, ; 168: Java.Interop => 0xc8a662e9 => 2
	i32 3374999561, ; 169: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 75
	i32 3395150330, ; 170: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 38
	i32 3404865022, ; 171: System.ServiceModel.Internals => 0xcaf21dfe => 101
	i32 3428513518, ; 172: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 14
	i32 3429136800, ; 173: System.Xml => 0xcc6479a0 => 42
	i32 3430777524, ; 174: netstandard => 0xcc7d82b4 => 1
	i32 3476120550, ; 175: Mono.Android => 0xcf3163e6 => 20
	i32 3485117614, ; 176: System.Text.Json.dll => 0xcfbaacae => 41
	i32 3486566296, ; 177: System.Transactions => 0xcfd0c798 => 102
	i32 3493954962, ; 178: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 54
	i32 3494395880, ; 179: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 90
	i32 3501239056, ; 180: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 50
	i32 3509114376, ; 181: System.Xml.Linq => 0xd128d608 => 104
	i32 3567349600, ; 182: System.ComponentModel.Composition.dll => 0xd4a16f60 => 99
	i32 3627220390, ; 183: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 74
	i32 3633644679, ; 184: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 45
	i32 3641597786, ; 185: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 67
	i32 3645089577, ; 186: System.ComponentModel.DataAnnotations => 0xd943a729 => 106
	i32 3657292374, ; 187: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 12
	i32 3672681054, ; 188: Mono.Android.dll => 0xdae8aa5e => 20
	i32 3676310014, ; 189: System.Web.Services.dll => 0xdb2009fe => 103
	i32 3682565725, ; 190: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 51
	i32 3684561358, ; 191: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 54
	i32 3689375977, ; 192: System.Drawing.Common => 0xdbe768e9 => 96
	i32 3706696989, ; 193: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 56
	i32 3718780102, ; 194: Xamarin.AndroidX.Annotation => 0xdda814c6 => 44
	i32 3748608112, ; 195: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 32
	i32 3754567612, ; 196: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 27
	i32 3786282454, ; 197: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 53
	i32 3829621856, ; 198: System.Numerics.dll => 0xe4436460 => 36
	i32 3841636137, ; 199: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 13
	i32 3885922214, ; 200: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 80
	i32 3896760992, ; 201: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 57
	i32 3920810846, ; 202: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 98
	i32 3921031405, ; 203: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 83
	i32 3945713374, ; 204: System.Data.DataSetExtensions.dll => 0xeb2ecede => 95
	i32 3955647286, ; 205: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 47
	i32 3967165417, ; 206: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 90
	i32 3970018735, ; 207: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 91
	i32 4025784931, ; 208: System.Memory => 0xeff49a63 => 34
	i32 4101842092, ; 209: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 11
	i32 4105002889, ; 210: Mono.Security.dll => 0xf4ad5f89 => 107
	i32 4126470640, ; 211: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 14
	i32 4151237749, ; 212: System.Core => 0xf76edc75 => 30
	i32 4182413190, ; 213: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 70
	i32 4213026141, ; 214: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 32
	i32 4256097574, ; 215: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 56
	i32 4260525087, ; 216: System.Buffers => 0xfdf2741f => 28
	i32 4292120959 ; 217: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 70
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [218 x i32] [
	i32 15, i32 68, i32 87, i32 22, i32 77, i32 77, i32 105, i32 53, ; 0..7
	i32 78, i32 51, i32 65, i32 103, i32 63, i32 43, i32 36, i32 66, ; 8..15
	i32 26, i32 34, i32 0, i32 85, i32 62, i32 21, i32 33, i32 63, ; 16..23
	i32 72, i32 23, i32 19, i32 102, i32 17, i32 3, i32 98, i32 59, ; 24..31
	i32 40, i32 83, i32 48, i32 104, i32 92, i32 24, i32 97, i32 18, ; 32..39
	i32 96, i32 74, i32 87, i32 22, i32 66, i32 76, i32 13, i32 47, ; 40..47
	i32 69, i32 94, i32 33, i32 5, i32 6, i32 81, i32 6, i32 48, ; 48..55
	i32 11, i32 0, i32 82, i32 25, i32 61, i32 101, i32 76, i32 55, ; 56..63
	i32 38, i32 29, i32 97, i32 46, i32 19, i32 29, i32 4, i32 23, ; 64..71
	i32 60, i32 100, i32 71, i32 58, i32 35, i32 39, i32 79, i32 86, ; 72..79
	i32 4, i32 7, i32 93, i32 26, i32 52, i32 78, i32 17, i32 30, ; 80..87
	i32 62, i32 3, i32 71, i32 94, i32 86, i32 16, i32 85, i32 49, ; 88..95
	i32 9, i32 5, i32 89, i32 73, i32 93, i32 28, i32 9, i32 69, ; 96..103
	i32 67, i32 39, i32 37, i32 64, i32 27, i32 88, i32 18, i32 16, ; 104..111
	i32 15, i32 35, i32 81, i32 72, i32 7, i32 73, i32 12, i32 75, ; 112..119
	i32 44, i32 106, i32 24, i32 1, i32 2, i32 95, i32 68, i32 40, ; 120..127
	i32 82, i32 58, i32 8, i32 79, i32 43, i32 46, i32 92, i32 84, ; 128..135
	i32 55, i32 42, i32 88, i32 8, i32 84, i32 80, i32 99, i32 21, ; 136..143
	i32 37, i32 45, i32 61, i32 65, i32 91, i32 10, i32 100, i32 108, ; 144..151
	i32 10, i32 31, i32 60, i32 89, i32 107, i32 52, i32 108, i32 50, ; 152..159
	i32 105, i32 59, i32 31, i32 49, i32 64, i32 41, i32 25, i32 57, ; 160..167
	i32 2, i32 75, i32 38, i32 101, i32 14, i32 42, i32 1, i32 20, ; 168..175
	i32 41, i32 102, i32 54, i32 90, i32 50, i32 104, i32 99, i32 74, ; 176..183
	i32 45, i32 67, i32 106, i32 12, i32 20, i32 103, i32 51, i32 54, ; 184..191
	i32 96, i32 56, i32 44, i32 32, i32 27, i32 53, i32 36, i32 13, ; 192..199
	i32 80, i32 57, i32 98, i32 83, i32 95, i32 47, i32 90, i32 91, ; 200..207
	i32 34, i32 11, i32 107, i32 14, i32 30, i32 70, i32 32, i32 56, ; 208..215
	i32 28, i32 70 ; 216..217
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
