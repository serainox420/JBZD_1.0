.class public Lcom/google/android/gms/fitness/data/Goal$DurationObjective;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/Goal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationObjective"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Goal$DurationObjective;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I

.field private final zzaTU:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Goal$DurationObjective;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Goal$DurationObjective;->versionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/fitness/data/Goal$DurationObjective;->zzaTU:J

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/fitness/data/Goal$DurationObjective;-><init>(IJ)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/Goal$DurationObjective;)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal$DurationObjective;->zzaTU:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Goal$DurationObjective;->zzaTU:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

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

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Goal$DurationObjective;->zza(Lcom/google/android/gms/fitness/data/Goal$DurationObjective;)Z

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

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal$DurationObjective;->zzaTU:J

    return-wide v0
.end method

.method public getDuration(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal$DurationObjective;->zzaTU:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$DurationObjective;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal$DurationObjective;->zzaTU:J

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "duration"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal$DurationObjective;->zzaTU:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzo;->zza(Lcom/google/android/gms/fitness/data/Goal$DurationObjective;Landroid/os/Parcel;I)V

    return-void
.end method
