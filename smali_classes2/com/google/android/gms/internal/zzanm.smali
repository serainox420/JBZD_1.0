.class public Lcom/google/android/gms/internal/zzanm;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzanm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mIndex:I

.field final zzaQS:I

.field final zzaQT:I

.field final zzaRr:Ljava/lang/String;

.field final zzaRs:I

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzann;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzann;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzanm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzanm;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/internal/zzanm;->mIndex:I

    iput p3, p0, Lcom/google/android/gms/internal/zzanm;->zzaQS:I

    iput p4, p0, Lcom/google/android/gms/internal/zzanm;->zzaQT:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzanm;->zzaRr:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/zzanm;->zzaRs:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzann;->zza(Lcom/google/android/gms/internal/zzanm;Landroid/os/Parcel;I)V

    return-void
.end method
