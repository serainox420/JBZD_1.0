.class public final Lcom/google/android/gms/awareness/fence/TimeFence;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/awareness/fence/TimeFence$TimeInterval;,
        Lcom/google/android/gms/awareness/fence/TimeFence$TimeInstant;
    }
.end annotation


# static fields
.field public static final TIME_INSTANT_SUNRISE:I = 0x1

.field public static final TIME_INSTANT_SUNSET:I = 0x2

.field public static final TIME_INTERVAL_AFTERNOON:I = 0x5

.field public static final TIME_INTERVAL_EVENING:I = 0x6

.field public static final TIME_INTERVAL_HOLIDAY:I = 0x3

.field public static final TIME_INTERVAL_MORNING:I = 0x4

.field public static final TIME_INTERVAL_NIGHT:I = 0x7

.field public static final TIME_INTERVAL_WEEKDAY:I = 0x1

.field public static final TIME_INTERVAL_WEEKEND:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aroundTimeInstant(IJJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown time instant label = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzafe;->zze(JJ)Lcom/google/android/gms/internal/zzafe;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zza(Lcom/google/android/gms/internal/zzafe;)Lcom/google/android/gms/internal/zzaep;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzafe;->zzf(JJ)Lcom/google/android/gms/internal/zzafe;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zza(Lcom/google/android/gms/internal/zzafe;)Lcom/google/android/gms/internal/zzaep;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static inDailyInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 7

    const/4 v0, 0x2

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaff;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zza(Lcom/google/android/gms/internal/zzaff;)Lcom/google/android/gms/internal/zzaep;

    move-result-object v0

    return-object v0
.end method

.method public static inFridayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 7

    const/16 v0, 0xa

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaff;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zza(Lcom/google/android/gms/internal/zzaff;)Lcom/google/android/gms/internal/zzaep;

    move-result-object v0

    return-object v0
.end method

.method public static inInterval(JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaff;->zzg(JJ)Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zza(Lcom/google/android/gms/internal/zzaff;)Lcom/google/android/gms/internal/zzaep;

    move-result-object v0

    return-object v0
.end method

.method public static inMondayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 7

    const/4 v0, 0x6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaff;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zza(Lcom/google/android/gms/internal/zzaff;)Lcom/google/android/gms/internal/zzaep;

    move-result-object v0

    return-object v0
.end method

.method public static inSaturdayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 7

    const/16 v0, 0xb

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaff;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zza(Lcom/google/android/gms/internal/zzaff;)Lcom/google/android/gms/internal/zzaep;

    move-result-object v0

    return-object v0
.end method

.method public static inSundayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 7

    const/4 v0, 0x5

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaff;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zza(Lcom/google/android/gms/internal/zzaff;)Lcom/google/android/gms/internal/zzaep;

    move-result-object v0

    return-object v0
.end method

.method public static inThursdayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 7

    const/16 v0, 0x9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaff;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zza(Lcom/google/android/gms/internal/zzaff;)Lcom/google/android/gms/internal/zzaep;

    move-result-object v0

    return-object v0
.end method

.method public static inTimeInterval(I)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzafg;->zzp(II)Lcom/google/android/gms/internal/zzafg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zza(Lcom/google/android/gms/internal/zzafg;)Lcom/google/android/gms/internal/zzaep;

    move-result-object v0

    return-object v0
.end method

.method public static inTuesdayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 7

    const/4 v0, 0x7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaff;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zza(Lcom/google/android/gms/internal/zzaff;)Lcom/google/android/gms/internal/zzaep;

    move-result-object v0

    return-object v0
.end method

.method public static inWednesdayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 7

    const/16 v0, 0x8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaff;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zza(Lcom/google/android/gms/internal/zzaff;)Lcom/google/android/gms/internal/zzaep;

    move-result-object v0

    return-object v0
.end method
