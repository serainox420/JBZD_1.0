.class public Lcom/google/android/gms/fitness/request/zzbk;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzbk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaVt:Lcom/google/android/gms/internal/zzapf;

.field private final zzaWJ:Lcom/google/android/gms/fitness/request/zzai;

.field private final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzbl;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzbl;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzbk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaiI:I

    invoke-static {p2}, Lcom/google/android/gms/fitness/request/zzai$zza;->zzcN(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/request/zzai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaWJ:Lcom/google/android/gms/fitness/request/zzai;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzapf$zza;->zzcJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzapf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/BleScanCallback;Lcom/google/android/gms/internal/zzapf;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/fitness/request/zza$zza;->zzCL()Lcom/google/android/gms/fitness/request/zza$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/request/zza$zza;->zzb(Lcom/google/android/gms/fitness/request/BleScanCallback;)Lcom/google/android/gms/fitness/request/zza;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/fitness/request/zzbk;-><init>(Lcom/google/android/gms/fitness/request/zzai;Lcom/google/android/gms/internal/zzapf;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/zzai;Lcom/google/android/gms/internal/zzapf;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaiI:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaWJ:Lcom/google/android/gms/fitness/request/zzai;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaiI:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzbl;->zza(Lcom/google/android/gms/fitness/request/zzbk;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzDm()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbk;->zzaWJ:Lcom/google/android/gms/fitness/request/zzai;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/zzai;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
