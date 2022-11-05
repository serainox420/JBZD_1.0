.class public Lcom/google/android/gms/fitness/request/zzar;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I

.field private final zzaWj:Lcom/google/android/gms/internal/zzapb;

.field private final zzaWk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/request/zzj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaWl:Z

.field private final zzaWm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzas;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzas;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/request/zzj;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzar;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/internal/zzapb$zza;->zzcF(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzar;->zzaWj:Lcom/google/android/gms/internal/zzapb;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzar;->zzaWk:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/android/gms/fitness/request/zzar;->zzaWl:Z

    iput-boolean p5, p0, Lcom/google/android/gms/fitness/request/zzar;->zzaWm:Z

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzar;->zzaWj:Lcom/google/android/gms/internal/zzapb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzar;->zzaWj:Lcom/google/android/gms/internal/zzapb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapb;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzar;->versionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "params"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzar;->zzaWk:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "server"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/zzar;->zzaWm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "flush"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/zzar;->zzaWl:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzas;->zza(Lcom/google/android/gms/fitness/request/zzar;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzCS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/zzar;->zzaWm:Z

    return v0
.end method

.method public zzCT()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/zzar;->zzaWl:Z

    return v0
.end method

.method public zzDc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/request/zzj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzar;->zzaWk:Ljava/util/List;

    return-object v0
.end method
