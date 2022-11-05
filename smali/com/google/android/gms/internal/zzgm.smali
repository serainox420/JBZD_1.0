.class public final Lcom/google/android/gms/internal/zzgm;
.super Lcom/google/android/gms/internal/zzgo$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzFT:Lcom/google/android/gms/ads/internal/zzi;

.field private final zzFU:Ljava/lang/String;

.field private final zzFV:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgo$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgm;->zzFT:Lcom/google/android/gms/ads/internal/zzi;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgm;->zzFU:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgm;->zzFV:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm;->zzFV:Ljava/lang/String;

    return-object v0
.end method

.method public recordClick()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm;->zzFT:Lcom/google/android/gms/ads/internal/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzi;->zzbZ()V

    return-void
.end method

.method public recordImpression()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm;->zzFT:Lcom/google/android/gms/ads/internal/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzi;->zzca()V

    return-void
.end method

.method public zzfG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm;->zzFU:Ljava/lang/String;

    return-object v0
.end method

.method public zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgm;->zzFT:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/zzi;->zzc(Landroid/view/View;)V

    goto :goto_0
.end method
