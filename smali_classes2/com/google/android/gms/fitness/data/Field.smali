.class public final Lcom/google/android/gms/fitness/data/Field;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/data/Field$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_ACCURACY:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_ACTIVITY:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_ACTIVITY_CONFIDENCE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_ALTITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_BPM:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_CALORIES:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_CIRCUMFERENCE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_CONFIDENCE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_DISTANCE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_DURATION:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_EXERCISE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_FOOD_ITEM:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_HEIGHT:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_HIGH_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_HIGH_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_LOW_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_LOW_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_MEAL_TYPE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_NUM_SEGMENTS:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_NUTRIENTS:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_OCCURRENCES:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_PERCENTAGE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_REPETITIONS:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_RESISTANCE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_RESISTANCE_TYPE:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_REVOLUTIONS:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_RPM:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_SPEED:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_STEPS:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_STEP_LENGTH:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_VOLUME:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_WATTS:Lcom/google/android/gms/fitness/data/Field;

.field public static final FIELD_WEIGHT:Lcom/google/android/gms/fitness/data/Field;

.field public static final FORMAT_FLOAT:I = 0x2

.field public static final FORMAT_INT32:I = 0x1

.field public static final FORMAT_MAP:I = 0x4

.field public static final FORMAT_STRING:I = 0x3

.field public static final MEAL_TYPE_BREAKFAST:I = 0x1

.field public static final MEAL_TYPE_DINNER:I = 0x3

.field public static final MEAL_TYPE_LUNCH:I = 0x2

.field public static final MEAL_TYPE_SNACK:I = 0x4

.field public static final MEAL_TYPE_UNKNOWN:I = 0x0

.field public static final NUTRIENT_CALCIUM:Ljava/lang/String; = "calcium"

.field public static final NUTRIENT_CALORIES:Ljava/lang/String; = "calories"

.field public static final NUTRIENT_CHOLESTEROL:Ljava/lang/String; = "cholesterol"

.field public static final NUTRIENT_DIETARY_FIBER:Ljava/lang/String; = "dietary_fiber"

.field public static final NUTRIENT_IRON:Ljava/lang/String; = "iron"

.field public static final NUTRIENT_MONOUNSATURATED_FAT:Ljava/lang/String; = "fat.monounsaturated"

.field public static final NUTRIENT_POLYUNSATURATED_FAT:Ljava/lang/String; = "fat.polyunsaturated"

.field public static final NUTRIENT_POTASSIUM:Ljava/lang/String; = "potassium"

.field public static final NUTRIENT_PROTEIN:Ljava/lang/String; = "protein"

.field public static final NUTRIENT_SATURATED_FAT:Ljava/lang/String; = "fat.saturated"

.field public static final NUTRIENT_SODIUM:Ljava/lang/String; = "sodium"

.field public static final NUTRIENT_SUGAR:Ljava/lang/String; = "sugar"

.field public static final NUTRIENT_TOTAL_CARBS:Ljava/lang/String; = "carbs.total"

.field public static final NUTRIENT_TOTAL_FAT:Ljava/lang/String; = "fat.total"

.field public static final NUTRIENT_TRANS_FAT:Ljava/lang/String; = "fat.trans"

.field public static final NUTRIENT_UNSATURATED_FAT:Ljava/lang/String; = "fat.unsaturated"

.field public static final NUTRIENT_VITAMIN_A:Ljava/lang/String; = "vitamin_a"

.field public static final NUTRIENT_VITAMIN_C:Ljava/lang/String; = "vitamin_c"

.field public static final RESISTANCE_TYPE_BARBELL:I = 0x1

.field public static final RESISTANCE_TYPE_BODY:I = 0x6

.field public static final RESISTANCE_TYPE_CABLE:I = 0x2

.field public static final RESISTANCE_TYPE_DUMBBELL:I = 0x3

.field public static final RESISTANCE_TYPE_KETTLEBELL:I = 0x4

.field public static final RESISTANCE_TYPE_MACHINE:I = 0x5

.field public static final RESISTANCE_TYPE_UNKNOWN:I

.field public static final zzaTA:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTB:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTC:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTD:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTE:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTF:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTo:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTp:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTq:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTr:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTs:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTt:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTu:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTv:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTw:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTx:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTy:Lcom/google/android/gms/fitness/data/Field;

.field public static final zzaTz:Lcom/google/android/gms/fitness/data/Field;


# instance fields
.field private final format:I

.field private final name:Ljava/lang/String;

.field private final versionCode:I

