.class public Lcom/google/android/gms/fitness/request/zzt;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I

.field private final zzaVU:Lcom/google/android/gms/internal/zzaop;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzy;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzt;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaop$zza;->zzct(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaop;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzt;->zzaVU:Lcom/google/android/gms/internal/zzaop;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzt;->zzaVU:Lcom/google/android/gms/internal/zzaop;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaop;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzt;->versionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzy;->zza(Lcom/google/android/gms/fitness/request/zzt;Landroid/os/Parcel;I)V

    return-void
.end method
