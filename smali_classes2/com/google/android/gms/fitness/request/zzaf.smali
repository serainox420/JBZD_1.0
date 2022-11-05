.class public Lcom/google/android/gms/fitness/request/zzaf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzaf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaVY:Lcom/google/android/gms/internal/zzaph;

.field private final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzag;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzaf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzaf;->zzaiI:I

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaph$zza;->zzcL(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaph;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzaf;->zzaVY:Lcom/google/android/gms/internal/zzaph;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzaf;->zzaVY:Lcom/google/android/gms/internal/zzaph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaph;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzaf;->zzaiI:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzag;->zza(Lcom/google/android/gms/fitness/request/zzaf;Landroid/os/Parcel;I)V

    return-void
.end method
