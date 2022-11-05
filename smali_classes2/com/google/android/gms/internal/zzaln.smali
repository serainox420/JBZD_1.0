.class public Lcom/google/android/gms/internal/zzaln;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaln;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaMp:Lcom/google/android/gms/drive/DriveId;

.field final zzaMq:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzalo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaln;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaln;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaln;->zzaMp:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaln;->zzaMq:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzaln;-><init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzalo;->zza(Lcom/google/android/gms/internal/zzaln;Landroid/os/Parcel;I)V

    return-void
.end method
