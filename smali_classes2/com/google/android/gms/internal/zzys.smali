.class public Lcom/google/android/gms/internal/zzys;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzys;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaoN:D

.field private zzaoO:Z

.field private zzawc:I

.field private zzawd:I

.field private zzawn:Lcom/google/android/gms/cast/ApplicationMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzyt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzyt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzys;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v5, -0x1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v7, v5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzys;-><init>(DZILcom/google/android/gms/cast/ApplicationMetadata;I)V

    return-void
.end method

.method constructor <init>(DZILcom/google/android/gms/cast/ApplicationMetadata;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzys;->zzaoN:D

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzys;->zzaoO:Z

    iput p4, p0, Lcom/google/android/gms/internal/zzys;->zzawc:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzys;->zzawn:Lcom/google/android/gms/cast/ApplicationMetadata;

    iput p6, p0, Lcom/google/android/gms/internal/zzys;->zzawd:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzys;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzys;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzys;->zzaoN:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzys;->zzaoN:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzys;->zzaoO:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzys;->zzaoO:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzys;->zzawc:I

    iget v3, p1, Lcom/google/android/gms/internal/zzys;->zzawc:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzys;->zzawn:Lcom/google/android/gms/cast/ApplicationMetadata;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzys;->zzawn:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzys;->zzawd:I

    iget v3, p1, Lcom/google/android/gms/internal/zzys;->zzawd:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getActiveInputState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzys;->zzawc:I

    return v0
.end method

.method public getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzys;->zzawn:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public getStandbyState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzys;->zzawd:I

    return v0
.end method

.method public getVolume()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzys;->zzaoN:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzys;->zzaoN:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzys;->zzaoO:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzys;->zzawc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzys;->zzawn:Lcom/google/android/gms/cast/ApplicationMetadata;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzys;->zzawd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzyt;->zza(Lcom/google/android/gms/internal/zzys;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzuK()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzys;->zzaoO:Z

    return v0
.end method
