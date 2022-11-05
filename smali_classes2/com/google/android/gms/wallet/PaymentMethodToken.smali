.class public final Lcom/google/android/gms/wallet/PaymentMethodToken;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/PaymentMethodToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzbRj:I

.field zzbxT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzr;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/PaymentMethodToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/PaymentMethodToken;->zzbRj:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/PaymentMethodToken;->zzbxT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPaymentMethodTokenizationType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/PaymentMethodToken;->zzbRj:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentMethodToken;->zzbxT:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzr;->zza(Lcom/google/android/gms/wallet/PaymentMethodToken;Landroid/os/Parcel;I)V

    return-void
.end method
