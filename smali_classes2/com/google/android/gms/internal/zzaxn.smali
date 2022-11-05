.class public final Lcom/google/android/gms/internal/zzaxn;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaxn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;

.field private final zzbyn:Lcom/google/android/gms/internal/zzawl;

.field private final zzbyo:Lcom/google/android/gms/internal/zzawg;

.field private final zzbyp:Ljava/lang/String;

.field private final zzbyq:[B

.field private final zzbzo:Lcom/google/android/gms/internal/zzawh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaxo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaxo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaxn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/internal/zzawl$zza;->zzeH(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzawl;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzawg$zza;->zzeC(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzawg;

    move-result-object v2

    invoke-static {p3}, Lcom/google/android/gms/internal/zzawh$zza;->zzeD(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzawh;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaxn;-><init>(Lcom/google/android/gms/internal/zzawl;Lcom/google/android/gms/internal/zzawg;Lcom/google/android/gms/internal/zzawh;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzawl;Lcom/google/android/gms/internal/zzawg;Lcom/google/android/gms/internal/zzawh;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyn:Lcom/google/android/gms/internal/zzawl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyo:Lcom/google/android/gms/internal/zzawg;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaxn;->zzbzo:Lcom/google/android/gms/internal/zzawh;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaxn;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyp:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyq:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzaxn;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/zzaxn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyn:Lcom/google/android/gms/internal/zzawl;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxn;->zzbyn:Lcom/google/android/gms/internal/zzawl;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyo:Lcom/google/android/gms/internal/zzawg;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxn;->zzbyo:Lcom/google/android/gms/internal/zzawg;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxn;->zzbzo:Lcom/google/android/gms/internal/zzawh;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxn;->zzbzo:Lcom/google/android/gms/internal/zzawh;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxn;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxn;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyp:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxn;->zzbyp:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyq:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxn;->zzbyq:[B

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxn;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyn:Lcom/google/android/gms/internal/zzawl;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyo:Lcom/google/android/gms/internal/zzawg;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxn;->zzbzo:Lcom/google/android/gms/internal/zzawh;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxn;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyp:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyq:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaxo;->zza(Lcom/google/android/gms/internal/zzaxn;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzOd()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyn:Lcom/google/android/gms/internal/zzawl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyn:Lcom/google/android/gms/internal/zzawl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzawl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public zzOe()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyo:Lcom/google/android/gms/internal/zzawg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyo:Lcom/google/android/gms/internal/zzawg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzawg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public zzOf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyp:Ljava/lang/String;

    return-object v0
.end method

.method public zzOg()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxn;->zzbyq:[B

    return-object v0
.end method

.method public zzOw()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxn;->zzbzo:Lcom/google/android/gms/internal/zzawh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxn;->zzbzo:Lcom/google/android/gms/internal/zzawh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzawh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
