.class public final Lcom/google/android/gms/location/places/PlacesOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/PlacesOptions$Builder;
    }
.end annotation


# instance fields
.field public final zzaiu:Ljava/lang/String;

.field public final zzblR:Ljava/lang/String;

.field public final zzblS:Ljava/lang/String;

.field public final zzblT:I

.field public final zzblU:Ljava/util/Locale;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/location/places/PlacesOptions$Builder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzblR:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzblS:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzblT:I

    iput-object v1, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzaiu:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzblU:Ljava/util/Locale;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/places/PlacesOptions$Builder;Lcom/google/android/gms/location/places/PlacesOptions$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/location/places/PlacesOptions;-><init>(Lcom/google/android/gms/location/places/PlacesOptions$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/places/PlacesOptions;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/location/places/PlacesOptions;

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzblR:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/location/places/PlacesOptions;->zzblR:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzblS:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/location/places/PlacesOptions;->zzblS:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzblT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/location/places/PlacesOptions;->zzblT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzaiu:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/location/places/PlacesOptions;->zzaiu:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzblU:Ljava/util/Locale;

    iget-object v2, p1, Lcom/google/android/gms/location/places/PlacesOptions;->zzblU:Ljava/util/Locale;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzaiu:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzblU:Ljava/util/Locale;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzblR:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzblS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzblT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzaiu:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzblU:Ljava/util/Locale;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
