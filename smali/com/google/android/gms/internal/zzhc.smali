.class public Lcom/google/android/gms/internal/zzhc;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzhc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final versionCode:I

.field public final zzHa:Z

.field public final zzHb:I

.field public final zzHc:Z

.field public final zzHd:I

.field public final zzHe:Lcom/google/android/gms/internal/zzft;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzhd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzhd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzhc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZIZILcom/google/android/gms/internal/zzft;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzhc;->versionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzhc;->zzHa:Z

    iput p3, p0, Lcom/google/android/gms/internal/zzhc;->zzHb:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzhc;->zzHc:Z

    iput p5, p0, Lcom/google/android/gms/internal/zzhc;->zzHd:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzhc;->zzHe:Lcom/google/android/gms/internal/zzft;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V
    .locals 7

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->shouldReturnUrlsForImageAssets()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getImageOrientation()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->shouldRequestMultipleImages()Z

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getAdChoicesPlacement()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v6, Lcom/google/android/gms/internal/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/zzft;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzhc;-><init>(IZIZILcom/google/android/gms/internal/zzft;)V

    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzhd;->zza(Lcom/google/android/gms/internal/zzhc;Landroid/os/Parcel;I)V

    return-void
.end method
