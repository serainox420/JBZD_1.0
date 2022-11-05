.class public Lcom/google/android/gms/internal/zzahb;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzahb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaLc:Ljava/lang/String;

.field final zzaLd:Z

.field final zzaLh:Z

.field final zzaMp:Lcom/google/android/gms/drive/DriveId;

.field final zzaMq:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final zzaMr:Lcom/google/android/gms/drive/zzc;

.field final zzaMs:I

.field final zzaMt:I

.field final zzaMu:Z

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzahc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzahc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzahb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/zzc;ZLjava/lang/String;IIZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzahb;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzahb;->zzaMp:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzahb;->zzaMq:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzahb;->zzaMr:Lcom/google/android/gms/drive/zzc;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzahb;->zzaLd:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzahb;->zzaLc:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/zzahb;->zzaMs:I

    iput p8, p0, Lcom/google/android/gms/internal/zzahb;->zzaMt:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzahb;->zzaMu:Z

    iput-boolean p10, p0, Lcom/google/android/gms/internal/zzahb;->zzaLh:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IZLcom/google/android/gms/drive/zzl;)V
    .locals 11

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/drive/zzl;->zzAv()Z

    move-result v5

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/drive/zzl;->zzAu()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/drive/zzl;->zzAw()I

    move-result v7

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/drive/zzl;->zzAB()Z

    move-result v10

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzahb;-><init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/zzc;ZLjava/lang/String;IIZZ)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzahc;->zza(Lcom/google/android/gms/internal/zzahb;Landroid/os/Parcel;I)V

    return-void
.end method