.field private final zzaTG:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "activity"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdZ(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_ACTIVITY:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "confidence"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_CONFIDENCE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "activity_confidence"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzee(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_ACTIVITY_CONFIDENCE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "steps"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdZ(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_STEPS:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "step_length"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_STEP_LENGTH:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "duration"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdZ(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_DURATION:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "duration"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzea(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTo:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "activity_duration"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzee(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTp:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "activity_duration.ascending"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzee(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTq:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "activity_duration.descending"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzee(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTr:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "bpm"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_BPM:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "latitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "longitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "accuracy"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_ACCURACY:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "altitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzec(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_ALTITUDE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "distance"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_DISTANCE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "height"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_HEIGHT:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "weight"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_WEIGHT:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "circumference"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_CIRCUMFERENCE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "percentage"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_PERCENTAGE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "speed"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_SPEED:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "rpm"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_RPM:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "google.android.fitness.StrideModel"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeh(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTs:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "revolutions"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdZ(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_REVOLUTIONS:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "calories"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_CALORIES:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "watts"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_WATTS:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "volume"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_VOLUME:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "meal_type"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdZ(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_MEAL_TYPE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "food_item"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzed(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_FOOD_ITEM:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "nutrients"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzee(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_NUTRIENTS:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "elevation.change"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTt:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "elevation.gain"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzee(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTu:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "elevation.loss"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzee(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTv:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "floors"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTw:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "floor.gain"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzee(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTx:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "floor.loss"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzee(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTy:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "exercise"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzed(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_EXERCISE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "repetitions"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdZ(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_REPETITIONS:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "resistance"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_RESISTANCE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "resistance_type"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdZ(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_RESISTANCE_TYPE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "num_segments"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdZ(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_NUM_SEGMENTS:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "average"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "max"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "min"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "low_latitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_LOW_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "low_longitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_LOW_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "high_latitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_HIGH_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "high_longitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_HIGH_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "occurrences"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdZ(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_OCCURRENCES:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "sensor_type"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdZ(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTz:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "sensor_types"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdZ(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTA:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "timestamps"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzef(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTB:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "sample_period"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdZ(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTC:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "num_samples"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdZ(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTD:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "num_dimensions"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzdZ(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "sensor_values"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->zzeg(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTF:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ILjava/lang/Boolean;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Field;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Field;->name:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/fitness/data/Field;->format:I

    iput-object p4, p0, Lcom/google/android/gms/fitness/data/Field;->zzaTG:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(ILjava/lang/String;ILjava/lang/Boolean;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/fitness/data/Field;-><init>(ILjava/lang/String;ILjava/lang/Boolean;)V

    return-void
.end method

.method public static zza(Ljava/lang/String;ILjava/lang/Boolean;)Lcom/google/android/gms/fitness/data/Field;
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    :goto_1
    return-object v0

    :sswitch_0
    const-string v1, "accuracy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "activity_confidence"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "activity_duration"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "activity_duration.ascending"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "activity_duration.descending"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "altitude"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "average"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "blood_glucose_level"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v1, "blood_glucose_specimen_source"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v1, "blood_pressure_diastolic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v1, "blood_pressure_diastolic_average"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "blood_pressure_diastolic_max"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "blood_pressure_diastolic_min"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "blood_pressure_measurement_location"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "blood_pressure_systolic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "blood_pressure_systolic_average"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "blood_pressure_systolic_max"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "blood_pressure_systolic_min"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "body_position"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "body_temperature"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "body_temperature_measurement_location"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "bpm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "calories"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "cervical_dilation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "cervical_firmness"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "cervical_mucus_amount"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "cervical_mucus_texture"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "cervical_position"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "circumference"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "confidence"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "distance"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "duration"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "elevation.change"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "elevation.gain"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string v1, "elevation.loss"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string v1, "exercise"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string v1, "floor.gain"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "floor.loss"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_0

    :sswitch_27
    const-string v1, "floors"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_0

    :sswitch_28
    const-string v1, "food_item"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string v1, "height"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const-string v1, "high_latitude"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string v1, "high_longitude"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2b

    goto/16 :goto_0

    :sswitch_2c
    const-string v1, "latitude"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2c

    goto/16 :goto_0

    :sswitch_2d
    const-string v1, "longitude"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2d

    goto/16 :goto_0

    :sswitch_2e
    const-string v1, "low_latitude"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2e

    goto/16 :goto_0

    :sswitch_2f
    const-string v1, "low_longitude"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2f

    goto/16 :goto_0

    :sswitch_30
    const-string v1, "max"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x30

    goto/16 :goto_0

    :sswitch_31
    const-string v1, "meal_type"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x31

    goto/16 :goto_0

    :sswitch_32
    const-string v1, "menstrual_flow"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x32

    goto/16 :goto_0

    :sswitch_33
    const-string v1, "min"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x33

    goto/16 :goto_0

    :sswitch_34
    const-string v1, "num_dimensions"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x34

    goto/16 :goto_0

    :sswitch_35
    const-string v1, "num_samples"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x35

    goto/16 :goto_0

    :sswitch_36
    const-string v1, "num_segments"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x36

    goto/16 :goto_0

    :sswitch_37
    const-string v1, "nutrients"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x37

    goto/16 :goto_0

    :sswitch_38
    const-string v1, "occurrences"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x38

    goto/16 :goto_0

    :sswitch_39
    const-string v1, "ovulation_test_result"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x39

    goto/16 :goto_0

    :sswitch_3a
    const-string v1, "oxygen_saturation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3a

    goto/16 :goto_0

    :sswitch_3b
    const-string v1, "oxygen_saturation_average"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3b

    goto/16 :goto_0

    :sswitch_3c
    const-string v1, "oxygen_saturation_max"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3c

    goto/16 :goto_0

    :sswitch_3d
    const-string v1, "oxygen_saturation_measurement_method"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3d

    goto/16 :goto_0

    :sswitch_3e
    const-string v1, "oxygen_saturation_min"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3e

    goto/16 :goto_0

    :sswitch_3f
    const-string v1, "oxygen_saturation_system"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3f

    goto/16 :goto_0

    :sswitch_40
    const-string v1, "oxygen_therapy_administration_mode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x40

    goto/16 :goto_0

    :sswitch_41
    const-string v1, "timestamps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x41

    goto/16 :goto_0

    :sswitch_42
    const-string v1, "sample_period"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x42

    goto/16 :goto_0

    :sswitch_43
    const-string v1, "sensor_type"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x43

    goto/16 :goto_0

    :sswitch_44
    const-string v1, "sensor_types"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x44

    goto/16 :goto_0

    :sswitch_45
    const-string v1, "sensor_values"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x45

    goto/16 :goto_0

    :sswitch_46
    const-string v1, "supplemental_oxygen_flow_rate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x46

    goto/16 :goto_0

    :sswitch_47
    const-string v1, "supplemental_oxygen_flow_rate_average"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x47

    goto/16 :goto_0

    :sswitch_48
    const-string v1, "supplemental_oxygen_flow_rate_max"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x48

    goto/16 :goto_0

    :sswitch_49
    const-string v1, "supplemental_oxygen_flow_rate_min"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x49

    goto/16 :goto_0

    :sswitch_4a
    const-string v1, "percentage"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x4a

    goto/16 :goto_0

    :sswitch_4b
    const-string v1, "repetitions"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x4b

    goto/16 :goto_0

    :sswitch_4c
    const-string v1, "resistance"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x4c

    goto/16 :goto_0

    :sswitch_4d
    const-string v1, "resistance_type"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x4d

    goto/16 :goto_0

    :sswitch_4e
    const-string v1, "revolutions"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x4e

    goto/16 :goto_0

    :sswitch_4f
    const-string v1, "rpm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x4f

    goto/16 :goto_0

    :sswitch_50
    const-string v1, "speed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x50

    goto/16 :goto_0

    :sswitch_51
    const-string v1, "steps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x51

    goto/16 :goto_0

    :sswitch_52
    const-string v1, "step_length"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x52

    goto/16 :goto_0

    :sswitch_53
    const-string v1, "google.android.fitness.StrideModel"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x53

    goto/16 :goto_0

    :sswitch_54
    const-string v1, "temporal_relation_to_meal"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x54

    goto/16 :goto_0

    :sswitch_55
    const-string v1, "temporal_relation_to_sleep"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x55

    goto/16 :goto_0

    :sswitch_56
    const-string v1, "volume"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x56

    goto/16 :goto_0

    :sswitch_57
    const-string v1, "watts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x57

    goto/16 :goto_0

    :sswitch_58
    const-string v1, "weight"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x58

    goto/16 :goto_0

    :sswitch_59
    const-string v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x59

    goto/16 :goto_0

    :sswitch_5a
    const-string v1, "y"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x5a

    goto/16 :goto_0

    :sswitch_5b
    const-string v1, "z"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x5b

    goto/16 :goto_0

    :sswitch_5c
    const-string v1, "debug_session"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x5c

    goto/16 :goto_0

    :sswitch_5d
    const-string v1, "google.android.fitness.SessionV2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x5d

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_ACCURACY:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_ACTIVITY:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_ACTIVITY_CONFIDENCE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTp:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTq:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_5
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTr:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_6
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_ALTITUDE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_8
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_GLUCOSE_LEVEL:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_9
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_GLUCOSE_SPECIMEN_SOURCE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_a
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_DIASTOLIC:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_b
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_DIASTOLIC_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_c
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_DIASTOLIC_MAX:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_d
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_DIASTOLIC_MIN:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_e
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_MEASUREMENT_LOCATION:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_f
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_SYSTOLIC:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_10
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_SYSTOLIC_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_11
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_SYSTOLIC_MAX:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_12
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_SYSTOLIC_MIN:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_13
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_POSITION:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_14
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_15
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_TEMPERATURE_MEASUREMENT_LOCATION:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_16
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_BPM:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_17
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_CALORIES:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_18
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_CERVICAL_DILATION:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_19
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_CERVICAL_FIRMNESS:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_1a
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_CERVICAL_MUCUS_AMOUNT:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_1b
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_CERVICAL_MUCUS_TEXTURE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_1c
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_CERVICAL_POSITION:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_1d
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_CIRCUMFERENCE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_1e
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_CONFIDENCE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_1f
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_DISTANCE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_20
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTo:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_DURATION:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_21
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTt:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_22
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTu:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_23
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTv:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_24
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_EXERCISE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_25
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTx:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_26
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTy:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_27
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTw:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_28
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_FOOD_ITEM:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_29
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_HEIGHT:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_2a
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_HIGH_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_2b
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_HIGH_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_2c
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_2d
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_2e
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_LOW_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_2f
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_LOW_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_30
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_31
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_MEAL_TYPE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_32
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_MENSTRUAL_FLOW:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_33
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_34
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_35
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTD:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_36
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_NUM_SEGMENTS:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_37
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_NUTRIENTS:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_38
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_OCCURRENCES:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_39
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OVULATION_TEST_RESULT:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_3a
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_3b
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_3c
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_MAX:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_3d
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_MEASUREMENT_METHOD:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_3e
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_MIN:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_3f
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_SYSTEM:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_40
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_THERAPY_ADMINISTRATION_MODE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_41
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTB:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_42
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTC:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_43
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTz:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_44
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTA:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_45
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTF:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_46
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_47
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_48
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE_MAX:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_49
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE_MIN:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_4a
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_PERCENTAGE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_4b
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_REPETITIONS:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_4c
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_RESISTANCE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_4d
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_RESISTANCE_TYPE:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_4e
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_REVOLUTIONS:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_4f
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_RPM:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_50
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_SPEED:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_51
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_STEPS:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_52
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_STEP_LENGTH:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_53
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->zzaTs:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_54
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_TEMPORAL_RELATION_TO_MEAL:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_55
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_TEMPORAL_RELATION_TO_SLEEP:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_56
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_VOLUME:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_57
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_WATTS:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_58
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_WEIGHT:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_59
    sget-object v0, Lcom/google/android/gms/fitness/data/Field$zza;->zzaTH:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_5a
    sget-object v0, Lcom/google/android/gms/fitness/data/Field$zza;->zzaTI:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_5b
    sget-object v0, Lcom/google/android/gms/fitness/data/Field$zza;->zzaTJ:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_5c
    sget-object v0, Lcom/google/android/gms/fitness/data/Field$zza;->zzaTK:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :pswitch_5d
    sget-object v0, Lcom/google/android/gms/fitness/data/Field$zza;->zzaTL:Lcom/google/android/gms/fitness/data/Field;

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7f0f4707 -> :sswitch_0
        -0x7c354356 -> :sswitch_5c
        -0x7796ca40 -> :sswitch_15
        -0x76bbb26c -> :sswitch_20
        -0x6ed4e992 -> :sswitch_8
        -0x62b40cf1 -> :sswitch_1
        -0x5f1ca55e -> :sswitch_18
        -0x5e26f7df -> :sswitch_25
        -0x5e247c3b -> :sswitch_26
        -0x5d8b9bc7 -> :sswitch_36
        -0x5b49e79f -> :sswitch_21
        -0x55df742f -> :sswitch_3a
        -0x55d45394 -> :sswitch_2c
        -0x509d65da -> :sswitch_34
        -0x4bcba219 -> :sswitch_27
        -0x4a6c0e75 -> :sswitch_47
        -0x48c76ed9 -> :sswitch_29
        -0x48c640f3 -> :sswitch_e
        -0x4393733c -> :sswitch_3
        -0x435053b0 -> :sswitch_35
        -0x4234cdac -> :sswitch_28
        -0x36f20d66 -> :sswitch_4a
        -0x36c67f03 -> :sswitch_1c
        -0x305518e6 -> :sswitch_56
        -0x2fe08acd -> :sswitch_f
        -0x2f2ebd88 -> :sswitch_58
        -0x25a321e3 -> :sswitch_7
        -0x255540ae -> :sswitch_2b
        -0x24f2717c -> :sswitch_2f
        -0x1e837eb9 -> :sswitch_45
        -0x1d7dc997 -> :sswitch_2a
        -0x1afacc47 -> :sswitch_52
        -0x1a0ce9ca -> :sswitch_31
        -0x10875bf1 -> :sswitch_1d
        -0xfdc4294 -> :sswitch_37
        -0xd9c9a0e -> :sswitch_3d
        -0xa1234fa -> :sswitch_17
        -0x78ad480 -> :sswitch_4d
        -0x1b440de -> :sswitch_39
        0x78 -> :sswitch_59
        0x79 -> :sswitch_5a
        0x7a -> :sswitch_5b
        0x17ddf -> :sswitch_16
        0x1a564 -> :sswitch_30
        0x1a652 -> :sswitch_33
        0x1b9ef -> :sswitch_4f
        0x3f8d719 -> :sswitch_55
        0x6890047 -> :sswitch_50
        0x68ad327 -> :sswitch_51
        0x6bac6e9 -> :sswitch_57
        0x734dbb4 -> :sswitch_44
        0x83009af -> :sswitch_2d
        0xbcfb8f7 -> :sswitch_2e
        0xd26d3dd -> :sswitch_b
        0xed5c79c -> :sswitch_9
        0x11155a62 -> :sswitch_5
        0x11318bf5 -> :sswitch_1f
        0x124659d8 -> :sswitch_5d
        0x131c6321 -> :sswitch_1b
        0x1b2d7a2e -> :sswitch_4
        0x1c587858 -> :sswitch_11
        0x1c587946 -> :sswitch_12
        0x22aee992 -> :sswitch_1a
        0x2530afaf -> :sswitch_3b
        0x2c003476 -> :sswitch_53
        0x2ec250c2 -> :sswitch_38
        0x305aea4a -> :sswitch_4e
        0x309f265d -> :sswitch_3f
        0x316d5e8a -> :sswitch_1e
        0x31aa5b41 -> :sswitch_54
        0x34a3fa57 -> :sswitch_14
        0x3aac4222 -> :sswitch_4b
        0x3b8291ba -> :sswitch_2
        0x43b629f6 -> :sswitch_42
        0x4c1cbdff -> :sswitch_a
        0x4c910ff6 -> :sswitch_3c
        0x4c9110e4 -> :sswitch_3e
        0x53ac7b24 -> :sswitch_c
        0x53ac7c12 -> :sswitch_d
        0x5b12389f -> :sswitch_43
        0x65dbfa1d -> :sswitch_41
        0x6ebac870 -> :sswitch_22
        0x6ebd4414 -> :sswitch_23
        0x6f175839 -> :sswitch_4c
        0x701c35ef -> :sswitch_40
        0x70ce8848 -> :sswitch_32
        0x74b79fd2 -> :sswitch_48
        0x74b7a0c0 -> :sswitch_49
        0x76334726 -> :sswitch_13
        0x78691711 -> :sswitch_10
        0x79634aa2 -> :sswitch_6
        0x7a9101d8 -> :sswitch_24
        0x7b891969 -> :sswitch_19
        0x7be169ad -> :sswitch_46
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
    .end packed-switch
.end method

.method private zza(Lcom/google/android/gms/fitness/data/Field;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Field;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->format:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Field;->format:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static zzdZ(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static zzea(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    return-object v0
.end method

.method static zzeb(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static zzec(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 3

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    return-object v0
.end method

.method static zzed(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static zzee(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static zzef(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static zzeg(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static zzeh(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static zzei(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 3

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    return-object v0
.end method

.method public static zzn(Ljava/lang/String;I)Lcom/google/android/gms/fitness/data/Field;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/fitness/data/Field;->zza(Ljava/lang/String;ILjava/lang/Boolean;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/fitness/data/Field;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/android/gms/fitness/data/Field;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Field;->zza(Lcom/google/android/gms/fitness/data/Field;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFormat()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->format:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Field;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOptional()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Field;->zzaTG:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const-string v1, "%s(%s)"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Field;->name:Ljava/lang/String;

    aput-object v3, v2, v0

    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->format:I

    if-ne v0, v4, :cond_0

    const-string v0, "i"

    :goto_0
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "f"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzp;->zza(Lcom/google/android/gms/fitness/data/Field;Landroid/os/Parcel;I)V

    return-void
.end method
