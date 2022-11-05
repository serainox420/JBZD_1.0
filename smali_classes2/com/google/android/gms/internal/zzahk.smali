.class public Lcom/google/android/gms/internal/zzahk;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzahk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaKE:I

.field final zzaLp:Lcom/google/android/gms/drive/DriveId;

.field final zzaMC:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final zzaMD:Ljava/lang/Integer;

.field final zzaiI:I

.field final zzamJ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzahl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzahl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzahk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzahk;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzahk;->zzaMC:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput p3, p0, Lcom/google/android/gms/internal/zzahk;->zzaKE:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzahk;->zzamJ:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzahk;->zzaLp:Lcom/google/android/gms/drive/DriveId;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzahk;->zzaMD:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;I)V
    .locals 7

    const/4 v1, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzahk;-><init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzahl;->zza(Lcom/google/android/gms/internal/zzahk;Landroid/os/Parcel;I)V

    return-void
.end method
