.class Lcom/google/android/gms/internal/zzwl$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/snapshot/PlacesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzwl$5;->zze(Lcom/google/android/gms/internal/zzwp;)Lcom/google/android/gms/awareness/snapshot/PlacesResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamv:Lcom/google/android/gms/internal/zzwp;

.field private zzamw:Z

.field private zzamx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceLikelihood;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzwl$5;Lcom/google/android/gms/internal/zzwp;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzwl$5$1;->zzamv:Lcom/google/android/gms/internal/zzwp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzwl$5$1;->zzamw:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzwl$5$1;->zzamx:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPlaceLikelihoods()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceLikelihood;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzwl$5$1;->zzamw:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwl$5$1;->zzamx:Ljava/util/List;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzwl$5$1;->zzamw:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzwl$5$1;->zzamv:Lcom/google/android/gms/internal/zzwp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzwp;->zzsb()Lcom/google/android/gms/internal/zzwk;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzwl$5$1;->zzamv:Lcom/google/android/gms/internal/zzwp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzwp;->zzsb()Lcom/google/android/gms/internal/zzwk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzwk;->zzrU()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzwe;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzwe;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzwe;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzwe;->release()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/data/zzd;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    check-cast v0, Lcom/google/android/gms/internal/zzwd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzwd;->getPlaceLikelihoods()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzwl$5$1;->zzamx:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwl$5$1;->zzamx:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzwe;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzwe;->release()V

    throw v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwl$5$1;->zzamv:Lcom/google/android/gms/internal/zzwp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzwp;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
