.class public final Lcom/google/android/gms/location/places/zzf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPriority:I

.field private final zzaiI:I

.field private final zzbjD:I

.field private final zzbln:I

.field private final zzblo:Lcom/google/android/gms/location/places/PlaceFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzblp:Lcom/google/android/gms/location/places/zzd;

.field private final zzblq:Z

.field private final zzblr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/zzd;ZII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/16 v0, 0x6e

    iput v0, p0, Lcom/google/android/gms/location/places/zzf;->mPriority:I

    iput p1, p0, Lcom/google/android/gms/location/places/zzf;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/location/places/zzf;->zzbjD:I

    iput p3, p0, Lcom/google/android/gms/location/places/zzf;->zzbln:I

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/google/android/gms/location/places/zzf;->zzblp:Lcom/google/android/gms/location/places/zzd;

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/location/places/zzf;->zzblo:Lcom/google/android/gms/location/places/PlaceFilter;

    iput-boolean p6, p0, Lcom/google/android/gms/location/places/zzf;->zzblq:Z

    iput p7, p0, Lcom/google/android/gms/location/places/zzf;->zzblr:I

    iput p8, p0, Lcom/google/android/gms/location/places/zzf;->mPriority:I

    return-void

    :cond_0
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceIds()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceIds()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/zzd;->zzm(Ljava/util/Collection;)Lcom/google/android/gms/location/places/zzd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzf;->zzblp:Lcom/google/android/gms/location/places/zzd;

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->zzIE()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->zzIE()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->zzIE()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/zzd;->zzn(Ljava/util/Collection;)Lcom/google/android/gms/location/places/zzd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzf;->zzblp:Lcom/google/android/gms/location/places/zzd;

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/google/android/gms/location/places/zzf;->zzblp:Lcom/google/android/gms/location/places/zzd;

    goto :goto_0

    :cond_3
    iput-object v1, p0, Lcom/google/android/gms/location/places/zzf;->zzblp:Lcom/google/android/gms/location/places/zzd;

    goto :goto_0
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
    instance-of v2, p1, Lcom/google/android/gms/location/places/zzf;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/zzf;

    iget v2, p0, Lcom/google/android/gms/location/places/zzf;->zzbjD:I

    iget v3, p1, Lcom/google/android/gms/location/places/zzf;->zzbjD:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/zzf;->zzbln:I

    iget v3, p1, Lcom/google/android/gms/location/places/zzf;->zzbln:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/zzf;->zzblp:Lcom/google/android/gms/location/places/zzd;

    iget-object v3, p1, Lcom/google/android/gms/location/places/zzf;->zzblp:Lcom/google/android/gms/location/places/zzd;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/zzf;->mPriority:I

    iget v3, p1, Lcom/google/android/gms/location/places/zzf;->mPriority:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/zzf;->mPriority:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/zzf;->zzaiI:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/places/zzf;->zzbjD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/places/zzf;->zzbln:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/location/places/zzf;->zzblp:Lcom/google/android/gms/location/places/zzd;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/location/places/zzf;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "transitionTypes"

    iget v2, p0, Lcom/google/android/gms/location/places/zzf;->zzbjD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "loiteringTimeMillis"

    iget v2, p0, Lcom/google/android/gms/location/places/zzf;->zzbln:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "nearbyAlertFilter"

    iget-object v2, p0, Lcom/google/android/gms/location/places/zzf;->zzblp:Lcom/google/android/gms/location/places/zzd;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "priority"

    iget v2, p0, Lcom/google/android/gms/location/places/zzf;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/zzg;->zza(Lcom/google/android/gms/location/places/zzf;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzIA()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzIB()Lcom/google/android/gms/location/places/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzf;->zzblp:Lcom/google/android/gms/location/places/zzd;

    return-object v0
.end method

.method public zzIC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/zzf;->zzblq:Z

    return v0
.end method

.method public zzID()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/zzf;->zzblr:I

    return v0
.end method

.method public zzIv()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/zzf;->zzbjD:I

    return v0
.end method

.method public zzIz()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/zzf;->zzbln:I

    return v0
.end method
