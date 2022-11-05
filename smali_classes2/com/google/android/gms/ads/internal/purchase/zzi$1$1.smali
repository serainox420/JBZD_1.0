.class Lcom/google/android/gms/ads/internal/purchase/zzi$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/purchase/zzi$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzPO:Lcom/google/android/gms/ads/internal/purchase/zzi$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/purchase/zzi$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzi$1$1;->zzPO:Lcom/google/android/gms/ads/internal/purchase/zzi$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/ads/internal/purchase/zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zzi$1$1;->zzPO:Lcom/google/android/gms/ads/internal/purchase/zzi$1;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/purchase/zzi$1;->zztf:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/ads/internal/purchase/zzb;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/ads/internal/purchase/zzb;->zzV(Landroid/os/IBinder;)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/zzi$1$1;->zzPO:Lcom/google/android/gms/ads/internal/purchase/zzi$1;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/purchase/zzi$1;->zztf:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "inapp"

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/purchase/zzb;->zzb(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v3

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzpe;->zzI(Z)V

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzyJ()Lcom/google/android/gms/common/stats/zza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zzi$1$1;->zzPO:Lcom/google/android/gms/ads/internal/purchase/zzi$1;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/purchase/zzi$1;->zztf:Landroid/content/Context;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/purchase/zzb;->destroy()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
