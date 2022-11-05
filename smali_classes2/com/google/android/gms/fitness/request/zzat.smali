.class public Lcom/google/android/gms/fitness/request/zzat;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaVw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaWn:Lcom/google/android/gms/internal/zzapc;

.field private final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzau;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzau;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzat;->zzaiI:I

    invoke-static {p2}, Lcom/google/android/gms/internal/zzapc$zza;->zzcG(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzapc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzat;->zzaWn:Lcom/google/android/gms/internal/zzapc;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzat;->zzaVw:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzat;->zzaWn:Lcom/google/android/gms/internal/zzapc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getDataSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzat;->zzaVw:Ljava/util/List;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzat;->zzaiI:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ReadStatsRequest"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzau;->zza(Lcom/google/android/gms/fitness/request/zzat;Landroid/os/Parcel;I)V

    return-void
.end method
