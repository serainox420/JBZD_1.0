.class Lcom/google/android/gms/location/places/internal/zzg$3;
.super Lcom/google/android/gms/location/places/zzo$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/places/internal/zzg;->getPlaceById(Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzo$zzc",
        "<",
        "Lcom/google/android/gms/location/places/internal/zzh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbmk:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzg;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzg$3;->zzbmk:[Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzo$zzc;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/location/places/internal/zzh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzg$3;->zza(Lcom/google/android/gms/location/places/internal/zzh;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/places/internal/zzh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzg$3;->zzbmk:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/location/places/zzo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/location/places/zzo;-><init>(Lcom/google/android/gms/location/places/zzo$zzc;)V

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/location/places/internal/zzh;->zza(Lcom/google/android/gms/location/places/zzo;Ljava/util/List;)V

    return-void
.end method
