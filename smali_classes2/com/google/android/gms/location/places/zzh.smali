.class public Lcom/google/android/gms/location/places/zzh;
.super Lcom/google/android/gms/location/places/internal/zzk$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/zzh$zza;,
        Lcom/google/android/gms/location/places/zzh$zzb;
    }
.end annotation


# instance fields
.field private final zzbls:Lcom/google/android/gms/location/places/zzh$zzb;

.field private final zzblt:Lcom/google/android/gms/location/places/zzh$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/places/zzh$zza;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzk$zza;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzh;->zzbls:Lcom/google/android/gms/location/places/zzh$zzb;

    iput-object p1, p0, Lcom/google/android/gms/location/places/zzh;->zzblt:Lcom/google/android/gms/location/places/zzh$zza;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/places/zzh$zzb;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzk$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/places/zzh;->zzbls:Lcom/google/android/gms/location/places/zzh$zzb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzh;->zzblt:Lcom/google/android/gms/location/places/zzh$zza;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzh;->zzbls:Lcom/google/android/gms/location/places/zzh$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/places/zzh$zzb;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/places/PlacePhotoResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzh;->zzblt:Lcom/google/android/gms/location/places/zzh$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/places/zzh$zza;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
