.class public Lcom/google/android/gms/internal/zzhx;
.super Lcom/google/android/gms/internal/zzhs$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzHB:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhs$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhx;->zzHB:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzhn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzHB:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/zzho;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzho;-><init>(Lcom/google/android/gms/internal/zzhn;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;->onCustomTemplateAdLoaded(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V

    return-void
.end method
