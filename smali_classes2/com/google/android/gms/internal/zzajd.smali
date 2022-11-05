.class public Lcom/google/android/gms/internal/zzajd;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzajd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaKG:Lcom/google/android/gms/drive/DriveId;

.field final zzaNT:Z

.field final zzaNU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzaNV:Z

.field final zzaNW:Lcom/google/android/gms/common/data/DataHolder;

.field final zzaNX:Ljava/lang/String;

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaje;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzajd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;ZLjava/util/List;ZLcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/drive/DriveId;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzajd;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzajd;->zzaKG:Lcom/google/android/gms/drive/DriveId;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzajd;->zzaNT:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzajd;->zzaNU:Ljava/util/List;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzajd;->zzaNV:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzajd;->zzaNW:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzajd;->zzaNX:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaje;->zza(Lcom/google/android/gms/internal/zzajd;Landroid/os/Parcel;I)V

    return-void
.end method
