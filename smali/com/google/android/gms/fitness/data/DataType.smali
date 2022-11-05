.class public final Lcom/google/android/gms/fitness/data/DataType;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/data/DataType$zza;
    }
.end annotation


# static fields
.field public static final AGGREGATE_ACTIVITY_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_BASAL_METABOLIC_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_BODY_FAT_PERCENTAGE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_CALORIES_CONSUMED:Lcom/google/android/gms/fitness/data/DataType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AGGREGATE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_HEART_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_HEIGHT_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_HYDRATION:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_INPUT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AGGREGATE_LOCATION_BOUNDING_BOX:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_NUTRITION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_POWER_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_SPEED_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_WEIGHT_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIME_TYPE_PREFIX:Ljava/lang/String; = "vnd.google.fitness.data_type/"

.field public static final TYPE_ACTIVITY_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_ACTIVITY_SAMPLES:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_BASAL_METABOLIC_RATE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_BODY_FAT_PERCENTAGE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_CALORIES_CONSUMED:Lcom/google/android/gms/fitness/data/DataType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_CYCLING_PEDALING_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_CYCLING_PEDALING_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_CYCLING_WHEEL_REVOLUTION:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_CYCLING_WHEEL_RPM:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_DISTANCE_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation
.end field

.field public static final TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_HEART_RATE_BPM:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_HEIGHT:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_HYDRATION:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_LOCATION_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_LOCATION_TRACK:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_NUTRITION:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_POWER_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_SPEED:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_STEP_COUNT_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_STEP_COUNT_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation
.end field

.field public static final TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_WORKOUT_EXERCISE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final zzaSP:Lcom/google/android/gms/fitness/data/DataType;

.field public static final zzaSQ:Lcom/google/android/gms/fitness/data/DataType;

.field public static final zzaSR:Lcom/google/android/gms/fitness/data/DataType;

.field public static final zzaSS:Lcom/google/android/gms/fitness/data/DataType;

.field public static final zzaST:Lcom/google/android/gms/fitness/data/DataType;

.field public static final zzaSU:Lcom/google/android/gms/fitness/data/DataType;

.field public static final zzaSV:Lcom/google/android/gms/fitness/data/DataType;

.field public static final zzaSW:Lcom/google/android/gms/fitness/data/DataType;

.field public static final zzaSX:Lcom/google/android/gms/fitness/data/DataType;

.field public static final zzaSY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final zzaSZ:Lcom/google/android/gms/fitness/data/DataType;


# instance fields
.field private final name:Ljava/lang/String;

.field private final versionCode:I

