.class public abstract Lcom/google/android/gms/internal/zzyo;
.super Lcom/google/android/gms/internal/zzyp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzyo$zza;
    }
.end annotation


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field protected final zzavP:J

.field protected final zzavQ:Ljava/lang/Runnable;

.field protected zzavR:Z

.field protected final zzuP:Lcom/google/android/gms/common/util/zze;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/util/zze;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-wide/16 v6, 0x3e8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzyo;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/util/zze;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/util/zze;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gms/internal/zzyp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzyo;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyo;->zzuP:Lcom/google/android/gms/common/util/zze;

    new-instance v0, Lcom/google/android/gms/internal/zzyo$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzyo$zza;-><init>(Lcom/google/android/gms/internal/zzyo;Lcom/google/android/gms/internal/zzyo$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzyo;->zzavQ:Ljava/lang/Runnable;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzyo;->zzavP:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzyo;->zzaq(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/zzyo;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/util/zze;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract zzF(J)Z
.end method

.method protected final zzaq(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzyo;->zzavR:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzyo;->zzavR:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyo;->zzavQ:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzyo;->zzavP:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzyo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyo;->zzavQ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public zzuz()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzyo;->zzaq(Z)V

    return-void
.end method
