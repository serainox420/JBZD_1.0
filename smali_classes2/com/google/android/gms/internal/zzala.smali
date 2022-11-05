.class public Lcom/google/android/gms/internal/zzala;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzala;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaMl:Lcom/google/android/gms/drive/DriveId;

.field final zzaOz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzalb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzala;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzala;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzala;->zzaMl:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzala;->zzaOz:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzala;-><init>(ILcom/google/android/gms/drive/DriveId;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzalb;->zza(Lcom/google/android/gms/internal/zzala;Landroid/os/Parcel;I)V

    return-void
.end method
