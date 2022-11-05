.class public Lcom/google/android/gms/location/places/internal/zzp;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/location/places/PlaceLikelihood;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/internal/zzp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field final zzbmG:Lcom/google/android/gms/location/places/internal/PlaceEntity;

.field final zzbmH:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/location/places/internal/PlaceEntity;F)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzbmG:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    iput p3, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzbmH:F

    return-void
.end method

.method public static zza(Lcom/google/android/gms/location/places/internal/PlaceEntity;F)Lcom/google/android/gms/location/places/internal/zzp;
    .locals 3

    new-instance v1, Lcom/google/android/gms/location/places/internal/zzp;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    invoke-direct {v1, v2, v0, p1}, Lcom/google/android/gms/location/places/internal/zzp;-><init>(ILcom/google/android/gms/location/places/internal/PlaceEntity;F)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/internal/zzp;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/internal/zzp;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzbmG:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/zzp;->zzbmG:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzbmH:F

    iget v3, p1, Lcom/google/android/gms/location/places/internal/zzp;->zzbmH:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzp;->zzJc()Lcom/google/android/gms/location/places/PlaceLikelihood;

    move-result-object v0

    return-object v0
.end method

.method public getLikelihood()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzbmH:F

    return v0
.end method

.method public getPlace()Lcom/google/android/gms/location/places/Place;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzbmG:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzbmG:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzbmH:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "place"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzbmG:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "likelihood"

    iget v2, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzbmH:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzq;->zza(Lcom/google/android/gms/location/places/internal/zzp;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzJc()Lcom/google/android/gms/location/places/PlaceLikelihood;
    .locals 0

    return-object p0
.end method
