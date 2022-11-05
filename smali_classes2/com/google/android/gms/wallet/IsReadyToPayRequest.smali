.class public final Lcom/google/android/gms/wallet/IsReadyToPayRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/IsReadyToPayRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzbQo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field zzbQp:Ljava/lang/String;

.field zzbQq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzbQo:Ljava/util/ArrayList;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;
    .locals 3

    new-instance v0, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/IsReadyToPayRequest;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/IsReadyToPayRequest$Builder;-><init>(Lcom/google/android/gms/wallet/IsReadyToPayRequest;Lcom/google/android/gms/wallet/IsReadyToPayRequest$1;)V

    return-object v0
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->zzbQo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzk;->zza(Lcom/google/android/gms/wallet/IsReadyToPayRequest;Landroid/os/Parcel;I)V

    return-void
.end method
