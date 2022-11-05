.class public Lcom/google/android/gms/fitness/request/zzu;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaVt:Lcom/google/android/gms/internal/zzapf;

.field private final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzu;->zzaiI:I

    invoke-static {p2}, Lcom/google/android/gms/internal/zzapf$zza;->zzcJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzapf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzu;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzu;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzu;->zzaiI:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DisableFitRequest"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzv;->zza(Lcom/google/android/gms/fitness/request/zzu;Landroid/os/Parcel;I)V

    return-void
.end method
