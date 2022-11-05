.class Lcom/google/android/gms/internal/zzbnv$1;
.super Lcom/google/android/gms/internal/zzbsy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbnv;->zzb(Lcom/google/android/gms/internal/zzbpa;)Lcom/google/android/gms/internal/zzbpm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcaA:Lcom/google/android/gms/internal/zzbrn;

.field final synthetic zzcaB:Lcom/google/android/gms/internal/zzbnv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnv;Lcom/google/android/gms/internal/zzbrn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnv$1;->zzcaB:Lcom/google/android/gms/internal/zzbnv;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbnv$1;->zzcaA:Lcom/google/android/gms/internal/zzbrn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbsy;-><init>()V

    return-void
.end method


# virtual methods
.method public zzj(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbsy;->zzl(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnv$1;->zzcaA:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/zzbrn;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnv$1;->zzcaB:Lcom/google/android/gms/internal/zzbnv;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbnv;->zza(Lcom/google/android/gms/internal/zzbnv;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/gms/internal/zzbnv$1$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/zzbnv$1$1;-><init>(Lcom/google/android/gms/internal/zzbnv$1;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbnv$1;->zzXt()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method
