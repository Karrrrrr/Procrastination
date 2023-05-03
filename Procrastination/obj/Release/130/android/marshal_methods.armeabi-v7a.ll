; ModuleID = 'obj\Release\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [134 x i32] [
	i32 26230656, ; 0: Microsoft.Extensions.DependencyModel => 0x1903f80 => 14
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 53
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 21
	i32 318968648, ; 3: Xamarin.AndroidX.Activity.dll => 0x13031348 => 39
	i32 321597661, ; 4: System.Numerics => 0x132b30dd => 34
	i32 342366114, ; 5: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 45
	i32 347068432, ; 6: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 25
	i32 426216588, ; 7: Procrastination => 0x19678c8c => 0
	i32 442521989, ; 8: Xamarin.Essentials => 0x1a605985 => 51
	i32 450948140, ; 9: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 44
	i32 465846621, ; 10: mscorlib => 0x1bc4415d => 20
	i32 469710990, ; 11: System.dll => 0x1bff388e => 32
	i32 504143952, ; 12: Plugin.LocalNotification.dll => 0x1e0ca050 => 22
	i32 513247710, ; 13: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 18
	i32 526420162, ; 14: System.Transactions.dll => 0x1f6088c2 => 62
	i32 539058512, ; 15: Microsoft.Extensions.Logging => 0x20216150 => 16
	i32 548916678, ; 16: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 2
	i32 627609679, ; 17: Xamarin.AndroidX.CustomView => 0x2568904f => 42
	i32 662205335, ; 18: System.Text.Encodings.Web.dll => 0x27787397 => 36
	i32 663517072, ; 19: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 50
	i32 690569205, ; 20: System.Xml.Linq.dll => 0x29293ff5 => 63
	i32 700284507, ; 21: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 58
	i32 748832960, ; 22: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 23
	i32 789151979, ; 23: Microsoft.Extensions.Options => 0x2f0980eb => 17
	i32 928116545, ; 24: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 53
	i32 955402788, ; 25: Newtonsoft.Json => 0x38f24a24 => 21
	i32 967690846, ; 26: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 45
	i32 1012816738, ; 27: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 49
	i32 1028951442, ; 28: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 12
	i32 1035644815, ; 29: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 40
	i32 1052210849, ; 30: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 47
	i32 1084122840, ; 31: Xamarin.Kotlin.StdLib => 0x409e66d8 => 60
	i32 1098259244, ; 32: System => 0x41761b2c => 32
	i32 1099692271, ; 33: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 4
	i32 1157931901, ; 34: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 5
	i32 1202000627, ; 35: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 5
	i32 1204575371, ; 36: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 10
	i32 1206604989, ; 37: Procrastination.dll => 0x47eb54bd => 0
	i32 1292207520, ; 38: SQLitePCLRaw.core.dll => 0x4d0585a0 => 24
	i32 1293217323, ; 39: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 43
	i32 1376866003, ; 40: Xamarin.AndroidX.SavedState => 0x52114ed3 => 49
	i32 1411638395, ; 41: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 35
	i32 1461234159, ; 42: System.Collections.Immutable.dll => 0x5718a9ef => 28
	i32 1470490898, ; 43: Microsoft.Extensions.Primitives => 0x57a5e912 => 18
	i32 1479771757, ; 44: System.Collections.Immutable => 0x5833866d => 28
	i32 1490351284, ; 45: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 3
	i32 1524747670, ; 46: Plugin.LocalNotification => 0x5ae1cd96 => 22
	i32 1592978981, ; 47: System.Runtime.Serialization.dll => 0x5ef2ee25 => 61
	i32 1622152042, ; 48: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 48
	i32 1639515021, ; 49: System.Net.Http.dll => 0x61b9038d => 33
	i32 1658251792, ; 50: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 52
	i32 1688112883, ; 51: Microsoft.Data.Sqlite => 0x649e8ef3 => 3
	i32 1689493916, ; 52: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 6
	i32 1698840827, ; 53: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 59
	i32 1711441057, ; 54: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 25
	i32 1770582343, ; 55: Microsoft.Extensions.Logging.dll => 0x6988f147 => 16
	i32 1776026572, ; 56: System.Core.dll => 0x69dc03cc => 29
	i32 1788241197, ; 57: Xamarin.AndroidX.Fragment => 0x6a96652d => 44
	i32 1796167890, ; 58: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 2
	i32 1808609942, ; 59: Xamarin.AndroidX.Loader => 0x6bcd3296 => 48
	i32 1813058853, ; 60: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 60
	i32 1813201214, ; 61: Xamarin.Google.Android.Material => 0x6c13413e => 52
	i32 1828688058, ; 62: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 15
	i32 1867746548, ; 63: Xamarin.Essentials.dll => 0x6f538cf4 => 51
	i32 1886040351, ; 64: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 8
	i32 1894524299, ; 65: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 4
	i32 1908813208, ; 66: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 55
	i32 1983156543, ; 67: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 59
	i32 2011961780, ; 68: System.Buffers.dll => 0x77ec19b4 => 27
	i32 2014489277, ; 69: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 8
	i32 2019465201, ; 70: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 47
	i32 2055257422, ; 71: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 46
	i32 2103459038, ; 72: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 26
	i32 2129483829, ; 73: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 54
	i32 2181898931, ; 74: Microsoft.Extensions.Options.dll => 0x820d22b3 => 17
	i32 2192057212, ; 75: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 15
	i32 2197979891, ; 76: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 14
	i32 2201231467, ; 77: System.Net.Http => 0x8334206b => 33
	i32 2252897993, ; 78: Microsoft.EntityFrameworkCore => 0x86487ec9 => 6
	i32 2266799131, ; 79: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 11
	i32 2435904999, ; 80: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 64
	i32 2465273461, ; 81: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 23
	i32 2475788418, ; 82: Java.Interop.dll => 0x93918882 => 1
	i32 2570120770, ; 83: System.Text.Encodings.Web => 0x9930ee42 => 36
	i32 2634653062, ; 84: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 7
	i32 2732626843, ; 85: Xamarin.AndroidX.Activity => 0xa2e0939b => 39
	i32 2770495804, ; 86: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 58
	i32 2819470561, ; 87: System.Xml.dll => 0xa80db4e1 => 38
	i32 2847418871, ; 88: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 54
	i32 2847789619, ; 89: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 7
	i32 2905242038, ; 90: mscorlib.dll => 0xad2a79b6 => 20
	i32 2978675010, ; 91: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 43
	i32 3058099980, ; 92: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 57
	i32 3069363400, ; 93: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 9
	i32 3111772706, ; 94: System.Runtime.Serialization => 0xb979e222 => 61
	i32 3124832203, ; 95: System.Threading.Tasks.Extensions => 0xba4127cb => 66
	i32 3195844289, ; 96: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 9
	i32 3204380047, ; 97: System.Data.dll => 0xbefef58f => 30
	i32 3230466174, ; 98: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 55
	i32 3247949154, ; 99: Mono.Security => 0xc197c562 => 65
	i32 3265893370, ; 100: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 66
	i32 3317135071, ; 101: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 42
	i32 3317144872, ; 102: System.Data => 0xc5b79d28 => 30
	i32 3358260929, ; 103: System.Text.Json => 0xc82afec1 => 37
	i32 3360279109, ; 104: SQLitePCLRaw.core => 0xc849ca45 => 24
	i32 3362522851, ; 105: Xamarin.AndroidX.Core => 0xc86c06e3 => 41
	i32 3366347497, ; 106: Java.Interop => 0xc8a662e9 => 1
	i32 3395150330, ; 107: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 35
	i32 3428513518, ; 108: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 13
	i32 3429136800, ; 109: System.Xml => 0xcc6479a0 => 38
	i32 3476120550, ; 110: Mono.Android => 0xcf3163e6 => 19
	i32 3485117614, ; 111: System.Text.Json.dll => 0xcfbaacae => 37
	i32 3486566296, ; 112: System.Transactions => 0xcfd0c798 => 62
	i32 3494395880, ; 113: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 56
	i32 3509114376, ; 114: System.Xml.Linq => 0xd128d608 => 63
	i32 3641597786, ; 115: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 46
	i32 3645089577, ; 116: System.ComponentModel.DataAnnotations => 0xd943a729 => 64
	i32 3657292374, ; 117: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 11
	i32 3672681054, ; 118: Mono.Android.dll => 0xdae8aa5e => 19
	i32 3748608112, ; 119: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 31
	i32 3754567612, ; 120: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 26
	i32 3829621856, ; 121: System.Numerics.dll => 0xe4436460 => 34
	i32 3841636137, ; 122: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 12
	i32 3896760992, ; 123: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 41
	i32 3921031405, ; 124: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 50
	i32 3955647286, ; 125: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 40
	i32 3967165417, ; 126: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 56
	i32 3970018735, ; 127: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 57
	i32 4101842092, ; 128: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 10
	i32 4105002889, ; 129: Mono.Security.dll => 0xf4ad5f89 => 65
	i32 4126470640, ; 130: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 13
	i32 4151237749, ; 131: System.Core => 0xf76edc75 => 29
	i32 4213026141, ; 132: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 31
	i32 4260525087 ; 133: System.Buffers => 0xfdf2741f => 27
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [134 x i32] [
	i32 14, i32 53, i32 21, i32 39, i32 34, i32 45, i32 25, i32 0, ; 0..7
	i32 51, i32 44, i32 20, i32 32, i32 22, i32 18, i32 62, i32 16, ; 8..15
	i32 2, i32 42, i32 36, i32 50, i32 63, i32 58, i32 23, i32 17, ; 16..23
	i32 53, i32 21, i32 45, i32 49, i32 12, i32 40, i32 47, i32 60, ; 24..31
	i32 32, i32 4, i32 5, i32 5, i32 10, i32 0, i32 24, i32 43, ; 32..39
	i32 49, i32 35, i32 28, i32 18, i32 28, i32 3, i32 22, i32 61, ; 40..47
	i32 48, i32 33, i32 52, i32 3, i32 6, i32 59, i32 25, i32 16, ; 48..55
	i32 29, i32 44, i32 2, i32 48, i32 60, i32 52, i32 15, i32 51, ; 56..63
	i32 8, i32 4, i32 55, i32 59, i32 27, i32 8, i32 47, i32 46, ; 64..71
	i32 26, i32 54, i32 17, i32 15, i32 14, i32 33, i32 6, i32 11, ; 72..79
	i32 64, i32 23, i32 1, i32 36, i32 7, i32 39, i32 58, i32 38, ; 80..87
	i32 54, i32 7, i32 20, i32 43, i32 57, i32 9, i32 61, i32 66, ; 88..95
	i32 9, i32 30, i32 55, i32 65, i32 66, i32 42, i32 30, i32 37, ; 96..103
	i32 24, i32 41, i32 1, i32 35, i32 13, i32 38, i32 19, i32 37, ; 104..111
	i32 62, i32 56, i32 63, i32 46, i32 64, i32 11, i32 19, i32 31, ; 112..119
	i32 26, i32 34, i32 12, i32 41, i32 50, i32 40, i32 56, i32 57, ; 120..127
	i32 10, i32 65, i32 13, i32 29, i32 31, i32 27 ; 128..133
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
