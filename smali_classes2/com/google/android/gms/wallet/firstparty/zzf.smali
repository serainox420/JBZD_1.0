.class public final Lcom/google/android/gms/wallet/firstparty/zzf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/firstparty/zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzbRF:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/firstparty/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/firstparty/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/firstparty/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/google/android/gms/wallet/firstparty/zzf;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/firstparty/zzf;->zzbRF:[B

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/firstparty/zzg;->zza(Lcom/google/android/gms/wallet/firstparty/zzf;Landroid/os/Parcel;I)V

    return-void
.end method
