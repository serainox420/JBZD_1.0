.class public Lcom/google/android/gms/fitness/request/zzb;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaVr:Ljava/lang/String;

.field private final zzaVs:Lcom/google/android/gms/fitness/data/BleDevice;

.field private final zzaVt:Lcom/google/android/gms/internal/zzapf;

.field private final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/fitness/data/BleDevice;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzb;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzb;->zzaVr:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzb;->zzaVs:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-static {p4}, Lcom/google/android/gms/internal/zzapf$zza;->zzcJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzapf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzb;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/BleDevice;Lcom/google/android/gms/internal/zzapf;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzb;->zzaiI:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzb;->zzaVr:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzb;->zzaVs:Lcom/google/android/gms/fitness/data/BleDevice;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzb;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzb;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzb;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzb;->zzaVr:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzb;->zzaiI:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ClaimBleDeviceRequest{%s %s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/zzb;->zzaVr:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/zzb;->zzaVs:Lcom/google/android/gms/fitness/data/BleDevice;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzc;->zza(Lcom/google/android/gms/fitness/request/zzb;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzCM()Lcom/google/android/gms/fitness/data/BleDevice;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzb;->zzaVs:Lcom/google/android/gms/fitness/data/BleDevice;

    return-object v0
.end method
