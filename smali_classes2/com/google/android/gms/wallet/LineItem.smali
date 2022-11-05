.class public final Lcom/google/android/gms/wallet/LineItem;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/LineItem$Builder;,
        Lcom/google/android/gms/wallet/LineItem$Role;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/LineItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field description:Ljava/lang/String;

.field zzbPL:Ljava/lang/String;

.field zzbPM:Ljava/lang/String;

.field zzbQs:Ljava/lang/String;

.field zzbQt:Ljava/lang/String;

.field zzbQu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/LineItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/wallet/LineItem;->zzbQu:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/LineItem;->description:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/wallet/LineItem;->zzbQs:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/LineItem;->zzbQt:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/LineItem;->zzbPL:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/wallet/LineItem;->zzbQu:I

    iput-object p6, p0, Lcom/google/android/gms/wallet/LineItem;->zzbPM:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/LineItem$Builder;
    .locals 3

    new-instance v0, Lcom/google/android/gms/wallet/LineItem$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/LineItem;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/LineItem;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/LineItem$Builder;-><init>(Lcom/google/android/gms/wallet/LineItem;Lcom/google/android/gms/wallet/LineItem$1;)V

    return-object v0
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->zzbPM:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->zzbQs:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/LineItem;->zzbQu:I

    return v0
.end method

.method public getTotalPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->zzbPL:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->zzbQt:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzl;->zza(Lcom/google/android/gms/wallet/LineItem;Landroid/os/Parcel;I)V

    return-void
.end method
