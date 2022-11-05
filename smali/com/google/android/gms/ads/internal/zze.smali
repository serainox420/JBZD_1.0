.class public Lcom/google/android/gms/ads/internal/zze;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field public final zzsM:Lcom/google/android/gms/internal/zziu;

.field public final zzsN:Lcom/google/android/gms/ads/internal/overlay/zzk;

.field public final zzsO:Lcom/google/android/gms/ads/internal/overlay/zzn;

.field public final zzsP:Lcom/google/android/gms/internal/zzou;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zziu;Lcom/google/android/gms/ads/internal/overlay/zzk;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/internal/zzou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zze;->zzsM:Lcom/google/android/gms/internal/zziu;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zze;->zzsN:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zze;->zzsO:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zze;->zzsP:Lcom/google/android/gms/internal/zzou;

    return-void
.end method

.method public static zzcc()Lcom/google/android/gms/ads/internal/zze;
    .locals 5

    new-instance v0, Lcom/google/android/gms/ads/internal/zze;

    new-instance v1, Lcom/google/android/gms/internal/zzia;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzia;-><init>()V

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/overlay/zzo;-><init>()V

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzu;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/overlay/zzu;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/zzoq;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzoq;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/zze;-><init>(Lcom/google/android/gms/internal/zziu;Lcom/google/android/gms/ads/internal/overlay/zzk;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/internal/zzou;)V

    return-object v0
.end method
