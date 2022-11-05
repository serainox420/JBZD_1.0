.class public Lcom/google/android/gms/fitness/request/zzbs;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzbs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I

.field private final zzaWN:Lcom/google/android/gms/fitness/request/zzaj;

.field private final zzaWh:Lcom/google/android/gms/internal/zzapf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzbt;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzbt;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzbs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzbs;->versionCode:I

    if-nez p2, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzbs;->zzaWh:Lcom/google/android/gms/internal/zzapf;

    if-nez p3, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/fitness/request/zzbs;->zzaWN:Lcom/google/android/gms/fitness/request/zzaj;

    return-void

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzapf$zza;->zzcJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzapf;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/google/android/gms/fitness/request/zzaj$zza;->zzcO(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/request/zzaj;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbs;->zzaWh:Lcom/google/android/gms/internal/zzapf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbs;->zzaWh:Lcom/google/android/gms/internal/zzapf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzbs;->versionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzbt;->zza(Lcom/google/android/gms/fitness/request/zzbs;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzDp()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbs;->zzaWN:Lcom/google/android/gms/fitness/request/zzaj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbs;->zzaWN:Lcom/google/android/gms/fitness/request/zzaj;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/zzaj;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
