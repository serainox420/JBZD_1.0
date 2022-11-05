.class public Lcom/google/android/gms/internal/zzajf;
.super Lcom/google/android/gms/drive/zzr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzajf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaNY:Lcom/google/android/gms/common/data/DataHolder;

.field final zzaNZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field

.field final zzaOa:Lcom/google/android/gms/drive/zza;

.field final zzaOb:Z

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzajg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzajf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;Ljava/util/List;Lcom/google/android/gms/drive/zza;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;",
            "Lcom/google/android/gms/drive/zza;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/drive/zzr;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzajf;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzajf;->zzaNY:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzajf;->zzaNZ:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzajf;->zzaOa:Lcom/google/android/gms/drive/zza;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzajf;->zzaOb:Z

    return-void
.end method


# virtual methods
.method protected zzK(Landroid/os/Parcel;I)V
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzajg;->zza(Lcom/google/android/gms/internal/zzajf;Landroid/os/Parcel;I)V

    return-void
.end method
