.class public Lcom/google/android/gms/fitness/request/zzn;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/String;

.field private final zzaVT:Lcom/google/android/gms/internal/zzaoo;

.field private final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzn;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzn;->mName:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzaoo$zza;->zzcs(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaoo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzn;->zzaVT:Lcom/google/android/gms/internal/zzaoo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzaoo;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzn;->zzaiI:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzn;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzn;->zzaVT:Lcom/google/android/gms/internal/zzaoo;

    return-void
.end method

.method private zzb(Lcom/google/android/gms/fitness/request/zzn;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzn;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/zzn;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/zzn;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/zzn;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/zzn;->zzb(Lcom/google/android/gms/fitness/request/zzn;)Z

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

.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzn;->zzaVT:Lcom/google/android/gms/internal/zzaoo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaoo;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzn;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzn;->zzaiI:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzn;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzn;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzo;->zza(Lcom/google/android/gms/fitness/request/zzn;Landroid/os/Parcel;I)V

    return-void
.end method
