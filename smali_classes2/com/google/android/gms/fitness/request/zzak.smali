.class public Lcom/google/android/gms/fitness/request/zzak;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzak;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaWc:Lcom/google/android/gms/internal/zzapt;

.field private final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzal;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzal;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzak;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzaiI:I

    invoke-static {p2}, Lcom/google/android/gms/internal/zzapt$zza;->zzcM(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzapt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzak;->zzaWc:Lcom/google/android/gms/internal/zzapt;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzapt;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzak;->zzaiI:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzaWc:Lcom/google/android/gms/internal/zzapt;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzak;->zzaWc:Lcom/google/android/gms/internal/zzapt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzak;->zzaiI:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzal;->zza(Lcom/google/android/gms/fitness/request/zzak;Landroid/os/Parcel;I)V

    return-void
.end method
