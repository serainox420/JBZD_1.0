.class public final Lcom/google/android/gms/wallet/FullWallet;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/FullWallet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzbPS:Ljava/lang/String;

.field zzbPT:Ljava/lang/String;

.field zzbPU:Lcom/google/android/gms/wallet/ProxyCard;

.field zzbPV:Ljava/lang/String;

.field zzbPW:Lcom/google/android/gms/wallet/zza;

.field zzbPX:Lcom/google/android/gms/wallet/zza;

.field zzbPY:[Ljava/lang/String;

.field zzbPZ:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field zzbQa:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field zzbQb:[Lcom/google/android/gms/wallet/InstrumentInfo;

.field zzbQc:Lcom/google/android/gms/wallet/PaymentMethodToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/FullWallet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/ProxyCard;Ljava/lang/String;Lcom/google/android/gms/wallet/zza;Lcom/google/android/gms/wallet/zza;[Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;Lcom/google/android/gms/wallet/PaymentMethodToken;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbPS:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbPT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbPU:Lcom/google/android/gms/wallet/ProxyCard;

    iput-object p4, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbPV:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbPW:Lcom/google/android/gms/wallet/zza;

    iput-object p6, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbPX:Lcom/google/android/gms/wallet/zza;

    iput-object p7, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbPY:[Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbPZ:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p9, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbQa:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p10, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbQb:[Lcom/google/android/gms/wallet/InstrumentInfo;

    iput-object p11, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbQc:Lcom/google/android/gms/wallet/PaymentMethodToken;

    return-void
.end method


# virtual methods
.method public getBuyerBillingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbPZ:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object v0
.end method

.method public getBuyerShippingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbQa:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbPV:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbPS:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrumentInfos()[Lcom/google/android/gms/wallet/InstrumentInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbQb:[Lcom/google/android/gms/wallet/InstrumentInfo;

    return-object v0
.end method

.method public getMerchantTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbPT:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentDescriptions()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbPY:[Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethodToken()Lcom/google/android/gms/wallet/PaymentMethodToken;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbQc:Lcom/google/android/gms/wallet/PaymentMethodToken;

    return-object v0
.end method

.method public getProxyCard()Lcom/google/android/gms/wallet/ProxyCard;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbPU:Lcom/google/android/gms/wallet/ProxyCard;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzg;->zza(Lcom/google/android/gms/wallet/FullWallet;Landroid/os/Parcel;I)V

    return-void
.end method
