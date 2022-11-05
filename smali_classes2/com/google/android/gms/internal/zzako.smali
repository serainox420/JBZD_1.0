.class public Lcom/google/android/gms/internal/zzako;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzako;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaNJ:I

.field final zzaNK:I

.field final zzaOx:Z

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzakp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzakp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzako;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzako;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/internal/zzako;->zzaNJ:I

    iput p3, p0, Lcom/google/android/gms/internal/zzako;->zzaNK:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzako;->zzaOx:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzakp;->zza(Lcom/google/android/gms/internal/zzako;Landroid/os/Parcel;I)V

    return-void
.end method
