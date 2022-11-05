.class public Lcom/google/android/gms/internal/zzamq;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzamq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field final zzaxb:J

.field final zzth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzana;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzamr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzamr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzamq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzana;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzamq;->zzaiI:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzamq;->zzaxb:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzamq;->zzth:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzamr;->zza(Lcom/google/android/gms/internal/zzamq;Landroid/os/Parcel;I)V

    return-void
.end method
