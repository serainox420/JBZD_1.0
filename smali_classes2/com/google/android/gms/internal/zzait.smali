.class public Lcom/google/android/gms/internal/zzait;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzait;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaKG:Lcom/google/android/gms/drive/DriveId;

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaiu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaiu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzait;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzait;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzait;->zzaKG:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaiu;->zza(Lcom/google/android/gms/internal/zzait;Landroid/os/Parcel;I)V

    return-void
.end method