.field private final zzaTa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.step_count.delta"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_STEPS:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.step_count.cumulative"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_STEPS:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.step_length"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_STEP_LENGTH:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSP:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.step_count.cadence"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_RPM:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.stride_model"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->zzaTs:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSQ:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.activity.segment"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_ACTIVITY:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.floor_change"

    new-array v2, v9, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_ACTIVITY:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_CONFIDENCE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->zzaTt:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->zzaTw:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSR:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.calories.consumed"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_CALORIES:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_CONSUMED:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.calories.expended"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_CALORIES:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.calories.bmr"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_CALORIES:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_BASAL_METABOLIC_RATE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.power.sample"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_WATTS:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_POWER_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.activity.sample"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_ACTIVITY:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_CONFIDENCE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.activity.samples"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_ACTIVITY_CONFIDENCE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SAMPLES:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.accelerometer"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field$zza;->zzaTH:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field$zza;->zzaTI:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field$zza;->zzaTJ:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSS:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.sensor.events"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->zzaTz:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->zzaTB:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->zzaTF:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaST:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.sensor.const_rate_events"

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->zzaTA:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->zzaTC:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->zzaTD:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->zzaTE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->zzaTF:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSU:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.heart_rate.bpm"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_BPM:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEART_RATE_BPM:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.location.sample"

    new-array v2, v9, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_ACCURACY:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_ALTITUDE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_LOCATION_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.location.track"

    new-array v2, v9, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_ACCURACY:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_ALTITUDE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_LOCATION_TRACK:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.distance.delta"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_DISTANCE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.distance.cumulative"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_DISTANCE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.speed"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_SPEED:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_SPEED:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.cycling.wheel_revolution.cumulative"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_REVOLUTIONS:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_WHEEL_REVOLUTION:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.cycling.wheel_revolution.rpm"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_RPM:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_WHEEL_RPM:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.cycling.pedaling.cumulative"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_REVOLUTIONS:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_PEDALING_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.cycling.pedaling.cadence"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_RPM:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_PEDALING_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.height"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_HEIGHT:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.weight"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_WEIGHT:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.body.fat.percentage"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_PERCENTAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_BODY_FAT_PERCENTAGE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.body.waist.circumference"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_CIRCUMFERENCE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSV:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.body.hip.circumference"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_CIRCUMFERENCE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSW:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.nutrition"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_NUTRIENTS:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MEAL_TYPE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_FOOD_ITEM:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_NUTRITION:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.hydration"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_VOLUME:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HYDRATION:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.activity.exercise"

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_EXERCISE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_REPETITIONS:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_DURATION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_RESISTANCE_TYPE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_RESISTANCE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WORKOUT_EXERCISE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.activity.summary"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_ACTIVITY:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_DURATION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_NUM_SEGMENTS:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_ACTIVITY_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.floor_change.summary"

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->zzaTq:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->zzaTr:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->zzaTu:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->zzaTv:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->zzaTx:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/gms/fitness/data/Field;->zzaTy:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSX:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.calories.bmr.summary"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_BASAL_METABOLIC_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_CONSUMED:Lcom/google/android/gms/fitness/data/DataType;

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_CALORIES_CONSUMED:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.heart_rate.summary"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_HEART_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.location.bounding_box"

    new-array v2, v9, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_LOW_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_LOW_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_HIGH_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_HIGH_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_LOCATION_BOUNDING_BOX:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.power.summary"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_POWER_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.speed.summary"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_SPEED_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.body.fat.percentage.summary"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_BODY_FAT_PERCENTAGE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.body.hip.circumference.summary"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSY:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.body.waist.circumference.summary"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.weight.summary"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_WEIGHT_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.height.summary"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_HEIGHT_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.nutrition.summary"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_NUTRIENTS:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MEAL_TYPE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_NUTRITION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HYDRATION:Lcom/google/android/gms/fitness/data/DataType;

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_HYDRATION:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_BASAL_METABOLIC_RATE:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_BODY_FAT_PERCENTAGE:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->zzaSW:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->zzaSV:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_CONSUMED:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->zzaSR:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_LOCATION_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_NUTRITION:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HYDRATION:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEART_RATE_BPM:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_POWER_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_SPEED:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/fitness/data/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Field;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/DataType;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/DataType;->name:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->zzaTa:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/fitness/data/DataType;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static getAggregatesForInput(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/fitness/data/zza;->zzaSn:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMimeType(Lcom/google/android/gms/fitness/data/DataType;)Ljava/lang/String;
    .locals 3

    const-string v0, "vnd.google.fitness.data_type/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private zzc(Lcom/google/android/gms/fitness/data/DataType;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->zzaTa:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataType;->zzaTa:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/DataType;->zzc(Lcom/google/android/gms/fitness/data/DataType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Field;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->zzaTa:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->name:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataType;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Lcom/google/android/gms/fitness/data/Field;)I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->zzaTa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s not a field of %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "DataType{%s%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataType;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataType;->zzaTa:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzk;->zza(Lcom/google/android/gms/fitness/data/DataType;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzCk()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->name:Ljava/lang/String;

    const-string v1, "com.google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->name:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->name:Ljava/lang/String;

    goto :goto_0
.end method
