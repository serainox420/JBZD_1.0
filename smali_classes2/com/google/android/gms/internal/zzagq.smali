.class public Lcom/google/android/gms/internal/zzagq;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzagq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaKG:Lcom/google/android/gms/drive/DriveId;

.field final zzaLc:Ljava/lang/String;

.field final zzaMg:Lcom/google/android/gms/drive/zzm;

.field final zzaMh:Z

.field final zzaMi:Ljava/lang/String;

.field final zzaMj:Z

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzagr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzagr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzagq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/zzm;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzagq;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzagq;->zzaKG:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzagq;->zzaMg:Lcom/google/android/gms/drive/zzm;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzagq;->zzaMh:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzagq;->zzaMi:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzagq;->zzaMj:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/zzagq;->zzaLc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzagr;->zza(Lcom/google/android/gms/internal/zzagq;Landroid/os/Parcel;I)V

    return-void
.end method
