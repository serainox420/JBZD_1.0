.class public final Lcom/google/android/gms/wallet/firstparty/zzh;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/firstparty/zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzbRG:Lcom/google/android/gms/wallet/firstparty/zzm;

.field zzbRH:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/firstparty/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/firstparty/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/firstparty/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/wallet/firstparty/zzm;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/firstparty/zzh;->zzbRG:Lcom/google/android/gms/wallet/firstparty/zzm;

    iput-boolean p2, p0, Lcom/google/android/gms/wallet/firstparty/zzh;->zzbRH:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "WalletCustomTheme is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/firstparty/zzi;->zza(Lcom/google/android/gms/wallet/firstparty/zzh;Landroid/os/Parcel;I)V

    return-void
.end method
