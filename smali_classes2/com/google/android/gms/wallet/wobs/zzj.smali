.class public final Lcom/google/android/gms/wallet/wobs/zzj;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/zzj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field body:Ljava/lang/String;

.field zzbSE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/zzj;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object p1, p0, Lcom/google/android/gms/wallet/wobs/zzj;->zzbSE:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/zzj;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/zzk;->zza(Lcom/google/android/gms/wallet/wobs/zzj;Landroid/os/Parcel;I)V

    return-void
.end method
