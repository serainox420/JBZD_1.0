.class Lcom/google/android/gms/ads/internal/overlay/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

.field private zzxK:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzxK:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    return-void
.end method

.method private zziz()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzxK:Z

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzxK:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zziz()V

    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzxK:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzPi:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzid()V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zziz()V

    :cond_0
    return-void
.end method
