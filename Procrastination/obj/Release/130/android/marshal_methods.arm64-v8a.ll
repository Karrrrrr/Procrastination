; ModuleID = 'obj\Release\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\130\android\marshal_methods.arm64-v8a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [134 x i64] [
	i64 15690660930947125, ; 0: Microsoft.DotNet.PlatformAbstractions.dll => 0x37be92af148835 => 4
	i64 36418902923615093, ; 1: Plugin.LocalNotification => 0x8162cc9bdf1b75 => 22
	i64 98382396393917666, ; 2: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 18
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 19
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 49
	i64 435170709725415398, ; 5: Xamarin.GooglePlayServices.Location => 0x60a097471d687e6 => 56
	i64 687654259221141486, ; 6: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 54
	i64 870603111519317375, ; 7: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 25
	i64 872800313462103108, ; 8: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 43
	i64 940822596282819491, ; 9: System.Transactions => 0xd0e792aa81923a3 => 62
	i64 1000557547492888992, ; 10: Mono.Security.dll => 0xde2b1c9cba651a0 => 65
	i64 1120440138749646132, ; 11: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 52
	i64 1301485588176585670, ; 12: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 24
	i64 1425944114962822056, ; 13: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 61
	i64 1518315023656898250, ; 14: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 26
	i64 1672383392659050004, ; 15: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 3
	i64 1731380447121279447, ; 16: Newtonsoft.Json => 0x18071957e9b889d7 => 21
	i64 1795316252682057001, ; 17: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 40
	i64 1836611346387731153, ; 18: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 49
	i64 1865037103900624886, ; 19: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 2
	i64 1981742497975770890, ; 20: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 47
	i64 2040001226662520565, ; 21: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 66
	i64 2133195048986300728, ; 22: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 21
	i64 2192948757939169934, ; 23: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 5
	i64 2262844636196693701, ; 24: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 43
	i64 2287887973817120656, ; 25: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 64
	i64 2329709569556905518, ; 26: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 46
	i64 2335503487726329082, ; 27: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 36
	i64 2337758774805907496, ; 28: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 35
	i64 2547086958574651984, ; 29: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 39
	i64 2592350477072141967, ; 30: System.Xml.dll => 0x23f9e10627330e8f => 38
	i64 2624866290265602282, ; 31: mscorlib.dll => 0x246d65fbde2db8ea => 20
	i64 2656907746661064104, ; 32: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 13
	i64 2783046991838674048, ; 33: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 35
	i64 2880551001043529105, ; 34: Procrastination.dll => 0x27f9c5dfa6986d91 => 0
	i64 3017704767998173186, ; 35: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 52
	i64 3289520064315143713, ; 36: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 45
	i64 3411255996856937470, ; 37: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 55
	i64 3523004241079211829, ; 38: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 10
	i64 3531994851595924923, ; 39: System.Numerics => 0x31042a9aade235bb => 34
	i64 3638003163729360188, ; 40: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 11
	i64 3869221888984012293, ; 41: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 16
	i64 4247996603072512073, ; 42: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 57
	i64 4337444564132831293, ; 43: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 23
	i64 4513320955448359355, ; 44: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 7
	i64 4612482779465751747, ; 45: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 5
	i64 4636684751163556186, ; 46: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 50
	i64 4794310189461587505, ; 47: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 39
	i64 5129462924058778861, ; 48: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 3
	i64 5203618020066742981, ; 49: Xamarin.Essentials => 0x4836f704f0e652c5 => 51
	i64 5507995362134886206, ; 50: System.Core.dll => 0x4c705499688c873e => 29
	i64 5528247634813456972, ; 51: Plugin.LocalNotification.dll => 0x4cb847ef1773124c => 22
	i64 6183170893902868313, ; 52: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 23
	i64 6222399776351216807, ; 53: System.Text.Json.dll => 0x565a67a0ffe264a7 => 37
	i64 6401687960814735282, ; 54: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 46
	i64 6548213210057960872, ; 55: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 42
	i64 6560151584539558821, ; 56: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 17
	i64 6876862101832370452, ; 57: System.Xml.Linq => 0x5f6f85a57d108914 => 63
	i64 7473077275758116397, ; 58: Microsoft.DotNet.PlatformAbstractions => 0x67b5b430309b3e2d => 4
	i64 7488575175965059935, ; 59: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 63
	i64 7637365915383206639, ; 60: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 51
	i64 7654504624184590948, ; 61: System.Net.Http => 0x6a3a4366801b8264 => 33
	i64 7735352534559001595, ; 62: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 60
	i64 7820441508502274321, ; 63: System.Data => 0x6c87ca1e14ff8111 => 30
	i64 7972383140441761405, ; 64: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 9
	i64 8083354569033831015, ; 65: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 45
	i64 8087206902342787202, ; 66: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 31
	i64 8167236081217502503, ; 67: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 1
	i64 8318905602908530212, ; 68: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 64
	i64 8518412311883997971, ; 69: System.Collections.Immutable => 0x76377add7c28e313 => 28
	i64 8626175481042262068, ; 70: Java.Interop => 0x77b654e585b55834 => 1
	i64 8725526185868997716, ; 71: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 31
	i64 8853378295825400934, ; 72: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 59
	i64 9111603110219107042, ; 73: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 10
	i64 9250544137016314866, ; 74: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 6
	i64 9324707631942237306, ; 75: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 40
	i64 9662334977499516867, ; 76: System.Numerics.dll => 0x8617827802b0cfc3 => 34
	i64 9808709177481450983, ; 77: Mono.Android.dll => 0x881f890734e555e7 => 19
	i64 9834056768316610435, ; 78: System.Transactions.dll => 0x8879968718899783 => 62
	i64 9864956466380592553, ; 79: Microsoft.EntityFrameworkCore.Sqlite => 0x88e75da3af4ed5a9 => 8
	i64 9875200773399460291, ; 80: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 54
	i64 9998632235833408227, ; 81: Mono.Security => 0x8ac2470b209ebae3 => 65
	i64 10038780035334861115, ; 82: System.Net.Http.dll => 0x8b50e941206af13b => 33
	i64 10229024438826829339, ; 83: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 42
	i64 10321854143672141184, ; 84: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 58
	i64 10430153318873392755, ; 85: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 41
	i64 10447083246144586668, ; 86: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 2
	i64 10811915265162633087, ; 87: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 7
	i64 11002576679268595294, ; 88: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 15
	i64 11023048688141570732, ; 89: System.Core => 0x98f9bc61168392ac => 29
	i64 11037814507248023548, ; 90: System.Xml => 0x992e31d0412bf7fc => 38
	i64 11226290749488709958, ; 91: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 17
	i64 11398376662953476300, ; 92: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x9e2f2b2f0b71c0cc => 8
	i64 11530571088791430846, ; 93: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 16
	i64 12102847907131387746, ; 94: System.Buffers => 0xa7f5f40c43256f62 => 27
	i64 12145679461940342714, ; 95: System.Text.Json => 0xa88e1f1ebcb62fba => 37
	i64 12269460666702402136, ; 96: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 28
	i64 12279246230491828964, ; 97: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 26
	i64 12451044538927396471, ; 98: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 44
	i64 12466513435562512481, ; 99: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 48
	i64 12843321153144804894, ; 100: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 18
	i64 13370592475155966277, ; 101: System.Runtime.Serialization => 0xb98de304062ea945 => 61
	i64 13454009404024712428, ; 102: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 53
	i64 13465488254036897740, ; 103: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 60
	i64 13647894001087880694, ; 104: System.Data.dll => 0xbd670f48cb071df6 => 30
	i64 13828521679616088467, ; 105: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 59
	i64 13955418299340266673, ; 106: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 14
	i64 13959074834287824816, ; 107: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 44
	i64 14133832980772275001, ; 108: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 6
	i64 14551742072151931844, ; 109: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 36
	i64 14669215534098758659, ; 110: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 13
	i64 14678510994762383812, ; 111: Xamarin.GooglePlayServices.Location.dll => 0xcbb48bfaca7a41c4 => 56
	i64 14792063746108907174, ; 112: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 53
	i64 14954917835170835695, ; 113: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 12
	i64 15227001540531775957, ; 114: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 11
	i64 15370334346939861994, ; 115: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 41
	i64 15391712275433856905, ; 116: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 12
	i64 15609085926864131306, ; 117: System.dll => 0xd89e9cf3334914ea => 32
	i64 15620595871140898079, ; 118: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 14
	i64 15930129725311349754, ; 119: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 57
	i64 15963349826457351533, ; 120: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 66
	i64 16154507427712707110, ; 121: System => 0xe03056ea4e39aa26 => 32
	i64 16321164108206115771, ; 122: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 15
	i64 16755018182064898362, ; 123: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 24
	i64 16833383113903931215, ; 124: mscorlib => 0xe99c30c1484d7f4f => 20
	i64 17022240681847004359, ; 125: Procrastination => 0xec3b25b662b19cc7 => 0
	i64 17704177640604968747, ; 126: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 48
	i64 17710060891934109755, ; 127: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 47
	i64 17838668724098252521, ; 128: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 27
	i64 17891337867145587222, ; 129: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 58
	i64 17986907704309214542, ; 130: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 55
	i64 18017743553296241350, ; 131: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 9
	i64 18370042311372477656, ; 132: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 25
	i64 18380184030268848184 ; 133: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 50
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [134 x i32] [
	i32 4, i32 22, i32 18, i32 19, i32 49, i32 56, i32 54, i32 25, ; 0..7
	i32 43, i32 62, i32 65, i32 52, i32 24, i32 61, i32 26, i32 3, ; 8..15
	i32 21, i32 40, i32 49, i32 2, i32 47, i32 66, i32 21, i32 5, ; 16..23
	i32 43, i32 64, i32 46, i32 36, i32 35, i32 39, i32 38, i32 20, ; 24..31
	i32 13, i32 35, i32 0, i32 52, i32 45, i32 55, i32 10, i32 34, ; 32..39
	i32 11, i32 16, i32 57, i32 23, i32 7, i32 5, i32 50, i32 39, ; 40..47
	i32 3, i32 51, i32 29, i32 22, i32 23, i32 37, i32 46, i32 42, ; 48..55
	i32 17, i32 63, i32 4, i32 63, i32 51, i32 33, i32 60, i32 30, ; 56..63
	i32 9, i32 45, i32 31, i32 1, i32 64, i32 28, i32 1, i32 31, ; 64..71
	i32 59, i32 10, i32 6, i32 40, i32 34, i32 19, i32 62, i32 8, ; 72..79
	i32 54, i32 65, i32 33, i32 42, i32 58, i32 41, i32 2, i32 7, ; 80..87
	i32 15, i32 29, i32 38, i32 17, i32 8, i32 16, i32 27, i32 37, ; 88..95
	i32 28, i32 26, i32 44, i32 48, i32 18, i32 61, i32 53, i32 60, ; 96..103
	i32 30, i32 59, i32 14, i32 44, i32 6, i32 36, i32 13, i32 56, ; 104..111
	i32 53, i32 12, i32 11, i32 41, i32 12, i32 32, i32 14, i32 57, ; 112..119
	i32 66, i32 32, i32 15, i32 24, i32 20, i32 0, i32 48, i32 47, ; 120..127
	i32 27, i32 58, i32 55, i32 9, i32 25, i32 50 ; 128..133
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
