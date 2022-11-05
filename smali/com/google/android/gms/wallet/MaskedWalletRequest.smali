.class public final Lcom/google/android/gms/wallet/MaskedWalletRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/MaskedWalletRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzUI:Ljava/lang/String;

.field zzbPM:Ljava/lang/String;

.field zzbPT:Ljava/lang/String;

.field zzbQS:Z

.field zzbQT:Z

.field zzbQU:Z

.field zzbQV:Ljava/lang/String;

.field zzbQW:Ljava/lang/String;

.field zzbQX:Z

.field zzbQY:Z

.field zzbQZ:[Lcom/google/android/gms/wallet/CountrySpecification;

.field zzbQd:Lcom/google/android/gms/wallet/Cart;

.field zzbRa:Z

.field zzbRb:Z

.field zzbRc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation
.end field

.field zzbRd:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

.field zzbRe:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbRa:Z

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbRb:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Cart;ZZ[Lcom/google/android/gms/wallet/CountrySpecification;ZZLjava/util/ArrayList;Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wallet/Cart;",
            "ZZ[",
            "Lcom/google/android/gms/wallet/CountrySpecification;",
            "ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;",
            "Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbPT:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQS:Z

    iput-boolean p3, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQT:Z

    iput-boolean p4, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQU:Z

    iput-object p5, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQV:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbPM:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQW:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQd:Lcom/google/android/gms/wallet/Cart;

    iput-boolean p9, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQX:Z

    iput-boolean p10, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQY:Z

    iput-object p11, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQZ:[Lcom/google/android/gms/wallet/CountrySpecification;

    iput-boolean p12, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbRa:Z

    iput-boolean p13, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbRb:Z

    iput-object p14, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbRc:Ljava/util/ArrayList;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbRd:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbRe:Ljava/util/ArrayList;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzUI:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 3

    new-instance v0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/MaskedWalletRequest;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/MaskedWalletRequest;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;Lcom/google/android/gms/wallet/MaskedWalletRequest$1;)V

    return-object v0
.end method


# virtual methods
.method public allowDebitCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbRb:Z

    return v0
.end method

.method public allowPrepaidCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbRa:Z

    return v0
.end method

.method public getAllowedCardNetworks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbRe:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllowedCountrySpecificationsForShipping()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbRc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllowedShippingCountrySpecifications()[Lcom/google/android/gms/wallet/CountrySpecification;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQZ:[Lcom/google/android/gms/wallet/CountrySpecification;

    return-object v0
.end method

.method public getCart()Lcom/google/android/gms/wallet/Cart;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQd:Lcom/google/android/gms/wallet/Cart;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzUI:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbPM:Ljava/lang/String;

    return-object v0
.end method

.method public getEstimatedTotalPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQV:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQW:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbPT:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethodTokenizationParameters()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbRd:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    return-object v0
.end method

.method public isBillingAgreement()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQY:Z

    return v0
.end method

.method public isPhoneNumberRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQS:Z

    return v0
.end method

.method public isShippingAddressRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQT:Z

    return v0
.end method

.method public useMinimalBillingAddress()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbQU:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzo;->zza(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Parcel;I)V

    return-void
.end method
