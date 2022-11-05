.class public final Lcom/google/android/gms/wallet/firstparty/zzd;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/firstparty/zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzbRD:[B

.field zzbRE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/firstparty/zze;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/firstparty/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/firstparty/zzd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/google/android/gms/wallet/firstparty/zzd;-><init>([B[B)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/firstparty/zzd;->zzbRD:[B

    iput-object p2, p0, Lcom/google/android/gms/wallet/firstparty/zzd;->zzbRE:[B

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/firstparty/zze;->zza(Lcom/google/android/gms/wallet/firstparty/zzd;Landroid/os/Parcel;I)V

    return-void
.end method
