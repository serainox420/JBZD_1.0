.class Lcom/google/android/gms/internal/zzmg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmg;->zzco()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzRo:Lcom/google/android/gms/internal/zzmg;

.field final synthetic zzRp:Lcom/google/android/gms/internal/zzqp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmg;Lcom/google/android/gms/internal/zzqp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmg$2;->zzRo:Lcom/google/android/gms/internal/zzmg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmg$2;->zzRp:Lcom/google/android/gms/internal/zzqp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg$2;->zzRo:Lcom/google/android/gms/internal/zzmg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmg;->zza(Lcom/google/android/gms/internal/zzmg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg$2;->zzRo:Lcom/google/android/gms/internal/zzmg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg$2;->zzRo:Lcom/google/android/gms/internal/zzmg;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmg$2;->zzRo:Lcom/google/android/gms/internal/zzmg;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzmg;->zzb(Lcom/google/android/gms/internal/zzmg;)Lcom/google/android/gms/internal/zzmk$zza;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzmk$zza;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzmg$2;->zzRp:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzmg;->zza(Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzqp;)Lcom/google/android/gms/internal/zzpq;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzmg;->zzRn:Lcom/google/android/gms/internal/zzpq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg$2;->zzRo:Lcom/google/android/gms/internal/zzmg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmg;->zzRn:Lcom/google/android/gms/internal/zzpq;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg$2;->zzRo:Lcom/google/android/gms/internal/zzmg;

    const/4 v2, 0x0

    const-string v3, "Could not start the ad request service."

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzmg;->zza(Lcom/google/android/gms/internal/zzmg;ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg$2;->zzRo:Lcom/google/android/gms/internal/zzmg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzmg;->zzc(Lcom/google/android/gms/internal/zzmg;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
