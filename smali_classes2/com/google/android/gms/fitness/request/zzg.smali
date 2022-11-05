.class public Lcom/google/android/gms/fitness/request/zzg;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

.field private final zzaVA:Z

.field private final zzaVt:Lcom/google/android/gms/internal/zzapf;

.field private final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSet;Landroid/os/IBinder;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzg;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzg;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzapf$zza;->zzcJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzapf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzg;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    iput-boolean p4, p0, Lcom/google/android/gms/fitness/request/zzg;->zzaVA:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/internal/zzapf;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzg;->zzaiI:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzg;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzg;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/zzg;->zzaVA:Z

    return-void
.end method

.method private zzc(Lcom/google/android/gms/fitness/request/zzg;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzg;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/zzg;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/zzg;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/zzg;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/zzg;->zzc(Lcom/google/android/gms/fitness/request/zzg;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzg;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzg;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataSet()Lcom/google/android/gms/fitness/data/DataSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzg;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzg;->zzaiI:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzg;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "dataSet"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzg;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzh;->zza(Lcom/google/android/gms/fitness/request/zzg;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzCR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/zzg;->zzaVA:Z

    return v0
.end method
