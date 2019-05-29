; ModuleID = '/home/jl/testspace/coreutils-bc/ar-2/seq.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.quoting_options = type { i32, [8 x i32] }
%struct.slotvec = type { i64, i8* }
%struct.operand = type { x86_fp80, i64, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@after_divergence = global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"KLEE_DIVERGENCE_FILE\00", align 1
@klee_div_file_env = global i8* getelementptr inbounds ([21 x i8]* @.str, i32 0, i32 0), align 8
@.str1 = private unnamed_addr constant [21 x i8] c"EKLEEPSE_MARKER_FILE\00", align 1
@klee_div_marker_file_env = global i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), align 8
@.str2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str4 = private unnamed_addr constant [26 x i8] c"fopen failed for file %s\0A\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str6 = private unnamed_addr constant [26 x i8] c"getenv failed for key %s\0A\00", align 1
@.str7 = private unnamed_addr constant [39 x i8] c"Try `%s --help' for more information.\0A\00", align 1
@program_name = common global i8* null, align 8
@.str8 = private unnamed_addr constant [104 x i8] c"Usage: %s [OPTION]... LAST\0A  or:  %s [OPTION]... FIRST LAST\0A  or:  %s [OPTION]... FIRST INCREMENT LAST\0A\00", align 1
@.str9 = private unnamed_addr constant [270 x i8] c"Print numbers from FIRST to LAST, in steps of INCREMENT.\0A\0A  -f, --format=FORMAT      use printf style floating-point FORMAT\0A  -s, --separator=STRING   use STRING to separate numbers (default: \5Cn)\0A  -w, --equal-width        equalize width by padding with leading zeroes\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str10 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str11 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str12 = private unnamed_addr constant [332 x i8] c"\0AIf FIRST or INCREMENT is omitted, it defaults to 1.  That is, an\0Aomitted INCREMENT defaults to 1 even when LAST is smaller than FIRST.\0AFIRST, INCREMENT, and LAST are interpreted as floating point values.\0AINCREMENT is usually positive if FIRST is smaller than LAST, and\0AINCREMENT is usually negative if FIRST is greater than LAST.\0A\00", align 1
@.str13 = private unnamed_addr constant [208 x i8] c"FORMAT must be suitable for printing one argument of type `double';\0Ait defaults to %.PRECf if FIRST, INCREMENT, and LAST are all fixed point\0Adecimal numbers with maximum precision PREC, and to %g otherwise.\0A\00", align 1
@main.first = private unnamed_addr constant { x86_fp80, i64, i32, [4 x i8] } { x86_fp80 0xK3FFF8000000000000000, i64 1, i32 0, [4 x i8] undef }, align 16
@main.step = private unnamed_addr constant { x86_fp80, i64, i32, [4 x i8] } { x86_fp80 0xK3FFF8000000000000000, i64 1, i32 0, [4 x i8] undef }, align 16
@.str14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@equal_width = internal global i8 0, align 1
@.str15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@separator = internal global i8* null, align 8
@optind = external global i32
@.str16 = private unnamed_addr constant [7 x i8] c"+f:s:w\00", align 1
@optarg = external global i8*
@.str17 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"6.9+\00", align 1
@.str20 = private unnamed_addr constant [15 x i8] c"Ulrich Drepper\00", align 1
@.str21 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str22 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str23 = private unnamed_addr constant [26 x i8] c"invalid format string: %s\00", align 1
@.str24 = private unnamed_addr constant [69 x i8] c"format string may not be specified when printing equal width strings\00", align 1
@terminator = internal constant [2 x i8] c"\0A\00", align 1
@get_default_format.format_buf = internal global [28 x i8] zeroinitializer, align 16
@.str25 = private unnamed_addr constant [11 x i8] c"%%0%d.%dLf\00", align 1
@.str26 = private unnamed_addr constant [8 x i8] c"%%.%dLf\00", align 1
@.str27 = private unnamed_addr constant [4 x i8] c"%Lg\00", align 1
@.str28 = private unnamed_addr constant [36 x i8] c"invalid floating point argument: %s\00", align 1
@.str29 = private unnamed_addr constant [5 x i8] c"eExX\00", align 1
@.str30 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"eE\00", align 1
@.str32 = private unnamed_addr constant [7 x i8] c"-+#0 '\00", align 1
@.str33 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str34 = private unnamed_addr constant [9 x i8] c"efgaEFGA\00", align 1
@.str35 = private unnamed_addr constant [12 x i8] c"equal-width\00", align 1
@.str36 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str37 = private unnamed_addr constant [10 x i8] c"separator\00", align 1
@.str38 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str39 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@long_options = internal constant <{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }> <{ { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([12 x i8]* @.str35, i32 0, i32 0), i32 0, i32* null, i32 119, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str36, i32 0, i32 0), i32 1, i32* null, i32 102, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([10 x i8]* @.str37, i32 0, i32 0), i32 1, i32* null, i32 115, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str38, i32 0, i32 0), i32 0, i32* null, i32 -130, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([8 x i8]* @.str39, i32 0, i32 0), i32 0, i32* null, i32 -131, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* null, i32 0, i32* null, i32 0, [4 x i8] undef } }>, align 16
@.str40 = private unnamed_addr constant [23 x i8] c"\0AReport bugs to <%s>.\0A\00", align 1
@.str41 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str42 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str143 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str244 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str345 = private unnamed_addr constant [202 x i8] c"\0ALicense GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl.html>\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str446 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str547 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str648 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str749 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str850 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str951 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str1052 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str1153 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str1254 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str1355 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str161 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str64 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal global i8* null, align 8
@.str67 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str168 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str269 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@.str76 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str177 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str278 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str379 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str480 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str581 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str682 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = constant [8 x i8*] [i8* getelementptr inbounds ([8 x i8]* @.str76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str177, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str278, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str379, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str480, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str581, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str682, i32 0, i32 0), i8* null], align 16
@quoting_style_vals = constant [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], align 16
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 4
@slotvec = internal global %struct.slotvec* @slotvec0, align 8
@nslots = internal global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str783 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str884 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str985 = private unnamed_addr constant [2 x i8] c"'\00", align 1

; Function Attrs: nounwind uwtable
define i64 @klee_change(i64 %x, i64 %y) #0 {
entry:
  %retval = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %file = alloca i8*, align 8
  %marker_file = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %x.addr}, metadata !429), !dbg !430
  store i64 %y, i64* %y.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %y.addr}, metadata !431), !dbg !430
  %0 = load i64* %x.addr, align 8, !dbg !432
  %1 = load i64* %y.addr, align 8, !dbg !432
  %cmp = icmp eq i64 %0, %1, !dbg !432
  br i1 %cmp, label %if.then, label %if.else, !dbg !432

if.then:                                          ; preds = %entry
  %2 = load i64* %x.addr, align 8, !dbg !434
  store i64 %2, i64* %retval, !dbg !434
  br label %return, !dbg !434

if.else:                                          ; preds = %entry
  %3 = load i32* @after_divergence, align 4, !dbg !435
  %tobool = icmp ne i32 %3, 0, !dbg !435
  br i1 %tobool, label %if.end29, label %if.then1, !dbg !435

if.then1:                                         ; preds = %if.else
  call void @llvm.dbg.declare(metadata !{i8** %file}, metadata !438), !dbg !440
  %4 = load i8** @klee_div_file_env, align 8, !dbg !440
  %call = call i8* @getenv(i8* %4) #7, !dbg !440
  store i8* %call, i8** %file, align 8, !dbg !440
  call void @llvm.dbg.declare(metadata !{i8** %marker_file}, metadata !441), !dbg !442
  %5 = load i8** @klee_div_marker_file_env, align 8, !dbg !442
  %call2 = call i8* @getenv(i8* %5) #7, !dbg !442
  store i8* %call2, i8** %marker_file, align 8, !dbg !442
  %6 = load i8** %file, align 8, !dbg !443
  %tobool3 = icmp ne i8* %6, null, !dbg !443
  br i1 %tobool3, label %if.then4, label %if.else26, !dbg !443

if.then4:                                         ; preds = %if.then1
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %f}, metadata !445), !dbg !489
  %7 = load i8** %file, align 8, !dbg !489
  %call5 = call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !dbg !489
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %f, align 8, !dbg !489
  %8 = load %struct._IO_FILE** %f, align 8, !dbg !490
  %tobool6 = icmp ne %struct._IO_FILE* %8, null, !dbg !490
  br i1 %tobool6, label %if.then7, label %if.else11, !dbg !490

if.then7:                                         ; preds = %if.then4
  %9 = load %struct._IO_FILE** %f, align 8, !dbg !492
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0)), !dbg !492
  %10 = load %struct._IO_FILE** %f, align 8, !dbg !494
  %call9 = call i32 @fflush_unlocked(%struct._IO_FILE* %10), !dbg !494
  %11 = load %struct._IO_FILE** %f, align 8, !dbg !495
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !495
  br label %if.end, !dbg !496

if.else11:                                        ; preds = %if.then4
  %12 = load %struct._IO_FILE** @stderr, align 8, !dbg !497
  %13 = load i8** %file, align 8, !dbg !497
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([26 x i8]* @.str4, i32 0, i32 0), i8* %13), !dbg !497
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then7
  %14 = load i8** %marker_file, align 8, !dbg !499
  %tobool13 = icmp ne i8* %14, null, !dbg !499
  br i1 %tobool13, label %if.then14, label %if.else23, !dbg !499

if.then14:                                        ; preds = %if.end
  %15 = load i8** %marker_file, align 8, !dbg !501
  %call15 = call %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0)), !dbg !501
  store %struct._IO_FILE* %call15, %struct._IO_FILE** %f, align 8, !dbg !501
  %16 = load %struct._IO_FILE** %f, align 8, !dbg !503
  %tobool16 = icmp ne %struct._IO_FILE* %16, null, !dbg !503
  br i1 %tobool16, label %if.then17, label %if.else20, !dbg !503

if.then17:                                        ; preds = %if.then14
  %17 = load %struct._IO_FILE** %f, align 8, !dbg !505
  %call18 = call i32 @fflush_unlocked(%struct._IO_FILE* %17), !dbg !505
  %18 = load %struct._IO_FILE** %f, align 8, !dbg !507
  %call19 = call i32 @fclose(%struct._IO_FILE* %18), !dbg !507
  br label %if.end22, !dbg !508

if.else20:                                        ; preds = %if.then14
  %19 = load %struct._IO_FILE** @stderr, align 8, !dbg !509
  %20 = load i8** %file, align 8, !dbg !509
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([26 x i8]* @.str4, i32 0, i32 0), i8* %20), !dbg !509
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then17
  br label %if.end25, !dbg !511

if.else23:                                        ; preds = %if.end
  %21 = load %struct._IO_FILE** @stderr, align 8, !dbg !512
  %22 = load i8** @klee_div_marker_file_env, align 8, !dbg !512
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([26 x i8]* @.str6, i32 0, i32 0), i8* %22), !dbg !512
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.end22
  br label %if.end28, !dbg !514

if.else26:                                        ; preds = %if.then1
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !515
  %24 = load i8** @klee_div_file_env, align 8, !dbg !515
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([26 x i8]* @.str6, i32 0, i32 0), i8* %24), !dbg !515
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.end25
  store i32 1, i32* @after_divergence, align 4, !dbg !517
  br label %if.end29, !dbg !518

if.end29:                                         ; preds = %if.end28, %if.else
  %25 = load i64* %y.addr, align 8, !dbg !519
  store i64 %25, i64* %retval, !dbg !519
  br label %return, !dbg !519

return:                                           ; preds = %if.end29, %if.then
  %26 = load i64* %retval, !dbg !520
  ret i64 %26, !dbg !520
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @fflush_unlocked(%struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define i32 @klee_get_true() #4 {
entry:
  ret i32 1, !dbg !521
}

; Function Attrs: noinline nounwind uwtable
define i32 @klee_get_false() #4 {
entry:
  ret i32 0, !dbg !523
}

; Function Attrs: nounwind uwtable
define void @usage(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %status.addr}, metadata !524), !dbg !525
  %0 = load i32* %status.addr, align 4, !dbg !526
  %cmp = icmp ne i32 %0, 0, !dbg !526
  br i1 %cmp, label %if.then, label %if.else, !dbg !526

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !529
  %2 = load i8** @program_name, align 8, !dbg !529
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([39 x i8]* @.str7, i32 0, i32 0), i8* %2), !dbg !529
  br label %if.end, !dbg !529

if.else:                                          ; preds = %entry
  %3 = load i8** @program_name, align 8, !dbg !530
  %4 = load i8** @program_name, align 8, !dbg !530
  %5 = load i8** @program_name, align 8, !dbg !530
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([104 x i8]* @.str8, i32 0, i32 0), i8* %3, i8* %4, i8* %5), !dbg !530
  %6 = load %struct._IO_FILE** @stdout, align 8, !dbg !532
  %call2 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([270 x i8]* @.str9, i32 0, i32 0), %struct._IO_FILE* %6), !dbg !532
  %7 = load %struct._IO_FILE** @stdout, align 8, !dbg !533
  %call3 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([45 x i8]* @.str10, i32 0, i32 0), %struct._IO_FILE* %7), !dbg !533
  %8 = load %struct._IO_FILE** @stdout, align 8, !dbg !534
  %call4 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([54 x i8]* @.str11, i32 0, i32 0), %struct._IO_FILE* %8), !dbg !534
  %9 = load %struct._IO_FILE** @stdout, align 8, !dbg !535
  %call5 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([332 x i8]* @.str12, i32 0, i32 0), %struct._IO_FILE* %9), !dbg !535
  %10 = load %struct._IO_FILE** @stdout, align 8, !dbg !536
  %call6 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([208 x i8]* @.str13, i32 0, i32 0), %struct._IO_FILE* %10), !dbg !536
  call void @emit_bug_reporting_address(), !dbg !537
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32* %status.addr, align 4, !dbg !538
  call void @exit(i32 %11) #12, !dbg !538
  unreachable, !dbg !538

return:                                           ; No predecessors!
  ret void, !dbg !539
}

declare i32 @printf(i8*, ...) #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @emit_bug_reporting_address() #5 {
entry:
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str41, i32 0, i32 0)), !dbg !540
  ret void, !dbg !542
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %optc = alloca i32, align 4
  %first = alloca %struct.operand, align 16
  %step = alloca %struct.operand, align 16
  %last = alloca %struct.operand, align 16
  %format_str = alloca i8*, align 8
  %f = alloca i8*, align 8
  %tmp = alloca %struct.operand, align 16
  %tmp51 = alloca %struct.operand, align 16
  %tmp58 = alloca %struct.operand, align 16
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %argc.addr}, metadata !543), !dbg !544
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8*** %argv.addr}, metadata !545), !dbg !544
  call void @llvm.dbg.declare(metadata !{i32* %optc}, metadata !546), !dbg !547
  call void @llvm.dbg.declare(metadata !{%struct.operand* %first}, metadata !548), !dbg !549
  %0 = bitcast %struct.operand* %first to i8*, !dbg !549
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ({ x86_fp80, i64, i32, [4 x i8] }* @main.first to i8*), i64 32, i32 16, i1 false), !dbg !549
  call void @llvm.dbg.declare(metadata !{%struct.operand* %step}, metadata !550), !dbg !551
  %1 = bitcast %struct.operand* %step to i8*, !dbg !551
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ({ x86_fp80, i64, i32, [4 x i8] }* @main.step to i8*), i64 32, i32 16, i1 false), !dbg !551
  call void @llvm.dbg.declare(metadata !{%struct.operand* %last}, metadata !552), !dbg !553
  call void @llvm.dbg.declare(metadata !{i8** %format_str}, metadata !554), !dbg !555
  store i8* null, i8** %format_str, align 8, !dbg !555
  %2 = load i8*** %argv.addr, align 8, !dbg !556
  %arrayidx = getelementptr inbounds i8** %2, i64 0, !dbg !556
  %3 = load i8** %arrayidx, align 8, !dbg !556
  store i8* %3, i8** @program_name, align 8, !dbg !556
  %call = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8]* @.str14, i32 0, i32 0)) #7, !dbg !557
  %call1 = call i32 @atexit(void ()* @close_stdout) #7, !dbg !558
  store i8 0, i8* @equal_width, align 1, !dbg !559
  store i8* getelementptr inbounds ([2 x i8]* @.str15, i32 0, i32 0), i8** @separator, align 8, !dbg !560
  br label %while.cond, !dbg !561

while.cond:                                       ; preds = %sw.epilog, %entry
  %4 = load i32* @optind, align 4, !dbg !561
  %5 = load i32* %argc.addr, align 4, !dbg !561
  %cmp = icmp slt i32 %4, %5, !dbg !561
  br i1 %cmp, label %while.body, label %while.end, !dbg !561

while.body:                                       ; preds = %while.cond
  %6 = load i32* @optind, align 4, !dbg !562
  %idxprom = sext i32 %6 to i64, !dbg !562
  %7 = load i8*** %argv.addr, align 8, !dbg !562
  %arrayidx2 = getelementptr inbounds i8** %7, i64 %idxprom, !dbg !562
  %8 = load i8** %arrayidx2, align 8, !dbg !562
  %arrayidx3 = getelementptr inbounds i8* %8, i64 0, !dbg !562
  %9 = load i8* %arrayidx3, align 1, !dbg !562
  %conv = sext i8 %9 to i32, !dbg !562
  %cmp4 = icmp eq i32 %conv, 45, !dbg !562
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !562

land.lhs.true:                                    ; preds = %while.body
  %10 = load i32* @optind, align 4, !dbg !562
  %idxprom6 = sext i32 %10 to i64, !dbg !562
  %11 = load i8*** %argv.addr, align 8, !dbg !562
  %arrayidx7 = getelementptr inbounds i8** %11, i64 %idxprom6, !dbg !562
  %12 = load i8** %arrayidx7, align 8, !dbg !562
  %arrayidx8 = getelementptr inbounds i8* %12, i64 1, !dbg !562
  %13 = load i8* %arrayidx8, align 1, !dbg !562
  %conv9 = sext i8 %13 to i32, !dbg !562
  store i32 %conv9, i32* %optc, align 4, !dbg !562
  %cmp10 = icmp eq i32 %conv9, 46, !dbg !562
  br i1 %cmp10, label %if.then, label %lor.lhs.false, !dbg !562

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load i32* %optc, align 4, !dbg !562
  %sub = sub i32 %14, 48, !dbg !562
  %cmp12 = icmp ule i32 %sub, 9, !dbg !562
  br i1 %cmp12, label %if.then, label %if.end, !dbg !562

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %while.end, !dbg !565

if.end:                                           ; preds = %lor.lhs.false, %while.body
  %15 = load i32* %argc.addr, align 4, !dbg !567
  %16 = load i8*** %argv.addr, align 8, !dbg !567
  %call14 = call i32 @getopt_long(i32 %15, i8** %16, i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0), %struct.option* getelementptr inbounds ([6 x %struct.option]* bitcast (<{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }>* @long_options to [6 x %struct.option]*), i32 0, i32 0), i32* null) #7, !dbg !567
  store i32 %call14, i32* %optc, align 4, !dbg !567
  %17 = load i32* %optc, align 4, !dbg !568
  %cmp15 = icmp eq i32 %17, -1, !dbg !568
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !568

if.then17:                                        ; preds = %if.end
  br label %while.end, !dbg !570

if.end18:                                         ; preds = %if.end
  %18 = load i32* %optc, align 4, !dbg !571
  switch i32 %18, label %sw.default [
    i32 102, label %sw.bb
    i32 115, label %sw.bb19
    i32 119, label %sw.bb20
    i32 -130, label %sw.bb21
    i32 -131, label %sw.bb22
  ], !dbg !571

sw.bb:                                            ; preds = %if.end18
  %19 = load i8** @optarg, align 8, !dbg !572
  store i8* %19, i8** %format_str, align 8, !dbg !572
  br label %sw.epilog, !dbg !574

sw.bb19:                                          ; preds = %if.end18
  %20 = load i8** @optarg, align 8, !dbg !575
  store i8* %20, i8** @separator, align 8, !dbg !575
  br label %sw.epilog, !dbg !576

sw.bb20:                                          ; preds = %if.end18
  store i8 1, i8* @equal_width, align 1, !dbg !577
  br label %sw.epilog, !dbg !578

sw.bb21:                                          ; preds = %if.end18
  call void @usage(i32 0), !dbg !579
  br label %sw.epilog, !dbg !579

sw.bb22:                                          ; preds = %if.end18
  %21 = load %struct._IO_FILE** @stdout, align 8, !dbg !580
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...)* @version_etc(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str20, i32 0, i32 0), i8* null), !dbg !580
  call void @exit(i32 0) #12, !dbg !580
  unreachable, !dbg !580

sw.default:                                       ; preds = %if.end18
  call void @usage(i32 1), !dbg !581
  br label %sw.epilog, !dbg !582

sw.epilog:                                        ; preds = %sw.default, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb
  br label %while.cond, !dbg !583

while.end:                                        ; preds = %if.then17, %if.then, %while.cond
  %22 = load i32* %argc.addr, align 4, !dbg !584
  %23 = load i32* @optind, align 4, !dbg !584
  %sub23 = sub nsw i32 %22, %23, !dbg !584
  %cmp24 = icmp slt i32 %sub23, 1, !dbg !584
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !584

if.then26:                                        ; preds = %while.end
  call void (i32, i32, i8*, ...)* @error(i32 0, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str21, i32 0, i32 0)), !dbg !586
  call void @usage(i32 1), !dbg !588
  br label %if.end27, !dbg !589

if.end27:                                         ; preds = %if.then26, %while.end
  %24 = load i32* %argc.addr, align 4, !dbg !590
  %25 = load i32* @optind, align 4, !dbg !590
  %sub28 = sub nsw i32 %24, %25, !dbg !590
  %cmp29 = icmp slt i32 3, %sub28, !dbg !590
  br i1 %cmp29, label %if.then31, label %if.end35, !dbg !590

if.then31:                                        ; preds = %if.end27
  %26 = load i32* @optind, align 4, !dbg !592
  %add = add nsw i32 %26, 3, !dbg !592
  %idxprom32 = sext i32 %add to i64, !dbg !592
  %27 = load i8*** %argv.addr, align 8, !dbg !592
  %arrayidx33 = getelementptr inbounds i8** %27, i64 %idxprom32, !dbg !592
  %28 = load i8** %arrayidx33, align 8, !dbg !592
  %call34 = call i8* @quote(i8* %28), !dbg !592
  call void (i32, i32, i8*, ...)* @error(i32 0, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str22, i32 0, i32 0), i8* %call34), !dbg !592
  call void @usage(i32 1), !dbg !594
  br label %if.end35, !dbg !595

if.end35:                                         ; preds = %if.then31, %if.end27
  %29 = load i8** %format_str, align 8, !dbg !596
  %tobool = icmp ne i8* %29, null, !dbg !596
  br i1 %tobool, label %if.then36, label %if.end42, !dbg !596

if.then36:                                        ; preds = %if.end35
  call void @llvm.dbg.declare(metadata !{i8** %f}, metadata !598), !dbg !600
  %30 = load i8** %format_str, align 8, !dbg !600
  %call37 = call i8* @long_double_format(i8* %30), !dbg !600
  store i8* %call37, i8** %f, align 8, !dbg !600
  %31 = load i8** %f, align 8, !dbg !601
  %tobool38 = icmp ne i8* %31, null, !dbg !601
  br i1 %tobool38, label %if.end41, label %if.then39, !dbg !601

if.then39:                                        ; preds = %if.then36
  %32 = load i8** %format_str, align 8, !dbg !603
  %call40 = call i8* @quote(i8* %32), !dbg !603
  call void (i32, i32, i8*, ...)* @error(i32 0, i32 0, i8* getelementptr inbounds ([26 x i8]* @.str23, i32 0, i32 0), i8* %call40), !dbg !603
  call void @usage(i32 1), !dbg !605
  br label %if.end41, !dbg !606

if.end41:                                         ; preds = %if.then39, %if.then36
  %33 = load i8** %f, align 8, !dbg !607
  store i8* %33, i8** %format_str, align 8, !dbg !607
  br label %if.end42, !dbg !608

if.end42:                                         ; preds = %if.end41, %if.end35
  %34 = load i32* @optind, align 4, !dbg !609
  %inc = add nsw i32 %34, 1, !dbg !609
  store i32 %inc, i32* @optind, align 4, !dbg !609
  %idxprom43 = sext i32 %34 to i64, !dbg !609
  %35 = load i8*** %argv.addr, align 8, !dbg !609
  %arrayidx44 = getelementptr inbounds i8** %35, i64 %idxprom43, !dbg !609
  %36 = load i8** %arrayidx44, align 8, !dbg !609
  call void @scan_arg(%struct.operand* sret %tmp, i8* %36), !dbg !609
  %37 = bitcast %struct.operand* %last to i8*, !dbg !609
  %38 = bitcast %struct.operand* %tmp to i8*, !dbg !609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 32, i32 16, i1 false), !dbg !609
  %39 = load i32* @optind, align 4, !dbg !610
  %40 = load i32* %argc.addr, align 4, !dbg !610
  %cmp45 = icmp slt i32 %39, %40, !dbg !610
  br i1 %cmp45, label %if.then47, label %if.end60, !dbg !610

if.then47:                                        ; preds = %if.end42
  %41 = bitcast %struct.operand* %first to i8*, !dbg !612
  %42 = bitcast %struct.operand* %last to i8*, !dbg !612
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 16, i1 false), !dbg !612
  %43 = load i32* @optind, align 4, !dbg !614
  %inc48 = add nsw i32 %43, 1, !dbg !614
  store i32 %inc48, i32* @optind, align 4, !dbg !614
  %idxprom49 = sext i32 %43 to i64, !dbg !614
  %44 = load i8*** %argv.addr, align 8, !dbg !614
  %arrayidx50 = getelementptr inbounds i8** %44, i64 %idxprom49, !dbg !614
  %45 = load i8** %arrayidx50, align 8, !dbg !614
  call void @scan_arg(%struct.operand* sret %tmp51, i8* %45), !dbg !614
  %46 = bitcast %struct.operand* %last to i8*, !dbg !614
  %47 = bitcast %struct.operand* %tmp51 to i8*, !dbg !614
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 32, i32 16, i1 false), !dbg !614
  %48 = load i32* @optind, align 4, !dbg !615
  %49 = load i32* %argc.addr, align 4, !dbg !615
  %cmp52 = icmp slt i32 %48, %49, !dbg !615
  br i1 %cmp52, label %if.then54, label %if.end59, !dbg !615

if.then54:                                        ; preds = %if.then47
  %50 = bitcast %struct.operand* %step to i8*, !dbg !617
  %51 = bitcast %struct.operand* %last to i8*, !dbg !617
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 32, i32 16, i1 false), !dbg !617
  %52 = load i32* @optind, align 4, !dbg !619
  %inc55 = add nsw i32 %52, 1, !dbg !619
  store i32 %inc55, i32* @optind, align 4, !dbg !619
  %idxprom56 = sext i32 %52 to i64, !dbg !619
  %53 = load i8*** %argv.addr, align 8, !dbg !619
  %arrayidx57 = getelementptr inbounds i8** %53, i64 %idxprom56, !dbg !619
  %54 = load i8** %arrayidx57, align 8, !dbg !619
  call void @scan_arg(%struct.operand* sret %tmp58, i8* %54), !dbg !619
  %55 = bitcast %struct.operand* %last to i8*, !dbg !619
  %56 = bitcast %struct.operand* %tmp58 to i8*, !dbg !619
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 32, i32 16, i1 false), !dbg !619
  br label %if.end59, !dbg !620

if.end59:                                         ; preds = %if.then54, %if.then47
  br label %if.end60, !dbg !621

if.end60:                                         ; preds = %if.end59, %if.end42
  %57 = load i8** %format_str, align 8, !dbg !622
  %cmp61 = icmp ne i8* %57, null, !dbg !622
  br i1 %cmp61, label %land.lhs.true63, label %if.end67, !dbg !622

land.lhs.true63:                                  ; preds = %if.end60
  %58 = load i8* @equal_width, align 1, !dbg !622
  %tobool64 = trunc i8 %58 to i1, !dbg !622
  br i1 %tobool64, label %if.then66, label %if.end67, !dbg !622

if.then66:                                        ; preds = %land.lhs.true63
  call void (i32, i32, i8*, ...)* @error(i32 0, i32 0, i8* getelementptr inbounds ([69 x i8]* @.str24, i32 0, i32 0)), !dbg !624
  call void @usage(i32 1), !dbg !626
  br label %if.end67, !dbg !627

if.end67:                                         ; preds = %if.then66, %land.lhs.true63, %if.end60
  %59 = load i8** %format_str, align 8, !dbg !628
  %cmp68 = icmp eq i8* %59, null, !dbg !628
  br i1 %cmp68, label %if.then70, label %if.end72, !dbg !628

if.then70:                                        ; preds = %if.end67
  %call71 = call i8* @get_default_format(%struct.operand* byval align 16 %first, %struct.operand* byval align 16 %step, %struct.operand* byval align 16 %last), !dbg !630
  store i8* %call71, i8** %format_str, align 8, !dbg !630
  br label %if.end72, !dbg !630

if.end72:                                         ; preds = %if.then70, %if.end67
  %60 = load i8** %format_str, align 8, !dbg !631
  %value = getelementptr inbounds %struct.operand* %first, i32 0, i32 0, !dbg !631
  %61 = load x86_fp80* %value, align 16, !dbg !631
  %value73 = getelementptr inbounds %struct.operand* %step, i32 0, i32 0, !dbg !631
  %62 = load x86_fp80* %value73, align 16, !dbg !631
  %value74 = getelementptr inbounds %struct.operand* %last, i32 0, i32 0, !dbg !631
  %63 = load x86_fp80* %value74, align 16, !dbg !631
  call void @print_numbers(i8* %60, x86_fp80 %61, x86_fp80 %62, x86_fp80 %63), !dbg !631
  call void @exit(i32 0) #12, !dbg !632
  unreachable, !dbg !632

return:                                           ; No predecessors!
  %64 = load i32* %retval, !dbg !633
  ret i32 %64, !dbg !633
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare void @error(i32, i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i8* @long_double_format(i8* %fmt) #0 {
entry:
  %retval = alloca i8*, align 8
  %fmt.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %prefix_len = alloca i64, align 8
  %has_L = alloca i8, align 1
  %format_size = alloca i64, align 8
  %ldfmt = alloca i8*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %fmt.addr}, metadata !634), !dbg !635
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !636), !dbg !637
  call void @llvm.dbg.declare(metadata !{i64* %prefix_len}, metadata !638), !dbg !639
  call void @llvm.dbg.declare(metadata !{i8* %has_L}, metadata !640), !dbg !641
  store i64 0, i64* %i, align 8, !dbg !642
  br label %for.cond, !dbg !642

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64* %i, align 8, !dbg !642
  %1 = load i8** %fmt.addr, align 8, !dbg !642
  %arrayidx = getelementptr inbounds i8* %1, i64 %0, !dbg !642
  %2 = load i8* %arrayidx, align 1, !dbg !642
  %conv = sext i8 %2 to i32, !dbg !642
  %cmp = icmp eq i32 %conv, 37, !dbg !642
  br i1 %cmp, label %land.lhs.true, label %for.body, !dbg !642

land.lhs.true:                                    ; preds = %for.cond
  %3 = load i64* %i, align 8, !dbg !642
  %add = add i64 %3, 1, !dbg !642
  %4 = load i8** %fmt.addr, align 8, !dbg !642
  %arrayidx2 = getelementptr inbounds i8* %4, i64 %add, !dbg !642
  %5 = load i8* %arrayidx2, align 1, !dbg !642
  %conv3 = sext i8 %5 to i32, !dbg !642
  %cmp4 = icmp ne i32 %conv3, 37, !dbg !642
  br i1 %cmp4, label %for.end, label %for.body, !dbg !642

for.body:                                         ; preds = %land.lhs.true, %for.cond
  %6 = load i64* %i, align 8, !dbg !644
  %7 = load i8** %fmt.addr, align 8, !dbg !644
  %arrayidx6 = getelementptr inbounds i8* %7, i64 %6, !dbg !644
  %8 = load i8* %arrayidx6, align 1, !dbg !644
  %tobool = icmp ne i8 %8, 0, !dbg !644
  br i1 %tobool, label %if.end, label %if.then, !dbg !644

if.then:                                          ; preds = %for.body
  store i8* null, i8** %retval, !dbg !646
  br label %return, !dbg !646

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !646

for.inc:                                          ; preds = %if.end
  %9 = load i64* %i, align 8, !dbg !642
  %inc = add i64 %9, 1, !dbg !642
  store i64 %inc, i64* %i, align 8, !dbg !642
  br label %for.cond, !dbg !642

for.end:                                          ; preds = %land.lhs.true
  %10 = load i64* %i, align 8, !dbg !647
  %inc7 = add i64 %10, 1, !dbg !647
  store i64 %inc7, i64* %i, align 8, !dbg !647
  %11 = load i8** %fmt.addr, align 8, !dbg !648
  %12 = load i64* %i, align 8, !dbg !648
  %add.ptr = getelementptr inbounds i8* %11, i64 %12, !dbg !648
  %call = call i64 @strspn(i8* %add.ptr, i8* getelementptr inbounds ([7 x i8]* @.str32, i32 0, i32 0)) #13, !dbg !648
  %13 = load i64* %i, align 8, !dbg !648
  %add8 = add i64 %13, %call, !dbg !648
  store i64 %add8, i64* %i, align 8, !dbg !648
  %14 = load i8** %fmt.addr, align 8, !dbg !649
  %15 = load i64* %i, align 8, !dbg !649
  %add.ptr9 = getelementptr inbounds i8* %14, i64 %15, !dbg !649
  %call10 = call i64 @strspn(i8* %add.ptr9, i8* getelementptr inbounds ([11 x i8]* @.str33, i32 0, i32 0)) #13, !dbg !649
  %16 = load i64* %i, align 8, !dbg !649
  %add11 = add i64 %16, %call10, !dbg !649
  store i64 %add11, i64* %i, align 8, !dbg !649
  %17 = load i64* %i, align 8, !dbg !650
  %18 = load i8** %fmt.addr, align 8, !dbg !650
  %arrayidx12 = getelementptr inbounds i8* %18, i64 %17, !dbg !650
  %19 = load i8* %arrayidx12, align 1, !dbg !650
  %conv13 = sext i8 %19 to i32, !dbg !650
  %cmp14 = icmp eq i32 %conv13, 46, !dbg !650
  br i1 %cmp14, label %if.then16, label %if.end21, !dbg !650

if.then16:                                        ; preds = %for.end
  %20 = load i64* %i, align 8, !dbg !652
  %inc17 = add i64 %20, 1, !dbg !652
  store i64 %inc17, i64* %i, align 8, !dbg !652
  %21 = load i8** %fmt.addr, align 8, !dbg !654
  %22 = load i64* %i, align 8, !dbg !654
  %add.ptr18 = getelementptr inbounds i8* %21, i64 %22, !dbg !654
  %call19 = call i64 @strspn(i8* %add.ptr18, i8* getelementptr inbounds ([11 x i8]* @.str33, i32 0, i32 0)) #13, !dbg !654
  %23 = load i64* %i, align 8, !dbg !654
  %add20 = add i64 %23, %call19, !dbg !654
  store i64 %add20, i64* %i, align 8, !dbg !654
  br label %if.end21, !dbg !655

if.end21:                                         ; preds = %if.then16, %for.end
  %24 = load i64* %i, align 8, !dbg !656
  store i64 %24, i64* %prefix_len, align 8, !dbg !656
  %25 = load i64* %i, align 8, !dbg !657
  %26 = load i8** %fmt.addr, align 8, !dbg !657
  %arrayidx22 = getelementptr inbounds i8* %26, i64 %25, !dbg !657
  %27 = load i8* %arrayidx22, align 1, !dbg !657
  %conv23 = sext i8 %27 to i32, !dbg !657
  %cmp24 = icmp eq i32 %conv23, 76, !dbg !657
  %frombool = zext i1 %cmp24 to i8, !dbg !657
  store i8 %frombool, i8* %has_L, align 1, !dbg !657
  %28 = load i8* %has_L, align 1, !dbg !658
  %tobool26 = trunc i8 %28 to i1, !dbg !658
  %conv27 = zext i1 %tobool26 to i64, !dbg !658
  %29 = load i64* %i, align 8, !dbg !658
  %add28 = add i64 %29, %conv27, !dbg !658
  store i64 %add28, i64* %i, align 8, !dbg !658
  %30 = load i64* %i, align 8, !dbg !659
  %31 = load i8** %fmt.addr, align 8, !dbg !659
  %arrayidx29 = getelementptr inbounds i8* %31, i64 %30, !dbg !659
  %32 = load i8* %arrayidx29, align 1, !dbg !659
  %conv30 = sext i8 %32 to i32, !dbg !659
  %call31 = call i8* @strchr(i8* getelementptr inbounds ([9 x i8]* @.str34, i32 0, i32 0), i32 %conv30) #13, !dbg !659
  %tobool32 = icmp ne i8* %call31, null, !dbg !659
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !659

if.then33:                                        ; preds = %if.end21
  store i8* null, i8** %retval, !dbg !661
  br label %return, !dbg !661

if.end34:                                         ; preds = %if.end21
  %33 = load i64* %i, align 8, !dbg !662
  %inc35 = add i64 %33, 1, !dbg !662
  store i64 %inc35, i64* %i, align 8, !dbg !662
  br label %for.cond36, !dbg !662

for.cond36:                                       ; preds = %for.inc63, %if.end34
  %34 = load i64* %i, align 8, !dbg !662
  %35 = load i8** %fmt.addr, align 8, !dbg !662
  %arrayidx37 = getelementptr inbounds i8* %35, i64 %34, !dbg !662
  %36 = load i8* %arrayidx37, align 1, !dbg !662
  %conv38 = sext i8 %36 to i32, !dbg !662
  %cmp39 = icmp eq i32 %conv38, 37, !dbg !662
  br i1 %cmp39, label %land.lhs.true41, label %for.body47, !dbg !662

land.lhs.true41:                                  ; preds = %for.cond36
  %37 = load i64* %i, align 8, !dbg !662
  %add42 = add i64 %37, 1, !dbg !662
  %38 = load i8** %fmt.addr, align 8, !dbg !662
  %arrayidx43 = getelementptr inbounds i8* %38, i64 %add42, !dbg !662
  %39 = load i8* %arrayidx43, align 1, !dbg !662
  %conv44 = sext i8 %39 to i32, !dbg !662
  %cmp45 = icmp ne i32 %conv44, 37, !dbg !662
  br i1 %cmp45, label %for.end65, label %for.body47, !dbg !662

for.body47:                                       ; preds = %land.lhs.true41, %for.cond36
  %40 = load i64* %i, align 8, !dbg !664
  %41 = load i8** %fmt.addr, align 8, !dbg !664
  %arrayidx48 = getelementptr inbounds i8* %41, i64 %40, !dbg !664
  %42 = load i8* %arrayidx48, align 1, !dbg !664
  %tobool49 = icmp ne i8 %42, 0, !dbg !664
  br i1 %tobool49, label %if.end62, label %if.then50, !dbg !664

if.then50:                                        ; preds = %for.body47
  call void @llvm.dbg.declare(metadata !{i64* %format_size}, metadata !666), !dbg !668
  %43 = load i64* %i, align 8, !dbg !668
  %add51 = add i64 %43, 1, !dbg !668
  store i64 %add51, i64* %format_size, align 8, !dbg !668
  call void @llvm.dbg.declare(metadata !{i8** %ldfmt}, metadata !669), !dbg !670
  %44 = load i64* %format_size, align 8, !dbg !670
  %add52 = add i64 %44, 1, !dbg !670
  %call53 = call i8* @xmalloc(i64 %add52), !dbg !670
  store i8* %call53, i8** %ldfmt, align 8, !dbg !670
  %45 = load i8** %ldfmt, align 8, !dbg !671
  %46 = load i8** %fmt.addr, align 8, !dbg !671
  %47 = load i64* %prefix_len, align 8, !dbg !671
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 %47, i32 1, i1 false), !dbg !671
  %48 = load i64* %prefix_len, align 8, !dbg !672
  %49 = load i8** %ldfmt, align 8, !dbg !672
  %arrayidx54 = getelementptr inbounds i8* %49, i64 %48, !dbg !672
  store i8 76, i8* %arrayidx54, align 1, !dbg !672
  %50 = load i8** %ldfmt, align 8, !dbg !673
  %51 = load i64* %prefix_len, align 8, !dbg !673
  %add.ptr55 = getelementptr inbounds i8* %50, i64 %51, !dbg !673
  %add.ptr56 = getelementptr inbounds i8* %add.ptr55, i64 1, !dbg !673
  %52 = load i8** %fmt.addr, align 8, !dbg !673
  %53 = load i64* %prefix_len, align 8, !dbg !673
  %add.ptr57 = getelementptr inbounds i8* %52, i64 %53, !dbg !673
  %54 = load i8* %has_L, align 1, !dbg !673
  %tobool58 = trunc i8 %54 to i1, !dbg !673
  %conv59 = zext i1 %tobool58 to i32, !dbg !673
  %idx.ext = sext i32 %conv59 to i64, !dbg !673
  %add.ptr60 = getelementptr inbounds i8* %add.ptr57, i64 %idx.ext, !dbg !673
  %call61 = call i8* @strcpy(i8* %add.ptr56, i8* %add.ptr60) #7, !dbg !673
  %55 = load i8** %ldfmt, align 8, !dbg !674
  store i8* %55, i8** %retval, !dbg !674
  br label %return, !dbg !674

if.end62:                                         ; preds = %for.body47
  br label %for.inc63, !dbg !675

for.inc63:                                        ; preds = %if.end62
  %56 = load i64* %i, align 8, !dbg !662
  %inc64 = add i64 %56, 1, !dbg !662
  store i64 %inc64, i64* %i, align 8, !dbg !662
  br label %for.cond36, !dbg !662

for.end65:                                        ; preds = %land.lhs.true41
  store i8* null, i8** %retval, !dbg !676
  br label %return, !dbg !676

return:                                           ; preds = %for.end65, %if.then50, %if.then33, %if.then
  %57 = load i8** %retval, !dbg !677
  ret i8* %57, !dbg !677
}

; Function Attrs: nounwind uwtable
define internal void @scan_arg(%struct.operand* noalias sret %agg.result, i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %ret = alloca %struct.operand, align 16
  %decimal_point = alloca i8*, align 8
  %fraction_len = alloca i64, align 8
  %e = alloca i8*, align 8
  %exponent = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !678), !dbg !679
  call void @llvm.dbg.declare(metadata !{%struct.operand* %ret}, metadata !680), !dbg !681
  %0 = load i8** %arg.addr, align 8, !dbg !682
  %value = getelementptr inbounds %struct.operand* %ret, i32 0, i32 0, !dbg !682
  %call = call zeroext i1 @xstrtold(i8* %0, i8** null, x86_fp80* %value, x86_fp80 (i8*, i8**)* @c_strtold), !dbg !682
  br i1 %call, label %if.end, label %if.then, !dbg !682

if.then:                                          ; preds = %entry
  %1 = load i8** %arg.addr, align 8, !dbg !684
  call void (i32, i32, i8*, ...)* @error(i32 0, i32 0, i8* getelementptr inbounds ([36 x i8]* @.str28, i32 0, i32 0), i8* %1), !dbg !684
  call void @usage(i32 1), !dbg !686
  br label %if.end, !dbg !687

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !688

while.cond:                                       ; preds = %while.body, %if.end
  %call1 = call i32 @klee_get_false(), !dbg !688
  %conv = sext i32 %call1 to i64, !dbg !688
  %2 = load i8** %arg.addr, align 8, !dbg !688
  %3 = load i8* %2, align 1, !dbg !688
  %conv2 = sext i8 %3 to i32, !dbg !688
  %idxprom = sext i32 %conv2 to i64, !dbg !688
  %call3 = call i16** @__ctype_b_loc() #1, !dbg !688
  %4 = load i16** %call3, align 8, !dbg !688
  %arrayidx = getelementptr inbounds i16* %4, i64 %idxprom, !dbg !688
  %5 = load i16* %arrayidx, align 2, !dbg !688
  %conv4 = zext i16 %5 to i32, !dbg !688
  %and = and i32 %conv4, 8192, !dbg !688
  %tobool = icmp ne i32 %and, 0, !dbg !688
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !688

lor.rhs:                                          ; preds = %while.cond
  %6 = load i8** %arg.addr, align 8, !dbg !688
  %7 = load i8* %6, align 1, !dbg !688
  %conv5 = sext i8 %7 to i32, !dbg !688
  %cmp = icmp eq i32 %conv5, 43, !dbg !688
  br label %lor.end, !dbg !688

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %8 = phi i1 [ true, %while.cond ], [ %cmp, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32, !dbg !688
  %conv7 = sext i32 %lor.ext to i64, !dbg !688
  %call8 = call i64 @klee_change(i64 %conv, i64 %conv7), !dbg !688
  %tobool9 = icmp ne i64 %call8, 0, !dbg !688
  br i1 %tobool9, label %while.body, label %while.end, !dbg !688

while.body:                                       ; preds = %lor.end
  %9 = load i8** %arg.addr, align 8, !dbg !689
  %incdec.ptr = getelementptr inbounds i8* %9, i32 1, !dbg !689
  store i8* %incdec.ptr, i8** %arg.addr, align 8, !dbg !689
  br label %while.cond, !dbg !689

while.end:                                        ; preds = %lor.end
  %10 = load i8** %arg.addr, align 8, !dbg !690
  %call10 = call i64 @strlen(i8* %10) #13, !dbg !690
  %width = getelementptr inbounds %struct.operand* %ret, i32 0, i32 1, !dbg !690
  store i64 %call10, i64* %width, align 8, !dbg !690
  %precision = getelementptr inbounds %struct.operand* %ret, i32 0, i32 2, !dbg !691
  store i32 2147483647, i32* %precision, align 4, !dbg !691
  %11 = load i8** %arg.addr, align 8, !dbg !692
  %call11 = call i64 @klee_change(i64 ptrtoint ([5 x i8]* @.str29 to i64), i64 ptrtoint ([3 x i8]* @.str30 to i64)), !dbg !692
  %12 = inttoptr i64 %call11 to i8*, !dbg !692
  %call12 = call i64 @strcspn(i8* %11, i8* %12) #13, !dbg !692
  %13 = load i8** %arg.addr, align 8, !dbg !692
  %arrayidx13 = getelementptr inbounds i8* %13, i64 %call12, !dbg !692
  %14 = load i8* %arrayidx13, align 1, !dbg !692
  %tobool14 = icmp ne i8 %14, 0, !dbg !692
  br i1 %tobool14, label %if.end86, label %land.lhs.true, !dbg !692

land.lhs.true:                                    ; preds = %while.end
  %value15 = getelementptr inbounds %struct.operand* %ret, i32 0, i32 0, !dbg !692
  %15 = load x86_fp80* %value15, align 16, !dbg !692
  %mul = fmul x86_fp80 %15, 0xK00000000000000000000, !dbg !692
  %cmp16 = fcmp oeq x86_fp80 %mul, 0xK00000000000000000000, !dbg !692
  br i1 %cmp16, label %if.then18, label %if.end86, !dbg !692

if.then18:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata !{i8** %decimal_point}, metadata !694), !dbg !696
  %16 = load i8** %arg.addr, align 8, !dbg !696
  %call19 = call i8* @strchr(i8* %16, i32 46) #13, !dbg !696
  store i8* %call19, i8** %decimal_point, align 8, !dbg !696
  %17 = load i8** %decimal_point, align 8, !dbg !697
  %tobool20 = icmp ne i8* %17, null, !dbg !697
  br i1 %tobool20, label %if.else, label %if.then21, !dbg !697

if.then21:                                        ; preds = %if.then18
  %precision22 = getelementptr inbounds %struct.operand* %ret, i32 0, i32 2, !dbg !699
  store i32 0, i32* %precision22, align 4, !dbg !699
  br label %if.end46, !dbg !699

if.else:                                          ; preds = %if.then18
  call void @llvm.dbg.declare(metadata !{i64* %fraction_len}, metadata !700), !dbg !702
  %18 = load i8** %decimal_point, align 8, !dbg !702
  %add.ptr = getelementptr inbounds i8* %18, i64 1, !dbg !702
  %call23 = call i64 @strlen(i8* %add.ptr) #13, !dbg !702
  %19 = load i8** %decimal_point, align 8, !dbg !702
  %add.ptr24 = getelementptr inbounds i8* %19, i64 1, !dbg !702
  %call25 = call i64 @strcspn(i8* %add.ptr24, i8* getelementptr inbounds ([3 x i8]* @.str31, i32 0, i32 0)) #13, !dbg !702
  %call26 = call i64 @klee_change(i64 %call23, i64 %call25), !dbg !702
  store i64 %call26, i64* %fraction_len, align 8, !dbg !702
  %20 = load i64* %fraction_len, align 8, !dbg !703
  %cmp27 = icmp ule i64 %20, 2147483647, !dbg !703
  br i1 %cmp27, label %if.then29, label %if.end32, !dbg !703

if.then29:                                        ; preds = %if.else
  %21 = load i64* %fraction_len, align 8, !dbg !705
  %conv30 = trunc i64 %21 to i32, !dbg !705
  %precision31 = getelementptr inbounds %struct.operand* %ret, i32 0, i32 2, !dbg !705
  store i32 %conv30, i32* %precision31, align 4, !dbg !705
  br label %if.end32, !dbg !705

if.end32:                                         ; preds = %if.then29, %if.else
  %22 = load i64* %fraction_len, align 8, !dbg !706
  %cmp33 = icmp eq i64 %22, 0, !dbg !706
  br i1 %cmp33, label %cond.true, label %cond.false, !dbg !706

cond.true:                                        ; preds = %if.end32
  br label %cond.end, !dbg !706

cond.false:                                       ; preds = %if.end32
  %23 = load i8** %decimal_point, align 8, !dbg !706
  %24 = load i8** %arg.addr, align 8, !dbg !706
  %cmp35 = icmp eq i8* %23, %24, !dbg !706
  br i1 %cmp35, label %lor.end42, label %lor.rhs37, !dbg !706

lor.rhs37:                                        ; preds = %cond.false
  %25 = load i8** %decimal_point, align 8, !dbg !706
  %arrayidx38 = getelementptr inbounds i8* %25, i64 -1, !dbg !706
  %26 = load i8* %arrayidx38, align 1, !dbg !706
  %conv39 = sext i8 %26 to i32, !dbg !706
  %sub = sub i32 %conv39, 48, !dbg !706
  %cmp40 = icmp ule i32 %sub, 9, !dbg !706
  %lnot = xor i1 %cmp40, true, !dbg !706
  br label %lor.end42, !dbg !706

lor.end42:                                        ; preds = %lor.rhs37, %cond.false
  %27 = phi i1 [ true, %cond.false ], [ %lnot, %lor.rhs37 ]
  %lor.ext43 = zext i1 %27 to i32, !dbg !706
  br label %cond.end, !dbg !706

cond.end:                                         ; preds = %lor.end42, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %lor.ext43, %lor.end42 ], !dbg !706
  %conv44 = sext i32 %cond to i64, !dbg !706
  %width45 = getelementptr inbounds %struct.operand* %ret, i32 0, i32 1, !dbg !706
  %28 = load i64* %width45, align 8, !dbg !706
  %add = add i64 %28, %conv44, !dbg !706
  store i64 %add, i64* %width45, align 8, !dbg !706
  br label %if.end46

if.end46:                                         ; preds = %cond.end, %if.then21
  br i1 false, label %cond.true47, label %cond.false51, !dbg !707

cond.true47:                                      ; preds = %if.end46
  %call48 = call i32 @klee_get_false(), !dbg !707
  %conv49 = sext i32 %call48 to i64, !dbg !707
  %tobool50 = icmp ne i64 %conv49, 0, !dbg !707
  br i1 %tobool50, label %if.then63, label %if.end85, !dbg !707

cond.false51:                                     ; preds = %if.end46
  br i1 false, label %cond.true52, label %cond.false56, !dbg !707

cond.true52:                                      ; preds = %cond.false51
  %call53 = call i32 @klee_get_true(), !dbg !707
  %conv54 = sext i32 %call53 to i64, !dbg !707
  %tobool55 = icmp ne i64 %conv54, 0, !dbg !707
  br i1 %tobool55, label %if.then63, label %if.end85, !dbg !707

cond.false56:                                     ; preds = %cond.false51
  %call57 = call i32 @klee_get_false(), !dbg !707
  %conv58 = sext i32 %call57 to i64, !dbg !707
  %call59 = call i32 @klee_get_true(), !dbg !707
  %conv60 = sext i32 %call59 to i64, !dbg !707
  %call61 = call i64 @klee_change(i64 %conv58, i64 %conv60), !dbg !707
  %tobool62 = icmp ne i64 %call61, 0, !dbg !707
  br i1 %tobool62, label %if.then63, label %if.end85, !dbg !707

if.then63:                                        ; preds = %cond.false56, %cond.true52, %cond.true47
  call void @llvm.dbg.declare(metadata !{i8** %e}, metadata !709), !dbg !711
  %29 = load i8** %arg.addr, align 8, !dbg !711
  %call64 = call i8* @strchr(i8* %29, i32 101) #13, !dbg !711
  store i8* %call64, i8** %e, align 8, !dbg !711
  %30 = load i8** %e, align 8, !dbg !712
  %tobool65 = icmp ne i8* %30, null, !dbg !712
  br i1 %tobool65, label %if.end68, label %if.then66, !dbg !712

if.then66:                                        ; preds = %if.then63
  %31 = load i8** %arg.addr, align 8, !dbg !714
  %call67 = call i8* @strchr(i8* %31, i32 69) #13, !dbg !714
  store i8* %call67, i8** %e, align 8, !dbg !714
  br label %if.end68, !dbg !714

if.end68:                                         ; preds = %if.then66, %if.then63
  %32 = load i8** %e, align 8, !dbg !715
  %tobool69 = icmp ne i8* %32, null, !dbg !715
  br i1 %tobool69, label %if.then70, label %if.end84, !dbg !715

if.then70:                                        ; preds = %if.end68
  call void @llvm.dbg.declare(metadata !{i64* %exponent}, metadata !717), !dbg !719
  %33 = load i8** %e, align 8, !dbg !719
  %add.ptr71 = getelementptr inbounds i8* %33, i64 1, !dbg !719
  %call72 = call i64 @strtol(i8* %add.ptr71, i8** null, i32 10) #7, !dbg !719
  store i64 %call72, i64* %exponent, align 8, !dbg !719
  %34 = load i64* %exponent, align 8, !dbg !720
  %cmp73 = icmp slt i64 %34, 0, !dbg !720
  br i1 %cmp73, label %cond.true75, label %cond.false77, !dbg !720

cond.true75:                                      ; preds = %if.then70
  %35 = load i64* %exponent, align 8, !dbg !720
  %sub76 = sub nsw i64 0, %35, !dbg !720
  br label %cond.end78, !dbg !720

cond.false77:                                     ; preds = %if.then70
  br label %cond.end78, !dbg !720

cond.end78:                                       ; preds = %cond.false77, %cond.true75
  %cond79 = phi i64 [ %sub76, %cond.true75 ], [ 0, %cond.false77 ], !dbg !720
  %precision80 = getelementptr inbounds %struct.operand* %ret, i32 0, i32 2, !dbg !720
  %36 = load i32* %precision80, align 4, !dbg !720
  %conv81 = sext i32 %36 to i64, !dbg !720
  %add82 = add nsw i64 %conv81, %cond79, !dbg !720
  %conv83 = trunc i64 %add82 to i32, !dbg !720
  store i32 %conv83, i32* %precision80, align 4, !dbg !720
  br label %if.end84, !dbg !721

if.end84:                                         ; preds = %cond.end78, %if.end68
  br label %if.end85, !dbg !722

if.end85:                                         ; preds = %if.end84, %cond.false56, %cond.true52, %cond.true47
  br label %if.end86, !dbg !723

if.end86:                                         ; preds = %if.end85, %land.lhs.true, %while.end
  %37 = bitcast %struct.operand* %agg.result to i8*, !dbg !724
  %38 = bitcast %struct.operand* %ret to i8*, !dbg !724
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 32, i32 16, i1 false), !dbg !724
  ret void, !dbg !724
}

; Function Attrs: nounwind uwtable
define internal i8* @get_default_format(%struct.operand* byval align 16 %first, %struct.operand* byval align 16 %step, %struct.operand* byval align 16 %last) #0 {
entry:
  %retval = alloca i8*, align 8
  %prec = alloca i32, align 4
  %first_width = alloca i64, align 8
  %last_width = alloca i64, align 8
  %width82 = alloca i64, align 8
  %w = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{%struct.operand* %first}, metadata !725), !dbg !726
  call void @llvm.dbg.declare(metadata !{%struct.operand* %step}, metadata !727), !dbg !726
  call void @llvm.dbg.declare(metadata !{%struct.operand* %last}, metadata !728), !dbg !726
  call void @llvm.dbg.declare(metadata !{i32* %prec}, metadata !729), !dbg !730
  %precision = getelementptr inbounds %struct.operand* %first, i32 0, i32 2, !dbg !730
  %0 = load i32* %precision, align 4, !dbg !730
  %precision1 = getelementptr inbounds %struct.operand* %step, i32 0, i32 2, !dbg !730
  %1 = load i32* %precision1, align 4, !dbg !730
  %cmp = icmp sgt i32 %0, %1, !dbg !730
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !730

cond.true:                                        ; preds = %entry
  %precision2 = getelementptr inbounds %struct.operand* %first, i32 0, i32 2, !dbg !730
  %2 = load i32* %precision2, align 4, !dbg !730
  br label %cond.end, !dbg !730

cond.false:                                       ; preds = %entry
  %precision3 = getelementptr inbounds %struct.operand* %step, i32 0, i32 2, !dbg !730
  %3 = load i32* %precision3, align 4, !dbg !730
  br label %cond.end, !dbg !730

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ], !dbg !730
  store i32 %cond, i32* %prec, align 4, !dbg !730
  %4 = load i32* %prec, align 4, !dbg !731
  %cmp4 = icmp ne i32 %4, 2147483647, !dbg !731
  br i1 %cmp4, label %land.lhs.true, label %if.end98, !dbg !731

land.lhs.true:                                    ; preds = %cond.end
  %precision5 = getelementptr inbounds %struct.operand* %last, i32 0, i32 2, !dbg !731
  %5 = load i32* %precision5, align 4, !dbg !731
  %cmp6 = icmp ne i32 %5, 2147483647, !dbg !731
  br i1 %cmp6, label %if.then, label %if.end98, !dbg !731

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8* @equal_width, align 1, !dbg !733
  %tobool = trunc i8 %6 to i1, !dbg !733
  br i1 %tobool, label %if.then7, label %if.else, !dbg !733

if.then7:                                         ; preds = %if.then
  call void @llvm.dbg.declare(metadata !{i64* %first_width}, metadata !736), !dbg !738
  %width = getelementptr inbounds %struct.operand* %first, i32 0, i32 1, !dbg !738
  %7 = load i64* %width, align 8, !dbg !738
  %8 = load i32* %prec, align 4, !dbg !738
  %precision8 = getelementptr inbounds %struct.operand* %first, i32 0, i32 2, !dbg !738
  %9 = load i32* %precision8, align 4, !dbg !738
  %sub = sub nsw i32 %8, %9, !dbg !738
  %conv = sext i32 %sub to i64, !dbg !738
  %add = add i64 %7, %conv, !dbg !738
  store i64 %add, i64* %first_width, align 8, !dbg !738
  call void @llvm.dbg.declare(metadata !{i64* %last_width}, metadata !739), !dbg !740
  %width9 = getelementptr inbounds %struct.operand* %last, i32 0, i32 1, !dbg !740
  %10 = load i64* %width9, align 8, !dbg !740
  %11 = load i32* %prec, align 4, !dbg !740
  %precision10 = getelementptr inbounds %struct.operand* %last, i32 0, i32 2, !dbg !740
  %12 = load i32* %precision10, align 4, !dbg !740
  %sub11 = sub nsw i32 %11, %12, !dbg !740
  %conv12 = sext i32 %sub11 to i64, !dbg !740
  %add13 = add i64 %10, %conv12, !dbg !740
  store i64 %add13, i64* %last_width, align 8, !dbg !740
  br i1 false, label %cond.true14, label %cond.false17, !dbg !741

cond.true14:                                      ; preds = %if.then7
  %call = call i32 @klee_get_false(), !dbg !741
  %conv15 = sext i32 %call to i64, !dbg !741
  %tobool16 = icmp ne i64 %conv15, 0, !dbg !741
  br i1 %tobool16, label %if.then38, label %if.end, !dbg !741

cond.false17:                                     ; preds = %if.then7
  br i1 false, label %cond.true18, label %cond.false25, !dbg !741

cond.true18:                                      ; preds = %cond.false17
  %precision19 = getelementptr inbounds %struct.operand* %last, i32 0, i32 2, !dbg !741
  %13 = load i32* %precision19, align 4, !dbg !741
  %tobool20 = icmp ne i32 %13, 0, !dbg !741
  br i1 %tobool20, label %land.rhs, label %land.end, !dbg !741

land.rhs:                                         ; preds = %cond.true18
  %14 = load i32* %prec, align 4, !dbg !741
  %cmp21 = icmp eq i32 %14, 0, !dbg !741
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.true18
  %15 = phi i1 [ false, %cond.true18 ], [ %cmp21, %land.rhs ]
  %land.ext = zext i1 %15 to i32
  %conv23 = sext i32 %land.ext to i64
  %tobool24 = icmp ne i64 %conv23, 0
  br i1 %tobool24, label %if.then38, label %if.end

cond.false25:                                     ; preds = %cond.false17
  %call26 = call i32 @klee_get_false(), !dbg !741
  %conv27 = sext i32 %call26 to i64, !dbg !741
  %precision28 = getelementptr inbounds %struct.operand* %last, i32 0, i32 2, !dbg !741
  %16 = load i32* %precision28, align 4, !dbg !741
  %tobool29 = icmp ne i32 %16, 0, !dbg !741
  br i1 %tobool29, label %land.rhs30, label %land.end33, !dbg !741

land.rhs30:                                       ; preds = %cond.false25
  %17 = load i32* %prec, align 4, !dbg !741
  %cmp31 = icmp eq i32 %17, 0, !dbg !741
  br label %land.end33

land.end33:                                       ; preds = %land.rhs30, %cond.false25
  %18 = phi i1 [ false, %cond.false25 ], [ %cmp31, %land.rhs30 ]
  %land.ext34 = zext i1 %18 to i32
  %conv35 = sext i32 %land.ext34 to i64
  %call36 = call i64 @klee_change(i64 %conv27, i64 %conv35), !dbg !741
  %tobool37 = icmp ne i64 %call36, 0, !dbg !741
  br i1 %tobool37, label %if.then38, label %if.end, !dbg !741

if.then38:                                        ; preds = %land.end33, %land.end, %cond.true14
  %19 = load i64* %last_width, align 8, !dbg !743
  %dec = add i64 %19, -1, !dbg !743
  store i64 %dec, i64* %last_width, align 8, !dbg !743
  br label %if.end, !dbg !743

if.end:                                           ; preds = %if.then38, %land.end33, %land.end, %cond.true14
  br i1 false, label %cond.true39, label %cond.false56, !dbg !744

cond.true39:                                      ; preds = %if.end
  %width40 = getelementptr inbounds %struct.operand* %first, i32 0, i32 1, !dbg !744
  %20 = load i64* %width40, align 8, !dbg !744
  %21 = load i64* %first_width, align 8, !dbg !744
  %cmp41 = icmp ule i64 %20, %21, !dbg !744
  br i1 %cmp41, label %land.rhs43, label %land.end52, !dbg !744

land.rhs43:                                       ; preds = %cond.true39
  %width44 = getelementptr inbounds %struct.operand* %last, i32 0, i32 1, !dbg !744
  %22 = load i64* %width44, align 8, !dbg !744
  %23 = load i64* %last_width, align 8, !dbg !744
  %cmp45 = icmp ult i64 %22, %23, !dbg !744
  %conv46 = zext i1 %cmp45 to i32, !dbg !744
  %24 = load i32* %prec, align 4, !dbg !744
  %precision47 = getelementptr inbounds %struct.operand* %last, i32 0, i32 2, !dbg !744
  %25 = load i32* %precision47, align 4, !dbg !744
  %cmp48 = icmp slt i32 %24, %25, !dbg !744
  %conv49 = zext i1 %cmp48 to i32, !dbg !744
  %cmp50 = icmp eq i32 %conv46, %conv49, !dbg !744
  br label %land.end52

land.end52:                                       ; preds = %land.rhs43, %cond.true39
  %26 = phi i1 [ false, %cond.true39 ], [ %cmp50, %land.rhs43 ]
  %land.ext53 = zext i1 %26 to i32
  %conv54 = sext i32 %land.ext53 to i64
  %tobool55 = icmp ne i64 %conv54, 0
  br i1 %tobool55, label %if.then81, label %if.end95

cond.false56:                                     ; preds = %if.end
  br i1 false, label %cond.true57, label %cond.false61

cond.true57:                                      ; preds = %cond.false56
  %call58 = call i32 @klee_get_true(), !dbg !744
  %conv59 = sext i32 %call58 to i64, !dbg !744
  %tobool60 = icmp ne i64 %conv59, 0, !dbg !744
  br i1 %tobool60, label %if.then81, label %if.end95, !dbg !744

cond.false61:                                     ; preds = %cond.false56
  %width62 = getelementptr inbounds %struct.operand* %first, i32 0, i32 1, !dbg !744
  %27 = load i64* %width62, align 8, !dbg !744
  %28 = load i64* %first_width, align 8, !dbg !744
  %cmp63 = icmp ule i64 %27, %28, !dbg !744
  br i1 %cmp63, label %land.rhs65, label %land.end74, !dbg !744

land.rhs65:                                       ; preds = %cond.false61
  %width66 = getelementptr inbounds %struct.operand* %last, i32 0, i32 1, !dbg !744
  %29 = load i64* %width66, align 8, !dbg !744
  %30 = load i64* %last_width, align 8, !dbg !744
  %cmp67 = icmp ult i64 %29, %30, !dbg !744
  %conv68 = zext i1 %cmp67 to i32, !dbg !744
  %31 = load i32* %prec, align 4, !dbg !744
  %precision69 = getelementptr inbounds %struct.operand* %last, i32 0, i32 2, !dbg !744
  %32 = load i32* %precision69, align 4, !dbg !744
  %cmp70 = icmp slt i32 %31, %32, !dbg !744
  %conv71 = zext i1 %cmp70 to i32, !dbg !744
  %cmp72 = icmp eq i32 %conv68, %conv71, !dbg !744
  br label %land.end74

land.end74:                                       ; preds = %land.rhs65, %cond.false61
  %33 = phi i1 [ false, %cond.false61 ], [ %cmp72, %land.rhs65 ]
  %land.ext75 = zext i1 %33 to i32
  %conv76 = sext i32 %land.ext75 to i64
  %call77 = call i32 @klee_get_true(), !dbg !744
  %conv78 = sext i32 %call77 to i64, !dbg !744
  %call79 = call i64 @klee_change(i64 %conv76, i64 %conv78), !dbg !744
  %tobool80 = icmp ne i64 %call79, 0, !dbg !744
  br i1 %tobool80, label %if.then81, label %if.end95, !dbg !744

if.then81:                                        ; preds = %land.end74, %cond.true57, %land.end52
  call void @llvm.dbg.declare(metadata !{i64* %width82}, metadata !746), !dbg !748
  %34 = load i64* %first_width, align 8, !dbg !748
  %35 = load i64* %last_width, align 8, !dbg !748
  %cmp83 = icmp ugt i64 %34, %35, !dbg !748
  br i1 %cmp83, label %cond.true85, label %cond.false86, !dbg !748

cond.true85:                                      ; preds = %if.then81
  %36 = load i64* %first_width, align 8, !dbg !748
  br label %cond.end87, !dbg !748

cond.false86:                                     ; preds = %if.then81
  %37 = load i64* %last_width, align 8, !dbg !748
  br label %cond.end87, !dbg !748

cond.end87:                                       ; preds = %cond.false86, %cond.true85
  %cond88 = phi i64 [ %36, %cond.true85 ], [ %37, %cond.false86 ], !dbg !748
  store i64 %cond88, i64* %width82, align 8, !dbg !748
  %38 = load i64* %width82, align 8, !dbg !749
  %cmp89 = icmp ule i64 %38, 2147483647, !dbg !749
  br i1 %cmp89, label %if.then91, label %if.end94, !dbg !749

if.then91:                                        ; preds = %cond.end87
  call void @llvm.dbg.declare(metadata !{i32* %w}, metadata !751), !dbg !753
  %39 = load i64* %width82, align 8, !dbg !753
  %conv92 = trunc i64 %39 to i32, !dbg !753
  store i32 %conv92, i32* %w, align 4, !dbg !753
  %40 = load i32* %w, align 4, !dbg !754
  %41 = load i32* %prec, align 4, !dbg !754
  %call93 = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([28 x i8]* @get_default_format.format_buf, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str25, i32 0, i32 0), i32 %40, i32 %41) #7, !dbg !754
  store i8* getelementptr inbounds ([28 x i8]* @get_default_format.format_buf, i32 0, i32 0), i8** %retval, !dbg !755
  br label %return, !dbg !755

if.end94:                                         ; preds = %cond.end87
  br label %if.end95, !dbg !756

if.end95:                                         ; preds = %if.end94, %land.end74, %cond.true57, %land.end52
  br label %if.end97, !dbg !757

if.else:                                          ; preds = %if.then
  %42 = load i32* %prec, align 4, !dbg !758
  %call96 = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([28 x i8]* @get_default_format.format_buf, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str26, i32 0, i32 0), i32 %42) #7, !dbg !758
  store i8* getelementptr inbounds ([28 x i8]* @get_default_format.format_buf, i32 0, i32 0), i8** %retval, !dbg !760
  br label %return, !dbg !760

if.end97:                                         ; preds = %if.end95
  br label %if.end98, !dbg !761

if.end98:                                         ; preds = %if.end97, %land.lhs.true, %cond.end
  store i8* getelementptr inbounds ([4 x i8]* @.str27, i32 0, i32 0), i8** %retval, !dbg !762
  br label %return, !dbg !762

return:                                           ; preds = %if.end98, %if.else, %if.then91
  %43 = load i8** %retval, !dbg !763
  ret i8* %43, !dbg !763
}

; Function Attrs: nounwind uwtable
define internal void @print_numbers(i8* %fmt, x86_fp80 %first, x86_fp80 %step, x86_fp80 %last) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %first.addr = alloca x86_fp80, align 16
  %step.addr = alloca x86_fp80, align 16
  %last.addr = alloca x86_fp80, align 16
  %i = alloca x86_fp80, align 16
  %x0 = alloca x86_fp80, align 16
  %x = alloca x86_fp80, align 16
  %x_str = alloca i8*, align 8
  %last_str = alloca i8*, align 8
  %x0_str = alloca i8*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %fmt.addr}, metadata !764), !dbg !765
  store x86_fp80 %first, x86_fp80* %first.addr, align 16
  call void @llvm.dbg.declare(metadata !{x86_fp80* %first.addr}, metadata !766), !dbg !767
  store x86_fp80 %step, x86_fp80* %step.addr, align 16
  call void @llvm.dbg.declare(metadata !{x86_fp80* %step.addr}, metadata !768), !dbg !767
  store x86_fp80 %last, x86_fp80* %last.addr, align 16
  call void @llvm.dbg.declare(metadata !{x86_fp80* %last.addr}, metadata !769), !dbg !767
  call void @llvm.dbg.declare(metadata !{x86_fp80* %i}, metadata !770), !dbg !771
  call void @llvm.dbg.declare(metadata !{x86_fp80* %x0}, metadata !772), !dbg !773
  store x86_fp80 0xK00000000000000000000, x86_fp80* %i, align 16, !dbg !774
  br label %for.cond, !dbg !774

for.cond:                                         ; preds = %for.inc, %entry
  call void @llvm.dbg.declare(metadata !{x86_fp80* %x}, metadata !776), !dbg !778
  %0 = load x86_fp80* %first.addr, align 16, !dbg !778
  %1 = load x86_fp80* %i, align 16, !dbg !778
  %2 = load x86_fp80* %step.addr, align 16, !dbg !778
  %mul = fmul x86_fp80 %1, %2, !dbg !778
  %add = fadd x86_fp80 %0, %mul, !dbg !778
  store x86_fp80 %add, x86_fp80* %x, align 16, !dbg !778
  %3 = load x86_fp80* %step.addr, align 16, !dbg !779
  %cmp = fcmp olt x86_fp80 %3, 0xK00000000000000000000, !dbg !779
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !779

cond.true:                                        ; preds = %for.cond
  %4 = load x86_fp80* %x, align 16, !dbg !779
  %5 = load x86_fp80* %last.addr, align 16, !dbg !779
  %cmp1 = fcmp olt x86_fp80 %4, %5, !dbg !779
  br i1 %cmp1, label %if.then, label %if.end23, !dbg !779

cond.false:                                       ; preds = %for.cond
  %6 = load x86_fp80* %last.addr, align 16, !dbg !779
  %7 = load x86_fp80* %x, align 16, !dbg !779
  %cmp2 = fcmp olt x86_fp80 %6, %7, !dbg !779
  br i1 %cmp2, label %if.then, label %if.end23, !dbg !779

if.then:                                          ; preds = %cond.false, %cond.true
  %8 = load x86_fp80* %i, align 16, !dbg !781
  %tobool = fcmp une x86_fp80 %8, 0xK00000000000000000000, !dbg !781
  br i1 %tobool, label %if.then3, label %if.end22, !dbg !781

if.then3:                                         ; preds = %if.then
  call void @llvm.dbg.declare(metadata !{i8** %x_str}, metadata !784), !dbg !786
  store i8* null, i8** %x_str, align 8, !dbg !786
  call void @llvm.dbg.declare(metadata !{i8** %last_str}, metadata !787), !dbg !788
  store i8* null, i8** %last_str, align 8, !dbg !788
  %9 = load i8** %fmt.addr, align 8, !dbg !789
  %10 = load x86_fp80* %x, align 16, !dbg !789
  %call = call i32 (i8**, i8*, ...)* @asprintf(i8** %x_str, i8* %9, x86_fp80 %10) #7, !dbg !789
  %cmp4 = icmp slt i32 %call, 0, !dbg !789
  br i1 %cmp4, label %if.then7, label %lor.lhs.false, !dbg !789

lor.lhs.false:                                    ; preds = %if.then3
  %11 = load i8** %fmt.addr, align 8, !dbg !791
  %12 = load x86_fp80* %last.addr, align 16, !dbg !791
  %call5 = call i32 (i8**, i8*, ...)* @asprintf(i8** %last_str, i8* %11, x86_fp80 %12) #7, !dbg !791
  %cmp6 = icmp slt i32 %call5, 0, !dbg !791
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !791

if.then7:                                         ; preds = %lor.lhs.false, %if.then3
  call void @xalloc_die() #14, !dbg !792
  unreachable, !dbg !792

if.end:                                           ; preds = %lor.lhs.false
  %13 = load i8** %x_str, align 8, !dbg !793
  %14 = load i8** %last_str, align 8, !dbg !793
  %call8 = call i32 @strcmp(i8* %13, i8* %14) #13, !dbg !793
  %cmp9 = icmp eq i32 %call8, 0, !dbg !793
  br i1 %cmp9, label %if.then10, label %if.end21, !dbg !793

if.then10:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata !{i8** %x0_str}, metadata !795), !dbg !797
  store i8* null, i8** %x0_str, align 8, !dbg !797
  %15 = load i8** %fmt.addr, align 8, !dbg !798
  %16 = load x86_fp80* %x0, align 16, !dbg !798
  %call11 = call i32 (i8**, i8*, ...)* @asprintf(i8** %x0_str, i8* %15, x86_fp80 %16) #7, !dbg !798
  %cmp12 = icmp slt i32 %call11, 0, !dbg !798
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !798

if.then13:                                        ; preds = %if.then10
  call void @xalloc_die() #14, !dbg !800
  unreachable, !dbg !800

if.end14:                                         ; preds = %if.then10
  %17 = load i8** %x0_str, align 8, !dbg !801
  %18 = load i8** %x_str, align 8, !dbg !801
  %call15 = call i32 @strcmp(i8* %17, i8* %18) #13, !dbg !801
  %cmp16 = icmp eq i32 %call15, 0, !dbg !801
  br i1 %cmp16, label %if.end20, label %if.then17, !dbg !801

if.then17:                                        ; preds = %if.end14
  %19 = load i8** @separator, align 8, !dbg !803
  %20 = load %struct._IO_FILE** @stdout, align 8, !dbg !803
  %call18 = call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !803
  %21 = load i8** %x_str, align 8, !dbg !805
  %22 = load %struct._IO_FILE** @stdout, align 8, !dbg !805
  %call19 = call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !805
  br label %if.end20, !dbg !806

if.end20:                                         ; preds = %if.then17, %if.end14
  %23 = load i8** %x0_str, align 8, !dbg !807
  call void @free(i8* %23) #7, !dbg !807
  br label %if.end21, !dbg !808

if.end21:                                         ; preds = %if.end20, %if.end
  %24 = load i8** %x_str, align 8, !dbg !809
  call void @free(i8* %24) #7, !dbg !809
  %25 = load i8** %last_str, align 8, !dbg !810
  call void @free(i8* %25) #7, !dbg !810
  br label %if.end22, !dbg !811

if.end22:                                         ; preds = %if.end21, %if.then
  br label %for.end, !dbg !812

if.end23:                                         ; preds = %cond.false, %cond.true
  %26 = load x86_fp80* %i, align 16, !dbg !813
  %tobool24 = fcmp une x86_fp80 %26, 0xK00000000000000000000, !dbg !813
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !813

if.then25:                                        ; preds = %if.end23
  %27 = load i8** @separator, align 8, !dbg !815
  %28 = load %struct._IO_FILE** @stdout, align 8, !dbg !815
  %call26 = call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !815
  br label %if.end27, !dbg !815

if.end27:                                         ; preds = %if.then25, %if.end23
  %29 = load i8** %fmt.addr, align 8, !dbg !816
  %30 = load x86_fp80* %x, align 16, !dbg !816
  %call28 = call i32 (i8*, ...)* @printf(i8* %29, x86_fp80 %30), !dbg !816
  %31 = load x86_fp80* %x, align 16, !dbg !817
  store x86_fp80 %31, x86_fp80* %x0, align 16, !dbg !817
  br label %for.inc, !dbg !818

for.inc:                                          ; preds = %if.end27
  %32 = load x86_fp80* %i, align 16, !dbg !774
  %inc = fadd x86_fp80 %32, 0xK3FFF8000000000000000, !dbg !774
  store x86_fp80 %inc, x86_fp80* %i, align 16, !dbg !774
  br label %for.cond, !dbg !774

for.end:                                          ; preds = %if.end22
  %33 = load x86_fp80* %i, align 16, !dbg !819
  %tobool29 = fcmp une x86_fp80 %33, 0xK00000000000000000000, !dbg !819
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !819

if.then30:                                        ; preds = %for.end
  %34 = load %struct._IO_FILE** @stdout, align 8, !dbg !821
  %call31 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8]* @terminator, i32 0, i32 0), %struct._IO_FILE* %34), !dbg !821
  br label %if.end32, !dbg !821

if.end32:                                         ; preds = %if.then30, %for.end
  ret void, !dbg !822
}

; Function Attrs: nounwind
declare i32 @asprintf(i8**, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #8

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #9

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #8

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #8

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #8

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #8

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @version_etc_va(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, %struct.__va_list_tag* %authors) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca %struct.__va_list_tag*, align 8
  %n_authors = alloca i64, align 8
  %tmp_authors = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %stream.addr}, metadata !823), !dbg !824
  store i8* %command_name, i8** %command_name.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %command_name.addr}, metadata !825), !dbg !826
  store i8* %package, i8** %package.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %package.addr}, metadata !827), !dbg !826
  store i8* %version, i8** %version.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %version.addr}, metadata !828), !dbg !829
  store %struct.__va_list_tag* %authors, %struct.__va_list_tag** %authors.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.__va_list_tag** %authors.addr}, metadata !830), !dbg !829
  call void @llvm.dbg.declare(metadata !{i64* %n_authors}, metadata !831), !dbg !832
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %tmp_authors}, metadata !833), !dbg !839
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %tmp_authors, i32 0, i32 0, !dbg !840
  %0 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !840
  %1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !840
  %2 = bitcast %struct.__va_list_tag* %0 to i8*, !dbg !840
  call void @llvm.va_copy(i8* %1, i8* %2), !dbg !840
  store i64 0, i64* %n_authors, align 8, !dbg !841
  br label %while.cond, !dbg !842

while.cond:                                       ; preds = %while.body, %entry
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %tmp_authors, i32 0, i32 0, !dbg !842
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay1, i32 0, i32 0, !dbg !842
  %gp_offset = load i32* %gp_offset_p, !dbg !842
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !842
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !842

vaarg.in_reg:                                     ; preds = %while.cond
  %3 = getelementptr inbounds %struct.__va_list_tag* %arraydecay1, i32 0, i32 3, !dbg !842
  %reg_save_area = load i8** %3, !dbg !842
  %4 = getelementptr i8* %reg_save_area, i32 %gp_offset, !dbg !842
  %5 = bitcast i8* %4 to i8**, !dbg !842
  %6 = add i32 %gp_offset, 8, !dbg !842
  store i32 %6, i32* %gp_offset_p, !dbg !842
  br label %vaarg.end, !dbg !842

vaarg.in_mem:                                     ; preds = %while.cond
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay1, i32 0, i32 2, !dbg !842
  %overflow_arg_area = load i8** %overflow_arg_area_p, !dbg !842
  %7 = bitcast i8* %overflow_arg_area to i8**, !dbg !842
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i32 8, !dbg !842
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, !dbg !842
  br label %vaarg.end, !dbg !842

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %5, %vaarg.in_reg ], [ %7, %vaarg.in_mem ], !dbg !842
  %8 = load i8** %vaarg.addr, !dbg !842
  %cmp = icmp ne i8* %8, null, !dbg !842
  br i1 %cmp, label %while.body, label %while.end, !dbg !842

while.body:                                       ; preds = %vaarg.end
  %9 = load i64* %n_authors, align 8, !dbg !843
  %inc = add i64 %9, 1, !dbg !843
  store i64 %inc, i64* %n_authors, align 8, !dbg !843
  br label %while.cond, !dbg !843

while.end:                                        ; preds = %vaarg.end
  %10 = load i8** %command_name.addr, align 8, !dbg !844
  %tobool = icmp ne i8* %10, null, !dbg !844
  br i1 %tobool, label %if.then, label %if.else, !dbg !844

if.then:                                          ; preds = %while.end
  %11 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !846
  %12 = load i8** %command_name.addr, align 8, !dbg !846
  %13 = load i8** %package.addr, align 8, !dbg !846
  %14 = load i8** %version.addr, align 8, !dbg !846
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([12 x i8]* @.str42, i32 0, i32 0), i8* %12, i8* %13, i8* %14), !dbg !846
  br label %if.end, !dbg !846

if.else:                                          ; preds = %while.end
  %15 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !847
  %16 = load i8** %package.addr, align 8, !dbg !847
  %17 = load i8** %version.addr, align 8, !dbg !847
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([7 x i8]* @.str143, i32 0, i32 0), i8* %16, i8* %17), !dbg !847
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !848
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([47 x i8]* @version_etc_copyright, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str244, i32 0, i32 0), i32 2007), !dbg !848
  %19 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !849
  %call4 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([202 x i8]* @.str345, i32 0, i32 0), %struct._IO_FILE* %19), !dbg !849
  %20 = load i64* %n_authors, align 8, !dbg !850
  switch i64 %20, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb5
    i64 2, label %sw.bb7
    i64 3, label %sw.bb9
    i64 4, label %sw.bb11
    i64 5, label %sw.bb13
    i64 6, label %sw.bb15
    i64 7, label %sw.bb17
    i64 8, label %sw.bb19
    i64 9, label %sw.bb21
  ], !dbg !850

sw.bb:                                            ; preds = %if.end
  call void @abort() #12, !dbg !851
  unreachable, !dbg !851

sw.bb5:                                           ; preds = %if.end
  %21 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !853
  %22 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !853
  %call6 = call i32 @vfprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([16 x i8]* @.str446, i32 0, i32 0), %struct.__va_list_tag* %22), !dbg !853
  br label %sw.epilog, !dbg !854

sw.bb7:                                           ; preds = %if.end
  %23 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !855
  %24 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !855
  %call8 = call i32 @vfprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([23 x i8]* @.str547, i32 0, i32 0), %struct.__va_list_tag* %24), !dbg !855
  br label %sw.epilog, !dbg !856

sw.bb9:                                           ; preds = %if.end
  %25 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !857
  %26 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !857
  %call10 = call i32 @vfprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([28 x i8]* @.str648, i32 0, i32 0), %struct.__va_list_tag* %26), !dbg !857
  br label %sw.epilog, !dbg !858

sw.bb11:                                          ; preds = %if.end
  %27 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !859
  %28 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !859
  %call12 = call i32 @vfprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([32 x i8]* @.str749, i32 0, i32 0), %struct.__va_list_tag* %28), !dbg !859
  br label %sw.epilog, !dbg !860

sw.bb13:                                          ; preds = %if.end
  %29 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !861
  %30 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !861
  %call14 = call i32 @vfprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([36 x i8]* @.str850, i32 0, i32 0), %struct.__va_list_tag* %30), !dbg !861
  br label %sw.epilog, !dbg !862

sw.bb15:                                          ; preds = %if.end
  %31 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !863
  %32 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !863
  %call16 = call i32 @vfprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([40 x i8]* @.str951, i32 0, i32 0), %struct.__va_list_tag* %32), !dbg !863
  br label %sw.epilog, !dbg !864

sw.bb17:                                          ; preds = %if.end
  %33 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !865
  %34 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !865
  %call18 = call i32 @vfprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([44 x i8]* @.str1052, i32 0, i32 0), %struct.__va_list_tag* %34), !dbg !865
  br label %sw.epilog, !dbg !866

sw.bb19:                                          ; preds = %if.end
  %35 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !867
  %36 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !867
  %call20 = call i32 @vfprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([48 x i8]* @.str1153, i32 0, i32 0), %struct.__va_list_tag* %36), !dbg !867
  br label %sw.epilog, !dbg !868

sw.bb21:                                          ; preds = %if.end
  %37 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !869
  %38 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !869
  %call22 = call i32 @vfprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([52 x i8]* @.str1254, i32 0, i32 0), %struct.__va_list_tag* %38), !dbg !869
  br label %sw.epilog, !dbg !870

sw.default:                                       ; preds = %if.end
  %39 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !871
  %40 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !871
  %call23 = call i32 @vfprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([60 x i8]* @.str1355, i32 0, i32 0), %struct.__va_list_tag* %40), !dbg !871
  br label %sw.epilog, !dbg !872

sw.epilog:                                        ; preds = %sw.default, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5
  %41 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !873
  %42 = bitcast %struct.__va_list_tag* %41 to i8*, !dbg !873
  call void @llvm.va_end(i8* %42), !dbg !873
  ret void, !dbg !874
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #7

; Function Attrs: noreturn nounwind
declare void @abort() #6

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind uwtable
define void @version_etc(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, ...) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %stream.addr}, metadata !875), !dbg !876
  store i8* %command_name, i8** %command_name.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %command_name.addr}, metadata !877), !dbg !878
  store i8* %package, i8** %package.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %package.addr}, metadata !879), !dbg !878
  store i8* %version, i8** %version.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %version.addr}, metadata !880), !dbg !881
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %authors}, metadata !882), !dbg !883
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !884
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !884
  call void @llvm.va_start(i8* %arraydecay1), !dbg !884
  %0 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !885
  %1 = load i8** %command_name.addr, align 8, !dbg !885
  %2 = load i8** %package.addr, align 8, !dbg !885
  %3 = load i8** %version.addr, align 8, !dbg !885
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !885
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* %arraydecay2), !dbg !885
  ret void, !dbg !886
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: noreturn nounwind uwtable
define void @xalloc_die() #10 {
entry:
  %0 = load volatile i32* @exit_failure, align 4, !dbg !887
  call void (i32, i32, i8*, ...)* @klee_compatible_error(i32 %0, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str161, i32 0, i32 0)), !dbg !887
  call void @abort() #12, !dbg !888
  unreachable, !dbg !888

return:                                           ; No predecessors!
  ret void, !dbg !889
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #3

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal void @klee_compatible_error(i32 %status, i32 %errno, i8* %format, ...) #0 {
entry:
  %status.addr = alloca i32, align 4
  %errno.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %err_args = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %status.addr}, metadata !890), !dbg !891
  store i32 %errno, i32* %errno.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %errno.addr}, metadata !892), !dbg !891
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %format.addr}, metadata !893), !dbg !891
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %err_args}, metadata !894), !dbg !906
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %err_args, i32 0, i32 0, !dbg !907
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !907
  call void @llvm.va_start(i8* %arraydecay1), !dbg !907
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !908
  %1 = load i8** %format.addr, align 8, !dbg !908
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %err_args, i32 0, i32 0, !dbg !908
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !908
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %err_args, i32 0, i32 0, !dbg !909
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !909
  call void @llvm.va_end(i8* %arraydecay34), !dbg !909
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !910
  %call5 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %2), !dbg !910
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !911
  %call6 = call i32 @fflush(%struct._IO_FILE* %3), !dbg !911
  %4 = load i32* %status.addr, align 4, !dbg !912
  %tobool = icmp ne i32 %4, 0, !dbg !912
  br i1 %tobool, label %if.then, label %if.end, !dbg !912

if.then:                                          ; preds = %entry
  %5 = load i32* %status.addr, align 4, !dbg !914
  call void @exit(i32 %5) #12, !dbg !914
  unreachable, !dbg !914

if.end:                                           ; preds = %entry
  ret void, !dbg !916
}

; Function Attrs: nounwind uwtable
define x86_fp80 @c_strtold(i8* %nptr, i8** %endptr) #0 {
entry:
  %nptr.addr = alloca i8*, align 8
  %endptr.addr = alloca i8**, align 8
  %r = alloca x86_fp80, align 16
  %c_locale = alloca %struct.__locale_struct*, align 8
  store i8* %nptr, i8** %nptr.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %nptr.addr}, metadata !917), !dbg !918
  store i8** %endptr, i8*** %endptr.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8*** %endptr.addr}, metadata !919), !dbg !918
  call void @llvm.dbg.declare(metadata !{x86_fp80* %r}, metadata !920), !dbg !921
  call void @llvm.dbg.declare(metadata !{%struct.__locale_struct** %c_locale}, metadata !922), !dbg !944
  %call = call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8]* @.str64, i32 0, i32 0), %struct.__locale_struct* null) #7, !dbg !944
  store %struct.__locale_struct* %call, %struct.__locale_struct** %c_locale, align 8, !dbg !944
  %0 = load i8** %nptr.addr, align 8, !dbg !945
  %1 = load i8*** %endptr.addr, align 8, !dbg !945
  %2 = load %struct.__locale_struct** %c_locale, align 8, !dbg !945
  %call1 = call x86_fp80 @strtold_l(i8* %0, i8** %1, %struct.__locale_struct* %2) #7, !dbg !945
  store x86_fp80 %call1, x86_fp80* %r, align 16, !dbg !945
  %3 = load %struct.__locale_struct** %c_locale, align 8, !dbg !946
  call void @freelocale(%struct.__locale_struct* %3) #7, !dbg !946
  %4 = load x86_fp80* %r, align 16, !dbg !947
  ret x86_fp80 %4, !dbg !947
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) #2

; Function Attrs: nounwind
declare x86_fp80 @strtold_l(i8*, i8**, %struct.__locale_struct*) #2

; Function Attrs: nounwind
declare void @freelocale(%struct.__locale_struct*) #2

; Function Attrs: nounwind uwtable
define void @close_stdout_set_file_name(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %file.addr}, metadata !948), !dbg !949
  %0 = load i8** %file.addr, align 8, !dbg !950
  store i8* %0, i8** @file_name, align 8, !dbg !950
  ret void, !dbg !951
}

; Function Attrs: nounwind uwtable
define void @close_stdout() #0 {
entry:
  %write_error = alloca i8*, align 8
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !952
  %call = call i32 @close_stream(%struct._IO_FILE* %0), !dbg !952
  %cmp = icmp ne i32 %call, 0, !dbg !952
  br i1 %cmp, label %if.then, label %if.end5, !dbg !952

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i8** %write_error}, metadata !954), !dbg !956
  store i8* getelementptr inbounds ([12 x i8]* @.str67, i32 0, i32 0), i8** %write_error, align 8, !dbg !956
  %1 = load i8** @file_name, align 8, !dbg !957
  %tobool = icmp ne i8* %1, null, !dbg !957
  br i1 %tobool, label %if.then1, label %if.else, !dbg !957

if.then1:                                         ; preds = %if.then
  %call2 = call i32* @__errno_location() #1, !dbg !959
  %2 = load i32* %call2, align 4, !dbg !959
  %3 = load i8** @file_name, align 8, !dbg !959
  %call3 = call i8* @quotearg_colon(i8* %3), !dbg !959
  %4 = load i8** %write_error, align 8, !dbg !959
  call void (i32, i32, i8*, ...)* @error(i32 0, i32 %2, i8* getelementptr inbounds ([7 x i8]* @.str168, i32 0, i32 0), i8* %call3, i8* %4), !dbg !959
  br label %if.end, !dbg !959

if.else:                                          ; preds = %if.then
  %call4 = call i32* @__errno_location() #1, !dbg !960
  %5 = load i32* %call4, align 4, !dbg !960
  %6 = load i8** %write_error, align 8, !dbg !960
  call void (i32, i32, i8*, ...)* @error(i32 0, i32 %5, i8* getelementptr inbounds ([3 x i8]* @.str269, i32 0, i32 0), i8* %6), !dbg !960
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %7 = load volatile i32* @exit_failure, align 4, !dbg !961
  call void @_exit(i32 %7) #14, !dbg !961
  unreachable, !dbg !961

if.end5:                                          ; preds = %entry
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !962
  %call6 = call i32 @close_stream(%struct._IO_FILE* %8), !dbg !962
  %cmp7 = icmp ne i32 %call6, 0, !dbg !962
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !962

if.then8:                                         ; preds = %if.end5
  %9 = load volatile i32* @exit_failure, align 4, !dbg !964
  call void @_exit(i32 %9) #14, !dbg !964
  unreachable, !dbg !964

if.end9:                                          ; preds = %if.end5
  ret void, !dbg !965
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #9

; Function Attrs: noreturn
declare void @_exit(i32) #11

; Function Attrs: nounwind uwtable
define i8* @quote_n(i32 %n, i8* %name) #0 {
entry:
  %n.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %n.addr}, metadata !966), !dbg !967
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %name.addr}, metadata !968), !dbg !967
  %0 = load i32* %n.addr, align 4, !dbg !969
  %1 = load i8** %name.addr, align 8, !dbg !969
  %call = call i8* @quotearg_n_style(i32 %0, i32 5, i8* %1), !dbg !969
  ret i8* %call, !dbg !969
}

; Function Attrs: nounwind uwtable
define i8* @quote(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %name.addr}, metadata !970), !dbg !971
  %0 = load i8** %name.addr, align 8, !dbg !972
  %call = call i8* @quote_n(i32 0, i8* %0), !dbg !972
  ret i8* %call, !dbg !972
}

; Function Attrs: nounwind uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %o) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %p = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !973), !dbg !974
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !975), !dbg !976
  %call = call i32* @__errno_location() #1, !dbg !976
  %0 = load i32* %call, align 4, !dbg !976
  store i32 %0, i32* %e, align 4, !dbg !976
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %p}, metadata !977), !dbg !978
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !978
  %tobool = icmp ne %struct.quoting_options* %1, null, !dbg !978
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !978

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options** %o.addr, align 8, !dbg !978
  br label %cond.end, !dbg !978

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !978

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !978
  %3 = bitcast %struct.quoting_options* %cond to i8*, !dbg !978
  %call1 = call i8* @xmemdup(i8* %3, i64 36), !dbg !978
  %4 = bitcast i8* %call1 to %struct.quoting_options*, !dbg !978
  store %struct.quoting_options* %4, %struct.quoting_options** %p, align 8, !dbg !978
  %5 = load i32* %e, align 4, !dbg !979
  %call2 = call i32* @__errno_location() #1, !dbg !979
  store i32 %5, i32* %call2, align 4, !dbg !979
  %6 = load %struct.quoting_options** %p, align 8, !dbg !980
  ret %struct.quoting_options* %6, !dbg !980
}

; Function Attrs: nounwind uwtable
define i32 @get_quoting_style(%struct.quoting_options* %o) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !981), !dbg !982
  %0 = load %struct.quoting_options** %o.addr, align 8, !dbg !983
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !983
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !983

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !983
  br label %cond.end, !dbg !983

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !983

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !983
  %style = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 0, !dbg !983
  %2 = load i32* %style, align 4, !dbg !983
  ret i32 %2, !dbg !983
}

; Function Attrs: nounwind uwtable
define void @set_quoting_style(%struct.quoting_options* %o, i32 %s) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %s.addr = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !984), !dbg !985
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %s.addr}, metadata !986), !dbg !985
  %0 = load i32* %s.addr, align 4, !dbg !987
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !987
  %tobool = icmp ne %struct.quoting_options* %1, null, !dbg !987
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !987

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options** %o.addr, align 8, !dbg !987
  br label %cond.end, !dbg !987

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !987

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !987
  %style = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 0, !dbg !987
  store i32 %0, i32* %style, align 4, !dbg !987
  ret void, !dbg !988
}

; Function Attrs: nounwind uwtable
define i32 @set_char_quoting(%struct.quoting_options* %o, i8 signext %c, i32 %i) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %c.addr = alloca i8, align 1
  %i.addr = alloca i32, align 4
  %uc = alloca i8, align 1
  %p = alloca i32*, align 8
  %shift = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !989), !dbg !990
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata !{i8* %c.addr}, metadata !991), !dbg !990
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %i.addr}, metadata !992), !dbg !990
  call void @llvm.dbg.declare(metadata !{i8* %uc}, metadata !993), !dbg !995
  %0 = load i8* %c.addr, align 1, !dbg !995
  store i8 %0, i8* %uc, align 1, !dbg !995
  call void @llvm.dbg.declare(metadata !{i32** %p}, metadata !996), !dbg !998
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !998
  %tobool = icmp ne %struct.quoting_options* %1, null, !dbg !998
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !998

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options** %o.addr, align 8, !dbg !998
  br label %cond.end, !dbg !998

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !998

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !998
  %quote_these_too = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 1, !dbg !998
  %arraydecay = getelementptr inbounds [8 x i32]* %quote_these_too, i32 0, i32 0, !dbg !998
  %3 = load i8* %uc, align 1, !dbg !998
  %conv = zext i8 %3 to i64, !dbg !998
  %div = udiv i64 %conv, 32, !dbg !998
  %add.ptr = getelementptr inbounds i32* %arraydecay, i64 %div, !dbg !998
  store i32* %add.ptr, i32** %p, align 8, !dbg !998
  call void @llvm.dbg.declare(metadata !{i32* %shift}, metadata !999), !dbg !1000
  %4 = load i8* %uc, align 1, !dbg !1000
  %conv1 = zext i8 %4 to i64, !dbg !1000
  %rem = urem i64 %conv1, 32, !dbg !1000
  %conv2 = trunc i64 %rem to i32, !dbg !1000
  store i32 %conv2, i32* %shift, align 4, !dbg !1000
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !1001), !dbg !1002
  %5 = load i32** %p, align 8, !dbg !1002
  %6 = load i32* %5, align 4, !dbg !1002
  %7 = load i32* %shift, align 4, !dbg !1002
  %shr = lshr i32 %6, %7, !dbg !1002
  %and = and i32 %shr, 1, !dbg !1002
  store i32 %and, i32* %r, align 4, !dbg !1002
  %8 = load i32* %i.addr, align 4, !dbg !1003
  %and3 = and i32 %8, 1, !dbg !1003
  %9 = load i32* %r, align 4, !dbg !1003
  %xor = xor i32 %and3, %9, !dbg !1003
  %10 = load i32* %shift, align 4, !dbg !1003
  %shl = shl i32 %xor, %10, !dbg !1003
  %11 = load i32** %p, align 8, !dbg !1003
  %12 = load i32* %11, align 4, !dbg !1003
  %xor4 = xor i32 %12, %shl, !dbg !1003
  store i32 %xor4, i32* %11, align 4, !dbg !1003
  %13 = load i32* %r, align 4, !dbg !1004
  ret i32 %13, !dbg !1004
}

; Function Attrs: nounwind uwtable
define i64 @quotearg_buffer(i8* %buffer, i64 %buffersize, i8* %arg, i64 %argsize, %struct.quoting_options* %o) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %buffersize.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  %p = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %r = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %buffer.addr}, metadata !1005), !dbg !1006
  store i64 %buffersize, i64* %buffersize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %buffersize.addr}, metadata !1007), !dbg !1006
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1008), !dbg !1009
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %argsize.addr}, metadata !1010), !dbg !1009
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !1011), !dbg !1012
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %p}, metadata !1013), !dbg !1014
  %0 = load %struct.quoting_options** %o.addr, align 8, !dbg !1014
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !1014
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1014

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !1014
  br label %cond.end, !dbg !1014

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1014

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !1014
  store %struct.quoting_options* %cond, %struct.quoting_options** %p, align 8, !dbg !1014
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !1015), !dbg !1016
  %call = call i32* @__errno_location() #1, !dbg !1016
  %2 = load i32* %call, align 4, !dbg !1016
  store i32 %2, i32* %e, align 4, !dbg !1016
  call void @llvm.dbg.declare(metadata !{i64* %r}, metadata !1017), !dbg !1018
  %3 = load i8** %buffer.addr, align 8, !dbg !1018
  %4 = load i64* %buffersize.addr, align 8, !dbg !1018
  %5 = load i8** %arg.addr, align 8, !dbg !1018
  %6 = load i64* %argsize.addr, align 8, !dbg !1018
  %7 = load %struct.quoting_options** %p, align 8, !dbg !1018
  %style = getelementptr inbounds %struct.quoting_options* %7, i32 0, i32 0, !dbg !1018
  %8 = load i32* %style, align 4, !dbg !1018
  %9 = load %struct.quoting_options** %p, align 8, !dbg !1018
  %call1 = call i64 @quotearg_buffer_restyled(i8* %3, i64 %4, i8* %5, i64 %6, i32 %8, %struct.quoting_options* %9), !dbg !1018
  store i64 %call1, i64* %r, align 8, !dbg !1018
  %10 = load i32* %e, align 4, !dbg !1019
  %call2 = call i32* @__errno_location() #1, !dbg !1019
  store i32 %10, i32* %call2, align 4, !dbg !1019
  %11 = load i64* %r, align 8, !dbg !1020
  ret i64 %11, !dbg !1020
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_alloc(i8* %arg, i64 %argsize, %struct.quoting_options* %o) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %bufsize = alloca i64, align 8
  %buf = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1021), !dbg !1022
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %argsize.addr}, metadata !1023), !dbg !1022
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !1024), !dbg !1025
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !1026), !dbg !1027
  %call = call i32* @__errno_location() #1, !dbg !1027
  %0 = load i32* %call, align 4, !dbg !1027
  store i32 %0, i32* %e, align 4, !dbg !1027
  call void @llvm.dbg.declare(metadata !{i64* %bufsize}, metadata !1028), !dbg !1029
  %1 = load i8** %arg.addr, align 8, !dbg !1029
  %2 = load i64* %argsize.addr, align 8, !dbg !1029
  %3 = load %struct.quoting_options** %o.addr, align 8, !dbg !1029
  %call1 = call i64 @quotearg_buffer(i8* null, i64 0, i8* %1, i64 %2, %struct.quoting_options* %3), !dbg !1029
  %add = add i64 %call1, 1, !dbg !1029
  store i64 %add, i64* %bufsize, align 8, !dbg !1029
  call void @llvm.dbg.declare(metadata !{i8** %buf}, metadata !1030), !dbg !1031
  %4 = load i64* %bufsize, align 8, !dbg !1031
  %call2 = call i8* @xcharalloc(i64 %4), !dbg !1031
  store i8* %call2, i8** %buf, align 8, !dbg !1031
  %5 = load i8** %buf, align 8, !dbg !1032
  %6 = load i64* %bufsize, align 8, !dbg !1032
  %7 = load i8** %arg.addr, align 8, !dbg !1032
  %8 = load i64* %argsize.addr, align 8, !dbg !1032
  %9 = load %struct.quoting_options** %o.addr, align 8, !dbg !1032
  %call3 = call i64 @quotearg_buffer(i8* %5, i64 %6, i8* %7, i64 %8, %struct.quoting_options* %9), !dbg !1032
  %10 = load i32* %e, align 4, !dbg !1033
  %call4 = call i32* @__errno_location() #1, !dbg !1033
  store i32 %10, i32* %call4, align 4, !dbg !1033
  %11 = load i8** %buf, align 8, !dbg !1034
  ret i8* %11, !dbg !1034
}

; Function Attrs: nounwind uwtable
define void @quotearg_free() #0 {
entry:
  %sv = alloca %struct.slotvec*, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{%struct.slotvec** %sv}, metadata !1035), !dbg !1036
  %0 = load %struct.slotvec** @slotvec, align 8, !dbg !1036
  store %struct.slotvec* %0, %struct.slotvec** %sv, align 8, !dbg !1036
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1037), !dbg !1038
  store i32 1, i32* %i, align 4, !dbg !1039
  br label %for.cond, !dbg !1039

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32* %i, align 4, !dbg !1039
  %2 = load i32* @nslots, align 4, !dbg !1039
  %cmp = icmp ult i32 %1, %2, !dbg !1039
  br i1 %cmp, label %for.body, label %for.end, !dbg !1039

for.body:                                         ; preds = %for.cond
  %3 = load i32* %i, align 4, !dbg !1041
  %idxprom = zext i32 %3 to i64, !dbg !1041
  %4 = load %struct.slotvec** %sv, align 8, !dbg !1041
  %arrayidx = getelementptr inbounds %struct.slotvec* %4, i64 %idxprom, !dbg !1041
  %val = getelementptr inbounds %struct.slotvec* %arrayidx, i32 0, i32 1, !dbg !1041
  %5 = load i8** %val, align 8, !dbg !1041
  call void @free(i8* %5) #7, !dbg !1041
  br label %for.inc, !dbg !1041

for.inc:                                          ; preds = %for.body
  %6 = load i32* %i, align 4, !dbg !1039
  %inc = add i32 %6, 1, !dbg !1039
  store i32 %inc, i32* %i, align 4, !dbg !1039
  br label %for.cond, !dbg !1039

for.end:                                          ; preds = %for.cond
  %7 = load %struct.slotvec** %sv, align 8, !dbg !1042
  %arrayidx1 = getelementptr inbounds %struct.slotvec* %7, i64 0, !dbg !1042
  %val2 = getelementptr inbounds %struct.slotvec* %arrayidx1, i32 0, i32 1, !dbg !1042
  %8 = load i8** %val2, align 8, !dbg !1042
  %cmp3 = icmp ne i8* %8, getelementptr inbounds ([256 x i8]* @slot0, i32 0, i32 0), !dbg !1042
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1042

if.then:                                          ; preds = %for.end
  %9 = load %struct.slotvec** %sv, align 8, !dbg !1044
  %arrayidx4 = getelementptr inbounds %struct.slotvec* %9, i64 0, !dbg !1044
  %val5 = getelementptr inbounds %struct.slotvec* %arrayidx4, i32 0, i32 1, !dbg !1044
  %10 = load i8** %val5, align 8, !dbg !1044
  call void @free(i8* %10) #7, !dbg !1044
  store i64 256, i64* getelementptr inbounds (%struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !1046
  store i8* getelementptr inbounds ([256 x i8]* @slot0, i32 0, i32 0), i8** getelementptr inbounds (%struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !1047
  br label %if.end, !dbg !1048

if.end:                                           ; preds = %if.then, %for.end
  %11 = load %struct.slotvec** %sv, align 8, !dbg !1049
  %cmp6 = icmp ne %struct.slotvec* %11, @slotvec0, !dbg !1049
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1049

if.then7:                                         ; preds = %if.end
  %12 = load %struct.slotvec** %sv, align 8, !dbg !1051
  %13 = bitcast %struct.slotvec* %12 to i8*, !dbg !1051
  call void @free(i8* %13) #7, !dbg !1051
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1053
  br label %if.end8, !dbg !1054

if.end8:                                          ; preds = %if.then7, %if.end
  store i32 1, i32* @nslots, align 4, !dbg !1055
  ret void, !dbg !1056
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_n(i32 %n, i8* %arg) #0 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %n.addr}, metadata !1057), !dbg !1058
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1059), !dbg !1058
  %0 = load i32* %n.addr, align 4, !dbg !1060
  %1 = load i8** %arg.addr, align 8, !dbg !1060
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* @default_quoting_options), !dbg !1060
  ret i8* %call, !dbg !1060
}

; Function Attrs: nounwind uwtable
define i8* @quotearg(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1061), !dbg !1062
  %0 = load i8** %arg.addr, align 8, !dbg !1063
  %call = call i8* @quotearg_n(i32 0, i8* %0), !dbg !1063
  ret i8* %call, !dbg !1063
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_n_style(i32 %n, i32 %s, i8* %arg) #0 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %o = alloca %struct.quoting_options, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %n.addr}, metadata !1064), !dbg !1065
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %s.addr}, metadata !1066), !dbg !1065
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1067), !dbg !1065
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options* %o}, metadata !1068), !dbg !1069
  %0 = load i32* %s.addr, align 4, !dbg !1069
  call void @quoting_options_from_style(%struct.quoting_options* sret %o, i32 %0), !dbg !1069
  %1 = load i32* %n.addr, align 4, !dbg !1070
  %2 = load i8** %arg.addr, align 8, !dbg !1070
  %call = call i8* @quotearg_n_options(i32 %1, i8* %2, i64 -1, %struct.quoting_options* %o), !dbg !1070
  ret i8* %call, !dbg !1070
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_n_style_mem(i32 %n, i32 %s, i8* %arg, i64 %argsize) #0 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o = alloca %struct.quoting_options, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %n.addr}, metadata !1071), !dbg !1072
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %s.addr}, metadata !1073), !dbg !1072
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1074), !dbg !1075
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %argsize.addr}, metadata !1076), !dbg !1075
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options* %o}, metadata !1077), !dbg !1078
  %0 = load i32* %s.addr, align 4, !dbg !1078
  call void @quoting_options_from_style(%struct.quoting_options* sret %o, i32 %0), !dbg !1078
  %1 = load i32* %n.addr, align 4, !dbg !1079
  %2 = load i8** %arg.addr, align 8, !dbg !1079
  %3 = load i64* %argsize.addr, align 8, !dbg !1079
  %call = call i8* @quotearg_n_options(i32 %1, i8* %2, i64 %3, %struct.quoting_options* %o), !dbg !1079
  ret i8* %call, !dbg !1079
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_style(i32 %s, i8* %arg) #0 {
entry:
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %s.addr}, metadata !1080), !dbg !1081
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1082), !dbg !1081
  %0 = load i32* %s.addr, align 4, !dbg !1083
  %1 = load i8** %arg.addr, align 8, !dbg !1083
  %call = call i8* @quotearg_n_style(i32 0, i32 %0, i8* %1), !dbg !1083
  ret i8* %call, !dbg !1083
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_char(i8* %arg, i8 signext %ch) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %ch.addr = alloca i8, align 1
  %options = alloca %struct.quoting_options, align 4
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1084), !dbg !1085
  store i8 %ch, i8* %ch.addr, align 1
  call void @llvm.dbg.declare(metadata !{i8* %ch.addr}, metadata !1086), !dbg !1085
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options* %options}, metadata !1087), !dbg !1088
  %0 = bitcast %struct.quoting_options* %options to i8*, !dbg !1089
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 36, i32 4, i1 false), !dbg !1089
  %1 = load i8* %ch.addr, align 1, !dbg !1090
  %call = call i32 @set_char_quoting(%struct.quoting_options* %options, i8 signext %1, i32 1), !dbg !1090
  %2 = load i8** %arg.addr, align 8, !dbg !1091
  %call1 = call i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* %options), !dbg !1091
  ret i8* %call1, !dbg !1091
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_colon(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1092), !dbg !1093
  %0 = load i8** %arg.addr, align 8, !dbg !1094
  %call = call i8* @quotearg_char(i8* %0, i8 signext 58), !dbg !1094
  ret i8* %call, !dbg !1094
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #8

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #2

; Function Attrs: nounwind
declare i32 @iswprint(i32) #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) #8

; Function Attrs: nounwind uwtable
define internal i64 @quotearg_buffer_restyled(i8* %buffer, i64 %buffersize, i8* %arg, i64 %argsize, i32 %quoting_style, %struct.quoting_options* %o) #0 {
entry:
  %retval = alloca i64, align 8
  %buffer.addr = alloca i8*, align 8
  %buffersize.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %quoting_style.addr = alloca i32, align 4
  %o.addr = alloca %struct.quoting_options*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %quote_string = alloca i8*, align 8
  %quote_string_len = alloca i64, align 8
  %backslash_escapes = alloca i8, align 1
  %unibyte_locale = alloca i8, align 1
  %left = alloca i8*, align 8
  %right = alloca i8*, align 8
  %c = alloca i8, align 1
  %esc = alloca i8, align 1
  %m = alloca i64, align 8
  %printable = alloca i8, align 1
  %mbstate = alloca %struct.__mbstate_t, align 4
  %w = alloca i32, align 4
  %bytes = alloca i64, align 8
  %j = alloca i64, align 8
  %ilim = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %buffer.addr}, metadata !1095), !dbg !1096
  store i64 %buffersize, i64* %buffersize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %buffersize.addr}, metadata !1097), !dbg !1096
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1098), !dbg !1099
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %argsize.addr}, metadata !1100), !dbg !1099
  store i32 %quoting_style, i32* %quoting_style.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %quoting_style.addr}, metadata !1101), !dbg !1102
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !1103), !dbg !1104
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !1105), !dbg !1106
  call void @llvm.dbg.declare(metadata !{i64* %len}, metadata !1107), !dbg !1108
  store i64 0, i64* %len, align 8, !dbg !1108
  call void @llvm.dbg.declare(metadata !{i8** %quote_string}, metadata !1109), !dbg !1110
  store i8* null, i8** %quote_string, align 8, !dbg !1110
  call void @llvm.dbg.declare(metadata !{i64* %quote_string_len}, metadata !1111), !dbg !1112
  store i64 0, i64* %quote_string_len, align 8, !dbg !1112
  call void @llvm.dbg.declare(metadata !{i8* %backslash_escapes}, metadata !1113), !dbg !1114
  store i8 0, i8* %backslash_escapes, align 1, !dbg !1114
  call void @llvm.dbg.declare(metadata !{i8* %unibyte_locale}, metadata !1115), !dbg !1116
  %call = call i64 @__ctype_get_mb_cur_max() #7, !dbg !1116
  %cmp = icmp eq i64 %call, 1, !dbg !1116
  %frombool = zext i1 %cmp to i8, !dbg !1116
  store i8 %frombool, i8* %unibyte_locale, align 1, !dbg !1116
  %0 = load i32* %quoting_style.addr, align 4, !dbg !1117
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 6, label %sw.bb3
    i32 2, label %sw.bb14
  ], !dbg !1117

sw.bb:                                            ; preds = %entry
  br label %do.body, !dbg !1118

do.body:                                          ; preds = %sw.bb
  %1 = load i64* %len, align 8, !dbg !1120
  %2 = load i64* %buffersize.addr, align 8, !dbg !1120
  %cmp1 = icmp ult i64 %1, %2, !dbg !1120
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1120

if.then:                                          ; preds = %do.body
  %3 = load i64* %len, align 8, !dbg !1120
  %4 = load i8** %buffer.addr, align 8, !dbg !1120
  %arrayidx = getelementptr inbounds i8* %4, i64 %3, !dbg !1120
  store i8 34, i8* %arrayidx, align 1, !dbg !1120
  br label %if.end, !dbg !1120

if.end:                                           ; preds = %if.then, %do.body
  %5 = load i64* %len, align 8, !dbg !1123
  %inc = add i64 %5, 1, !dbg !1123
  store i64 %inc, i64* %len, align 8, !dbg !1123
  br label %do.end, !dbg !1123

do.end:                                           ; preds = %if.end
  store i8 1, i8* %backslash_escapes, align 1, !dbg !1124
  store i8* getelementptr inbounds ([2 x i8]* @.str783, i32 0, i32 0), i8** %quote_string, align 8, !dbg !1125
  store i64 1, i64* %quote_string_len, align 8, !dbg !1126
  br label %sw.epilog, !dbg !1127

sw.bb2:                                           ; preds = %entry
  store i8 1, i8* %backslash_escapes, align 1, !dbg !1128
  br label %sw.epilog, !dbg !1129

sw.bb3:                                           ; preds = %entry, %entry
  call void @llvm.dbg.declare(metadata !{i8** %left}, metadata !1130), !dbg !1132
  %6 = load i32* %quoting_style.addr, align 4, !dbg !1132
  %call4 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8]* @.str884, i32 0, i32 0), i32 %6), !dbg !1132
  store i8* %call4, i8** %left, align 8, !dbg !1132
  call void @llvm.dbg.declare(metadata !{i8** %right}, metadata !1133), !dbg !1134
  %7 = load i32* %quoting_style.addr, align 4, !dbg !1134
  %call5 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8]* @.str985, i32 0, i32 0), i32 %7), !dbg !1134
  store i8* %call5, i8** %right, align 8, !dbg !1134
  %8 = load i8** %left, align 8, !dbg !1135
  store i8* %8, i8** %quote_string, align 8, !dbg !1135
  br label %for.cond, !dbg !1135

for.cond:                                         ; preds = %for.inc, %sw.bb3
  %9 = load i8** %quote_string, align 8, !dbg !1135
  %10 = load i8* %9, align 1, !dbg !1135
  %tobool = icmp ne i8 %10, 0, !dbg !1135
  br i1 %tobool, label %for.body, label %for.end, !dbg !1135

for.body:                                         ; preds = %for.cond
  br label %do.body6, !dbg !1137

do.body6:                                         ; preds = %for.body
  %11 = load i64* %len, align 8, !dbg !1138
  %12 = load i64* %buffersize.addr, align 8, !dbg !1138
  %cmp7 = icmp ult i64 %11, %12, !dbg !1138
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !1138

if.then8:                                         ; preds = %do.body6
  %13 = load i8** %quote_string, align 8, !dbg !1138
  %14 = load i8* %13, align 1, !dbg !1138
  %15 = load i64* %len, align 8, !dbg !1138
  %16 = load i8** %buffer.addr, align 8, !dbg !1138
  %arrayidx9 = getelementptr inbounds i8* %16, i64 %15, !dbg !1138
  store i8 %14, i8* %arrayidx9, align 1, !dbg !1138
  br label %if.end10, !dbg !1138

if.end10:                                         ; preds = %if.then8, %do.body6
  %17 = load i64* %len, align 8, !dbg !1141
  %inc11 = add i64 %17, 1, !dbg !1141
  store i64 %inc11, i64* %len, align 8, !dbg !1141
  br label %do.end12, !dbg !1141

do.end12:                                         ; preds = %if.end10
  br label %for.inc, !dbg !1141

for.inc:                                          ; preds = %do.end12
  %18 = load i8** %quote_string, align 8, !dbg !1135
  %incdec.ptr = getelementptr inbounds i8* %18, i32 1, !dbg !1135
  store i8* %incdec.ptr, i8** %quote_string, align 8, !dbg !1135
  br label %for.cond, !dbg !1135

for.end:                                          ; preds = %for.cond
  store i8 1, i8* %backslash_escapes, align 1, !dbg !1142
  %19 = load i8** %right, align 8, !dbg !1143
  store i8* %19, i8** %quote_string, align 8, !dbg !1143
  %20 = load i8** %quote_string, align 8, !dbg !1144
  %call13 = call i64 @strlen(i8* %20) #13, !dbg !1144
  store i64 %call13, i64* %quote_string_len, align 8, !dbg !1144
  br label %sw.epilog, !dbg !1145

sw.bb14:                                          ; preds = %entry
  br label %do.body15, !dbg !1146

do.body15:                                        ; preds = %sw.bb14
  %21 = load i64* %len, align 8, !dbg !1147
  %22 = load i64* %buffersize.addr, align 8, !dbg !1147
  %cmp16 = icmp ult i64 %21, %22, !dbg !1147
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !1147

if.then17:                                        ; preds = %do.body15
  %23 = load i64* %len, align 8, !dbg !1147
  %24 = load i8** %buffer.addr, align 8, !dbg !1147
  %arrayidx18 = getelementptr inbounds i8* %24, i64 %23, !dbg !1147
  store i8 39, i8* %arrayidx18, align 1, !dbg !1147
  br label %if.end19, !dbg !1147

if.end19:                                         ; preds = %if.then17, %do.body15
  %25 = load i64* %len, align 8, !dbg !1150
  %inc20 = add i64 %25, 1, !dbg !1150
  store i64 %inc20, i64* %len, align 8, !dbg !1150
  br label %do.end21, !dbg !1150

do.end21:                                         ; preds = %if.end19
  store i8* getelementptr inbounds ([2 x i8]* @.str985, i32 0, i32 0), i8** %quote_string, align 8, !dbg !1151
  store i64 1, i64* %quote_string_len, align 8, !dbg !1152
  br label %sw.epilog, !dbg !1153

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !1154

sw.epilog:                                        ; preds = %sw.default, %do.end21, %for.end, %sw.bb2, %do.end
  store i64 0, i64* %i, align 8, !dbg !1155
  br label %for.cond22, !dbg !1155

for.cond22:                                       ; preds = %for.inc368, %sw.epilog
  %26 = load i64* %argsize.addr, align 8, !dbg !1155
  %cmp23 = icmp eq i64 %26, -1, !dbg !1155
  br i1 %cmp23, label %cond.true, label %cond.false, !dbg !1155

cond.true:                                        ; preds = %for.cond22
  %27 = load i64* %i, align 8, !dbg !1155
  %28 = load i8** %arg.addr, align 8, !dbg !1155
  %arrayidx24 = getelementptr inbounds i8* %28, i64 %27, !dbg !1155
  %29 = load i8* %arrayidx24, align 1, !dbg !1155
  %conv = sext i8 %29 to i32, !dbg !1155
  %cmp25 = icmp eq i32 %conv, 0, !dbg !1155
  br i1 %cmp25, label %for.end370, label %for.body29, !dbg !1155

cond.false:                                       ; preds = %for.cond22
  %30 = load i64* %i, align 8, !dbg !1155
  %31 = load i64* %argsize.addr, align 8, !dbg !1155
  %cmp27 = icmp eq i64 %30, %31, !dbg !1155
  br i1 %cmp27, label %for.end370, label %for.body29, !dbg !1155

for.body29:                                       ; preds = %cond.false, %cond.true
  call void @llvm.dbg.declare(metadata !{i8* %c}, metadata !1157), !dbg !1159
  call void @llvm.dbg.declare(metadata !{i8* %esc}, metadata !1160), !dbg !1161
  %32 = load i8* %backslash_escapes, align 1, !dbg !1162
  %tobool30 = trunc i8 %32 to i1, !dbg !1162
  br i1 %tobool30, label %land.lhs.true, label %if.end49, !dbg !1162

land.lhs.true:                                    ; preds = %for.body29
  %33 = load i64* %quote_string_len, align 8, !dbg !1162
  %tobool32 = icmp ne i64 %33, 0, !dbg !1162
  br i1 %tobool32, label %land.lhs.true33, label %if.end49, !dbg !1162

land.lhs.true33:                                  ; preds = %land.lhs.true
  %34 = load i64* %i, align 8, !dbg !1162
  %35 = load i64* %quote_string_len, align 8, !dbg !1162
  %add = add i64 %34, %35, !dbg !1162
  %36 = load i64* %argsize.addr, align 8, !dbg !1162
  %cmp34 = icmp ule i64 %add, %36, !dbg !1162
  br i1 %cmp34, label %land.lhs.true36, label %if.end49, !dbg !1162

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %37 = load i8** %arg.addr, align 8, !dbg !1164
  %38 = load i64* %i, align 8, !dbg !1164
  %add.ptr = getelementptr inbounds i8* %37, i64 %38, !dbg !1164
  %39 = load i8** %quote_string, align 8, !dbg !1164
  %40 = load i64* %quote_string_len, align 8, !dbg !1164
  %call37 = call i32 @memcmp(i8* %add.ptr, i8* %39, i64 %40) #13, !dbg !1164
  %cmp38 = icmp eq i32 %call37, 0, !dbg !1164
  br i1 %cmp38, label %if.then40, label %if.end49, !dbg !1164

if.then40:                                        ; preds = %land.lhs.true36
  br label %do.body41, !dbg !1165

do.body41:                                        ; preds = %if.then40
  %41 = load i64* %len, align 8, !dbg !1166
  %42 = load i64* %buffersize.addr, align 8, !dbg !1166
  %cmp42 = icmp ult i64 %41, %42, !dbg !1166
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !1166

if.then44:                                        ; preds = %do.body41
  %43 = load i64* %len, align 8, !dbg !1166
  %44 = load i8** %buffer.addr, align 8, !dbg !1166
  %arrayidx45 = getelementptr inbounds i8* %44, i64 %43, !dbg !1166
  store i8 92, i8* %arrayidx45, align 1, !dbg !1166
  br label %if.end46, !dbg !1166

if.end46:                                         ; preds = %if.then44, %do.body41
  %45 = load i64* %len, align 8, !dbg !1169
  %inc47 = add i64 %45, 1, !dbg !1169
  store i64 %inc47, i64* %len, align 8, !dbg !1169
  br label %do.end48, !dbg !1169

do.end48:                                         ; preds = %if.end46
  br label %if.end49, !dbg !1169

if.end49:                                         ; preds = %do.end48, %land.lhs.true36, %land.lhs.true33, %land.lhs.true, %for.body29
  %46 = load i64* %i, align 8, !dbg !1170
  %47 = load i8** %arg.addr, align 8, !dbg !1170
  %arrayidx50 = getelementptr inbounds i8* %47, i64 %46, !dbg !1170
  %48 = load i8* %arrayidx50, align 1, !dbg !1170
  store i8 %48, i8* %c, align 1, !dbg !1170
  %49 = load i8* %c, align 1, !dbg !1171
  %conv51 = zext i8 %49 to i32, !dbg !1171
  switch i32 %conv51, label %sw.default197 [
    i32 0, label %sw.bb52
    i32 63, label %sw.bb80
    i32 7, label %sw.bb129
    i32 8, label %sw.bb130
    i32 12, label %sw.bb131
    i32 10, label %sw.bb132
    i32 13, label %sw.bb133
    i32 9, label %sw.bb134
    i32 11, label %sw.bb135
    i32 92, label %sw.bb136
    i32 123, label %sw.bb144
    i32 125, label %sw.bb144
    i32 35, label %sw.bb157
    i32 126, label %sw.bb157
    i32 32, label %sw.bb162
    i32 33, label %sw.bb162
    i32 34, label %sw.bb162
    i32 36, label %sw.bb162
    i32 38, label %sw.bb162
    i32 40, label %sw.bb162
    i32 41, label %sw.bb162
    i32 42, label %sw.bb162
    i32 59, label %sw.bb162
    i32 60, label %sw.bb162
    i32 61, label %sw.bb162
    i32 62, label %sw.bb162
    i32 91, label %sw.bb162
    i32 94, label %sw.bb162
    i32 96, label %sw.bb162
    i32 124, label %sw.bb162
    i32 39, label %sw.bb167
    i32 37, label %sw.bb196
    i32 43, label %sw.bb196
    i32 44, label %sw.bb196
    i32 45, label %sw.bb196
    i32 46, label %sw.bb196
    i32 47, label %sw.bb196
    i32 48, label %sw.bb196
    i32 49, label %sw.bb196
    i32 50, label %sw.bb196
    i32 51, label %sw.bb196
    i32 52, label %sw.bb196
    i32 53, label %sw.bb196
    i32 54, label %sw.bb196
    i32 55, label %sw.bb196
    i32 56, label %sw.bb196
    i32 57, label %sw.bb196
    i32 58, label %sw.bb196
    i32 65, label %sw.bb196
    i32 66, label %sw.bb196
    i32 67, label %sw.bb196
    i32 68, label %sw.bb196
    i32 69, label %sw.bb196
    i32 70, label %sw.bb196
    i32 71, label %sw.bb196
    i32 72, label %sw.bb196
    i32 73, label %sw.bb196
    i32 74, label %sw.bb196
    i32 75, label %sw.bb196
    i32 76, label %sw.bb196
    i32 77, label %sw.bb196
    i32 78, label %sw.bb196
    i32 79, label %sw.bb196
    i32 80, label %sw.bb196
    i32 81, label %sw.bb196
    i32 82, label %sw.bb196
    i32 83, label %sw.bb196
    i32 84, label %sw.bb196
    i32 85, label %sw.bb196
    i32 86, label %sw.bb196
    i32 87, label %sw.bb196
    i32 88, label %sw.bb196
    i32 89, label %sw.bb196
    i32 90, label %sw.bb196
    i32 93, label %sw.bb196
    i32 95, label %sw.bb196
    i32 97, label %sw.bb196
    i32 98, label %sw.bb196
    i32 99, label %sw.bb196
    i32 100, label %sw.bb196
    i32 101, label %sw.bb196
    i32 102, label %sw.bb196
    i32 103, label %sw.bb196
    i32 104, label %sw.bb196
    i32 105, label %sw.bb196
    i32 106, label %sw.bb196
    i32 107, label %sw.bb196
    i32 108, label %sw.bb196
    i32 109, label %sw.bb196
    i32 110, label %sw.bb196
    i32 111, label %sw.bb196
    i32 112, label %sw.bb196
    i32 113, label %sw.bb196
    i32 114, label %sw.bb196
    i32 115, label %sw.bb196
    i32 116, label %sw.bb196
    i32 117, label %sw.bb196
    i32 118, label %sw.bb196
    i32 119, label %sw.bb196
    i32 120, label %sw.bb196
    i32 121, label %sw.bb196
    i32 122, label %sw.bb196
  ], !dbg !1171

sw.bb52:                                          ; preds = %if.end49
  %50 = load i8* %backslash_escapes, align 1, !dbg !1172
  %tobool53 = trunc i8 %50 to i1, !dbg !1172
  br i1 %tobool53, label %if.then54, label %if.end79, !dbg !1172

if.then54:                                        ; preds = %sw.bb52
  br label %do.body55, !dbg !1175

do.body55:                                        ; preds = %if.then54
  %51 = load i64* %len, align 8, !dbg !1177
  %52 = load i64* %buffersize.addr, align 8, !dbg !1177
  %cmp56 = icmp ult i64 %51, %52, !dbg !1177
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !1177

if.then58:                                        ; preds = %do.body55
  %53 = load i64* %len, align 8, !dbg !1177
  %54 = load i8** %buffer.addr, align 8, !dbg !1177
  %arrayidx59 = getelementptr inbounds i8* %54, i64 %53, !dbg !1177
  store i8 92, i8* %arrayidx59, align 1, !dbg !1177
  br label %if.end60, !dbg !1177

if.end60:                                         ; preds = %if.then58, %do.body55
  %55 = load i64* %len, align 8, !dbg !1180
  %inc61 = add i64 %55, 1, !dbg !1180
  store i64 %inc61, i64* %len, align 8, !dbg !1180
  br label %do.end62, !dbg !1180

do.end62:                                         ; preds = %if.end60
  br label %do.body63, !dbg !1181

do.body63:                                        ; preds = %do.end62
  %56 = load i64* %len, align 8, !dbg !1182
  %57 = load i64* %buffersize.addr, align 8, !dbg !1182
  %cmp64 = icmp ult i64 %56, %57, !dbg !1182
  br i1 %cmp64, label %if.then66, label %if.end68, !dbg !1182

if.then66:                                        ; preds = %do.body63
  %58 = load i64* %len, align 8, !dbg !1182
  %59 = load i8** %buffer.addr, align 8, !dbg !1182
  %arrayidx67 = getelementptr inbounds i8* %59, i64 %58, !dbg !1182
  store i8 48, i8* %arrayidx67, align 1, !dbg !1182
  br label %if.end68, !dbg !1182

if.end68:                                         ; preds = %if.then66, %do.body63
  %60 = load i64* %len, align 8, !dbg !1185
  %inc69 = add i64 %60, 1, !dbg !1185
  store i64 %inc69, i64* %len, align 8, !dbg !1185
  br label %do.end70, !dbg !1185

do.end70:                                         ; preds = %if.end68
  br label %do.body71, !dbg !1186

do.body71:                                        ; preds = %do.end70
  %61 = load i64* %len, align 8, !dbg !1187
  %62 = load i64* %buffersize.addr, align 8, !dbg !1187
  %cmp72 = icmp ult i64 %61, %62, !dbg !1187
  br i1 %cmp72, label %if.then74, label %if.end76, !dbg !1187

if.then74:                                        ; preds = %do.body71
  %63 = load i64* %len, align 8, !dbg !1187
  %64 = load i8** %buffer.addr, align 8, !dbg !1187
  %arrayidx75 = getelementptr inbounds i8* %64, i64 %63, !dbg !1187
  store i8 48, i8* %arrayidx75, align 1, !dbg !1187
  br label %if.end76, !dbg !1187

if.end76:                                         ; preds = %if.then74, %do.body71
  %65 = load i64* %len, align 8, !dbg !1190
  %inc77 = add i64 %65, 1, !dbg !1190
  store i64 %inc77, i64* %len, align 8, !dbg !1190
  br label %do.end78, !dbg !1190

do.end78:                                         ; preds = %if.end76
  store i8 48, i8* %c, align 1, !dbg !1191
  br label %if.end79, !dbg !1192

if.end79:                                         ; preds = %do.end78, %sw.bb52
  br label %sw.epilog339, !dbg !1193

sw.bb80:                                          ; preds = %if.end49
  %66 = load i32* %quoting_style.addr, align 4, !dbg !1194
  switch i32 %66, label %sw.default127 [
    i32 1, label %sw.bb81
    i32 3, label %sw.bb82
  ], !dbg !1194

sw.bb81:                                          ; preds = %sw.bb80
  br label %use_shell_always_quoting_style, !dbg !1195

sw.bb82:                                          ; preds = %sw.bb80
  %67 = load i64* %i, align 8, !dbg !1197
  %add83 = add i64 %67, 2, !dbg !1197
  %68 = load i64* %argsize.addr, align 8, !dbg !1197
  %cmp84 = icmp ult i64 %add83, %68, !dbg !1197
  br i1 %cmp84, label %land.lhs.true86, label %if.end126, !dbg !1197

land.lhs.true86:                                  ; preds = %sw.bb82
  %69 = load i64* %i, align 8, !dbg !1197
  %add87 = add i64 %69, 1, !dbg !1197
  %70 = load i8** %arg.addr, align 8, !dbg !1197
  %arrayidx88 = getelementptr inbounds i8* %70, i64 %add87, !dbg !1197
  %71 = load i8* %arrayidx88, align 1, !dbg !1197
  %conv89 = sext i8 %71 to i32, !dbg !1197
  %cmp90 = icmp eq i32 %conv89, 63, !dbg !1197
  br i1 %cmp90, label %if.then92, label %if.end126, !dbg !1197

if.then92:                                        ; preds = %land.lhs.true86
  %72 = load i64* %i, align 8, !dbg !1199
  %add93 = add i64 %72, 2, !dbg !1199
  %73 = load i8** %arg.addr, align 8, !dbg !1199
  %arrayidx94 = getelementptr inbounds i8* %73, i64 %add93, !dbg !1199
  %74 = load i8* %arrayidx94, align 1, !dbg !1199
  %conv95 = sext i8 %74 to i32, !dbg !1199
  switch i32 %conv95, label %sw.default124 [
    i32 33, label %sw.bb96
    i32 39, label %sw.bb96
    i32 40, label %sw.bb96
    i32 41, label %sw.bb96
    i32 45, label %sw.bb96
    i32 47, label %sw.bb96
    i32 60, label %sw.bb96
    i32 61, label %sw.bb96
    i32 62, label %sw.bb96
  ], !dbg !1199

sw.bb96:                                          ; preds = %if.then92, %if.then92, %if.then92, %if.then92, %if.then92, %if.then92, %if.then92, %if.then92, %if.then92
  %75 = load i64* %i, align 8, !dbg !1200
  %add97 = add i64 %75, 2, !dbg !1200
  %76 = load i8** %arg.addr, align 8, !dbg !1200
  %arrayidx98 = getelementptr inbounds i8* %76, i64 %add97, !dbg !1200
  %77 = load i8* %arrayidx98, align 1, !dbg !1200
  store i8 %77, i8* %c, align 1, !dbg !1200
  %78 = load i64* %i, align 8, !dbg !1202
  %add99 = add i64 %78, 2, !dbg !1202
  store i64 %add99, i64* %i, align 8, !dbg !1202
  br label %do.body100, !dbg !1203

do.body100:                                       ; preds = %sw.bb96
  %79 = load i64* %len, align 8, !dbg !1204
  %80 = load i64* %buffersize.addr, align 8, !dbg !1204
  %cmp101 = icmp ult i64 %79, %80, !dbg !1204
  br i1 %cmp101, label %if.then103, label %if.end105, !dbg !1204

if.then103:                                       ; preds = %do.body100
  %81 = load i64* %len, align 8, !dbg !1204
  %82 = load i8** %buffer.addr, align 8, !dbg !1204
  %arrayidx104 = getelementptr inbounds i8* %82, i64 %81, !dbg !1204
  store i8 63, i8* %arrayidx104, align 1, !dbg !1204
  br label %if.end105, !dbg !1204

if.end105:                                        ; preds = %if.then103, %do.body100
  %83 = load i64* %len, align 8, !dbg !1207
  %inc106 = add i64 %83, 1, !dbg !1207
  store i64 %inc106, i64* %len, align 8, !dbg !1207
  br label %do.end107, !dbg !1207

do.end107:                                        ; preds = %if.end105
  br label %do.body108, !dbg !1208

do.body108:                                       ; preds = %do.end107
  %84 = load i64* %len, align 8, !dbg !1209
  %85 = load i64* %buffersize.addr, align 8, !dbg !1209
  %cmp109 = icmp ult i64 %84, %85, !dbg !1209
  br i1 %cmp109, label %if.then111, label %if.end113, !dbg !1209

if.then111:                                       ; preds = %do.body108
  %86 = load i64* %len, align 8, !dbg !1209
  %87 = load i8** %buffer.addr, align 8, !dbg !1209
  %arrayidx112 = getelementptr inbounds i8* %87, i64 %86, !dbg !1209
  store i8 92, i8* %arrayidx112, align 1, !dbg !1209
  br label %if.end113, !dbg !1209

if.end113:                                        ; preds = %if.then111, %do.body108
  %88 = load i64* %len, align 8, !dbg !1212
  %inc114 = add i64 %88, 1, !dbg !1212
  store i64 %inc114, i64* %len, align 8, !dbg !1212
  br label %do.end115, !dbg !1212

do.end115:                                        ; preds = %if.end113
  br label %do.body116, !dbg !1213

do.body116:                                       ; preds = %do.end115
  %89 = load i64* %len, align 8, !dbg !1214
  %90 = load i64* %buffersize.addr, align 8, !dbg !1214
  %cmp117 = icmp ult i64 %89, %90, !dbg !1214
  br i1 %cmp117, label %if.then119, label %if.end121, !dbg !1214

if.then119:                                       ; preds = %do.body116
  %91 = load i64* %len, align 8, !dbg !1214
  %92 = load i8** %buffer.addr, align 8, !dbg !1214
  %arrayidx120 = getelementptr inbounds i8* %92, i64 %91, !dbg !1214
  store i8 63, i8* %arrayidx120, align 1, !dbg !1214
  br label %if.end121, !dbg !1214

if.end121:                                        ; preds = %if.then119, %do.body116
  %93 = load i64* %len, align 8, !dbg !1217
  %inc122 = add i64 %93, 1, !dbg !1217
  store i64 %inc122, i64* %len, align 8, !dbg !1217
  br label %do.end123, !dbg !1217

do.end123:                                        ; preds = %if.end121
  br label %sw.epilog125, !dbg !1218

sw.default124:                                    ; preds = %if.then92
  br label %sw.epilog125, !dbg !1219

sw.epilog125:                                     ; preds = %sw.default124, %do.end123
  br label %if.end126, !dbg !1220

if.end126:                                        ; preds = %sw.epilog125, %land.lhs.true86, %sw.bb82
  br label %sw.epilog128, !dbg !1221

sw.default127:                                    ; preds = %sw.bb80
  br label %sw.epilog128, !dbg !1222

sw.epilog128:                                     ; preds = %sw.default127, %if.end126
  br label %sw.epilog339, !dbg !1223

sw.bb129:                                         ; preds = %if.end49
  store i8 97, i8* %esc, align 1, !dbg !1224
  br label %c_escape, !dbg !1224

sw.bb130:                                         ; preds = %if.end49
  store i8 98, i8* %esc, align 1, !dbg !1225
  br label %c_escape, !dbg !1225

sw.bb131:                                         ; preds = %if.end49
  store i8 102, i8* %esc, align 1, !dbg !1226
  br label %c_escape, !dbg !1226

sw.bb132:                                         ; preds = %if.end49
  store i8 110, i8* %esc, align 1, !dbg !1227
  br label %c_and_shell_escape, !dbg !1227

sw.bb133:                                         ; preds = %if.end49
  store i8 114, i8* %esc, align 1, !dbg !1228
  br label %c_and_shell_escape, !dbg !1228

sw.bb134:                                         ; preds = %if.end49
  store i8 116, i8* %esc, align 1, !dbg !1229
  br label %c_and_shell_escape, !dbg !1229

sw.bb135:                                         ; preds = %if.end49
  store i8 118, i8* %esc, align 1, !dbg !1230
  br label %c_escape, !dbg !1230

sw.bb136:                                         ; preds = %if.end49
  %94 = load i8* %c, align 1, !dbg !1231
  store i8 %94, i8* %esc, align 1, !dbg !1231
  br label %c_and_shell_escape, !dbg !1231

c_and_shell_escape:                               ; preds = %sw.bb136, %sw.bb134, %sw.bb133, %sw.bb132
  %95 = load i32* %quoting_style.addr, align 4, !dbg !1232
  %cmp137 = icmp eq i32 %95, 1, !dbg !1232
  br i1 %cmp137, label %if.then139, label %if.end140, !dbg !1232

if.then139:                                       ; preds = %c_and_shell_escape
  br label %use_shell_always_quoting_style, !dbg !1234

if.end140:                                        ; preds = %c_and_shell_escape
  br label %c_escape, !dbg !1234

c_escape:                                         ; preds = %if.end140, %sw.bb135, %sw.bb131, %sw.bb130, %sw.bb129
  %96 = load i8* %backslash_escapes, align 1, !dbg !1235
  %tobool141 = trunc i8 %96 to i1, !dbg !1235
  br i1 %tobool141, label %if.then142, label %if.end143, !dbg !1235

if.then142:                                       ; preds = %c_escape
  %97 = load i8* %esc, align 1, !dbg !1237
  store i8 %97, i8* %c, align 1, !dbg !1237
  br label %store_escape, !dbg !1239

if.end143:                                        ; preds = %c_escape
  br label %sw.epilog339, !dbg !1240

sw.bb144:                                         ; preds = %if.end49, %if.end49
  %98 = load i64* %argsize.addr, align 8, !dbg !1241
  %cmp145 = icmp eq i64 %98, -1, !dbg !1241
  br i1 %cmp145, label %cond.true147, label %cond.false152, !dbg !1241

cond.true147:                                     ; preds = %sw.bb144
  %99 = load i8** %arg.addr, align 8, !dbg !1241
  %arrayidx148 = getelementptr inbounds i8* %99, i64 1, !dbg !1241
  %100 = load i8* %arrayidx148, align 1, !dbg !1241
  %conv149 = sext i8 %100 to i32, !dbg !1241
  %cmp150 = icmp eq i32 %conv149, 0, !dbg !1241
  br i1 %cmp150, label %if.end156, label %if.then155, !dbg !1241

cond.false152:                                    ; preds = %sw.bb144
  %101 = load i64* %argsize.addr, align 8, !dbg !1241
  %cmp153 = icmp eq i64 %101, 1, !dbg !1241
  br i1 %cmp153, label %if.end156, label %if.then155, !dbg !1241

if.then155:                                       ; preds = %cond.false152, %cond.true147
  br label %sw.epilog339, !dbg !1243

if.end156:                                        ; preds = %cond.false152, %cond.true147
  br label %sw.bb157, !dbg !1243

sw.bb157:                                         ; preds = %if.end156, %if.end49, %if.end49
  %102 = load i64* %i, align 8, !dbg !1244
  %cmp158 = icmp ne i64 %102, 0, !dbg !1244
  br i1 %cmp158, label %if.then160, label %if.end161, !dbg !1244

if.then160:                                       ; preds = %sw.bb157
  br label %sw.epilog339, !dbg !1246

if.end161:                                        ; preds = %sw.bb157
  br label %sw.bb162, !dbg !1246

sw.bb162:                                         ; preds = %if.end161, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49
  %103 = load i32* %quoting_style.addr, align 4, !dbg !1247
  %cmp163 = icmp eq i32 %103, 1, !dbg !1247
  br i1 %cmp163, label %if.then165, label %if.end166, !dbg !1247

if.then165:                                       ; preds = %sw.bb162
  br label %use_shell_always_quoting_style, !dbg !1249

if.end166:                                        ; preds = %sw.bb162
  br label %sw.epilog339, !dbg !1250

sw.bb167:                                         ; preds = %if.end49
  %104 = load i32* %quoting_style.addr, align 4, !dbg !1251
  switch i32 %104, label %sw.default194 [
    i32 1, label %sw.bb168
    i32 2, label %sw.bb169
  ], !dbg !1251

sw.bb168:                                         ; preds = %sw.bb167
  br label %use_shell_always_quoting_style, !dbg !1252

sw.bb169:                                         ; preds = %sw.bb167
  br label %do.body170, !dbg !1254

do.body170:                                       ; preds = %sw.bb169
  %105 = load i64* %len, align 8, !dbg !1255
  %106 = load i64* %buffersize.addr, align 8, !dbg !1255
  %cmp171 = icmp ult i64 %105, %106, !dbg !1255
  br i1 %cmp171, label %if.then173, label %if.end175, !dbg !1255

if.then173:                                       ; preds = %do.body170
  %107 = load i64* %len, align 8, !dbg !1255
  %108 = load i8** %buffer.addr, align 8, !dbg !1255
  %arrayidx174 = getelementptr inbounds i8* %108, i64 %107, !dbg !1255
  store i8 39, i8* %arrayidx174, align 1, !dbg !1255
  br label %if.end175, !dbg !1255

if.end175:                                        ; preds = %if.then173, %do.body170
  %109 = load i64* %len, align 8, !dbg !1258
  %inc176 = add i64 %109, 1, !dbg !1258
  store i64 %inc176, i64* %len, align 8, !dbg !1258
  br label %do.end177, !dbg !1258

do.end177:                                        ; preds = %if.end175
  br label %do.body178, !dbg !1259

do.body178:                                       ; preds = %do.end177
  %110 = load i64* %len, align 8, !dbg !1260
  %111 = load i64* %buffersize.addr, align 8, !dbg !1260
  %cmp179 = icmp ult i64 %110, %111, !dbg !1260
  br i1 %cmp179, label %if.then181, label %if.end183, !dbg !1260

if.then181:                                       ; preds = %do.body178
  %112 = load i64* %len, align 8, !dbg !1260
  %113 = load i8** %buffer.addr, align 8, !dbg !1260
  %arrayidx182 = getelementptr inbounds i8* %113, i64 %112, !dbg !1260
  store i8 92, i8* %arrayidx182, align 1, !dbg !1260
  br label %if.end183, !dbg !1260

if.end183:                                        ; preds = %if.then181, %do.body178
  %114 = load i64* %len, align 8, !dbg !1263
  %inc184 = add i64 %114, 1, !dbg !1263
  store i64 %inc184, i64* %len, align 8, !dbg !1263
  br label %do.end185, !dbg !1263

do.end185:                                        ; preds = %if.end183
  br label %do.body186, !dbg !1264

do.body186:                                       ; preds = %do.end185
  %115 = load i64* %len, align 8, !dbg !1265
  %116 = load i64* %buffersize.addr, align 8, !dbg !1265
  %cmp187 = icmp ult i64 %115, %116, !dbg !1265
  br i1 %cmp187, label %if.then189, label %if.end191, !dbg !1265

if.then189:                                       ; preds = %do.body186
  %117 = load i64* %len, align 8, !dbg !1265
  %118 = load i8** %buffer.addr, align 8, !dbg !1265
  %arrayidx190 = getelementptr inbounds i8* %118, i64 %117, !dbg !1265
  store i8 39, i8* %arrayidx190, align 1, !dbg !1265
  br label %if.end191, !dbg !1265

if.end191:                                        ; preds = %if.then189, %do.body186
  %119 = load i64* %len, align 8, !dbg !1268
  %inc192 = add i64 %119, 1, !dbg !1268
  store i64 %inc192, i64* %len, align 8, !dbg !1268
  br label %do.end193, !dbg !1268

do.end193:                                        ; preds = %if.end191
  br label %sw.epilog195, !dbg !1269

sw.default194:                                    ; preds = %sw.bb167
  br label %sw.epilog195, !dbg !1270

sw.epilog195:                                     ; preds = %sw.default194, %do.end193
  br label %sw.epilog339, !dbg !1271

sw.bb196:                                         ; preds = %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49
  br label %sw.epilog339, !dbg !1272

sw.default197:                                    ; preds = %if.end49
  call void @llvm.dbg.declare(metadata !{i64* %m}, metadata !1273), !dbg !1275
  call void @llvm.dbg.declare(metadata !{i8* %printable}, metadata !1276), !dbg !1277
  %120 = load i8* %unibyte_locale, align 1, !dbg !1278
  %tobool198 = trunc i8 %120 to i1, !dbg !1278
  br i1 %tobool198, label %if.then199, label %if.else, !dbg !1278

if.then199:                                       ; preds = %sw.default197
  store i64 1, i64* %m, align 8, !dbg !1280
  %121 = load i8* %c, align 1, !dbg !1282
  %conv200 = zext i8 %121 to i32, !dbg !1282
  %idxprom = sext i32 %conv200 to i64, !dbg !1282
  %call201 = call i16** @__ctype_b_loc() #1, !dbg !1282
  %122 = load i16** %call201, align 8, !dbg !1282
  %arrayidx202 = getelementptr inbounds i16* %122, i64 %idxprom, !dbg !1282
  %123 = load i16* %arrayidx202, align 2, !dbg !1282
  %conv203 = zext i16 %123 to i32, !dbg !1282
  %and = and i32 %conv203, 16384, !dbg !1282
  %cmp204 = icmp ne i32 %and, 0, !dbg !1282
  %frombool206 = zext i1 %cmp204 to i8, !dbg !1282
  store i8 %frombool206, i8* %printable, align 1, !dbg !1282
  br label %if.end266, !dbg !1283

if.else:                                          ; preds = %sw.default197
  call void @llvm.dbg.declare(metadata !{%struct.__mbstate_t* %mbstate}, metadata !1284), !dbg !1300
  %124 = bitcast %struct.__mbstate_t* %mbstate to i8*, !dbg !1301
  call void @llvm.memset.p0i8.i64(i8* %124, i8 0, i64 8, i32 4, i1 false), !dbg !1301
  store i64 0, i64* %m, align 8, !dbg !1302
  store i8 1, i8* %printable, align 1, !dbg !1303
  %125 = load i64* %argsize.addr, align 8, !dbg !1304
  %cmp207 = icmp eq i64 %125, -1, !dbg !1304
  br i1 %cmp207, label %if.then209, label %if.end211, !dbg !1304

if.then209:                                       ; preds = %if.else
  %126 = load i8** %arg.addr, align 8, !dbg !1306
  %call210 = call i64 @strlen(i8* %126) #13, !dbg !1306
  store i64 %call210, i64* %argsize.addr, align 8, !dbg !1306
  br label %if.end211, !dbg !1306

if.end211:                                        ; preds = %if.then209, %if.else
  br label %do.body212, !dbg !1307

do.body212:                                       ; preds = %do.cond, %if.end211
  call void @llvm.dbg.declare(metadata !{i32* %w}, metadata !1308), !dbg !1311
  call void @llvm.dbg.declare(metadata !{i64* %bytes}, metadata !1312), !dbg !1313
  %127 = load i64* %i, align 8, !dbg !1313
  %128 = load i64* %m, align 8, !dbg !1313
  %add213 = add i64 %127, %128, !dbg !1313
  %129 = load i8** %arg.addr, align 8, !dbg !1313
  %arrayidx214 = getelementptr inbounds i8* %129, i64 %add213, !dbg !1313
  %130 = load i64* %argsize.addr, align 8, !dbg !1313
  %131 = load i64* %i, align 8, !dbg !1313
  %132 = load i64* %m, align 8, !dbg !1313
  %add215 = add i64 %131, %132, !dbg !1313
  %sub = sub i64 %130, %add215, !dbg !1313
  %call216 = call i64 @mbrtowc(i32* %w, i8* %arrayidx214, i64 %sub, %struct.__mbstate_t* %mbstate) #7, !dbg !1313
  store i64 %call216, i64* %bytes, align 8, !dbg !1313
  %133 = load i64* %bytes, align 8, !dbg !1314
  %cmp217 = icmp eq i64 %133, 0, !dbg !1314
  br i1 %cmp217, label %if.then219, label %if.else220, !dbg !1314

if.then219:                                       ; preds = %do.body212
  br label %do.end265, !dbg !1316

if.else220:                                       ; preds = %do.body212
  %134 = load i64* %bytes, align 8, !dbg !1317
  %cmp221 = icmp eq i64 %134, -1, !dbg !1317
  br i1 %cmp221, label %if.then223, label %if.else224, !dbg !1317

if.then223:                                       ; preds = %if.else220
  store i8 0, i8* %printable, align 1, !dbg !1319
  br label %do.end265, !dbg !1321

if.else224:                                       ; preds = %if.else220
  %135 = load i64* %bytes, align 8, !dbg !1322
  %cmp225 = icmp eq i64 %135, -2, !dbg !1322
  br i1 %cmp225, label %if.then227, label %if.else236, !dbg !1322

if.then227:                                       ; preds = %if.else224
  store i8 0, i8* %printable, align 1, !dbg !1324
  br label %while.cond, !dbg !1326

while.cond:                                       ; preds = %while.body, %if.then227
  %136 = load i64* %i, align 8, !dbg !1326
  %137 = load i64* %m, align 8, !dbg !1326
  %add228 = add i64 %136, %137, !dbg !1326
  %138 = load i64* %argsize.addr, align 8, !dbg !1326
  %cmp229 = icmp ult i64 %add228, %138, !dbg !1326
  br i1 %cmp229, label %land.rhs, label %land.end, !dbg !1326

land.rhs:                                         ; preds = %while.cond
  %139 = load i64* %i, align 8, !dbg !1326
  %140 = load i64* %m, align 8, !dbg !1326
  %add231 = add i64 %139, %140, !dbg !1326
  %141 = load i8** %arg.addr, align 8, !dbg !1326
  %arrayidx232 = getelementptr inbounds i8* %141, i64 %add231, !dbg !1326
  %142 = load i8* %arrayidx232, align 1, !dbg !1326
  %conv233 = sext i8 %142 to i32, !dbg !1326
  %tobool234 = icmp ne i32 %conv233, 0, !dbg !1326
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %143 = phi i1 [ false, %while.cond ], [ %tobool234, %land.rhs ]
  br i1 %143, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %144 = load i64* %m, align 8, !dbg !1327
  %inc235 = add i64 %144, 1, !dbg !1327
  store i64 %inc235, i64* %m, align 8, !dbg !1327
  br label %while.cond, !dbg !1327

while.end:                                        ; preds = %land.end
  br label %do.end265, !dbg !1328

if.else236:                                       ; preds = %if.else224
  %145 = load i32* %quoting_style.addr, align 4, !dbg !1329
  %cmp237 = icmp eq i32 %145, 1, !dbg !1329
  br i1 %cmp237, label %if.then239, label %if.end254, !dbg !1329

if.then239:                                       ; preds = %if.else236
  call void @llvm.dbg.declare(metadata !{i64* %j}, metadata !1332), !dbg !1334
  store i64 1, i64* %j, align 8, !dbg !1335
  br label %for.cond240, !dbg !1335

for.cond240:                                      ; preds = %for.inc251, %if.then239
  %146 = load i64* %j, align 8, !dbg !1335
  %147 = load i64* %bytes, align 8, !dbg !1335
  %cmp241 = icmp ult i64 %146, %147, !dbg !1335
  br i1 %cmp241, label %for.body243, label %for.end253, !dbg !1335

for.body243:                                      ; preds = %for.cond240
  %148 = load i64* %i, align 8, !dbg !1337
  %149 = load i64* %m, align 8, !dbg !1337
  %add244 = add i64 %148, %149, !dbg !1337
  %150 = load i64* %j, align 8, !dbg !1337
  %add245 = add i64 %add244, %150, !dbg !1337
  %151 = load i8** %arg.addr, align 8, !dbg !1337
  %arrayidx246 = getelementptr inbounds i8* %151, i64 %add245, !dbg !1337
  %152 = load i8* %arrayidx246, align 1, !dbg !1337
  %conv247 = sext i8 %152 to i32, !dbg !1337
  switch i32 %conv247, label %sw.default249 [
    i32 91, label %sw.bb248
    i32 92, label %sw.bb248
    i32 94, label %sw.bb248
    i32 96, label %sw.bb248
    i32 124, label %sw.bb248
  ], !dbg !1337

sw.bb248:                                         ; preds = %for.body243, %for.body243, %for.body243, %for.body243, %for.body243
  br label %use_shell_always_quoting_style, !dbg !1338

sw.default249:                                    ; preds = %for.body243
  br label %sw.epilog250, !dbg !1340

sw.epilog250:                                     ; preds = %sw.default249
  br label %for.inc251, !dbg !1341

for.inc251:                                       ; preds = %sw.epilog250
  %153 = load i64* %j, align 8, !dbg !1335
  %inc252 = add i64 %153, 1, !dbg !1335
  store i64 %inc252, i64* %j, align 8, !dbg !1335
  br label %for.cond240, !dbg !1335

for.end253:                                       ; preds = %for.cond240
  br label %if.end254, !dbg !1342

if.end254:                                        ; preds = %for.end253, %if.else236
  %154 = load i32* %w, align 4, !dbg !1343
  %call255 = call i32 @iswprint(i32 %154) #7, !dbg !1343
  %tobool256 = icmp ne i32 %call255, 0, !dbg !1343
  br i1 %tobool256, label %if.end258, label %if.then257, !dbg !1343

if.then257:                                       ; preds = %if.end254
  store i8 0, i8* %printable, align 1, !dbg !1345
  br label %if.end258, !dbg !1345

if.end258:                                        ; preds = %if.then257, %if.end254
  %155 = load i64* %bytes, align 8, !dbg !1346
  %156 = load i64* %m, align 8, !dbg !1346
  %add259 = add i64 %156, %155, !dbg !1346
  store i64 %add259, i64* %m, align 8, !dbg !1346
  br label %if.end260

if.end260:                                        ; preds = %if.end258
  br label %if.end261

if.end261:                                        ; preds = %if.end260
  br label %if.end262

if.end262:                                        ; preds = %if.end261
  br label %do.cond, !dbg !1347

do.cond:                                          ; preds = %if.end262
  %call263 = call i32 @mbsinit(%struct.__mbstate_t* %mbstate) #13, !dbg !1348
  %tobool264 = icmp ne i32 %call263, 0, !dbg !1348
  %lnot = xor i1 %tobool264, true, !dbg !1348
  br i1 %lnot, label %do.body212, label %do.end265, !dbg !1348

do.end265:                                        ; preds = %do.cond, %while.end, %if.then223, %if.then219
  br label %if.end266

if.end266:                                        ; preds = %do.end265, %if.then199
  %157 = load i64* %m, align 8, !dbg !1349
  %cmp267 = icmp ult i64 1, %157, !dbg !1349
  br i1 %cmp267, label %if.then273, label %lor.lhs.false, !dbg !1349

lor.lhs.false:                                    ; preds = %if.end266
  %158 = load i8* %backslash_escapes, align 1, !dbg !1349
  %tobool269 = trunc i8 %158 to i1, !dbg !1349
  br i1 %tobool269, label %land.lhs.true271, label %if.end338, !dbg !1349

land.lhs.true271:                                 ; preds = %lor.lhs.false
  %159 = load i8* %printable, align 1, !dbg !1349
  %tobool272 = trunc i8 %159 to i1, !dbg !1349
  br i1 %tobool272, label %if.end338, label %if.then273, !dbg !1349

if.then273:                                       ; preds = %land.lhs.true271, %if.end266
  call void @llvm.dbg.declare(metadata !{i64* %ilim}, metadata !1351), !dbg !1353
  %160 = load i64* %i, align 8, !dbg !1353
  %161 = load i64* %m, align 8, !dbg !1353
  %add274 = add i64 %160, %161, !dbg !1353
  store i64 %add274, i64* %ilim, align 8, !dbg !1353
  br label %for.cond275, !dbg !1354

for.cond275:                                      ; preds = %do.end334, %if.then273
  %162 = load i8* %backslash_escapes, align 1, !dbg !1356
  %tobool276 = trunc i8 %162 to i1, !dbg !1356
  br i1 %tobool276, label %land.lhs.true278, label %if.end320, !dbg !1356

land.lhs.true278:                                 ; preds = %for.cond275
  %163 = load i8* %printable, align 1, !dbg !1356
  %tobool279 = trunc i8 %163 to i1, !dbg !1356
  br i1 %tobool279, label %if.end320, label %if.then280, !dbg !1356

if.then280:                                       ; preds = %land.lhs.true278
  br label %do.body281, !dbg !1359

do.body281:                                       ; preds = %if.then280
  %164 = load i64* %len, align 8, !dbg !1361
  %165 = load i64* %buffersize.addr, align 8, !dbg !1361
  %cmp282 = icmp ult i64 %164, %165, !dbg !1361
  br i1 %cmp282, label %if.then284, label %if.end286, !dbg !1361

if.then284:                                       ; preds = %do.body281
  %166 = load i64* %len, align 8, !dbg !1361
  %167 = load i8** %buffer.addr, align 8, !dbg !1361
  %arrayidx285 = getelementptr inbounds i8* %167, i64 %166, !dbg !1361
  store i8 92, i8* %arrayidx285, align 1, !dbg !1361
  br label %if.end286, !dbg !1361

if.end286:                                        ; preds = %if.then284, %do.body281
  %168 = load i64* %len, align 8, !dbg !1364
  %inc287 = add i64 %168, 1, !dbg !1364
  store i64 %inc287, i64* %len, align 8, !dbg !1364
  br label %do.end289, !dbg !1364

do.end289:                                        ; preds = %if.end286
  br label %do.body290, !dbg !1365

do.body290:                                       ; preds = %do.end289
  %169 = load i64* %len, align 8, !dbg !1366
  %170 = load i64* %buffersize.addr, align 8, !dbg !1366
  %cmp291 = icmp ult i64 %169, %170, !dbg !1366
  br i1 %cmp291, label %if.then293, label %if.end298, !dbg !1366

if.then293:                                       ; preds = %do.body290
  %171 = load i8* %c, align 1, !dbg !1366
  %conv294 = zext i8 %171 to i32, !dbg !1366
  %shr = ashr i32 %conv294, 6, !dbg !1366
  %add295 = add nsw i32 48, %shr, !dbg !1366
  %conv296 = trunc i32 %add295 to i8, !dbg !1366
  %172 = load i64* %len, align 8, !dbg !1366
  %173 = load i8** %buffer.addr, align 8, !dbg !1366
  %arrayidx297 = getelementptr inbounds i8* %173, i64 %172, !dbg !1366
  store i8 %conv296, i8* %arrayidx297, align 1, !dbg !1366
  br label %if.end298, !dbg !1366

if.end298:                                        ; preds = %if.then293, %do.body290
  %174 = load i64* %len, align 8, !dbg !1369
  %inc299 = add i64 %174, 1, !dbg !1369
  store i64 %inc299, i64* %len, align 8, !dbg !1369
  br label %do.end301, !dbg !1369

do.end301:                                        ; preds = %if.end298
  br label %do.body302, !dbg !1370

do.body302:                                       ; preds = %do.end301
  %175 = load i64* %len, align 8, !dbg !1371
  %176 = load i64* %buffersize.addr, align 8, !dbg !1371
  %cmp303 = icmp ult i64 %175, %176, !dbg !1371
  br i1 %cmp303, label %if.then305, label %if.end312, !dbg !1371

if.then305:                                       ; preds = %do.body302
  %177 = load i8* %c, align 1, !dbg !1371
  %conv306 = zext i8 %177 to i32, !dbg !1371
  %shr307 = ashr i32 %conv306, 3, !dbg !1371
  %and308 = and i32 %shr307, 7, !dbg !1371
  %add309 = add nsw i32 48, %and308, !dbg !1371
  %conv310 = trunc i32 %add309 to i8, !dbg !1371
  %178 = load i64* %len, align 8, !dbg !1371
  %179 = load i8** %buffer.addr, align 8, !dbg !1371
  %arrayidx311 = getelementptr inbounds i8* %179, i64 %178, !dbg !1371
  store i8 %conv310, i8* %arrayidx311, align 1, !dbg !1371
  br label %if.end312, !dbg !1371

if.end312:                                        ; preds = %if.then305, %do.body302
  %180 = load i64* %len, align 8, !dbg !1374
  %inc313 = add i64 %180, 1, !dbg !1374
  store i64 %inc313, i64* %len, align 8, !dbg !1374
  br label %do.end315, !dbg !1374

do.end315:                                        ; preds = %if.end312
  %181 = load i8* %c, align 1, !dbg !1375
  %conv316 = zext i8 %181 to i32, !dbg !1375
  %and317 = and i32 %conv316, 7, !dbg !1375
  %add318 = add nsw i32 48, %and317, !dbg !1375
  %conv319 = trunc i32 %add318 to i8, !dbg !1375
  store i8 %conv319, i8* %c, align 1, !dbg !1375
  br label %if.end320, !dbg !1376

if.end320:                                        ; preds = %do.end315, %land.lhs.true278, %for.cond275
  %182 = load i64* %ilim, align 8, !dbg !1377
  %183 = load i64* %i, align 8, !dbg !1377
  %add321 = add i64 %183, 1, !dbg !1377
  %cmp322 = icmp ule i64 %182, %add321, !dbg !1377
  br i1 %cmp322, label %if.then324, label %if.end325, !dbg !1377

if.then324:                                       ; preds = %if.end320
  br label %for.end337, !dbg !1379

if.end325:                                        ; preds = %if.end320
  br label %do.body326, !dbg !1380

do.body326:                                       ; preds = %if.end325
  %184 = load i64* %len, align 8, !dbg !1381
  %185 = load i64* %buffersize.addr, align 8, !dbg !1381
  %cmp327 = icmp ult i64 %184, %185, !dbg !1381
  br i1 %cmp327, label %if.then329, label %if.end331, !dbg !1381

if.then329:                                       ; preds = %do.body326
  %186 = load i8* %c, align 1, !dbg !1381
  %187 = load i64* %len, align 8, !dbg !1381
  %188 = load i8** %buffer.addr, align 8, !dbg !1381
  %arrayidx330 = getelementptr inbounds i8* %188, i64 %187, !dbg !1381
  store i8 %186, i8* %arrayidx330, align 1, !dbg !1381
  br label %if.end331, !dbg !1381

if.end331:                                        ; preds = %if.then329, %do.body326
  %189 = load i64* %len, align 8, !dbg !1384
  %inc332 = add i64 %189, 1, !dbg !1384
  store i64 %inc332, i64* %len, align 8, !dbg !1384
  br label %do.end334, !dbg !1384

do.end334:                                        ; preds = %if.end331
  %190 = load i64* %i, align 8, !dbg !1385
  %inc335 = add i64 %190, 1, !dbg !1385
  store i64 %inc335, i64* %i, align 8, !dbg !1385
  %191 = load i8** %arg.addr, align 8, !dbg !1385
  %arrayidx336 = getelementptr inbounds i8* %191, i64 %inc335, !dbg !1385
  %192 = load i8* %arrayidx336, align 1, !dbg !1385
  store i8 %192, i8* %c, align 1, !dbg !1385
  br label %for.cond275, !dbg !1386

for.end337:                                       ; preds = %if.then324
  br label %store_c, !dbg !1387

if.end338:                                        ; preds = %land.lhs.true271, %lor.lhs.false
  br label %sw.epilog339, !dbg !1388

sw.epilog339:                                     ; preds = %if.end338, %sw.bb196, %sw.epilog195, %if.end166, %if.then160, %if.then155, %if.end143, %sw.epilog128, %if.end79
  %193 = load i8* %backslash_escapes, align 1, !dbg !1389
  %tobool340 = trunc i8 %193 to i1, !dbg !1389
  br i1 %tobool340, label %land.lhs.true342, label %if.then348, !dbg !1389

land.lhs.true342:                                 ; preds = %sw.epilog339
  %194 = load i8* %c, align 1, !dbg !1389
  %conv343 = zext i8 %194 to i64, !dbg !1389
  %div = udiv i64 %conv343, 32, !dbg !1389
  %195 = load %struct.quoting_options** %o.addr, align 8, !dbg !1389
  %quote_these_too = getelementptr inbounds %struct.quoting_options* %195, i32 0, i32 1, !dbg !1389
  %arrayidx344 = getelementptr inbounds [8 x i32]* %quote_these_too, i32 0, i64 %div, !dbg !1389
  %196 = load i32* %arrayidx344, align 4, !dbg !1389
  %197 = load i8* %c, align 1, !dbg !1389
  %conv345 = zext i8 %197 to i64, !dbg !1389
  %rem = urem i64 %conv345, 32, !dbg !1389
  %sh_prom = trunc i64 %rem to i32, !dbg !1389
  %shl = shl i32 1, %sh_prom, !dbg !1389
  %and346 = and i32 %196, %shl, !dbg !1389
  %tobool347 = icmp ne i32 %and346, 0, !dbg !1389
  br i1 %tobool347, label %if.end349, label %if.then348, !dbg !1389

if.then348:                                       ; preds = %land.lhs.true342, %sw.epilog339
  br label %store_c, !dbg !1391

if.end349:                                        ; preds = %land.lhs.true342
  br label %store_escape, !dbg !1391

store_escape:                                     ; preds = %if.end349, %if.then142
  br label %do.body350, !dbg !1392

do.body350:                                       ; preds = %store_escape
  %198 = load i64* %len, align 8, !dbg !1393
  %199 = load i64* %buffersize.addr, align 8, !dbg !1393
  %cmp351 = icmp ult i64 %198, %199, !dbg !1393
  br i1 %cmp351, label %if.then353, label %if.end355, !dbg !1393

if.then353:                                       ; preds = %do.body350
  %200 = load i64* %len, align 8, !dbg !1393
  %201 = load i8** %buffer.addr, align 8, !dbg !1393
  %arrayidx354 = getelementptr inbounds i8* %201, i64 %200, !dbg !1393
  store i8 92, i8* %arrayidx354, align 1, !dbg !1393
  br label %if.end355, !dbg !1393

if.end355:                                        ; preds = %if.then353, %do.body350
  %202 = load i64* %len, align 8, !dbg !1396
  %inc356 = add i64 %202, 1, !dbg !1396
  store i64 %inc356, i64* %len, align 8, !dbg !1396
  br label %do.end358, !dbg !1396

do.end358:                                        ; preds = %if.end355
  br label %store_c, !dbg !1396

store_c:                                          ; preds = %do.end358, %if.then348, %for.end337
  br label %do.body359, !dbg !1397

do.body359:                                       ; preds = %store_c
  %203 = load i64* %len, align 8, !dbg !1398
  %204 = load i64* %buffersize.addr, align 8, !dbg !1398
  %cmp360 = icmp ult i64 %203, %204, !dbg !1398
  br i1 %cmp360, label %if.then362, label %if.end364, !dbg !1398

if.then362:                                       ; preds = %do.body359
  %205 = load i8* %c, align 1, !dbg !1398
  %206 = load i64* %len, align 8, !dbg !1398
  %207 = load i8** %buffer.addr, align 8, !dbg !1398
  %arrayidx363 = getelementptr inbounds i8* %207, i64 %206, !dbg !1398
  store i8 %205, i8* %arrayidx363, align 1, !dbg !1398
  br label %if.end364, !dbg !1398

if.end364:                                        ; preds = %if.then362, %do.body359
  %208 = load i64* %len, align 8, !dbg !1401
  %inc365 = add i64 %208, 1, !dbg !1401
  store i64 %inc365, i64* %len, align 8, !dbg !1401
  br label %do.end367, !dbg !1401

do.end367:                                        ; preds = %if.end364
  br label %for.inc368, !dbg !1402

for.inc368:                                       ; preds = %do.end367
  %209 = load i64* %i, align 8, !dbg !1155
  %inc369 = add i64 %209, 1, !dbg !1155
  store i64 %inc369, i64* %i, align 8, !dbg !1155
  br label %for.cond22, !dbg !1155

for.end370:                                       ; preds = %cond.false, %cond.true
  %210 = load i64* %i, align 8, !dbg !1403
  %cmp371 = icmp eq i64 %210, 0, !dbg !1403
  br i1 %cmp371, label %land.lhs.true373, label %if.end377, !dbg !1403

land.lhs.true373:                                 ; preds = %for.end370
  %211 = load i32* %quoting_style.addr, align 4, !dbg !1403
  %cmp374 = icmp eq i32 %211, 1, !dbg !1403
  br i1 %cmp374, label %if.then376, label %if.end377, !dbg !1403

if.then376:                                       ; preds = %land.lhs.true373
  br label %use_shell_always_quoting_style, !dbg !1405

if.end377:                                        ; preds = %land.lhs.true373, %for.end370
  %212 = load i8** %quote_string, align 8, !dbg !1406
  %tobool378 = icmp ne i8* %212, null, !dbg !1406
  br i1 %tobool378, label %if.then379, label %if.end395, !dbg !1406

if.then379:                                       ; preds = %if.end377
  br label %for.cond380, !dbg !1408

for.cond380:                                      ; preds = %for.inc392, %if.then379
  %213 = load i8** %quote_string, align 8, !dbg !1408
  %214 = load i8* %213, align 1, !dbg !1408
  %tobool381 = icmp ne i8 %214, 0, !dbg !1408
  br i1 %tobool381, label %for.body382, label %for.end394, !dbg !1408

for.body382:                                      ; preds = %for.cond380
  br label %do.body383, !dbg !1410

do.body383:                                       ; preds = %for.body382
  %215 = load i64* %len, align 8, !dbg !1411
  %216 = load i64* %buffersize.addr, align 8, !dbg !1411
  %cmp384 = icmp ult i64 %215, %216, !dbg !1411
  br i1 %cmp384, label %if.then386, label %if.end388, !dbg !1411

if.then386:                                       ; preds = %do.body383
  %217 = load i8** %quote_string, align 8, !dbg !1411
  %218 = load i8* %217, align 1, !dbg !1411
  %219 = load i64* %len, align 8, !dbg !1411
  %220 = load i8** %buffer.addr, align 8, !dbg !1411
  %arrayidx387 = getelementptr inbounds i8* %220, i64 %219, !dbg !1411
  store i8 %218, i8* %arrayidx387, align 1, !dbg !1411
  br label %if.end388, !dbg !1411

if.end388:                                        ; preds = %if.then386, %do.body383
  %221 = load i64* %len, align 8, !dbg !1414
  %inc389 = add i64 %221, 1, !dbg !1414
  store i64 %inc389, i64* %len, align 8, !dbg !1414
  br label %do.end391, !dbg !1414

do.end391:                                        ; preds = %if.end388
  br label %for.inc392, !dbg !1414

for.inc392:                                       ; preds = %do.end391
  %222 = load i8** %quote_string, align 8, !dbg !1408
  %incdec.ptr393 = getelementptr inbounds i8* %222, i32 1, !dbg !1408
  store i8* %incdec.ptr393, i8** %quote_string, align 8, !dbg !1408
  br label %for.cond380, !dbg !1408

for.end394:                                       ; preds = %for.cond380
  br label %if.end395, !dbg !1410

if.end395:                                        ; preds = %for.end394, %if.end377
  %223 = load i64* %len, align 8, !dbg !1415
  %224 = load i64* %buffersize.addr, align 8, !dbg !1415
  %cmp396 = icmp ult i64 %223, %224, !dbg !1415
  br i1 %cmp396, label %if.then398, label %if.end400, !dbg !1415

if.then398:                                       ; preds = %if.end395
  %225 = load i64* %len, align 8, !dbg !1417
  %226 = load i8** %buffer.addr, align 8, !dbg !1417
  %arrayidx399 = getelementptr inbounds i8* %226, i64 %225, !dbg !1417
  store i8 0, i8* %arrayidx399, align 1, !dbg !1417
  br label %if.end400, !dbg !1417

if.end400:                                        ; preds = %if.then398, %if.end395
  %227 = load i64* %len, align 8, !dbg !1418
  store i64 %227, i64* %retval, !dbg !1418
  br label %return, !dbg !1418

use_shell_always_quoting_style:                   ; preds = %if.then376, %sw.bb248, %sw.bb168, %if.then165, %if.then139, %sw.bb81
  %228 = load i8** %buffer.addr, align 8, !dbg !1419
  %229 = load i64* %buffersize.addr, align 8, !dbg !1419
  %230 = load i8** %arg.addr, align 8, !dbg !1419
  %231 = load i64* %argsize.addr, align 8, !dbg !1419
  %232 = load %struct.quoting_options** %o.addr, align 8, !dbg !1419
  %call401 = call i64 @quotearg_buffer_restyled(i8* %228, i64 %229, i8* %230, i64 %231, i32 2, %struct.quoting_options* %232), !dbg !1419
  store i64 %call401, i64* %retval, !dbg !1419
  br label %return, !dbg !1419

return:                                           ; preds = %use_shell_always_quoting_style, %if.end400
  %233 = load i64* %retval, !dbg !1420
  ret i64 %233, !dbg !1420
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_options(i32 %n, i8* %arg, i64 %argsize, %struct.quoting_options* %options) #0 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %options.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %n0 = alloca i32, align 4
  %sv = alloca %struct.slotvec*, align 8
  %n1 = alloca i64, align 8
  %preallocated = alloca i8, align 1
  %size = alloca i64, align 8
  %val = alloca i8*, align 8
  %qsize = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %n.addr}, metadata !1421), !dbg !1422
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1423), !dbg !1422
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %argsize.addr}, metadata !1424), !dbg !1422
  store %struct.quoting_options* %options, %struct.quoting_options** %options.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %options.addr}, metadata !1425), !dbg !1426
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !1427), !dbg !1428
  %call = call i32* @__errno_location() #1, !dbg !1428
  %0 = load i32* %call, align 4, !dbg !1428
  store i32 %0, i32* %e, align 4, !dbg !1428
  call void @llvm.dbg.declare(metadata !{i32* %n0}, metadata !1429), !dbg !1430
  %1 = load i32* %n.addr, align 4, !dbg !1430
  store i32 %1, i32* %n0, align 4, !dbg !1430
  call void @llvm.dbg.declare(metadata !{%struct.slotvec** %sv}, metadata !1431), !dbg !1432
  %2 = load %struct.slotvec** @slotvec, align 8, !dbg !1432
  store %struct.slotvec* %2, %struct.slotvec** %sv, align 8, !dbg !1432
  %3 = load i32* %n.addr, align 4, !dbg !1433
  %cmp = icmp slt i32 %3, 0, !dbg !1433
  br i1 %cmp, label %if.then, label %if.end, !dbg !1433

if.then:                                          ; preds = %entry
  call void @abort() #12, !dbg !1435
  unreachable, !dbg !1435

if.end:                                           ; preds = %entry
  %4 = load i32* @nslots, align 4, !dbg !1436
  %5 = load i32* %n0, align 4, !dbg !1436
  %cmp1 = icmp ule i32 %4, %5, !dbg !1436
  br i1 %cmp1, label %if.then2, label %if.end17, !dbg !1436

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata !{i64* %n1}, metadata !1438), !dbg !1440
  %6 = load i32* %n0, align 4, !dbg !1440
  %add = add i32 %6, 1, !dbg !1440
  %conv = zext i32 %add to i64, !dbg !1440
  store i64 %conv, i64* %n1, align 8, !dbg !1440
  call void @llvm.dbg.declare(metadata !{i8* %preallocated}, metadata !1441), !dbg !1442
  %7 = load %struct.slotvec** %sv, align 8, !dbg !1442
  %cmp3 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1442
  %frombool = zext i1 %cmp3 to i8, !dbg !1442
  store i8 %frombool, i8* %preallocated, align 1, !dbg !1442
  %8 = load i64* %n1, align 8, !dbg !1443
  %cmp5 = icmp ult i64 1152921504606846975, %8, !dbg !1443
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !1443

if.then7:                                         ; preds = %if.then2
  call void @xalloc_die() #14, !dbg !1445
  unreachable, !dbg !1445

if.end8:                                          ; preds = %if.then2
  %9 = load i8* %preallocated, align 1, !dbg !1446
  %tobool = trunc i8 %9 to i1, !dbg !1446
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1446

cond.true:                                        ; preds = %if.end8
  br label %cond.end, !dbg !1446

cond.false:                                       ; preds = %if.end8
  %10 = load %struct.slotvec** %sv, align 8, !dbg !1446
  br label %cond.end, !dbg !1446

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.slotvec* [ null, %cond.true ], [ %10, %cond.false ], !dbg !1446
  %11 = bitcast %struct.slotvec* %cond to i8*, !dbg !1446
  %12 = load i64* %n1, align 8, !dbg !1446
  %mul = mul i64 %12, 16, !dbg !1446
  %call10 = call i8* @xrealloc(i8* %11, i64 %mul), !dbg !1446
  %13 = bitcast i8* %call10 to %struct.slotvec*, !dbg !1446
  store %struct.slotvec* %13, %struct.slotvec** %sv, align 8, !dbg !1446
  store %struct.slotvec* %13, %struct.slotvec** @slotvec, align 8, !dbg !1446
  %14 = load i8* %preallocated, align 1, !dbg !1447
  %tobool11 = trunc i8 %14 to i1, !dbg !1447
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1447

if.then12:                                        ; preds = %cond.end
  %15 = load %struct.slotvec** %sv, align 8, !dbg !1449
  %16 = bitcast %struct.slotvec* %15 to i8*, !dbg !1449
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !1449
  br label %if.end13, !dbg !1449

if.end13:                                         ; preds = %if.then12, %cond.end
  %17 = load %struct.slotvec** %sv, align 8, !dbg !1450
  %18 = load i32* @nslots, align 4, !dbg !1450
  %idx.ext = zext i32 %18 to i64, !dbg !1450
  %add.ptr = getelementptr inbounds %struct.slotvec* %17, i64 %idx.ext, !dbg !1450
  %19 = bitcast %struct.slotvec* %add.ptr to i8*, !dbg !1450
  %20 = load i64* %n1, align 8, !dbg !1450
  %21 = load i32* @nslots, align 4, !dbg !1450
  %conv14 = zext i32 %21 to i64, !dbg !1450
  %sub = sub i64 %20, %conv14, !dbg !1450
  %mul15 = mul i64 %sub, 16, !dbg !1450
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 %mul15, i32 8, i1 false), !dbg !1450
  %22 = load i64* %n1, align 8, !dbg !1451
  %conv16 = trunc i64 %22 to i32, !dbg !1451
  store i32 %conv16, i32* @nslots, align 4, !dbg !1451
  br label %if.end17, !dbg !1452

if.end17:                                         ; preds = %if.end13, %if.end
  call void @llvm.dbg.declare(metadata !{i64* %size}, metadata !1453), !dbg !1455
  %23 = load i32* %n.addr, align 4, !dbg !1455
  %idxprom = sext i32 %23 to i64, !dbg !1455
  %24 = load %struct.slotvec** %sv, align 8, !dbg !1455
  %arrayidx = getelementptr inbounds %struct.slotvec* %24, i64 %idxprom, !dbg !1455
  %size18 = getelementptr inbounds %struct.slotvec* %arrayidx, i32 0, i32 0, !dbg !1455
  %25 = load i64* %size18, align 8, !dbg !1455
  store i64 %25, i64* %size, align 8, !dbg !1455
  call void @llvm.dbg.declare(metadata !{i8** %val}, metadata !1456), !dbg !1457
  %26 = load i32* %n.addr, align 4, !dbg !1457
  %idxprom19 = sext i32 %26 to i64, !dbg !1457
  %27 = load %struct.slotvec** %sv, align 8, !dbg !1457
  %arrayidx20 = getelementptr inbounds %struct.slotvec* %27, i64 %idxprom19, !dbg !1457
  %val21 = getelementptr inbounds %struct.slotvec* %arrayidx20, i32 0, i32 1, !dbg !1457
  %28 = load i8** %val21, align 8, !dbg !1457
  store i8* %28, i8** %val, align 8, !dbg !1457
  call void @llvm.dbg.declare(metadata !{i64* %qsize}, metadata !1458), !dbg !1459
  %29 = load i8** %val, align 8, !dbg !1459
  %30 = load i64* %size, align 8, !dbg !1459
  %31 = load i8** %arg.addr, align 8, !dbg !1459
  %32 = load i64* %argsize.addr, align 8, !dbg !1459
  %33 = load %struct.quoting_options** %options.addr, align 8, !dbg !1459
  %call22 = call i64 @quotearg_buffer(i8* %29, i64 %30, i8* %31, i64 %32, %struct.quoting_options* %33), !dbg !1459
  store i64 %call22, i64* %qsize, align 8, !dbg !1459
  %34 = load i64* %size, align 8, !dbg !1460
  %35 = load i64* %qsize, align 8, !dbg !1460
  %cmp23 = icmp ule i64 %34, %35, !dbg !1460
  br i1 %cmp23, label %if.then25, label %if.end39, !dbg !1460

if.then25:                                        ; preds = %if.end17
  %36 = load i64* %qsize, align 8, !dbg !1462
  %add26 = add i64 %36, 1, !dbg !1462
  store i64 %add26, i64* %size, align 8, !dbg !1462
  %37 = load i32* %n.addr, align 4, !dbg !1462
  %idxprom27 = sext i32 %37 to i64, !dbg !1462
  %38 = load %struct.slotvec** %sv, align 8, !dbg !1462
  %arrayidx28 = getelementptr inbounds %struct.slotvec* %38, i64 %idxprom27, !dbg !1462
  %size29 = getelementptr inbounds %struct.slotvec* %arrayidx28, i32 0, i32 0, !dbg !1462
  store i64 %add26, i64* %size29, align 8, !dbg !1462
  %39 = load i8** %val, align 8, !dbg !1464
  %cmp30 = icmp ne i8* %39, getelementptr inbounds ([256 x i8]* @slot0, i32 0, i32 0), !dbg !1464
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !1464

if.then32:                                        ; preds = %if.then25
  %40 = load i8** %val, align 8, !dbg !1466
  call void @free(i8* %40) #7, !dbg !1466
  br label %if.end33, !dbg !1466

if.end33:                                         ; preds = %if.then32, %if.then25
  %41 = load i64* %size, align 8, !dbg !1467
  %call34 = call i8* @xcharalloc(i64 %41), !dbg !1467
  store i8* %call34, i8** %val, align 8, !dbg !1467
  %42 = load i32* %n.addr, align 4, !dbg !1467
  %idxprom35 = sext i32 %42 to i64, !dbg !1467
  %43 = load %struct.slotvec** %sv, align 8, !dbg !1467
  %arrayidx36 = getelementptr inbounds %struct.slotvec* %43, i64 %idxprom35, !dbg !1467
  %val37 = getelementptr inbounds %struct.slotvec* %arrayidx36, i32 0, i32 1, !dbg !1467
  store i8* %call34, i8** %val37, align 8, !dbg !1467
  %44 = load i8** %val, align 8, !dbg !1468
  %45 = load i64* %size, align 8, !dbg !1468
  %46 = load i8** %arg.addr, align 8, !dbg !1468
  %47 = load i64* %argsize.addr, align 8, !dbg !1468
  %48 = load %struct.quoting_options** %options.addr, align 8, !dbg !1468
  %call38 = call i64 @quotearg_buffer(i8* %44, i64 %45, i8* %46, i64 %47, %struct.quoting_options* %48), !dbg !1468
  br label %if.end39, !dbg !1469

if.end39:                                         ; preds = %if.end33, %if.end17
  %49 = load i32* %e, align 4, !dbg !1470
  %call40 = call i32* @__errno_location() #1, !dbg !1470
  store i32 %49, i32* %call40, align 4, !dbg !1470
  %50 = load i8** %val, align 8, !dbg !1471
  ret i8* %50, !dbg !1471
}

; Function Attrs: nounwind uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret %agg.result, i32 %style) #0 {
entry:
  %style.addr = alloca i32, align 4
  %o = alloca %struct.quoting_options, align 4
  store i32 %style, i32* %style.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %style.addr}, metadata !1472), !dbg !1473
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options* %o}, metadata !1474), !dbg !1475
  %0 = load i32* %style.addr, align 4, !dbg !1476
  %style1 = getelementptr inbounds %struct.quoting_options* %o, i32 0, i32 0, !dbg !1476
  store i32 %0, i32* %style1, align 4, !dbg !1476
  %quote_these_too = getelementptr inbounds %struct.quoting_options* %o, i32 0, i32 1, !dbg !1477
  %1 = bitcast [8 x i32]* %quote_these_too to i8*, !dbg !1477
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 4, i1 false), !dbg !1477
  %2 = bitcast %struct.quoting_options* %agg.result to i8*, !dbg !1478
  %3 = bitcast %struct.quoting_options* %o to i8*, !dbg !1478
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 36, i32 4, i1 false), !dbg !1478
  ret void, !dbg !1478
}

; Function Attrs: nounwind uwtable
define internal i8* @gettext_quote(i8* %msgid, i32 %s) #0 {
entry:
  %msgid.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %translation = alloca i8*, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %msgid.addr}, metadata !1479), !dbg !1480
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %s.addr}, metadata !1481), !dbg !1480
  call void @llvm.dbg.declare(metadata !{i8** %translation}, metadata !1482), !dbg !1483
  %0 = load i8** %msgid.addr, align 8, !dbg !1483
  store i8* %0, i8** %translation, align 8, !dbg !1483
  %1 = load i8** %translation, align 8, !dbg !1484
  %2 = load i8** %msgid.addr, align 8, !dbg !1484
  %cmp = icmp eq i8* %1, %2, !dbg !1484
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1484

land.lhs.true:                                    ; preds = %entry
  %3 = load i32* %s.addr, align 4, !dbg !1484
  %cmp1 = icmp eq i32 %3, 6, !dbg !1484
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1484

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([2 x i8]* @.str783, i32 0, i32 0), i8** %translation, align 8, !dbg !1486
  br label %if.end, !dbg !1486

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i8** %translation, align 8, !dbg !1487
  ret i8* %4, !dbg !1487
}

; Function Attrs: nounwind uwtable
define i8* @xnmalloc(i64 %n, i64 %s) #0 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !1488), !dbg !1489
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !1490), !dbg !1489
  %0 = load i64* %s.addr, align 8, !dbg !1491
  %div = udiv i64 -1, %0, !dbg !1491
  %1 = load i64* %n.addr, align 8, !dbg !1491
  %cmp = icmp ult i64 %div, %1, !dbg !1491
  br i1 %cmp, label %if.then, label %if.end, !dbg !1491

if.then:                                          ; preds = %entry
  call void @xalloc_die() #14, !dbg !1493
  unreachable, !dbg !1493

if.end:                                           ; preds = %entry
  %2 = load i64* %n.addr, align 8, !dbg !1494
  %3 = load i64* %s.addr, align 8, !dbg !1494
  %mul = mul i64 %2, %3, !dbg !1494
  %call = call i8* @xmalloc(i64 %mul), !dbg !1494
  ret i8* %call, !dbg !1494
}

; Function Attrs: nounwind uwtable
define i8* @xmalloc(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !1495), !dbg !1496
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !1497), !dbg !1499
  %0 = load i64* %n.addr, align 8, !dbg !1499
  %call = call noalias i8* @malloc(i64 %0) #7, !dbg !1499
  store i8* %call, i8** %p, align 8, !dbg !1499
  %1 = load i8** %p, align 8, !dbg !1500
  %tobool = icmp ne i8* %1, null, !dbg !1500
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1500

land.lhs.true:                                    ; preds = %entry
  %2 = load i64* %n.addr, align 8, !dbg !1500
  %cmp = icmp ne i64 %2, 0, !dbg !1500
  br i1 %cmp, label %if.then, label %if.end, !dbg !1500

if.then:                                          ; preds = %land.lhs.true
  call void @xalloc_die() #14, !dbg !1502
  unreachable, !dbg !1502

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8** %p, align 8, !dbg !1503
  ret i8* %3, !dbg !1503
}

; Function Attrs: nounwind uwtable
define i8* @xnrealloc(i8* %p, i64 %n, i64 %s) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !1504), !dbg !1505
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !1506), !dbg !1505
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !1507), !dbg !1505
  %0 = load i64* %s.addr, align 8, !dbg !1508
  %div = udiv i64 -1, %0, !dbg !1508
  %1 = load i64* %n.addr, align 8, !dbg !1508
  %cmp = icmp ult i64 %div, %1, !dbg !1508
  br i1 %cmp, label %if.then, label %if.end, !dbg !1508

if.then:                                          ; preds = %entry
  call void @xalloc_die() #14, !dbg !1510
  unreachable, !dbg !1510

if.end:                                           ; preds = %entry
  %2 = load i8** %p.addr, align 8, !dbg !1511
  %3 = load i64* %n.addr, align 8, !dbg !1511
  %4 = load i64* %s.addr, align 8, !dbg !1511
  %mul = mul i64 %3, %4, !dbg !1511
  %call = call i8* @xrealloc(i8* %2, i64 %mul), !dbg !1511
  ret i8* %call, !dbg !1511
}

; Function Attrs: nounwind uwtable
define i8* @xrealloc(i8* %p, i64 %n) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !1512), !dbg !1513
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !1514), !dbg !1513
  %0 = load i8** %p.addr, align 8, !dbg !1515
  %1 = load i64* %n.addr, align 8, !dbg !1515
  %call = call i8* @realloc(i8* %0, i64 %1) #7, !dbg !1515
  store i8* %call, i8** %p.addr, align 8, !dbg !1515
  %2 = load i8** %p.addr, align 8, !dbg !1516
  %tobool = icmp ne i8* %2, null, !dbg !1516
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1516

land.lhs.true:                                    ; preds = %entry
  %3 = load i64* %n.addr, align 8, !dbg !1516
  %cmp = icmp ne i64 %3, 0, !dbg !1516
  br i1 %cmp, label %if.then, label %if.end, !dbg !1516

if.then:                                          ; preds = %land.lhs.true
  call void @xalloc_die() #14, !dbg !1518
  unreachable, !dbg !1518

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i8** %p.addr, align 8, !dbg !1519
  ret i8* %4, !dbg !1519
}

; Function Attrs: nounwind uwtable
define i8* @x2nrealloc(i8* %p, i64* %pn, i64 %s) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  %s.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !1520), !dbg !1521
  store i64* %pn, i64** %pn.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64** %pn.addr}, metadata !1522), !dbg !1521
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !1523), !dbg !1521
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !1524), !dbg !1525
  %0 = load i64** %pn.addr, align 8, !dbg !1525
  %1 = load i64* %0, align 8, !dbg !1525
  store i64 %1, i64* %n, align 8, !dbg !1525
  %2 = load i8** %p.addr, align 8, !dbg !1526
  %tobool = icmp ne i8* %2, null, !dbg !1526
  br i1 %tobool, label %if.else, label %if.then, !dbg !1526

if.then:                                          ; preds = %entry
  %3 = load i64* %n, align 8, !dbg !1528
  %tobool1 = icmp ne i64 %3, 0, !dbg !1528
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !1528

if.then2:                                         ; preds = %if.then
  %4 = load i64* %s.addr, align 8, !dbg !1531
  %div = udiv i64 64, %4, !dbg !1531
  store i64 %div, i64* %n, align 8, !dbg !1531
  %5 = load i64* %n, align 8, !dbg !1533
  %tobool3 = icmp ne i64 %5, 0, !dbg !1533
  %lnot = xor i1 %tobool3, true, !dbg !1533
  %lnot.ext = zext i1 %lnot to i32, !dbg !1533
  %conv = sext i32 %lnot.ext to i64, !dbg !1533
  %6 = load i64* %n, align 8, !dbg !1533
  %add = add i64 %6, %conv, !dbg !1533
  store i64 %add, i64* %n, align 8, !dbg !1533
  br label %if.end, !dbg !1534

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end11, !dbg !1535

if.else:                                          ; preds = %entry
  %7 = load i64* %s.addr, align 8, !dbg !1536
  %div4 = udiv i64 -6148914691236517206, %7, !dbg !1536
  %8 = load i64* %n, align 8, !dbg !1536
  %cmp = icmp ule i64 %div4, %8, !dbg !1536
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !1536

if.then6:                                         ; preds = %if.else
  call void @xalloc_die() #14, !dbg !1539
  unreachable, !dbg !1539

if.end7:                                          ; preds = %if.else
  %9 = load i64* %n, align 8, !dbg !1540
  %add8 = add i64 %9, 1, !dbg !1540
  %div9 = udiv i64 %add8, 2, !dbg !1540
  %10 = load i64* %n, align 8, !dbg !1540
  %add10 = add i64 %10, %div9, !dbg !1540
  store i64 %add10, i64* %n, align 8, !dbg !1540
  br label %if.end11

if.end11:                                         ; preds = %if.end7, %if.end
  %11 = load i64* %n, align 8, !dbg !1541
  %12 = load i64** %pn.addr, align 8, !dbg !1541
  store i64 %11, i64* %12, align 8, !dbg !1541
  %13 = load i8** %p.addr, align 8, !dbg !1542
  %14 = load i64* %n, align 8, !dbg !1542
  %15 = load i64* %s.addr, align 8, !dbg !1542
  %mul = mul i64 %14, %15, !dbg !1542
  %call = call i8* @xrealloc(i8* %13, i64 %mul), !dbg !1542
  ret i8* %call, !dbg !1542
}

; Function Attrs: nounwind uwtable
define i8* @xcharalloc(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !1543), !dbg !1544
  %0 = load i64* %n.addr, align 8, !dbg !1545
  %call = call i8* @xmalloc(i64 %0), !dbg !1545
  ret i8* %call, !dbg !1545
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define i8* @x2realloc(i8* %p, i64* %pn) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !1546), !dbg !1547
  store i64* %pn, i64** %pn.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64** %pn.addr}, metadata !1548), !dbg !1547
  %0 = load i8** %p.addr, align 8, !dbg !1549
  %1 = load i64** %pn.addr, align 8, !dbg !1549
  %call = call i8* @x2nrealloc(i8* %0, i64* %1, i64 1), !dbg !1549
  ret i8* %call, !dbg !1549
}

; Function Attrs: nounwind uwtable
define i8* @xzalloc(i64 %s) #0 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !1550), !dbg !1551
  %0 = load i64* %s.addr, align 8, !dbg !1552
  %call = call i8* @xmalloc(i64 %0), !dbg !1552
  %1 = load i64* %s.addr, align 8, !dbg !1552
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %1, i32 1, i1 false), !dbg !1552
  ret i8* %call, !dbg !1552
}

; Function Attrs: nounwind uwtable
define i8* @xcalloc(i64 %n, i64 %s) #0 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !1553), !dbg !1554
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !1555), !dbg !1554
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !1556), !dbg !1557
  %0 = load i64* %n.addr, align 8, !dbg !1558
  %1 = load i64* %s.addr, align 8, !dbg !1558
  %call = call noalias i8* @calloc(i64 %0, i64 %1) #7, !dbg !1558
  store i8* %call, i8** %p, align 8, !dbg !1558
  %tobool = icmp ne i8* %call, null, !dbg !1558
  br i1 %tobool, label %if.end, label %if.then, !dbg !1558

if.then:                                          ; preds = %entry
  call void @xalloc_die() #14, !dbg !1560
  unreachable, !dbg !1560

if.end:                                           ; preds = %entry
  %2 = load i8** %p, align 8, !dbg !1561
  ret i8* %2, !dbg !1561
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define i8* @xmemdup(i8* %p, i64 %s) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !1562), !dbg !1563
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !1564), !dbg !1563
  %0 = load i64* %s.addr, align 8, !dbg !1565
  %call = call i8* @xmalloc(i64 %0), !dbg !1565
  %1 = load i8** %p.addr, align 8, !dbg !1565
  %2 = load i64* %s.addr, align 8, !dbg !1565
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call, i8* %1, i64 %2, i32 1, i1 false), !dbg !1565
  ret i8* %call, !dbg !1565
}

; Function Attrs: nounwind uwtable
define i8* @xstrdup(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %string.addr}, metadata !1566), !dbg !1567
  %0 = load i8** %string.addr, align 8, !dbg !1568
  %1 = load i8** %string.addr, align 8, !dbg !1568
  %call = call i64 @strlen(i8* %1) #13, !dbg !1568
  %add = add i64 %call, 1, !dbg !1568
  %call1 = call i8* @xmemdup(i8* %0, i64 %add), !dbg !1568
  ret i8* %call1, !dbg !1568
}

; Function Attrs: nounwind uwtable
define zeroext i1 @xstrtold(i8* %str, i8** %ptr, x86_fp80* %result, x86_fp80 (i8*, i8**)* %convert) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %ptr.addr = alloca i8**, align 8
  %result.addr = alloca x86_fp80*, align 8
  %convert.addr = alloca x86_fp80 (i8*, i8**)*, align 8
  %val = alloca x86_fp80, align 16
  %terminator = alloca i8*, align 8
  %ok = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %str.addr}, metadata !1569), !dbg !1570
  store i8** %ptr, i8*** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8*** %ptr.addr}, metadata !1571), !dbg !1570
  store x86_fp80* %result, x86_fp80** %result.addr, align 8
  call void @llvm.dbg.declare(metadata !{x86_fp80** %result.addr}, metadata !1572), !dbg !1570
  store x86_fp80 (i8*, i8**)* %convert, x86_fp80 (i8*, i8**)** %convert.addr, align 8
  call void @llvm.dbg.declare(metadata !{x86_fp80 (i8*, i8**)** %convert.addr}, metadata !1573), !dbg !1574
  call void @llvm.dbg.declare(metadata !{x86_fp80* %val}, metadata !1575), !dbg !1576
  call void @llvm.dbg.declare(metadata !{i8** %terminator}, metadata !1577), !dbg !1578
  call void @llvm.dbg.declare(metadata !{i8* %ok}, metadata !1579), !dbg !1580
  store i8 1, i8* %ok, align 1, !dbg !1580
  %call = call i32* @__errno_location() #1, !dbg !1581
  store i32 0, i32* %call, align 4, !dbg !1581
  %0 = load x86_fp80 (i8*, i8**)** %convert.addr, align 8, !dbg !1582
  %1 = load i8** %str.addr, align 8, !dbg !1582
  %call1 = call x86_fp80 %0(i8* %1, i8** %terminator), !dbg !1582
  store x86_fp80 %call1, x86_fp80* %val, align 16, !dbg !1582
  %2 = load i8** %terminator, align 8, !dbg !1583
  %3 = load i8** %str.addr, align 8, !dbg !1583
  %cmp = icmp eq i8* %2, %3, !dbg !1583
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1583

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*** %ptr.addr, align 8, !dbg !1583
  %cmp2 = icmp eq i8** %4, null, !dbg !1583
  br i1 %cmp2, label %land.lhs.true, label %if.else, !dbg !1583

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i8** %terminator, align 8, !dbg !1583
  %6 = load i8* %5, align 1, !dbg !1583
  %conv = sext i8 %6 to i32, !dbg !1583
  %cmp3 = icmp ne i32 %conv, 0, !dbg !1583
  br i1 %cmp3, label %if.then, label %if.else, !dbg !1583

if.then:                                          ; preds = %land.lhs.true, %entry
  store i8 0, i8* %ok, align 1, !dbg !1585
  br label %if.end12, !dbg !1585

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %7 = load x86_fp80* %val, align 16, !dbg !1586
  %cmp5 = fcmp une x86_fp80 %7, 0xK00000000000000000000, !dbg !1586
  br i1 %cmp5, label %land.lhs.true7, label %if.end, !dbg !1586

land.lhs.true7:                                   ; preds = %if.else
  %call8 = call i32* @__errno_location() #1, !dbg !1586
  %8 = load i32* %call8, align 4, !dbg !1586
  %cmp9 = icmp eq i32 %8, 34, !dbg !1586
  br i1 %cmp9, label %if.then11, label %if.end, !dbg !1586

if.then11:                                        ; preds = %land.lhs.true7
  store i8 0, i8* %ok, align 1, !dbg !1589
  br label %if.end, !dbg !1589

if.end:                                           ; preds = %if.then11, %land.lhs.true7, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %9 = load i8*** %ptr.addr, align 8, !dbg !1590
  %cmp13 = icmp ne i8** %9, null, !dbg !1590
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !1590

if.then15:                                        ; preds = %if.end12
  %10 = load i8** %terminator, align 8, !dbg !1592
  %11 = load i8*** %ptr.addr, align 8, !dbg !1592
  store i8* %10, i8** %11, align 8, !dbg !1592
  br label %if.end16, !dbg !1592

if.end16:                                         ; preds = %if.then15, %if.end12
  %12 = load x86_fp80* %val, align 16, !dbg !1593
  %13 = load x86_fp80** %result.addr, align 8, !dbg !1593
  store x86_fp80 %12, x86_fp80* %13, align 16, !dbg !1593
  %14 = load i8* %ok, align 1, !dbg !1594
  %tobool = trunc i8 %14 to i1, !dbg !1594
  ret i1 %tobool, !dbg !1594
}

; Function Attrs: nounwind uwtable
define i32 @close_stream(%struct._IO_FILE* %stream) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %some_pending = alloca i8, align 1
  %prev_fail = alloca i8, align 1
  %fclose_fail = alloca i8, align 1
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %stream.addr}, metadata !1595), !dbg !1596
  call void @llvm.dbg.declare(metadata !{i8* %some_pending}, metadata !1597), !dbg !1598
  %0 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1598
  %call = call i64 @__fpending(%struct._IO_FILE* %0) #7, !dbg !1598
  %cmp = icmp ne i64 %call, 0, !dbg !1598
  %frombool = zext i1 %cmp to i8, !dbg !1598
  store i8 %frombool, i8* %some_pending, align 1, !dbg !1598
  call void @llvm.dbg.declare(metadata !{i8* %prev_fail}, metadata !1599), !dbg !1600
  %1 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1600
  %call1 = call i32 @ferror_unlocked(%struct._IO_FILE* %1) #7, !dbg !1600
  %cmp2 = icmp ne i32 %call1, 0, !dbg !1600
  %frombool3 = zext i1 %cmp2 to i8, !dbg !1600
  store i8 %frombool3, i8* %prev_fail, align 1, !dbg !1600
  call void @llvm.dbg.declare(metadata !{i8* %fclose_fail}, metadata !1601), !dbg !1602
  %2 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1602
  %call4 = call i32 @fclose(%struct._IO_FILE* %2), !dbg !1602
  %cmp5 = icmp ne i32 %call4, 0, !dbg !1602
  %frombool6 = zext i1 %cmp5 to i8, !dbg !1602
  store i8 %frombool6, i8* %fclose_fail, align 1, !dbg !1602
  %3 = load i8* %prev_fail, align 1, !dbg !1603
  %tobool = trunc i8 %3 to i1, !dbg !1603
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !1603

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8* %fclose_fail, align 1, !dbg !1603
  %tobool7 = trunc i8 %4 to i1, !dbg !1603
  br i1 %tobool7, label %land.lhs.true, label %if.end15, !dbg !1603

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i8* %some_pending, align 1, !dbg !1603
  %tobool8 = trunc i8 %5 to i1, !dbg !1603
  br i1 %tobool8, label %if.then, label %lor.lhs.false9, !dbg !1603

lor.lhs.false9:                                   ; preds = %land.lhs.true
  %call10 = call i32* @__errno_location() #1, !dbg !1603
  %6 = load i32* %call10, align 4, !dbg !1603
  %cmp11 = icmp ne i32 %6, 9, !dbg !1603
  br i1 %cmp11, label %if.then, label %if.end15, !dbg !1603

if.then:                                          ; preds = %lor.lhs.false9, %land.lhs.true, %entry
  %7 = load i8* %fclose_fail, align 1, !dbg !1605
  %tobool12 = trunc i8 %7 to i1, !dbg !1605
  br i1 %tobool12, label %if.end, label %if.then13, !dbg !1605

if.then13:                                        ; preds = %if.then
  %call14 = call i32* @__errno_location() #1, !dbg !1608
  store i32 0, i32* %call14, align 4, !dbg !1608
  br label %if.end, !dbg !1608

if.end:                                           ; preds = %if.then13, %if.then
  store i32 -1, i32* %retval, !dbg !1609
  br label %return, !dbg !1609

if.end15:                                         ; preds = %lor.lhs.false9, %lor.lhs.false
  store i32 0, i32* %retval, !dbg !1610
  br label %return, !dbg !1610

return:                                           ; preds = %if.end15, %if.end
  %8 = load i32* %retval, !dbg !1611
  ret i32 %8, !dbg !1611
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn }

!llvm.dbg.cu = !{!0, !101, !178, !186, !194, !202, !212, !218, !237, !327, !368, !379}
!llvm.module.flags = !{!426, !427}
!llvm.ident = !{!428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !72, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c] [DW_LANG_C99]
!1 = metadata !{metadata !"seq.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !27, metadata !33, metadata !34, metadata !38, metadata !44, metadata !50, metadata !61, metadata !64, metadata !67}
!20 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"klee_change", metadata !"klee_change", metadata !"", i32 18, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64)* @klee_change, null, null, metadata !18, i32 18} ; [ DW_TAG_subprogram ] [line 18] [def] [klee_change]
!21 = metadata !{metadata !"/home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src"}
!22 = metadata !{i32 786473, metadata !21}        ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!23 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{metadata !25, metadata !25, metadata !25}
!25 = metadata !{i32 786454, metadata !21, null, metadata !"uintptr_t", i32 122, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [uintptr_t] [line 122, size 0, align 0, offset 0] [from long unsigned int]
!26 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!27 = metadata !{i32 786478, metadata !28, metadata !29, metadata !"klee_get_true", metadata !"klee_get_true", metadata !"", i32 4, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @klee_get_true, null, null, metadata !18, i32 4} ; [ DW_TAG_subprogram ] [line 4] [def] [klee_get_true]
!28 = metadata !{metadata !"/home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_functions.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src"}
!29 = metadata !{i32 786473, metadata !28}        ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_functions.h]
!30 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!33 = metadata !{i32 786478, metadata !28, metadata !29, metadata !"klee_get_false", metadata !"klee_get_false", metadata !"", i32 5, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @klee_get_false, null, null, metadata !18, i32 5} ; [ DW_TAG_subprogram ] [line 5] [def] [klee_get_false]
!34 = metadata !{i32 786478, metadata !1, metadata !35, metadata !"usage", metadata !"usage", metadata !"", i32 70, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @usage, null, null, metadata !18, i32 71} ; [ DW_TAG_subprogram ] [line 70] [def] [scope 71] [usage]
!35 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!36 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{null, metadata !32}
!38 = metadata !{i32 786478, metadata !1, metadata !35, metadata !"main", metadata !"main", metadata !"", i32 323, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !18, i32 324} ; [ DW_TAG_subprogram ] [line 323] [def] [scope 324] [main]
!39 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{metadata !32, metadata !32, metadata !41}
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!43 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!44 = metadata !{i32 786478, metadata !1, metadata !35, metadata !"print_numbers", metadata !"print_numbers", metadata !"", i32 226, metadata !45, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, x86_fp80, x86_fp80, x86_fp80)* @print_numbers, null, null, metadata !18, i32 228} ; [ DW_TAG_subprogram ] [line 226] [local] [def] [scope 228] [print_numbers]
!45 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!46 = metadata !{null, metadata !47, metadata !49, metadata !49, metadata !49}
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!48 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!49 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 128, i64 128, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 128, align 128, offset 0, enc DW_ATE_float]
!50 = metadata !{i32 786478, metadata !1, metadata !35, metadata !"get_default_format", metadata !"get_default_format", metadata !"", i32 285, metadata !51, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.operand*, %struct.operand*, %struct.operand*)* @get_default_format, null, null, metadata !18, i32 286} ; [ DW_TAG_subprogram ] [line 285] [local] [def] [scope 286] [get_default_format]
!51 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{metadata !47, metadata !53, metadata !53, metadata !53}
!53 = metadata !{i32 786454, metadata !1, null, metadata !"operand", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [operand] [line 125, size 0, align 0, offset 0] [from operand]
!54 = metadata !{i32 786451, metadata !1, null, metadata !"operand", i32 110, i64 256, i64 128, i32 0, i32 0, null, metadata !55, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [operand] [line 110, size 256, align 128, offset 0] [def] [from ]
!55 = metadata !{metadata !56, metadata !57, metadata !60}
!56 = metadata !{i32 786445, metadata !1, metadata !54, metadata !"value", i32 113, i64 128, i64 128, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [value] [line 113, size 128, align 128, offset 0] [from long double]
!57 = metadata !{i32 786445, metadata !1, metadata !54, metadata !"width", i32 119, i64 64, i64 64, i64 128, i32 0, metadata !58} ; [ DW_TAG_member ] [width] [line 119, size 64, align 64, offset 128] [from size_t]
!58 = metadata !{i32 786454, metadata !59, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!59 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src"}
!60 = metadata !{i32 786445, metadata !1, metadata !54, metadata !"precision", i32 123, i64 32, i64 32, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [precision] [line 123, size 32, align 32, offset 192] [from int]
!61 = metadata !{i32 786478, metadata !1, metadata !35, metadata !"scan_arg", metadata !"scan_arg", metadata !"", i32 131, metadata !62, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.operand*, i8*)* @scan_arg, null, null, metadata !18, i32 132} ; [ DW_TAG_subprogram ] [line 131] [local] [def] [scope 132] [scan_arg]
!62 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!63 = metadata !{metadata !53, metadata !47}
!64 = metadata !{i32 786478, metadata !1, metadata !35, metadata !"long_double_format", metadata !"long_double_format", metadata !"", i32 183, metadata !65, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @long_double_format, null, null, metadata !18, i32 184} ; [ DW_TAG_subprogram ] [line 183] [local] [def] [scope 184] [long_double_format]
!65 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !47, metadata !47}
!67 = metadata !{i32 786478, metadata !68, metadata !69, metadata !"emit_bug_reporting_address", metadata !"emit_bug_reporting_address", metadata !"", i32 588, metadata !70, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @emit_bug_reporting_address, null, null, metadata !18, i32 589} ; [ DW_TAG_subprogram ] [line 588] [local] [def] [scope 589] [emit_bug_reporting_address]
!68 = metadata !{metadata !"./system.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src"}
!69 = metadata !{i32 786473, metadata !68}        ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/./system.h]
!70 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!71 = metadata !{null}
!72 = metadata !{metadata !73, metadata !74, metadata !75, metadata !76, metadata !78, metadata !79, metadata !80, metadata !84, metadata !88}
!73 = metadata !{i32 786484, i32 0, null, metadata !"after_divergence", metadata !"after_divergence", metadata !"", metadata !22, i32 14, metadata !32, i32 0, i32 1, i32* @after_divergence, null} ; [ DW_TAG_variable ] [after_divergence] [line 14] [def]
!74 = metadata !{i32 786484, i32 0, null, metadata !"klee_div_file_env", metadata !"klee_div_file_env", metadata !"", metadata !22, i32 15, metadata !47, i32 0, i32 1, i8** @klee_div_file_env, null} ; [ DW_TAG_variable ] [klee_div_file_env] [line 15] [def]
!75 = metadata !{i32 786484, i32 0, null, metadata !"klee_div_marker_file_env", metadata !"klee_div_marker_file_env", metadata !"", metadata !22, i32 16, metadata !47, i32 0, i32 1, i8** @klee_div_marker_file_env, null} ; [ DW_TAG_variable ] [klee_div_marker_file_env] [line 16] [def]
!76 = metadata !{i32 786484, i32 0, null, metadata !"equal_width", metadata !"equal_width", metadata !"", metadata !35, i32 46, metadata !77, i32 1, i32 1, i8* @equal_width, null} ; [ DW_TAG_variable ] [equal_width] [line 46] [local] [def]
!77 = metadata !{i32 786468, null, null, metadata !"_Bool", i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ] [_Bool] [line 0, size 8, align 8, offset 0, enc DW_ATE_boolean]
!78 = metadata !{i32 786484, i32 0, null, metadata !"program_name", metadata !"program_name", metadata !"", metadata !35, i32 49, metadata !42, i32 0, i32 1, i8** @program_name, null} ; [ DW_TAG_variable ] [program_name] [line 49] [def]
!79 = metadata !{i32 786484, i32 0, null, metadata !"separator", metadata !"separator", metadata !"", metadata !35, i32 52, metadata !47, i32 1, i32 1, i8** @separator, null} ; [ DW_TAG_variable ] [separator] [line 52] [local] [def]
!80 = metadata !{i32 786484, i32 0, null, metadata !"terminator", metadata !"terminator", metadata !"", metadata !35, i32 57, metadata !81, i32 1, i32 1, [2 x i8]* @terminator, null} ; [ DW_TAG_variable ] [terminator] [line 57] [local] [def]
!81 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16, i64 8, i32 0, i32 0, metadata !48, metadata !82, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 16, align 8, offset 0] [from ]
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!84 = metadata !{i32 786484, i32 0, metadata !50, metadata !"format_buf", metadata !"format_buf", metadata !"", metadata !35, i32 287, metadata !85, i32 1, i32 1, [28 x i8]* @get_default_format.format_buf, null} ; [ DW_TAG_variable ] [format_buf] [line 287] [local] [def]
!85 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 224, i64 8, i32 0, i32 0, metadata !43, metadata !86, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 224, align 8, offset 0] [from char]
!86 = metadata !{metadata !87}
!87 = metadata !{i32 786465, i64 0, i64 28}       ; [ DW_TAG_subrange_type ] [0, 27]
!88 = metadata !{i32 786484, i32 0, null, metadata !"long_options", metadata !"long_options", metadata !"", metadata !35, i32 59, metadata !89, i32 1, i32 1, <{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }>* @long_options, null} ; [ DW_TAG_variable ] [long_options] [line 59] [local] [def]
!89 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !90, metadata !99, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from ]
!90 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from option]
!91 = metadata !{i32 786451, metadata !92, null, metadata !"option", i32 104, i64 256, i64 64, i32 0, i32 0, null, metadata !93, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [option] [line 104, size 256, align 64, offset 0] [def] [from ]
!92 = metadata !{metadata !"/usr/include/getopt.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src"}
!93 = metadata !{metadata !94, metadata !95, metadata !96, metadata !98}
!94 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"name", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [name] [line 106, size 64, align 64, offset 0] [from ]
!95 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"has_arg", i32 109, i64 32, i64 32, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [has_arg] [line 109, size 32, align 32, offset 64] [from int]
!96 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"flag", i32 110, i64 64, i64 64, i64 128, i32 0, metadata !97} ; [ DW_TAG_member ] [flag] [line 110, size 64, align 64, offset 128] [from ]
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!98 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"val", i32 111, i64 32, i64 32, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [val] [line 111, size 32, align 32, offset 192] [from int]
!99 = metadata !{metadata !100}
!100 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!101 = metadata !{i32 786449, metadata !102, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !103, metadata !18, metadata !107, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/version-etc.c] [DW_LANG_C99]
!102 = metadata !{metadata !"version-etc.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 786436, metadata !102, null, metadata !"", i32 36, i64 32, i64 32, i32 0, i32 0, null, metadata !105, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 36, size 32, align 32, offset 0] [def] [from ]
!105 = metadata !{metadata !106}
!106 = metadata !{i32 786472, metadata !"COPYRIGHT_YEAR", i64 2007} ; [ DW_TAG_enumerator ] [COPYRIGHT_YEAR :: 2007]
!107 = metadata !{metadata !108, metadata !175}
!108 = metadata !{i32 786478, metadata !102, metadata !109, metadata !"version_etc_va", metadata !"version_etc_va", metadata !"", i32 41, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag*)* @version_etc_va, null, null, metadata !18, i32 44} ; [ DW_TAG_subprogram ] [line 41] [def] [scope 44] [version_etc_va]
!109 = metadata !{i32 786473, metadata !102}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/version-etc.c]
!110 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!111 = metadata !{null, metadata !112, metadata !47, metadata !47, metadata !47, metadata !166}
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!113 = metadata !{i32 786454, metadata !102, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!114 = metadata !{i32 786451, metadata !115, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !116, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [def] [from ]
!115 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!116 = metadata !{metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !137, metadata !138, metadata !139, metadata !140, metadata !143, metadata !145, metadata !147, metadata !151, metadata !153, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !161, metadata !162}
!117 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!118 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!119 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!120 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!121 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!122 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!123 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!124 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!125 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!126 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!127 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!128 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!129 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !130} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!130 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !131} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!131 = metadata !{i32 786451, metadata !115, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !132, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [def] [from ]
!132 = metadata !{metadata !133, metadata !134, metadata !136}
!133 = metadata !{i32 786445, metadata !115, metadata !131, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !130} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!134 = metadata !{i32 786445, metadata !115, metadata !131, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !135} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!135 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!136 = metadata !{i32 786445, metadata !115, metadata !131, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!137 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !135} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!138 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !32} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!139 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !32} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!140 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !141} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!141 = metadata !{i32 786454, metadata !115, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!142 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!143 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !144} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!144 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!145 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !146} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!146 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!147 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !148} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!148 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !43, metadata !149, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!149 = metadata !{metadata !150}
!150 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!151 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !152} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!153 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !154} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!154 = metadata !{i32 786454, metadata !115, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!155 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !152} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!156 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !152} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!157 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !152} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!158 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !152} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!159 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !160} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!160 = metadata !{i32 786454, metadata !115, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!161 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !32} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!162 = metadata !{i32 786445, metadata !115, metadata !114, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !163} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!163 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !43, metadata !164, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!164 = metadata !{metadata !165}
!165 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!166 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !167} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __va_list_tag]
!167 = metadata !{i32 786454, metadata !102, null, metadata !"__va_list_tag", i32 44, i64 0, i64 0, i64 0, i32 0, metadata !168} ; [ DW_TAG_typedef ] [__va_list_tag] [line 44, size 0, align 0, offset 0] [from __va_list_tag]
!168 = metadata !{i32 786451, metadata !102, null, metadata !"__va_list_tag", i32 44, i64 192, i64 64, i32 0, i32 0, null, metadata !169, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 44, size 192, align 64, offset 0] [def] [from ]
!169 = metadata !{metadata !170, metadata !172, metadata !173, metadata !174}
!170 = metadata !{i32 786445, metadata !102, metadata !168, metadata !"gp_offset", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [gp_offset] [line 44, size 32, align 32, offset 0] [from unsigned int]
!171 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!172 = metadata !{i32 786445, metadata !102, metadata !168, metadata !"fp_offset", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !171} ; [ DW_TAG_member ] [fp_offset] [line 44, size 32, align 32, offset 32] [from unsigned int]
!173 = metadata !{i32 786445, metadata !102, metadata !168, metadata !"overflow_arg_area", i32 44, i64 64, i64 64, i64 64, i32 0, metadata !152} ; [ DW_TAG_member ] [overflow_arg_area] [line 44, size 64, align 64, offset 64] [from ]
!174 = metadata !{i32 786445, metadata !102, metadata !168, metadata !"reg_save_area", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !152} ; [ DW_TAG_member ] [reg_save_area] [line 44, size 64, align 64, offset 128] [from ]
!175 = metadata !{i32 786478, metadata !102, metadata !109, metadata !"version_etc", metadata !"version_etc", metadata !"", i32 165, metadata !176, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct._IO_FILE*, i8*, i8*, i8*, ...)* @version_etc, null, null, metadata !18, i32 168} ; [ DW_TAG_subprogram ] [line 165] [def] [scope 168] [version_etc]
!176 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!177 = metadata !{null, metadata !112, metadata !47, metadata !47, metadata !47}
!178 = metadata !{i32 786449, metadata !179, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !18, metadata !18, metadata !18, metadata !180, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/version-etc-fsf.c] [DW_LANG_C99]
!179 = metadata !{metadata !"version-etc-fsf.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!180 = metadata !{metadata !181}
!181 = metadata !{i32 786484, i32 0, null, metadata !"version_etc_copyright", metadata !"version_etc_copyright", metadata !"", metadata !182, i32 27, metadata !183, i32 0, i32 1, [47 x i8]* @version_etc_copyright, null} ; [ DW_TAG_variable ] [version_etc_copyright] [line 27] [def]
!182 = metadata !{i32 786473, metadata !179}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/version-etc-fsf.c]
!183 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 376, i64 8, i32 0, i32 0, metadata !48, metadata !184, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 376, align 8, offset 0] [from ]
!184 = metadata !{metadata !185}
!185 = metadata !{i32 786465, i64 0, i64 47}      ; [ DW_TAG_subrange_type ] [0, 46]
!186 = metadata !{i32 786449, metadata !187, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !18, metadata !18, metadata !188, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/xalloc-die.c] [DW_LANG_C99]
!187 = metadata !{metadata !"xalloc-die.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!188 = metadata !{metadata !189, metadata !191}
!189 = metadata !{i32 786478, metadata !187, metadata !190, metadata !"xalloc_die", metadata !"xalloc_die", metadata !"", i32 47, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @xalloc_die, null, null, metadata !18, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [xalloc_die]
!190 = metadata !{i32 786473, metadata !187}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/xalloc-die.c]
!191 = metadata !{i32 786478, metadata !187, metadata !190, metadata !"klee_compatible_error", metadata !"klee_compatible_error", metadata !"", i32 34, metadata !192, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i8*, ...)* @klee_compatible_error, null, null, metadata !18, i32 34} ; [ DW_TAG_subprogram ] [line 34] [local] [def] [klee_compatible_error]
!192 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !193, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!193 = metadata !{null, metadata !32, metadata !32, metadata !47}
!194 = metadata !{i32 786449, metadata !195, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !18, metadata !18, metadata !196, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/c-strtold.c] [DW_LANG_C99]
!195 = metadata !{metadata !"c-strtold.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!196 = metadata !{metadata !197}
!197 = metadata !{i32 786478, metadata !198, metadata !199, metadata !"c_strtold", metadata !"c_strtold", metadata !"", i32 48, metadata !200, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, x86_fp80 (i8*, i8**)* @c_strtold, null, null, metadata !18, i32 49} ; [ DW_TAG_subprogram ] [line 48] [def] [scope 49] [c_strtold]
!198 = metadata !{metadata !"./c-strtod.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!199 = metadata !{i32 786473, metadata !198}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/./c-strtod.c]
!200 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !201, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!201 = metadata !{metadata !49, metadata !47, metadata !41}
!202 = metadata !{i32 786449, metadata !203, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !18, metadata !18, metadata !204, metadata !210, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/closeout.c] [DW_LANG_C99]
!203 = metadata !{metadata !"closeout.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!204 = metadata !{metadata !205, metadata !209}
!205 = metadata !{i32 786478, metadata !203, metadata !206, metadata !"close_stdout_set_file_name", metadata !"close_stdout_set_file_name", metadata !"", i32 41, metadata !207, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @close_stdout_set_file_name, null, null, metadata !18, i32 42} ; [ DW_TAG_subprogram ] [line 41] [def] [scope 42] [close_stdout_set_file_name]
!206 = metadata !{i32 786473, metadata !203}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/closeout.c]
!207 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !208, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!208 = metadata !{null, metadata !47}
!209 = metadata !{i32 786478, metadata !203, metadata !206, metadata !"close_stdout", metadata !"close_stdout", metadata !"", i32 70, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @close_stdout, null, null, metadata !18, i32 71} ; [ DW_TAG_subprogram ] [line 70] [def] [scope 71] [close_stdout]
!210 = metadata !{metadata !211}
!211 = metadata !{i32 786484, i32 0, null, metadata !"file_name", metadata !"file_name", metadata !"", metadata !206, i32 36, metadata !47, i32 1, i32 1, i8** @file_name, null} ; [ DW_TAG_variable ] [file_name] [line 36] [local] [def]
!212 = metadata !{i32 786449, metadata !213, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !18, metadata !18, metadata !18, metadata !214, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/exitfail.c] [DW_LANG_C99]
!213 = metadata !{metadata !"exitfail.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!214 = metadata !{metadata !215}
!215 = metadata !{i32 786484, i32 0, null, metadata !"exit_failure", metadata !"exit_failure", metadata !"", metadata !216, i32 26, metadata !217, i32 0, i32 1, i32* @exit_failure, null} ; [ DW_TAG_variable ] [exit_failure] [line 26] [def]
!216 = metadata !{i32 786473, metadata !213}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/exitfail.c]
!217 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from int]
!218 = metadata !{i32 786449, metadata !219, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !220, metadata !18, metadata !231, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quote.c] [DW_LANG_C99]
!219 = metadata !{metadata !"quote.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!220 = metadata !{metadata !221}
!221 = metadata !{i32 786436, metadata !222, null, metadata !"quoting_style", i32 28, i64 32, i64 32, i32 0, i32 0, null, metadata !223, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [quoting_style] [line 28, size 32, align 32, offset 0] [def] [from ]
!222 = metadata !{metadata !"./quotearg.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!223 = metadata !{metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230}
!224 = metadata !{i32 786472, metadata !"literal_quoting_style", i64 0} ; [ DW_TAG_enumerator ] [literal_quoting_style :: 0]
!225 = metadata !{i32 786472, metadata !"shell_quoting_style", i64 1} ; [ DW_TAG_enumerator ] [shell_quoting_style :: 1]
!226 = metadata !{i32 786472, metadata !"shell_always_quoting_style", i64 2} ; [ DW_TAG_enumerator ] [shell_always_quoting_style :: 2]
!227 = metadata !{i32 786472, metadata !"c_quoting_style", i64 3} ; [ DW_TAG_enumerator ] [c_quoting_style :: 3]
!228 = metadata !{i32 786472, metadata !"escape_quoting_style", i64 4} ; [ DW_TAG_enumerator ] [escape_quoting_style :: 4]
!229 = metadata !{i32 786472, metadata !"locale_quoting_style", i64 5} ; [ DW_TAG_enumerator ] [locale_quoting_style :: 5]
!230 = metadata !{i32 786472, metadata !"clocale_quoting_style", i64 6} ; [ DW_TAG_enumerator ] [clocale_quoting_style :: 6]
!231 = metadata !{metadata !232, metadata !236}
!232 = metadata !{i32 786478, metadata !219, metadata !233, metadata !"quote_n", metadata !"quote_n", metadata !"", i32 30, metadata !234, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*)* @quote_n, null, null, metadata !18, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [quote_n]
!233 = metadata !{i32 786473, metadata !219}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quote.c]
!234 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!235 = metadata !{metadata !47, metadata !32, metadata !47}
!236 = metadata !{i32 786478, metadata !219, metadata !233, metadata !"quote", metadata !"quote", metadata !"", i32 38, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @quote, null, null, metadata !18, i32 39} ; [ DW_TAG_subprogram ] [line 38] [def] [scope 39] [quote]
!237 = metadata !{i32 786449, metadata !238, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !239, metadata !18, metadata !242, metadata !305, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c] [DW_LANG_C99]
!238 = metadata !{metadata !"quotearg.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!239 = metadata !{metadata !221, metadata !240}
!240 = metadata !{i32 786436, metadata !241, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [def] [from ]
!241 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!242 = metadata !{metadata !243, metadata !255, metadata !258, metadata !261, metadata !264, metadata !270, metadata !273, metadata !274, metadata !277, metadata !280, metadata !283, metadata !286, metadata !289, metadata !292, metadata !293, metadata !296, metadata !299, metadata !302}
!243 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"clone_quoting_options", metadata !"clone_quoting_options", metadata !"", i32 106, metadata !245, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.quoting_options* (%struct.quoting_options*)* @clone_quoting_options, null, null, metadata !18, i32 107} ; [ DW_TAG_subprogram ] [line 106] [def] [scope 107] [clone_quoting_options]
!244 = metadata !{i32 786473, metadata !238}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!245 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !246, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!246 = metadata !{metadata !247, metadata !247}
!247 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !248} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from quoting_options]
!248 = metadata !{i32 786451, metadata !238, null, metadata !"quoting_options", i32 64, i64 288, i64 32, i32 0, i32 0, null, metadata !249, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [quoting_options] [line 64, size 288, align 32, offset 0] [def] [from ]
!249 = metadata !{metadata !250, metadata !251}
!250 = metadata !{i32 786445, metadata !238, metadata !248, metadata !"style", i32 67, i64 32, i64 32, i64 0, i32 0, metadata !221} ; [ DW_TAG_member ] [style] [line 67, size 32, align 32, offset 0] [from quoting_style]
!251 = metadata !{i32 786445, metadata !238, metadata !248, metadata !"quote_these_too", i32 71, i64 256, i64 32, i64 32, i32 0, metadata !252} ; [ DW_TAG_member ] [quote_these_too] [line 71, size 256, align 32, offset 32] [from ]
!252 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !171, metadata !253, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!253 = metadata !{metadata !254}
!254 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!255 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"get_quoting_style", metadata !"get_quoting_style", metadata !"", i32 117, metadata !256, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.quoting_options*)* @get_quoting_style, null, null, metadata !18, i32 118} ; [ DW_TAG_subprogram ] [line 117] [def] [scope 118] [get_quoting_style]
!256 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !257, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!257 = metadata !{metadata !221, metadata !247}
!258 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"set_quoting_style", metadata !"set_quoting_style", metadata !"", i32 125, metadata !259, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.quoting_options*, i32)* @set_quoting_style, null, null, metadata !18, i32 126} ; [ DW_TAG_subprogram ] [line 125] [def] [scope 126] [set_quoting_style]
!259 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !260, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!260 = metadata !{null, metadata !247, metadata !221}
!261 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"set_char_quoting", metadata !"set_char_quoting", metadata !"", i32 136, metadata !262, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.quoting_options*, i8, i32)* @set_char_quoting, null, null, metadata !18, i32 137} ; [ DW_TAG_subprogram ] [line 136] [def] [scope 137] [set_char_quoting]
!262 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !263, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!263 = metadata !{metadata !32, metadata !247, metadata !43, metadata !32}
!264 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"quotearg_buffer", metadata !"quotearg_buffer", metadata !"", i32 521, metadata !265, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64, i8*, i64, %struct.quoting_options*)* @quotearg_buffer, null, null, metadata !18, i32 524} ; [ DW_TAG_subprogram ] [line 521] [def] [scope 524] [quotearg_buffer]
!265 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !266, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!266 = metadata !{metadata !267, metadata !42, metadata !267, metadata !47, metadata !267, metadata !268}
!267 = metadata !{i32 786454, metadata !238, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!268 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !269} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!269 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !248} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from quoting_options]
!270 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"quotearg_alloc", metadata !"quotearg_alloc", metadata !"", i32 536, metadata !271, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64, %struct.quoting_options*)* @quotearg_alloc, null, null, metadata !18, i32 538} ; [ DW_TAG_subprogram ] [line 536] [def] [scope 538] [quotearg_alloc]
!271 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !272, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!272 = metadata !{metadata !42, metadata !47, metadata !267, metadata !268}
!273 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"quotearg_free", metadata !"quotearg_free", metadata !"", i32 562, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @quotearg_free, null, null, metadata !18, i32 563} ; [ DW_TAG_subprogram ] [line 562] [def] [scope 563] [quotearg_free]
!274 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"quotearg_n", metadata !"quotearg_n", metadata !"", i32 642, metadata !275, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*)* @quotearg_n, null, null, metadata !18, i32 643} ; [ DW_TAG_subprogram ] [line 642] [def] [scope 643] [quotearg_n]
!275 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!276 = metadata !{metadata !42, metadata !32, metadata !47}
!277 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"quotearg", metadata !"quotearg", metadata !"", i32 648, metadata !278, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @quotearg, null, null, metadata !18, i32 649} ; [ DW_TAG_subprogram ] [line 648] [def] [scope 649] [quotearg]
!278 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !279, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!279 = metadata !{metadata !42, metadata !47}
!280 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"quotearg_n_style", metadata !"quotearg_n_style", metadata !"", i32 664, metadata !281, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i32, i8*)* @quotearg_n_style, null, null, metadata !18, i32 665} ; [ DW_TAG_subprogram ] [line 664] [def] [scope 665] [quotearg_n_style]
!281 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !282, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!282 = metadata !{metadata !42, metadata !32, metadata !221, metadata !47}
!283 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"quotearg_n_style_mem", metadata !"quotearg_n_style_mem", metadata !"", i32 671, metadata !284, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i32, i8*, i64)* @quotearg_n_style_mem, null, null, metadata !18, i32 673} ; [ DW_TAG_subprogram ] [line 671] [def] [scope 673] [quotearg_n_style_mem]
!284 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !285, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!285 = metadata !{metadata !42, metadata !32, metadata !221, metadata !47, metadata !267}
!286 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"quotearg_style", metadata !"quotearg_style", metadata !"", i32 679, metadata !287, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*)* @quotearg_style, null, null, metadata !18, i32 680} ; [ DW_TAG_subprogram ] [line 679] [def] [scope 680] [quotearg_style]
!287 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !288, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!288 = metadata !{metadata !42, metadata !221, metadata !47}
!289 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"quotearg_char", metadata !"quotearg_char", metadata !"", i32 685, metadata !290, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8)* @quotearg_char, null, null, metadata !18, i32 686} ; [ DW_TAG_subprogram ] [line 685] [def] [scope 686] [quotearg_char]
!290 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !291, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!291 = metadata !{metadata !42, metadata !47, metadata !43}
!292 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"quotearg_colon", metadata !"quotearg_colon", metadata !"", i32 694, metadata !278, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @quotearg_colon, null, null, metadata !18, i32 695} ; [ DW_TAG_subprogram ] [line 694] [def] [scope 695] [quotearg_colon]
!293 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"quoting_options_from_style", metadata !"quoting_options_from_style", metadata !"", i32 655, metadata !294, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.quoting_options*, i32)* @quoting_options_from_style, null, null, metadata !18, i32 656} ; [ DW_TAG_subprogram ] [line 655] [local] [def] [scope 656] [quoting_options_from_style]
!294 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!295 = metadata !{metadata !248, metadata !221}
!296 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"quotearg_n_options", metadata !"quotearg_n_options", metadata !"", i32 591, metadata !297, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*, i64, %struct.quoting_options*)* @quotearg_n_options, null, null, metadata !18, i32 593} ; [ DW_TAG_subprogram ] [line 591] [local] [def] [scope 593] [quotearg_n_options]
!297 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !298, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!298 = metadata !{metadata !42, metadata !32, metadata !47, metadata !267, metadata !268}
!299 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"quotearg_buffer_restyled", metadata !"quotearg_buffer_restyled", metadata !"", i32 172, metadata !300, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64, i8*, i64, i32, %struct.quoting_options*)* @quotearg_buffer_restyled, null, null, metadata !18, i32 176} ; [ DW_TAG_subprogram ] [line 172] [local] [def] [scope 176] [quotearg_buffer_restyled]
!300 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!301 = metadata !{metadata !267, metadata !42, metadata !267, metadata !47, metadata !267, metadata !221, metadata !268}
!302 = metadata !{i32 786478, metadata !238, metadata !244, metadata !"gettext_quote", metadata !"gettext_quote", metadata !"", i32 150, metadata !303, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32)* @gettext_quote, null, null, metadata !18, i32 151} ; [ DW_TAG_subprogram ] [line 150] [local] [def] [scope 151] [gettext_quote]
!303 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !304, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!304 = metadata !{metadata !47, metadata !47, metadata !221}
!305 = metadata !{metadata !306, metadata !309, metadata !314, metadata !315, metadata !319, metadata !324, metadata !325}
!306 = metadata !{i32 786484, i32 0, null, metadata !"quoting_style_args", metadata !"quoting_style_args", metadata !"", metadata !244, i32 75, metadata !307, i32 0, i32 1, [8 x i8*]* @quoting_style_args, null} ; [ DW_TAG_variable ] [quoting_style_args] [line 75] [def]
!307 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !308, metadata !253, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!308 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!309 = metadata !{i32 786484, i32 0, null, metadata !"quoting_style_vals", metadata !"quoting_style_vals", metadata !"", metadata !244, i32 88, metadata !310, i32 0, i32 1, [7 x i32]* @quoting_style_vals, null} ; [ DW_TAG_variable ] [quoting_style_vals] [line 88] [def]
!310 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 224, i64 32, i32 0, i32 0, metadata !311, metadata !312, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 224, align 32, offset 0] [from ]
!311 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !221} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from quoting_style]
!312 = metadata !{metadata !313}
!313 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!314 = metadata !{i32 786484, i32 0, null, metadata !"default_quoting_options", metadata !"default_quoting_options", metadata !"", metadata !244, i32 100, metadata !248, i32 1, i32 1, %struct.quoting_options* @default_quoting_options, null} ; [ DW_TAG_variable ] [default_quoting_options] [line 100] [local] [def]
!315 = metadata !{i32 786484, i32 0, null, metadata !"slot0", metadata !"slot0", metadata !"", metadata !244, i32 556, metadata !316, i32 1, i32 1, [256 x i8]* @slot0, null} ; [ DW_TAG_variable ] [slot0] [line 556] [local] [def]
!316 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !43, metadata !317, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!317 = metadata !{metadata !318}
!318 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!319 = metadata !{i32 786484, i32 0, null, metadata !"slotvec0", metadata !"slotvec0", metadata !"", metadata !244, i32 558, metadata !320, i32 1, i32 1, %struct.slotvec* @slotvec0, null} ; [ DW_TAG_variable ] [slotvec0] [line 558] [local] [def]
!320 = metadata !{i32 786451, metadata !238, null, metadata !"slotvec", i32 548, i64 128, i64 64, i32 0, i32 0, null, metadata !321, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [slotvec] [line 548, size 128, align 64, offset 0] [def] [from ]
!321 = metadata !{metadata !322, metadata !323}
!322 = metadata !{i32 786445, metadata !238, metadata !320, metadata !"size", i32 550, i64 64, i64 64, i64 0, i32 0, metadata !267} ; [ DW_TAG_member ] [size] [line 550, size 64, align 64, offset 0] [from size_t]
!323 = metadata !{i32 786445, metadata !238, metadata !320, metadata !"val", i32 551, i64 64, i64 64, i64 64, i32 0, metadata !42} ; [ DW_TAG_member ] [val] [line 551, size 64, align 64, offset 64] [from ]
!324 = metadata !{i32 786484, i32 0, null, metadata !"nslots", metadata !"nslots", metadata !"", metadata !244, i32 557, metadata !171, i32 1, i32 1, i32* @nslots, null} ; [ DW_TAG_variable ] [nslots] [line 557] [local] [def]
!325 = metadata !{i32 786484, i32 0, null, metadata !"slotvec", metadata !"slotvec", metadata !"", metadata !244, i32 559, metadata !326, i32 1, i32 1, %struct.slotvec** @slotvec, null} ; [ DW_TAG_variable ] [slotvec] [line 559] [local] [def]
!326 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !320} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from slotvec]
!327 = metadata !{i32 786449, metadata !328, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !329, metadata !18, metadata !340, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/xmalloc.c] [DW_LANG_C99]
!328 = metadata !{metadata !"xmalloc.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!329 = metadata !{metadata !330}
!330 = metadata !{i32 786436, metadata !331, metadata !332, metadata !"", i32 199, i64 32, i64 32, i32 0, i32 0, null, metadata !338, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 199, size 32, align 32, offset 0] [def] [from ]
!331 = metadata !{metadata !"./xalloc.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!332 = metadata !{i32 786478, metadata !331, metadata !333, metadata !"x2nrealloc", metadata !"x2nrealloc", metadata !"", i32 187, metadata !334, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64*, i64)* @x2nrealloc, null, null, metadata !18, i32 188} ; [ DW_TAG_subprogram ] [line 187] [def] [scope 188] [x2nrealloc]
!333 = metadata !{i32 786473, metadata !331}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/./xalloc.h]
!334 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !335, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!335 = metadata !{metadata !152, metadata !152, metadata !336, metadata !337}
!336 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !337} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from size_t]
!337 = metadata !{i32 786454, metadata !331, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!338 = metadata !{metadata !339}
!339 = metadata !{i32 786472, metadata !"DEFAULT_MXFAST", i64 64} ; [ DW_TAG_enumerator ] [DEFAULT_MXFAST :: 64]
!340 = metadata !{metadata !341, metadata !344, metadata !332, metadata !347, metadata !350, metadata !354, metadata !357, metadata !360, metadata !361, metadata !362, metadata !367}
!341 = metadata !{i32 786478, metadata !331, metadata !333, metadata !"xnmalloc", metadata !"xnmalloc", metadata !"", i32 113, metadata !342, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64, i64)* @xnmalloc, null, null, metadata !18, i32 114} ; [ DW_TAG_subprogram ] [line 113] [def] [scope 114] [xnmalloc]
!342 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !343, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!343 = metadata !{metadata !152, metadata !337, metadata !337}
!344 = metadata !{i32 786478, metadata !331, metadata !333, metadata !"xnrealloc", metadata !"xnrealloc", metadata !"", i32 124, metadata !345, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64, i64)* @xnrealloc, null, null, metadata !18, i32 125} ; [ DW_TAG_subprogram ] [line 124] [def] [scope 125] [xnrealloc]
!345 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !346, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!346 = metadata !{metadata !152, metadata !152, metadata !337, metadata !337}
!347 = metadata !{i32 786478, metadata !331, metadata !333, metadata !"xcharalloc", metadata !"xcharalloc", metadata !"", i32 224, metadata !348, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64)* @xcharalloc, null, null, metadata !18, i32 225} ; [ DW_TAG_subprogram ] [line 224] [def] [scope 225] [xcharalloc]
!348 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !349, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!349 = metadata !{metadata !42, metadata !337}
!350 = metadata !{i32 786478, metadata !328, metadata !351, metadata !"xmalloc", metadata !"xmalloc", metadata !"", i32 48, metadata !352, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64)* @xmalloc, null, null, metadata !18, i32 49} ; [ DW_TAG_subprogram ] [line 48] [def] [scope 49] [xmalloc]
!351 = metadata !{i32 786473, metadata !328}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/xmalloc.c]
!352 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !353, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!353 = metadata !{metadata !152, metadata !337}
!354 = metadata !{i32 786478, metadata !328, metadata !351, metadata !"xrealloc", metadata !"xrealloc", metadata !"", i32 60, metadata !355, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64)* @xrealloc, null, null, metadata !18, i32 61} ; [ DW_TAG_subprogram ] [line 60] [def] [scope 61] [xrealloc]
!355 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !356, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!356 = metadata !{metadata !152, metadata !152, metadata !337}
!357 = metadata !{i32 786478, metadata !328, metadata !351, metadata !"x2realloc", metadata !"x2realloc", metadata !"", i32 75, metadata !358, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64*)* @x2realloc, null, null, metadata !18, i32 76} ; [ DW_TAG_subprogram ] [line 75] [def] [scope 76] [x2realloc]
!358 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !359, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!359 = metadata !{metadata !152, metadata !152, metadata !336}
!360 = metadata !{i32 786478, metadata !328, metadata !351, metadata !"xzalloc", metadata !"xzalloc", metadata !"", i32 85, metadata !352, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64)* @xzalloc, null, null, metadata !18, i32 86} ; [ DW_TAG_subprogram ] [line 85] [def] [scope 86] [xzalloc]
!361 = metadata !{i32 786478, metadata !328, metadata !351, metadata !"xcalloc", metadata !"xcalloc", metadata !"", i32 94, metadata !342, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64, i64)* @xcalloc, null, null, metadata !18, i32 95} ; [ DW_TAG_subprogram ] [line 94] [def] [scope 95] [xcalloc]
!362 = metadata !{i32 786478, metadata !328, metadata !351, metadata !"xmemdup", metadata !"xmemdup", metadata !"", i32 112, metadata !363, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64)* @xmemdup, null, null, metadata !18, i32 113} ; [ DW_TAG_subprogram ] [line 112] [def] [scope 113] [xmemdup]
!363 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !364, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!364 = metadata !{metadata !152, metadata !365, metadata !337}
!365 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !366} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!366 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!367 = metadata !{i32 786478, metadata !328, metadata !351, metadata !"xstrdup", metadata !"xstrdup", metadata !"", i32 120, metadata !278, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @xstrdup, null, null, metadata !18, i32 121} ; [ DW_TAG_subprogram ] [line 120] [def] [scope 121] [xstrdup]
!368 = metadata !{i32 786449, metadata !369, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !18, metadata !18, metadata !370, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/xstrtold.c] [DW_LANG_C99]
!369 = metadata !{metadata !"xstrtold.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!370 = metadata !{metadata !371}
!371 = metadata !{i32 786478, metadata !372, metadata !373, metadata !"xstrtold", metadata !"xstrtold", metadata !"", i32 46, metadata !374, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i8*, i8**, x86_fp80*, x86_fp80 (i8*, i8**)*)* @xstrtold, null, null, metadata !18, i32 48} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 48] [xstrtold]
!372 = metadata !{metadata !"./xstrtod.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!373 = metadata !{i32 786473, metadata !372}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/./xstrtod.c]
!374 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !375, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!375 = metadata !{metadata !77, metadata !47, metadata !376, metadata !377, metadata !378}
!376 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!377 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long double]
!378 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !200} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!379 = metadata !{i32 786449, metadata !380, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !18, metadata !18, metadata !381, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/close-stream.c] [DW_LANG_C99]
!380 = metadata !{metadata !"close-stream.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!381 = metadata !{metadata !382}
!382 = metadata !{i32 786478, metadata !380, metadata !383, metadata !"close_stream", metadata !"close_stream", metadata !"", i32 54, metadata !384, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct._IO_FILE*)* @close_stream, null, null, metadata !18, i32 55} ; [ DW_TAG_subprogram ] [line 54] [def] [scope 55] [close_stream]
!383 = metadata !{i32 786473, metadata !380}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/close-stream.c]
!384 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !385, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!385 = metadata !{metadata !32, metadata !386}
!386 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !387} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!387 = metadata !{i32 786454, metadata !380, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !388} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!388 = metadata !{i32 786451, metadata !115, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !389, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [def] [from ]
!389 = metadata !{metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425}
!390 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!391 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!392 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!393 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!394 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!395 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!396 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!397 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!398 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!399 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!400 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!401 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!402 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !403} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!403 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !404} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!404 = metadata !{i32 786451, metadata !115, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !405, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [def] [from ]
!405 = metadata !{metadata !406, metadata !407, metadata !409}
!406 = metadata !{i32 786445, metadata !115, metadata !404, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !403} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!407 = metadata !{i32 786445, metadata !115, metadata !404, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !408} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!408 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !388} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!409 = metadata !{i32 786445, metadata !115, metadata !404, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!410 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !408} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!411 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !32} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!412 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !32} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!413 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !141} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!414 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !144} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!415 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !146} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!416 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !148} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!417 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !152} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!418 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !154} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!419 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !152} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!420 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !152} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!421 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !152} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!422 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !152} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!423 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !160} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!424 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !32} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!425 = metadata !{i32 786445, metadata !115, metadata !388, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !163} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!426 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!427 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!428 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}
!429 = metadata !{i32 786689, metadata !20, metadata !"x", metadata !22, i32 16777234, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 18]
!430 = metadata !{i32 18, i32 0, metadata !20, null}
!431 = metadata !{i32 786689, metadata !20, metadata !"y", metadata !22, i32 33554450, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 18]
!432 = metadata !{i32 19, i32 0, metadata !433, null}
!433 = metadata !{i32 786443, metadata !21, metadata !20, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!434 = metadata !{i32 20, i32 0, metadata !433, null}
!435 = metadata !{i32 22, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !21, metadata !437, i32 22, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!437 = metadata !{i32 786443, metadata !21, metadata !433, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!438 = metadata !{i32 786688, metadata !439, metadata !"file", metadata !22, i32 25, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [file] [line 25]
!439 = metadata !{i32 786443, metadata !21, metadata !436, i32 22, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!440 = metadata !{i32 25, i32 0, metadata !439, null}
!441 = metadata !{i32 786688, metadata !439, metadata !"marker_file", metadata !22, i32 26, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [marker_file] [line 26]
!442 = metadata !{i32 26, i32 0, metadata !439, null}
!443 = metadata !{i32 28, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !21, metadata !439, i32 28, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!445 = metadata !{i32 786688, metadata !446, metadata !"f", metadata !22, i32 31, metadata !447, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 31]
!446 = metadata !{i32 786443, metadata !21, metadata !444, i32 28, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!447 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !448} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!448 = metadata !{i32 786454, metadata !21, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !449} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!449 = metadata !{i32 786451, metadata !59, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !450, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [def] [from ]
!450 = metadata !{metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !471, metadata !472, metadata !473, metadata !474, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488}
!451 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!452 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!453 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!454 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!455 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!456 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!457 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!458 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!459 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!460 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!461 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!462 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !42} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!463 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !464} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!464 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !465} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!465 = metadata !{i32 786451, metadata !59, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !466, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [def] [from ]
!466 = metadata !{metadata !467, metadata !468, metadata !470}
!467 = metadata !{i32 786445, metadata !59, metadata !465, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !464} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!468 = metadata !{i32 786445, metadata !59, metadata !465, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !469} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!469 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !449} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!470 = metadata !{i32 786445, metadata !59, metadata !465, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!471 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !469} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!472 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !32} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!473 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !32} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!474 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !475} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!475 = metadata !{i32 786454, metadata !59, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!476 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !144} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!477 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !146} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!478 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !148} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!479 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !152} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!480 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !481} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!481 = metadata !{i32 786454, metadata !59, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!482 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !152} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!483 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !152} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!484 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !152} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!485 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !152} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!486 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !58} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!487 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !32} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!488 = metadata !{i32 786445, metadata !59, metadata !449, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !163} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!489 = metadata !{i32 31, i32 0, metadata !446, null}
!490 = metadata !{i32 32, i32 0, metadata !491, null}
!491 = metadata !{i32 786443, metadata !21, metadata !446, i32 32, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!492 = metadata !{i32 33, i32 0, metadata !493, null}
!493 = metadata !{i32 786443, metadata !21, metadata !491, i32 32, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!494 = metadata !{i32 34, i32 0, metadata !493, null}
!495 = metadata !{i32 35, i32 0, metadata !493, null}
!496 = metadata !{i32 36, i32 0, metadata !493, null}
!497 = metadata !{i32 38, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !21, metadata !491, i32 37, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!499 = metadata !{i32 40, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !21, metadata !446, i32 40, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!501 = metadata !{i32 41, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !21, metadata !500, i32 40, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!503 = metadata !{i32 42, i32 0, metadata !504, null}
!504 = metadata !{i32 786443, metadata !21, metadata !502, i32 42, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!505 = metadata !{i32 43, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !21, metadata !504, i32 42, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!507 = metadata !{i32 44, i32 0, metadata !506, null}
!508 = metadata !{i32 45, i32 0, metadata !506, null}
!509 = metadata !{i32 47, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !21, metadata !504, i32 46, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!511 = metadata !{i32 49, i32 0, metadata !502, null}
!512 = metadata !{i32 51, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !21, metadata !500, i32 50, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!514 = metadata !{i32 54, i32 0, metadata !446, null}
!515 = metadata !{i32 56, i32 0, metadata !516, null}
!516 = metadata !{i32 786443, metadata !21, metadata !444, i32 55, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!517 = metadata !{i32 59, i32 0, metadata !439, null}
!518 = metadata !{i32 60, i32 0, metadata !439, null}
!519 = metadata !{i32 61, i32 0, metadata !437, null}
!520 = metadata !{i32 64, i32 0, metadata !20, null}
!521 = metadata !{i32 4, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !28, metadata !27} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_functions.h]
!523 = metadata !{i32 5, i32 0, metadata !33, null}
!524 = metadata !{i32 786689, metadata !34, metadata !"status", metadata !35, i32 16777286, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 70]
!525 = metadata !{i32 70, i32 0, metadata !34, null}
!526 = metadata !{i32 72, i32 0, metadata !527, null}
!527 = metadata !{i32 786443, metadata !1, metadata !528, i32 72, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!528 = metadata !{i32 786443, metadata !1, metadata !34} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!529 = metadata !{i32 73, i32 0, metadata !527, null}
!530 = metadata !{i32 77, i32 0, metadata !531, null}
!531 = metadata !{i32 786443, metadata !1, metadata !527, i32 76, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!532 = metadata !{i32 82, i32 0, metadata !531, null}
!533 = metadata !{i32 89, i32 0, metadata !531, null}
!534 = metadata !{i32 90, i32 0, metadata !531, null}
!535 = metadata !{i32 91, i32 0, metadata !531, null}
!536 = metadata !{i32 99, i32 0, metadata !531, null}
!537 = metadata !{i32 104, i32 0, metadata !531, null}
!538 = metadata !{i32 106, i32 0, metadata !528, null}
!539 = metadata !{i32 107, i32 0, metadata !528, null}
!540 = metadata !{i32 594, i32 0, metadata !541, null}
!541 = metadata !{i32 786443, metadata !68, metadata !67} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/./system.h]
!542 = metadata !{i32 595, i32 0, metadata !541, null}
!543 = metadata !{i32 786689, metadata !38, metadata !"argc", metadata !35, i32 16777539, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 323]
!544 = metadata !{i32 323, i32 0, metadata !38, null}
!545 = metadata !{i32 786689, metadata !38, metadata !"argv", metadata !35, i32 33554755, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 323]
!546 = metadata !{i32 786688, metadata !38, metadata !"optc", metadata !35, i32 325, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [optc] [line 325]
!547 = metadata !{i32 325, i32 0, metadata !38, null}
!548 = metadata !{i32 786688, metadata !38, metadata !"first", metadata !35, i32 326, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 326]
!549 = metadata !{i32 326, i32 0, metadata !38, null}
!550 = metadata !{i32 786688, metadata !38, metadata !"step", metadata !35, i32 327, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [step] [line 327]
!551 = metadata !{i32 327, i32 0, metadata !38, null}
!552 = metadata !{i32 786688, metadata !38, metadata !"last", metadata !35, i32 328, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 328]
!553 = metadata !{i32 328, i32 0, metadata !38, null}
!554 = metadata !{i32 786688, metadata !38, metadata !"format_str", metadata !35, i32 331, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [format_str] [line 331]
!555 = metadata !{i32 331, i32 0, metadata !38, null}
!556 = metadata !{i32 334, i32 0, metadata !38, null}
!557 = metadata !{i32 335, i32 0, metadata !38, null}
!558 = metadata !{i32 339, i32 0, metadata !38, null}
!559 = metadata !{i32 341, i32 0, metadata !38, null}
!560 = metadata !{i32 342, i32 0, metadata !38, null}
!561 = metadata !{i32 347, i32 0, metadata !38, null}
!562 = metadata !{i32 349, i32 0, metadata !563, null}
!563 = metadata !{i32 786443, metadata !1, metadata !564, i32 349, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!564 = metadata !{i32 786443, metadata !1, metadata !38, i32 348, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!565 = metadata !{i32 353, i32 0, metadata !566, null}
!566 = metadata !{i32 786443, metadata !1, metadata !563, i32 351, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!567 = metadata !{i32 356, i32 0, metadata !564, null}
!568 = metadata !{i32 357, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !564, i32 357, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!570 = metadata !{i32 358, i32 0, metadata !569, null}
!571 = metadata !{i32 360, i32 0, metadata !564, null}
!572 = metadata !{i32 363, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !564, i32 361, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!574 = metadata !{i32 364, i32 0, metadata !573, null}
!575 = metadata !{i32 367, i32 0, metadata !573, null}
!576 = metadata !{i32 368, i32 0, metadata !573, null}
!577 = metadata !{i32 371, i32 0, metadata !573, null}
!578 = metadata !{i32 372, i32 0, metadata !573, null}
!579 = metadata !{i32 374, i32 0, metadata !573, null}
!580 = metadata !{i32 376, i32 0, metadata !573, null}
!581 = metadata !{i32 379, i32 0, metadata !573, null}
!582 = metadata !{i32 380, i32 0, metadata !573, null}
!583 = metadata !{i32 381, i32 0, metadata !564, null}
!584 = metadata !{i32 383, i32 0, metadata !585, null}
!585 = metadata !{i32 786443, metadata !1, metadata !38, i32 383, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!586 = metadata !{i32 385, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !585, i32 384, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!588 = metadata !{i32 386, i32 0, metadata !587, null}
!589 = metadata !{i32 387, i32 0, metadata !587, null}
!590 = metadata !{i32 389, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !38, i32 389, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!592 = metadata !{i32 391, i32 0, metadata !593, null}
!593 = metadata !{i32 786443, metadata !1, metadata !591, i32 390, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!594 = metadata !{i32 392, i32 0, metadata !593, null}
!595 = metadata !{i32 393, i32 0, metadata !593, null}
!596 = metadata !{i32 395, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !1, metadata !38, i32 395, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!598 = metadata !{i32 786688, metadata !599, metadata !"f", metadata !35, i32 397, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 397]
!599 = metadata !{i32 786443, metadata !1, metadata !597, i32 396, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!600 = metadata !{i32 397, i32 0, metadata !599, null}
!601 = metadata !{i32 398, i32 0, metadata !602, null}
!602 = metadata !{i32 786443, metadata !1, metadata !599, i32 398, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!603 = metadata !{i32 400, i32 0, metadata !604, null}
!604 = metadata !{i32 786443, metadata !1, metadata !602, i32 399, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!605 = metadata !{i32 401, i32 0, metadata !604, null}
!606 = metadata !{i32 402, i32 0, metadata !604, null}
!607 = metadata !{i32 403, i32 0, metadata !599, null}
!608 = metadata !{i32 404, i32 0, metadata !599, null}
!609 = metadata !{i32 406, i32 0, metadata !38, null}
!610 = metadata !{i32 408, i32 0, metadata !611, null}
!611 = metadata !{i32 786443, metadata !1, metadata !38, i32 408, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!612 = metadata !{i32 410, i32 0, metadata !613, null}
!613 = metadata !{i32 786443, metadata !1, metadata !611, i32 409, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!614 = metadata !{i32 411, i32 0, metadata !613, null}
!615 = metadata !{i32 413, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !613, i32 413, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!617 = metadata !{i32 415, i32 0, metadata !618, null}
!618 = metadata !{i32 786443, metadata !1, metadata !616, i32 414, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!619 = metadata !{i32 416, i32 0, metadata !618, null}
!620 = metadata !{i32 417, i32 0, metadata !618, null}
!621 = metadata !{i32 418, i32 0, metadata !613, null}
!622 = metadata !{i32 420, i32 0, metadata !623, null}
!623 = metadata !{i32 786443, metadata !1, metadata !38, i32 420, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!624 = metadata !{i32 422, i32 0, metadata !625, null}
!625 = metadata !{i32 786443, metadata !1, metadata !623, i32 421, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!626 = metadata !{i32 424, i32 0, metadata !625, null}
!627 = metadata !{i32 425, i32 0, metadata !625, null}
!628 = metadata !{i32 427, i32 0, metadata !629, null}
!629 = metadata !{i32 786443, metadata !1, metadata !38, i32 427, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!630 = metadata !{i32 428, i32 0, metadata !629, null}
!631 = metadata !{i32 430, i32 0, metadata !38, null}
!632 = metadata !{i32 432, i32 0, metadata !38, null}
!633 = metadata !{i32 433, i32 0, metadata !38, null}
!634 = metadata !{i32 786689, metadata !64, metadata !"fmt", metadata !35, i32 16777399, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 183]
!635 = metadata !{i32 183, i32 0, metadata !64, null}
!636 = metadata !{i32 786688, metadata !64, metadata !"i", metadata !35, i32 185, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 185]
!637 = metadata !{i32 185, i32 0, metadata !64, null}
!638 = metadata !{i32 786688, metadata !64, metadata !"prefix_len", metadata !35, i32 186, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prefix_len] [line 186]
!639 = metadata !{i32 186, i32 0, metadata !64, null}
!640 = metadata !{i32 786688, metadata !64, metadata !"has_L", metadata !35, i32 187, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [has_L] [line 187]
!641 = metadata !{i32 187, i32 0, metadata !64, null}
!642 = metadata !{i32 189, i32 0, metadata !643, null}
!643 = metadata !{i32 786443, metadata !1, metadata !64, i32 189, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!644 = metadata !{i32 190, i32 0, metadata !645, null}
!645 = metadata !{i32 786443, metadata !1, metadata !643, i32 190, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!646 = metadata !{i32 191, i32 0, metadata !645, null}
!647 = metadata !{i32 193, i32 0, metadata !64, null}
!648 = metadata !{i32 194, i32 0, metadata !64, null}
!649 = metadata !{i32 195, i32 0, metadata !64, null}
!650 = metadata !{i32 196, i32 0, metadata !651, null}
!651 = metadata !{i32 786443, metadata !1, metadata !64, i32 196, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!652 = metadata !{i32 198, i32 0, metadata !653, null}
!653 = metadata !{i32 786443, metadata !1, metadata !651, i32 197, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!654 = metadata !{i32 199, i32 0, metadata !653, null}
!655 = metadata !{i32 200, i32 0, metadata !653, null}
!656 = metadata !{i32 202, i32 0, metadata !64, null}
!657 = metadata !{i32 203, i32 0, metadata !64, null}
!658 = metadata !{i32 204, i32 0, metadata !64, null}
!659 = metadata !{i32 205, i32 0, metadata !660, null}
!660 = metadata !{i32 786443, metadata !1, metadata !64, i32 205, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!661 = metadata !{i32 206, i32 0, metadata !660, null}
!662 = metadata !{i32 208, i32 0, metadata !663, null}
!663 = metadata !{i32 786443, metadata !1, metadata !64, i32 208, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!664 = metadata !{i32 209, i32 0, metadata !665, null}
!665 = metadata !{i32 786443, metadata !1, metadata !663, i32 209, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!666 = metadata !{i32 786688, metadata !667, metadata !"format_size", metadata !35, i32 211, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [format_size] [line 211]
!667 = metadata !{i32 786443, metadata !1, metadata !665, i32 210, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!668 = metadata !{i32 211, i32 0, metadata !667, null}
!669 = metadata !{i32 786688, metadata !667, metadata !"ldfmt", metadata !35, i32 212, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ldfmt] [line 212]
!670 = metadata !{i32 212, i32 0, metadata !667, null}
!671 = metadata !{i32 213, i32 0, metadata !667, null}
!672 = metadata !{i32 214, i32 0, metadata !667, null}
!673 = metadata !{i32 215, i32 0, metadata !667, null}
!674 = metadata !{i32 216, i32 0, metadata !667, null}
!675 = metadata !{i32 217, i32 0, metadata !665, null}
!676 = metadata !{i32 219, i32 0, metadata !64, null}
!677 = metadata !{i32 220, i32 0, metadata !64, null}
!678 = metadata !{i32 786689, metadata !61, metadata !"arg", metadata !35, i32 16777347, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 131]
!679 = metadata !{i32 131, i32 0, metadata !61, null}
!680 = metadata !{i32 786688, metadata !61, metadata !"ret", metadata !35, i32 133, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 133]
!681 = metadata !{i32 133, i32 0, metadata !61, null}
!682 = metadata !{i32 135, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !1, metadata !61, i32 135, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!684 = metadata !{i32 137, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !1, metadata !683, i32 136, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!686 = metadata !{i32 138, i32 0, metadata !685, null}
!687 = metadata !{i32 139, i32 0, metadata !685, null}
!688 = metadata !{i32 142, i32 0, metadata !61, null}
!689 = metadata !{i32 143, i32 0, metadata !61, null}
!690 = metadata !{i32 145, i32 0, metadata !61, null}
!691 = metadata !{i32 146, i32 0, metadata !61, null}
!692 = metadata !{i32 148, i32 0, metadata !693, null}
!693 = metadata !{i32 786443, metadata !1, metadata !61, i32 148, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!694 = metadata !{i32 786688, metadata !695, metadata !"decimal_point", metadata !35, i32 150, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [decimal_point] [line 150]
!695 = metadata !{i32 786443, metadata !1, metadata !693, i32 149, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!696 = metadata !{i32 150, i32 0, metadata !695, null}
!697 = metadata !{i32 151, i32 0, metadata !698, null}
!698 = metadata !{i32 786443, metadata !1, metadata !695, i32 151, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!699 = metadata !{i32 152, i32 0, metadata !698, null}
!700 = metadata !{i32 786688, metadata !701, metadata !"fraction_len", metadata !35, i32 155, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fraction_len] [line 155]
!701 = metadata !{i32 786443, metadata !1, metadata !698, i32 154, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!702 = metadata !{i32 155, i32 0, metadata !701, null}
!703 = metadata !{i32 156, i32 0, metadata !704, null}
!704 = metadata !{i32 786443, metadata !1, metadata !701, i32 156, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!705 = metadata !{i32 157, i32 0, metadata !704, null}
!706 = metadata !{i32 158, i32 0, metadata !701, null}
!707 = metadata !{i32 163, i32 0, metadata !708, null}
!708 = metadata !{i32 786443, metadata !1, metadata !695, i32 163, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!709 = metadata !{i32 786688, metadata !710, metadata !"e", metadata !35, i32 164, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 164]
!710 = metadata !{i32 786443, metadata !1, metadata !708, i32 163, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!711 = metadata !{i32 164, i32 0, metadata !710, null}
!712 = metadata !{i32 165, i32 0, metadata !713, null}
!713 = metadata !{i32 786443, metadata !1, metadata !710, i32 165, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!714 = metadata !{i32 166, i32 0, metadata !713, null}
!715 = metadata !{i32 167, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !1, metadata !710, i32 167, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!717 = metadata !{i32 786688, metadata !718, metadata !"exponent", metadata !35, i32 169, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [exponent] [line 169]
!718 = metadata !{i32 786443, metadata !1, metadata !716, i32 168, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!719 = metadata !{i32 169, i32 0, metadata !718, null}
!720 = metadata !{i32 170, i32 0, metadata !718, null}
!721 = metadata !{i32 171, i32 0, metadata !718, null}
!722 = metadata !{i32 172, i32 0, metadata !710, null}
!723 = metadata !{i32 173, i32 0, metadata !695, null}
!724 = metadata !{i32 175, i32 0, metadata !61, null}
!725 = metadata !{i32 786689, metadata !50, metadata !"first", metadata !35, i32 16777501, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first] [line 285]
!726 = metadata !{i32 285, i32 0, metadata !50, null}
!727 = metadata !{i32 786689, metadata !50, metadata !"step", metadata !35, i32 33554717, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 285]
!728 = metadata !{i32 786689, metadata !50, metadata !"last", metadata !35, i32 50331933, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [last] [line 285]
!729 = metadata !{i32 786688, metadata !50, metadata !"prec", metadata !35, i32 289, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prec] [line 289]
!730 = metadata !{i32 289, i32 0, metadata !50, null}
!731 = metadata !{i32 291, i32 0, metadata !732, null}
!732 = metadata !{i32 786443, metadata !1, metadata !50, i32 291, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!733 = metadata !{i32 293, i32 0, metadata !734, null}
!734 = metadata !{i32 786443, metadata !1, metadata !735, i32 293, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!735 = metadata !{i32 786443, metadata !1, metadata !732, i32 292, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!736 = metadata !{i32 786688, metadata !737, metadata !"first_width", metadata !35, i32 296, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first_width] [line 296]
!737 = metadata !{i32 786443, metadata !1, metadata !734, i32 294, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!738 = metadata !{i32 296, i32 0, metadata !737, null}
!739 = metadata !{i32 786688, metadata !737, metadata !"last_width", metadata !35, i32 298, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last_width] [line 298]
!740 = metadata !{i32 298, i32 0, metadata !737, null}
!741 = metadata !{i32 299, i32 0, metadata !742, null}
!742 = metadata !{i32 786443, metadata !1, metadata !737, i32 299, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!743 = metadata !{i32 300, i32 0, metadata !742, null}
!744 = metadata !{i32 301, i32 0, metadata !745, null}
!745 = metadata !{i32 786443, metadata !1, metadata !737, i32 301, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!746 = metadata !{i32 786688, metadata !747, metadata !"width", metadata !35, i32 303, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [width] [line 303]
!747 = metadata !{i32 786443, metadata !1, metadata !745, i32 302, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!748 = metadata !{i32 303, i32 0, metadata !747, null}
!749 = metadata !{i32 304, i32 0, metadata !750, null}
!750 = metadata !{i32 786443, metadata !1, metadata !747, i32 304, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!751 = metadata !{i32 786688, metadata !752, metadata !"w", metadata !35, i32 306, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 306]
!752 = metadata !{i32 786443, metadata !1, metadata !750, i32 305, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!753 = metadata !{i32 306, i32 0, metadata !752, null}
!754 = metadata !{i32 307, i32 0, metadata !752, null}
!755 = metadata !{i32 308, i32 0, metadata !752, null}
!756 = metadata !{i32 310, i32 0, metadata !747, null}
!757 = metadata !{i32 311, i32 0, metadata !737, null}
!758 = metadata !{i32 314, i32 0, metadata !759, null}
!759 = metadata !{i32 786443, metadata !1, metadata !734, i32 313, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!760 = metadata !{i32 315, i32 0, metadata !759, null}
!761 = metadata !{i32 317, i32 0, metadata !735, null}
!762 = metadata !{i32 319, i32 0, metadata !50, null}
!763 = metadata !{i32 320, i32 0, metadata !50, null}
!764 = metadata !{i32 786689, metadata !44, metadata !"fmt", metadata !35, i32 16777442, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 226]
!765 = metadata !{i32 226, i32 0, metadata !44, null}
!766 = metadata !{i32 786689, metadata !44, metadata !"first", metadata !35, i32 33554659, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first] [line 227]
!767 = metadata !{i32 227, i32 0, metadata !44, null}
!768 = metadata !{i32 786689, metadata !44, metadata !"step", metadata !35, i32 50331875, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 227]
!769 = metadata !{i32 786689, metadata !44, metadata !"last", metadata !35, i32 67109091, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [last] [line 227]
!770 = metadata !{i32 786688, metadata !44, metadata !"i", metadata !35, i32 229, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 229]
!771 = metadata !{i32 229, i32 0, metadata !44, null}
!772 = metadata !{i32 786688, metadata !44, metadata !"x0", metadata !35, i32 230, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x0] [line 230]
!773 = metadata !{i32 230, i32 0, metadata !44, null}
!774 = metadata !{i32 232, i32 0, metadata !775, null}
!775 = metadata !{i32 786443, metadata !1, metadata !44, i32 232, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!776 = metadata !{i32 786688, metadata !777, metadata !"x", metadata !35, i32 234, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 234]
!777 = metadata !{i32 786443, metadata !1, metadata !775, i32 233, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!778 = metadata !{i32 234, i32 0, metadata !777, null}
!779 = metadata !{i32 236, i32 0, metadata !780, null}
!780 = metadata !{i32 786443, metadata !1, metadata !777, i32 236, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!781 = metadata !{i32 245, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !1, metadata !783, i32 245, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!783 = metadata !{i32 786443, metadata !1, metadata !780, i32 237, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!784 = metadata !{i32 786688, metadata !785, metadata !"x_str", metadata !35, i32 247, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_str] [line 247]
!785 = metadata !{i32 786443, metadata !1, metadata !782, i32 246, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!786 = metadata !{i32 247, i32 0, metadata !785, null}
!787 = metadata !{i32 786688, metadata !785, metadata !"last_str", metadata !35, i32 248, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last_str] [line 248]
!788 = metadata !{i32 248, i32 0, metadata !785, null}
!789 = metadata !{i32 249, i32 0, metadata !790, null}
!790 = metadata !{i32 786443, metadata !1, metadata !785, i32 249, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!791 = metadata !{i32 250, i32 0, metadata !790, null}
!792 = metadata !{i32 251, i32 0, metadata !790, null}
!793 = metadata !{i32 253, i32 0, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !785, i32 253, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!795 = metadata !{i32 786688, metadata !796, metadata !"x0_str", metadata !35, i32 255, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x0_str] [line 255]
!796 = metadata !{i32 786443, metadata !1, metadata !794, i32 254, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!797 = metadata !{i32 255, i32 0, metadata !796, null}
!798 = metadata !{i32 256, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !1, metadata !796, i32 256, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!800 = metadata !{i32 257, i32 0, metadata !799, null}
!801 = metadata !{i32 258, i32 0, metadata !802, null}
!802 = metadata !{i32 786443, metadata !1, metadata !796, i32 258, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!803 = metadata !{i32 260, i32 0, metadata !804, null}
!804 = metadata !{i32 786443, metadata !1, metadata !802, i32 259, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!805 = metadata !{i32 261, i32 0, metadata !804, null}
!806 = metadata !{i32 262, i32 0, metadata !804, null}
!807 = metadata !{i32 263, i32 0, metadata !796, null}
!808 = metadata !{i32 264, i32 0, metadata !796, null}
!809 = metadata !{i32 266, i32 0, metadata !785, null}
!810 = metadata !{i32 267, i32 0, metadata !785, null}
!811 = metadata !{i32 268, i32 0, metadata !785, null}
!812 = metadata !{i32 270, i32 0, metadata !783, null}
!813 = metadata !{i32 273, i32 0, metadata !814, null}
!814 = metadata !{i32 786443, metadata !1, metadata !777, i32 273, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!815 = metadata !{i32 274, i32 0, metadata !814, null}
!816 = metadata !{i32 275, i32 0, metadata !777, null}
!817 = metadata !{i32 276, i32 0, metadata !777, null}
!818 = metadata !{i32 277, i32 0, metadata !777, null}
!819 = metadata !{i32 279, i32 0, metadata !820, null}
!820 = metadata !{i32 786443, metadata !1, metadata !44, i32 279, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/src/seq.c]
!821 = metadata !{i32 280, i32 0, metadata !820, null}
!822 = metadata !{i32 281, i32 0, metadata !44, null}
!823 = metadata !{i32 786689, metadata !108, metadata !"stream", metadata !109, i32 16777257, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 41]
!824 = metadata !{i32 41, i32 0, metadata !108, null}
!825 = metadata !{i32 786689, metadata !108, metadata !"command_name", metadata !109, i32 33554474, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [command_name] [line 42]
!826 = metadata !{i32 42, i32 0, metadata !108, null}
!827 = metadata !{i32 786689, metadata !108, metadata !"package", metadata !109, i32 50331690, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [package] [line 42]
!828 = metadata !{i32 786689, metadata !108, metadata !"version", metadata !109, i32 67108907, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [version] [line 43]
!829 = metadata !{i32 43, i32 0, metadata !108, null}
!830 = metadata !{i32 786689, metadata !108, metadata !"authors", metadata !109, i32 83886123, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [authors] [line 43]
!831 = metadata !{i32 786688, metadata !108, metadata !"n_authors", metadata !109, i32 45, metadata !160, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_authors] [line 45]
!832 = metadata !{i32 45, i32 0, metadata !108, null}
!833 = metadata !{i32 786688, metadata !834, metadata !"tmp_authors", metadata !109, i32 49, metadata !835, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_authors] [line 49]
!834 = metadata !{i32 786443, metadata !102, metadata !108, i32 48, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/version-etc.c]
!835 = metadata !{i32 786454, metadata !102, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !836} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!836 = metadata !{i32 786454, metadata !102, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !837} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!837 = metadata !{i32 786454, metadata !102, null, metadata !"__builtin_va_list", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !838} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 49, size 0, align 0, offset 0] [from ]
!838 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !167, metadata !149, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!839 = metadata !{i32 49, i32 0, metadata !834, null}
!840 = metadata !{i32 51, i32 0, metadata !834, null}
!841 = metadata !{i32 53, i32 0, metadata !834, null}
!842 = metadata !{i32 54, i32 0, metadata !834, null}
!843 = metadata !{i32 55, i32 0, metadata !834, null}
!844 = metadata !{i32 58, i32 0, metadata !845, null} ; [ DW_TAG_imported_module ]
!845 = metadata !{i32 786443, metadata !102, metadata !108, i32 58, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/version-etc.c]
!846 = metadata !{i32 59, i32 0, metadata !845, null}
!847 = metadata !{i32 61, i32 0, metadata !845, null}
!848 = metadata !{i32 66, i32 0, metadata !108, null}
!849 = metadata !{i32 68, i32 0, metadata !108, null}
!850 = metadata !{i32 77, i32 0, metadata !108, null}
!851 = metadata !{i32 81, i32 0, metadata !852, null}
!852 = metadata !{i32 786443, metadata !102, metadata !108, i32 78, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/version-etc.c]
!853 = metadata !{i32 84, i32 0, metadata !852, null}
!854 = metadata !{i32 85, i32 0, metadata !852, null}
!855 = metadata !{i32 88, i32 0, metadata !852, null}
!856 = metadata !{i32 89, i32 0, metadata !852, null}
!857 = metadata !{i32 92, i32 0, metadata !852, null}
!858 = metadata !{i32 93, i32 0, metadata !852, null}
!859 = metadata !{i32 98, i32 0, metadata !852, null}
!860 = metadata !{i32 99, i32 0, metadata !852, null}
!861 = metadata !{i32 104, i32 0, metadata !852, null}
!862 = metadata !{i32 105, i32 0, metadata !852, null}
!863 = metadata !{i32 110, i32 0, metadata !852, null}
!864 = metadata !{i32 112, i32 0, metadata !852, null}
!865 = metadata !{i32 117, i32 0, metadata !852, null}
!866 = metadata !{i32 119, i32 0, metadata !852, null}
!867 = metadata !{i32 124, i32 0, metadata !852, null}
!868 = metadata !{i32 127, i32 0, metadata !852, null}
!869 = metadata !{i32 132, i32 0, metadata !852, null}
!870 = metadata !{i32 135, i32 0, metadata !852, null}
!871 = metadata !{i32 142, i32 0, metadata !852, null}
!872 = metadata !{i32 145, i32 0, metadata !852, null}
!873 = metadata !{i32 147, i32 0, metadata !108, null}
!874 = metadata !{i32 148, i32 0, metadata !108, null}
!875 = metadata !{i32 786689, metadata !175, metadata !"stream", metadata !109, i32 16777381, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 165]
!876 = metadata !{i32 165, i32 0, metadata !175, null}
!877 = metadata !{i32 786689, metadata !175, metadata !"command_name", metadata !109, i32 33554598, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [command_name] [line 166]
!878 = metadata !{i32 166, i32 0, metadata !175, null}
!879 = metadata !{i32 786689, metadata !175, metadata !"package", metadata !109, i32 50331814, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [package] [line 166]
!880 = metadata !{i32 786689, metadata !175, metadata !"version", metadata !109, i32 67109031, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [version] [line 167]
!881 = metadata !{i32 167, i32 0, metadata !175, null}
!882 = metadata !{i32 786688, metadata !175, metadata !"authors", metadata !109, i32 169, metadata !835, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [authors] [line 169]
!883 = metadata !{i32 169, i32 0, metadata !175, null}
!884 = metadata !{i32 171, i32 0, metadata !175, null}
!885 = metadata !{i32 172, i32 0, metadata !175, null}
!886 = metadata !{i32 173, i32 0, metadata !175, null}
!887 = metadata !{i32 49, i32 0, metadata !189, null}
!888 = metadata !{i32 55, i32 0, metadata !189, null}
!889 = metadata !{i32 56, i32 0, metadata !189, null}
!890 = metadata !{i32 786689, metadata !191, metadata !"status", metadata !190, i32 16777250, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 34]
!891 = metadata !{i32 34, i32 0, metadata !191, null}
!892 = metadata !{i32 786689, metadata !191, metadata !"errno", metadata !190, i32 33554466, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [errno] [line 34]
!893 = metadata !{i32 786689, metadata !191, metadata !"format", metadata !190, i32 50331682, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 34]
!894 = metadata !{i32 786688, metadata !191, metadata !"err_args", metadata !190, i32 35, metadata !895, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err_args] [line 35]
!895 = metadata !{i32 786454, metadata !187, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !896} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!896 = metadata !{i32 786454, metadata !187, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !897} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!897 = metadata !{i32 786454, metadata !187, null, metadata !"__builtin_va_list", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !898} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 35, size 0, align 0, offset 0] [from ]
!898 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !899, metadata !149, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!899 = metadata !{i32 786454, metadata !187, null, metadata !"__va_list_tag", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !900} ; [ DW_TAG_typedef ] [__va_list_tag] [line 35, size 0, align 0, offset 0] [from __va_list_tag]
!900 = metadata !{i32 786451, metadata !187, null, metadata !"__va_list_tag", i32 35, i64 192, i64 64, i32 0, i32 0, null, metadata !901, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 35, size 192, align 64, offset 0] [def] [from ]
!901 = metadata !{metadata !902, metadata !903, metadata !904, metadata !905}
!902 = metadata !{i32 786445, metadata !187, metadata !900, metadata !"gp_offset", i32 35, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [gp_offset] [line 35, size 32, align 32, offset 0] [from unsigned int]
!903 = metadata !{i32 786445, metadata !187, metadata !900, metadata !"fp_offset", i32 35, i64 32, i64 32, i64 32, i32 0, metadata !171} ; [ DW_TAG_member ] [fp_offset] [line 35, size 32, align 32, offset 32] [from unsigned int]
!904 = metadata !{i32 786445, metadata !187, metadata !900, metadata !"overflow_arg_area", i32 35, i64 64, i64 64, i64 64, i32 0, metadata !152} ; [ DW_TAG_member ] [overflow_arg_area] [line 35, size 64, align 64, offset 64] [from ]
!905 = metadata !{i32 786445, metadata !187, metadata !900, metadata !"reg_save_area", i32 35, i64 64, i64 64, i64 128, i32 0, metadata !152} ; [ DW_TAG_member ] [reg_save_area] [line 35, size 64, align 64, offset 128] [from ]
!906 = metadata !{i32 35, i32 0, metadata !191, null}
!907 = metadata !{i32 36, i32 0, metadata !191, null}
!908 = metadata !{i32 37, i32 0, metadata !191, null}
!909 = metadata !{i32 38, i32 0, metadata !191, null}
!910 = metadata !{i32 39, i32 0, metadata !191, null}
!911 = metadata !{i32 40, i32 0, metadata !191, null}
!912 = metadata !{i32 41, i32 0, metadata !913, null}
!913 = metadata !{i32 786443, metadata !187, metadata !191, i32 41, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/xalloc-die.c]
!914 = metadata !{i32 42, i32 0, metadata !915, null}
!915 = metadata !{i32 786443, metadata !187, metadata !913, i32 41, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/xalloc-die.c]
!916 = metadata !{i32 44, i32 0, metadata !191, null}
!917 = metadata !{i32 786689, metadata !197, metadata !"nptr", metadata !199, i32 16777264, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nptr] [line 48]
!918 = metadata !{i32 48, i32 0, metadata !197, null}
!919 = metadata !{i32 786689, metadata !197, metadata !"endptr", metadata !199, i32 33554480, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [endptr] [line 48]
!920 = metadata !{i32 786688, metadata !197, metadata !"r", metadata !199, i32 50, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 50]
!921 = metadata !{i32 50, i32 0, metadata !197, null}
!922 = metadata !{i32 786688, metadata !197, metadata !"c_locale", metadata !199, i32 54, metadata !923, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_locale] [line 54]
!923 = metadata !{i32 786454, metadata !198, null, metadata !"locale_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !924} ; [ DW_TAG_typedef ] [locale_t] [line 42, size 0, align 0, offset 0] [from __locale_t]
!924 = metadata !{i32 786454, metadata !198, null, metadata !"__locale_t", i32 39, i64 0, i64 0, i64 0, i32 0, metadata !925} ; [ DW_TAG_typedef ] [__locale_t] [line 39, size 0, align 0, offset 0] [from ]
!925 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !926} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __locale_struct]
!926 = metadata !{i32 786451, metadata !927, null, metadata !"__locale_struct", i32 27, i64 1856, i64 64, i32 0, i32 0, null, metadata !928, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__locale_struct] [line 27, size 1856, align 64, offset 0] [def] [from ]
!927 = metadata !{metadata !"/usr/include/xlocale.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!928 = metadata !{metadata !929, metadata !935, metadata !938, metadata !941, metadata !942}
!929 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"__locales", i32 30, i64 832, i64 64, i64 0, i32 0, metadata !930} ; [ DW_TAG_member ] [__locales] [line 30, size 832, align 64, offset 0] [from ]
!930 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 832, i64 64, i32 0, i32 0, metadata !931, metadata !933, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 832, align 64, offset 0] [from ]
!931 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !932} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __locale_data]
!932 = metadata !{i32 786451, metadata !927, null, metadata !"__locale_data", i32 30, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__locale_data] [line 30, size 0, align 0, offset 0] [decl] [from ]
!933 = metadata !{metadata !934}
!934 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 12]
!935 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"__ctype_b", i32 33, i64 64, i64 64, i64 832, i32 0, metadata !936} ; [ DW_TAG_member ] [__ctype_b] [line 33, size 64, align 64, offset 832] [from ]
!936 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !937} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!937 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned short]
!938 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"__ctype_tolower", i32 34, i64 64, i64 64, i64 896, i32 0, metadata !939} ; [ DW_TAG_member ] [__ctype_tolower] [line 34, size 64, align 64, offset 896] [from ]
!939 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !940} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!940 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!941 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"__ctype_toupper", i32 35, i64 64, i64 64, i64 960, i32 0, metadata !939} ; [ DW_TAG_member ] [__ctype_toupper] [line 35, size 64, align 64, offset 960] [from ]
!942 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"__names", i32 38, i64 832, i64 64, i64 1024, i32 0, metadata !943} ; [ DW_TAG_member ] [__names] [line 38, size 832, align 64, offset 1024] [from ]
!943 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 832, i64 64, i32 0, i32 0, metadata !47, metadata !933, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 832, align 64, offset 0] [from ]
!944 = metadata !{i32 54, i32 0, metadata !197, null}
!945 = metadata !{i32 55, i32 0, metadata !197, null}
!946 = metadata !{i32 56, i32 0, metadata !197, null}
!947 = metadata !{i32 78, i32 0, metadata !197, null}
!948 = metadata !{i32 786689, metadata !205, metadata !"file", metadata !206, i32 16777257, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 41]
!949 = metadata !{i32 41, i32 0, metadata !205, null}
!950 = metadata !{i32 43, i32 0, metadata !205, null}
!951 = metadata !{i32 44, i32 0, metadata !205, null}
!952 = metadata !{i32 72, i32 0, metadata !953, null}
!953 = metadata !{i32 786443, metadata !203, metadata !209, i32 72, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/closeout.c]
!954 = metadata !{i32 786688, metadata !955, metadata !"write_error", metadata !206, i32 74, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [write_error] [line 74]
!955 = metadata !{i32 786443, metadata !203, metadata !953, i32 73, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/closeout.c]
!956 = metadata !{i32 74, i32 0, metadata !955, null}
!957 = metadata !{i32 75, i32 0, metadata !958, null}
!958 = metadata !{i32 786443, metadata !203, metadata !955, i32 75, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/closeout.c]
!959 = metadata !{i32 76, i32 0, metadata !958, null}
!960 = metadata !{i32 79, i32 0, metadata !958, null}
!961 = metadata !{i32 81, i32 0, metadata !955, null}
!962 = metadata !{i32 84, i32 0, metadata !963, null}
!963 = metadata !{i32 786443, metadata !203, metadata !209, i32 84, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/closeout.c]
!964 = metadata !{i32 85, i32 0, metadata !963, null}
!965 = metadata !{i32 86, i32 0, metadata !209, null}
!966 = metadata !{i32 786689, metadata !232, metadata !"n", metadata !233, i32 16777246, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 30]
!967 = metadata !{i32 30, i32 0, metadata !232, null}
!968 = metadata !{i32 786689, metadata !232, metadata !"name", metadata !233, i32 33554462, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 30]
!969 = metadata !{i32 32, i32 0, metadata !232, null}
!970 = metadata !{i32 786689, metadata !236, metadata !"name", metadata !233, i32 16777254, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 38]
!971 = metadata !{i32 38, i32 0, metadata !236, null}
!972 = metadata !{i32 40, i32 0, metadata !236, null}
!973 = metadata !{i32 786689, metadata !243, metadata !"o", metadata !244, i32 16777322, metadata !247, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 106]
!974 = metadata !{i32 106, i32 0, metadata !243, null}
!975 = metadata !{i32 786688, metadata !243, metadata !"e", metadata !244, i32 108, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 108]
!976 = metadata !{i32 108, i32 0, metadata !243, null}
!977 = metadata !{i32 786688, metadata !243, metadata !"p", metadata !244, i32 109, metadata !247, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 109]
!978 = metadata !{i32 109, i32 0, metadata !243, null}
!979 = metadata !{i32 111, i32 0, metadata !243, null}
!980 = metadata !{i32 112, i32 0, metadata !243, null}
!981 = metadata !{i32 786689, metadata !255, metadata !"o", metadata !244, i32 16777333, metadata !247, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 117]
!982 = metadata !{i32 117, i32 0, metadata !255, null}
!983 = metadata !{i32 119, i32 0, metadata !255, null}
!984 = metadata !{i32 786689, metadata !258, metadata !"o", metadata !244, i32 16777341, metadata !247, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 125]
!985 = metadata !{i32 125, i32 0, metadata !258, null}
!986 = metadata !{i32 786689, metadata !258, metadata !"s", metadata !244, i32 33554557, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 125]
!987 = metadata !{i32 127, i32 0, metadata !258, null}
!988 = metadata !{i32 128, i32 0, metadata !258, null}
!989 = metadata !{i32 786689, metadata !261, metadata !"o", metadata !244, i32 16777352, metadata !247, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 136]
!990 = metadata !{i32 136, i32 0, metadata !261, null}
!991 = metadata !{i32 786689, metadata !261, metadata !"c", metadata !244, i32 33554568, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 136]
!992 = metadata !{i32 786689, metadata !261, metadata !"i", metadata !244, i32 50331784, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 136]
!993 = metadata !{i32 786688, metadata !261, metadata !"uc", metadata !244, i32 138, metadata !994, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uc] [line 138]
!994 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!995 = metadata !{i32 138, i32 0, metadata !261, null}
!996 = metadata !{i32 786688, metadata !261, metadata !"p", metadata !244, i32 139, metadata !997, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 139]
!997 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned int]
!998 = metadata !{i32 139, i32 0, metadata !261, null}
!999 = metadata !{i32 786688, metadata !261, metadata !"shift", metadata !244, i32 141, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 141]
!1000 = metadata !{i32 141, i32 0, metadata !261, null}
!1001 = metadata !{i32 786688, metadata !261, metadata !"r", metadata !244, i32 142, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 142]
!1002 = metadata !{i32 142, i32 0, metadata !261, null}
!1003 = metadata !{i32 143, i32 0, metadata !261, null}
!1004 = metadata !{i32 144, i32 0, metadata !261, null}
!1005 = metadata !{i32 786689, metadata !264, metadata !"buffer", metadata !244, i32 16777737, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer] [line 521]
!1006 = metadata !{i32 521, i32 0, metadata !264, null}
!1007 = metadata !{i32 786689, metadata !264, metadata !"buffersize", metadata !244, i32 33554953, metadata !267, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffersize] [line 521]
!1008 = metadata !{i32 786689, metadata !264, metadata !"arg", metadata !244, i32 50332170, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 522]
!1009 = metadata !{i32 522, i32 0, metadata !264, null}
!1010 = metadata !{i32 786689, metadata !264, metadata !"argsize", metadata !244, i32 67109386, metadata !267, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argsize] [line 522]
!1011 = metadata !{i32 786689, metadata !264, metadata !"o", metadata !244, i32 83886603, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 523]
!1012 = metadata !{i32 523, i32 0, metadata !264, null}
!1013 = metadata !{i32 786688, metadata !264, metadata !"p", metadata !244, i32 525, metadata !268, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 525]
!1014 = metadata !{i32 525, i32 0, metadata !264, null}
!1015 = metadata !{i32 786688, metadata !264, metadata !"e", metadata !244, i32 526, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 526]
!1016 = metadata !{i32 526, i32 0, metadata !264, null}
!1017 = metadata !{i32 786688, metadata !264, metadata !"r", metadata !244, i32 527, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 527]
!1018 = metadata !{i32 527, i32 0, metadata !264, null}
!1019 = metadata !{i32 529, i32 0, metadata !264, null}
!1020 = metadata !{i32 530, i32 0, metadata !264, null}
!1021 = metadata !{i32 786689, metadata !270, metadata !"arg", metadata !244, i32 16777752, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 536]
!1022 = metadata !{i32 536, i32 0, metadata !270, null}
!1023 = metadata !{i32 786689, metadata !270, metadata !"argsize", metadata !244, i32 33554968, metadata !267, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argsize] [line 536]
!1024 = metadata !{i32 786689, metadata !270, metadata !"o", metadata !244, i32 50332185, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 537]
!1025 = metadata !{i32 537, i32 0, metadata !270, null}
!1026 = metadata !{i32 786688, metadata !270, metadata !"e", metadata !244, i32 539, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 539]
!1027 = metadata !{i32 539, i32 0, metadata !270, null}
!1028 = metadata !{i32 786688, metadata !270, metadata !"bufsize", metadata !244, i32 540, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bufsize] [line 540]
!1029 = metadata !{i32 540, i32 0, metadata !270, null}
!1030 = metadata !{i32 786688, metadata !270, metadata !"buf", metadata !244, i32 541, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 541]
!1031 = metadata !{i32 541, i32 0, metadata !270, null}
!1032 = metadata !{i32 542, i32 0, metadata !270, null}
!1033 = metadata !{i32 543, i32 0, metadata !270, null}
!1034 = metadata !{i32 544, i32 0, metadata !270, null}
!1035 = metadata !{i32 786688, metadata !273, metadata !"sv", metadata !244, i32 564, metadata !326, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sv] [line 564]
!1036 = metadata !{i32 564, i32 0, metadata !273, null}
!1037 = metadata !{i32 786688, metadata !273, metadata !"i", metadata !244, i32 565, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 565]
!1038 = metadata !{i32 565, i32 0, metadata !273, null}
!1039 = metadata !{i32 566, i32 0, metadata !1040, null}
!1040 = metadata !{i32 786443, metadata !238, metadata !273, i32 566, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1041 = metadata !{i32 567, i32 0, metadata !1040, null}
!1042 = metadata !{i32 568, i32 0, metadata !1043, null}
!1043 = metadata !{i32 786443, metadata !238, metadata !273, i32 568, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1044 = metadata !{i32 570, i32 0, metadata !1045, null}
!1045 = metadata !{i32 786443, metadata !238, metadata !1043, i32 569, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1046 = metadata !{i32 571, i32 0, metadata !1045, null}
!1047 = metadata !{i32 572, i32 0, metadata !1045, null}
!1048 = metadata !{i32 573, i32 0, metadata !1045, null}
!1049 = metadata !{i32 574, i32 0, metadata !1050, null}
!1050 = metadata !{i32 786443, metadata !238, metadata !273, i32 574, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1051 = metadata !{i32 576, i32 0, metadata !1052, null}
!1052 = metadata !{i32 786443, metadata !238, metadata !1050, i32 575, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1053 = metadata !{i32 577, i32 0, metadata !1052, null}
!1054 = metadata !{i32 578, i32 0, metadata !1052, null}
!1055 = metadata !{i32 579, i32 0, metadata !273, null}
!1056 = metadata !{i32 580, i32 0, metadata !273, null}
!1057 = metadata !{i32 786689, metadata !274, metadata !"n", metadata !244, i32 16777858, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 642]
!1058 = metadata !{i32 642, i32 0, metadata !274, null}
!1059 = metadata !{i32 786689, metadata !274, metadata !"arg", metadata !244, i32 33555074, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 642]
!1060 = metadata !{i32 644, i32 0, metadata !274, null}
!1061 = metadata !{i32 786689, metadata !277, metadata !"arg", metadata !244, i32 16777864, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 648]
!1062 = metadata !{i32 648, i32 0, metadata !277, null}
!1063 = metadata !{i32 650, i32 0, metadata !277, null}
!1064 = metadata !{i32 786689, metadata !280, metadata !"n", metadata !244, i32 16777880, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 664]
!1065 = metadata !{i32 664, i32 0, metadata !280, null}
!1066 = metadata !{i32 786689, metadata !280, metadata !"s", metadata !244, i32 33555096, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 664]
!1067 = metadata !{i32 786689, metadata !280, metadata !"arg", metadata !244, i32 50332312, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 664]
!1068 = metadata !{i32 786688, metadata !280, metadata !"o", metadata !244, i32 666, metadata !269, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 666]
!1069 = metadata !{i32 666, i32 0, metadata !280, null}
!1070 = metadata !{i32 667, i32 0, metadata !280, null}
!1071 = metadata !{i32 786689, metadata !283, metadata !"n", metadata !244, i32 16777887, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 671]
!1072 = metadata !{i32 671, i32 0, metadata !283, null}
!1073 = metadata !{i32 786689, metadata !283, metadata !"s", metadata !244, i32 33555103, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 671]
!1074 = metadata !{i32 786689, metadata !283, metadata !"arg", metadata !244, i32 50332320, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 672]
!1075 = metadata !{i32 672, i32 0, metadata !283, null}
!1076 = metadata !{i32 786689, metadata !283, metadata !"argsize", metadata !244, i32 67109536, metadata !267, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argsize] [line 672]
!1077 = metadata !{i32 786688, metadata !283, metadata !"o", metadata !244, i32 674, metadata !269, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 674]
!1078 = metadata !{i32 674, i32 0, metadata !283, null}
!1079 = metadata !{i32 675, i32 0, metadata !283, null}
!1080 = metadata !{i32 786689, metadata !286, metadata !"s", metadata !244, i32 16777895, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 679]
!1081 = metadata !{i32 679, i32 0, metadata !286, null}
!1082 = metadata !{i32 786689, metadata !286, metadata !"arg", metadata !244, i32 33555111, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 679]
!1083 = metadata !{i32 681, i32 0, metadata !286, null}
!1084 = metadata !{i32 786689, metadata !289, metadata !"arg", metadata !244, i32 16777901, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 685]
!1085 = metadata !{i32 685, i32 0, metadata !289, null}
!1086 = metadata !{i32 786689, metadata !289, metadata !"ch", metadata !244, i32 33555117, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ch] [line 685]
!1087 = metadata !{i32 786688, metadata !289, metadata !"options", metadata !244, i32 687, metadata !248, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [options] [line 687]
!1088 = metadata !{i32 687, i32 0, metadata !289, null}
!1089 = metadata !{i32 688, i32 0, metadata !289, null}
!1090 = metadata !{i32 689, i32 0, metadata !289, null}
!1091 = metadata !{i32 690, i32 0, metadata !289, null}
!1092 = metadata !{i32 786689, metadata !292, metadata !"arg", metadata !244, i32 16777910, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 694]
!1093 = metadata !{i32 694, i32 0, metadata !292, null}
!1094 = metadata !{i32 696, i32 0, metadata !292, null}
!1095 = metadata !{i32 786689, metadata !299, metadata !"buffer", metadata !244, i32 16777388, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer] [line 172]
!1096 = metadata !{i32 172, i32 0, metadata !299, null}
!1097 = metadata !{i32 786689, metadata !299, metadata !"buffersize", metadata !244, i32 33554604, metadata !267, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffersize] [line 172]
!1098 = metadata !{i32 786689, metadata !299, metadata !"arg", metadata !244, i32 50331821, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 173]
!1099 = metadata !{i32 173, i32 0, metadata !299, null}
!1100 = metadata !{i32 786689, metadata !299, metadata !"argsize", metadata !244, i32 67109037, metadata !267, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argsize] [line 173]
!1101 = metadata !{i32 786689, metadata !299, metadata !"quoting_style", metadata !244, i32 83886254, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [quoting_style] [line 174]
!1102 = metadata !{i32 174, i32 0, metadata !299, null}
!1103 = metadata !{i32 786689, metadata !299, metadata !"o", metadata !244, i32 100663471, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 175]
!1104 = metadata !{i32 175, i32 0, metadata !299, null}
!1105 = metadata !{i32 786688, metadata !299, metadata !"i", metadata !244, i32 177, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 177]
!1106 = metadata !{i32 177, i32 0, metadata !299, null}
!1107 = metadata !{i32 786688, metadata !299, metadata !"len", metadata !244, i32 178, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 178]
!1108 = metadata !{i32 178, i32 0, metadata !299, null}
!1109 = metadata !{i32 786688, metadata !299, metadata !"quote_string", metadata !244, i32 179, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [quote_string] [line 179]
!1110 = metadata !{i32 179, i32 0, metadata !299, null}
!1111 = metadata !{i32 786688, metadata !299, metadata !"quote_string_len", metadata !244, i32 180, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [quote_string_len] [line 180]
!1112 = metadata !{i32 180, i32 0, metadata !299, null}
!1113 = metadata !{i32 786688, metadata !299, metadata !"backslash_escapes", metadata !244, i32 181, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [backslash_escapes] [line 181]
!1114 = metadata !{i32 181, i32 0, metadata !299, null}
!1115 = metadata !{i32 786688, metadata !299, metadata !"unibyte_locale", metadata !244, i32 182, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [unibyte_locale] [line 182]
!1116 = metadata !{i32 182, i32 0, metadata !299, null}
!1117 = metadata !{i32 193, i32 0, metadata !299, null}
!1118 = metadata !{i32 196, i32 0, metadata !1119, null}
!1119 = metadata !{i32 786443, metadata !238, metadata !299, i32 194, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1120 = metadata !{i32 196, i32 0, metadata !1121, null}
!1121 = metadata !{i32 786443, metadata !238, metadata !1122, i32 196, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1122 = metadata !{i32 786443, metadata !238, metadata !1119, i32 196, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1123 = metadata !{i32 196, i32 0, metadata !1122, null}
!1124 = metadata !{i32 197, i32 0, metadata !1119, null}
!1125 = metadata !{i32 198, i32 0, metadata !1119, null}
!1126 = metadata !{i32 199, i32 0, metadata !1119, null}
!1127 = metadata !{i32 200, i32 0, metadata !1119, null}
!1128 = metadata !{i32 203, i32 0, metadata !1119, null}
!1129 = metadata !{i32 204, i32 0, metadata !1119, null}
!1130 = metadata !{i32 786688, metadata !1131, metadata !"left", metadata !244, i32 229, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [left] [line 229]
!1131 = metadata !{i32 786443, metadata !238, metadata !1119, i32 208, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1132 = metadata !{i32 229, i32 0, metadata !1131, null}
!1133 = metadata !{i32 786688, metadata !1131, metadata !"right", metadata !244, i32 230, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [right] [line 230]
!1134 = metadata !{i32 230, i32 0, metadata !1131, null}
!1135 = metadata !{i32 231, i32 0, metadata !1136, null}
!1136 = metadata !{i32 786443, metadata !238, metadata !1131, i32 231, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1137 = metadata !{i32 232, i32 0, metadata !1136, null}
!1138 = metadata !{i32 232, i32 0, metadata !1139, null}
!1139 = metadata !{i32 786443, metadata !238, metadata !1140, i32 232, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1140 = metadata !{i32 786443, metadata !238, metadata !1136, i32 232, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1141 = metadata !{i32 232, i32 0, metadata !1140, null}
!1142 = metadata !{i32 233, i32 0, metadata !1131, null}
!1143 = metadata !{i32 234, i32 0, metadata !1131, null}
!1144 = metadata !{i32 235, i32 0, metadata !1131, null}
!1145 = metadata !{i32 237, i32 0, metadata !1119, null}
!1146 = metadata !{i32 240, i32 0, metadata !1119, null}
!1147 = metadata !{i32 240, i32 0, metadata !1148, null}
!1148 = metadata !{i32 786443, metadata !238, metadata !1149, i32 240, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1149 = metadata !{i32 786443, metadata !238, metadata !1119, i32 240, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1150 = metadata !{i32 240, i32 0, metadata !1149, null}
!1151 = metadata !{i32 241, i32 0, metadata !1119, null}
!1152 = metadata !{i32 242, i32 0, metadata !1119, null}
!1153 = metadata !{i32 243, i32 0, metadata !1119, null}
!1154 = metadata !{i32 246, i32 0, metadata !1119, null}
!1155 = metadata !{i32 249, i32 0, metadata !1156, null}
!1156 = metadata !{i32 786443, metadata !238, metadata !299, i32 249, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1157 = metadata !{i32 786688, metadata !1158, metadata !"c", metadata !244, i32 251, metadata !994, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 251]
!1158 = metadata !{i32 786443, metadata !238, metadata !1156, i32 250, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1159 = metadata !{i32 251, i32 0, metadata !1158, null}
!1160 = metadata !{i32 786688, metadata !1158, metadata !"esc", metadata !244, i32 252, metadata !994, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [esc] [line 252]
!1161 = metadata !{i32 252, i32 0, metadata !1158, null}
!1162 = metadata !{i32 254, i32 0, metadata !1163, null}
!1163 = metadata !{i32 786443, metadata !238, metadata !1158, i32 254, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1164 = metadata !{i32 257, i32 0, metadata !1163, null}
!1165 = metadata !{i32 258, i32 0, metadata !1163, null}
!1166 = metadata !{i32 258, i32 0, metadata !1167, null}
!1167 = metadata !{i32 786443, metadata !238, metadata !1168, i32 258, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1168 = metadata !{i32 786443, metadata !238, metadata !1163, i32 258, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1169 = metadata !{i32 258, i32 0, metadata !1168, null}
!1170 = metadata !{i32 260, i32 0, metadata !1158, null}
!1171 = metadata !{i32 261, i32 0, metadata !1158, null}
!1172 = metadata !{i32 264, i32 0, metadata !1173, null}
!1173 = metadata !{i32 786443, metadata !238, metadata !1174, i32 264, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1174 = metadata !{i32 786443, metadata !238, metadata !1158, i32 262, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1175 = metadata !{i32 266, i32 0, metadata !1176, null}
!1176 = metadata !{i32 786443, metadata !238, metadata !1173, i32 265, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1177 = metadata !{i32 266, i32 0, metadata !1178, null}
!1178 = metadata !{i32 786443, metadata !238, metadata !1179, i32 266, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1179 = metadata !{i32 786443, metadata !238, metadata !1176, i32 266, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1180 = metadata !{i32 266, i32 0, metadata !1179, null}
!1181 = metadata !{i32 267, i32 0, metadata !1176, null}
!1182 = metadata !{i32 267, i32 0, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !238, metadata !1184, i32 267, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1184 = metadata !{i32 786443, metadata !238, metadata !1176, i32 267, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1185 = metadata !{i32 267, i32 0, metadata !1184, null}
!1186 = metadata !{i32 268, i32 0, metadata !1176, null}
!1187 = metadata !{i32 268, i32 0, metadata !1188, null}
!1188 = metadata !{i32 786443, metadata !238, metadata !1189, i32 268, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1189 = metadata !{i32 786443, metadata !238, metadata !1176, i32 268, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1190 = metadata !{i32 268, i32 0, metadata !1189, null}
!1191 = metadata !{i32 269, i32 0, metadata !1176, null}
!1192 = metadata !{i32 270, i32 0, metadata !1176, null}
!1193 = metadata !{i32 271, i32 0, metadata !1174, null}
!1194 = metadata !{i32 274, i32 0, metadata !1174, null}
!1195 = metadata !{i32 277, i32 0, metadata !1196, null}
!1196 = metadata !{i32 786443, metadata !238, metadata !1174, i32 275, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1197 = metadata !{i32 280, i32 0, metadata !1198, null}
!1198 = metadata !{i32 786443, metadata !238, metadata !1196, i32 280, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1199 = metadata !{i32 281, i32 0, metadata !1198, null}
!1200 = metadata !{i32 288, i32 0, metadata !1201, null}
!1201 = metadata !{i32 786443, metadata !238, metadata !1198, i32 282, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1202 = metadata !{i32 289, i32 0, metadata !1201, null}
!1203 = metadata !{i32 290, i32 0, metadata !1201, null}
!1204 = metadata !{i32 290, i32 0, metadata !1205, null}
!1205 = metadata !{i32 786443, metadata !238, metadata !1206, i32 290, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1206 = metadata !{i32 786443, metadata !238, metadata !1201, i32 290, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1207 = metadata !{i32 290, i32 0, metadata !1206, null}
!1208 = metadata !{i32 291, i32 0, metadata !1201, null}
!1209 = metadata !{i32 291, i32 0, metadata !1210, null}
!1210 = metadata !{i32 786443, metadata !238, metadata !1211, i32 291, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1211 = metadata !{i32 786443, metadata !238, metadata !1201, i32 291, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1212 = metadata !{i32 291, i32 0, metadata !1211, null}
!1213 = metadata !{i32 292, i32 0, metadata !1201, null}
!1214 = metadata !{i32 292, i32 0, metadata !1215, null}
!1215 = metadata !{i32 786443, metadata !238, metadata !1216, i32 292, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1216 = metadata !{i32 786443, metadata !238, metadata !1201, i32 292, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1217 = metadata !{i32 292, i32 0, metadata !1216, null}
!1218 = metadata !{i32 293, i32 0, metadata !1201, null}
!1219 = metadata !{i32 296, i32 0, metadata !1201, null}
!1220 = metadata !{i32 297, i32 0, metadata !1201, null}
!1221 = metadata !{i32 298, i32 0, metadata !1196, null}
!1222 = metadata !{i32 301, i32 0, metadata !1196, null}
!1223 = metadata !{i32 303, i32 0, metadata !1174, null}
!1224 = metadata !{i32 305, i32 0, metadata !1174, null}
!1225 = metadata !{i32 306, i32 0, metadata !1174, null}
!1226 = metadata !{i32 307, i32 0, metadata !1174, null}
!1227 = metadata !{i32 308, i32 0, metadata !1174, null}
!1228 = metadata !{i32 309, i32 0, metadata !1174, null}
!1229 = metadata !{i32 310, i32 0, metadata !1174, null}
!1230 = metadata !{i32 311, i32 0, metadata !1174, null}
!1231 = metadata !{i32 312, i32 0, metadata !1174, null}
!1232 = metadata !{i32 315, i32 0, metadata !1233, null}
!1233 = metadata !{i32 786443, metadata !238, metadata !1174, i32 315, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1234 = metadata !{i32 316, i32 0, metadata !1233, null}
!1235 = metadata !{i32 318, i32 0, metadata !1236, null}
!1236 = metadata !{i32 786443, metadata !238, metadata !1174, i32 318, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1237 = metadata !{i32 320, i32 0, metadata !1238, null}
!1238 = metadata !{i32 786443, metadata !238, metadata !1236, i32 319, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1239 = metadata !{i32 321, i32 0, metadata !1238, null}
!1240 = metadata !{i32 323, i32 0, metadata !1174, null}
!1241 = metadata !{i32 326, i32 0, metadata !1242, null}
!1242 = metadata !{i32 786443, metadata !238, metadata !1174, i32 326, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1243 = metadata !{i32 327, i32 0, metadata !1242, null}
!1244 = metadata !{i32 330, i32 0, metadata !1245, null}
!1245 = metadata !{i32 786443, metadata !238, metadata !1174, i32 330, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1246 = metadata !{i32 331, i32 0, metadata !1245, null}
!1247 = metadata !{i32 346, i32 0, metadata !1248, null}
!1248 = metadata !{i32 786443, metadata !238, metadata !1174, i32 346, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1249 = metadata !{i32 347, i32 0, metadata !1248, null}
!1250 = metadata !{i32 348, i32 0, metadata !1174, null}
!1251 = metadata !{i32 351, i32 0, metadata !1174, null}
!1252 = metadata !{i32 354, i32 0, metadata !1253, null}
!1253 = metadata !{i32 786443, metadata !238, metadata !1174, i32 352, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1254 = metadata !{i32 357, i32 0, metadata !1253, null}
!1255 = metadata !{i32 357, i32 0, metadata !1256, null}
!1256 = metadata !{i32 786443, metadata !238, metadata !1257, i32 357, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1257 = metadata !{i32 786443, metadata !238, metadata !1253, i32 357, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1258 = metadata !{i32 357, i32 0, metadata !1257, null}
!1259 = metadata !{i32 358, i32 0, metadata !1253, null}
!1260 = metadata !{i32 358, i32 0, metadata !1261, null}
!1261 = metadata !{i32 786443, metadata !238, metadata !1262, i32 358, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1262 = metadata !{i32 786443, metadata !238, metadata !1253, i32 358, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1263 = metadata !{i32 358, i32 0, metadata !1262, null}
!1264 = metadata !{i32 359, i32 0, metadata !1253, null}
!1265 = metadata !{i32 359, i32 0, metadata !1266, null}
!1266 = metadata !{i32 786443, metadata !238, metadata !1267, i32 359, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1267 = metadata !{i32 786443, metadata !238, metadata !1253, i32 359, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1268 = metadata !{i32 359, i32 0, metadata !1267, null}
!1269 = metadata !{i32 360, i32 0, metadata !1253, null}
!1270 = metadata !{i32 363, i32 0, metadata !1253, null}
!1271 = metadata !{i32 365, i32 0, metadata !1174, null}
!1272 = metadata !{i32 381, i32 0, metadata !1174, null}
!1273 = metadata !{i32 786688, metadata !1274, metadata !"m", metadata !244, i32 391, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 391]
!1274 = metadata !{i32 786443, metadata !238, metadata !1174, i32 389, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1275 = metadata !{i32 391, i32 0, metadata !1274, null}
!1276 = metadata !{i32 786688, metadata !1274, metadata !"printable", metadata !244, i32 393, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [printable] [line 393]
!1277 = metadata !{i32 393, i32 0, metadata !1274, null}
!1278 = metadata !{i32 395, i32 0, metadata !1279, null}
!1279 = metadata !{i32 786443, metadata !238, metadata !1274, i32 395, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1280 = metadata !{i32 397, i32 0, metadata !1281, null}
!1281 = metadata !{i32 786443, metadata !238, metadata !1279, i32 396, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1282 = metadata !{i32 398, i32 0, metadata !1281, null}
!1283 = metadata !{i32 399, i32 0, metadata !1281, null}
!1284 = metadata !{i32 786688, metadata !1285, metadata !"mbstate", metadata !244, i32 402, metadata !1286, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mbstate] [line 402]
!1285 = metadata !{i32 786443, metadata !238, metadata !1279, i32 401, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1286 = metadata !{i32 786454, metadata !238, null, metadata !"mbstate_t", i32 106, i64 0, i64 0, i64 0, i32 0, metadata !1287} ; [ DW_TAG_typedef ] [mbstate_t] [line 106, size 0, align 0, offset 0] [from __mbstate_t]
!1287 = metadata !{i32 786454, metadata !238, null, metadata !"__mbstate_t", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !1288} ; [ DW_TAG_typedef ] [__mbstate_t] [line 94, size 0, align 0, offset 0] [from ]
!1288 = metadata !{i32 786451, metadata !1289, null, metadata !"", i32 82, i64 64, i64 32, i32 0, i32 0, null, metadata !1290, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 82, size 64, align 32, offset 0] [def] [from ]
!1289 = metadata !{metadata !"/usr/include/wchar.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib"}
!1290 = metadata !{metadata !1291, metadata !1292}
!1291 = metadata !{i32 786445, metadata !1289, metadata !1288, metadata !"__count", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [__count] [line 84, size 32, align 32, offset 0] [from int]
!1292 = metadata !{i32 786445, metadata !1289, metadata !1288, metadata !"__value", i32 93, i64 32, i64 32, i64 32, i32 0, metadata !1293} ; [ DW_TAG_member ] [__value] [line 93, size 32, align 32, offset 32] [from ]
!1293 = metadata !{i32 786455, metadata !1289, metadata !1288, metadata !"", i32 85, i64 32, i64 32, i64 0, i32 0, null, metadata !1294, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 85, size 32, align 32, offset 0] [def] [from ]
!1294 = metadata !{metadata !1295, metadata !1296}
!1295 = metadata !{i32 786445, metadata !1289, metadata !1293, metadata !"__wch", i32 88, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [__wch] [line 88, size 32, align 32, offset 0] [from unsigned int]
!1296 = metadata !{i32 786445, metadata !1289, metadata !1293, metadata !"__wchb", i32 92, i64 32, i64 8, i64 0, i32 0, metadata !1297} ; [ DW_TAG_member ] [__wchb] [line 92, size 32, align 8, offset 0] [from ]
!1297 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 8, i32 0, i32 0, metadata !43, metadata !1298, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from char]
!1298 = metadata !{metadata !1299}
!1299 = metadata !{i32 786465, i64 0, i64 4}      ; [ DW_TAG_subrange_type ] [0, 3]
!1300 = metadata !{i32 402, i32 0, metadata !1285, null}
!1301 = metadata !{i32 403, i32 0, metadata !1285, null}
!1302 = metadata !{i32 405, i32 0, metadata !1285, null}
!1303 = metadata !{i32 406, i32 0, metadata !1285, null}
!1304 = metadata !{i32 407, i32 0, metadata !1305, null}
!1305 = metadata !{i32 786443, metadata !238, metadata !1285, i32 407, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1306 = metadata !{i32 408, i32 0, metadata !1305, null}
!1307 = metadata !{i32 410, i32 0, metadata !1285, null}
!1308 = metadata !{i32 786688, metadata !1309, metadata !"w", metadata !244, i32 412, metadata !1310, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 412]
!1309 = metadata !{i32 786443, metadata !238, metadata !1285, i32 411, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1310 = metadata !{i32 786454, metadata !238, null, metadata !"wchar_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [wchar_t] [line 65, size 0, align 0, offset 0] [from int]
!1311 = metadata !{i32 412, i32 0, metadata !1309, null}
!1312 = metadata !{i32 786688, metadata !1309, metadata !"bytes", metadata !244, i32 413, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytes] [line 413]
!1313 = metadata !{i32 413, i32 0, metadata !1309, null}
!1314 = metadata !{i32 415, i32 0, metadata !1315, null}
!1315 = metadata !{i32 786443, metadata !238, metadata !1309, i32 415, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1316 = metadata !{i32 416, i32 0, metadata !1315, null}
!1317 = metadata !{i32 417, i32 0, metadata !1318, null}
!1318 = metadata !{i32 786443, metadata !238, metadata !1315, i32 417, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1319 = metadata !{i32 419, i32 0, metadata !1320, null}
!1320 = metadata !{i32 786443, metadata !238, metadata !1318, i32 418, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1321 = metadata !{i32 420, i32 0, metadata !1320, null}
!1322 = metadata !{i32 422, i32 0, metadata !1323, null}
!1323 = metadata !{i32 786443, metadata !238, metadata !1318, i32 422, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1324 = metadata !{i32 424, i32 0, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !238, metadata !1323, i32 423, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1326 = metadata !{i32 425, i32 0, metadata !1325, null}
!1327 = metadata !{i32 426, i32 0, metadata !1325, null}
!1328 = metadata !{i32 427, i32 0, metadata !1325, null}
!1329 = metadata !{i32 435, i32 0, metadata !1330, null}
!1330 = metadata !{i32 786443, metadata !238, metadata !1331, i32 435, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1331 = metadata !{i32 786443, metadata !238, metadata !1323, i32 430, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1332 = metadata !{i32 786688, metadata !1333, metadata !"j", metadata !244, i32 437, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 437]
!1333 = metadata !{i32 786443, metadata !238, metadata !1330, i32 436, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1334 = metadata !{i32 437, i32 0, metadata !1333, null}
!1335 = metadata !{i32 438, i32 0, metadata !1336, null}
!1336 = metadata !{i32 786443, metadata !238, metadata !1333, i32 438, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1337 = metadata !{i32 439, i32 0, metadata !1336, null}
!1338 = metadata !{i32 443, i32 0, metadata !1339, null}
!1339 = metadata !{i32 786443, metadata !238, metadata !1336, i32 440, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1340 = metadata !{i32 446, i32 0, metadata !1339, null}
!1341 = metadata !{i32 447, i32 0, metadata !1339, null}
!1342 = metadata !{i32 448, i32 0, metadata !1333, null}
!1343 = metadata !{i32 450, i32 0, metadata !1344, null}
!1344 = metadata !{i32 786443, metadata !238, metadata !1331, i32 450, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1345 = metadata !{i32 451, i32 0, metadata !1344, null}
!1346 = metadata !{i32 452, i32 0, metadata !1331, null}
!1347 = metadata !{i32 454, i32 0, metadata !1309, null}
!1348 = metadata !{i32 455, i32 0, metadata !1285, null}
!1349 = metadata !{i32 458, i32 0, metadata !1350, null}
!1350 = metadata !{i32 786443, metadata !238, metadata !1274, i32 458, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1351 = metadata !{i32 786688, metadata !1352, metadata !"ilim", metadata !244, i32 462, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ilim] [line 462]
!1352 = metadata !{i32 786443, metadata !238, metadata !1350, i32 459, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1353 = metadata !{i32 462, i32 0, metadata !1352, null}
!1354 = metadata !{i32 464, i32 0, metadata !1355, null}
!1355 = metadata !{i32 786443, metadata !238, metadata !1352, i32 464, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1356 = metadata !{i32 466, i32 0, metadata !1357, null}
!1357 = metadata !{i32 786443, metadata !238, metadata !1358, i32 466, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1358 = metadata !{i32 786443, metadata !238, metadata !1355, i32 465, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1359 = metadata !{i32 468, i32 0, metadata !1360, null}
!1360 = metadata !{i32 786443, metadata !238, metadata !1357, i32 467, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1361 = metadata !{i32 468, i32 0, metadata !1362, null}
!1362 = metadata !{i32 786443, metadata !238, metadata !1363, i32 468, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1363 = metadata !{i32 786443, metadata !238, metadata !1360, i32 468, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1364 = metadata !{i32 468, i32 0, metadata !1363, null}
!1365 = metadata !{i32 469, i32 0, metadata !1360, null}
!1366 = metadata !{i32 469, i32 0, metadata !1367, null}
!1367 = metadata !{i32 786443, metadata !238, metadata !1368, i32 469, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1368 = metadata !{i32 786443, metadata !238, metadata !1360, i32 469, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1369 = metadata !{i32 469, i32 0, metadata !1368, null}
!1370 = metadata !{i32 470, i32 0, metadata !1360, null}
!1371 = metadata !{i32 470, i32 0, metadata !1372, null}
!1372 = metadata !{i32 786443, metadata !238, metadata !1373, i32 470, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1373 = metadata !{i32 786443, metadata !238, metadata !1360, i32 470, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1374 = metadata !{i32 470, i32 0, metadata !1373, null}
!1375 = metadata !{i32 471, i32 0, metadata !1360, null}
!1376 = metadata !{i32 472, i32 0, metadata !1360, null}
!1377 = metadata !{i32 473, i32 0, metadata !1378, null}
!1378 = metadata !{i32 786443, metadata !238, metadata !1358, i32 473, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1379 = metadata !{i32 474, i32 0, metadata !1378, null}
!1380 = metadata !{i32 475, i32 0, metadata !1358, null}
!1381 = metadata !{i32 475, i32 0, metadata !1382, null}
!1382 = metadata !{i32 786443, metadata !238, metadata !1383, i32 475, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1383 = metadata !{i32 786443, metadata !238, metadata !1358, i32 475, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1384 = metadata !{i32 475, i32 0, metadata !1383, null}
!1385 = metadata !{i32 476, i32 0, metadata !1358, null}
!1386 = metadata !{i32 477, i32 0, metadata !1358, null}
!1387 = metadata !{i32 479, i32 0, metadata !1352, null}
!1388 = metadata !{i32 482, i32 0, metadata !1174, null}
!1389 = metadata !{i32 484, i32 0, metadata !1390, null}
!1390 = metadata !{i32 786443, metadata !238, metadata !1158, i32 484, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1391 = metadata !{i32 486, i32 0, metadata !1390, null}
!1392 = metadata !{i32 489, i32 0, metadata !1158, null}
!1393 = metadata !{i32 489, i32 0, metadata !1394, null}
!1394 = metadata !{i32 786443, metadata !238, metadata !1395, i32 489, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1395 = metadata !{i32 786443, metadata !238, metadata !1158, i32 489, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1396 = metadata !{i32 489, i32 0, metadata !1395, null}
!1397 = metadata !{i32 492, i32 0, metadata !1158, null}
!1398 = metadata !{i32 492, i32 0, metadata !1399, null}
!1399 = metadata !{i32 786443, metadata !238, metadata !1400, i32 492, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1400 = metadata !{i32 786443, metadata !238, metadata !1158, i32 492, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1401 = metadata !{i32 492, i32 0, metadata !1400, null}
!1402 = metadata !{i32 493, i32 0, metadata !1158, null}
!1403 = metadata !{i32 495, i32 0, metadata !1404, null}
!1404 = metadata !{i32 786443, metadata !238, metadata !299, i32 495, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1405 = metadata !{i32 496, i32 0, metadata !1404, null}
!1406 = metadata !{i32 498, i32 0, metadata !1407, null}
!1407 = metadata !{i32 786443, metadata !238, metadata !299, i32 498, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1408 = metadata !{i32 499, i32 0, metadata !1409, null}
!1409 = metadata !{i32 786443, metadata !238, metadata !1407, i32 499, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1410 = metadata !{i32 500, i32 0, metadata !1409, null}
!1411 = metadata !{i32 500, i32 0, metadata !1412, null}
!1412 = metadata !{i32 786443, metadata !238, metadata !1413, i32 500, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1413 = metadata !{i32 786443, metadata !238, metadata !1409, i32 500, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1414 = metadata !{i32 500, i32 0, metadata !1413, null}
!1415 = metadata !{i32 502, i32 0, metadata !1416, null}
!1416 = metadata !{i32 786443, metadata !238, metadata !299, i32 502, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1417 = metadata !{i32 503, i32 0, metadata !1416, null}
!1418 = metadata !{i32 504, i32 0, metadata !299, null}
!1419 = metadata !{i32 507, i32 0, metadata !299, null}
!1420 = metadata !{i32 509, i32 0, metadata !299, null}
!1421 = metadata !{i32 786689, metadata !296, metadata !"n", metadata !244, i32 16777807, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 591]
!1422 = metadata !{i32 591, i32 0, metadata !296, null}
!1423 = metadata !{i32 786689, metadata !296, metadata !"arg", metadata !244, i32 33555023, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 591]
!1424 = metadata !{i32 786689, metadata !296, metadata !"argsize", metadata !244, i32 50332239, metadata !267, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argsize] [line 591]
!1425 = metadata !{i32 786689, metadata !296, metadata !"options", metadata !244, i32 67109456, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [options] [line 592]
!1426 = metadata !{i32 592, i32 0, metadata !296, null}
!1427 = metadata !{i32 786688, metadata !296, metadata !"e", metadata !244, i32 594, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 594]
!1428 = metadata !{i32 594, i32 0, metadata !296, null}
!1429 = metadata !{i32 786688, metadata !296, metadata !"n0", metadata !244, i32 596, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n0] [line 596]
!1430 = metadata !{i32 596, i32 0, metadata !296, null}
!1431 = metadata !{i32 786688, metadata !296, metadata !"sv", metadata !244, i32 597, metadata !326, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sv] [line 597]
!1432 = metadata !{i32 597, i32 0, metadata !296, null}
!1433 = metadata !{i32 599, i32 0, metadata !1434, null}
!1434 = metadata !{i32 786443, metadata !238, metadata !296, i32 599, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1435 = metadata !{i32 600, i32 0, metadata !1434, null}
!1436 = metadata !{i32 602, i32 0, metadata !1437, null}
!1437 = metadata !{i32 786443, metadata !238, metadata !296, i32 602, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1438 = metadata !{i32 786688, metadata !1439, metadata !"n1", metadata !244, i32 609, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 609]
!1439 = metadata !{i32 786443, metadata !238, metadata !1437, i32 603, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1440 = metadata !{i32 609, i32 0, metadata !1439, null}
!1441 = metadata !{i32 786688, metadata !1439, metadata !"preallocated", metadata !244, i32 610, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [preallocated] [line 610]
!1442 = metadata !{i32 610, i32 0, metadata !1439, null}
!1443 = metadata !{i32 612, i32 0, metadata !1444, null}
!1444 = metadata !{i32 786443, metadata !238, metadata !1439, i32 612, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1445 = metadata !{i32 613, i32 0, metadata !1444, null}
!1446 = metadata !{i32 615, i32 0, metadata !1439, null}
!1447 = metadata !{i32 616, i32 0, metadata !1448, null}
!1448 = metadata !{i32 786443, metadata !238, metadata !1439, i32 616, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1449 = metadata !{i32 617, i32 0, metadata !1448, null}
!1450 = metadata !{i32 618, i32 0, metadata !1439, null}
!1451 = metadata !{i32 619, i32 0, metadata !1439, null}
!1452 = metadata !{i32 620, i32 0, metadata !1439, null}
!1453 = metadata !{i32 786688, metadata !1454, metadata !"size", metadata !244, i32 623, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 623]
!1454 = metadata !{i32 786443, metadata !238, metadata !296, i32 622, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1455 = metadata !{i32 623, i32 0, metadata !1454, null}
!1456 = metadata !{i32 786688, metadata !1454, metadata !"val", metadata !244, i32 624, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 624]
!1457 = metadata !{i32 624, i32 0, metadata !1454, null}
!1458 = metadata !{i32 786688, metadata !1454, metadata !"qsize", metadata !244, i32 625, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qsize] [line 625]
!1459 = metadata !{i32 625, i32 0, metadata !1454, null}
!1460 = metadata !{i32 627, i32 0, metadata !1461, null}
!1461 = metadata !{i32 786443, metadata !238, metadata !1454, i32 627, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1462 = metadata !{i32 629, i32 0, metadata !1463, null}
!1463 = metadata !{i32 786443, metadata !238, metadata !1461, i32 628, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1464 = metadata !{i32 630, i32 0, metadata !1465, null}
!1465 = metadata !{i32 786443, metadata !238, metadata !1463, i32 630, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1466 = metadata !{i32 631, i32 0, metadata !1465, null}
!1467 = metadata !{i32 632, i32 0, metadata !1463, null}
!1468 = metadata !{i32 633, i32 0, metadata !1463, null}
!1469 = metadata !{i32 634, i32 0, metadata !1463, null}
!1470 = metadata !{i32 636, i32 0, metadata !1454, null}
!1471 = metadata !{i32 637, i32 0, metadata !1454, null}
!1472 = metadata !{i32 786689, metadata !293, metadata !"style", metadata !244, i32 16777871, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [style] [line 655]
!1473 = metadata !{i32 655, i32 0, metadata !293, null}
!1474 = metadata !{i32 786688, metadata !293, metadata !"o", metadata !244, i32 657, metadata !248, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 657]
!1475 = metadata !{i32 657, i32 0, metadata !293, null}
!1476 = metadata !{i32 658, i32 0, metadata !293, null}
!1477 = metadata !{i32 659, i32 0, metadata !293, null}
!1478 = metadata !{i32 660, i32 0, metadata !293, null}
!1479 = metadata !{i32 786689, metadata !302, metadata !"msgid", metadata !244, i32 16777366, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgid] [line 150]
!1480 = metadata !{i32 150, i32 0, metadata !302, null}
!1481 = metadata !{i32 786689, metadata !302, metadata !"s", metadata !244, i32 33554582, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 150]
!1482 = metadata !{i32 786688, metadata !302, metadata !"translation", metadata !244, i32 152, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [translation] [line 152]
!1483 = metadata !{i32 152, i32 0, metadata !302, null}
!1484 = metadata !{i32 153, i32 0, metadata !1485, null}
!1485 = metadata !{i32 786443, metadata !238, metadata !302, i32 153, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/quotearg.c]
!1486 = metadata !{i32 154, i32 0, metadata !1485, null}
!1487 = metadata !{i32 155, i32 0, metadata !302, null}
!1488 = metadata !{i32 786689, metadata !341, metadata !"n", metadata !333, i32 16777329, metadata !337, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 113]
!1489 = metadata !{i32 113, i32 0, metadata !341, null}
!1490 = metadata !{i32 786689, metadata !341, metadata !"s", metadata !333, i32 33554545, metadata !337, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 113]
!1491 = metadata !{i32 115, i32 0, metadata !1492, null}
!1492 = metadata !{i32 786443, metadata !331, metadata !341, i32 115, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/./xalloc.h]
!1493 = metadata !{i32 116, i32 0, metadata !1492, null}
!1494 = metadata !{i32 117, i32 0, metadata !341, null}
!1495 = metadata !{i32 786689, metadata !350, metadata !"n", metadata !351, i32 16777264, metadata !337, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 48]
!1496 = metadata !{i32 48, i32 0, metadata !350, null}
!1497 = metadata !{i32 786688, metadata !1498, metadata !"p", metadata !351, i32 50, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 50]
!1498 = metadata !{i32 786443, metadata !328, metadata !350} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/xmalloc.c]
!1499 = metadata !{i32 50, i32 0, metadata !1498, null}
!1500 = metadata !{i32 51, i32 0, metadata !1501, null}
!1501 = metadata !{i32 786443, metadata !328, metadata !1498, i32 51, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/xmalloc.c]
!1502 = metadata !{i32 52, i32 0, metadata !1501, null}
!1503 = metadata !{i32 53, i32 0, metadata !1498, null}
!1504 = metadata !{i32 786689, metadata !344, metadata !"p", metadata !333, i32 16777340, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 124]
!1505 = metadata !{i32 124, i32 0, metadata !344, null}
!1506 = metadata !{i32 786689, metadata !344, metadata !"n", metadata !333, i32 33554556, metadata !337, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 124]
!1507 = metadata !{i32 786689, metadata !344, metadata !"s", metadata !333, i32 50331772, metadata !337, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 124]
!1508 = metadata !{i32 126, i32 0, metadata !1509, null}
!1509 = metadata !{i32 786443, metadata !331, metadata !344, i32 126, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/./xalloc.h]
!1510 = metadata !{i32 127, i32 0, metadata !1509, null}
!1511 = metadata !{i32 128, i32 0, metadata !344, null}
!1512 = metadata !{i32 786689, metadata !354, metadata !"p", metadata !351, i32 16777276, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 60]
!1513 = metadata !{i32 60, i32 0, metadata !354, null}
!1514 = metadata !{i32 786689, metadata !354, metadata !"n", metadata !351, i32 33554492, metadata !337, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 60]
!1515 = metadata !{i32 62, i32 0, metadata !354, null}
!1516 = metadata !{i32 63, i32 0, metadata !1517, null}
!1517 = metadata !{i32 786443, metadata !328, metadata !354, i32 63, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/xmalloc.c]
!1518 = metadata !{i32 64, i32 0, metadata !1517, null}
!1519 = metadata !{i32 65, i32 0, metadata !354, null}
!1520 = metadata !{i32 786689, metadata !332, metadata !"p", metadata !333, i32 16777403, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 187]
!1521 = metadata !{i32 187, i32 0, metadata !332, null}
!1522 = metadata !{i32 786689, metadata !332, metadata !"pn", metadata !333, i32 33554619, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pn] [line 187]
!1523 = metadata !{i32 786689, metadata !332, metadata !"s", metadata !333, i32 50331835, metadata !337, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 187]
!1524 = metadata !{i32 786688, metadata !332, metadata !"n", metadata !333, i32 189, metadata !337, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 189]
!1525 = metadata !{i32 189, i32 0, metadata !332, null}
!1526 = metadata !{i32 191, i32 0, metadata !1527, null}
!1527 = metadata !{i32 786443, metadata !331, metadata !332, i32 191, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/./xalloc.h]
!1528 = metadata !{i32 193, i32 0, metadata !1529, null}
!1529 = metadata !{i32 786443, metadata !331, metadata !1530, i32 193, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/./xalloc.h]
!1530 = metadata !{i32 786443, metadata !331, metadata !1527, i32 192, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/./xalloc.h]
!1531 = metadata !{i32 201, i32 0, metadata !1532, null}
!1532 = metadata !{i32 786443, metadata !331, metadata !1529, i32 194, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/./xalloc.h]
!1533 = metadata !{i32 202, i32 0, metadata !1532, null}
!1534 = metadata !{i32 203, i32 0, metadata !1532, null}
!1535 = metadata !{i32 204, i32 0, metadata !1530, null}
!1536 = metadata !{i32 211, i32 0, metadata !1537, null}
!1537 = metadata !{i32 786443, metadata !331, metadata !1538, i32 211, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/./xalloc.h]
!1538 = metadata !{i32 786443, metadata !331, metadata !1527, i32 206, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/./xalloc.h]
!1539 = metadata !{i32 212, i32 0, metadata !1537, null}
!1540 = metadata !{i32 213, i32 0, metadata !1538, null}
!1541 = metadata !{i32 216, i32 0, metadata !332, null}
!1542 = metadata !{i32 217, i32 0, metadata !332, null}
!1543 = metadata !{i32 786689, metadata !347, metadata !"n", metadata !333, i32 16777440, metadata !337, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 224]
!1544 = metadata !{i32 224, i32 0, metadata !347, null}
!1545 = metadata !{i32 226, i32 0, metadata !347, null}
!1546 = metadata !{i32 786689, metadata !357, metadata !"p", metadata !351, i32 16777291, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 75]
!1547 = metadata !{i32 75, i32 0, metadata !357, null}
!1548 = metadata !{i32 786689, metadata !357, metadata !"pn", metadata !351, i32 33554507, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pn] [line 75]
!1549 = metadata !{i32 77, i32 0, metadata !357, null}
!1550 = metadata !{i32 786689, metadata !360, metadata !"s", metadata !351, i32 16777301, metadata !337, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 85]
!1551 = metadata !{i32 85, i32 0, metadata !360, null}
!1552 = metadata !{i32 87, i32 0, metadata !360, null}
!1553 = metadata !{i32 786689, metadata !361, metadata !"n", metadata !351, i32 16777310, metadata !337, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 94]
!1554 = metadata !{i32 94, i32 0, metadata !361, null}
!1555 = metadata !{i32 786689, metadata !361, metadata !"s", metadata !351, i32 33554526, metadata !337, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 94]
!1556 = metadata !{i32 786688, metadata !361, metadata !"p", metadata !351, i32 96, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 96]
!1557 = metadata !{i32 96, i32 0, metadata !361, null}
!1558 = metadata !{i32 102, i32 0, metadata !1559, null}
!1559 = metadata !{i32 786443, metadata !328, metadata !361, i32 101, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/xmalloc.c]
!1560 = metadata !{i32 103, i32 0, metadata !1559, null}
!1561 = metadata !{i32 104, i32 0, metadata !361, null}
!1562 = metadata !{i32 786689, metadata !362, metadata !"p", metadata !351, i32 16777328, metadata !365, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 112]
!1563 = metadata !{i32 112, i32 0, metadata !362, null}
!1564 = metadata !{i32 786689, metadata !362, metadata !"s", metadata !351, i32 33554544, metadata !337, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 112]
!1565 = metadata !{i32 114, i32 0, metadata !362, null}
!1566 = metadata !{i32 786689, metadata !367, metadata !"string", metadata !351, i32 16777336, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string] [line 120]
!1567 = metadata !{i32 120, i32 0, metadata !367, null}
!1568 = metadata !{i32 122, i32 0, metadata !367, null}
!1569 = metadata !{i32 786689, metadata !371, metadata !"str", metadata !373, i32 16777262, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 46]
!1570 = metadata !{i32 46, i32 0, metadata !371, null}
!1571 = metadata !{i32 786689, metadata !371, metadata !"ptr", metadata !373, i32 33554478, metadata !376, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ptr] [line 46]
!1572 = metadata !{i32 786689, metadata !371, metadata !"result", metadata !373, i32 50331694, metadata !377, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [result] [line 46]
!1573 = metadata !{i32 786689, metadata !371, metadata !"convert", metadata !373, i32 67108911, metadata !378, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [convert] [line 47]
!1574 = metadata !{i32 47, i32 0, metadata !371, null}
!1575 = metadata !{i32 786688, metadata !371, metadata !"val", metadata !373, i32 49, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 49]
!1576 = metadata !{i32 49, i32 0, metadata !371, null}
!1577 = metadata !{i32 786688, metadata !371, metadata !"terminator", metadata !373, i32 50, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminator] [line 50]
!1578 = metadata !{i32 50, i32 0, metadata !371, null}
!1579 = metadata !{i32 786688, metadata !371, metadata !"ok", metadata !373, i32 51, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ok] [line 51]
!1580 = metadata !{i32 51, i32 0, metadata !371, null}
!1581 = metadata !{i32 53, i32 0, metadata !371, null}
!1582 = metadata !{i32 54, i32 0, metadata !371, null}
!1583 = metadata !{i32 57, i32 0, metadata !1584, null}
!1584 = metadata !{i32 786443, metadata !372, metadata !371, i32 57, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/./xstrtod.c]
!1585 = metadata !{i32 58, i32 0, metadata !1584, null} ; [ DW_TAG_imported_module ]
!1586 = metadata !{i32 63, i32 0, metadata !1587, null}
!1587 = metadata !{i32 786443, metadata !372, metadata !1588, i32 63, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/./xstrtod.c]
!1588 = metadata !{i32 786443, metadata !372, metadata !1584, i32 60, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/./xstrtod.c]
!1589 = metadata !{i32 64, i32 0, metadata !1587, null}
!1590 = metadata !{i32 67, i32 0, metadata !1591, null}
!1591 = metadata !{i32 786443, metadata !372, metadata !371, i32 67, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/./xstrtod.c]
!1592 = metadata !{i32 68, i32 0, metadata !1591, null}
!1593 = metadata !{i32 70, i32 0, metadata !371, null}
!1594 = metadata !{i32 71, i32 0, metadata !371, null}
!1595 = metadata !{i32 786689, metadata !382, metadata !"stream", metadata !383, i32 16777270, metadata !386, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 54]
!1596 = metadata !{i32 54, i32 0, metadata !382, null}
!1597 = metadata !{i32 786688, metadata !382, metadata !"some_pending", metadata !383, i32 56, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [some_pending] [line 56]
!1598 = metadata !{i32 56, i32 0, metadata !382, null}
!1599 = metadata !{i32 786688, metadata !382, metadata !"prev_fail", metadata !383, i32 57, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev_fail] [line 57]
!1600 = metadata !{i32 57, i32 0, metadata !382, null}
!1601 = metadata !{i32 786688, metadata !382, metadata !"fclose_fail", metadata !383, i32 58, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fclose_fail] [line 58]
!1602 = metadata !{i32 58, i32 0, metadata !382, null} ; [ DW_TAG_imported_module ]
!1603 = metadata !{i32 68, i32 0, metadata !1604, null}
!1604 = metadata !{i32 786443, metadata !380, metadata !382, i32 68, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/close-stream.c]
!1605 = metadata !{i32 70, i32 0, metadata !1606, null}
!1606 = metadata !{i32 786443, metadata !380, metadata !1607, i32 70, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/close-stream.c]
!1607 = metadata !{i32 786443, metadata !380, metadata !1604, i32 69, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-2/lib/close-stream.c]
!1608 = metadata !{i32 71, i32 0, metadata !1606, null}
!1609 = metadata !{i32 72, i32 0, metadata !1607, null}
!1610 = metadata !{i32 75, i32 0, metadata !382, null}
!1611 = metadata !{i32 76, i32 0, metadata !382, null}
