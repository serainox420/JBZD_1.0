.class public final Lcom/google/android/gms/wallet/zze;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzbPP:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

.field zzbPQ:Lcom/google/android/gms/wallet/OfferWalletObject;

.field zzbPR:Lcom/google/android/gms/wallet/GiftCardWalletObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/wallet/LoyaltyWalletObject;Lcom/google/android/gms/wallet/OfferWalletObject;Lcom/google/android/gms/wallet/GiftCardWalletObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/zze;->zzbPP:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p2, p0, Lcom/google/android/gms/wallet/zze;->zzbPQ:Lcom/google/android/gms/wallet/OfferWalletObject;

    iput-object p3, p0, Lcom/google/android/gms/wallet/zze;->zzbPR:Lcom/google/android/gms/wallet/GiftCardWalletObject;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzf;->zza(Lcom/google/android/gms/wallet/zze;Landroid/os/Parcel;I)V

    return-void
.end method
