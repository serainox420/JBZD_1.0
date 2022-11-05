.class abstract Lcom/google/android/gms/internal/zzayu$zza;
.super Lcom/google/android/gms/internal/zzayu$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzayu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzayu$zzc",
        "<",
        "Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzayu$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzbz(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzayw;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzayw;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzayu$zza;->zzbz(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;

    move-result-object v0

    return-object v0
.end method
