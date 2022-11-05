.class public Lcom/google/android/gms/internal/zzanc;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzanc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaRi:Lcom/google/android/gms/common/data/DataHolder;

.field final zzaRj:Z

.field final zzaRk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzaRl:Lcom/google/android/gms/internal/zzamq;

.field final zzaiI:I

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

    new-instance v0, Lcom/google/android/gms/internal/zzand;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzand;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzanc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Lcom/google/android/gms/common/data/DataHolder;ZLjava/util/List;Lcom/google/android/gms/internal/zzamq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzana;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzamq;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzanc;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzanc;->zzth:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzanc;->zzaRi:Lcom/google/android/gms/common/data/DataHolder;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzanc;->zzaRj:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzanc;->zzaRk:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzanc;->zzaRl:Lcom/google/android/gms/internal/zzamq;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzand;->zza(Lcom/google/android/gms/internal/zzanc;Landroid/os/Parcel;I)V

    return-void
.end method
