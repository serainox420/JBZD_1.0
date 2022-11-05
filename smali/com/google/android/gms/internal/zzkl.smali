.class public final Lcom/google/android/gms/internal/zzkl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzLB:I

.field private final zzcR:Ljava/util/Date;

.field private final zzcT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcU:Z

.field private final zzcV:Landroid/location/Location;

.field private final zztp:Lcom/google/android/gms/internal/zzhc;

.field private final zztq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzzk:I

.field private final zzzw:Z


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/zzhc;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZI",
            "Lcom/google/android/gms/internal/zzhc;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkl;->zzcR:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/zzkl;->zzzk:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzkl;->zzcT:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzkl;->zzcV:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzkl;->zzcU:Z

    iput p6, p0, Lcom/google/android/gms/internal/zzkl;->zzLB:I

    iput-object p7, p0, Lcom/google/android/gms/internal/zzkl;->zztp:Lcom/google/android/gms/internal/zzhc;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzkl;->zztq:Ljava/util/List;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzkl;->zzzw:Z

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zzcR:Ljava/util/Date;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzkl;->zzzk:I

    return v0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zzcT:Ljava/util/Set;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zzcV:Landroid/location/Location;

    return-object v0
.end method

.method public getNativeAdOptions()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zztp:Lcom/google/android/gms/internal/zzhc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkl;->zztp:Lcom/google/android/gms/internal/zzhc;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzhc;->zzHa:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkl;->zztp:Lcom/google/android/gms/internal/zzhc;

    iget v1, v1, Lcom/google/android/gms/internal/zzhc;->zzHb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkl;->zztp:Lcom/google/android/gms/internal/zzhc;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzhc;->zzHc:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkl;->zztp:Lcom/google/android/gms/internal/zzhc;

    iget v1, v1, Lcom/google/android/gms/internal/zzhc;->versionCode:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkl;->zztp:Lcom/google/android/gms/internal/zzhc;

    iget v1, v1, Lcom/google/android/gms/internal/zzhc;->zzHd:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzkl;->zztp:Lcom/google/android/gms/internal/zzhc;

    iget v1, v1, Lcom/google/android/gms/internal/zzhc;->versionCode:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkl;->zztp:Lcom/google/android/gms/internal/zzhc;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhc;->zzHe:Lcom/google/android/gms/internal/zzft;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/gms/ads/VideoOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkl;->zztp:Lcom/google/android/gms/internal/zzhc;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzhc;->zzHe:Lcom/google/android/gms/internal/zzft;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzft;->zzAU:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/VideoOptions$Builder;->setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->build()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public isAppInstallAdRequested()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zztq:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zztq:Ljava/util/List;

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentAdRequested()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zztq:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkl;->zztq:Ljava/util/List;

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDesignedForFamilies()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkl;->zzzw:Z

    return v0
.end method

.method public isTesting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkl;->zzcU:Z

    return v0
.end method

.method public taggedForChildDirectedTreatment()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzkl;->zzLB:I

    return v0
.end method
