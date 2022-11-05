.class public Lcom/google/android/gms/internal/zzajx;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzajx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field final zztZ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzakc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzakc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzajx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzajx;->zzaiI:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzajx;->zztZ:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzakc;->zza(Lcom/google/android/gms/internal/zzajx;Landroid/os/Parcel;I)V

    return-void
.end method
