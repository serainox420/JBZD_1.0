.class public Lcom/google/android/gms/wallet/firstparty/zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/firstparty/zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzbRA:[B

.field zzbRB:[B

.field zzbRC:Lcom/google/android/gms/wallet/firstparty/zzm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/firstparty/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/firstparty/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/firstparty/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B[BLcom/google/android/gms/wallet/firstparty/zzm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/firstparty/zza;->zzbRA:[B

    iput-object p2, p0, Lcom/google/android/gms/wallet/firstparty/zza;->zzbRB:[B

    iput-object p3, p0, Lcom/google/android/gms/wallet/firstparty/zza;->zzbRC:Lcom/google/android/gms/wallet/firstparty/zzm;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/firstparty/zzb;->zza(Lcom/google/android/gms/wallet/firstparty/zza;Landroid/os/Parcel;I)V

    return-void
.end method
