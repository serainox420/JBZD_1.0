.class public Lcom/google/android/gms/internal/zzov;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcy$zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field zzVV:Z

.field private final zzrJ:Ljava/lang/Object;

.field private final zzts:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzov;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzov;->zzts:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzov;->zzVV:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzov;->zzrJ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public zzC(Z)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzow;->zzjQ()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzov;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzov;->zzVV:Z

    if-ne v0, p1, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzov;->zzVV:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzov;->zzVV:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzov;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzov;->zzts:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzow;->zzd(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzov;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzov;->zzts:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzow;->zze(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzcy$zza;)V
    .locals 1

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzcy$zza;->zzxl:Z

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzov;->zzC(Z)V

    return-void
.end method
