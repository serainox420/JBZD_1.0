.class public Lcom/google/android/gms/internal/zzagf$zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzagf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzagf$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzaKx:J

.field public final zzaKy:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzagg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzagg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzagf$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 7

    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    cmp-long v0, p1, v4

    if-ltz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v0, p3, v4

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v0, p1, v4

    if-eqz v0, :cond_0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_3

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzagf$zza;->zzaKx:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzagf$zza;->zzaKy:J

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzagf$zza;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzagf$zza;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzagf$zza;->zzaKx:J

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzagf$zza;->zzqn()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzagf$zza;->zzaKy:J

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzagf$zza;->zzAm()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzagf$zza;->zzaKx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzagf$zza;->zzaKy:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzagg;->zza(Lcom/google/android/gms/internal/zzagf$zza;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzAm()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzagf$zza;->zzaKy:J

    return-wide v0
.end method

.method public zzqn()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzagf$zza;->zzaKx:J

    return-wide v0
.end method
