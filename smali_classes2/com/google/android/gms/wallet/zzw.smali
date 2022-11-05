.class public final Lcom/google/android/gms/wallet/zzw;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/zzw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzbRx:Lcom/google/android/gms/wallet/Cart;

.field zzbRy:Ljava/lang/String;

.field zzbRz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzx;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzx;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/zzw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/wallet/Cart;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/zzw;->zzbRx:Lcom/google/android/gms/wallet/Cart;

    iput-object p2, p0, Lcom/google/android/gms/wallet/zzw;->zzbRy:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/zzw;->zzbRz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzx;->zza(Lcom/google/android/gms/wallet/zzw;Landroid/os/Parcel;I)V

    return-void
.end method
