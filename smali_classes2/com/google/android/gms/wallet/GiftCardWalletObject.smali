.class public final Lcom/google/android/gms/wallet/GiftCardWalletObject;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/GiftCardWalletObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field pin:Ljava/lang/String;

.field zzbQf:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

.field zzbQg:Ljava/lang/String;

.field zzbQh:Ljava/lang/String;

.field zzbQi:J

.field zzbQj:Ljava/lang/String;

.field zzbQk:J

.field zzbQl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/GiftCardWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzUc()Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzUd()Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/GiftCardWalletObject;->zzbQf:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/wallet/wobs/CommonWalletObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzUc()Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzUd()Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/GiftCardWalletObject;->zzbQf:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    iput-object p1, p0, Lcom/google/android/gms/wallet/GiftCardWalletObject;->zzbQf:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    iput-object p2, p0, Lcom/google/android/gms/wallet/GiftCardWalletObject;->zzbQg:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/GiftCardWalletObject;->pin:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/wallet/GiftCardWalletObject;->zzbQi:J

    iput-object p7, p0, Lcom/google/android/gms/wallet/GiftCardWalletObject;->zzbQj:Ljava/lang/String;

    iput-wide p8, p0, Lcom/google/android/gms/wallet/GiftCardWalletObject;->zzbQk:J

    iput-object p10, p0, Lcom/google/android/gms/wallet/GiftCardWalletObject;->zzbQl:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/GiftCardWalletObject;->zzbQh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/GiftCardWalletObject;->zzbQf:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzi;->zza(Lcom/google/android/gms/wallet/GiftCardWalletObject;Landroid/os/Parcel;I)V

    return-void
.end method
