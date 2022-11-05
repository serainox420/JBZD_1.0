.class public Lcom/google/android/gms/internal/zzano;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzano;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mIndex:I

.field final zzaQS:I

.field final zzaQT:I

.field final zzaRt:Ljava/lang/String;

.field final zzaRu:I

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzanp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzanp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzano;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzano;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/internal/zzano;->mIndex:I

    iput p3, p0, Lcom/google/android/gms/internal/zzano;->zzaQS:I

    iput p4, p0, Lcom/google/android/gms/internal/zzano;->zzaQT:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzano;->zzaRt:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/zzano;->zzaRu:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzanp;->zza(Lcom/google/android/gms/internal/zzano;Landroid/os/Parcel;I)V

    return-void
.end method
