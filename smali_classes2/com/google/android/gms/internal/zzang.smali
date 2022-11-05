.class public Lcom/google/android/gms/internal/zzang;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzang;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mIndex:I

.field final zzaRq:I

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzanh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzanh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzang;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzang;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/internal/zzang;->mIndex:I

    iput p3, p0, Lcom/google/android/gms/internal/zzang;->zzaRq:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzanh;->zza(Lcom/google/android/gms/internal/zzang;Landroid/os/Parcel;I)V

    return-void
.end method
