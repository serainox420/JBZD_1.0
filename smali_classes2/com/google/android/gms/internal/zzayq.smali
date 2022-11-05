.class public Lcom/google/android/gms/internal/zzayq;
.super Ljava/lang/Object;


# instance fields
.field private final zzbBu:Landroid/support/v4/f/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/k",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzayj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/f/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/f/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzbBu:Landroid/support/v4/f/k;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzayj;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzayj;->zzOP()Lcom/google/android/gms/internal/zzabh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzabh;->zztK()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized zzk(Lcom/google/android/gms/internal/zzabh;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzabh",
            "<TC;>;)TC;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzbBu:Landroid/support/v4/f/k;

    invoke-virtual {v0}, Landroid/support/v4/f/k;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzbBu:Landroid/support/v4/f/k;

    invoke-virtual {v0, v2}, Landroid/support/v4/f/k;->b(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzbBu:Landroid/support/v4/f/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzayj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzayj;->zzOP()Lcom/google/android/gms/internal/zzabh;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzbBu:Landroid/support/v4/f/k;

    invoke-virtual {v0}, Landroid/support/v4/f/k;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzI(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzayj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;)",
            "Lcom/google/android/gms/internal/zzayj",
            "<TC;>;"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    if-nez p1, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzbBu:Landroid/support/v4/f/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzayj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayq;->zza(Lcom/google/android/gms/internal/zzayj;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzbBu:Landroid/support/v4/f/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzayj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "TC;)",
            "Lcom/google/android/gms/internal/zzayj",
            "<TC;>;"
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzbBu:Landroid/support/v4/f/k;

    invoke-virtual {v0, p2}, Landroid/support/v4/f/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzayj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayq;->zza(Lcom/google/android/gms/internal/zzayj;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzabh;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzayr;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzabh;)Lcom/google/android/gms/internal/zzayj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayq;->zzbBu:Landroid/support/v4/f/k;

    invoke-virtual {v1, p2, v0}, Landroid/support/v4/f/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzi(Lcom/google/android/gms/internal/zzabh;)Lcom/google/android/gms/internal/zzayj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzabh",
            "<TC;>;)",
            "Lcom/google/android/gms/internal/zzayj",
            "<TC;>;"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzayq;->zzk(Lcom/google/android/gms/internal/zzabh;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzayq;->zzI(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzayj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzj(Lcom/google/android/gms/internal/zzabh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzabh",
            "<TC;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzabh;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayq;->zzbBu:Landroid/support/v4/f/k;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzayq;->zzk(Lcom/google/android/gms/internal/zzabh;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/f/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
