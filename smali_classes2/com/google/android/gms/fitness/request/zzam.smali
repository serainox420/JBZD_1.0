.class public Lcom/google/android/gms/fitness/request/zzam;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaTj:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzaWd:Lcom/google/android/gms/internal/zzapa;

.field private final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzan;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzan;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataType;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzam;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzam;->zzaTj:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzapa$zza;->zzcE(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzapa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzam;->zzaWd:Lcom/google/android/gms/internal/zzapa;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/internal/zzapa;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzam;->zzaiI:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzam;->zzaTj:Lcom/google/android/gms/fitness/data/DataType;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzam;->zzaWd:Lcom/google/android/gms/internal/zzapa;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzam;->zzaWd:Lcom/google/android/gms/internal/zzapa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzam;->zzaWd:Lcom/google/android/gms/internal/zzapa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapa;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzam;->zzaTj:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzam;->zzaiI:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzan;->zza(Lcom/google/android/gms/fitness/request/zzam;Landroid/os/Parcel;I)V

    return-void
.end method
