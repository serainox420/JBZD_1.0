.class public Lcom/google/android/gms/fitness/data/zzaa;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/zzaa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaSj:Lcom/google/android/gms/fitness/data/Session;

.field private final zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzab;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/zzaa;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/Session;Lcom/google/android/gms/fitness/data/DataSet;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/zzaa;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/zzaa;->zzaSj:Lcom/google/android/gms/fitness/data/Session;

    iput-object p3, p0, Lcom/google/android/gms/fitness/data/zzaa;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/zzaa;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/zzaa;->zzaSj:Lcom/google/android/gms/fitness/data/Session;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/zzaa;->zzaSj:Lcom/google/android/gms/fitness/data/Session;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/zzaa;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/zzaa;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/zzaa;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/zzaa;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/zzaa;->zza(Lcom/google/android/gms/fitness/data/zzaa;)Z

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

.method public getDataSet()Lcom/google/android/gms/fitness/data/DataSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/zzaa;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    return-object v0
.end method

.method public getSession()Lcom/google/android/gms/fitness/data/Session;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/zzaa;->zzaSj:Lcom/google/android/gms/fitness/data/Session;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/zzaa;->zzaSj:Lcom/google/android/gms/fitness/data/Session;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/zzaa;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "session"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/zzaa;->zzaSj:Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "dataSet"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/zzaa;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzab;->zza(Lcom/google/android/gms/fitness/data/zzaa;Landroid/os/Parcel;I)V

    return-void
.end method
