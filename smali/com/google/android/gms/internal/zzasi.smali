.class public Lcom/google/android/gms/internal/zzasi;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzasi;",
            ">;"
        }
    .end annotation
.end field

.field static final zzbkM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzarw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mTag:Ljava/lang/String;

.field zzaWw:Lcom/google/android/gms/location/LocationRequest;

.field zzbjl:Z

.field zzbjx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzarw;",
            ">;"
        }
    .end annotation
.end field

.field zzbkN:Z

.field zzbkO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzasi;->zzbkM:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzasj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzasj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzasi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzarw;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzasi;->zzbjl:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzasi;->zzaWw:Lcom/google/android/gms/location/LocationRequest;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzasi;->zzbjx:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzasi;->mTag:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzasi;->zzbkN:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzasi;->zzbkO:Z

    return-void
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzasi;
    .locals 6

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzasi;

    sget-object v2, Lcom/google/android/gms/internal/zzasi;->zzbkM:Ljava/util/List;

    move-object v1, p1

    move-object v3, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzasi;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzasi;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzasi;->zza(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzasi;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/zzasi;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzasi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasi;->zzaWw:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzasi;->zzaWw:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasi;->zzbjx:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzasi;->zzbjx:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasi;->mTag:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzasi;->mTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzasi;->zzbkN:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzasi;->zzbkN:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzasi;->zzbkO:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzasi;->zzbkO:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasi;->zzaWw:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasi;->zzaWw:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasi;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzasi;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " hideAppOps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzasi;->zzbkN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " clients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzasi;->zzbjx:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " forceCoarseLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzasi;->zzbkO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzasj;->zza(Lcom/google/android/gms/internal/zzasi;Landroid/os/Parcel;I)V

    return-void
.end method
