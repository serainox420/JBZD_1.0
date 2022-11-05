.class public Lcom/google/android/gms/internal/zzajy;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzajy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaMC:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzajz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzajy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzajy;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzajy;->zzaMC:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzajz;->zza(Lcom/google/android/gms/internal/zzajy;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzBm()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajy;->zzaMC:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    return-object v0
.end method
