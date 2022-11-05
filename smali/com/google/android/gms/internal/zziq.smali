.class public Lcom/google/android/gms/internal/zziq;
.super Lcom/google/android/gms/internal/zzpj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field final zzIs:Lcom/google/android/gms/internal/zzqw;

.field final zzIw:Lcom/google/android/gms/internal/zzis;

.field private final zzIx:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzis;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zziq;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zziq;->zzIw:Lcom/google/android/gms/internal/zzis;

    iput-object p3, p0, Lcom/google/android/gms/internal/zziq;->zzIx:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdj()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzir;->zza(Lcom/google/android/gms/internal/zziq;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziq;->zzIw:Lcom/google/android/gms/internal/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzis;->abort()V

    return-void
.end method

.method public zzco()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zziq;->zzIw:Lcom/google/android/gms/internal/zzis;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziq;->zzIx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzis;->zzad(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zziq$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zziq$1;-><init>(Lcom/google/android/gms/internal/zziq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zziq$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zziq$1;-><init>(Lcom/google/android/gms/internal/zziq;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
