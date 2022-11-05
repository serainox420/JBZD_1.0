.class public Lcom/google/android/gms/internal/zzajh;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzajh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaNe:Lcom/google/android/gms/drive/zzc;

.field final zzaOc:Z

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaji;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaji;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzajh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/zzc;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzajh;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzajh;->zzaNe:Lcom/google/android/gms/drive/zzc;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzajh;->zzaOc:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaji;->zza(Lcom/google/android/gms/internal/zzajh;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzBd()Lcom/google/android/gms/drive/zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajh;->zzaNe:Lcom/google/android/gms/drive/zzc;

    return-object v0
.end method

.method public zzBe()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzajh;->zzaOc:Z

    return v0
.end method
