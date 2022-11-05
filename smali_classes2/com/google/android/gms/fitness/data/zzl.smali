.class public Lcom/google/android/gms/fitness/data/zzl;
.super Ljava/lang/Object;


# static fields
.field public static final zzaTd:[Lcom/google/android/gms/fitness/data/DataType;

.field public static final zzaTe:[Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x3e

    new-array v0, v0, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->zzaSS:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WORKOUT_EXERCISE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SAMPLES:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_ACTIVITY_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BASAL_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BASAL_BODY_TEMPERATURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BLOOD_GLUCOSE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BLOOD_GLUCOSE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BLOOD_PRESSURE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BLOOD_PRESSURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_BODY_FAT_PERCENTAGE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_BODY_FAT_PERCENTAGE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzaSW:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzaSY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BODY_TEMPERATURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzaSV:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_BASAL_METABOLIC_RATE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_BASAL_METABOLIC_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_CONSUMED:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_CERVICAL_MUCUS:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_CERVICAL_POSITION:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_PEDALING_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_PEDALING_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_WHEEL_REVOLUTION:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_WHEEL_RPM:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzaSR:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzaSX:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEART_RATE_BPM:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_HEART_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_HEIGHT_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_LOCATION_BOUNDING_BOX:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_LOCATION_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_LOCATION_TRACK:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_MENSTRUATION:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_NUTRITION:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HYDRATION:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_NUTRITION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_OVULATION_TEST:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_OXYGEN_SATURATION:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_OXYGEN_SATURATION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_POWER_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_POWER_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzaSU:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzaST:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_SPEED:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_SPEED_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzaSQ:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzaSP:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_VAGINAL_SPOTTING:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_WEIGHT_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/fitness/data/zzl;->zzaTd:[Lcom/google/android/gms/fitness/data/DataType;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v1, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BASAL_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BASAL_BODY_TEMPERATURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BLOOD_GLUCOSE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BLOOD_GLUCOSE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BLOOD_PRESSURE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BLOOD_PRESSURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BODY_TEMPERATURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_CERVICAL_MUCUS:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_CERVICAL_POSITION:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_MENSTRUATION:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_OVULATION_TEST:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_OXYGEN_SATURATION:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_OXYGEN_SATURATION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_VAGINAL_SPOTTING:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/fitness/data/zzl;->zzaTe:[Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method

.method public static zzdX(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_0
    const-string v1, "com.google.accelerometer"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "com.google.activity.exercise"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "com.google.activity.sample"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "com.google.activity.samples"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "com.google.activity.segment"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "com.google.activity.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "com.google.body.temperature.basal"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "com.google.body.temperature.basal.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "com.google.body.fat.percentage"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v1, "com.google.blood_glucose"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v1, "com.google.blood_glucose.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v1, "com.google.blood_pressure"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_c
    const-string v1, "com.google.blood_pressure.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "com.google.body.fat.percentage.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "com.google.body.hip.circumference"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "com.google.body.hip.circumference.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "com.google.body.temperature"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "com.google.body.temperature.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "com.google.body.waist.circumference"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "com.google.body.waist.circumference.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "com.google.calories.bmr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "com.google.calories.bmr.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "com.google.calories.consumed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "com.google.calories.expended"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "com.google.cervical_mucus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "com.google.cervical_position"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "com.google.cycling.pedaling.cadence"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "com.google.cycling.pedaling.cumulative"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "com.google.cycling.wheel_revolution.cumulative"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "com.google.cycling.wheel_revolution.rpm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "com.google.distance.cumulative"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "com.google.distance.delta"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "com.google.floor_change"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "com.google.floor_change.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "com.google.heart_rate.bpm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string v1, "com.google.heart_rate.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string v1, "com.google.height"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string v1, "com.google.height.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "com.google.location.bounding_box"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_0

    :sswitch_27
    const-string v1, "com.google.location.sample"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_0

    :sswitch_28
    const-string v1, "com.google.location.track"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string v1, "com.google.menstruation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const-string v1, "com.google.nutrition"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string v1, "com.google.hydration"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2b

    goto/16 :goto_0

    :sswitch_2c
    const-string v1, "com.google.nutrition.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2c

    goto/16 :goto_0

    :sswitch_2d
    const-string v1, "com.google.ovulation_test"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2d

    goto/16 :goto_0

    :sswitch_2e
    const-string v1, "com.google.oxygen_saturation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2e

    goto/16 :goto_0

    :sswitch_2f
    const-string v1, "com.google.oxygen_saturation.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2f

    goto/16 :goto_0

    :sswitch_30
    const-string v1, "com.google.power.sample"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x30

    goto/16 :goto_0

    :sswitch_31
    const-string v1, "com.google.power.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x31

    goto/16 :goto_0

    :sswitch_32
    const-string v1, "com.google.sensor.const_rate_events"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x32

    goto/16 :goto_0

    :sswitch_33
    const-string v1, "com.google.sensor.events"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x33

    goto/16 :goto_0

    :sswitch_34
    const-string v1, "com.google.speed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x34

    goto/16 :goto_0

    :sswitch_35
    const-string v1, "com.google.internal.session.debug"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x35

    goto/16 :goto_0

    :sswitch_36
    const-string v1, "com.google.internal.session.v2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x36

    goto/16 :goto_0

    :sswitch_37
    const-string v1, "com.google.speed.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x37

    goto/16 :goto_0

    :sswitch_38
    const-string v1, "com.google.step_count.cadence"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x38

    goto/16 :goto_0

    :sswitch_39
    const-string v1, "com.google.step_count.cumulative"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x39

    goto/16 :goto_0

    :sswitch_3a
    const-string v1, "com.google.step_count.delta"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3a

    goto/16 :goto_0

    :sswitch_3b
    const-string v1, "com.google.step_length"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3b

    goto/16 :goto_0

    :sswitch_3c
    const-string v1, "com.google.stride_model"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3c

    goto/16 :goto_0

    :sswitch_3d
    const-string v1, "com.google.vaginal_spotting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3d

    goto/16 :goto_0

    :sswitch_3e
    const-string v1, "com.google.weight"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3e

    goto/16 :goto_0

    :sswitch_3f
    const-string v1, "com.google.weight.summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3f

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSS:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WORKOUT_EXERCISE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SAMPLES:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_5
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_ACTIVITY_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_6
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BASAL_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BASAL_BODY_TEMPERATURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_8
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_BODY_FAT_PERCENTAGE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_9
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BLOOD_GLUCOSE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_a
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BLOOD_GLUCOSE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_b
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BLOOD_PRESSURE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_c
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BLOOD_PRESSURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_d
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_BODY_FAT_PERCENTAGE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_e
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSW:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_f
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_10
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_11
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BODY_TEMPERATURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_12
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSV:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_13
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_14
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_BASAL_METABOLIC_RATE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_15
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_BASAL_METABOLIC_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_16
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_CONSUMED:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_17
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_18
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_CERVICAL_MUCUS:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_19
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_CERVICAL_POSITION:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_1a
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_PEDALING_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_1b
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_PEDALING_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_1c
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_WHEEL_REVOLUTION:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_1d
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_WHEEL_RPM:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_1e
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_1f
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_20
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSR:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_21
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSX:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_22
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEART_RATE_BPM:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_23
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_HEART_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_24
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_25
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_HEIGHT_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_26
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_LOCATION_BOUNDING_BOX:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_27
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_LOCATION_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_28
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_LOCATION_TRACK:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_29
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_MENSTRUATION:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_2a
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_NUTRITION:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_2b
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HYDRATION:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_2c
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_NUTRITION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_2d
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_OVULATION_TEST:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_2e
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_OXYGEN_SATURATION:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_2f
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_OXYGEN_SATURATION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_30
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_POWER_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_31
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_POWER_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_32
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSU:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_33
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaST:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_34
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_SPEED:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_35
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType$zza;->zzaTb:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_36
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType$zza;->zzaTc:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_37
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_SPEED_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_38
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_39
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_3a
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_3b
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSP:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_3c
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->zzaSQ:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_3d
    sget-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_VAGINAL_SPOTTING:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_3e
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    :pswitch_3f
    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_WEIGHT_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7aca8e3f -> :sswitch_1d
        -0x78dbb2d8 -> :sswitch_16
        -0x78a3165f -> :sswitch_26
        -0x73995747 -> :sswitch_a
        -0x6a534859 -> :sswitch_0
        -0x68c618a5 -> :sswitch_27
        -0x62f0f65d -> :sswitch_29
        -0x58a2a8a7 -> :sswitch_7
        -0x576f2e5d -> :sswitch_21
        -0x5551ea79 -> :sswitch_25
        -0x4a6f73d9 -> :sswitch_1f
        -0x47540203 -> :sswitch_36
        -0x41b72132 -> :sswitch_3a
        -0x418c053f -> :sswitch_2
        -0x41086331 -> :sswitch_24
        -0x3f5cceef -> :sswitch_3b
        -0x3703827a -> :sswitch_1b
        -0x35adf422 -> :sswitch_1a
        -0x34d7fa86 -> :sswitch_28
        -0x2e547067 -> :sswitch_23
        -0x276fb1e0 -> :sswitch_3e
        -0x19531a28 -> :sswitch_3f
        -0x159a1330 -> :sswitch_10
        -0xcf87dff -> :sswitch_9
        -0xb138ceb -> :sswitch_31
        -0xa914958 -> :sswitch_2c
        -0x9cf62d1 -> :sswitch_1
        -0x5d9a8ae -> :sswitch_22
        -0x36313b9 -> :sswitch_14
        -0x29b41b4 -> :sswitch_e
        0x25e77d -> :sswitch_12
        0x334844a -> :sswitch_c
        0x100b5dd2 -> :sswitch_3
        0x11a17525 -> :sswitch_33
        0x11a86cff -> :sswitch_15
        0x135b7527 -> :sswitch_38
        0x1688bcfc -> :sswitch_4
        0x1f93005b -> :sswitch_30
        0x25d69af0 -> :sswitch_32
        0x272fa39d -> :sswitch_39
        0x28b417b3 -> :sswitch_8
        0x322ac56f -> :sswitch_5
        0x34548857 -> :sswitch_37
        0x359fd3fd -> :sswitch_17
        0x37ce7e92 -> :sswitch_b
        0x386d984e -> :sswitch_2b
        0x387123eb -> :sswitch_3c
        0x417634eb -> :sswitch_20
        0x42436c6b -> :sswitch_d
        0x485d9a4b -> :sswitch_3d
        0x53b12729 -> :sswitch_2e
        0x55d3a082 -> :sswitch_2d
        0x5866d0a1 -> :sswitch_6
        0x5ad680e1 -> :sswitch_1c
        0x6157eef0 -> :sswitch_2a
        0x63d46a04 -> :sswitch_f
        0x6c75d235 -> :sswitch_13
        0x728b65e4 -> :sswitch_1e
        0x72ca1c55 -> :sswitch_19
        0x75c5dfed -> :sswitch_18
        0x7604eb32 -> :sswitch_35
        0x7a4ca5e1 -> :sswitch_2f
        0x7a65df9f -> :sswitch_34
        0x7f10d488 -> :sswitch_11
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
    .end packed-switch
.end method
