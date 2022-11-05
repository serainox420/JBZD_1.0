.class public Lcom/google/android/gms/internal/zzalp;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzalp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaKG:Lcom/google/android/gms/drive/DriveId;

.field final zzaLc:Ljava/lang/String;

.field final zzaLq:Ljava/lang/String;

.field final zzaMj:Z

.field final zzaOB:I

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzalq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzalp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzalp;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzalp;->zzaKG:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzalp;->zzaLq:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/zzalp;->zzaOB:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzalp;->zzaMj:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzalp;->zzaLc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzalq;->zza(Lcom/google/android/gms/internal/zzalp;Landroid/os/Parcel;I)V

    return-void
.end method
