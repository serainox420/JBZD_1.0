.class public final Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzbRj:I

.field zzbRk:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;->zzbRk:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;->zzbRk:Landroid/os/Bundle;

    iput p1, p0, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;->zzbRj:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;->zzbRk:Landroid/os/Bundle;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;
    .locals 3

    new-instance v0, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;-><init>(Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$1;)V

    return-object v0
.end method


# virtual methods
.method public getParameters()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;->zzbRk:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getPaymentMethodTokenizationType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;->zzbRj:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzs;->zza(Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;Landroid/os/Parcel;I)V

    return-void
.end method
