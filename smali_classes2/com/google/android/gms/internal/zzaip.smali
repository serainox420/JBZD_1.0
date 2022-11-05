.class public Lcom/google/android/gms/internal/zzaip;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaip;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaLg:Ljava/lang/String;

.field final zzaNP:Z

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaiq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaiq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaip;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaip;->zzaLg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzaip;->zzaNP:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaiq;->zza(Lcom/google/android/gms/internal/zzaip;Landroid/os/Parcel;I)V

    return-void
.end method
