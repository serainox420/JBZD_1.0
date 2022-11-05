.class public Lcom/google/android/gms/internal/zzajl;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzajl;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzaOe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzJO:I

.field final zzaOf:J

.field final zzaOg:J

.field final zzaOh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/zze;",
            ">;"
        }
    .end annotation
.end field

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzajl;->zzaOe:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzajm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzajl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/zze;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzajl;->zzaiI:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzajl;->zzaOf:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzajl;->zzaOg:J

    iput p6, p0, Lcom/google/android/gms/internal/zzajl;->zzJO:I

    iput-object p7, p0, Lcom/google/android/gms/internal/zzajl;->zzaOh:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzajm;->zza(Lcom/google/android/gms/internal/zzajl;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzBg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzajl;->zzaOf:J

    return-wide v0
.end method

.method public zzBh()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzajl;->zzaOg:J

    return-wide v0
.end method
