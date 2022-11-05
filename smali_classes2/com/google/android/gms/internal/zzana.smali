.class public Lcom/google/android/gms/internal/zzana;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzana;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzWD:Ljava/lang/String;

.field final zzaQO:Ljava/lang/String;

.field final zzaQU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzaQV:Z

.field final zzaQW:Z

.field final zzaQX:Z

.field final zzaQY:Ljava/lang/String;

.field final zzaQZ:Lcom/google/android/gms/internal/zzani;

.field final zzaRa:Lcom/google/android/gms/internal/zzang;

.field final zzaRb:Lcom/google/android/gms/internal/zzanm;

.field final zzaRc:Lcom/google/android/gms/internal/zzano;

.field final zzaRd:Lcom/google/android/gms/internal/zzanq;

.field final zzaRe:Lcom/google/android/gms/internal/zzank;

.field final zzaRf:Lcom/google/android/gms/internal/zzane;

.field final zzaRg:Lcom/google/android/gms/internal/zzamy;

.field final zzaRh:Lcom/google/android/gms/internal/zzamw;

.field final zzadi:Ljava/lang/String;

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzanb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzanb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzana;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzani;Lcom/google/android/gms/internal/zzang;Lcom/google/android/gms/internal/zzanm;Lcom/google/android/gms/internal/zzano;Lcom/google/android/gms/internal/zzanq;Lcom/google/android/gms/internal/zzank;Lcom/google/android/gms/internal/zzane;Lcom/google/android/gms/internal/zzamy;Lcom/google/android/gms/internal/zzamw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzani;",
            "Lcom/google/android/gms/internal/zzang;",
            "Lcom/google/android/gms/internal/zzanm;",
            "Lcom/google/android/gms/internal/zzano;",
            "Lcom/google/android/gms/internal/zzanq;",
            "Lcom/google/android/gms/internal/zzank;",
            "Lcom/google/android/gms/internal/zzane;",
            "Lcom/google/android/gms/internal/zzamy;",
            "Lcom/google/android/gms/internal/zzamw;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzana;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzana;->zzWD:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzana;->zzadi:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzana;->zzaQU:Ljava/util/List;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzana;->zzaQV:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzana;->zzaQW:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzana;->zzaQX:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/zzana;->zzaQO:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzana;->zzaQY:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzana;->zzaQZ:Lcom/google/android/gms/internal/zzani;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzana;->zzaRa:Lcom/google/android/gms/internal/zzang;

    iput-object p12, p0, Lcom/google/android/gms/internal/zzana;->zzaRb:Lcom/google/android/gms/internal/zzanm;

    iput-object p13, p0, Lcom/google/android/gms/internal/zzana;->zzaRc:Lcom/google/android/gms/internal/zzano;

    iput-object p14, p0, Lcom/google/android/gms/internal/zzana;->zzaRd:Lcom/google/android/gms/internal/zzanq;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/zzana;->zzaRe:Lcom/google/android/gms/internal/zzank;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/zzana;->zzaRf:Lcom/google/android/gms/internal/zzane;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/internal/zzana;->zzaRg:Lcom/google/android/gms/internal/zzamy;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/internal/zzana;->zzaRh:Lcom/google/android/gms/internal/zzamw;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzanb;->zza(Lcom/google/android/gms/internal/zzana;Landroid/os/Parcel;I)V

    return-void
.end method
