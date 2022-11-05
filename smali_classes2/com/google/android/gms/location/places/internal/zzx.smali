.class public Lcom/google/android/gms/location/places/internal/zzx;
.super Lcom/google/android/gms/location/places/internal/zzab;

# interfaces
.implements Lcom/google/android/gms/location/places/PlacePhotoMetadata;


# instance fields
.field private final zzbmW:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzab;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    const-string v0, "photo_fife_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/places/internal/zzx;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/zzx;->zzbmW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzx;->zzJd()Lcom/google/android/gms/location/places/PlacePhotoMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getAttributions()Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "photo_attributions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzx;->zzO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 2

    const-string v0, "photo_max_height"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzx;->zzy(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    const-string v0, "photo_max_width"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzx;->zzy(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPhoto(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/location/places/PlacePhotoResult;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzx;->getMaxWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzx;->getMaxHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/location/places/internal/zzx;->getScaledPhoto(Lcom/google/android/gms/common/api/GoogleApiClient;II)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public getScaledPhoto(Lcom/google/android/gms/common/api/GoogleApiClient;II)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "II)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/location/places/PlacePhotoResult;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzx;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlacePhotoMetadata;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/location/places/PlacePhotoMetadata;->getScaledPhoto(Lcom/google/android/gms/common/api/GoogleApiClient;II)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public zzJd()Lcom/google/android/gms/location/places/PlacePhotoMetadata;
    .locals 6

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzw;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzx;->zzbmW:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzx;->getMaxWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzx;->getMaxHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzx;->getAttributions()Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gms/location/places/internal/zzx;->zzaDL:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zzw;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;I)V

    return-object v0
.end method
