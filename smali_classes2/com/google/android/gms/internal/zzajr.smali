.class public Lcom/google/android/gms/internal/zzajr;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzajr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaOo:Landroid/os/ParcelFileDescriptor;

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzajs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzajr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzajr;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzajr;->zzaOo:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzajs;->zza(Lcom/google/android/gms/internal/zzajr;Landroid/os/Parcel;I)V

    return-void
.end method
