.class public final Lcom/google/android/gms/internal/zzaxi;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaxi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:J

.field private final type:I

.field private final zzbxZ:[B

.field private final zzbzk:Landroid/os/ParcelFileDescriptor;

.field private final zzbzl:Ljava/lang/String;

.field private final zzbzm:J

.field private final zzbzn:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaxj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaxj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaxi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI[BLandroid/os/ParcelFileDescriptor;Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzaxi;->id:J

    iput p3, p0, Lcom/google/android/gms/internal/zzaxi;->type:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaxi;->zzbxZ:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/zzaxi;->zzbzk:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaxi;->zzbzl:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzaxi;->zzbzm:J

    iput-object p9, p0, Lcom/google/android/gms/internal/zzaxi;->zzbzn:Landroid/os/ParcelFileDescriptor;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzaxi;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/zzaxi;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaxi;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzaxi;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/zzaxi;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/zzaxi;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxi;->zzbxZ:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxi;->zzbxZ:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxi;->zzbzk:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxi;->zzbzk:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxi;->zzbzl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxi;->zzbzl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaxi;->zzbzm:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzaxi;->zzbzm:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxi;->zzbzn:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxi;->zzbzn:Landroid/os/ParcelFileDescriptor;

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

.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxi;->zzbxZ:[B

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaxi;->id:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaxi;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaxi;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzaxi;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxi;->zzbxZ:[B

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxi;->zzbzk:Landroid/os/ParcelFileDescriptor;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxi;->zzbzl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaxi;->zzbzm:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxi;->zzbzn:Landroid/os/ParcelFileDescriptor;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaxj;->zza(Lcom/google/android/gms/internal/zzaxi;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzOs()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxi;->zzbzk:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public zzOt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxi;->zzbzl:Ljava/lang/String;

    return-object v0
.end method

.method public zzOu()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaxi;->zzbzm:J

    return-wide v0
.end method

.method public zzOv()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxi;->zzbzn:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method
