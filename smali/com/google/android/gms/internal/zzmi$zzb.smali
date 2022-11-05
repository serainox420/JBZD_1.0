.class public Lcom/google/android/gms/internal/zzmi$zzb;
.super Lcom/google/android/gms/internal/zzmi;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzf$zzb;
.implements Lcom/google/android/gms/common/internal/zzf$zzc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzRq:Lcom/google/android/gms/internal/zzqp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqp",
            "<",
            "Lcom/google/android/gms/internal/zzmk;",
            ">;"
        }
    .end annotation
.end field

.field private final zzRr:Lcom/google/android/gms/internal/zzmh$zza;

.field protected zzRu:Lcom/google/android/gms/internal/zzmj;

.field private zzRv:Z

.field private final zzrJ:Ljava/lang/Object;

.field private zztt:Lcom/google/android/gms/internal/zzqh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzmh$zza;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqh;",
            "Lcom/google/android/gms/internal/zzqp",
            "<",
            "Lcom/google/android/gms/internal/zzmk;",
            ">;",
            "Lcom/google/android/gms/internal/zzmh$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/internal/zzmi;-><init>(Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzmh$zza;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zzrJ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmi$zzb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zztt:Lcom/google/android/gms/internal/zzqh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zzRq:Lcom/google/android/gms/internal/zzqp;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zzRr:Lcom/google/android/gms/internal/zzmh$zza;

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzBT:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zzRv:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdc()Lcom/google/android/gms/internal/zzpw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpw;->zzlb()Landroid/os/Looper;

    move-result-object v2

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzmj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zztt:Lcom/google/android/gms/internal/zzqh;

    iget v5, v1, Lcom/google/android/gms/internal/zzqh;->zzYX:I

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzmj;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf$zzb;Lcom/google/android/gms/common/internal/zzf$zzc;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zzRu:Lcom/google/android/gms/internal/zzmj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmi$zzb;->connect()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zzRu:Lcom/google/android/gms/internal/zzmj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmj;->zzxz()V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmi;->zziP()Ljava/lang/Object;

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 6

    const-string v0, "Cannot connect to remote service, fallback to local instance."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmi$zzb;->zzjp()Lcom/google/android/gms/internal/zzpq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzpq;->zziP()Ljava/lang/Object;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "gms_connection_failed_fallback_to_local"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi$zzb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zztt:Lcom/google/android/gms/internal/zzqh;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzpo;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    const-string v0, "Disconnected from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    return-void
.end method

.method public zzjn()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zzRu:Lcom/google/android/gms/internal/zzmj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmj;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zzRu:Lcom/google/android/gms/internal/zzmj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmj;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zzRu:Lcom/google/android/gms/internal/zzmj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmj;->disconnect()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zzRv:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdc()Lcom/google/android/gms/internal/zzpw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpw;->zzlc()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zzRv:Z

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzjo()Lcom/google/android/gms/internal/zzmt;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zzRu:Lcom/google/android/gms/internal/zzmj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmj;->zzjq()Lcom/google/android/gms/internal/zzmt;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method zzjp()Lcom/google/android/gms/internal/zzpq;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzmi$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi$zzb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zzRq:Lcom/google/android/gms/internal/zzqp;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmi$zzb;->zzRr:Lcom/google/android/gms/internal/zzmh$zza;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzmi$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzmh$zza;)V

    return-object v0
.end method
