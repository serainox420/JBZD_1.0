.class public final Lcom/google/android/gms/wallet/wobs/zzp;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/zzp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field body:Ljava/lang/String;

.field zzbSE:Ljava/lang/String;

.field zzbSI:Lcom/google/android/gms/wallet/wobs/zzl;

.field zzbSJ:Lcom/google/android/gms/wallet/wobs/zzn;

.field zzbSK:Lcom/google/android/gms/wallet/wobs/zzn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/wobs/zzl;Lcom/google/android/gms/wallet/wobs/zzn;Lcom/google/android/gms/wallet/wobs/zzn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/wobs/zzp;->zzbSE:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/zzp;->body:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/zzp;->zzbSI:Lcom/google/android/gms/wallet/wobs/zzl;

    iput-object p4, p0, Lcom/google/android/gms/wallet/wobs/zzp;->zzbSJ:Lcom/google/android/gms/wallet/wobs/zzn;

    iput-object p5, p0, Lcom/google/android/gms/wallet/wobs/zzp;->zzbSK:Lcom/google/android/gms/wallet/wobs/zzn;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/zzq;->zza(Lcom/google/android/gms/wallet/wobs/zzp;Landroid/os/Parcel;I)V

    return-void
.end method
