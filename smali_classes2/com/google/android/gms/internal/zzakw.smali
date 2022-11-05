.class public Lcom/google/android/gms/internal/zzakw;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzakw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaOd:Lcom/google/android/gms/internal/zzail;

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzakx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzakx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzakw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzail;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzakw;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakw;->zzaOd:Lcom/google/android/gms/internal/zzail;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzail;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzakw;-><init>(ILcom/google/android/gms/internal/zzail;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzakx;->zza(Lcom/google/android/gms/internal/zzakw;Landroid/os/Parcel;I)V

    return-void
.end method
