.class public final Lcom/google/android/gms/wallet/wobs/zzb;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field label:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/zzb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/wobs/zzb;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/zzb;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/zzc;->zza(Lcom/google/android/gms/wallet/wobs/zzb;Landroid/os/Parcel;I)V

    return-void
.end method
