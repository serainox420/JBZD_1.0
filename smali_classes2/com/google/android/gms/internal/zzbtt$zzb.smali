.class Lcom/google/android/gms/internal/zzbtt$zzb;
.super Lcom/google/android/gms/internal/zzabe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbtt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbtt$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzabf;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzabe;-><init>(Lcom/google/android/gms/internal/zzabf;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbtt$zzb;->mListeners:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtt$zzb;->zzaCR:Lcom/google/android/gms/internal/zzabf;

    const-string v1, "StorageOnStopCallback"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/zzabf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzabe;)V

    return-void
.end method

.method public static zzx(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzbtt$zzb;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzabd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzabd;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbtt$zzb;->zzc(Lcom/google/android/gms/internal/zzabd;)Lcom/google/android/gms/internal/zzabf;

    move-result-object v1

    const-string v0, "StorageOnStopCallback"

    const-class v2, Lcom/google/android/gms/internal/zzbtt$zzb;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzabf;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzabe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbtt$zzb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbtt$zzb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbtt$zzb;-><init>(Lcom/google/android/gms/internal/zzabf;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public onStop()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtt$zzb;->mListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtt$zzb;->mListeners:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtt$zzb;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbtt$zza;

    if-eqz v0, :cond_0

    const-string v2, "StorageOnStopCallback"

    const-string v3, "removing subscription from activity."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbtt$zza;->zzUL()Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Lcom/google/android/gms/internal/zzbtt;->zzacT()Lcom/google/android/gms/internal/zzbtt;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbtt$zza;->zzacU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzbtt;->zzaK(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbtt$zza;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtt$zzb;->mListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtt$zzb;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbtt$zza;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtt$zzb;->mListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtt$zzb;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
