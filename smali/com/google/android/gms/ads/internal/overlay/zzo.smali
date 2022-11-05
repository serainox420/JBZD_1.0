.class public Lcom/google/android/gms/ads/internal/overlay/zzo;
.super Lcom/google/android/gms/ads/internal/overlay/zzk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqw;IZLcom/google/android/gms/internal/zzgl;)Lcom/google/android/gms/ads/internal/overlay/zzj;
    .locals 8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzs(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v6, Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzh(Lcom/google/android/gms/internal/zzqw;)Z

    move-result v7

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzz;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzqw;->zzly()Lcom/google/android/gms/internal/zzqh;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzqw;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzqw;->zzlE()Lcom/google/android/gms/internal/zzgj;

    move-result-object v5

    move-object v1, p1

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/zzz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgj;)V

    invoke-direct {v6, p1, p4, v7, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Landroid/content/Context;ZZLcom/google/android/gms/ads/internal/overlay/zzz;)V

    move-object v0, v6

    goto :goto_0
.end method
