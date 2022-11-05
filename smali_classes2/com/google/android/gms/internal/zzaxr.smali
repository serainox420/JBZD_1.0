.class public final Lcom/google/android/gms/internal/zzaxr;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaxr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final durationMillis:J

.field private final name:Ljava/lang/String;

.field private final zzbyW:Ljava/lang/String;

.field private final zzbzr:Lcom/google/android/gms/internal/zzawm;

.field private final zzbzs:Lcom/google/android/gms/internal/zzawf;

.field private final zzbzt:Lcom/google/android/gms/nearby/connection/zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaxs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaxs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaxr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/zza;)V
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/internal/zzawm$zza;->zzeI(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzawm;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzawf$zza;->zzeB(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzawf;

    move-result-object v3

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzaxr;-><init>(Lcom/google/android/gms/internal/zzawm;Lcom/google/android/gms/internal/zzawf;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/zza;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzawm;Lcom/google/android/gms/internal/zzawf;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/zza;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxr;->zzbzr:Lcom/google/android/gms/internal/zzawm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaxr;->zzbzs:Lcom/google/android/gms/internal/zzawf;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaxr;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaxr;->zzbyW:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzaxr;->durationMillis:J

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaxr;->zzbzt:Lcom/google/android/gms/nearby/connection/zza;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzaxr;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/zzaxr;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxr;->zzbzr:Lcom/google/android/gms/internal/zzawm;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxr;->zzbzr:Lcom/google/android/gms/internal/zzawm;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxr;->zzbzs:Lcom/google/android/gms/internal/zzawf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxr;->zzbzs:Lcom/google/android/gms/internal/zzawf;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxr;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxr;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxr;->zzbyW:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxr;->zzbyW:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaxr;->durationMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzaxr;->durationMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxr;->zzbzt:Lcom/google/android/gms/nearby/connection/zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxr;->zzbzt:Lcom/google/android/gms/nearby/connection/zza;

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

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxr;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxr;->zzbzr:Lcom/google/android/gms/internal/zzawm;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxr;->zzbzs:Lcom/google/android/gms/internal/zzawf;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxr;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxr;->zzbyW:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaxr;->durationMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxr;->zzbzt:Lcom/google/android/gms/nearby/connection/zza;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaxs;->zza(Lcom/google/android/gms/internal/zzaxr;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzOA()Lcom/google/android/gms/nearby/connection/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxr;->zzbzt:Lcom/google/android/gms/nearby/connection/zza;

    return-object v0
.end method

.method public zzOd()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxr;->zzbzr:Lcom/google/android/gms/internal/zzawm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxr;->zzbzr:Lcom/google/android/gms/internal/zzawm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzawm;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public zzOn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxr;->zzbyW:Ljava/lang/String;

    return-object v0
.end method

.method public zzOz()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxr;->zzbzs:Lcom/google/android/gms/internal/zzawf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxr;->zzbzs:Lcom/google/android/gms/internal/zzawf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzawf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public zzyK()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaxr;->durationMillis:J

    return-wide v0
.end method
