.class final Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/location/places/internal/zzp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/location/places/internal/zzp;

    check-cast p2, Lcom/google/android/gms/location/places/internal/zzp;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer$1;->zza(Lcom/google/android/gms/location/places/internal/zzp;Lcom/google/android/gms/location/places/internal/zzp;)I

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/location/places/internal/zzp;Lcom/google/android/gms/location/places/internal/zzp;)I
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/zzp;->getLikelihood()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/location/places/internal/zzp;->getLikelihood()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    neg-int v0, v0

    return v0
.end method
