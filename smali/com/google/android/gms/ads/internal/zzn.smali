.class public final Lcom/google/android/gms/ads/internal/zzn;
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
            "Lcom/google/android/gms/ads/internal/zzn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zztK:Z

.field public final zztL:Z

.field public final zztM:Ljava/lang/String;

.field public final zztN:Z

.field public final zztO:F

.field public final zztP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ZZLjava/lang/String;ZFI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzn;->zztK:Z

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/zzn;->zztL:Z

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzn;->zztM:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/ads/internal/zzn;->zztN:Z

    iput p5, p0, Lcom/google/android/gms/ads/internal/zzn;->zztO:F

    iput p6, p0, Lcom/google/android/gms/ads/internal/zzn;->zztP:I

    return-void
.end method

.method public constructor <init>(ZZZFI)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzn;-><init>(ZZLjava/lang/String;ZFI)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzo;->zza(Lcom/google/android/gms/ads/internal/zzn;Landroid/os/Parcel;I)V

    return-void
.end method
