.class public Lcom/google/android/gms/location/places/internal/zzc;
.super Lcom/google/android/gms/location/places/internal/zzab;

# interfaces
.implements Lcom/google/android/gms/location/places/AutocompletePrediction;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzab;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method

.method private zzIL()Ljava/lang/String;
    .locals 2

    const-string v0, "ap_description"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzc;->zzO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzIM()Ljava/lang/String;
    .locals 2

    const-string v0, "ap_primary_text"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzc;->zzO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzIN()Ljava/lang/String;
    .locals 2

    const-string v0, "ap_secondary_text"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzc;->zzO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzIO()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/zza$zza;",
            ">;"
        }
    .end annotation

    const-string v0, "ap_matched_subscriptions"

    sget-object v1, Lcom/google/android/gms/location/places/internal/zza$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/location/places/internal/zzc;->zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private zzIP()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/zza$zza;",
            ">;"
        }
    .end annotation

    const-string v0, "ap_primary_text_matched"

    sget-object v1, Lcom/google/android/gms/location/places/internal/zza$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/location/places/internal/zzc;->zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private zzIQ()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/zza$zza;",
            ">;"
        }
    .end annotation

    const-string v0, "ap_secondary_text_matched"

    sget-object v1, Lcom/google/android/gms/location/places/internal/zza$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/location/places/internal/zzc;->zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzc;->zzIJ()Lcom/google/android/gms/location/places/AutocompletePrediction;

    move-result-object v0

    return-object v0
.end method

.method public getFullText(Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzc;->zzIL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzc;->zzIO()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/location/places/internal/zzf;->zza(Ljava/lang/String;Ljava/util/List;Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 2

    const-string v0, "ap_place_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzc;->zzO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "ap_place_types"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzc;->zzb(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryText(Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzc;->zzIM()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzc;->zzIP()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/location/places/internal/zzf;->zza(Ljava/lang/String;Ljava/util/List;Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryText(Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzc;->zzIN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzc;->zzIQ()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/location/places/internal/zzf;->zza(Ljava/lang/String;Ljava/util/List;Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public zzIJ()Lcom/google/android/gms/location/places/AutocompletePrediction;
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzc;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzc;->getPlaceTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzc;->zzIK()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzc;->zzIL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzc;->zzIO()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzc;->zzIM()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzc;->zzIP()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzc;->zzIN()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzc;->zzIQ()Ljava/util/List;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/location/places/internal/zza;->zza(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/location/places/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public zzIK()I
    .locals 2

    const-string v0, "ap_personalization_type"

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzc;->zzy(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
