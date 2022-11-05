.class public Lcom/google/android/gms/internal/zzaiv;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaiv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzIk:I

.field final zzaNR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/zzm;",
            ">;"
        }
    .end annotation
.end field

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaiw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaiw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaiv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/zzm;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaiv;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaiv;->zzaNR:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/internal/zzaiv;->zzIk:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaiw;->zza(Lcom/google/android/gms/internal/zzaiv;Landroid/os/Parcel;I)V

    return-void
.end method
