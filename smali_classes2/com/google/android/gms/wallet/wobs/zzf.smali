.class public final Lcom/google/android/gms/wallet/wobs/zzf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field label:Ljava/lang/String;

.field type:Ljava/lang/String;

.field zzbQF:Lcom/google/android/gms/wallet/wobs/zzl;

.field zzbSy:Lcom/google/android/gms/wallet/wobs/zzg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/wallet/wobs/zzg;Ljava/lang/String;Lcom/google/android/gms/wallet/wobs/zzl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/wobs/zzf;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/zzf;->zzbSy:Lcom/google/android/gms/wallet/wobs/zzg;

    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/zzf;->type:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/wobs/zzf;->zzbQF:Lcom/google/android/gms/wallet/wobs/zzl;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/zzi;->zza(Lcom/google/android/gms/wallet/wobs/zzf;Landroid/os/Parcel;I)V

    return-void
.end method
