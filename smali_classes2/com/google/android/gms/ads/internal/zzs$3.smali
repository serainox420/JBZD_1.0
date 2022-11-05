.class Lcom/google/android/gms/ads/internal/zzs$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzs;->zza(Lcom/google/android/gms/internal/zzgw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzuh:Lcom/google/android/gms/ads/internal/zzs;

.field final synthetic zzuj:Lcom/google/android/gms/internal/zzgw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzgw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzs$3;->zzuh:Lcom/google/android/gms/ads/internal/zzs;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzs$3;->zzuj:Lcom/google/android/gms/internal/zzgw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs$3;->zzuh:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvC:Lcom/google/android/gms/internal/zzhq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs$3;->zzuh:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzs;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvC:Lcom/google/android/gms/internal/zzhq;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzs$3;->zzuj:Lcom/google/android/gms/internal/zzgw;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzhq;->zza(Lcom/google/android/gms/internal/zzhl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call OnContentAdLoadedListener.onContentAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
