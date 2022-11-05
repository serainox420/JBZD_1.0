.class public final Lcom/google/android/gms/internal/zzoz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzpa;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzG(Landroid/content/Context;)Lcom/google/android/gms/internal/zzqm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/internal/zzqm",
            "<",
            "Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzqj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqj;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzqe;->zzag(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzoz$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/zzoz$1;-><init>(Lcom/google/android/gms/internal/zzoz;Landroid/content/Context;Lcom/google/android/gms/internal/zzqj;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpn;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzqm;

    :cond_0
    return-object v0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzqm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmk;",
            ")",
            "Lcom/google/android/gms/internal/zzqm",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzqk;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzmk;->zzRA:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzqk;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
