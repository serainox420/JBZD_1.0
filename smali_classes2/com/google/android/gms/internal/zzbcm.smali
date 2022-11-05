.class public Lcom/google/android/gms/internal/zzbcm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaGg:Lcom/google/android/gms/common/stats/zza;

.field private volatile zzbLj:Z

.field private volatile zzbLk:Z

.field private zzbLl:Lcom/google/android/gms/internal/zzbbs;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzyJ()Lcom/google/android/gms/common/stats/zza;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbcm;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/stats/zza;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/stats/zza;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLk:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcm;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbcm;->zzaGg:Lcom/google/android/gms/common/stats/zza;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbbr;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/zzbbr;->zza(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error - local callback should not throw RemoteException"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbbu;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatch()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbcm;->zzSy()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLl:Lcom/google/android/gms/internal/zzbbs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbbs;->dispatch()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error calling service to dispatch pending events"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbbu;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzbbs$zza;->zzfm(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbbs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLl:Lcom/google/android/gms/internal/zzbbs;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLj:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLk:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLl:Lcom/google/android/gms/internal/zzbbs;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLj:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLk:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzSy()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLj:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLj:Z

    if-eqz v2, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLk:Z

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcm;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/gms/tagmanager/TagManagerService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcm;->zzaGg:Lcom/google/android/gms/common/stats/zza;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbcm;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, p0, v4}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit p0

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLk:Z

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLk:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLk:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "Error connecting to TagManagerService"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbbu;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLk:Z

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLj:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public zzSz()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbcm;->zzSy()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLl:Lcom/google/android/gms/internal/zzbbs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbbs;->zzSb()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Error in resetting service"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbbu;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbcm;->zzSy()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLl:Lcom/google/android/gms/internal/zzbbs;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbbs;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error calling service to emit event"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbbu;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbbr;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbcm;->zzSy()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzbLl:Lcom/google/android/gms/internal/zzbbs;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbbs;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbbr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error calling service to load container"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbbu;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p4, p1}, Lcom/google/android/gms/internal/zzbcm;->zza(Lcom/google/android/gms/internal/zzbbr;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p4, p1}, Lcom/google/android/gms/internal/zzbcm;->zza(Lcom/google/android/gms/internal/zzbbr;Ljava/lang/String;)V

    goto :goto_0
.end method
