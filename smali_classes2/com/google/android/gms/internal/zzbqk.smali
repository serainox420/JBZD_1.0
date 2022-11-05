.class public Lcom/google/android/gms/internal/zzbqk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbql;


# instance fields
.field private zzcaG:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbqk;->zzcaG:Z

    return-void
.end method

.method private zzWS()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbqk;->zzcaG:Z

    const-string v1, "Transaction expected to already be in progress."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbte;->zzb(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zzWO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbpv;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzWR()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqk;->zzWS()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqk;->zzWS()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqk;->zzWS()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqk;->zzWS()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrc;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbrc;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzbrq;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqk;->zzWS()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrc;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbrc;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzbrq;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzbrq;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqk;->zzWS()V

    return-void
.end method

.method public zzaD(J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqk;->zzWS()V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqk;->zzWS()V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqk;->zzWS()V

    return-void
.end method

.method public zzf(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqu;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbqu;

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/zzbqu;-><init>(Lcom/google/android/gms/internal/zzbrx;ZZ)V

    return-object v0
.end method

.method public zzf(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbqk;->zzcaG:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "runInTransaction called when an existing transaction is already in progress."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbte;->zzb(ZLjava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbqk;->zzcaG:Z

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzbqk;->zzcaG:Z

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzbqk;->zzcaG:Z

    throw v0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzbrc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqk;->zzWS()V

    return-void
.end method

.method public zzh(Lcom/google/android/gms/internal/zzbrc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqk;->zzWS()V

    return-void
.end method

.method public zzi(Lcom/google/android/gms/internal/zzbrc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqk;->zzWS()V

    return-void
.end method

.method public zzk(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbqk;->zzWS()V

    return-void
.end method
