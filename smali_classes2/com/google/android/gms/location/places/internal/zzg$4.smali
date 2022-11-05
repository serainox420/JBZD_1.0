.class Lcom/google/android/gms/location/places/internal/zzg$4;
.super Lcom/google/android/gms/location/places/zzo$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/places/internal/zzg;->getAutocompletePredictions(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzo$zza",
        "<",
        "Lcom/google/android/gms/location/places/internal/zzh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbml:Ljava/lang/String;

.field final synthetic zzbmm:Lcom/google/android/gms/maps/model/LatLngBounds;

.field final synthetic zzbmn:Lcom/google/android/gms/location/places/AutocompleteFilter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzg;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzg$4;->zzbml:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/location/places/internal/zzg$4;->zzbmm:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object p6, p0, Lcom/google/android/gms/location/places/internal/zzg$4;->zzbmn:Lcom/google/android/gms/location/places/AutocompleteFilter;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzo$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzg$4;->zza(Lcom/google/android/gms/location/places/internal/zzh;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/places/internal/zzh;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/places/zzo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/places/zzo;-><init>(Lcom/google/android/gms/location/places/zzo$zza;)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzg$4;->zzbml:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzg$4;->zzbmm:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v3, p0, Lcom/google/android/gms/location/places/internal/zzg$4;->zzbmn:Lcom/google/android/gms/location/places/AutocompleteFilter;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/location/places/internal/zzh;->zza(Lcom/google/android/gms/location/places/zzo;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V

    return-void
.end method
