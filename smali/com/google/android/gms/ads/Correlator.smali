.class public final Lcom/google/android/gms/ads/Correlator;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private zzrG:Lcom/google/android/gms/internal/zzem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzem;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzem;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzrG:Lcom/google/android/gms/internal/zzem;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzrG:Lcom/google/android/gms/internal/zzem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzem;->zzeV()V

    return-void
.end method

.method public zzbq()Lcom/google/android/gms/internal/zzem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzrG:Lcom/google/android/gms/internal/zzem;

    return-object v0
.end method
