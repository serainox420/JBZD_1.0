.class public final Lcom/google/android/gms/wallet/wobs/zzl;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/zzl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzbSF:J

.field zzbSG:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/zzl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/wallet/wobs/zzl;->zzbSF:J

    iput-wide p3, p0, Lcom/google/android/gms/wallet/wobs/zzl;->zzbSG:J

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/zzm;->zza(Lcom/google/android/gms/wallet/wobs/zzl;Landroid/os/Parcel;I)V

    return-void
.end method
