.class public Lcom/google/android/gms/fitness/result/zzt;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/result/zzt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final timestamp:J

.field private final versionCode:I

.field private final zzaXe:Ljava/lang/Boolean;

.field private final zzahw:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/result/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/result/zzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/result/zzt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;JLjava/lang/Boolean;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/result/zzt;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/result/zzt;->zzahw:Lcom/google/android/gms/common/api/Status;

    iput-wide p3, p0, Lcom/google/android/gms/fitness/result/zzt;->timestamp:J

    iput-object p5, p0, Lcom/google/android/gms/fitness/result/zzt;->zzaXe:Ljava/lang/Boolean;

    return-void
.end method

.method private zzb(Lcom/google/android/gms/fitness/result/zzt;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/zzt;->zzahw:Lcom/google/android/gms/common/api/Status;

    iget-object v1, p1, Lcom/google/android/gms/fitness/result/zzt;->zzahw:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/result/zzt;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Lcom/google/android/gms/fitness/result/zzt;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    instance-of v0, p1, Lcom/google/android/gms/fitness/result/zzt;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/result/zzt;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/result/zzt;->zzb(Lcom/google/android/gms/fitness/result/zzt;)Z

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

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/zzt;->zzahw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/result/zzt;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/zzt;->zzahw:Lcom/google/android/gms/common/api/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/result/zzt;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "status"

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/zzt;->zzahw:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/result/zzt;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "syncEnabled"

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/zzt;->zzaXe:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/result/zzu;->zza(Lcom/google/android/gms/fitness/result/zzt;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzDy()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/result/zzt;->timestamp:J

    return-wide v0
.end method

.method public zzDz()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/zzt;->zzaXe:Ljava/lang/Boolean;

    return-object v0
.end method
