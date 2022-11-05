.class public final Lcom/google/android/gms/fitness/data/HealthDataTypes;
.super Ljava/lang/Object;


# static fields
.field public static final AGGREGATE_BASAL_BODY_TEMPERATURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_BLOOD_GLUCOSE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_BLOOD_PRESSURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_BODY_TEMPERATURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_OXYGEN_SATURATION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_BASAL_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_BLOOD_GLUCOSE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_BLOOD_PRESSURE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_CERVICAL_MUCUS:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_CERVICAL_POSITION:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_MENSTRUATION:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_OVULATION_TEST:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_OXYGEN_SATURATION:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_VAGINAL_SPOTTING:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.blood_pressure"

    new-array v2, v9, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_SYSTOLIC:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_DIASTOLIC:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_POSITION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_MEASUREMENT_LOCATION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BLOOD_PRESSURE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.blood_glucose"

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_GLUCOSE_LEVEL:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_TEMPORAL_RELATION_TO_MEAL:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MEAL_TYPE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_TEMPORAL_RELATION_TO_SLEEP:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_GLUCOSE_SPECIMEN_SOURCE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BLOOD_GLUCOSE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.oxygen_saturation"

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_THERAPY_ADMINISTRATION_MODE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_SYSTEM:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_MEASUREMENT_METHOD:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_OXYGEN_SATURATION:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.body.temperature"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_TEMPERATURE_MEASUREMENT_LOCATION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.body.temperature.basal"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_TEMPERATURE_MEASUREMENT_LOCATION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BASAL_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.cervical_mucus"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_CERVICAL_MUCUS_TEXTURE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_CERVICAL_MUCUS_AMOUNT:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_CERVICAL_MUCUS:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.cervical_position"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_CERVICAL_POSITION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_CERVICAL_DILATION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_CERVICAL_FIRMNESS:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_CERVICAL_POSITION:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.menstruation"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_MENSTRUAL_FLOW:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_MENSTRUATION:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.ovulation_test"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OVULATION_TEST_RESULT:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_OVULATION_TEST:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.vaginal_spotting"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_OCCURRENCES:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_VAGINAL_SPOTTING:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.blood_pressure.summary"

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_SYSTOLIC_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_SYSTOLIC_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_SYSTOLIC_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_DIASTOLIC_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_DIASTOLIC_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_DIASTOLIC_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_POSITION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_MEASUREMENT_LOCATION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BLOOD_PRESSURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.blood_glucose.summary"

    const/4 v2, 0x7

    new-array v2, v2, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_TEMPORAL_RELATION_TO_MEAL:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MEAL_TYPE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_TEMPORAL_RELATION_TO_SLEEP:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_GLUCOSE_SPECIMEN_SOURCE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BLOOD_GLUCOSE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.oxygen_saturation.summary"

    const/16 v2, 0x9

    new-array v2, v2, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_THERAPY_ADMINISTRATION_MODE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_SYSTEM:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_MEASUREMENT_METHOD:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_OXYGEN_SATURATION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.body.temperature.summary"

    new-array v2, v9, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_TEMPERATURE_MEASUREMENT_LOCATION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BODY_TEMPERATURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.body.temperature.basal.summary"

    new-array v2, v9, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_TEMPERATURE_MEASUREMENT_LOCATION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BASAL_BODY_TEMPERATURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
