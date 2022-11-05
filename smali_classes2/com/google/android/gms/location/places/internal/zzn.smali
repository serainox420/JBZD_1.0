.class public Lcom/google/android/gms/location/places/internal/zzn;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/internal/zzn$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl",
        "<",
        "Lcom/google/android/gms/location/places/internal/zzi;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzblU:Ljava/util/Locale;

.field private final zzbmo:Lcom/google/android/gms/location/places/internal/zzz;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;)V
    .locals 7

    const/16 v3, 0x43

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/zzn;->zzblU:Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/google/android/gms/location/places/internal/zzz;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzn;->zzblU:Ljava/util/Locale;

    iget-object v4, p7, Lcom/google/android/gms/location/places/PlacesOptions;->zzblS:Ljava/lang/String;

    iget v5, p7, Lcom/google/android/gms/location/places/PlacesOptions;->zzblT:I

    move-object v1, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zzz;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/zzn;->zzbmo:Lcom/google/android/gms/location/places/internal/zzz;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;Lcom/google/android/gms/location/places/internal/zzn$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/location/places/internal/zzn;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/location/places/zzo;Lcom/google/android/gms/location/places/PlaceFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/location/places/PlaceFilter;->zzIF()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object p2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzn;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzi;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzn;->zzbmo:Lcom/google/android/gms/location/places/internal/zzz;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/location/places/internal/zzi;->zza(Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/zzz;Lcom/google/android/gms/location/places/internal/zzl;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/places/zzo;Lcom/google/android/gms/location/places/PlaceReport;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzn;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzi;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzn;->zzbmo:Lcom/google/android/gms/location/places/internal/zzz;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/location/places/internal/zzi;->zza(Lcom/google/android/gms/location/places/PlaceReport;Lcom/google/android/gms/location/places/internal/zzz;Lcom/google/android/gms/location/places/internal/zzl;)V

    return-void
.end method

.method protected zzdp(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzdl(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v0

    return-object v0
.end method

.method protected zzeA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService"

    return-object v0
.end method

.method protected zzez()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.places.PlaceDetectionApi"

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzn;->zzdp(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v0

    return-object v0
.end method
