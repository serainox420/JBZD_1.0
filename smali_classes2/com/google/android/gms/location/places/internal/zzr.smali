.class public Lcom/google/android/gms/location/places/internal/zzr;
.super Lcom/google/android/gms/location/places/internal/zzab;

# interfaces
.implements Lcom/google/android/gms/location/places/PlaceLikelihood;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzab;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->zzJc()Lcom/google/android/gms/location/places/PlaceLikelihood;

    move-result-object v0

    return-object v0
.end method

.method public getLikelihood()F
    .locals 2

    const-string v0, "place_likelihood"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zzb(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getPlace()Lcom/google/android/gms/location/places/Place;
    .locals 3

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzy;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzr;->zzaBi:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/location/places/internal/zzr;->zzaDL:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/location/places/internal/zzy;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public zzJc()Lcom/google/android/gms/location/places/PlaceLikelihood;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getPlace()Lcom/google/android/gms/location/places/Place;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/location/places/Place;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getLikelihood()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/internal/zzp;->zza(Lcom/google/android/gms/location/places/internal/PlaceEntity;F)Lcom/google/android/gms/location/places/internal/zzp;

    move-result-object v0

    return-object v0
.end method
