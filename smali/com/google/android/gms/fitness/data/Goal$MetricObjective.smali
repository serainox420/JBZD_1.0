.class public Lcom/google/android/gms/fitness/data/Goal$MetricObjective;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/Goal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetricObjective"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Goal$MetricObjective;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:D

.field private final versionCode:I

.field private final zzaTV:Ljava/lang/String;

.field private final zzaTW:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;DD)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->zzaTV:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->value:D

    iput-wide p5, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->zzaTW:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;D)V
    .locals 8

    const/4 v2, 0x1

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;-><init>(ILjava/lang/String;DD)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/Goal$MetricObjective;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->zzaTV:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->zzaTV:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->value:D

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->value:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->zzaTW:D

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->zzaTW:D

    cmpl-double v0, v0, v2

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

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->zza(Lcom/google/android/gms/fitness/data/Goal$MetricObjective;)Z

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

.method public getDataTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->zzaTV:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->value:D

    return-wide v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->zzaTV:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "dataTypeName"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->zzaTV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "value"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "initialValue"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->zzaTW:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzu;->zza(Lcom/google/android/gms/fitness/data/Goal$MetricObjective;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzCw()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal$MetricObjective;->zzaTW:D

    return-wide v0
.end method
