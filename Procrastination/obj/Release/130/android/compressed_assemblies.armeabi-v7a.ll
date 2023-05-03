; ModuleID = 'obj\Release\130\android\compressed_assemblies.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\compressed_assemblies.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.CompressedAssemblyDescriptor = type {
	i32,; uint32_t uncompressed_file_size
	i8,; bool loaded
	i8*; uint8_t* data
}

%struct.CompressedAssemblies = type {
	i32,; uint32_t count
	%struct.CompressedAssemblyDescriptor*; CompressedAssemblyDescriptor* descriptors
}
@__CompressedAssemblyDescriptor_data_0 = internal global [168960 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_1 = internal global [5120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_2 = internal global [140800 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_3 = internal global [13824 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_4 = internal global [18944 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_5 = internal global [1239552 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_6 = internal global [175616 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_7 = internal global [1811456 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_8 = internal global [16896 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_9 = internal global [23552 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_10 = internal global [11264 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_11 = internal global [36352 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_12 = internal global [75776 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_13 = internal global [59392 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_14 = internal global [54784 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_15 = internal global [37888 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_16 = internal global [52736 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_17 = internal global [36352 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_18 = internal global [1507328 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_19 = internal global [121856 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_20 = internal global [690176 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_21 = internal global [67584 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_22 = internal global [160768 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_23 = internal global [5120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_24 = internal global [46080 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_25 = internal global [5120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_26 = internal global [35328 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_27 = internal global [14752 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_28 = internal global [178176 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_29 = internal global [6656 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_30 = internal global [552960 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_31 = internal global [806912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_32 = internal global [147456 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_33 = internal global [212992 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_34 = internal global [39424 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_35 = internal global [8192 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_36 = internal global [6144 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_37 = internal global [55296 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_38 = internal global [340992 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_39 = internal global [15264 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_40 = internal global [15360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_41 = internal global [65024 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_42 = internal global [1318912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_43 = internal global [888320 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_44 = internal global [57344 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_45 = internal global [325120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_46 = internal global [376320 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_47 = internal global [9216 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_48 = internal global [40960 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_49 = internal global [197120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_50 = internal global [15872 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_51 = internal global [16384 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_52 = internal global [17408 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_53 = internal global [36864 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_54 = internal global [13312 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_55 = internal global [10752 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_56 = internal global [26112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_57 = internal global [185344 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_58 = internal global [23480 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_59 = internal global [182784 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_60 = internal global [60416 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_61 = internal global [104448 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_62 = internal global [50688 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_63 = internal global [148384 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_64 = internal global [15264 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_65 = internal global [2136992 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_66 = internal global [2168320 x i8] zeroinitializer, align 1


; Compressed assembly data storage
@compressed_assembly_descriptors = internal global [67 x %struct.CompressedAssemblyDescriptor] [
	; 0
	%struct.CompressedAssemblyDescriptor {
		i32 168960, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([168960 x i8], [168960 x i8]* @__CompressedAssemblyDescriptor_data_0, i32 0, i32 0); data
	}, 
	; 1
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([5120 x i8], [5120 x i8]* @__CompressedAssemblyDescriptor_data_1, i32 0, i32 0); data
	}, 
	; 2
	%struct.CompressedAssemblyDescriptor {
		i32 140800, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([140800 x i8], [140800 x i8]* @__CompressedAssemblyDescriptor_data_2, i32 0, i32 0); data
	}, 
	; 3
	%struct.CompressedAssemblyDescriptor {
		i32 13824, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([13824 x i8], [13824 x i8]* @__CompressedAssemblyDescriptor_data_3, i32 0, i32 0); data
	}, 
	; 4
	%struct.CompressedAssemblyDescriptor {
		i32 18944, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([18944 x i8], [18944 x i8]* @__CompressedAssemblyDescriptor_data_4, i32 0, i32 0); data
	}, 
	; 5
	%struct.CompressedAssemblyDescriptor {
		i32 1239552, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1239552 x i8], [1239552 x i8]* @__CompressedAssemblyDescriptor_data_5, i32 0, i32 0); data
	}, 
	; 6
	%struct.CompressedAssemblyDescriptor {
		i32 175616, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([175616 x i8], [175616 x i8]* @__CompressedAssemblyDescriptor_data_6, i32 0, i32 0); data
	}, 
	; 7
	%struct.CompressedAssemblyDescriptor {
		i32 1811456, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1811456 x i8], [1811456 x i8]* @__CompressedAssemblyDescriptor_data_7, i32 0, i32 0); data
	}, 
	; 8
	%struct.CompressedAssemblyDescriptor {
		i32 16896, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16896 x i8], [16896 x i8]* @__CompressedAssemblyDescriptor_data_8, i32 0, i32 0); data
	}, 
	; 9
	%struct.CompressedAssemblyDescriptor {
		i32 23552, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([23552 x i8], [23552 x i8]* @__CompressedAssemblyDescriptor_data_9, i32 0, i32 0); data
	}, 
	; 10
	%struct.CompressedAssemblyDescriptor {
		i32 11264, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([11264 x i8], [11264 x i8]* @__CompressedAssemblyDescriptor_data_10, i32 0, i32 0); data
	}, 
	; 11
	%struct.CompressedAssemblyDescriptor {
		i32 36352, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([36352 x i8], [36352 x i8]* @__CompressedAssemblyDescriptor_data_11, i32 0, i32 0); data
	}, 
	; 12
	%struct.CompressedAssemblyDescriptor {
		i32 75776, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([75776 x i8], [75776 x i8]* @__CompressedAssemblyDescriptor_data_12, i32 0, i32 0); data
	}, 
	; 13
	%struct.CompressedAssemblyDescriptor {
		i32 59392, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([59392 x i8], [59392 x i8]* @__CompressedAssemblyDescriptor_data_13, i32 0, i32 0); data
	}, 
	; 14
	%struct.CompressedAssemblyDescriptor {
		i32 54784, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([54784 x i8], [54784 x i8]* @__CompressedAssemblyDescriptor_data_14, i32 0, i32 0); data
	}, 
	; 15
	%struct.CompressedAssemblyDescriptor {
		i32 37888, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([37888 x i8], [37888 x i8]* @__CompressedAssemblyDescriptor_data_15, i32 0, i32 0); data
	}, 
	; 16
	%struct.CompressedAssemblyDescriptor {
		i32 52736, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([52736 x i8], [52736 x i8]* @__CompressedAssemblyDescriptor_data_16, i32 0, i32 0); data
	}, 
	; 17
	%struct.CompressedAssemblyDescriptor {
		i32 36352, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([36352 x i8], [36352 x i8]* @__CompressedAssemblyDescriptor_data_17, i32 0, i32 0); data
	}, 
	; 18
	%struct.CompressedAssemblyDescriptor {
		i32 1507328, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1507328 x i8], [1507328 x i8]* @__CompressedAssemblyDescriptor_data_18, i32 0, i32 0); data
	}, 
	; 19
	%struct.CompressedAssemblyDescriptor {
		i32 121856, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([121856 x i8], [121856 x i8]* @__CompressedAssemblyDescriptor_data_19, i32 0, i32 0); data
	}, 
	; 20
	%struct.CompressedAssemblyDescriptor {
		i32 690176, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([690176 x i8], [690176 x i8]* @__CompressedAssemblyDescriptor_data_20, i32 0, i32 0); data
	}, 
	; 21
	%struct.CompressedAssemblyDescriptor {
		i32 67584, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([67584 x i8], [67584 x i8]* @__CompressedAssemblyDescriptor_data_21, i32 0, i32 0); data
	}, 
	; 22
	%struct.CompressedAssemblyDescriptor {
		i32 160768, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([160768 x i8], [160768 x i8]* @__CompressedAssemblyDescriptor_data_22, i32 0, i32 0); data
	}, 
	; 23
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([5120 x i8], [5120 x i8]* @__CompressedAssemblyDescriptor_data_23, i32 0, i32 0); data
	}, 
	; 24
	%struct.CompressedAssemblyDescriptor {
		i32 46080, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([46080 x i8], [46080 x i8]* @__CompressedAssemblyDescriptor_data_24, i32 0, i32 0); data
	}, 
	; 25
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([5120 x i8], [5120 x i8]* @__CompressedAssemblyDescriptor_data_25, i32 0, i32 0); data
	}, 
	; 26
	%struct.CompressedAssemblyDescriptor {
		i32 35328, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([35328 x i8], [35328 x i8]* @__CompressedAssemblyDescriptor_data_26, i32 0, i32 0); data
	}, 
	; 27
	%struct.CompressedAssemblyDescriptor {
		i32 14752, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([14752 x i8], [14752 x i8]* @__CompressedAssemblyDescriptor_data_27, i32 0, i32 0); data
	}, 
	; 28
	%struct.CompressedAssemblyDescriptor {
		i32 178176, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([178176 x i8], [178176 x i8]* @__CompressedAssemblyDescriptor_data_28, i32 0, i32 0); data
	}, 
	; 29
	%struct.CompressedAssemblyDescriptor {
		i32 6656, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([6656 x i8], [6656 x i8]* @__CompressedAssemblyDescriptor_data_29, i32 0, i32 0); data
	}, 
	; 30
	%struct.CompressedAssemblyDescriptor {
		i32 552960, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([552960 x i8], [552960 x i8]* @__CompressedAssemblyDescriptor_data_30, i32 0, i32 0); data
	}, 
	; 31
	%struct.CompressedAssemblyDescriptor {
		i32 806912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([806912 x i8], [806912 x i8]* @__CompressedAssemblyDescriptor_data_31, i32 0, i32 0); data
	}, 
	; 32
	%struct.CompressedAssemblyDescriptor {
		i32 147456, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([147456 x i8], [147456 x i8]* @__CompressedAssemblyDescriptor_data_32, i32 0, i32 0); data
	}, 
	; 33
	%struct.CompressedAssemblyDescriptor {
		i32 212992, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([212992 x i8], [212992 x i8]* @__CompressedAssemblyDescriptor_data_33, i32 0, i32 0); data
	}, 
	; 34
	%struct.CompressedAssemblyDescriptor {
		i32 39424, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([39424 x i8], [39424 x i8]* @__CompressedAssemblyDescriptor_data_34, i32 0, i32 0); data
	}, 
	; 35
	%struct.CompressedAssemblyDescriptor {
		i32 8192, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @__CompressedAssemblyDescriptor_data_35, i32 0, i32 0); data
	}, 
	; 36
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([6144 x i8], [6144 x i8]* @__CompressedAssemblyDescriptor_data_36, i32 0, i32 0); data
	}, 
	; 37
	%struct.CompressedAssemblyDescriptor {
		i32 55296, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([55296 x i8], [55296 x i8]* @__CompressedAssemblyDescriptor_data_37, i32 0, i32 0); data
	}, 
	; 38
	%struct.CompressedAssemblyDescriptor {
		i32 340992, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([340992 x i8], [340992 x i8]* @__CompressedAssemblyDescriptor_data_38, i32 0, i32 0); data
	}, 
	; 39
	%struct.CompressedAssemblyDescriptor {
		i32 15264, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15264 x i8], [15264 x i8]* @__CompressedAssemblyDescriptor_data_39, i32 0, i32 0); data
	}, 
	; 40
	%struct.CompressedAssemblyDescriptor {
		i32 15360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15360 x i8], [15360 x i8]* @__CompressedAssemblyDescriptor_data_40, i32 0, i32 0); data
	}, 
	; 41
	%struct.CompressedAssemblyDescriptor {
		i32 65024, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([65024 x i8], [65024 x i8]* @__CompressedAssemblyDescriptor_data_41, i32 0, i32 0); data
	}, 
	; 42
	%struct.CompressedAssemblyDescriptor {
		i32 1318912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1318912 x i8], [1318912 x i8]* @__CompressedAssemblyDescriptor_data_42, i32 0, i32 0); data
	}, 
	; 43
	%struct.CompressedAssemblyDescriptor {
		i32 888320, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([888320 x i8], [888320 x i8]* @__CompressedAssemblyDescriptor_data_43, i32 0, i32 0); data
	}, 
	; 44
	%struct.CompressedAssemblyDescriptor {
		i32 57344, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([57344 x i8], [57344 x i8]* @__CompressedAssemblyDescriptor_data_44, i32 0, i32 0); data
	}, 
	; 45
	%struct.CompressedAssemblyDescriptor {
		i32 325120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([325120 x i8], [325120 x i8]* @__CompressedAssemblyDescriptor_data_45, i32 0, i32 0); data
	}, 
	; 46
	%struct.CompressedAssemblyDescriptor {
		i32 376320, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([376320 x i8], [376320 x i8]* @__CompressedAssemblyDescriptor_data_46, i32 0, i32 0); data
	}, 
	; 47
	%struct.CompressedAssemblyDescriptor {
		i32 9216, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([9216 x i8], [9216 x i8]* @__CompressedAssemblyDescriptor_data_47, i32 0, i32 0); data
	}, 
	; 48
	%struct.CompressedAssemblyDescriptor {
		i32 40960, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([40960 x i8], [40960 x i8]* @__CompressedAssemblyDescriptor_data_48, i32 0, i32 0); data
	}, 
	; 49
	%struct.CompressedAssemblyDescriptor {
		i32 197120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([197120 x i8], [197120 x i8]* @__CompressedAssemblyDescriptor_data_49, i32 0, i32 0); data
	}, 
	; 50
	%struct.CompressedAssemblyDescriptor {
		i32 15872, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15872 x i8], [15872 x i8]* @__CompressedAssemblyDescriptor_data_50, i32 0, i32 0); data
	}, 
	; 51
	%struct.CompressedAssemblyDescriptor {
		i32 16384, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @__CompressedAssemblyDescriptor_data_51, i32 0, i32 0); data
	}, 
	; 52
	%struct.CompressedAssemblyDescriptor {
		i32 17408, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([17408 x i8], [17408 x i8]* @__CompressedAssemblyDescriptor_data_52, i32 0, i32 0); data
	}, 
	; 53
	%struct.CompressedAssemblyDescriptor {
		i32 36864, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([36864 x i8], [36864 x i8]* @__CompressedAssemblyDescriptor_data_53, i32 0, i32 0); data
	}, 
	; 54
	%struct.CompressedAssemblyDescriptor {
		i32 13312, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([13312 x i8], [13312 x i8]* @__CompressedAssemblyDescriptor_data_54, i32 0, i32 0); data
	}, 
	; 55
	%struct.CompressedAssemblyDescriptor {
		i32 10752, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([10752 x i8], [10752 x i8]* @__CompressedAssemblyDescriptor_data_55, i32 0, i32 0); data
	}, 
	; 56
	%struct.CompressedAssemblyDescriptor {
		i32 26112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([26112 x i8], [26112 x i8]* @__CompressedAssemblyDescriptor_data_56, i32 0, i32 0); data
	}, 
	; 57
	%struct.CompressedAssemblyDescriptor {
		i32 185344, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([185344 x i8], [185344 x i8]* @__CompressedAssemblyDescriptor_data_57, i32 0, i32 0); data
	}, 
	; 58
	%struct.CompressedAssemblyDescriptor {
		i32 23480, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([23480 x i8], [23480 x i8]* @__CompressedAssemblyDescriptor_data_58, i32 0, i32 0); data
	}, 
	; 59
	%struct.CompressedAssemblyDescriptor {
		i32 182784, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([182784 x i8], [182784 x i8]* @__CompressedAssemblyDescriptor_data_59, i32 0, i32 0); data
	}, 
	; 60
	%struct.CompressedAssemblyDescriptor {
		i32 60416, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([60416 x i8], [60416 x i8]* @__CompressedAssemblyDescriptor_data_60, i32 0, i32 0); data
	}, 
	; 61
	%struct.CompressedAssemblyDescriptor {
		i32 104448, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([104448 x i8], [104448 x i8]* @__CompressedAssemblyDescriptor_data_61, i32 0, i32 0); data
	}, 
	; 62
	%struct.CompressedAssemblyDescriptor {
		i32 50688, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([50688 x i8], [50688 x i8]* @__CompressedAssemblyDescriptor_data_62, i32 0, i32 0); data
	}, 
	; 63
	%struct.CompressedAssemblyDescriptor {
		i32 148384, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([148384 x i8], [148384 x i8]* @__CompressedAssemblyDescriptor_data_63, i32 0, i32 0); data
	}, 
	; 64
	%struct.CompressedAssemblyDescriptor {
		i32 15264, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15264 x i8], [15264 x i8]* @__CompressedAssemblyDescriptor_data_64, i32 0, i32 0); data
	}, 
	; 65
	%struct.CompressedAssemblyDescriptor {
		i32 2136992, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2136992 x i8], [2136992 x i8]* @__CompressedAssemblyDescriptor_data_65, i32 0, i32 0); data
	}, 
	; 66
	%struct.CompressedAssemblyDescriptor {
		i32 2168320, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2168320 x i8], [2168320 x i8]* @__CompressedAssemblyDescriptor_data_66, i32 0, i32 0); data
	}
], align 4; end of 'compressed_assembly_descriptors' array


; compressed_assemblies
@compressed_assemblies = local_unnamed_addr global %struct.CompressedAssemblies {
	i32 67, ; count
	%struct.CompressedAssemblyDescriptor* getelementptr inbounds ([67 x %struct.CompressedAssemblyDescriptor], [67 x %struct.CompressedAssemblyDescriptor]* @compressed_assembly_descriptors, i32 0, i32 0); descriptors
}, align 4


!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
