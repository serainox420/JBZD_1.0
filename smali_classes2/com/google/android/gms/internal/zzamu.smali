.class public Lcom/google/android/gms/internal/zzamu;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzamu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mIndex:I

.field final zzaQO:Ljava/lang/String;

.field final zzaQP:Z

.field final zzaQQ:I

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzamv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzamv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzamu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzamu;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamu;->zzaQO:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzamu;->mIndex:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzamu;->zzaQP:Z

    iput p5, p0, Lcom/google/android/gms/internal/zzamu;->zzaQQ:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzamv;->zza(Lcom/google/android/gms/internal/zzamu;Landroid/os/Parcel;I)V

    return-void
.end method
