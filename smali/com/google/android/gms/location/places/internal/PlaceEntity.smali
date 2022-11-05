.class public final Lcom/google/android/gms/location/places/internal/PlaceEntity;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;
.implements Lcom/google/android/gms/location/places/Place;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/internal/PlaceEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/String;

.field private final zzGV:Ljava/lang/String;

.field private final zzaSq:Ljava/lang/String;

.field final zzaiI:I

.field private final zzbkX:Lcom/google/android/gms/maps/model/LatLng;

.field private final zzbkY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbkZ:Ljava/lang/String;

.field private zzblU:Ljava/util/Locale;

.field private final zzbla:Landroid/net/Uri;

.field private final zzbmA:Ljava/lang/String;

.field private final zzbmB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbmC:Lcom/google/android/gms/location/places/internal/zzu;

.field private final zzbmD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbmE:Ljava/util/TimeZone;

.field private final zzbmr:Landroid/os/Bundle;

.field private final zzbms:Lcom/google/android/gms/location/places/internal/zzs;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzbmt:F

.field private final zzbmu:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final zzbmv:Ljava/lang/String;

.field private final zzbmw:Z

.field private final zzbmx:F

.field private final zzbmy:I

.field private final zzbmz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFILcom/google/android/gms/location/places/internal/zzs;Lcom/google/android/gms/location/places/internal/zzu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "F",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "ZFI",
            "Lcom/google/android/gms/location/places/internal/zzs;",
            "Lcom/google/android/gms/location/places/internal/zzu;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzGV:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbkY:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmz:Ljava/util/List;

    if-eqz p5, :cond_0

    :goto_0
    iput-object p5, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmr:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->mName:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaSq:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbkZ:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmA:Ljava/lang/String;

    if-eqz p10, :cond_1

    :goto_1
    iput-object p10, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmB:Ljava/util/List;

    iput-object p11, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbkX:Lcom/google/android/gms/maps/model/LatLng;

    iput p12, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmt:F

    iput-object p13, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmu:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz p14, :cond_2

    :goto_2
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmv:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbla:Landroid/net/Uri;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmw:Z

    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmx:F

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmy:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmD:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmE:Ljava/util/TimeZone;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzblU:Ljava/util/Locale;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbms:Lcom/google/android/gms/location/places/internal/zzs;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmC:Lcom/google/android/gms/location/places/internal/zzu;

    return-void

    :cond_0
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p10

    goto :goto_1

    :cond_2
    const-string p14, "UTC"

    goto :goto_2
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
    instance-of v2, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzGV:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzGV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzblU:Ljava/util/Locale;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzblU:Ljava/util/Locale;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzJa()Lcom/google/android/gms/location/places/Place;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAddress()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaSq:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributions()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmB:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzf;->zzo(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzGV:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbkX:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzblU:Ljava/util/Locale;

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getPhoneNumber()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbkZ:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbkY:Ljava/util/List;

    return-object v0
.end method

.method public getPriceLevel()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmy:I

    return v0
.end method

.method public getRating()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmx:F

    return v0
.end method

.method public getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmu:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getWebsiteUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbla:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzGV:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzblU:Ljava/util/Locale;

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

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzblU:Ljava/util/Locale;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzGV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "placeTypes"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbkY:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzblU:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "address"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzaSq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "phoneNumber"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbkZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "latlng"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbkX:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "viewport"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmu:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "websiteUri"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbla:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "isPermanentlyClosed"

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmw:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "priceLevel"

    iget v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmy:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzo;->zza(Lcom/google/android/gms/location/places/internal/PlaceEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzIR()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmz:Ljava/util/List;

    return-object v0
.end method

.method public zzIS()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmt:F

    return v0
.end method

.method public zzIT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmA:Ljava/lang/String;

    return-object v0
.end method

.method public zzIU()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmB:Ljava/util/List;

    return-object v0
.end method

.method public zzIV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmw:Z

    return v0
.end method

.method public zzIW()Lcom/google/android/gms/location/places/internal/zzu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmC:Lcom/google/android/gms/location/places/internal/zzu;

    return-object v0
.end method

.method public zzIX()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmr:Landroid/os/Bundle;

    return-object v0
.end method

.method public zzIY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbmv:Ljava/lang/String;

    return-object v0
.end method

.method public zzIZ()Lcom/google/android/gms/location/places/internal/zzs;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbms:Lcom/google/android/gms/location/places/internal/zzs;

    return-object v0
.end method

.method public zzJa()Lcom/google/android/gms/location/places/Place;
    .locals 0

    return-object p0
.end method
