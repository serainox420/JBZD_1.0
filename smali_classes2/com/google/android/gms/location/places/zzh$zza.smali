.class public abstract Lcom/google/android/gms/location/places/zzh$zza;
.super Lcom/google/android/gms/location/places/zzo$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/zzh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/Api$zze;",
        ">",
        "Lcom/google/android/gms/location/places/zzo$zzb",
        "<",
        "Lcom/google/android/gms/location/places/PlacePhotoResult;",
        "TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/zzo$zzb;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzbq(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/PlacePhotoResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/PlacePhotoResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/location/places/PlacePhotoResult;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/BitmapTeleporter;)V

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/zzh$zza;->zzbq(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/PlacePhotoResult;

    move-result-object v0

    return-object v0
.end method
