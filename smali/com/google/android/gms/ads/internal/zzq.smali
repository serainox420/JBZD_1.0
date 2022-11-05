.class public Lcom/google/android/gms/ads/internal/zzq;
.super Lcom/google/android/gms/internal/zzey$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field private static final zztX:Ljava/lang/Object;

.field private static zztY:Lcom/google/android/gms/ads/internal/zzq;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzrJ:Ljava/lang/Object;

.field private zztZ:Z

.field private zzua:Z

.field private zzub:F

.field private zzuc:Lcom/google/android/gms/internal/zzqh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/zzq;->zztX:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzey$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzrJ:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzub:F

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzuc:Lcom/google/android/gms/internal/zzqh;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zztZ:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzq;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/ads/internal/zzq;
    .locals 3

    sget-object v1, Lcom/google/android/gms/ads/internal/zzq;->zztX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/ads/internal/zzq;->zztY:Lcom/google/android/gms/ads/internal/zzq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/ads/internal/zzq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)V

    sput-object v0, Lcom/google/android/gms/ads/internal/zzq;->zztY:Lcom/google/android/gms/ads/internal/zzq;

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/zzq;->zztY:Lcom/google/android/gms/ads/internal/zzq;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static zzcp()Lcom/google/android/gms/ads/internal/zzq;
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/zzq;->zztX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/ads/internal/zzq;->zztY:Lcom/google/android/gms/ads/internal/zzq;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public initialize()V
    .locals 3

    sget-object v1, Lcom/google/android/gms/ads/internal/zzq;->zztX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zztZ:Z

    if-eqz v0, :cond_0

    const-string v0, "Mobile ads is initialized already."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zztZ:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgd;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzuc:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzpe;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcR()Lcom/google/android/gms/internal/zzdo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdo;->initialize(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAppMuted(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzua:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppVolume(F)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzub:F

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "Wrapped context is null. Failed to open debug menu."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "Context is null. Failed to open debug menu."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/zzpr;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzpr;->setAdUnitId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzuc:Lcom/google/android/gms/internal/zzqh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpr;->zzba(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpr;->showDialog()V

    goto :goto_0
.end method

.method public zzc(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgd;->initialize(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzEJ:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzCN:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    or-int v2, v1, v0

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzCN:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzq$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/zzq$1;-><init>(Lcom/google/android/gms/ads/internal/zzq;Ljava/lang/Runnable;)V

    move-object v0, v1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdi()Lcom/google/android/gms/ads/internal/zzh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzuc:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/google/android/gms/ads/internal/zzh;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public zzcq()F
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzub:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzcr()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzub:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzcs()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzua:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/zzpr;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzpr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzpr;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public zzy(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgd;->initialize(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzEJ:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdi()Lcom/google/android/gms/ads/internal/zzh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzuc:Lcom/google/android/gms/internal/zzqh;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/ads/internal/zzh;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
