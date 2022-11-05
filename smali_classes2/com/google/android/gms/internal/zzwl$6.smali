.class Lcom/google/android/gms/internal/zzwl$6;
.super Lcom/google/android/gms/internal/zzce;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzwl;->getWeather(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzce",
        "<",
        "Lcom/google/android/gms/awareness/snapshot/WeatherResult;",
        "Lcom/google/android/gms/internal/zzwp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzwl;Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzce;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    return-void
.end method


# virtual methods
.method protected synthetic zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzwp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzwl$6;->zzf(Lcom/google/android/gms/internal/zzwp;)Lcom/google/android/gms/awareness/snapshot/WeatherResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzf(Lcom/google/android/gms/internal/zzwp;)Lcom/google/android/gms/awareness/snapshot/WeatherResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzwl$6$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzwl$6$1;-><init>(Lcom/google/android/gms/internal/zzwl$6;Lcom/google/android/gms/internal/zzwp;)V

    return-object v0
.end method
