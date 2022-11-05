.class public final Lcom/google/android/gms/nearby/connection/zzh;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/connection/zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final status:I

.field private final zzbyg:J

.field private final zzbyh:J

.field private final zzbyi:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/connection/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/connection/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/connection/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIJJ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/nearby/connection/zzh;->zzbyg:J

    iput p3, p0, Lcom/google/android/gms/nearby/connection/zzh;->status:I

    iput-wide p4, p0, Lcom/google/android/gms/nearby/connection/zzh;->zzbyh:J

    iput-wide p6, p0, Lcom/google/android/gms/nearby/connection/zzh;->zzbyi:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/nearby/connection/zzh;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/nearby/connection/zzh;

    iget-wide v2, p0, Lcom/google/android/gms/nearby/connection/zzh;->zzbyg:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/gms/nearby/connection/zzh;->zzbyg:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/nearby/connection/zzh;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/nearby/connection/zzh;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/nearby/connection/zzh;->zzbyh:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/gms/nearby/connection/zzh;->zzbyh:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/nearby/connection/zzh;->zzbyi:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/gms/nearby/connection/zzh;->zzbyi:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getBytesTransferred()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/connection/zzh;->zzbyi:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/connection/zzh;->status:I

    return v0
.end method

.method public getTotalBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/connection/zzh;->zzbyh:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/nearby/connection/zzh;->zzbyg:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/nearby/connection/zzh;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/nearby/connection/zzh;->zzbyh:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/nearby/connection/zzh;->zzbyi:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/connection/zzi;->zza(Lcom/google/android/gms/nearby/connection/zzh;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzOb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/connection/zzh;->zzbyg:J

    return-wide v0
.end method
